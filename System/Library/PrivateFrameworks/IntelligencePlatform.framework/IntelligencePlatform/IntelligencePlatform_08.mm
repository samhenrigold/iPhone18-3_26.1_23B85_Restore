uint64_t sub_1ABB1A9CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2BB8, &qword_1ABF39E18);
  result = sub_1ABF24A44();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1ABB18078(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1ABF25234();
    sub_1ABF23D34();
    result = sub_1ABF25294();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1ABB1AC28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&unk_1EB4D2E20, &qword_1ABF39E10);
  result = sub_1ABF24A44();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1ABB18078(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_1ABF25234();
    sub_1ABF23D34();

    result = sub_1ABF25294();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1ABB1AFA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&unk_1EB4D2E50, &qword_1ABF39DF8);
  result = sub_1ABF24A44();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v30 = v3;
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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1ABB18078(0, (v29 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
    v17 = *v16;
    v32 = *(v16 + 8);
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);
    v31 = *(v16 + 32);
    sub_1ABF25234();
    sub_1ABF23D34();
    result = sub_1ABF25294();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v5 + 48) + 40 * v23;
    *v28 = v17;
    *(v28 + 8) = v32;
    *(v28 + 16) = v18;
    *(v28 + 24) = v19;
    *(v28 + 32) = v31;
    ++*(v5 + 16);
    v3 = v30;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void *sub_1ABB1B230(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2B68, &qword_1ABF39DD0);
  result = sub_1ABF24A44();
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
    for (i = (v8 + 63) >> 6; v10; ++v5[2])
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v15 = (*(v3 + 48) + 88 * (v12 | (v6 << 6)));
      memcpy(__dst, v15, sizeof(__dst));
      memcpy(v19, v15, sizeof(v19));
      sub_1ABF25234();
      KnosisInternalFact.hash(into:)(v18);
      sub_1ABF25294();
      v16 = sub_1ABF249A4();
      *(v5 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v16;
      result = memcpy((v5[6] + 88 * v16), __dst, 0x58uLL);
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

      if (v6 >= i)
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

    v17 = 1 << *(v3 + 32);
    if (v17 >= 64)
    {
      sub_1ABB18078(0, (v17 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v17;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1ABB1B448(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2B60, &unk_1ABF3A610);
  result = sub_1ABF24A44();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1ABB18078(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_1ABF25234();
    sub_1ABF23D34();

    result = sub_1ABF25294();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1ABB1B6D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2BA8, &qword_1ABF39E00);
  result = sub_1ABF24A44();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_67:
    v48 = v5;

    *v2 = v48;
    return result;
  }

  v49 = v1;
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
  v50 = (v8 + 63) >> 6;
  v51 = (v3 + 56);
  v11 = result + 56;
  v52 = v3;
  v53 = result;
  if (!v10)
  {
LABEL_7:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_69;
      }

      if (v6 >= v50)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v54 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v46 = 1 << *(v3 + 32);
    if (v46 >= 64)
    {
      v47 = v5;
      sub_1ABB18078(0, (v46 + 63) >> 6, v7);
      v5 = v47;
    }

    else
    {
      *v7 = -1 << v46;
    }

    v2 = v49;
    *(v3 + 16) = 0;
    goto LABEL_67;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v54 = (v10 - 1) & v10;
LABEL_12:
    v15 = *(v3 + 48) + 72 * (v12 | (v6 << 6));
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *(v15 + 32);
    v21 = *(v15 + 40);
    v22 = *(v15 + 48);
    v56 = *(v15 + 56);
    v23 = *(v15 + 64);
    sub_1ABF25234();
    v55 = v16;
    v24 = v18;
    sub_1ABF23D34();
    sub_1ABF23D34();
    if (v23)
    {
      if (v23 == 1)
      {
        MEMORY[0x1AC5AA8A0](9);
        v25 = v20;
        sub_1ABF23D34();
        v26 = v22;
        v27 = v56;
        sub_1ABF23D34();
      }

      else
      {
        v25 = v20;
        v26 = v22;
        v28 = v22 | v21;
        v27 = v56;
        if (v28 | v25 | v56)
        {
          v29 = v28 | v56;
          if (v25 == 1 && v29 == 0)
          {
            v36 = 1;
          }

          else if (v25 == 2 && v29 == 0)
          {
            v36 = 2;
          }

          else if (v25 == 3 && v29 == 0)
          {
            v36 = 3;
          }

          else if (v25 == 4 && v29 == 0)
          {
            v36 = 5;
          }

          else if (v25 == 5 && v29 == 0)
          {
            v36 = 6;
          }

          else
          {
            v35 = v25 == 6 && v29 == 0;
            v36 = v35 ? 7 : 8;
          }
        }

        else
        {
          v36 = 0;
        }

        MEMORY[0x1AC5AA8A0](v36);
      }
    }

    else
    {
      MEMORY[0x1AC5AA8A0](4);
      sub_1ABF25254();
      v25 = v20;
      if (v21)
      {
        sub_1ABF23D34();
      }

      v26 = v22;
      v27 = v56;
    }

    result = sub_1ABF25294();
    v5 = v53;
    v37 = -1 << *(v53 + 32);
    v38 = result & ~v37;
    v39 = v38 >> 6;
    if (((-1 << v38) & ~*(v11 + 8 * (v38 >> 6))) == 0)
    {
      break;
    }

    v40 = __clz(__rbit64((-1 << v38) & ~*(v11 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_61:
    *(v11 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    v45 = *(v53 + 48) + 72 * v40;
    *v45 = v17;
    *(v45 + 8) = v55;
    *(v45 + 16) = v24;
    *(v45 + 24) = v19;
    *(v45 + 32) = v25;
    *(v45 + 40) = v21;
    *(v45 + 48) = v26;
    *(v45 + 56) = v27;
    *(v45 + 64) = v23;
    ++*(v53 + 16);
    v7 = v51;
    v3 = v52;
    v10 = v54;
    if (!v54)
    {
      goto LABEL_7;
    }
  }

  v41 = 0;
  v42 = (63 - v37) >> 6;
  while (++v39 != v42 || (v41 & 1) == 0)
  {
    v43 = v39 == v42;
    if (v39 == v42)
    {
      v39 = 0;
    }

    v41 |= v43;
    v44 = *(v11 + 8 * v39);
    if (v44 != -1)
    {
      v40 = __clz(__rbit64(~v44)) + (v39 << 6);
      goto LABEL_61;
    }
  }

LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_1ABB1BAFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2B88, &qword_1ABF39DE8);
  result = sub_1ABF24A44();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v30 = v3;
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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1ABB18078(0, (v29 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 24 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    sub_1ABF25234();
    sub_1ABF25264();
    MEMORY[0x1AC5AA8D0](v18);
    MEMORY[0x1AC5AA8D0](v19);
    result = sub_1ABF25294();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v5 + 48) + 24 * v23;
    *v28 = v17;
    *(v28 + 8) = v18;
    *(v28 + 16) = v19;
    ++*(v5 + 16);
    v3 = v30;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1ABB1BD80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2B30, &unk_1ABF4AF20);
  result = sub_1ABF24A44();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1ABB18078(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_1ABF25234();
    PersonEntityTagType.rawValue.getter();
    sub_1ABF23D34();

    result = sub_1ABF25294();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1ABB1BFEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2B70, &qword_1ABF39DD8);
  result = sub_1ABF24A44();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v31 = v2;
  v32 = v3;
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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1ABB18078(0, (v30 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 32 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    sub_1ABF25234();
    v33 = v17;
    sub_1ABF23D34();
    sub_1ABF23D34();
    result = sub_1ABF25294();
    v21 = -1 << *(v5 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v5 + 48) + 32 * v24);
    v3 = v32;
    *v29 = v33;
    v29[1] = v18;
    v29[2] = v19;
    v29[3] = v20;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1ABB1C270()
{
  sub_1ABA8A8E4();
  v30 = v2;
  sub_1ABA979CC(v3, v4, v5);
  sub_1ABA8A5C4();
  v6 = sub_1ABF24A44();
  if (!*(v1 + 16))
  {
LABEL_25:

    *v0 = v6;
    sub_1ABA89EC8();
    return;
  }

  v29 = v0;
  v7 = 0;
  v8 = (v1 + 56);
  sub_1ABA8CC60();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 56;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v7 >= v13)
      {
        break;
      }

      ++v16;
      if (v8[v7])
      {
        sub_1ABA96BF4();
        v11 = v18 & v17;
        goto LABEL_9;
      }
    }

    v27 = 1 << *(v1 + 32);
    if (v27 >= 64)
    {
      sub_1ABB18078(0, (v27 + 63) >> 6, v1 + 56);
    }

    else
    {
      sub_1ABAA51D0();
      *v8 = v28;
    }

    v0 = v29;
    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v19 = *(*(v1 + 48) + 8 * (v15 | (v7 << 6)));
    sub_1ABF25234();
    v30(v19);
    sub_1ABF25294();
    sub_1ABAB687C();
    if (v20)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_19:
    sub_1ABA8FE48();
    *(v14 + v24) |= v25;
    *(*(v6 + 48) + 8 * v26) = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v20)
    {
      if (v22)
      {
        break;
      }
    }

    if (v21 == v23)
    {
      v21 = 0;
    }

    if (*(v14 + 8 * v21) != -1)
    {
      sub_1ABA83620();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_1ABB1C41C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1ABA979CC(a1, a2, a3);
  sub_1ABA8A5C4();
  v6 = v5;
  sub_1ABF24A44();
  sub_1ABA8A900();
  if (!v7)
  {
LABEL_28:

    *v3 = v6;
    return;
  }

  v8 = 0;
  v10 = (v4 + 56);
  v9 = *(v4 + 56);
  v11 = 1 << *(v4 + 32);
  v29 = v3;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v9;
  v14 = v6 + 56;
  if ((v12 & v9) == 0)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= ((v11 + 63) >> 6))
      {
        break;
      }

      ++v16;
      if (v10[v8])
      {
        sub_1ABA96BF4();
        v13 = v18 & v17;
        goto LABEL_12;
      }
    }

    if (v11 >= 64)
    {
      sub_1ABB18078(0, (v11 + 63) >> 6, v4 + 56);
    }

    else
    {
      *v10 = -1 << v11;
    }

    v3 = v29;
    *(v4 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(*(v4 + 48) + 8 * (v15 | (v8 << 6)));
    sub_1ABF25224();
    sub_1ABA89370();
    if (((-1 << v21) & ~*(v14 + 8 * v20)) == 0)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_22:
    sub_1ABA8FE48();
    *(v14 + v26) |= v27;
    *(*(v6 + 48) + 8 * v28) = v19;
    ++*(v6 + 16);
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v25)
    {
      if (v23)
      {
        break;
      }
    }

    if (v22 == v24)
    {
      v22 = 0;
    }

    if (*(v14 + 8 * v22) != -1)
    {
      sub_1ABA83620();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1ABB1C5C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1ABA9EE20();
  if (!(!v15 & v14) || (v9 & 1) == 0)
  {
    if (v9)
    {
      sub_1ABB1C270();
      goto LABEL_11;
    }

    if (v13 <= v12)
    {
      sub_1ABB21D9C();
LABEL_11:
      v21 = *v7;
      sub_1ABF25234();
      v22 = sub_1ABAB526C();
      MEMORY[0x1AC5AA8D0](v22);
      sub_1ABF25294();
      sub_1ABAA489C();
      while (1)
      {
        a2 = v23 & v25;
        if (((*(v24 + (((v23 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v25)) & 1) == 0)
        {
          goto LABEL_8;
        }

        if (*(*(v21 + 48) + 8 * a2) == v6)
        {
          goto LABEL_16;
        }

        v23 = a2 + 1;
      }
    }

    sub_1ABB1F968(v10, v11);
  }

LABEL_8:
  sub_1ABA895E0();
  *(v17 + 8 * a2) = v6;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }
}

unint64_t sub_1ABB1C71C(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1ABB19BBC(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1ABB1FA08(v6 + 1);
LABEL_10:
      v14 = *v3;
      sub_1ABF25234();
      v15 = *v5;
      v16 = *(v5 + 8);
      sub_1ABF23D34();
      result = sub_1ABF25294();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = result & v17;
        if (((*(v14 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v14 + 48) + 40 * a2);
        v19 = *v18 == v15 && v18[1] == v16;
        if (v19 || (sub_1ABF25054() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a2 + 1;
      }
    }

    result = sub_1ABB1E950();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v9 = *(v8 + 48) + 40 * a2;
  v10 = *(v5 + 16);
  *v9 = *v5;
  *(v9 + 16) = v10;
  *(v9 + 32) = *(v5 + 32);
  v11 = *(v8 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_19:
    result = sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v13;
  }

  return result;
}

void *sub_1ABB1C8A0(void *__src, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1ABB19E44(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_1ABB1FC70(v7 + 1);
LABEL_10:
      v14 = *v3;
      memcpy(__dst, __src, sizeof(__dst));
      sub_1ABF25234();
      KnosisFact.hash(into:)(v19);
      v15 = sub_1ABF25294();
      v16 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v14 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v14 + 48) + 144 * a2);
        v18 = *v17 == *__src && v17[1] == __src[1];
        if (v18 || (sub_1ABF25054() & 1) != 0)
        {
          goto LABEL_19;
        }

        v15 = a2 + 1;
      }
    }

    sub_1ABB1EAC4();
  }

LABEL_7:
  v9 = *v3;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v9 + 48) + 144 * a2), __src, 0x90uLL);
  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_19:
    result = sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v13;
  }

  return result;
}

unint64_t sub_1ABB1CA20(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1ABB1A334(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1ABB20054(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1ABF25234();
      sub_1ABF23D34();
      result = sub_1ABF25294();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1ABF25054() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1ABB1EC4C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1ABB1CB88(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1ABB1A590(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1ABB1EDA4();
        goto LABEL_47;
      }

      sub_1ABB20288(v6 + 1);
    }

    v8 = *v3;
    sub_1ABF25234();
    sub_1ABB39A6C(v22, v5);
    result = sub_1ABF25294();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      v11 = 0x6E656B6F54796E61;
      while (1)
      {
        v12 = *(*(v8 + 48) + a2);
        if (!(v12 >> 6))
        {
          break;
        }

        if (v12 >> 6 != 1)
        {
          if (v12 == 128)
          {
            if (v5 == 128)
            {
              goto LABEL_51;
            }
          }

          else if (v12 == 129)
          {
            if (v5 == 129)
            {
              goto LABEL_51;
            }
          }

          else if (v5 == 130)
          {
            goto LABEL_51;
          }

          goto LABEL_46;
        }

        if ((v5 & 0xC0) == 0x40)
        {
          v13 = 0xE800000000000000;
          v14 = 0x6E656B6F54796E61;
          switch(v12 & 0x3F)
          {
            case 1u:
              v13 = 0xE600000000000000;
              v14 = 0x786966657270;
              break;
            case 2u:
              v14 = 0x6E656B6F546C6C61;
              v13 = 0xE900000000000073;
              break;
            case 3u:
              v14 = 0x69666572506C6C61;
              v13 = 0xEB00000000736578;
              break;
            case 4u:
              v13 = 0xE600000000000000;
              v14 = 0x657361726870;
              break;
            case 5u:
              v14 = 0x6850786966657270;
              v13 = 0xEC00000065736172;
              break;
            default:
              break;
          }

LABEL_36:
          v15 = 0xE600000000000000;
          v11 = 0x786966657270;
LABEL_41:
          if (v14 == v11 && v13 == v15)
          {
            goto LABEL_50;
          }

          v17 = sub_1ABF25054();

          v11 = 0x6E656B6F54796E61;
          if (v17)
          {
            goto LABEL_51;
          }
        }

LABEL_46:
        a2 = (a2 + 1) & v10;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      if (v5 >= 0x40u)
      {
        goto LABEL_46;
      }

      v13 = 0xE800000000000000;
      v14 = 0x6E656B6F54796E61;
      switch(*(*(v8 + 48) + a2))
      {
        case 1:
          v13 = 0xE600000000000000;
          v14 = 0x786966657270;
          break;
        case 2:
          v14 = 0x6E656B6F546C6C61;
          v13 = 0xE900000000000073;
          break;
        case 3:
          v14 = 0x69666572506C6C61;
          v13 = 0xEB00000000736578;
          break;
        case 4:
          v13 = 0xE600000000000000;
          v14 = 0x657361726870;
          break;
        case 5:
          v14 = 0x6850786966657270;
          v13 = 0xEC00000065736172;
          break;
        default:
          break;
      }

      v15 = 0xE800000000000000;
      switch(v5)
      {
        case 1u:
          goto LABEL_36;
        case 2u:
          v11 = 0x6E656B6F546C6C61;
          v15 = 0xE900000000000073;
          break;
        case 3u:
          v11 = 0x69666572506C6C61;
          v15 = 0xEB00000000736578;
          break;
        case 4u:
          v15 = 0xE600000000000000;
          v11 = 0x657361726870;
          break;
        case 5u:
          v11 = 0x6850786966657270;
          v15 = 0xEC00000065736172;
          break;
        default:
          goto LABEL_41;
      }

      goto LABEL_41;
    }
  }

LABEL_47:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_50:

LABEL_51:
    result = sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }

  return result;
}

unint64_t sub_1ABB1CFD4(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1ABB1A9CC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1ABB20694(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1ABF25234();
      sub_1ABF23D34();
      result = sub_1ABF25294();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1ABF25054() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1ABB1EEE4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_1ABB1D13C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_36;
  }

  if (a3)
  {
    sub_1ABB1AC28(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1ABB1F754(&unk_1EB4D2E20, &qword_1ABF39E10);
      goto LABEL_36;
    }

    sub_1ABB208C8(v7 + 1);
  }

  v9 = *v3;
  sub_1ABF25234();
  sub_1ABBB4ED8(v25, v6);
  v10 = sub_1ABF25294();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = 0xE400000000000000;
      v14 = 1701736302;
      switch(*(*(v9 + 48) + a2))
      {
        case 1:
          v14 = 0xD000000000000010;
          v13 = 0x80000001ABF7EE20;
          break;
        case 2:
          v13 = 0xE700000000000000;
          v14 = 0x7865646E496F6ELL;
          break;
        case 3:
          v15 = 0x47746E657665;
          goto LABEL_18;
        case 4:
          v14 = 0x79676F6C6F746E6FLL;
          v13 = 0xED00007865646E49;
          break;
        case 5:
          v14 = 0x49747865746E6F63;
          v13 = 0xEC0000007865646ELL;
          break;
        case 6:
          v15 = 0x476C61636F6CLL;
LABEL_18:
          v14 = v15 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
          v13 = 0xEF7865646E496870;
          break;
        case 7:
          v14 = 0xD00000000000001ALL;
          v13 = 0x80000001ABF7EE80;
          break;
        case 8:
          v14 = 0xD000000000000018;
          v13 = 0x80000001ABF7EEA0;
          break;
        default:
          break;
      }

      v16 = 0xE400000000000000;
      v17 = 1701736302;
      switch(v6)
      {
        case 1:
          v17 = 0xD000000000000010;
          v16 = 0x80000001ABF7EE20;
          break;
        case 2:
          v16 = 0xE700000000000000;
          v17 = 0x7865646E496F6ELL;
          break;
        case 3:
          v18 = 0x47746E657665;
          goto LABEL_28;
        case 4:
          v17 = 0x79676F6C6F746E6FLL;
          v16 = 0xED00007865646E49;
          break;
        case 5:
          v17 = 0x49747865746E6F63;
          v16 = 0xEC0000007865646ELL;
          break;
        case 6:
          v18 = 0x476C61636F6CLL;
LABEL_28:
          v17 = v18 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
          v16 = 0xEF7865646E496870;
          break;
        case 7:
          v17 = 0xD00000000000001ALL;
          v16 = 0x80000001ABF7EE80;
          break;
        case 8:
          v17 = 0xD000000000000018;
          v16 = 0x80000001ABF7EEA0;
          break;
        default:
          break;
      }

      if (v14 == v17 && v13 == v16)
      {
        goto LABEL_39;
      }

      v20 = sub_1ABF25054();

      if (v20)
      {
        goto LABEL_40;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_36:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_39:

LABEL_40:
  sub_1ABF250F4();
  __break(1u);
}

unint64_t sub_1ABB1D500(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1ABB1AFA8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1ABB20C18(v6 + 1);
LABEL_10:
      v14 = *v3;
      sub_1ABF25234();
      v15 = *(v5 + 16);
      v16 = *(v5 + 24);
      sub_1ABF23D34();
      result = sub_1ABF25294();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = result & v17;
        if (((*(v14 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = *(v14 + 48) + 40 * a2;
        v19 = *(v18 + 16) == v15 && *(v18 + 24) == v16;
        if (v19 || (sub_1ABF25054() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a2 + 1;
      }
    }

    result = sub_1ABB1F03C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v9 = *(v8 + 48) + 40 * a2;
  v10 = *(v5 + 16);
  *v9 = *v5;
  *(v9 + 16) = v10;
  *(v9 + 32) = *(v5 + 32);
  v11 = *(v8 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_19:
    result = sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v13;
  }

  return result;
}

void *sub_1ABB1D684(void *__src, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1ABB1B230(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_1ABB20E80(v7 + 1);
LABEL_10:
      v14 = *v3;
      memcpy(__dst, __src, sizeof(__dst));
      sub_1ABF25234();
      KnosisInternalFact.hash(into:)(&v19);
      v15 = sub_1ABF25294();
      v16 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v14 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v14 + 48) + 88 * a2);
        v18 = *v17 == *__src && v17[1] == __src[1];
        if (v18 || (sub_1ABF25054() & 1) != 0)
        {
          goto LABEL_19;
        }

        v15 = a2 + 1;
      }
    }

    sub_1ABB1F1B0();
  }

LABEL_7:
  v9 = *v3;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v9 + 48) + 88 * a2), __src, 0x58uLL);
  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_19:
    result = sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v13;
  }

  return result;
}

uint64_t sub_1ABB1D804(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v22 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_1ABB1B448(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1ABB1F338();
      goto LABEL_27;
    }

    sub_1ABB21074(v6 + 1);
  }

  v8 = *v3;
  result = sub_1ABB11118(*(*v3 + 40));
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    if (v5)
    {
      v11 = 0x7241746E65746E69;
    }

    else
    {
      v11 = 0x79676F6C6F746E6FLL;
    }

    if (v5)
    {
      v12 = 0xE900000000000067;
    }

    else
    {
      v12 = 0xE800000000000000;
    }

    do
    {
      v13 = *(*(v8 + 48) + a2) ? 0x7241746E65746E69 : 0x79676F6C6F746E6FLL;
      v14 = *(*(v8 + 48) + a2) ? 0xE900000000000067 : 0xE800000000000000;
      if (v13 == v11 && v14 == v12)
      {
        goto LABEL_30;
      }

      v16 = sub_1ABF25054();

      if (v16)
      {
        goto LABEL_31;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
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
LABEL_30:

LABEL_31:
  result = sub_1ABF250F4();
  __break(1u);
  return result;
}

void *sub_1ABB1DA00(uint64_t *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a3)
  {
    sub_1ABB1B6D4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1ABB1F478();
      goto LABEL_22;
    }

    sub_1ABB212D0(v6 + 1);
  }

  v8 = *v3;
  sub_1ABF25234();
  v9 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  v13 = *(a1 + 3);
  v47 = *(a1 + 2);
  v48 = v13;
  v49 = *(a1 + 64);
  sub_1ABF23D34();
  sub_1ABF23D34();
  v36[0] = v47;
  v36[1] = v48;
  v37 = v49;
  ViewService.DefaultResolverInteractionsView.CandidateType.hash(into:)(__dst);
  v14 = sub_1ABF25294();
  v34 = v8 + 56;
  v35 = v8;
  v15 = -1 << *(v8 + 32);
  a2 = v14 & ~v15;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v33 = ~v15;
    do
    {
      memcpy(__dst, (*(v35 + 48) + 72 * a2), 0x41uLL);
      v16 = __dst[0] == v9 && __dst[1] == v10;
      if (v16 || (sub_1ABF25054() & 1) != 0)
      {
        v17 = __dst[2] == v12 && __dst[3] == v11;
        if (v17 || (sub_1ABF25054() & 1) != 0)
        {
          v18 = v12;
          v19 = __dst[4];
          v20 = __dst[5];
          v22 = __dst[6];
          v21 = __dst[7];
          v23 = __dst[8];
          v41 = __dst[4];
          v42 = __dst[5];
          v43 = __dst[6];
          v44 = __dst[7];
          v45 = __dst[8];
          v38 = v47;
          v39 = v48;
          v40 = v49;
          sub_1ABB24348(__dst, v36);
          v24 = v20;
          v12 = v18;
          sub_1ABAFF488(v19, v24, v22, v21, v23);
          sub_1ABAFF4E8(&v47, v36);
          v25 = static ViewService.DefaultResolverInteractionsView.CandidateType.== infix(_:_:)(&v41, &v38);
          sub_1ABAFF544(v38, *(&v38 + 1), v39, *(&v39 + 1), v40);
          sub_1ABAFF544(v41, v42, v43, v44, v45);
          sub_1ABB243A4(__dst);
          if (v25)
          {
            goto LABEL_25;
          }
        }
      }

      a2 = (a2 + 1) & v33;
    }

    while (((*(v34 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_22:
  v26 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v26 + 48) + 72 * a2), a1, 0x41uLL);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_25:
  result = sub_1ABF250F4();
  __break(1u);
  return result;
}

uint64_t sub_1ABB1DCA8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
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
    sub_1ABB1BAFC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_1ABB1F600();
      goto LABEL_18;
    }

    sub_1ABB216AC(v10 + 1);
  }

  v12 = *v5;
  sub_1ABF25234();
  sub_1ABF25264();
  MEMORY[0x1AC5AA8D0](a2);
  MEMORY[0x1AC5AA8D0](a3);
  result = sub_1ABF25294();
  v13 = -1 << *(v12 + 32);
  a4 = result & ~v13;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    do
    {
      v15 = (*(v12 + 48) + 24 * a4);
      v16 = *v15;
      v18 = *(v15 + 1);
      v17 = *(v15 + 2);
      v19 = v16 == v9 && v18 == a2;
      if (v19 && v17 == a3)
      {
        goto LABEL_21;
      }

      a4 = (a4 + 1) & v14;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_18:
  v21 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = v9;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_21:
  result = sub_1ABF250F4();
  __break(1u);
  return result;
}

void sub_1ABB1DE44(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_90;
  }

  if (a3)
  {
    sub_1ABB1BD80(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1ABB1F754(&qword_1EB4D2B30, &unk_1ABF4AF20);
      goto LABEL_90;
    }

    sub_1ABB21900(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1ABAAFEEC(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = 0xE500000000000000;
      v13 = 0x7465736E75;
      switch(*(*(v8 + 48) + a2))
      {
        case 1:
          v12 = 0xE700000000000000;
          v13 = 0x6E776F6E6B6E75;
          break;
        case 2:
          v13 = 0x726568746FLL;
          break;
        case 3:
          v12 = 0xE600000000000000;
          v13 = 0x666C6573796DLL;
          break;
        case 4:
          v12 = 0xE600000000000000;
          v13 = 0x796C696D6166;
          break;
        case 5:
          v12 = 0xE600000000000000;
          v13 = 0x746E65726170;
          break;
        case 6:
          v13 = 0x726568746F6DLL;
          v12 = 0xE600000000000000;
          break;
        case 7:
          v12 = 0xE600000000000000;
          v18 = 1752457574;
          goto LABEL_37;
        case 8:
          v12 = 0xE700000000000000;
          v13 = 0x676E696C626973;
          break;
        case 9:
          v12 = 0xE700000000000000;
          v17 = 0x6568746F7262;
          goto LABEL_35;
        case 0xA:
          v12 = 0xE600000000000000;
          v18 = 1953720691;
LABEL_37:
          v13 = v18 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 0xB:
          v13 = 0x726150646E617267;
          v16 = 7630437;
          goto LABEL_32;
        case 0xC:
          v13 = 0x746F6D646E617267;
          goto LABEL_31;
        case 0xD:
          v13 = 0x746166646E617267;
LABEL_31:
          v16 = 7497064;
LABEL_32:
          v12 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0xE:
          v12 = 0xE700000000000000;
          v15 = 0x6C696843796DLL;
          goto LABEL_27;
        case 0xF:
          v13 = 0x646C696863;
          break;
        case 0x10:
          v12 = 0xE300000000000000;
          v13 = 7237491;
          break;
        case 0x11:
          v12 = 0xE800000000000000;
          v19 = 0x746867756164;
          goto LABEL_42;
        case 0x12:
          v12 = 0xE700000000000000;
          v17 = 0x656E74726170;
LABEL_35:
          v13 = v17 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 0x13:
          v12 = 0xE400000000000000;
          v13 = 1701210487;
          break;
        case 0x14:
          v12 = 0xE700000000000000;
          v15 = 0x6E6162737568;
LABEL_27:
          v13 = v15 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 0x15:
          v12 = 0xE600000000000000;
          v13 = 0x646E65697266;
          break;
        case 0x16:
          v13 = 0xD000000000000010;
          v12 = 0x80000001ABF81E70;
          break;
        case 0x17:
          v12 = 0xE800000000000000;
          v19 = 0x6B726F776F63;
LABEL_42:
          v13 = v19 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 0x18:
          v12 = 0xE800000000000000;
          v13 = 0x726F62686769656ELL;
          break;
        case 0x19:
          v13 = 0x74616D6573756F68;
          v12 = 0xE900000000000065;
          break;
        case 0x1A:
          v12 = 0xE600000000000000;
          v13 = 0x696E6D756C61;
          break;
        case 0x1B:
          v14 = 1699772781;
          goto LABEL_45;
        case 0x1C:
          v13 = 0x676F44796DLL;
          break;
        case 0x1D:
          v14 = 1631811949;
LABEL_45:
          v13 = v14 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      v20 = 0xE500000000000000;
      v21 = 0x7465736E75;
      switch(v5)
      {
        case 1:
          v20 = 0xE700000000000000;
          v21 = 0x6E776F6E6B6E75;
          break;
        case 2:
          v21 = 0x726568746FLL;
          break;
        case 3:
          v20 = 0xE600000000000000;
          v21 = 0x666C6573796DLL;
          break;
        case 4:
          v20 = 0xE600000000000000;
          v21 = 0x796C696D6166;
          break;
        case 5:
          v20 = 0xE600000000000000;
          v21 = 0x746E65726170;
          break;
        case 6:
          v21 = 0x726568746F6DLL;
          v20 = 0xE600000000000000;
          break;
        case 7:
          v20 = 0xE600000000000000;
          v26 = 1752457574;
          goto LABEL_74;
        case 8:
          v20 = 0xE700000000000000;
          v21 = 0x676E696C626973;
          break;
        case 9:
          v20 = 0xE700000000000000;
          v25 = 0x6568746F7262;
          goto LABEL_72;
        case 10:
          v20 = 0xE600000000000000;
          v26 = 1953720691;
LABEL_74:
          v21 = v26 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 11:
          v21 = 0x726150646E617267;
          v24 = 7630437;
          goto LABEL_69;
        case 12:
          v21 = 0x746F6D646E617267;
          goto LABEL_68;
        case 13:
          v21 = 0x746166646E617267;
LABEL_68:
          v24 = 7497064;
LABEL_69:
          v20 = v24 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 14:
          v20 = 0xE700000000000000;
          v23 = 0x6C696843796DLL;
          goto LABEL_64;
        case 15:
          v21 = 0x646C696863;
          break;
        case 16:
          v20 = 0xE300000000000000;
          v21 = 7237491;
          break;
        case 17:
          v20 = 0xE800000000000000;
          v27 = 0x746867756164;
          goto LABEL_79;
        case 18:
          v20 = 0xE700000000000000;
          v25 = 0x656E74726170;
LABEL_72:
          v21 = v25 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 19:
          v20 = 0xE400000000000000;
          v21 = 1701210487;
          break;
        case 20:
          v20 = 0xE700000000000000;
          v23 = 0x6E6162737568;
LABEL_64:
          v21 = v23 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 21:
          v20 = 0xE600000000000000;
          v21 = 0x646E65697266;
          break;
        case 22:
          v21 = 0xD000000000000010;
          v20 = 0x80000001ABF81E70;
          break;
        case 23:
          v20 = 0xE800000000000000;
          v27 = 0x6B726F776F63;
LABEL_79:
          v21 = v27 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 24:
          v20 = 0xE800000000000000;
          v21 = 0x726F62686769656ELL;
          break;
        case 25:
          v21 = 0x74616D6573756F68;
          v20 = 0xE900000000000065;
          break;
        case 26:
          v20 = 0xE600000000000000;
          v21 = 0x696E6D756C61;
          break;
        case 27:
          v22 = 1699772781;
          goto LABEL_82;
        case 28:
          v21 = 0x676F44796DLL;
          break;
        case 29:
          v22 = 1631811949;
LABEL_82:
          v21 = v22 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      if (v13 == v21 && v12 == v20)
      {
        goto LABEL_93;
      }

      v29 = sub_1ABF25054();

      if (v29)
      {
        goto LABEL_94;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_90:
  v30 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v30 + 48) + a2) = v5;
  v31 = *(v30 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v30 + 16) = v33;
    return;
  }

  __break(1u);
LABEL_93:

LABEL_94:
  sub_1ABF250F4();
  __break(1u);
}

uint64_t sub_1ABB1E4F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a6)
  {
    sub_1ABB1BFEC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_1ABB1F800();
      goto LABEL_21;
    }

    sub_1ABB21B3C(v12 + 1);
  }

  v14 = *v6;
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF23D34();
  result = sub_1ABF25294();
  v15 = v14 + 56;
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    v18 = *(v14 + 48);
    do
    {
      v19 = (v18 + 32 * a5);
      v20 = v19[2];
      v21 = v19[3];
      v22 = *v19 == v11 && v19[1] == a2;
      if (v22 || (result = sub_1ABF25054(), (result & 1) != 0))
      {
        if (v20 == a3 && v21 == a4)
        {
          goto LABEL_24;
        }

        result = sub_1ABF25054();
        if (result)
        {
          goto LABEL_24;
        }
      }

      a5 = (a5 + 1) & v17;
    }

    while (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_21:
  v24 = *v29;
  *(*v29 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = v11;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_24:
  result = sub_1ABF250F4();
  __break(1u);
  return result;
}

void sub_1ABB1E6BC(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1ABB1C270();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1ABB21D9C();
LABEL_10:
      v12 = *v3;
      sub_1ABF25234();
      MEMORY[0x1AC5AA8A0](result);
      v13 = sub_1ABF25294();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == result)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1ABB1F968(&qword_1EB4D2B58, &unk_1ABF39DC0);
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1ABB1E84C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1ABA9EE20();
  if (!(!v15 & v14) || (v9 & 1) == 0)
  {
    if (v9)
    {
      sub_1ABB1C41C(v12 + 1, v10, v11);
      goto LABEL_11;
    }

    if (v13 <= v12)
    {
      sub_1ABB21F40(v12 + 1, v10, v11);
LABEL_11:
      v21 = *v7;
      sub_1ABF25224();
      sub_1ABAA489C();
      while (1)
      {
        a2 = v22 & v24;
        if (((*(v23 + (((v22 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v24)) & 1) == 0)
        {
          goto LABEL_8;
        }

        if (*(*(v21 + 48) + 8 * a2) == v6)
        {
          goto LABEL_16;
        }

        v22 = a2 + 1;
      }
    }

    sub_1ABB1F968(v10, v11);
  }

LABEL_8:
  sub_1ABA895E0();
  *(v17 + 8 * a2) = v6;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }
}

void *sub_1ABB1E950()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2B38, &unk_1ABF39DA0);
  v2 = *v0;
  v3 = sub_1ABF24A34();
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
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOWORD(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + 8 * v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
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

void *sub_1ABB1EAC4()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2BB0, &qword_1ABF39E08);
  v2 = *v0;
  v3 = sub_1ABF24A34();
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
        v18 = 9 * v17;
        v19 = (*(v2 + 48) + 144 * v17);
        memcpy(__dst, v19, sizeof(__dst));
        memmove((*(v4 + 48) + 16 * v18), v19, 0x90uLL);
        result = sub_1ABAE42A8(__dst, &v20);
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

void *sub_1ABB1EC4C()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2E70, &unk_1ABF4AF30);
  v2 = *v0;
  v3 = sub_1ABF24A34();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

void *sub_1ABB1EDA4()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2BA0, &qword_1ABF39DF0);
  v2 = *v0;
  v3 = sub_1ABF24A34();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *sub_1ABB1EEE4()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2BB8, &qword_1ABF39E18);
  v2 = *v0;
  v3 = sub_1ABF24A34();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

void *sub_1ABB1F03C()
{
  v1 = v0;
  sub_1ABAD219C(&unk_1EB4D2E50, &qword_1ABF39DF8);
  v2 = *v0;
  v3 = sub_1ABF24A34();
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
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + 8 * v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
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

void *sub_1ABB1F1B0()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2B68, &qword_1ABF39DD0);
  v2 = *v0;
  v3 = sub_1ABF24A34();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_1ABB242A4(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = *(v2 + 48);
      v17 = 88 * (v13 | (v8 << 6));
      memcpy(__dst, (v16 + v17), 0x58uLL);
      memmove((*(v4 + 48) + v17), (v16 + v17), 0x58uLL);
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

void *sub_1ABB1F338()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2B60, &unk_1ABF3A610);
  v2 = *v0;
  v3 = sub_1ABF24A34();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *sub_1ABB1F478()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2BA8, &qword_1ABF39E00);
  v2 = *v0;
  v3 = sub_1ABF24A34();
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
        v18 = 9 * v17;
        v19 = (*(v2 + 48) + 72 * v17);
        memcpy(__dst, v19, 0x41uLL);
        memmove((*(v4 + 48) + 8 * v18), v19, 0x41uLL);
        result = sub_1ABB24348(__dst, &v20);
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

void *sub_1ABB1F600()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2B88, &qword_1ABF39DE8);
  v2 = *v0;
  v3 = sub_1ABF24A34();
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
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 3 * v14;
      v18 = *(v2 + 48) + 8 * v17;
      v19 = *(v18 + 8);
      v20 = *(v4 + 48) + 8 * v17;
      *v20 = *v18;
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

void sub_1ABB1F754(uint64_t *a1, uint64_t *a2)
{
  sub_1ABAD219C(a1, a2);
  sub_1ABA9F138();
  sub_1ABA8A900();
  if (v5)
  {
    v6 = sub_1ABA8E64C();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      memmove(v6, v4, 8 * v7);
    }

    sub_1ABA7EDBC();
    if (v13)
    {
      do
      {
        sub_1ABAA3420();
LABEL_15:
        *(v2[6] + v15) = *(*(v3 + 48) + v15);
      }

      while (v14);
    }

    v16 = v11;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v12)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v4 + v17))
      {
        sub_1ABAA3774();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void *sub_1ABB1F800()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2B70, &qword_1ABF39DD8);
  v2 = *v0;
  v3 = sub_1ABF24A34();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + 32 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

void sub_1ABB1F968(uint64_t *a1, uint64_t *a2)
{
  sub_1ABAD219C(a1, a2);
  sub_1ABA9F138();
  sub_1ABA8A900();
  if (v4)
  {
    v5 = sub_1ABA8E64C();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v3, 8 * v6);
    }

    sub_1ABA7EDBC();
    if (v12)
    {
      do
      {
        sub_1ABAA3420();
LABEL_15:
        sub_1ABA88E7C();
      }

      while (v15);
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_17;
      }

      ++v13;
      if (*(v3 + v14))
      {
        sub_1ABAA3774();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

uint64_t sub_1ABB1FA08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2B38, &unk_1ABF39DA0);
  result = sub_1ABF24A44();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 24);
        v31 = *(v16 + 16);
        v30 = *(v16 + 32);
        sub_1ABF25234();

        sub_1ABF23D34();
        result = sub_1ABF25294();
        v20 = -1 << *(v5 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = *(v5 + 48) + 40 * v23;
        *v28 = v17;
        *(v28 + 8) = v18;
        *(v28 + 16) = v31;
        *(v28 + 24) = v19;
        *(v28 + 32) = v30;
        ++*(v5 + 16);
        v3 = v29;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1ABB1FC70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2BB0, &qword_1ABF39E08);
  result = sub_1ABF24A44();
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
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v30 = v11;
    v31 = result;
    v32 = v3;
    if (v10)
    {
      while (2)
      {
        v13 = __clz(__rbit64(v10));
        v33 = (v10 - 1) & v10;
LABEL_12:
        memcpy(__dst, (*(v3 + 48) + 144 * (v13 | (v6 << 6))), 0x90uLL);
        sub_1ABF25234();
        v16 = __dst[2];
        v17 = BYTE2(__dst[6]);

        sub_1ABAE42A8(__dst, v34);
        sub_1ABF23D34();
        switch(v17)
        {
          case 1:
            MEMORY[0x1AC5AA8A0](1);
            MEMORY[0x1AC5AA8D0](v16);
            break;
          case 2:
            v18 = 2;
            goto LABEL_16;
          case 3:
            MEMORY[0x1AC5AA8A0](3);
            goto LABEL_18;
          case 4:
            MEMORY[0x1AC5AA8A0](4);
            break;
          default:
            v18 = 0;
LABEL_16:
            MEMORY[0x1AC5AA8A0](v18);
LABEL_18:
            sub_1ABF23D34();
            break;
        }

        v5 = v31;
        v19 = __dst[12];
        v20 = BYTE2(__dst[16]);
        sub_1ABF23D34();
        switch(v20)
        {
          case 1:
            MEMORY[0x1AC5AA8A0](1);
            MEMORY[0x1AC5AA8D0](v19);
            goto LABEL_28;
          case 2:
            v21 = 2;
            goto LABEL_24;
          case 3:
            MEMORY[0x1AC5AA8A0](3);
            goto LABEL_26;
          case 4:
            MEMORY[0x1AC5AA8A0](4);
            goto LABEL_28;
          default:
            v21 = 0;
LABEL_24:
            MEMORY[0x1AC5AA8A0](v21);
LABEL_26:
            sub_1ABF23D34();
LABEL_28:
            v3 = v32;
            sub_1ABD8F210();

            result = sub_1ABF25294();
            v22 = -1 << *(v31 + 32);
            v23 = result & ~v22;
            v24 = v23 >> 6;
            if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) != 0)
            {
              v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v26 = 0;
              v27 = (63 - v22) >> 6;
              do
              {
                if (++v24 == v27 && (v26 & 1) != 0)
                {
                  goto LABEL_43;
                }

                v28 = v24 == v27;
                if (v24 == v27)
                {
                  v24 = 0;
                }

                v26 |= v28;
                v29 = *(v12 + 8 * v24);
              }

              while (v29 == -1);
              v25 = __clz(__rbit64(~v29)) + (v24 << 6);
            }

            *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
            result = memcpy((*(v31 + 48) + 144 * v25), __dst, 0x90uLL);
            ++*(v31 + 16);
            v11 = v30;
            v10 = v33;
            if (!v33)
            {
              break;
            }

            continue;
        }

        break;
      }
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        goto LABEL_41;
      }

      v15 = *(v7 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v33 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  else
  {

LABEL_41:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1ABB20054(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2E70, &unk_1ABF4AF30);
  result = sub_1ABF24A44();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1ABF25234();

        sub_1ABF23D34();
        result = sub_1ABF25294();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1ABB20288(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2BA0, &qword_1ABF39DF0);
  result = sub_1ABF24A44();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1ABF25234();
        if (v15 >> 6)
        {
          if (v15 >> 6 == 1)
          {
            MEMORY[0x1AC5AA8A0](4);
            sub_1ABF23D34();
          }

          else
          {
            if (v15 == 128)
            {
              v16 = 0;
            }

            else
            {
              v16 = v15 == 129 ? 1 : 2;
            }

            MEMORY[0x1AC5AA8A0](v16);
          }
        }

        else
        {
          MEMORY[0x1AC5AA8A0](3);
          sub_1ABF23D34();
        }

        result = sub_1ABF25294();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_31;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_35;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_35:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1ABB20694(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2BB8, &qword_1ABF39E18);
  result = sub_1ABF24A44();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1ABF25234();

        sub_1ABF23D34();
        result = sub_1ABF25294();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1ABB208C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&unk_1EB4D2E20, &qword_1ABF39E10);
  result = sub_1ABF24A44();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1ABF25234();
        sub_1ABF23D34();

        result = sub_1ABF25294();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1ABB20C18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&unk_1EB4D2E50, &qword_1ABF39DF8);
  result = sub_1ABF24A44();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
        v17 = *(v16 + 8);
        v31 = *v16;
        v18 = *(v16 + 16);
        v19 = *(v16 + 24);
        v30 = *(v16 + 32);
        sub_1ABF25234();

        sub_1ABF23D34();
        result = sub_1ABF25294();
        v20 = -1 << *(v5 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = *(v5 + 48) + 40 * v23;
        *v28 = v31;
        *(v28 + 8) = v17;
        *(v28 + 16) = v18;
        *(v28 + 24) = v19;
        *(v28 + 32) = v30;
        ++*(v5 + 16);
        v3 = v29;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void *sub_1ABB20E80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2B68, &qword_1ABF39DD0);
  result = sub_1ABF24A44();
  v5 = result;
  if (*(v3 + 16))
  {
    v16 = v1;
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
    for (i = (v7 + 63) >> 6; v9; ++v5[2])
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v14 = (*(v3 + 48) + 88 * (v11 | (v6 << 6)));
      memcpy(__dst, v14, 0x58uLL);
      memcpy(v19, v14, sizeof(v19));
      sub_1ABF25234();
      sub_1ABB242A4(__dst, v17);
      KnosisInternalFact.hash(into:)(v18);
      sub_1ABF25294();
      v15 = sub_1ABF249A4();
      *(v5 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v15;
      result = memcpy((v5[6] + 88 * v15), __dst, 0x58uLL);
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= i)
      {

        v2 = v16;
        goto LABEL_16;
      }

      v13 = *(v3 + 56 + 8 * v6);
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

LABEL_16:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1ABB21074(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2B60, &unk_1ABF3A610);
  result = sub_1ABF24A44();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1ABF25234();
        sub_1ABF23D34();

        result = sub_1ABF25294();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1ABB212D0(uint64_t a1)
{
  v2 = *v1;
  sub_1ABAD219C(&qword_1EB4D2BA8, &qword_1ABF39E00);
  result = sub_1ABF24A44();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_55:
    *v1 = v4;
    return result;
  }

  v5 = 0;
  v28 = v2 + 56;
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
  v29 = v9;
  v30 = result;
  v31 = v2;
  if (!v8)
  {
LABEL_7:
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

        goto LABEL_55;
      }

      v13 = *(v28 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v33 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_57;
  }

  while (1)
  {
    v11 = __clz(__rbit64(v8));
    v33 = (v8 - 1) & v8;
LABEL_12:
    memcpy(__dst, (*(v2 + 48) + 72 * (v11 | (v5 << 6))), 0x41uLL);
    sub_1ABF25234();
    v14 = __dst[5];
    v32 = __dst[4];
    v16 = __dst[6];
    v15 = __dst[7];
    v17 = LOBYTE(__dst[8]);
    sub_1ABB24348(__dst, v34);
    sub_1ABF23D34();
    sub_1ABF23D34();
    if (!v17)
    {
      MEMORY[0x1AC5AA8A0](4);
      if (!v14)
      {
        sub_1ABF25254();
        goto LABEL_18;
      }

      sub_1ABF25254();
LABEL_17:
      sub_1ABF23D34();
LABEL_18:
      v4 = v30;
      v2 = v31;
      goto LABEL_42;
    }

    if (v17 == 1)
    {
      MEMORY[0x1AC5AA8A0](9);
      sub_1ABF23D34();
      goto LABEL_17;
    }

    v2 = v31;
    if (v16 | v14 | v32 | v15)
    {
      v18 = v16 | v14 | v15;
      v4 = v30;
      if (v32 != 1 || v18)
      {
        if (v32 != 2 || v18)
        {
          if (v32 != 3 || v18)
          {
            if (v32 != 4 || v18)
            {
              if (v32 != 5 || v18)
              {
                v19 = v32 != 6 || v18 ? 8 : 7;
              }

              else
              {
                v19 = 6;
              }
            }

            else
            {
              v19 = 5;
            }
          }

          else
          {
            v19 = 3;
          }
        }

        else
        {
          v19 = 2;
        }
      }

      else
      {
        v19 = 1;
      }

      MEMORY[0x1AC5AA8A0](v19);
    }

    else
    {
      MEMORY[0x1AC5AA8A0](0);
      v4 = v30;
    }

LABEL_42:
    result = sub_1ABF25294();
    v20 = -1 << *(v4 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v10 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v10 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_51:
    *(v10 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = memcpy((*(v4 + 48) + 72 * v23), __dst, 0x41uLL);
    ++*(v4 + 16);
    v9 = v29;
    v8 = v33;
    if (!v33)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v10 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_51;
    }
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1ABB216AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2B88, &qword_1ABF39DE8);
  result = sub_1ABF24A44();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(v3 + 48) + 24 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        sub_1ABF25234();
        sub_1ABF25264();
        MEMORY[0x1AC5AA8D0](v18);
        MEMORY[0x1AC5AA8D0](v19);
        result = sub_1ABF25294();
        v20 = -1 << *(v5 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = *(v5 + 48) + 24 * v23;
        *v28 = v17;
        *(v28 + 8) = v18;
        *(v28 + 16) = v19;
        ++*(v5 + 16);
        v3 = v29;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1ABB21900(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2B30, &unk_1ABF4AF20);
  result = sub_1ABF24A44();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1ABF25234();
        PersonEntityTagType.rawValue.getter();
        sub_1ABF23D34();

        result = sub_1ABF25294();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1ABB21B3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2B70, &qword_1ABF39DD8);
  result = sub_1ABF24A44();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + 32 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[3];
        sub_1ABF25234();

        sub_1ABF23D34();
        sub_1ABF23D34();
        result = sub_1ABF25294();
        v21 = -1 << *(v5 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = (*(v5 + 48) + 32 * v24);
        *v29 = v17;
        v29[1] = v18;
        v29[2] = v19;
        v29[3] = v20;
        ++*(v5 + 16);
        v3 = v31;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

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
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v30;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_1ABB21D9C()
{
  sub_1ABA8A8E4();
  v26 = v1;
  v2 = v0;
  v3 = *v0;
  sub_1ABAD219C(v4, v5);
  v6 = sub_1ABF24A44();
  if (*(v3 + 16))
  {
    v7 = 0;
    sub_1ABA8CC60();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;
    v13 = v6 + 56;
    if ((v9 & v8) != 0)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_9:
        v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        sub_1ABF25234();
        v26(v18);
        sub_1ABF25294();
        sub_1ABAB687C();
        if (v19)
        {
          break;
        }

        sub_1ABA8154C();
LABEL_19:
        sub_1ABA8FE48();
        *(v13 + v23) |= v24;
        *(*(v6 + 48) + 8 * v25) = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_4;
        }
      }

      sub_1ABA8E674();
      while (1)
      {
        sub_1ABA9E640();
        if (v19)
        {
          if (v21)
          {
            break;
          }
        }

        if (v20 == v22)
        {
          v20 = 0;
        }

        if (*(v13 + 8 * v20) != -1)
        {
          sub_1ABA83620();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v0;
          goto LABEL_23;
        }

        ++v15;
        if (*(v3 + 56 + 8 * v7))
        {
          sub_1ABA96BF4();
          v10 = v17 & v16;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v2 = v6;
    sub_1ABA89EC8();
  }
}

void sub_1ABB21F40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1ABA979CC(a1, a2, a3);
  sub_1ABA8A5C4();
  v6 = v5;
  sub_1ABF24A44();
  sub_1ABA8A900();
  if (v7)
  {
    v8 = 0;
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_12:
        v18 = *(*(v4 + 48) + 8 * (v14 | (v8 << 6)));
        sub_1ABF25224();
        sub_1ABA89370();
        if (((-1 << v20) & ~*(v13 + 8 * v19)) == 0)
        {
          break;
        }

        sub_1ABA8154C();
LABEL_22:
        sub_1ABA8FE48();
        *(v13 + v25) |= v26;
        *(*(v6 + 48) + 8 * v27) = v18;
        ++*(v6 + 16);
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      sub_1ABA8E674();
      while (1)
      {
        sub_1ABA9E640();
        if (v24)
        {
          if (v22)
          {
            break;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        if (*(v13 + 8 * v21) != -1)
        {
          sub_1ABA83620();
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_7:
      v15 = v8;
      while (1)
      {
        v8 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v8 >= v12)
        {
          goto LABEL_24;
        }

        ++v15;
        if (*(v4 + 56 + 8 * v8))
        {
          sub_1ABA96BF4();
          v11 = v17 & v16;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_24:

    *v3 = v6;
  }
}

uint64_t sub_1ABB220B4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1ABF25234();
  sub_1ABF23D34();
  v6 = sub_1ABF25294();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1ABF25054() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1ABB1EEE4();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1ABB229FC(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_1ABB221DC()
{
  result = qword_1EB4D2930;
  if (!qword_1EB4D2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2930);
  }

  return result;
}

unint64_t sub_1ABB22230()
{
  result = qword_1EB4D2968;
  if (!qword_1EB4D2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2968);
  }

  return result;
}

unint64_t sub_1ABB22284()
{
  result = qword_1EB4D2970;
  if (!qword_1EB4D2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2970);
  }

  return result;
}

unint64_t sub_1ABB222D8()
{
  result = qword_1EB4D2978;
  if (!qword_1EB4D2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2978);
  }

  return result;
}

unint64_t sub_1ABB2232C()
{
  result = qword_1EB4D2980;
  if (!qword_1EB4D2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2980);
  }

  return result;
}

unint64_t sub_1ABB22380()
{
  result = qword_1EB4D2988;
  if (!qword_1EB4D2988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2988);
  }

  return result;
}

unint64_t sub_1ABB223D4()
{
  result = qword_1EB4D2990;
  if (!qword_1EB4D2990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2990);
  }

  return result;
}

void sub_1ABB22428()
{
  sub_1ABA8D0C4();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  sub_1ABF25234();
  sub_1ABA894AC();
  sub_1ABF23D34();
  sub_1ABF25294();
  sub_1ABAA51D0();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    sub_1ABB24704();
    if (((*(v5 + 56 + v10) >> v9) & 1) == 0)
    {
      break;
    }

    v11 = (*(v5 + 48) + 16 * v9);
    v12 = v11[1];
    v13 = *v11 == v4 && v12 == v2;
    if (v13 || (sub_1ABA94798(*v11, v12, v4) & 1) != 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABB1EC4C();
      }

      sub_1ABB229FC(v9);
      *v0 = v15;
      break;
    }

    v6 = v9 + 1;
  }

  sub_1ABA8D1F0();
}

void sub_1ABB2252C()
{
  sub_1ABA9DE04();
  v1 = v0;
  v3 = v2;
  v36 = v4;
  v5 = *v1;
  sub_1ABA93208();
  sub_1ABAAFEEC(v6);
  sub_1ABAA51D0();
  v9 = v8 & ~v7;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v7;
    sub_1ABA8071C();
    v35 = v11;
    while (1)
    {
      v12 = 0xE500000000000000;
      v13 = 0x7465736E75;
      switch(*(*(v5 + 48) + v9))
      {
        case 1:
          v12 = 0xE700000000000000;
          v13 = sub_1ABAB1010();
          break;
        case 2:
          v13 = sub_1ABA9F8F8();
          break;
        case 3:
          v12 = 0xE600000000000000;
          v13 = sub_1ABA8C52C();
          break;
        case 4:
          v12 = 0xE600000000000000;
          v13 = sub_1ABAA0B4C();
          break;
        case 5:
          v12 = 0xE600000000000000;
          v13 = sub_1ABA8AD0C();
          break;
        case 6:
          sub_1ABA8BE84();
          v13 = v20 + 3591;
          v12 = 0xE600000000000000;
          break;
        case 7:
          v12 = 0xE600000000000000;
          v18 = 1752457574;
          goto LABEL_30;
        case 8:
          v12 = 0xE700000000000000;
          v13 = sub_1ABA9521C();
          break;
        case 9:
          v12 = 0xE700000000000000;
          v17 = sub_1ABA8AAA0();
          goto LABEL_28;
        case 0xA:
          v12 = 0xE600000000000000;
          v18 = 1953720691;
LABEL_30:
          v13 = v18 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 0xB:
          v13 = sub_1ABA7ABD8() | 0x7261506400000000;
          v16 = 7630437;
          goto LABEL_25;
        case 0xC:
          v13 = sub_1ABA7ABD8() | 0x746F6D6400000000;
          goto LABEL_24;
        case 0xD:
          v13 = sub_1ABA7ABD8() | 0x7461666400000000;
LABEL_24:
          v16 = 7497064;
LABEL_25:
          v12 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0xE:
          v12 = 0xE700000000000000;
          v15 = sub_1ABA8C6EC();
          goto LABEL_20;
        case 0xF:
          v13 = sub_1ABA8A360();
          break;
        case 0x10:
          v12 = 0xE300000000000000;
          v13 = 7237491;
          break;
        case 0x11:
          v12 = 0xE800000000000000;
          v19 = sub_1ABA9F9E8();
          goto LABEL_35;
        case 0x12:
          v12 = 0xE700000000000000;
          v17 = sub_1ABA9FAEC();
LABEL_28:
          v13 = v17 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 0x13:
          v12 = 0xE400000000000000;
          v13 = 1701210487;
          break;
        case 0x14:
          v12 = 0xE700000000000000;
          v15 = sub_1ABA8A494();
LABEL_20:
          v13 = v15 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 0x15:
          v12 = 0xE600000000000000;
          v13 = sub_1ABA9FBC0();
          break;
        case 0x16:
          v13 = sub_1ABA97980();
          v12 = v35;
          break;
        case 0x17:
          v12 = 0xE800000000000000;
          v19 = sub_1ABA8B24C();
LABEL_35:
          v13 = v19 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 0x18:
          v12 = 0xE800000000000000;
          v13 = sub_1ABAA1264();
          break;
        case 0x19:
          v13 = sub_1ABAB543C();
          v12 = 0xE900000000000065;
          break;
        case 0x1A:
          v12 = 0xE600000000000000;
          v13 = sub_1ABA9FCE4();
          break;
        case 0x1B:
          v14 = 1699772781;
          goto LABEL_38;
        case 0x1C:
          v13 = sub_1ABAA0A28();
          break;
        case 0x1D:
          v14 = 1631811949;
LABEL_38:
          v13 = v14 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      v21 = 0xE500000000000000;
      v22 = 0x7465736E75;
      switch(v3)
      {
        case 1:
          v21 = 0xE700000000000000;
          sub_1ABA96004();
          break;
        case 2:
          sub_1ABA8B480();
          break;
        case 3:
          v21 = 0xE600000000000000;
          sub_1ABA8AEB8();
          break;
        case 4:
          v21 = 0xE600000000000000;
          sub_1ABA950B0();
          break;
        case 5:
          v21 = 0xE600000000000000;
          sub_1ABAA03D8();
          break;
        case 6:
          sub_1ABA8BE84();
          v22 = v30 + 3591;
          v21 = 0xE600000000000000;
          break;
        case 7:
          v21 = 0xE600000000000000;
          v27 = 1752457574;
          goto LABEL_67;
        case 8:
          v21 = 0xE700000000000000;
          sub_1ABAB5C34();
          break;
        case 9:
          v21 = 0xE700000000000000;
          sub_1ABA9FF9C();
          goto LABEL_65;
        case 10:
          v21 = 0xE600000000000000;
          v27 = 1953720691;
LABEL_67:
          v22 = v27 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 11:
          sub_1ABA82DCC();
          sub_1ABA88F50();
          goto LABEL_62;
        case 12:
          sub_1ABA82DCC();
          v22 = v25 | 0x746F6D6400000000;
          goto LABEL_61;
        case 13:
          sub_1ABA82DCC();
          v22 = v29 | 0x7461666400000000;
LABEL_61:
          v21 = 7497064;
LABEL_62:
          v21 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 14:
          v21 = 0xE700000000000000;
          sub_1ABA8B0D0();
          goto LABEL_57;
        case 15:
          sub_1ABAA0118();
          break;
        case 16:
          v21 = 0xE300000000000000;
          v22 = 7237491;
          break;
        case 17:
          v21 = 0xE800000000000000;
          sub_1ABA8B634();
          goto LABEL_72;
        case 18:
          v21 = 0xE700000000000000;
          sub_1ABA8B844();
LABEL_65:
          v22 = v26 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 19:
          v21 = 0xE400000000000000;
          v22 = 1701210487;
          break;
        case 20:
          v21 = 0xE700000000000000;
          sub_1ABAA029C();
LABEL_57:
          v22 = v24 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 21:
          v21 = 0xE600000000000000;
          sub_1ABA8BA58();
          break;
        case 22:
          sub_1ABA8BA2C();
          v21 = v35;
          break;
        case 23:
          v21 = 0xE800000000000000;
          sub_1ABAA0510();
LABEL_72:
          v22 = v28 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 24:
          v21 = 0xE800000000000000;
          sub_1ABA97728();
          break;
        case 25:
          sub_1ABAA1B7C();
          v21 = 0xE900000000000065;
          break;
        case 26:
          v21 = 0xE600000000000000;
          sub_1ABAA06AC();
          break;
        case 27:
          v23 = 1699772781;
          goto LABEL_75;
        case 28:
          sub_1ABA9FE44();
          break;
        case 29:
          v23 = 1631811949;
LABEL_75:
          v22 = v23 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      if (v13 == v22 && v12 == v21)
      {
        break;
      }

      v32 = sub_1ABA89728(v13, v12, v22);

      if (v32)
      {
        goto LABEL_85;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_83;
      }
    }

LABEL_85:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v1;
    v37 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1ABB1F754(&qword_1EB4D2B30, &unk_1ABF4AF20);
      v34 = v37;
    }

    *v36 = *(*(v34 + 48) + v9);
    sub_1ABB22BB4(v9);
    *v1 = v37;
  }

  else
  {
LABEL_83:
    *v36 = 30;
  }

  sub_1ABA88CCC();
}

unint64_t sub_1ABB229FC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1ABF24984();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1ABF25234();

        sub_1ABF23D34();
        v10 = sub_1ABF25294();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1ABB22BB4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1ABF24984();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1ABF25234();
        sub_1ABF23D34();

        v10 = sub_1ABF25294() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_15:
            v13 = *(v3 + 48);
            v14 = (v13 + v2);
            v15 = (v13 + v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1ABB22FFC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1ABF23C04();
  }

  return sub_1ABA7D000();
}

unint64_t sub_1ABB23058()
{
  result = qword_1EB4D29C0;
  if (!qword_1EB4D29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D29C0);
  }

  return result;
}

uint64_t sub_1ABB230AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1ABB23104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1ABB2315C()
{
  result = qword_1EB4D29D0;
  if (!qword_1EB4D29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D29D0);
  }

  return result;
}

unint64_t sub_1ABB231B0()
{
  result = qword_1EB4D29D8;
  if (!qword_1EB4D29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D29D8);
  }

  return result;
}

unint64_t sub_1ABB23204()
{
  result = qword_1EB4D29E8;
  if (!qword_1EB4D29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D29E8);
  }

  return result;
}

uint64_t sub_1ABB23258(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1ABB24300(&qword_1EB4CF048, a2, type metadata accessor for AutonamingViewFeedback, &protocol conformance descriptor for AutonamingViewFeedback);
  result = sub_1ABB24300(&qword_1EB4CF050, v3, type metadata accessor for AutonamingViewFeedback, &protocol conformance descriptor for AutonamingViewFeedback);
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of AutonamingView.confirm(identifier:person:confirmationType:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))();
}

uint64_t dispatch thunk of AutonamingView.reject(identifier:person:confirmationType:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC8))();
}

uint64_t sub_1ABB235D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB23628(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1ABB23688(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 sub_1ABB236A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1ABB236C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 49))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB23700(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ABB23754(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AutonamingViewFeedback.FeedbackType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABB238C4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABB239C0()
{
  result = qword_1EB4D2A50;
  if (!qword_1EB4D2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A50);
  }

  return result;
}

unint64_t sub_1ABB23A18()
{
  result = qword_1EB4D2A58;
  if (!qword_1EB4D2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A58);
  }

  return result;
}

unint64_t sub_1ABB23A70()
{
  result = qword_1EB4D2A60;
  if (!qword_1EB4D2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A60);
  }

  return result;
}

unint64_t sub_1ABB23AC8()
{
  result = qword_1EB4D2A68;
  if (!qword_1EB4D2A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A68);
  }

  return result;
}

unint64_t sub_1ABB23B20()
{
  result = qword_1EB4D2A70;
  if (!qword_1EB4D2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A70);
  }

  return result;
}

unint64_t sub_1ABB23B78()
{
  result = qword_1EB4D2A78;
  if (!qword_1EB4D2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A78);
  }

  return result;
}

unint64_t sub_1ABB23BD0()
{
  result = qword_1EB4D2A80;
  if (!qword_1EB4D2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A80);
  }

  return result;
}

unint64_t sub_1ABB23C28()
{
  result = qword_1EB4D2A88;
  if (!qword_1EB4D2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A88);
  }

  return result;
}

unint64_t sub_1ABB23C80()
{
  result = qword_1EB4D2A90;
  if (!qword_1EB4D2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A90);
  }

  return result;
}

unint64_t sub_1ABB23CD8()
{
  result = qword_1EB4D2A98;
  if (!qword_1EB4D2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A98);
  }

  return result;
}

unint64_t sub_1ABB23D30()
{
  result = qword_1EB4D2AA0;
  if (!qword_1EB4D2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AA0);
  }

  return result;
}

unint64_t sub_1ABB23D88()
{
  result = qword_1EB4D2AA8;
  if (!qword_1EB4D2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AA8);
  }

  return result;
}

unint64_t sub_1ABB23DE0()
{
  result = qword_1EB4D2AB0;
  if (!qword_1EB4D2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AB0);
  }

  return result;
}

unint64_t sub_1ABB23E38()
{
  result = qword_1EB4D2AB8;
  if (!qword_1EB4D2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AB8);
  }

  return result;
}

unint64_t sub_1ABB23E90()
{
  result = qword_1EB4D2AC0;
  if (!qword_1EB4D2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AC0);
  }

  return result;
}

unint64_t sub_1ABB23EE8()
{
  result = qword_1EB4D2AC8;
  if (!qword_1EB4D2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AC8);
  }

  return result;
}

unint64_t sub_1ABB23F40()
{
  result = qword_1EB4D2AD0;
  if (!qword_1EB4D2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AD0);
  }

  return result;
}

unint64_t sub_1ABB23F98()
{
  result = qword_1EB4D2AD8;
  if (!qword_1EB4D2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AD8);
  }

  return result;
}

unint64_t sub_1ABB23FF0()
{
  result = qword_1EB4D2AE0;
  if (!qword_1EB4D2AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AE0);
  }

  return result;
}

unint64_t sub_1ABB24048()
{
  result = qword_1EB4D2AE8;
  if (!qword_1EB4D2AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AE8);
  }

  return result;
}

unint64_t sub_1ABB240A0()
{
  result = qword_1EB4D2AF0;
  if (!qword_1EB4D2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AF0);
  }

  return result;
}

unint64_t sub_1ABB240F8()
{
  result = qword_1EB4D2AF8;
  if (!qword_1EB4D2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AF8);
  }

  return result;
}

unint64_t sub_1ABB24150()
{
  result = qword_1EB4D2B00;
  if (!qword_1EB4D2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2B00);
  }

  return result;
}

unint64_t sub_1ABB241A8()
{
  result = qword_1EB4D2B08;
  if (!qword_1EB4D2B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2B08);
  }

  return result;
}

unint64_t sub_1ABB241FC()
{
  result = qword_1EB4D2B18;
  if (!qword_1EB4D2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2B18);
  }

  return result;
}

uint64_t sub_1ABB24300(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABB243F8()
{
  v1 = *(sub_1ABF21EB4() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1ABB17B20(v0 + v4, v0 + v5, v7, v8);
}

uint64_t sub_1ABB244A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D2BC0, &qword_1ABF39E20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1ABB24510(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABB245C0()
{
  result = qword_1EB4D2BD0;
  if (!qword_1EB4D2BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2BD0);
  }

  return result;
}

unint64_t sub_1ABB24618()
{
  result = qword_1EB4D2BD8;
  if (!qword_1EB4D2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2BD8);
  }

  return result;
}

unint64_t sub_1ABB24670()
{
  result = qword_1EB4D2BE0;
  if (!qword_1EB4D2BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2BE0);
  }

  return result;
}

uint64_t sub_1ABB24730(uint64_t a1)
{

  return sub_1ABF25234();
}

uint64_t sub_1ABB2479C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v4 - 112) = *(v3 + a3);
  *(v4 - 104) = a2;

  return sub_1ABF21DB4();
}

BOOL sub_1ABB247B4()
{

  return os_log_type_enabled(v0, v1);
}

double sub_1ABB247F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = 0;
  v3 = 0.0;
  do
  {
    v4 = *(a1 + 32 + 8 * v2++);
    v3 = v3 + v4;
  }

  while (v1 != v2);
  return v3 / v1;
}

id static BackgroundSystemTaskUtilities.reportSystemWorkload(size:)(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if ([objc_opt_self() reportSystemWorkload:a1 ofCategory:10 error:v3])
  {
    return v3[0];
  }

  v2 = v3[0];
  sub_1ABF21BE4();

  return swift_willThrow();
}

void static BackgroundSystemTaskUtilities.reportFeatureCheckpoint(state:)(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  if ([objc_opt_self() reportFeatureCheckpoint:a1 forFeature:700 error:v12])
  {
    v1 = v12[0];
  }

  else
  {
    v2 = v12[0];
    v3 = sub_1ABF21BE4();

    swift_willThrow();
    if (qword_1ED86B410 != -1)
    {
      swift_once();
    }

    v4 = sub_1ABF237F4();
    sub_1ABA7AA24(v4, qword_1ED86B418);
    v5 = v3;
    v6 = sub_1ABF237D4();
    v7 = sub_1ABF24664();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = v3;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1ABA78000, v6, v7, "BGSystemTaskCheckpoints.report error: %{public}@", v8, 0xCu);
      sub_1ABB24B18(v9);
      MEMORY[0x1AC5AB8B0](v9, -1, -1);
      MEMORY[0x1AC5AB8B0](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1ABB24B18(uint64_t a1)
{
  v2 = sub_1ABAD219C(&unk_1EB4D57F0, &qword_1ABF390C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for BackgroundSystemTaskUtilities(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

BOOL sub_1ABB24C7C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(a1);
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

uint64_t sub_1ABB24D04(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_1ABB25624(a1, a2, &v4, MEMORY[0x1E69E7CD8], sub_1ABAF2844);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t BaseEntityFactObjectProtocol.asFloat.getter()
{
  sub_1ABA80728();
  v1 = v0();
  if (v2)
  {
    v3 = sub_1ABB24DE0(v1, v2);
    v4 = HIDWORD(v3) & 1;
    v5 = v3;
  }

  else
  {
    v5 = 0;
    LOBYTE(v4) = 1;
  }

  return v5 | (v4 << 32);
}

unint64_t sub_1ABB24DE0(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v2 = sub_1ABB25624(a1, a2, &v5, MEMORY[0x1E69E7CE0], sub_1ABB25784);

  v3 = v5;
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | (!v2 << 32);
}

uint64_t BaseEntityFactObjectProtocol.asDouble.getter()
{
  sub_1ABA80728();
  v1 = v0();
  if (v2)
  {
    return sub_1ABB24D04(v1, v2);
  }

  else
  {
    return 0;
  }
}

uint64_t BaseEntityFactObjectProtocol.asBool.getter()
{
  sub_1ABA80728();
  v1 = v0();
  if (!v2)
  {
    return 2;
  }

  v3 = v1;
  v4 = v2;
  v5 = v1 == 1702195828 && v2 == 0xE400000000000000;
  if (v5 || (sub_1ABA7EDF8(), (sub_1ABF25054() & 1) != 0))
  {

    return 1;
  }

  else if (v3 == 0x65736C6166 && v4 == 0xE500000000000000)
  {

    return 0;
  }

  else
  {
    sub_1ABA7EDF8();
    v8 = sub_1ABF25054();

    if (v8)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t BaseEntityFactObjectProtocol.asIntBool.getter()
{
  sub_1ABA80728();
  v1 = v0();
  if (!v2)
  {
    return 2;
  }

  v3 = v1;
  v4 = v2;
  v5 = v1 == 49 && v2 == 0xE100000000000000;
  if (v5 || (sub_1ABA7EDF8(), (sub_1ABF25054() & 1) != 0))
  {

    return 1;
  }

  else if (v3 == 48 && v4 == 0xE100000000000000)
  {

    return 0;
  }

  else
  {
    sub_1ABA7EDF8();
    v8 = sub_1ABF25054();

    if (v8)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t BaseEntityFactObjectProtocol.asDateFromJSON(decodeWith:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a1;
  sub_1ABF21FE4();
  sub_1ABA7BB64();
  v49 = v8;
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v48 = v10 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v47 - v14;
  v15 = sub_1ABAD219C(&qword_1EB4D2BE8, &unk_1ABF5E770);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v47 - v16;
  v18 = sub_1ABF21A74();
  sub_1ABA7BB64();
  v51 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BC58();
  v23 = v22 - v21;
  v24 = sub_1ABF23C54();
  sub_1ABA7BB64();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7BC58();
  v30 = v29 - v28;
  (*(a3 + 24))(a2, a3);
  if (v31)
  {
    v54 = a4;
    sub_1ABF23C44();
    v32 = sub_1ABF23C14();
    v34 = v33;

    (*(v26 + 8))(v30, v24);
    if (v34 >> 60 != 15)
    {
      sub_1ABB255A4();
      sub_1ABF217D4();
      sub_1ABA7B9B4(v17, 0, 1, v18);
      v37 = v51;
      (*(v51 + 32))(v23, v17, v18);
      v38 = v52;
      sub_1ABF21A34();
      v39 = sub_1ABF21EB4();
      sub_1ABA7BDE4(v38);
      if (v40)
      {
        v41 = v48;
        sub_1ABF21FC4();
        v42 = v53;
        sub_1ABF21F94();
        sub_1ABAC9310(v32, v34);
        (*(v49 + 8))(v41, v50);
        (*(v37 + 8))(v23, v18);
        sub_1ABA7BDE4(v38);
        if (!v40)
        {
          sub_1ABA925A4(v38, &qword_1EB4D9BF0, &qword_1ABF34240);
        }
      }

      else
      {
        (*(v37 + 8))(v23, v18);
        sub_1ABAC9310(v32, v34);
        v42 = v53;
        (*(*(v39 - 8) + 32))(v53, v38, v39);
        sub_1ABA7B9B4(v42, 0, 1, v39);
      }

      sub_1ABA7BDE4(v42);
      if (!v40)
      {
        v43 = v54;
        (*(*(v39 - 8) + 32))(v54, v42, v39);
        v44 = v43;
        v45 = 0;
        v46 = v39;
        return sub_1ABA7B9B4(v44, v45, 1, v46);
      }

      sub_1ABA925A4(v42, &qword_1EB4D9BF0, &qword_1ABF34240);
    }

    v46 = sub_1ABF21EB4();
    v44 = v54;
    v45 = 1;
    return sub_1ABA7B9B4(v44, v45, 1, v46);
  }

  v35 = sub_1ABF21EB4();

  return sub_1ABA7B9B4(a4, 1, 1, v35);
}

unint64_t sub_1ABB255A4()
{
  result = qword_1EB4CF760;
  if (!qword_1EB4CF760)
  {
    sub_1ABF21A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF760);
  }

  return result;
}

BOOL sub_1ABB25624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v7 < 0x21 && ((0x100003E01uLL >> v7) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

LABEL_14:
    sub_1ABF24A74();
    if (!v5)
    {
      return v12;
    }

    return v9;
  }

  v11[0] = a1;
  v11[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

  v6 = v11;
LABEL_10:
  v8 = a4(v6, a3);
  if (!v8)
  {
    return 0;
  }

  return *v8 == 0;
}

_BYTE *sub_1ABB25718@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtof_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t BehaviorType.description.getter()
{
  result = 0x6E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      result = 0x636E75614C707041;
      break;
    case 2:
      v2 = 0x746E49707041;
      goto LABEL_21;
    case 3:
      result = 0x6765746143494F50;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 0xE:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x79616C50726143;
      break;
    case 7:
      result = 0x6F4C656369766544;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x656E616C70726941;
      break;
    case 0xA:
      v2 = 0x764569466957;
LABEL_21:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 0xB:
      result = 0x746F6F7465756C42;
      break;
    case 0xC:
      result = 0x676E696772616843;
      break;
    case 0xD:
      result = 0x697463416B6E694CLL;
      break;
    case 0xF:
      result = 0x7469736956494F4CLL;
      break;
    case 0x10:
      result = 0xD000000000000011;
      break;
    case 0x11:
      result = 0xD000000000000017;
      break;
    case 0x12:
      result = 0xD000000000000011;
      break;
    case 0x13:
      result = 0x6369666963657053;
      break;
    case 0x14:
      result = 0x6547657372616F43;
      break;
    case 0x15:
      result = 0x6F6547656772614CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static BehaviorType.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = 0;
  while (1)
  {
    v7 = byte_1F208F008[v6++ + 32];
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E55;
    switch(v7)
    {
      case 1:
        v9 = 0x636E75614C707041;
        v8 = 0xE900000000000068;
        break;
      case 2:
        v12 = 0x746E49707041;
        goto LABEL_24;
      case 3:
        v9 = 0x6765746143494F50;
        v8 = 0xEB0000000079726FLL;
        break;
      case 4:
        v9 = 0xD000000000000010;
        v8 = 0x80000001ABF871F0;
        break;
      case 5:
        v9 = 0xD000000000000015;
        v8 = 0x80000001ABF871D0;
        break;
      case 6:
        v9 = 0x79616C50726143;
        break;
      case 7:
        v9 = 0x6F4C656369766544;
        v11 = 1684368227;
        goto LABEL_19;
      case 8:
        v9 = 0xD000000000000012;
        v8 = 0x80000001ABF871B0;
        break;
      case 9:
        v9 = 0x656E616C70726941;
        v11 = 1701080909;
        goto LABEL_19;
      case 10:
        v12 = 0x764569466957;
LABEL_24:
        v9 = v12 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
        v8 = 0xE900000000000074;
        break;
      case 11:
        v9 = 0x746F6F7465756C42;
        v8 = 0xEE00746E65764568;
        break;
      case 12:
        v9 = 0x676E696772616843;
        v10 = 0x746E657645;
        goto LABEL_16;
      case 13:
        v8 = 0xEA00000000006E6FLL;
        v9 = 0x697463416B6E694CLL;
        break;
      case 14:
        v9 = 0xD000000000000015;
        v8 = 0x80000001ABF87190;
        break;
      case 15:
        v8 = 0xE800000000000000;
        v9 = 0x7469736956494F4CLL;
        break;
      case 16:
        v9 = 0xD000000000000011;
        v8 = 0x80000001ABF87170;
        break;
      case 17:
        v9 = 0xD000000000000017;
        v8 = 0x80000001ABF87150;
        break;
      case 18:
        v9 = 0xD000000000000011;
        v8 = 0x80000001ABF87130;
        break;
      case 19:
        v9 = 0x6369666963657053;
        v8 = 0xEF687361486F6547;
        break;
      case 20:
        v9 = 0x6547657372616F43;
        v10 = 0x687361486FLL;
LABEL_16:
        v8 = v10 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        break;
      case 21:
        v9 = 0x6F6547656772614CLL;
        v11 = 1752392008;
LABEL_19:
        v8 = v11 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      default:
        break;
    }

    if (v9 == a1 && v8 == a2)
    {
      break;
    }

    v14 = sub_1ABF25054();

    if (v14)
    {
      goto LABEL_35;
    }

    if (v6 == 22)
    {
      LOBYTE(v7) = 0;
      goto LABEL_35;
    }
  }

LABEL_35:
  *a3 = v7;
  return result;
}

uint64_t static BehaviorType.featurizedCases.getter()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v2 = byte_1F208F008[v0 + 32];
    if (v2 > 0x15 || ((1 << v2) & 0x380001) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABADDEBC(0, *(v1 + 16) + 1, 1);
      }

      v5 = *(v1 + 16);
      v4 = *(v1 + 24);
      if (v5 >= v4 >> 1)
      {
        sub_1ABADDEBC(v4 > 1, v5 + 1, 1);
      }

      *(v1 + 16) = v5 + 1;
      *(v1 + v5 + 32) = v2;
    }

    ++v0;
  }

  while (v0 != 22);
  return v1;
}

uint64_t static BehaviorType.disabledCasesForDataCollection.getter()
{
  if (qword_1EB4CF668 != -1)
  {
    swift_once();
  }
}

IntelligencePlatform::BehaviorType_optional __swiftcall BehaviorType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 4;
  switch(rawValue)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v2 = 1;
      goto LABEL_11;
    case 2:
      v2 = 2;
      goto LABEL_11;
    case 3:
      v2 = 3;
LABEL_11:
      v3 = v2;
      break;
    case 4:
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    default:
      v3 = 22;
      break;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t sub_1ABB26070@<X0>(uint64_t *a1@<X8>)
{
  result = BehaviorType.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1ABB26160()
{
  result = qword_1EB4D00D0;
  if (!qword_1EB4D00D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D00D0);
  }

  return result;
}

unint64_t sub_1ABB261B8()
{
  result = qword_1EB4D2BF0;
  if (!qword_1EB4D2BF0)
  {
    sub_1ABAE2850(&qword_1EB4D2BF8, &qword_1ABF3A0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2BF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BehaviorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BehaviorType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABB26380()
{
  result = qword_1EB4D2C00;
  if (!qword_1EB4D2C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2C00);
  }

  return result;
}

unint64_t BiomeConsumptionError.description.getter()
{
  v1 = v0[1];
  if (v1 == 2)
  {
    return 0xD000000000000021;
  }

  if (v1 == 1)
  {
    return 0xD00000000000003ALL;
  }

  v3 = *v0;

  sub_1ABF24AB4();

  if (!v1)
  {
    sub_1ABB28D9C(v3, 0);
    v1 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1AC5A9410](v3, v1);

  return 0xD000000000000013;
}

BOOL static BiomeConsumptionError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 == 2)
  {
    if (v5 != 2)
    {
      goto LABEL_10;
    }

    sub_1ABB28D9C(*a1, 2);
    v6 = v4;
    v7 = 2;
    goto LABEL_7;
  }

  if (v3 != 1)
  {
    if ((v5 - 1) < 2)
    {
      goto LABEL_10;
    }

    if (!v3)
    {

      v28 = sub_1ABA7E378();
      sub_1ABB28DB4(v28, v29);
      sub_1ABB28DB4(v2, 0);
      sub_1ABB28D9C(v2, 0);
      v30 = sub_1ABA7E378();
      sub_1ABB28D9C(v30, v31);
      if (v5)
      {
        goto LABEL_12;
      }

      return 1;
    }

    if (!v5)
    {
      sub_1ABB28DB4(*a2, 0);
      v8 = v4;
      v9 = 0;
      goto LABEL_11;
    }

    v17 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v19 = sub_1ABF25054();
      v20 = sub_1ABA7E378();
      sub_1ABB28DB4(v20, v21);
      v22 = sub_1ABA7ABE4();
      sub_1ABB28DB4(v22, v23);
      v24 = sub_1ABA7ABE4();
      sub_1ABB28D9C(v24, v25);
      v26 = sub_1ABA7E378();
      sub_1ABB28D9C(v26, v27);
      return (v19 & 1) != 0;
    }

    sub_1ABB28DB4(v17, v3);
    v32 = sub_1ABA7ABE4();
    sub_1ABB28DB4(v32, v33);
    v34 = sub_1ABA7ABE4();
    sub_1ABB28D9C(v34, v35);
    v6 = sub_1ABA7ABE4();
LABEL_7:
    sub_1ABB28D9C(v6, v7);
    return 1;
  }

  if (v5 != 1)
  {
LABEL_10:
    v8 = sub_1ABA7E378();
LABEL_11:
    sub_1ABB28DB4(v8, v9);
    v10 = sub_1ABA7ABE4();
    sub_1ABB28DB4(v10, v11);
    v12 = sub_1ABA7ABE4();
    sub_1ABB28D9C(v12, v13);
LABEL_12:
    v14 = sub_1ABA7E378();
    sub_1ABB28D9C(v14, v15);
    return 0;
  }

  sub_1ABB28D9C(*a1, 1);
  sub_1ABB28D9C(v4, 1);
  return v5;
}

id sub_1ABB26658()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void BiomeAsyncThrowingPublisher.init(_:bookmark:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  type metadata accessor for BiomeAsyncThrowingPublisher.Inner(0, a3, a3, a5);
  v8 = sub_1ABB26658();
  if (!a2)
  {
    [a1 subscribe_];

    goto LABEL_5;
  }

  v9 = swift_dynamicCastObjCProtocolConditional();
  if (v9)
  {
    v10 = [v9 withBookmark_];
    [v10 subscribe_];
    swift_unknownObjectRelease();

LABEL_5:
    *a4 = v8;
    return;
  }

  sub_1ABB28DE4();
  swift_allocError();
  *v11 = xmmword_1ABF3A1D0;
  swift_willThrow();

  swift_unknownObjectRelease();
}

uint64_t BiomeAsyncThrowingPublisher.next()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1ABB267D8, 0, 0);
}

uint64_t sub_1ABB267D8()
{
  sub_1ABA7BC04();
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = *(v1 + 16);
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = sub_1ABF247E4();
  *v5 = v0;
  v5[1] = sub_1ABB268EC;

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1ABF3A1F0, v3, sub_1ABB28EE0, v4, 0, 0, v6);
}

uint64_t sub_1ABB268EC()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = sub_1ABB26A14;
  }

  else
  {

    v7 = sub_1ABB269F8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1ABB26A14()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABB26A78(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1ABB26B0C;

  return sub_1ABB26C70();
}

uint64_t sub_1ABB26B0C()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D1C8();
  *v6 = v5;
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 32) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1ABB26C40, 0, 0);
}

uint64_t sub_1ABB26C40()
{
  **(v0 + 16) = *(v0 + 32);
  sub_1ABA7BBE0();
  return v1();
}

uint64_t sub_1ABB26C70()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *MEMORY[0x1E69E7D40] & *v0;
  return MEMORY[0x1EEE6DFA0](sub_1ABB26CC8, 0, 0);
}

uint64_t sub_1ABB26CC8()
{
  sub_1ABA7BC04();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  sub_1ABF247E4();
  *v3 = v0;
  v3[1] = sub_1ABB26DBC;

  return sub_1ABB289E8((v0 + 2), 0, 0, sub_1ABB2924C, v2);
}

uint64_t sub_1ABB26DBC()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    v7 = sub_1ABB26EC0;
  }

  else
  {

    v7 = sub_1ABB29254;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1ABB26EC0()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

void sub_1ABB26F1C()
{
  v1 = v0;
  v2 = *(v0 + qword_1EB4D2C78);
  os_unfair_lock_lock(v2);
  v3 = qword_1EB4D2C80;
  swift_beginAccess();
  v4 = *(v1 + v3);
  swift_beginAccess();
  v5 = sub_1ABF247E4();
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  sub_1ABF242D4();
  sub_1ABF241F4();

  sub_1ABF241E4();
  swift_endAccess();
  v6 = v1 + qword_1EB4D2C88;
  v7 = *(v1 + qword_1EB4D2C88);
  v8 = *(v1 + qword_1EB4D2C88 + 8);
  if (v8)
  {
    *v6 = 0;
    *(v6 + 8) = 1;
    sub_1ABB29230(v7, v8);
    os_unfair_lock_unlock(v2);

    v9 = sub_1ABF240E4();

    v18 = v9;
    if (v9 != sub_1ABF24194())
    {
      do
      {
        v11 = sub_1ABF24174();
        sub_1ABF24124();
        if (v11)
        {
          v12 = *(v4 + 32 + 8 * v9);
        }

        else
        {
          v12 = sub_1ABF24B04();
          swift_unknownObjectRelease();
        }

        sub_1ABF241D4();
        v17 = 0;
        sub_1ABB27D98(&v17, v12, v5);
        v13 = sub_1ABF24194();
        v9 = v18;
      }

      while (v18 != v13);
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 8) = 1;
    sub_1ABB28638(v7);
    os_unfair_lock_unlock(v2);
    [v7 cancel];

    v10 = sub_1ABF240E4();

    v18 = v10;
    if (v10 != sub_1ABF24194())
    {
      do
      {
        v14 = sub_1ABF24174();
        sub_1ABF24124();
        if (v14)
        {
          v15 = *(v4 + 32 + 8 * v10);
        }

        else
        {
          v15 = sub_1ABF24B04();
          swift_unknownObjectRelease();
        }

        sub_1ABF241D4();
        v17 = 0;
        sub_1ABB27D98(&v17, v15, v5);
        v16 = sub_1ABF24194();
        v10 = v18;
      }

      while (v18 != v16);
    }

    sub_1ABB29230(v7, 0);
  }
}

id BiomeAsyncThrowingPublisher.makeAsyncIterator()@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_1ABB27294()
{
  v1 = *(v0 + qword_1EB4D2C78);
  os_unfair_lock_lock(v1);
  v2 = (v0 + qword_1EB4D2C88);
  if (!*(v0 + qword_1EB4D2C88 + 8))
  {
    v3 = *v2;
    sub_1ABB28638(*v2);
    sub_1ABB29230(v3, 0);
  }

  v4 = *(v0 + qword_1EB4D2C98);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v1);
  return v4;
}

void sub_1ABB27318(void **a1@<X8>)
{
  BiomeAsyncThrowingPublisher.makeAsyncIterator()(a1);
  v2 = *v1;
}

uint64_t sub_1ABB27344(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1ABB273DC;

  return BiomeAsyncThrowingPublisher.next()(a2);
}

uint64_t sub_1ABB273DC()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D1C8();
  *v6 = v5;
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1ABB274D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1ABB275A8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1ABB275A8()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  sub_1ABA7BBE0();

  return v7();
}

id sub_1ABB27698()
{
  ObjectType = swift_getObjectType();
  MEMORY[0x1AC5AB8B0](*&v0[qword_1EB4D2C78], -1, -1);
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1ABB2771C(uint64_t a1)
{

  sub_1ABB29230(*(a1 + qword_1EB4D2C88), *(a1 + qword_1EB4D2C88 + 8));

  return swift_unknownObjectRelease();
}

uint64_t sub_1ABB27780(uint64_t a1)
{
  v3 = *(v1 + qword_1EB4D2C78);
  os_unfair_lock_lock(v3);
  v4 = qword_1EB4D2C80;
  if (*(v1 + qword_1EB4D2C88 + 8))
  {
    swift_beginAccess();
    v5 = *(v1 + v4);
    swift_beginAccess();
    v6 = sub_1ABF247E4();
    sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
    sub_1ABF242D4();
    sub_1ABF241F4();

    sub_1ABF241E4();
    swift_endAccess();
    os_unfair_lock_unlock(v3);

    v7 = sub_1ABF240E4();

    v29 = v7;
    if (v7 != sub_1ABF24194())
    {
      do
      {
        v14 = sub_1ABF24174();
        sub_1ABF24124();
        if (v14)
        {
          v15 = *(v5 + 32 + 8 * v7);
        }

        else
        {
          v15 = sub_1ABF24B04();
          swift_unknownObjectRelease();
        }

        sub_1ABF241D4();
        v28 = 0;
        sub_1ABB27D98(&v28, v15, v6);
        v16 = sub_1ABF24194();
        v7 = v29;
      }

      while (v29 != v16);
    }

    return *MEMORY[0x1E698F0A0];
  }

  v9 = *(v1 + qword_1EB4D2C88);
  swift_beginAccess();
  v27[0] = *(v1 + v4);
  v10 = sub_1ABF247E4();
  v11 = v9;
  v12 = sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  sub_1ABF242D4();
  sub_1ABF241F4();
  swift_getWitnessTable();
  if ((sub_1ABF24574() & 1) == 0)
  {
    swift_beginAccess();
    swift_getWitnessTable();
    sub_1ABF245E4();
    swift_endAccess();
    v13 = v28;
    os_unfair_lock_unlock(v3);
    sub_1ABAE2BF0(a1, v27);
    if (swift_dynamicCast())
    {
      v27[0] = v28;
      swift_unknownObjectRetain();
      sub_1ABB27D98(v27, v13, v10);
      v8 = *MEMORY[0x1E698F0A0];
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v17 = sub_1ABF237F4();
      sub_1ABA7AA24(v17, qword_1ED871B40);
      v18 = sub_1ABF237D4();
      v19 = sub_1ABF24664();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        sub_1ABB28DE4();
        swift_allocError();
        *v22 = xmmword_1ABF34750;
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v23;
        *v21 = v23;
        _os_log_impl(&dword_1ABA78000, v18, v19, "%@", v20, 0xCu);
        sub_1ABB24B18(v21);
        MEMORY[0x1AC5AB8B0](v21, -1, -1);
        MEMORY[0x1AC5AB8B0](v20, -1, -1);
      }

      sub_1ABB28DE4();
      v24 = swift_allocError();
      *v25 = xmmword_1ABF34750;
      v27[0] = v24;
      sub_1ABB27D04(v27, v13, v10, v12, MEMORY[0x1E69E7288]);
      v8 = *MEMORY[0x1E698F0A0];
    }

    sub_1ABB29230(v9, 0);
    return v8;
  }

  os_unfair_lock_unlock(v3);
  result = sub_1ABF24CD4();
  __break(1u);
  return result;
}

uint64_t sub_1ABB27D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocError();
  (*(*(a4 - 8) + 32))(v9, a1, a4);

  return MEMORY[0x1EEE6DEE8](a2, v8);
}

uint64_t sub_1ABB27D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return MEMORY[0x1EEE6DEE0](a2);
}

uint64_t sub_1ABB27E10(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_1ABF248F4();
  swift_unknownObjectRelease();
  v5 = sub_1ABB27780(v7);

  sub_1ABA84B54(v7);
  return v5;
}

void sub_1ABB27E7C(void *a1)
{
  v3 = *(v1 + qword_1EB4D2C78);
  os_unfair_lock_lock(v3);
  v4 = v1 + qword_1EB4D2C88;
  if (*(v1 + qword_1EB4D2C88 + 8) != 2 || *(v1 + qword_1EB4D2C88) != 0)
  {
    os_unfair_lock_unlock(v3);
    v6 = sel_cancel;
    v7 = a1;

LABEL_7:
    [v7 v6];
    return;
  }

  *v4 = a1;
  *(v4 + 8) = 0;
  v8 = *(v1 + qword_1EB4D2C90);
  v9 = *MEMORY[0x1E698F0A0];
  *(v1 + qword_1EB4D2C90) = *MEMORY[0x1E698F0A0];
  v10 = a1;
  os_unfair_lock_unlock(v3);
  if (v9 < v8)
  {
    v6 = sel_requestDemand_;
    v7 = v10;

    goto LABEL_7;
  }
}

void sub_1ABB27F88(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1ABB27E7C(v4);
}

void sub_1ABB27FF0(void *a1)
{
  v3 = *(v1 + qword_1EB4D2C78);
  os_unfair_lock_lock(v3);
  v4 = v1 + qword_1EB4D2C88;
  v5 = qword_1EB4D2C80;
  if (*(v1 + qword_1EB4D2C88 + 8) == 1)
  {
    swift_beginAccess();
    v6 = *(v1 + v5);
    swift_beginAccess();
    v7 = sub_1ABF247E4();
    sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
    sub_1ABF242D4();
    sub_1ABF241F4();

    sub_1ABF241E4();
    swift_endAccess();
    os_unfair_lock_unlock(v3);

    v8 = sub_1ABF240E4();

    v39[0] = v8;
    if (v8 != sub_1ABF24194())
    {
      do
      {
        v16 = sub_1ABF24174();
        sub_1ABF24124();
        if (v16)
        {
          v17 = *(v6 + 32 + 8 * v8);
        }

        else
        {
          v17 = sub_1ABF24B04();
          swift_unknownObjectRelease();
        }

        sub_1ABF241D4();
        v38 = 0;
        sub_1ABB27D98(&v38, v17, v7);
        v18 = sub_1ABF24194();
        v8 = v39[0];
      }

      while (v39[0] != v18);
    }

LABEL_27:

    return;
  }

  swift_beginAccess();
  v39[0] = *(v1 + v5);
  v9 = sub_1ABF247E4();
  v10 = sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  sub_1ABF242D4();
  sub_1ABF241F4();
  swift_getWitnessTable();
  if ((sub_1ABF24574() & 1) == 0)
  {
    v37 = a1;
    v19 = *(v4 + 8);
    if (!v19)
    {
      v20 = *v4;
      sub_1ABB28638(*v4);
      sub_1ABB29230(v20, 0);
      v19 = *(v4 + 8);
    }

    v21 = *v4;
    *v4 = 0;
    *(v4 + 8) = 1;
    sub_1ABB29230(v21, v19);
    swift_beginAccess();
    swift_getWitnessTable();
    sub_1ABF245E4();
    swift_endAccess();
    v22 = v38;
    v23 = *(v1 + v5);
    swift_beginAccess();

    sub_1ABF241E4();
    swift_endAccess();
    os_unfair_lock_unlock(v3);
    v24 = [v37 state];
    if (v24 == 1)
    {
      v25 = [v37 error];
      if (v25)
      {
        v26 = v25;
        swift_getErrorValue();
        v27 = sub_1ABF25154();
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      sub_1ABB28DE4();
      v31 = swift_allocError();
      *v32 = v27;
      v32[1] = v29;
      v39[0] = v31;
      sub_1ABB27D04(v39, v22, v9, v10, MEMORY[0x1E69E7288]);
    }

    else
    {
      if (v24)
      {
        goto LABEL_33;
      }

      v39[0] = 0;
      sub_1ABB27D98(v39, v38, v9);
    }

    v33 = sub_1ABF240E4();

    v39[0] = v33;
    if (v33 != sub_1ABF24194())
    {
      do
      {
        v34 = sub_1ABF24174();
        sub_1ABF24124();
        if (v34)
        {
          v35 = *(v23 + 32 + 8 * v33);
        }

        else
        {
          v35 = sub_1ABF24B04();
          swift_unknownObjectRelease();
        }

        sub_1ABF241D4();
        v38 = 0;
        sub_1ABB27D98(&v38, v35, v9);
        v36 = sub_1ABF24194();
        v33 = v39[0];
      }

      while (v39[0] != v36);
    }

    goto LABEL_27;
  }

  v11 = [a1 state];
  if (v11 == 1)
  {
    v12 = [a1 error];
    v13 = *v4;
    *v4 = v12;
    v14 = *(v4 + 8);
    *(v4 + 8) = 1;
    v15 = v13;
LABEL_21:
    sub_1ABB29230(v15, v14);
    os_unfair_lock_unlock(v3);
    return;
  }

  if (!v11)
  {
    v14 = *(v4 + 8);
    if (!v14)
    {
      v30 = *v4;
      sub_1ABB28638(*v4);
      sub_1ABB29230(v30, 0);
      v14 = *(v4 + 8);
    }

    v15 = *v4;
    *v4 = 0;
    *(v4 + 8) = 1;
    goto LABEL_21;
  }

LABEL_33:
  sub_1ABF24CD4();
  __break(1u);
}

void *sub_1ABB28638(uint64_t a1)
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v3 = [result newBookmark];
    *(v1 + qword_1EB4D2C98) = v3;
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1ABB28694(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1ABB27FF0(v4);
}

void sub_1ABB286FC(void *a1)
{
  v1 = a1;
  sub_1ABB26F1C();
}

void sub_1ABB28744(uint64_t a1, void *a2)
{
  v4 = *(a2 + qword_1EB4D2C78);
  os_unfair_lock_lock(v4);
  v5 = a2 + qword_1EB4D2C88;
  v6 = *(a2 + qword_1EB4D2C88);
  if (*(a2 + qword_1EB4D2C88 + 8))
  {
    if (*(a2 + qword_1EB4D2C88 + 8) == 1)
    {
      *v5 = 0;
      v5[8] = 1;
      os_unfair_lock_unlock(v4);
      if (v6)
      {
        v14[0] = v6;
        v7 = sub_1ABF247E4();
        v8 = sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        sub_1ABB27D04(v14, a1, v7, v8, MEMORY[0x1E69E7288]);
      }

      else
      {
        v14[0] = 0;
        v13 = sub_1ABF247E4();
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        sub_1ABB27D98(v14, a1, v13);
      }
    }

    else
    {
      v15 = a1;
      swift_beginAccess();
      sub_1ABF247E4();
      sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
      sub_1ABF242D4();
      sub_1ABF241F4();
      sub_1ABF241A4();
      swift_endAccess();
      v10 = *(a2 + qword_1EB4D2C90);
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        *(a2 + qword_1EB4D2C90) = v12;
        os_unfair_lock_unlock(v4);
      }
    }
  }

  else
  {
    v15 = a1;
    swift_beginAccess();
    sub_1ABF247E4();
    v9 = v6;
    sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
    sub_1ABF242D4();
    sub_1ABF241F4();
    sub_1ABF241A4();
    swift_endAccess();
    os_unfair_lock_unlock(v4);
    [v9 requestDemand_];
    sub_1ABB29230(v6, 0);
  }
}