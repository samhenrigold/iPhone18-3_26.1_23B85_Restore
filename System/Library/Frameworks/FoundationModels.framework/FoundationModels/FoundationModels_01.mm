void *sub_238820F64()
{
  v1 = v0;
  sub_238810E44(&qword_27DF2FBA0, &unk_2388D49B0);
  v2 = *v0;
  v3 = sub_2388D3108();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
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
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v17 << 6;
        sub_238827E14(*(v2 + 56) + (v17 << 6), v29, &qword_27DF2FAC8, &unk_2388D4520);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v26 = v29[2];
        v25 = v29[3];
        v27 = v29[1];
        *v24 = v29[0];
        v24[1] = v27;
        v24[2] = v26;
        v24[3] = v25;
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

        v1 = v28;
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

  return result;
}

void *sub_238821120()
{
  v1 = v0;
  sub_238810E44(&qword_27DF2FB98, &qword_2388D49A8);
  v2 = *v0;
  v3 = sub_2388D3108();
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
        v18 = 32 * v17;
        v19 = *(v2 + 48) + 32 * v17;
        v21 = *(v19 + 16);
        v20 = *(v19 + 24);
        v17 *= 16;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = *(v4 + 48) + v18;
        *v25 = *v19;
        *(v25 + 16) = v21;
        *(v25 + 24) = v20;
        v26 = (*(v4 + 56) + v17);
        *v26 = v23;
        v26[1] = v24;
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

void *sub_2388212A4()
{
  v1 = v0;
  sub_238810E44(&qword_27DF2FB18, &qword_2388D4920);
  v2 = *v0;
  v3 = sub_2388D3108();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = sub_238814698(v23, v24, v26);
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

void *sub_23882143C()
{
  v1 = v0;
  sub_238810E44(&qword_27DF2FB38, &unk_2388D4940);
  v2 = *v0;
  v3 = sub_2388D3108();
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
        v18 = (*(v2 + 56) + 48 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        v24 = v18[5];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v25 = (*(v4 + 56) + 48 * v17);
        *v25 = v20;
        v25[1] = v19;
        v25[2] = v21;
        v25[3] = v22;
        v25[4] = v23;
        v25[5] = v24;
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

void *sub_2388215D0()
{
  v1 = v0;
  sub_238810E44(&qword_27DF2FB60, &qword_2388D5CB0);
  v2 = *v0;
  v3 = sub_2388D3108();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_238815814(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_238826B08(v25, *(v4 + 56) + v22);
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

  return result;
}

void *sub_238821778()
{
  sub_238810E44(&qword_27DF2FB58, &unk_2388D4960);
  v30 = v0;
  v1 = *v0;
  v31 = sub_2388D3108();
  v32 = v1;
  if (*(v1 + 16))
  {
    result = (v31 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v31 + 32)) + 63) >> 6;
    if (v31 != v1 || result >= v1 + 64 + 8 * v4)
    {
      result = memmove(result, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v31 + 16) = *(v32 + 16);
    v7 = 1 << *(v32 + 32);
    v8 = *(v32 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = 16 * v15;
        v17 = (*(v32 + 48) + 16 * v15);
        v19 = *v17;
        v18 = v17[1];
        v15 *= 56;
        v20 = (*(v32 + 56) + v15);
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        v24 = v20[3];
        v25 = v20[4];
        v26 = v20[5];
        v27 = v20[6];
        v28 = (*(v31 + 48) + v16);
        *v28 = v19;
        v28[1] = v18;
        v29 = (*(v31 + 56) + v15);
        *v29 = v21;
        v29[1] = v22;
        v29[2] = v23;
        v29[3] = v24;
        v29[4] = v25;
        v29[5] = v26;
        v29[6] = v27;

        result = sub_238827CD8(v23, v24, v25, v26, v27);
      }

      while (v10);
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
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v31;
  }

  return result;
}

void *sub_23882194C()
{
  v1 = v0;
  sub_238810E44(&qword_27DF2FB40, &qword_2388D6A50);
  v2 = *v0;
  v3 = sub_2388D3108();
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

  return result;
}

uint64_t sub_238821AC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_238810E44(&qword_27DF2FB80, &qword_2388D4990);
  v38 = v4;
  result = sub_2388D3118();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
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
      v18 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v41 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      v39 = *(v24 + 17);
      if ((v38 & 1) == 0)
      {

        sub_238814698(v25, v26, v27);
      }

      sub_2388D34A8();
      sub_2388D2938();
      result = sub_2388D34E8();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v41;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      *(v17 + 17) = v39;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v40;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_238821DB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_238810E44(&qword_27DF2FAE0, &qword_2388D4530);
  v44 = v4;
  result = sub_2388D3118();
  v7 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v42 = v5;
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
    v43 = result;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v47 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v49 = *v24;
      v26 = *(v5 + 56) + 40 * v23;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      v46 = *(v26 + 17);
      v30 = *(v26 + 32);
      v45 = *(v26 + 24);
      if ((v44 & 1) == 0)
      {

        sub_238814698(v27, v28, v29);
      }

      v48 = v29;
      v31 = v28;
      v32 = v27;
      sub_2388D34A8();
      sub_2388D2938();
      result = sub_2388D34E8();
      v7 = v43;
      v33 = -1 << *(v43 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v16 = v48;
        v17 = v30;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v16 = v48;
      v17 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v43 + 48) + 16 * v15);
      *v18 = v49;
      v18[1] = v25;
      v19 = *(v43 + 56) + 40 * v15;
      *v19 = v32;
      *(v19 + 8) = v31;
      *(v19 + 16) = v16;
      *(v19 + 17) = v46;
      *(v19 + 24) = v45;
      *(v19 + 32) = v17;
      ++*(v43 + 16);
      v5 = v42;
      v12 = v47;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v47 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2388220E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_238810E44(&qword_27DF2FBA0, &unk_2388D49B0);
  v40 = v4;
  result = sub_2388D3118();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = (*(v5 + 56) + (v24 << 6));
      if (v40)
      {
        v29 = *v28;
        v30 = v28[1];
        v31 = v28[3];
        v43 = v28[2];
        v44 = v31;
        v41 = v29;
        v42 = v30;
      }

      else
      {
        sub_238827E14(v28, &v41, &qword_27DF2FAC8, &unk_2388D4520);
      }

      sub_2388D34A8();
      sub_2388D2938();
      result = sub_2388D34E8();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v26;
      v16[1] = v27;
      v17 = (*(v7 + 56) + (v15 << 6));
      v18 = v41;
      v19 = v42;
      v20 = v44;
      v17[2] = v43;
      v17[3] = v20;
      *v17 = v18;
      v17[1] = v19;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2388223BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_238810E44(&qword_27DF2FB98, &qword_2388D49A8);
  v36 = v4;
  result = sub_2388D3118();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 32 * v21);
      v23 = v22[1];
      v39 = *v22;
      v24 = v22[3];
      v25 = (*(v5 + 56) + 16 * v21);
      v26 = v25[1];
      v37 = *v25;
      v38 = v22[2];
      if ((v36 & 1) == 0)
      {
      }

      sub_2388D34A8();
      sub_2388D27A8();
      result = sub_2388D34E8();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v39;
      v16[1] = v23;
      v16[2] = v38;
      v16[3] = v24;
      v17 = (*(v7 + 56) + 16 * v15);
      *v17 = v37;
      v17[1] = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
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
  return result;
}

uint64_t sub_23882269C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_238810E44(&qword_27DF2FB18, &qword_2388D4920);
  v38 = v4;
  result = sub_2388D3118();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
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
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {

        sub_238814698(v25, v26, v27);
      }

      sub_2388D34A8();
      sub_2388D2938();
      result = sub_2388D34E8();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23882297C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_238810E44(&qword_27DF2FB38, &unk_2388D4940);
  v36 = v4;
  result = sub_2388D3118();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 48 * v20);
      v23 = v22[1];
      v24 = v22[3];
      v38 = v22[2];
      v39 = *v22;
      v25 = v22[5];
      v37 = v22[4];
      if ((v36 & 1) == 0)
      {
      }

      result = sub_2388D3498();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 48 * v15);
      *v16 = v39;
      v16[1] = v23;
      v16[2] = v38;
      v16[3] = v24;
      v16[4] = v37;
      v16[5] = v25;
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

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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
  return result;
}

uint64_t sub_238822C8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_238810E44(a3, a4);
  v36 = v7;
  result = sub_2388D3118();
  v10 = result;
  if (*(v8 + 16))
  {
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
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 40 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_238815814(v27, v38);
      }

      sub_2388D34A8();
      sub_2388D2938();
      result = sub_2388D34E8();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
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
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 40 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
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
  *v6 = v10;
  return result;
}

uint64_t sub_238822F5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_238810E44(&qword_27DF2FB68, &unk_2388D4970);
  v34 = v4;
  result = sub_2388D3118();
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2388D34A8();
      sub_2388D2938();
      result = sub_2388D34E8();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
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

uint64_t sub_238823204(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_238810E44(&qword_27DF2FB58, &unk_2388D4960);
  v46 = v4;
  v6 = sub_2388D3118();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v42 = v2;
    v43 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v44 = v5;
    v45 = v6;
    while (v11)
    {
      v20 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_15:
      v24 = v20 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v50 = *v25;
      v27 = (*(v5 + 56) + 56 * v24);
      v28 = v27[1];
      v48 = *v27;
      v30 = v27[2];
      v29 = v27[3];
      v32 = v27[4];
      v31 = v27[5];
      v33 = v27[6];
      if ((v46 & 1) == 0)
      {

        sub_238827CD8(v30, v29, v32, v31, v33);
      }

      v49 = v31;
      v7 = v45;
      sub_2388D34A8();
      sub_2388D2938();
      result = sub_2388D34E8();
      v34 = -1 << *(v45 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v13 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v16 = v33;
        v15 = v32;
        v17 = v49;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v13 + 8 * v36);
          if (v40 != -1)
          {
            v14 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v35) & ~*(v13 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v16 = v33;
      v15 = v32;
      v17 = v49;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v18 = (*(v45 + 48) + 16 * v14);
      *v18 = v50;
      v18[1] = v26;
      v19 = (*(v45 + 56) + 56 * v14);
      v11 = v47;
      *v19 = v48;
      v19[1] = v28;
      v19[2] = v30;
      v19[3] = v29;
      v19[4] = v15;
      v19[5] = v17;
      v19[6] = v16;
      ++*(v45 + 16);
      v5 = v44;
    }

    v21 = v8;
    result = v43;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v23 = v43[v8];
      ++v21;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_33;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v43, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v43 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_238823530(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_238810E44(&qword_27DF2FB40, &qword_2388D6A50);
  v37 = v4;
  result = sub_2388D3118();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_2388D34A8();
      sub_2388D2938();
      result = sub_2388D34E8();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_2388237F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2388D3368())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2388238A8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    v11 = a1 >> 16;
    v12 = a2 >> 16;
    do
    {
      v13 = (*(v5 + 48) + 32 * v7);
      if (v13[2] == a3 && v13[3] == a4 && *v13 >> 16 == v11 && v13[1] >> 16 == v12)
      {
        break;
      }

      if (sub_2388D32E8())
      {
        break;
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_238823994(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_238823A00(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_238825A0C(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_238823A6C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_238823A6C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2388D32D8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_238810E44(&qword_27DF2FAC8, &unk_2388D4520);
        v5 = sub_2388D2B08();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_238823CA4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_238823B74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_238823B74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + (a3 << 6));
    v6 = result - a3;
LABEL_5:
    v24 = a3;
    v7 = v6;
    v19 = v5;
    while (1)
    {
      sub_238827E14(v5, v22, &qword_27DF2FAC8, &unk_2388D4520);
      v8 = v5 - 4;
      sub_238827E14((v5 - 4), v20, &qword_27DF2FAC8, &unk_2388D4520);
      v9 = v23;
      v10 = v21;
      sub_238827E88(v20, &qword_27DF2FAC8, &unk_2388D4520);
      result = sub_238827E88(v22, &qword_27DF2FAC8, &unk_2388D4520);
      if (v9 >= v10)
      {
LABEL_4:
        a3 = v24 + 1;
        v5 = v19 + 4;
        --v6;
        if (v24 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v12 = v5[2];
      v11 = v5[3];
      v14 = *v5;
      v13 = v5[1];
      v15 = *(v5 - 3);
      *v5 = *v8;
      v5[1] = v15;
      v16 = *(v5 - 1);
      v5[2] = *(v5 - 2);
      v5[3] = v16;
      *v8 = v14;
      *(v5 - 3) = v13;
      v5 -= 4;
      v8[2] = v12;
      v8[3] = v11;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_238823CA4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v97 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_89:
    v8 = *v97;
    if (!*v97)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_238824760(v7);
      v7 = result;
    }

    v108 = v7;
    v90 = *(v7 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = *&v7[16 * v90];
        v92 = *&v7[16 * v90 + 24];
        sub_2388243A4((*a3 + (v91 << 6)), (*a3 + (*&v7[16 * v90 + 16] << 6)), (*a3 + (v92 << 6)), v8);
        if (v4)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_238824760(v7);
        }

        if (v90 - 2 >= *(v7 + 2))
        {
          goto LABEL_115;
        }

        v93 = &v7[16 * v90];
        *v93 = v91;
        *(v93 + 1) = v92;
        v108 = v7;
        result = sub_2388246D4(v90 - 1);
        v7 = v108;
        v90 = *(v108 + 2);
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    if (v6 + 1 >= v5)
    {
      v5 = v6 + 1;
    }

    else
    {
      v9 = *a3;
      sub_238827E14(*a3 + ((v6 + 1) << 6), v106, &qword_27DF2FAC8, &unk_2388D4520);
      sub_238827E14(v9 + (v6 << 6), v104, &qword_27DF2FAC8, &unk_2388D4520);
      v99 = v105;
      v101 = v107;
      sub_238827E88(v104, &qword_27DF2FAC8, &unk_2388D4520);
      result = sub_238827E88(v106, &qword_27DF2FAC8, &unk_2388D4520);
      v10 = v6 + 2;
      v11 = v9 + (v6 << 6) + 128;
      while (v5 != v10)
      {
        sub_238827E14(v11, v106, &qword_27DF2FAC8, &unk_2388D4520);
        sub_238827E14(v11 - 64, v104, &qword_27DF2FAC8, &unk_2388D4520);
        v12 = v107;
        v13 = v105;
        sub_238827E88(v104, &qword_27DF2FAC8, &unk_2388D4520);
        result = sub_238827E88(v106, &qword_27DF2FAC8, &unk_2388D4520);
        ++v10;
        v11 += 64;
        if (v101 < v99 == v12 >= v13)
        {
          v5 = v10 - 1;
          break;
        }
      }

      v8 = v6;
      v14 = v6 << 6;
      if (v101 < v99)
      {
        if (v5 < v6)
        {
          goto LABEL_118;
        }

        if (v6 < v5)
        {
          v15 = (v5 << 6) - 64;
          v16 = v5;
          v17 = v6;
          do
          {
            if (v17 != --v16)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v18 = (v27 + v14);
              v19 = (v27 + v15);
              v21 = v18[2];
              v20 = v18[3];
              v23 = *v18;
              v22 = v18[1];
              v24 = v19[3];
              v26 = *v19;
              v25 = v19[1];
              v18[2] = v19[2];
              v18[3] = v24;
              *v18 = v26;
              v18[1] = v25;
              *v19 = v23;
              v19[1] = v22;
              v19[2] = v21;
              v19[3] = v20;
            }

            ++v17;
            v15 -= 64;
            v14 += 64;
          }

          while (v17 < v16);
        }
      }
    }

    v28 = a3[1];
    if (v5 < v28)
    {
      if (__OFSUB__(v5, v8))
      {
        goto LABEL_117;
      }

      if (v5 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_119;
        }

        if (v8 + a4 >= v28)
        {
          v29 = a3[1];
        }

        else
        {
          v29 = v8 + a4;
        }

        if (v29 < v8)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v5 != v29)
        {
          break;
        }
      }
    }

    v6 = v5;
    if (v5 < v8)
    {
      goto LABEL_116;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_238824774(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v31 = *(v7 + 2);
    v30 = *(v7 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_238824774((v30 > 1), v31 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v32;
    v33 = &v7[16 * v31];
    *(v33 + 4) = v8;
    *(v33 + 5) = v6;
    v34 = *v97;
    if (!*v97)
    {
      goto LABEL_126;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v7 + 4);
          v37 = *(v7 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_48:
          if (v39)
          {
            goto LABEL_105;
          }

          v52 = &v7[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_108;
          }

          v58 = &v7[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_112;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v62 = &v7[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_62:
        if (v57)
        {
          goto LABEL_107;
        }

        v65 = &v7[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_110;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_69:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v74 = *&v7[16 * v73 + 32];
        v8 = *&v7[16 * v35 + 40];
        sub_2388243A4((*a3 + (v74 << 6)), (*a3 + (*&v7[16 * v35 + 32] << 6)), (*a3 + (v8 << 6)), v34);
        if (v4)
        {
        }

        if (v8 < v74)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_238824760(v7);
        }

        if (v73 >= *(v7 + 2))
        {
          goto LABEL_102;
        }

        v75 = &v7[16 * v73];
        *(v75 + 4) = v74;
        *(v75 + 5) = v8;
        v108 = v7;
        result = sub_2388246D4(v35);
        v7 = v108;
        v32 = *(v108 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v7[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_103;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_104;
      }

      v47 = &v7[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_106;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_109;
      }

      if (v51 >= v43)
      {
        v69 = &v7[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_113;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_89;
    }
  }

  v94 = v7;
  v96 = v8;
  v76 = *a3;
  v77 = (*a3 + (v5 << 6));
  v78 = (v8 - v5);
  v98 = v29;
LABEL_80:
  v100 = v77;
  v102 = v5;
  v79 = v78;
  while (1)
  {
    sub_238827E14(v77, v106, &qword_27DF2FAC8, &unk_2388D4520);
    v80 = v77 - 4;
    sub_238827E14((v77 - 4), v104, &qword_27DF2FAC8, &unk_2388D4520);
    v81 = v107;
    v82 = v105;
    sub_238827E88(v104, &qword_27DF2FAC8, &unk_2388D4520);
    result = sub_238827E88(v106, &qword_27DF2FAC8, &unk_2388D4520);
    if (v81 >= v82)
    {
LABEL_79:
      ++v5;
      v77 = v100 + 4;
      --v78;
      v6 = v98;
      if (v102 + 1 != v98)
      {
        goto LABEL_80;
      }

      v8 = v96;
      v7 = v94;
      if (v98 < v96)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v76)
    {
      break;
    }

    v84 = v77[2];
    v83 = v77[3];
    v86 = *v77;
    v85 = v77[1];
    v87 = *(v77 - 3);
    *v77 = *v80;
    v77[1] = v87;
    v88 = *(v77 - 1);
    v77[2] = *(v77 - 2);
    v77[3] = v88;
    *v80 = v86;
    *(v77 - 3) = v85;
    v77 -= 4;
    v80[2] = v84;
    v80[3] = v83;
    if (__CFADD__(v79++, 1))
    {
      goto LABEL_79;
    }
  }

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
  return result;
}

uint64_t sub_2388243A4(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 63;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 6;
  v11 = a3 - a2;
  v12 = a3 - a2 + 63;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 6;
  if (v10 >= v12 >> 6)
  {
    if (a4 != a2 || &a2[64 * v13] <= a4)
    {
      memmove(a4, a2, v13 << 6);
    }

    v14 = &v4[64 * v13];
    if (v11 < 64 || v6 <= v7)
    {
      v22 = v6;
    }

    else
    {
      v38 = v7;
      v39 = v4;
      do
      {
        v23 = (v6 - 64);
        v24 = v14 - 64;
        v5 -= 64;
        while (1)
        {
          v27 = v24 + 64;
          v28 = v5 + 64;
          sub_238827E14(v24, v42, &qword_27DF2FAC8, &unk_2388D4520);
          v29 = v23;
          sub_238827E14(v23, v40, &qword_27DF2FAC8, &unk_2388D4520);
          v44 = v43;
          v30 = v41;
          sub_238827E88(v40, &qword_27DF2FAC8, &unk_2388D4520);
          sub_238827E88(v42, &qword_27DF2FAC8, &unk_2388D4520);
          if (v44 < v30)
          {
            break;
          }

          if (v28 != v27)
          {
            v31 = *v24;
            v32 = *(v24 + 1);
            v33 = *(v24 + 3);
            *(v5 + 2) = *(v24 + 2);
            *(v5 + 3) = v33;
            *v5 = v31;
            *(v5 + 1) = v32;
          }

          v25 = v24 - 64;
          v5 -= 64;
          v26 = v24 > v39;
          v24 -= 64;
          v23 = v29;
          if (!v26)
          {
            v14 = v25 + 64;
            v22 = v6;
            v4 = v39;
            goto LABEL_38;
          }
        }

        v22 = v29;
        if (v28 != v6)
        {
          v34 = *v29;
          v35 = *(v29 + 1);
          v36 = *(v29 + 3);
          *(v5 + 2) = *(v29 + 2);
          *(v5 + 3) = v36;
          *v5 = v34;
          *(v5 + 1) = v35;
        }

        v4 = v39;
        if (v27 <= v39)
        {
          break;
        }

        v14 = v24 + 64;
        v6 = v22;
      }

      while (v22 > v38);
      v14 = v24 + 64;
    }
  }

  else
  {
    if (a4 != __src || &__src[64 * v10] <= a4)
    {
      memmove(a4, __src, v10 << 6);
    }

    v14 = &v4[64 * v10];
    if (v8 >= 64 && v6 < v5)
    {
      while (1)
      {
        sub_238827E14(v6, v42, &qword_27DF2FAC8, &unk_2388D4520);
        sub_238827E14(v4, v40, &qword_27DF2FAC8, &unk_2388D4520);
        v15 = v43;
        v16 = v41;
        sub_238827E88(v40, &qword_27DF2FAC8, &unk_2388D4520);
        sub_238827E88(v42, &qword_27DF2FAC8, &unk_2388D4520);
        if (v15 >= v16)
        {
          break;
        }

        v17 = v6;
        v18 = v7 == v6;
        v6 += 64;
        if (!v18)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 += 64;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_19;
        }
      }

      v17 = v4;
      v18 = v7 == v4;
      v4 += 64;
      if (v18)
      {
        goto LABEL_17;
      }

LABEL_16:
      v19 = *v17;
      v20 = *(v17 + 1);
      v21 = *(v17 + 3);
      *(v7 + 2) = *(v17 + 2);
      *(v7 + 3) = v21;
      *v7 = v19;
      *(v7 + 1) = v20;
      goto LABEL_17;
    }

LABEL_19:
    v22 = v7;
  }

LABEL_38:
  if (v22 != v4 || v22 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0])
  {
    memmove(v22, v4, ((v14 - v4) / 64) << 6);
  }

  return 1;
}

uint64_t sub_2388246D4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_238824760(v3);
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

char *sub_238824774(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF2FBA8, &qword_2388DC280);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t *sub_238824878@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_238827100(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_2388D0E58();
      swift_allocObject();
      v8 = sub_2388D0E08();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_2388D0FB8();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

void *sub_238824940@<X0>(void *(*a1)(__int128 *__return_ptr, char *, char *)@<X0>, uint64_t a3@<X8>)
{
  v5 = v3;
  v30 = *MEMORY[0x277D85DE8];
  v9 = *v3;
  v8 = v3[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 == 2)
    {

      sub_238826D50(v9, v8);
      *&v29 = v9;
      *(&v29 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_2388D44B0;
      sub_238826D50(0, 0xC000000000000000);
      sub_2388D0F68();
      v13 = v29;
      result = sub_23882521C(*(v29 + 16), *(v29 + 24), a1, &v25);
      v14 = v25;
      v15 = v26;
      v16 = v27;
      v17 = v28;
      *v3 = v13;
      v3[1] = *(&v13 + 1) | 0x8000000000000000;
      if (v4)
      {
        return result;
      }
    }

    else
    {
      *(&v29 + 7) = 0;
      *&v29 = 0;
      result = a1(&v25, &v29, &v29);
      if (v4)
      {
        return result;
      }

      v14 = v25;
      v15 = v26;
      v16 = v27;
      v17 = v28;
    }

    goto LABEL_20;
  }

  if (!v10)
  {
    sub_238826D50(v9, v8);
    *&v29 = v9;
    WORD4(v29) = v8;
    BYTE10(v29) = BYTE2(v8);
    BYTE11(v29) = BYTE3(v8);
    BYTE12(v29) = BYTE4(v8);
    BYTE13(v29) = BYTE5(v8);
    BYTE14(v29) = BYTE6(v8);
    result = a1(&v25, &v29, &v29 + BYTE6(v8));
    if (v4)
    {
      v12 = DWORD2(v29) | ((WORD6(v29) | (BYTE14(v29) << 16)) << 32);
      *v3 = v29;
      v3[1] = v12;
      return result;
    }

    v14 = v25;
    v15 = v26;
    v16 = v27;
    v17 = v28;
    v20 = DWORD2(v29) | ((WORD6(v29) | (BYTE14(v29) << 16)) << 32);
    *v3 = v29;
    v3[1] = v20;
    goto LABEL_20;
  }

  v18 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  sub_238826D50(v9, v8);
  *v3 = xmmword_2388D44B0;
  sub_238826D50(0, 0xC000000000000000);
  v19 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v19 < v9)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (sub_2388D0E18() && __OFSUB__(v9, sub_2388D0E48()))
    {
LABEL_24:
      __break(1u);
    }

    sub_2388D0E58();
    swift_allocObject();
    v21 = sub_2388D0DF8();

    v18 = v21;
  }

  if (v19 < v9)
  {
    __break(1u);
    goto LABEL_23;
  }

  sub_23882521C(v9, v9 >> 32, a1, &v25);
  v15 = v26;
  v16 = v27;
  v23 = v28;
  v24 = v25;

  *v5 = v9;
  v5[1] = v18 | 0x4000000000000000;
  if (v4)
  {
    return result;
  }

  v17 = v23;
  v14 = v24;
LABEL_20:
  *a3 = v14;
  *(a3 + 16) = v15;
  *(a3 + 24) = v16;
  *(a3 + 32) = v17;
  return result;
}

char *sub_238824CF8(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_238826D50(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_238826D50(v7, v6);
    *v4 = xmmword_2388D44B0;
    sub_238826D50(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_2388D0E18() && __OFSUB__(v7, sub_2388D0E48()))
      {
LABEL_26:
        __break(1u);
      }

      sub_2388D0E58();
      swift_allocObject();
      v14 = sub_2388D0DF8();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_2388252E8(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_238826D50(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_2388D44B0;
    sub_238826D50(0, 0xC000000000000000);
    sub_2388D0F68();
    result = sub_2388252E8(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_23882509C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_238827100(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_238827258(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2388272D4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_238825130@<X0>(void *(*a1)(__int128 *__return_ptr, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a2)
  {
    result = a1(&v10, a2, a3 - a2);
    if (!v4)
    {
LABEL_3:
      v7 = v11;
      v8 = v12;
      v9 = v13;
      *a4 = v10;
      *(a4 + 16) = v7;
      *(a4 + 24) = v8;
      *(a4 + 32) = v9;
      return result;
    }
  }

  else
  {
    result = (a1)(&v10, 0, 0, 0, a3);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

void *sub_2388251B0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_23882521C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(__int128 *__return_ptr, char *, char *)@<X2>, uint64_t a4@<X8>)
{
  result = sub_2388D0E18();
  if (!result)
  {
    goto LABEL_12;
  }

  v10 = result;
  result = sub_2388D0E48();
  v11 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = sub_2388D0E38();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  result = a3(&v19, &v10[v11], &v10[v11 + v15]);
  if (!v4)
  {
    v16 = v20;
    v17 = v21;
    v18 = v22;
    *a4 = v19;
    *(a4 + 16) = v16;
    *(a4 + 24) = v17;
    *(a4 + 32) = v18;
  }

  return result;
}

char *sub_2388252E8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_2388D0E18();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_2388D0E48();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_2388D0E38();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void *sub_23882539C(void *result, char *__dst, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = result;
  if (!__dst)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v9 = a3;
  if (!a3)
  {
LABEL_14:
    *v8 = a4;
    v8[1] = a5;
    v8[2] = a6;
    v8[3] = v9;
    return v9;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = *(a6 + 16);
    if (v10)
    {
      v11 = __dst;
      v18 = a5;
      v12 = 0;
      v13 = (a6 + 32);
      v14 = a3 - 1;
      while (v12 < *(a6 + 16))
      {
        v15 = v13[2];
        v16 = v13[4];
        v20[3] = v13[3];
        v20[4] = v16;
        v21 = *(v13 + 10);
        v17 = v13[1];
        v20[0] = *v13;
        v20[1] = v17;
        v20[2] = v15;
        memmove(v11, v13, 0x58uLL);
        if (v14 == v12)
        {
          sub_238827C78(v20, v19);
          goto LABEL_13;
        }

        v11 += 88;
        result = sub_238827C78(v20, v19);
        ++v12;
        v13 = (v13 + 88);
        if (v10 == v12)
        {
          v9 = v10;
LABEL_13:
          a5 = v18;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_16;
    }

    v9 = 0;
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
  return result;
}

void *sub_2388254BC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_11:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = *(a4 + 16);
    if (v7)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      while (v9 < *(a4 + 16))
      {
        v11 = *(type metadata accessor for Transcript.Entry(0) - 8);
        v12 = *(v11 + 72);
        result = sub_238827D40(a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + v12 * v9, v8, type metadata accessor for Transcript.Entry);
        if (v10 == v9)
        {
          goto LABEL_11;
        }

        v8 += v12;
        if (v7 == ++v9)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    v6 = v7;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_2388255D4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_23882572C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_238825884(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_238827E14(*(a4 + 56) + ((v12 << 12) | (v17 << 6)), v23, &qword_27DF2FAC8, &unk_2388D4520);
      v18 = v23[3];
      v20 = v23[0];
      v19 = v23[1];
      v11[2] = v23[2];
      v11[3] = v18;
      *v11 = v20;
      v11[1] = v19;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 4;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_238825A20(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    v11 = 0;
    result = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = result;
    return v11;
  }

  if (!a3)
  {
    result = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v28 = result;
  v29 = a5;
  v11 = 0;
  v12 = a5 >> 14;
  v13 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a4 >> 14;
  v30 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v31 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v32 = v16;
  result = a4;
  v27 = a4;
  v17 = a3 - 1;
  while (1)
  {
    v18 = result >> 14;
    if (result >> 14 == v12)
    {
      goto LABEL_35;
    }

    v19 = result & 0xC;
    v20 = result;
    if (v19 == v14)
    {
      break;
    }

    if (v18 < v15)
    {
      goto LABEL_37;
    }

LABEL_12:
    if (v18 >= v12)
    {
      goto LABEL_37;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      v24 = result;
      v22 = sub_2388D29D8();
      result = v24;
      if (v19 != v14)
      {
        goto LABEL_20;
      }
    }

    else if ((a7 & 0x2000000000000000) != 0)
    {
      v33[0] = a6;
      v33[1] = v31;
      v22 = *(v33 + (v20 >> 16));
      if (v19 != v14)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v21 = v30;
      if ((a6 & 0x1000000000000000) == 0)
      {
        v25 = result;
        v21 = sub_2388D3008();
        result = v25;
      }

      v22 = *(v21 + (v20 >> 16));
      if (v19 != v14)
      {
LABEL_20:
        if ((a7 & 0x1000000000000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_26;
      }
    }

    result = sub_238880F74(result, a6, a7);
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_21:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_28;
    }

LABEL_26:
    if (v32 <= result >> 16)
    {
      goto LABEL_39;
    }

    result = sub_2388D29A8();
LABEL_28:
    *(a2 + v11) = v22;
    if (v17 == v11)
    {
      v11 = a3;
LABEL_35:
      v9 = v28;
      a5 = v29;
      a4 = v27;
      goto LABEL_36;
    }

    if (__OFADD__(++v11, 1))
    {
      goto LABEL_38;
    }
  }

  v23 = result;
  v20 = sub_238880F74(result, a6, a7);
  result = v23;
  v18 = v20 >> 14;
  if (v20 >> 14 >= v15)
  {
    goto LABEL_12;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

double sub_238825C4C@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0.0;
    *a5 = xmmword_2388D44C0;
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v12[0] = a3;
      v12[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      v9 = v12;
    }

    else if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v11 = a5;
      v9 = sub_2388D3008();
      a5 = v11;
    }

    sub_238825CF0(v9, a1, a2, a3, a4, a5);
  }

  return result;
}

uint64_t *sub_238825CF0@<X0>(uint64_t *result@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v7 = result;
  v8 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  v10 = a2 & 0xC;
  v11 = a2;
  if (v10 == 4 << v8)
  {
    v13 = a2;
    v14 = a6;
    v15 = a5;
    v16 = a3;
    result = sub_238880F74(a2, a4, a5);
    a2 = v13;
    a3 = v16;
    a5 = v15;
    a6 = v14;
    v11 = result;
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v12 = (v11 >> 16);
      if (v10 != v9)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a6;
  v18 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(a5) & 0xF;
  }

  if (v18 < v11 >> 16)
  {
    goto LABEL_31;
  }

  v19 = a2;
  v20 = a3;
  v21 = a5;
  result = sub_2388D29C8();
  a5 = v21;
  v12 = result;
  a6 = v17;
  a3 = v20;
  a2 = v19;
  if (v10 == v9)
  {
LABEL_14:
    v22 = a6;
    v23 = a5;
    v24 = a3;
    result = sub_238880F74(a2, a4, a5);
    a3 = v24;
    a5 = v23;
    a6 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v9)
  {
    v25 = a2;
    v26 = a6;
    v27 = a5;
    result = sub_238880F74(a3, a4, a5);
    a2 = v25;
    a5 = v27;
    a6 = v26;
    a3 = result;
    if ((v27 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = ((a3 >> 16) - (a2 >> 16));
    goto LABEL_21;
  }

  v28 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v28 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v28 < a2 >> 16)
  {
    goto LABEL_29;
  }

  if (v28 < a3 >> 16)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v29 = a6;
  result = sub_2388D29C8();
  a6 = v29;
LABEL_21:
  if (__OFADD__(v12, result))
  {
    __break(1u);
    goto LABEL_28;
  }

  v30 = result;
  if ((result + v12) < v12)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v7)
  {
    v31 = v7 + v12;
  }

  else
  {
    v31 = 0;
  }

  return sub_238824878(a6, v31, v30);
}

double sub_238825F08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 2);
  v6 = *(a3 + 3);
  v15 = *a3;
  v16 = v5;
  v17 = v6;
  sub_238825130(sub_238827FF4, a1, a2, &v11);
  v7 = v12;
  v8 = v13;
  result = *&v11;
  v10 = v14;
  *a4 = v11;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v10;
  return result;
}

uint64_t sub_238825F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = sub_238825A20(v9, a1, a2, *a3, a3[1], a3[2], a3[3]);
  v6 = v10;
  v7 = v9[1];
  *a4 = v9[0];
  *(a4 + 16) = v7;
  *(a4 + 32) = v6;
  *(a4 + 40) = v5;
}

uint64_t sub_238826000@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_2388D2FB8();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_238826050(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2388260B0(uint64_t a1, uint64_t (*a2)(_OWORD *, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v52 = MEMORY[0x277D84F90];
  sub_2388B7C54(0, v2, 0);
  v3 = v52;
  v5 = v4 + 64;
  result = sub_2388D2F18();
  if (result < 0 || (v7 = result, result >= 1 << *(v4 + 32)))
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v44 = *(v4 + 36);
    v37 = v4 + 72;
    v38 = v2;
    v8 = 1;
    v39 = v4;
    v40 = v4 + 64;
    while (1)
    {
      v9 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        break;
      }

      if (v44 != *(v4 + 36))
      {
        goto LABEL_29;
      }

      v42 = v8;
      v43 = v3;
      v10 = (*(v4 + 48) + 16 * v7);
      v11 = *v10;
      v12 = v10[1];
      v13 = *(v4 + 56) + 24 * v7;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 17);

      sub_238814698(v14, v15, v16);
      if (v17)
      {
        v18 = 256;
      }

      else
      {
        v18 = 0;
      }

      v19 = a2(v46, v11, v12, v14, v15, v18 | v16);
      v21 = v20;

      v22 = v15;
      v3 = v43;
      result = sub_238810DC4(v14, v22, v16);
      *&v45 = v19;
      *(&v45 + 1) = v21;
      v51 = v47;
      v49 = v46[0];
      v50 = v46[1];
      v48 = v45;
      v52 = v43;
      v24 = *(v43 + 16);
      v23 = *(v43 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_2388B7C54((v23 > 1), v24 + 1, 1);
        v3 = v52;
      }

      *(v3 + 16) = v24 + 1;
      v25 = v3 + 56 * v24;
      v26 = v48;
      v27 = v49;
      v28 = v50;
      *(v25 + 80) = v51;
      *(v25 + 48) = v27;
      *(v25 + 64) = v28;
      *(v25 + 32) = v26;
      v4 = v39;
      v5 = v40;
      v29 = 1 << *(v39 + 32);
      if (v7 >= v29)
      {
        goto LABEL_30;
      }

      v30 = *(v40 + 8 * v9);
      if ((v30 & (1 << v7)) == 0)
      {
        goto LABEL_31;
      }

      if (v44 != *(v39 + 36))
      {
        goto LABEL_32;
      }

      v31 = v30 & (-2 << (v7 & 0x3F));
      if (v31)
      {
        v7 = __clz(__rbit64(v31)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = v9 << 6;
        v33 = v9 + 1;
        v34 = (v37 + 8 * v9);
        while (v33 < (v29 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_238827E7C(v7, v44, 0);
            v7 = __clz(__rbit64(v35)) + v32;
            goto LABEL_22;
          }
        }

        result = sub_238827E7C(v7, v44, 0);
        v7 = v29;
      }

LABEL_22:
      if (v42 == v38)
      {
        return v3;
      }

      if ((v7 & 0x8000000000000000) == 0)
      {
        v8 = v42 + 1;
        if (v7 < 1 << *(v39 + 32))
        {
          continue;
        }
      }

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2388263C4(uint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 65);
    while (1)
    {
      v35 = v3;
      v15 = *(v5 - 33);
      v16 = *(v5 - 25);
      v17 = *(v5 - 17);
      v18 = *(v5 - 9);
      v34 = *v5;
      v19 = *(v5 - 1);
      v20 = *a3;

      sub_238814698(v17, v18, v19);
      v22 = sub_238820AA8(v15, v16);
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      result = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v25 = v21;
      if (v20[3] >= result)
      {
        if ((a2 & 1) == 0)
        {
          result = sub_238820C04();
        }
      }

      else
      {
        sub_238821AC4(result, a2 & 1);
        result = sub_238820AA8(v15, v16);
        if ((v25 & 1) != (v26 & 1))
        {
          goto LABEL_17;
        }

        v22 = result;
      }

      v27 = *a3;
      if (v25)
      {
        v6 = 24 * v22;
        v7 = v27[7] + 24 * v22;
        v8 = *v7;
        v9 = *(v7 + 8);
        v33 = *(v7 + 17);
        v10 = *(v7 + 16);
        sub_238814698(*v7, v9, v10);
        sub_238810DC4(v17, v18, v19);

        v11 = v27[7] + v6;
        v12 = *v11;
        v13 = *(v11 + 8);
        *v11 = v8;
        *(v11 + 8) = v9;
        v14 = *(v11 + 16);
        *(v11 + 16) = v10;
        *(v11 + 17) = v33;
        result = sub_238810DC4(v12, v13, v14);
      }

      else
      {
        v27[(v22 >> 6) + 8] |= 1 << v22;
        v28 = (v27[6] + 16 * v22);
        *v28 = v15;
        v28[1] = v16;
        v29 = v27[7] + 24 * v22;
        *v29 = v17;
        *(v29 + 8) = v18;
        *(v29 + 16) = v19;
        *(v29 + 17) = v34;
        v30 = v27[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_16;
        }

        v27[2] = v32;
      }

      v5 += 40;
      a2 = 1;
      v3 = v35 - 1;
      if (v35 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_2388D3438();
    __break(1u);
  }

  return result;
}

BOOL _s16FoundationModels16GeneratedContentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 17);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a2 + 17);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = sub_23882D4E4(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16));
  result = 0;
  if ((v8 & 1) != 0 && ((v2 ^ v5) & 1) == 0)
  {
    if (v3)
    {
      if (v6)
      {
        return v4 == v7 && v3 == v6 || (sub_2388D3368() & 1) != 0;
      }
    }

    else if (!v6)
    {

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s16FoundationModels16GeneratedContentV4KindO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 == 3)
      {
        sub_238827DA8(*a2, a2[1], 3);
        sub_238827DA8(v2, v3, 3);
        LOBYTE(v7) = sub_238890610(v2, v5);
        sub_238810DC4(v2, v3, 3);
        sub_238810DC4(v5, v6, 3);
        return v7 & 1;
      }
    }

    else
    {
      if (v4 != 4)
      {
        if (v7 != 5 || (v6 | v5) != 0)
        {
          goto LABEL_29;
        }

        sub_238810DC4(*a1, v3, 5);
        v8 = 0;
        v9 = 0;
        v10 = 5;
LABEL_26:
        sub_238810DC4(v8, v9, v10);
        LOBYTE(v7) = 1;
        return v7 & 1;
      }

      if (v7 == 4)
      {
        sub_238827DA8(*a2, a2[1], 4);
        sub_238827DA8(v2, v3, 4);
        if (sub_23881D144(v2, v5))
        {
          LOBYTE(v7) = sub_238890BFC(v3, v6);
          sub_238810DC4(v2, v3, 4);
          sub_238810DC4(v5, v6, 4);
          return v7 & 1;
        }

        sub_238810DC4(v2, v3, 4);
        v12 = v5;
        v13 = v6;
        v14 = 4;
LABEL_30:
        sub_238810DC4(v12, v13, v14);
LABEL_31:
        LOBYTE(v7) = 0;
        return v7 & 1;
      }
    }

LABEL_28:

    goto LABEL_29;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_238810DC4(*a1, v3, 0);
      sub_238810DC4(v5, v6, 0);
      v7 = (v5 ^ v2) ^ 1;
      return v7 & 1;
    }

    goto LABEL_29;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      if (v2 != v5 || v3 != v6)
      {
        LOBYTE(v7) = sub_2388D3368();
        sub_238827DA8(v5, v6, 2);
        sub_238827DA8(v2, v3, 2);
        sub_238810DC4(v2, v3, 2);
        sub_238810DC4(v5, v6, 2);
        return v7 & 1;
      }

      sub_238827DA8(v2, v3, 2);
      sub_238827DA8(v2, v3, 2);
      sub_238810DC4(v2, v3, 2);
      v8 = v2;
      v9 = v3;
      v10 = 2;
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  if (v7 != 1)
  {
LABEL_29:
    sub_238827DA8(v5, v6, v7);
    sub_238810DC4(v2, v3, v4);
    v12 = v5;
    v13 = v6;
    v14 = v7;
    goto LABEL_30;
  }

  sub_238810DC4(*a1, v3, 1);
  sub_238810DC4(v5, v6, 1);
  if (*&v2 != *&v5)
  {
    goto LABEL_31;
  }

  return v7 & 1;
}

uint64_t sub_2388269C4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      if (a6 == 3)
      {
        return sub_23889041C(a1, a4);
      }

      return 0;
    }

    if (a3 == 4)
    {
      if (a6 == 4)
      {
        return sub_23881B740(a1, a4);
      }

      return 0;
    }

    if (a6 == 5 && !(a5 | a4))
    {
      return 1;
    }
  }

  else
  {
    if (!a3)
    {
      if (!a6)
      {
        return (a4 ^ a1 ^ 1) & 1;
      }

      return 0;
    }

    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return *&a1 == *&a4;
      }

      return 0;
    }

    if (a6 == 2)
    {
      if (a1 != a4 || a2 != a5)
      {
        return sub_2388D3368();
      }

      return 1;
    }
  }

  return 0;
}

uint64_t sub_238826AA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationSchema(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238826B08(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_238826B20(void *a1, uint64_t a2)
{
  if (*(a2 + 16) >= a1[2])
  {
    v4 = a1[2];
  }

  else
  {
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    sub_238810E44(&qword_27DF2FB80, &qword_2388D4990);
    v5 = sub_2388D3128();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v7 = v5;

  sub_238820630(a1, a2, 1, &v7);
  return v7;
}

uint64_t sub_238826BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF2FAC8, &unk_2388D4520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_238826C64()
{
  sub_238810DC4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_238826CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FAD0;
  if (!qword_27DF2FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FAD0);
  }

  return result;
}

uint64_t sub_238826D50(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_238826E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {

    sub_238810DC4(a3, a4, a5);
  }
}

unint64_t sub_238826EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FAE8;
  if (!qword_27DF2FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FAE8);
  }

  return result;
}

uint64_t sub_238826F28(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 sub_238826F44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_238826F58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_238826FB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for GenerationOptions.SamplingMode.Kind(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23882703C(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_238827064(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2388270AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_238827100(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_2388271B8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_2388D0E58();
      swift_allocObject();
      sub_2388D0E28();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2388D0FB8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_238827258(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2388D0E58();
  swift_allocObject();
  result = sub_2388D0E08();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2388D0FB8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2388272D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2388D0E58();
  swift_allocObject();
  result = sub_2388D0E08();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_238827358(void *a1)
{
  v3 = sub_238810E44(&qword_27DF2FAF0, &qword_2388D4900);
  MEMORY[0x28223BE20](v3 - 8);
  v19 = sub_238810E44(&qword_27DF2FAF8, &qword_2388D4908);
  MEMORY[0x28223BE20](v19);
  v18 = &v16 - v4;
  sub_238815878(a1, a1[3]);
  sub_2388D3528();
  if (v1)
  {

    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_238827E88(&v20, &qword_27DF2FB00, &qword_2388D4910);
    sub_238815878(a1, a1[3]);
    sub_2388D3518();
    v17 = a1;
    sub_238826B08(&v20, &v23);
    sub_238815878(&v23, v24);
    v6 = sub_2388D3328();
    v5 = MEMORY[0x277D84F90];
    if ((v6 & 1) == 0)
    {
      do
      {
        v7 = sub_238827C28(&v23, v24);
        sub_238826CFC(v7, v8, v9);
        sub_2388D3318();
        v10 = v20;
        v11 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_2388B6F1C(0, *(v5 + 16) + 1, 1, v5);
        }

        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          v5 = sub_2388B6F1C((v12 > 1), v13 + 1, 1, v5);
        }

        *(v5 + 16) = v13 + 1;
        v14 = v5 + 24 * v13;
        *(v14 + 32) = v10;
        *(v14 + 48) = v11;
        sub_238815878(&v23, v24);
      }

      while ((sub_2388D3328() & 1) == 0);
    }

    sub_2388158BC(&v23);
    a1 = v17;
  }

  else
  {
    sub_238826B08(&v20, &v23);
    sub_238815878(&v23, v24);
    if (sub_2388D33B8())
    {
      sub_2388158BC(&v23);
      v5 = 0;
    }

    else
    {
      sub_238815878(&v23, v24);
      v5 = sub_2388D3388() & 1;
      sub_2388158BC(&v23);
    }
  }

  sub_2388158BC(a1);
  return v5;
}

unint64_t sub_238827BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FB10;
  if (!qword_27DF2FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FB10);
  }

  return result;
}

uint64_t sub_238827C28(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_238827CD8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v6)
    {
    }

    sub_238814698(result, a2, a3);
LABEL_9:
  }

  if (v6 == 2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_238827D40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238827DA8(uint64_t result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:

    case 4:

LABEL_6:

    case 3:
      goto LABEL_6;
  }

  return v4;
}

uint64_t sub_238827E14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_238810E44(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_238827E7C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_238827E88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_238810E44(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_238827EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2388251B0(sub_238827FB8, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_238827F50(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_238827FA4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_238826D50(result, a2);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for JSONCompletion.Scope(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_238828020(uint64_t a1, int a2)
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

uint64_t sub_238828068(uint64_t result, int a2, int a3)
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

unint64_t sub_2388280B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FBC8;
  if (!qword_27DF2FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FBC8);
  }

  return result;
}

unint64_t sub_238828110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FBD0;
  if (!qword_27DF2FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FBD0);
  }

  return result;
}

double static GenerationGuide<A>.constant(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a3;
  v5 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v24 = &v24 - v6;
  v7 = sub_238810E44(&qword_27DF2FA30, &qword_2388D44E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for StringGuides(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2388D3F70;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v15 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  v17 = *(v10 + 20);
  v16(v13 + v17, 1, 1, v15);
  *v13 = v14;

  sub_2388150EC(v9, v13 + v17);
  v18 = v24;
  sub_23882847C(v13, v24);
  (*(v11 + 56))(v18, 0, 1, v10);
  type metadata accessor for AnyGenerationGuides(0);
  v19 = swift_allocObject();
  sub_238828538(v18, v19 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v20 = v19 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  *v20 = 0;
  *(v20 + 24) = 256;
  v21 = v19 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *v21 = 0;
  *(v21 + 24) = 256;
  v22 = v19 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  result = 0.0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 1;
  *(v19 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  *v25 = v19;
  return result;
}

uint64_t sub_23882847C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringGuides(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238828500(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238828538(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double static GenerationGuide<A>.anyOf(_:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_238810E44(&qword_27DF2FA30, &qword_2388D44E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for StringGuides(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
  v14 = *(*(v13 - 8) + 56);
  v14(v8, 1, 1, v13);
  v15 = *(v9 + 20);
  v14(&v12[v15], 1, 1, v13);
  *v12 = a1;

  sub_2388150EC(v8, &v12[v15]);
  sub_23882847C(v12, v5);
  (*(v10 + 56))(v5, 0, 1, v9);
  type metadata accessor for AnyGenerationGuides(0);
  v16 = swift_allocObject();
  sub_238828538(v5, v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v17 = v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *v17 = 0;
  *(v17 + 24) = 256;
  v18 = v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *v18 = 0;
  *(v18 + 24) = 256;
  v19 = v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  result = 0.0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 1;
  *(v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  *v22 = v16;
  return result;
}

double static GenerationGuide<A>.pattern<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v27 = a3;
  v4 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_2388D1D18();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = sub_238810E44(&qword_27DF2FA30, &qword_2388D44E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for StringGuides(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  sub_2388D1CF8();
  v18 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
  v19 = *(*(v18 - 8) + 56);
  v19(v13, 0, 1, v18);
  v20 = *(v14 + 20);
  v19(&v17[v20], 1, 1, v18);
  *v17 = 0;
  sub_2388150EC(v13, &v17[v20]);
  sub_23882847C(v17, v6);
  (*(v15 + 56))(v6, 0, 1, v14);
  type metadata accessor for AnyGenerationGuides(0);
  v21 = swift_allocObject();
  sub_238828538(v6, v21 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v22 = v21 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  *v22 = 0;
  *(v22 + 24) = 256;
  v23 = v21 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *v23 = 0;
  *(v23 + 24) = 256;
  v24 = v21 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  result = 0.0;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 1;
  *(v21 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  *v27 = v21;
  return result;
}

double static GenerationGuide<A>.minimum(_:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for StringGuides(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for AnyGenerationGuides(0);
  v8 = swift_allocObject();
  sub_238828538(v6, v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v9 = v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = a1;
  *(v9 + 24) = 1;
  v10 = v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = 0;
  *(v10 + 24) = 256;
  v11 = v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  result = 0.0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 1;
  *(v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  *a2 = v8;
  return result;
}

double static GenerationGuide<A>.maximum(_:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for StringGuides(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for AnyGenerationGuides(0);
  v8 = swift_allocObject();
  sub_238828538(v6, v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v9 = v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *v9 = xmmword_2388D4AB0;
  *(v9 + 16) = a1;
  *(v9 + 24) = 0;
  v10 = v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = 0;
  *(v10 + 24) = 256;
  v11 = v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  result = 0.0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 1;
  *(v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  *a2 = v8;
  return result;
}

double static GenerationGuide<A>.range(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for StringGuides(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for AnyGenerationGuides(0);
  v10 = swift_allocObject();
  sub_238828538(v8, v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v11 = v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *v11 = a1;
  *(v11 + 8) = 0;
  *(v11 + 16) = a2;
  *(v11 + 24) = 0;
  v12 = v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *v12 = 0;
  *(v12 + 24) = 256;
  v13 = v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  result = 0.0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 1;
  *(v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  *a3 = v10;
  return result;
}

double static GenerationGuide<A>.minimum(_:)@<D0>(uint64_t *a1@<X8>, float a2@<S0>)
{
  v4 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for StringGuides(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for AnyGenerationGuides(0);
  v8 = swift_allocObject();
  sub_238828538(v6, v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v9 = v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 24) = 256;
  v10 = v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *v10 = a2;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 1;
  v11 = v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  result = 0.0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 1;
  *(v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  *a1 = v8;
  return result;
}

double static GenerationGuide<A>.maximum(_:)@<D0>(uint64_t *a1@<X8>, float a2@<S0>)
{
  v4 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for StringGuides(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for AnyGenerationGuides(0);
  v8 = swift_allocObject();
  sub_238828538(v6, v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v9 = v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 24) = 256;
  v10 = v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *v10 = xmmword_2388D4AB0;
  *(v10 + 16) = a2;
  *(v10 + 24) = 0;
  v11 = v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  result = 0.0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 1;
  *(v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  *a1 = v8;
  return result;
}

double static GenerationGuide<A>.range(_:)@<D0>(uint64_t *a1@<X8>, float a2@<S0>, float a3@<S1>)
{
  v6 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for StringGuides(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for AnyGenerationGuides(0);
  v10 = swift_allocObject();
  sub_238828538(v8, v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v11 = v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 24) = 256;
  v12 = v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *v12 = a2;
  *(v12 + 8) = 0;
  *(v12 + 16) = a3;
  *(v12 + 24) = 0;
  v13 = v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  result = 0.0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 1;
  *(v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  *a1 = v10;
  return result;
}

double static GenerationGuide<A>.minimum(_:)@<D0>(uint64_t *a4@<X8>)
{
  v5 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_2388D2E48();
  [v8 doubleValue];
  v10 = v9;

  v11 = type metadata accessor for StringGuides(0);
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  type metadata accessor for AnyGenerationGuides(0);
  v12 = swift_allocObject();
  sub_238828538(v7, v12 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v13 = v12 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *v13 = 0;
  *(v13 + 24) = 256;
  v14 = v12 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *v14 = v10;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 1;
  v15 = v12 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  result = 0.0;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 1;
  *(v12 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  *a4 = v12;
  return result;
}

double static GenerationGuide<A>.maximum(_:)@<D0>(uint64_t *a4@<X8>)
{
  v5 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_2388D2E48();
  [v8 doubleValue];
  v10 = v9;

  v11 = type metadata accessor for StringGuides(0);
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  type metadata accessor for AnyGenerationGuides(0);
  v12 = swift_allocObject();
  sub_238828538(v7, v12 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v13 = v12 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *v13 = 0;
  *(v13 + 24) = 256;
  v14 = v12 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *v14 = xmmword_2388D4AB0;
  *(v14 + 16) = v10;
  *(v14 + 24) = 0;
  v15 = v12 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  result = 0.0;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 1;
  *(v12 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  *a4 = v12;
  return result;
}

double static GenerationGuide<A>.range(_:)@<D0>(uint64_t *a2@<X8>)
{
  v3 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_2388D2E48();
  [v6 doubleValue];
  v8 = v7;

  v9 = sub_2388D2E48();
  [v9 doubleValue];
  v11 = v10;

  v12 = type metadata accessor for StringGuides(0);
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  type metadata accessor for AnyGenerationGuides(0);
  v13 = swift_allocObject();
  sub_238828538(v5, v13 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v14 = v13 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = 0;
  *(v14 + 24) = 256;
  v15 = v13 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *v15 = v8;
  *(v15 + 8) = 0;
  *(v15 + 16) = v11;
  *(v15 + 24) = 0;
  v16 = v13 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  result = 0.0;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 1;
  *(v13 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  *a2 = v13;
  return result;
}

double static GenerationGuide<A>.minimum(_:)@<D0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  v4 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for StringGuides(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for AnyGenerationGuides(0);
  v8 = swift_allocObject();
  sub_238828538(v6, v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v9 = v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 24) = 256;
  v10 = v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *v10 = a2;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 1;
  v11 = v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  result = 0.0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 1;
  *(v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  *a1 = v8;
  return result;
}

double static GenerationGuide<A>.maximum(_:)@<D0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  v4 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for StringGuides(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for AnyGenerationGuides(0);
  v8 = swift_allocObject();
  sub_238828538(v6, v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v9 = v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 24) = 256;
  v10 = v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *v10 = xmmword_2388D4AB0;
  *(v10 + 16) = a2;
  *(v10 + 24) = 0;
  v11 = v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  result = 0.0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 1;
  *(v8 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  *a1 = v8;
  return result;
}

double static GenerationGuide<A>.range(_:)@<D0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for StringGuides(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for AnyGenerationGuides(0);
  v10 = swift_allocObject();
  sub_238828538(v8, v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v11 = v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 24) = 256;
  v12 = v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *v12 = a2;
  *(v12 + 8) = 0;
  *(v12 + 16) = a3;
  *(v12 + 24) = 0;
  v13 = v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  result = 0.0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 1;
  *(v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  *a1 = v10;
  return result;
}

uint64_t static GenerationGuide.minimumCount<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for StringGuides(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for AnyGenerationGuides(0);
  v9 = swift_allocObject();
  sub_238828538(v7, v9 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v10 = v9 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = 0;
  *(v10 + 24) = 256;
  v11 = v9 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 24) = 256;
  v12 = v9 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *v12 = a1;
  *(v12 + 24) = xmmword_2388D4AC0;
  *(v9 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  result = sub_2388D2B18();
  *a3 = v9;
  return result;
}

uint64_t static GenerationGuide.maximumCount<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for StringGuides(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for AnyGenerationGuides(0);
  v9 = swift_allocObject();
  sub_238828538(v7, v9 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v10 = v9 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = 0;
  *(v10 + 24) = 256;
  v11 = v9 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 24) = 256;
  v12 = v9 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  *v12 = xmmword_2388D4AB0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = a1;
  *(v9 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  result = sub_2388D2B18();
  *a3 = v9;
  return result;
}

uint64_t static GenerationGuide.count<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for StringGuides(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for AnyGenerationGuides(0);
  v11 = swift_allocObject();
  sub_238828538(v9, v11 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v12 = v11 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *v12 = 0;
  *(v12 + 24) = 256;
  v13 = v11 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *v13 = 0;
  *(v13 + 24) = 256;
  v14 = (v11 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array);
  *v14 = a1;
  v14[1] = 0;
  v14[3] = 0;
  v14[4] = 0;
  v14[2] = a2;
  *(v11 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  result = sub_2388D2B18();
  *a4 = v11;
  return result;
}

uint64_t static GenerationGuide.count<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for StringGuides(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for AnyGenerationGuides(0);
  v9 = swift_allocObject();
  sub_238828538(v7, v9 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v10 = v9 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = 0;
  *(v10 + 24) = 256;
  v11 = v9 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 24) = 256;
  v12 = (v9 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array);
  *v12 = a1;
  v12[1] = 0;
  v12[3] = 0;
  v12[4] = 0;
  v12[2] = a1;
  *(v9 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  result = sub_2388D2B18();
  *a3 = v9;
  return result;
}

uint64_t static GenerationGuide.element<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = *a1;
  v9 = type metadata accessor for StringGuides(0);
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  type metadata accessor for AnyGenerationGuides(0);
  v10 = swift_allocObject();
  sub_238828538(v7, v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v11 = v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 24) = 256;
  v12 = v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *v12 = 0;
  *(v12 + 24) = 256;
  v13 = v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  *v13 = xmmword_2388D4AB0;
  *(v13 + 16) = xmmword_2388D4AB0;
  *(v13 + 32) = v8;
  *(v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  sub_2388D2B18();
  *a3 = v10;
}

uint64_t sub_23882A370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t *_s15GenerationErrorO7RefusalVwCP(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *_s15GenerationErrorO7RefusalVwca(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *_s15GenerationErrorO7RefusalVwta(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t _s15GenerationErrorO7RefusalVwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t _s15GenerationErrorO7RefusalVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23882A508(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_23882A558(a1, a2);
  return v4;
}

uint64_t *sub_23882A558(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33[-v7];
  v36 = a1;
  v9 = type metadata accessor for StringGuides(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  sub_238828538(v8, v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v11 = v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 24) = 256;
  v12 = v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *v12 = 0;
  *(v12 + 24) = 256;
  v13 = v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 1;
  *(v10 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  v35 = v10;
  v34 = a2;
  type metadata accessor for GenerationGuide(255, a2, v14, v15);
  sub_2388D2B18();
  swift_getWitnessTable();
  sub_2388D2A88();

  v16 = v37;
  sub_238827E14(v37 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string, v3 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string, qword_27DF2FBD8, &unk_2388D4AD0);
  v17 = *(v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer + 16);
  v18 = *(v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer + 24);
  v19 = *(v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer + 25);
  v20 = v3 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *v20 = *(v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer);
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  *(v20 + 25) = v19;
  v21 = *(v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double + 16);
  v22 = *(v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double + 24);
  v23 = *(v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double + 25);
  v24 = v3 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *v24 = *(v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double);
  *(v24 + 16) = v21;
  *(v24 + 24) = v22;
  *(v24 + 25) = v23;
  v25 = *(v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array);
  v26 = *(v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 8);
  v27 = *(v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 16);
  v28 = *(v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 24);
  v29 = *(v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 32);
  v30 = (v3 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array);
  *v30 = v25;
  v30[1] = v26;
  v30[2] = v27;
  v30[3] = v28;
  v30[4] = v29;
  v31 = *(v16 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary);
  sub_23882BB28(v25, v26, v27, v28, v29);
  sub_23882BB18(v31);

  *(v3 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = v31;
  return v3;
}

uint64_t sub_23882A884(uint64_t a1)
{
  v2 = v1;
  v80 = *v1;
  v4 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v66 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v66 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v66 - v14;
  sub_238827E14(v2 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string, v10, qword_27DF2FBD8, &unk_2388D4AD0);
  v16 = type metadata accessor for StringGuides(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v10, 1, v16) == 1)
  {
    sub_238827E88(v10, qword_27DF2FBD8, &unk_2388D4AD0);
    v19 = *(v17 + 56);
    v19(v13, 1, 1, v16);
    if (a1)
    {
      sub_238827E14(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string, v15, qword_27DF2FBD8, &unk_2388D4AD0);
    }

    else
    {
      v19(v15, 1, 1, v16);
    }

    if (v18(v13, 1, v16) != 1)
    {
      sub_238827E88(v13, qword_27DF2FBD8, &unk_2388D4AD0);
    }
  }

  else
  {
    if (a1)
    {
      sub_238827E14(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string, v7, qword_27DF2FBD8, &unk_2388D4AD0);
    }

    else
    {
      (*(v17 + 56))(v7, 1, 1, v16);
    }

    sub_23882B02C(v7, v13);
    sub_238827E88(v7, qword_27DF2FBD8, &unk_2388D4AD0);
    sub_23882BB3C(v10);
    v20 = *(v17 + 56);
    v20(v13, 0, 1, v16);
    sub_23882847C(v13, v15);
    v20(v15, 0, 1, v16);
  }

  v21 = v2 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  if ((*(v2 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer + 25) & 1) == 0)
  {
    v22 = *v21;
    v23 = *(v21 + 2);
    v25 = v21[24];
    v26 = *(v21 + 2);
    if (a1)
    {
      v27 = (a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer);
      if ((*(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer + 25) & 1) == 0)
      {
        v28 = *(v27 + 2);
        if ((v28 & 1) == 0)
        {
          v22 = *v27;
        }

        LOBYTE(v26) = v28 & v26;
        if ((v27[3] & 1) == 0)
        {
          v25 = 0;
          v23 = v27[2];
        }
      }
    }

    v78 = v26 & 1;
    LODWORD(v77) = 0;
    HIDWORD(v77) = v25 & 1;
    goto LABEL_21;
  }

  if (a1)
  {
    v22 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer);
    v78 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer + 8);
    v23 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer + 16);
    v24 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer + 24);
    LODWORD(v77) = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer + 25);
    HIDWORD(v77) = v24;
LABEL_21:
    v29 = v2 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
    if (*(v2 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double + 25))
    {
      if (a1)
      {
        v30 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double);
        v74 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double + 8);
        v31 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double + 16);
        v73 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double + 24);
        v32 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double + 25);
      }

      else
      {
        v30 = 0;
        v74 = 0;
        v31 = 0;
        v73 = 0;
        v32 = 1;
      }

      goto LABEL_33;
    }

    v30 = *v29;
    v31 = *(v29 + 2);
    v33 = v29[24];
    v34 = *(v29 + 2);
    if (a1)
    {
      v35 = (a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double);
      if ((*(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double + 25) & 1) == 0)
      {
        v36 = *(v35 + 2);
        if ((v36 & 1) == 0)
        {
          v30 = *v35;
        }

        LOBYTE(v34) = v36 & v34;
        if ((v35[3] & 1) == 0)
        {
          v33 = 0;
          v31 = v35[2];
        }
      }
    }

    goto LABEL_35;
  }

  v37 = v2 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  if (*(v2 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double + 25))
  {
    v23 = 0;
    v78 = 0;
    v22 = 0;
    v30 = 0;
    v74 = 0;
    v31 = 0;
    v73 = 0;
    v32 = 1;
    v77 = 1;
LABEL_33:
    v38 = &v91;
    goto LABEL_36;
  }

  v22 = 0;
  v78 = 0;
  v23 = 0;
  v31 = *(v37 + 2);
  v30 = *v37;
  v34 = *(v37 + 2);
  v77 = 1;
  v33 = v37[24];
LABEL_35:
  v72 = 0;
  v74 = v34 & 1;
  v32 = v33 & 1;
  v38 = &v91 + 4;
LABEL_36:
  *(v38 - 64) = v32;
  v39 = v2 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  v40 = *(v2 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 32);
  v79 = v15;
  v75 = v31;
  v76 = v30;
  if (v40 == 1)
  {
    if (!a1)
    {
      v71 = 0;
      v70 = 0;
      v69 = 0;
      v43 = 0;
      v53 = *(v2 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary);
      v44 = 1;
      v54 = 1;
      v55 = 1;
      if (v53 == 1)
      {
        goto LABEL_60;
      }

      goto LABEL_50;
    }

    v41 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 8);
    v42 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 16);
    v43 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 24);
    v44 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 32);
    v71 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array);
    v70 = v41;
    v69 = v42;
    sub_23882BB28(v71, v41, v42, v43, v44);
  }

  else
  {
    v67 = v23;
    v68 = v22;
    v45 = *(v39 + 6);
    v46 = *(v39 + 2);
    v47 = *(v39 + 2);
    v86[5] = *v39;
    v87 = v47 & 1;
    v88 = v46;
    v89 = v45 & 1;
    v90 = v40;
    if (a1)
    {
      v48 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array);
      v49 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 8);
      v50 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 16);
      v51 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 24);
      v52 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 32);
      sub_23882BB28(v48, v49, v50, v51, v52);
    }

    else
    {
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 1;
    }

    v86[0] = v48;
    v86[1] = v49;
    v86[2] = v50;
    v86[3] = v51;
    v86[4] = v52;
    sub_23882B468(v86, &v81);
    v71 = v81;
    v70 = v82;
    v69 = v83;
    v43 = v84;
    v44 = v85;
    sub_23882BAF4(v48, v49, v50, v51, v52);
    v22 = v68;
    v23 = v67;
  }

  v53 = *(v2 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary);
  if (v53 == 1)
  {
    if (a1)
    {
      v55 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary);
      sub_23882BB18(v55);
    }

    else
    {
      v55 = 1;
    }

    goto LABEL_60;
  }

  if (!a1)
  {
    v54 = 1;
    v56 = 1;
    if (v53)
    {
      goto LABEL_51;
    }

LABEL_57:
    if (v56)
    {
      v55 = 0;
    }

    else
    {
      v55 = v54;
    }

    goto LABEL_60;
  }

  v54 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary);
  sub_23882BB18(v54);
LABEL_50:
  v56 = v54 == 1;
  if (!v53)
  {
    goto LABEL_57;
  }

LABEL_51:
  if (v56)
  {
    v57 = 0;
  }

  else
  {
    v57 = v54;
  }

  v55 = sub_23882A884(v57);
  sub_23882BB08(v54);
LABEL_60:
  v58 = swift_allocObject();
  sub_238828538(v79, v58 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v59 = v58 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  v60 = v78;
  *v59 = v22;
  *(v59 + 8) = v60;
  *(v59 + 16) = v23;
  LOBYTE(v60) = v77;
  *(v59 + 24) = BYTE4(v77);
  *(v59 + 25) = v60;
  v61 = v58 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  v62 = v74;
  *v61 = v76;
  *(v61 + 8) = v62;
  *(v61 + 16) = v75;
  *(v61 + 24) = v73;
  *(v61 + 25) = v72;
  v63 = (v58 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array);
  v64 = v70;
  *v63 = v71;
  v63[1] = v64;
  v63[2] = v69;
  v63[3] = v43;
  v63[4] = v44;
  *(v58 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = v55;
  return v58;
}

uint64_t sub_23882B02C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v28 = a2;
  v4 = sub_238810E44(&qword_27DF2FA30, &qword_2388D44E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v27 - v14);
  sub_238827E14(a1, &v27 - v14, qword_27DF2FBD8, &unk_2388D4AD0);
  v16 = type metadata accessor for StringGuides(0);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v15, 1, v16) == 1)
  {
    sub_238827E88(v15, qword_27DF2FBD8, &unk_2388D4AD0);
  }

  else
  {
    v18 = *v15;

    sub_23882BB3C(v15);
    if (v18)
    {
      goto LABEL_5;
    }
  }

  v18 = *v2;

LABEL_5:
  sub_238827E14(a1, v13, qword_27DF2FBD8, &unk_2388D4AD0);
  if (v17(v13, 1, v16) == 1)
  {
    sub_238827E88(v13, qword_27DF2FBD8, &unk_2388D4AD0);
    v19 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  }

  else
  {
    sub_238827E14(&v13[*(v16 + 20)], v7, &qword_27DF2FA30, &qword_2388D44E0);
    sub_23882BB3C(v13);
    v20 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v7, 1, v20) != 1)
    {
      (*(v21 + 32))(v9, v7, v20);
      (*(v21 + 56))(v9, 0, 1, v20);
      goto LABEL_11;
    }
  }

  sub_238827E14(v2 + *(v16 + 20), v9, &qword_27DF2FA30, &qword_2388D44E0);
  v22 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
  if ((*(*(v22 - 8) + 48))(v7, 1, v22) != 1)
  {
    sub_238827E88(v7, &qword_27DF2FA30, &qword_2388D44E0);
  }

LABEL_11:
  v23 = *(v16 + 20);
  v24 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
  v25 = v28;
  (*(*(v24 - 8) + 56))(v28 + v23, 1, 1, v24);
  *v25 = v18;
  return sub_2388150EC(v9, v25 + v23);
}

uint64_t sub_23882B468@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  if (v4 == 1)
  {
    v5 = *v2;
    v6 = *(v2 + 8);
    goto LABEL_11;
  }

  v7 = a1[3];
  if (a1[1])
  {
    v6 = *(v2 + 8);
    v5 = *v2;
    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v9 = v2[2];
    v8 = *(v2 + 24);
    if (v2[4])
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v6 = 0;
  v5 = *a1;
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_5:
  v8 = 0;
  v9 = a1[2];
  if (v2[4])
  {
LABEL_12:
    if (v4 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = a1[4];
    }

    result = sub_23882A884(v12);
    v10 = result;
    goto LABEL_16;
  }

LABEL_6:
  if (v4 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = a1[4];
  }

  result = sub_238827E14(a1, v13, &qword_27DF2FC98, qword_2388D4C70);
LABEL_16:
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v9;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_23882B54C()
{
  sub_238827E88(v0 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string, qword_27DF2FBD8, &unk_2388D4AD0);
  sub_23882BAF4(*(v0 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array), *(v0 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 8), *(v0 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 16), *(v0 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 24), *(v0 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 32));
  sub_23882BB08(*(v0 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary));

  return swift_deallocClassInstance();
}

void sub_23882B5F4(uint64_t a1)
{
  sub_23882B6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23882B6A4(uint64_t a1)
{
  if (!qword_27DF2FC70)
  {
    type metadata accessor for StringGuides(255);
    v1 = sub_2388D2E78();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF2FC70);
    }
  }
}

uint64_t sub_23882B6FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23882B758(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_23882B7C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_23882B7DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23882B7FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_23882B860(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_238810E44(&qword_27DF2FA30, &qword_2388D44E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_23882B93C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_238810E44(&qword_27DF2FA30, &qword_2388D44E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23882B9EC(uint64_t a1)
{
  sub_23882BAA0(319, &qword_27DF2FC88, &qword_27DF2FBB8, &unk_2388D5410);
  if (v1 <= 0x3F)
  {
    sub_23882BAA0(319, &qword_27DF2FC90, &qword_27DF2FA40, &unk_2388D4500);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23882BAA0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_238810E8C(a3, a4);
    v5 = sub_2388D2E78();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_23882BAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

uint64_t sub_23882BB08(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_23882BB18(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_23882BB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

uint64_t sub_23882BB3C(uint64_t a1)
{
  v2 = type metadata accessor for StringGuides(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23882BB98@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_23882A884(*a1);
  *a2 = result;
  return result;
}

__n128 sub_23882BC10(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_23882BC24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23882BC78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_23882BCCC(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    v50 = result;
    if (a3 == 3)
    {
      v31 = *(result + 16);
      v32 = MEMORY[0x277D84F90];
      if (v31)
      {
        v54 = MEMORY[0x277D84F90];
        v33 = result;

        sub_2388B7E44(0, v31, 0);
        v32 = v54;
        v34 = v33 + 49;
        do
        {
          v35 = *(v34 - 17);
          v36 = *(v34 - 9);
          v37 = *(v34 - 1);
          sub_238814698(v35, v36, v37);
          v38 = sub_23882BCCC(v35, v36, v37);
          v40 = v39;
          v42 = v41;
          sub_238810DC4(v35, v36, v37);
          v44 = *(v54 + 16);
          v43 = *(v54 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_2388B7E44((v43 > 1), v44 + 1, 1);
          }

          *(v54 + 16) = v44 + 1;
          v45 = v54 + 24 * v44;
          *(v45 + 32) = v38;
          *(v45 + 40) = v40;
          *(v45 + 48) = v42;
          v34 += 24;
          --v31;
        }

        while (v31);
        sub_238810DC4(v50, a2, 3);
      }

      return v32;
    }

    else if (a3 == 4)
    {
      v3 = result;
      sub_238810E44(&qword_27DF2FB18, &qword_2388D4920);
      v5 = sub_2388D3108();
      v6 = v3 + 64;
      v7 = 1 << *(v3 + 32);
      v8 = -1;
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      v9 = v8 & *(v3 + 64);
      result = sub_238814698(v3, a2, 4);
      v10 = 0;
      v11 = (v7 + 63) >> 6;
      v48 = v5 + 64;
      v49 = v5;
      if (v9)
      {
        while (1)
        {
          v12 = __clz(__rbit64(v9));
          v51 = (v9 - 1) & v9;
LABEL_16:
          v15 = v12 | (v10 << 6);
          v16 = (*(v3 + 48) + 16 * v15);
          v53 = *v16;
          v52 = v16[1];
          v17 = *(v3 + 56) + 24 * v15;
          v18 = *v17;
          v19 = *(v17 + 8);
          v20 = *(v17 + 16);

          sub_238814698(v18, v19, v20);
          v21 = sub_23882BCCC(v18, v19, v20);
          v23 = v22;
          v25 = v24;
          result = sub_238810DC4(v18, v19, v20);
          v5 = v49;
          *(v48 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
          v26 = (v49[6] + 16 * v15);
          *v26 = v53;
          v26[1] = v52;
          v27 = v49[7] + 24 * v15;
          *v27 = v21;
          *(v27 + 8) = v23;
          *(v27 + 16) = v25;
          v28 = v49[2];
          v29 = __OFADD__(v28, 1);
          v30 = v28 + 1;
          if (v29)
          {
            break;
          }

          v49[2] = v30;
          v3 = v50;
          v9 = v51;
          if (!v51)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        v13 = v10;
        while (1)
        {
          v10 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v10 >= v11)
          {

            return v5;
          }

          v14 = *(v6 + 8 * v10);
          ++v13;
          if (v14)
          {
            v12 = __clz(__rbit64(v14));
            v51 = (v14 - 1) & v14;
            goto LABEL_16;
          }
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {
      return 0;
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      v46 = result;

      return v46;
    }
  }

  else
  {
    return result & 1;
  }

  return result;
}

uint64_t sub_23882C064(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        MEMORY[0x23EE67750](2);
        if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v7 = a2;
        }

        else
        {
          v7 = 0;
        }

        return MEMORY[0x23EE67770](v7);
      }

      else
      {
        MEMORY[0x23EE67750](3);

        return sub_2388D2938();
      }
    }

    MEMORY[0x23EE67750](1);
    return sub_2388D34C8();
  }

  if (a4 == 3)
  {
    MEMORY[0x23EE67750](4);

    return sub_23882C46C(a1, a2);
  }

  else
  {
    if (a4 != 4)
    {
      return MEMORY[0x23EE67750](0);
    }

    MEMORY[0x23EE67750](5);
    sub_23882C6D8(a1, a2);
    if (!a3)
    {
      return sub_2388D34C8();
    }

    sub_2388D34C8();
    v9 = *(a3 + 16);
    result = MEMORY[0x23EE67750](v9);
    if (v9)
    {
      v10 = a3 + 40;
      do
      {

        sub_2388D2938();

        v10 += 16;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t sub_23882C1D4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_2388D34A8();
  sub_23882C064(v5, v1, v2, v3);
  return sub_2388D34E8();
}

uint64_t sub_23882C23C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_2388D34A8();
  sub_23882C064(v5, v1, v2, v3);
  return sub_2388D34E8();
}

uint64_t sub_23882C2B0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_2388D34A8();
  sub_23882C064(v5, v1, v2, v3);
  sub_2388D34C8();
  return sub_2388D34E8();
}

uint64_t sub_23882C360()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_2388D34A8();
  sub_23882C064(v5, v1, v2, v3);
  sub_2388D34C8();
  return sub_2388D34E8();
}

uint64_t sub_23882C3C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 17);
  v3 = *(a2 + 17);
  return sub_23882D4E4(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & ~(v2 ^ v3) & 1;
}

unint64_t sub_23882C418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FCA0;
  if (!qword_27DF2FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FCA0);
  }

  return result;
}

uint64_t sub_23882C46C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x23EE67750](v4);
  v15 = v4;
  if (v4)
  {
    v6 = 0;
    v14 = a2 + 32;
    do
    {
      v7 = v14 + 24 * v6;
      v8 = *v7;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          MEMORY[0x23EE67750](4);

          sub_23882C46C(a1, v8);
        }

        else if (v10 == 4)
        {
          MEMORY[0x23EE67750](5);

          sub_23882C6D8(a1, v8);
          if (v9)
          {
            sub_2388D34C8();
            MEMORY[0x23EE67750](*(v9 + 16));
            v12 = *(v9 + 16);
            if (v12)
            {
              v13 = v9 + 40;
              do
              {

                sub_2388D2938();

                v13 += 16;
                --v12;
              }

              while (v12);
            }
          }

          else
          {
            sub_2388D34C8();
          }
        }

        else
        {
          MEMORY[0x23EE67750](0);
        }
      }

      else if (*(v7 + 16))
      {
        if (v10 == 1)
        {
          MEMORY[0x23EE67750](2);
          if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v11 = v8;
          }

          else
          {
            v11 = 0;
          }

          MEMORY[0x23EE67770](v11);
        }

        else
        {
          MEMORY[0x23EE67750](3);

          sub_2388D2938();
        }
      }

      else
      {
        MEMORY[0x23EE67750](1);
        sub_2388D34C8();
      }

      ++v6;
      sub_2388D34C8();
      result = sub_238810DC4(v8, v9, v10);
    }

    while (v6 != v15);
  }

  return result;
}

uint64_t sub_23882C63C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x23EE67750](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *v5;
      v5 += 2;
      if (v6)
      {
        MEMORY[0x23EE67750](0);

        sub_2388D2938();
      }

      else
      {
        result = MEMORY[0x23EE67750](1);
      }

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_23882C6D8(uint64_t a1, uint64_t a2)
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

  v8 = 0;
  v9 = 0;
  while (v5)
  {
    v22 = v8;
LABEL_12:
    v11 = *(a2 + 56) + 24 * (__clz(__rbit64(v5)) | (v9 << 6));
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(a1 + 48);
    v24[2] = *(a1 + 32);
    v24[3] = v15;
    v25 = *(a1 + 64);
    v16 = *(a1 + 16);
    v24[0] = *a1;
    v24[1] = v16;

    sub_238814698(v13, v12, v14);
    sub_2388D2938();

    v23 = v12;
    if (v14 > 2)
    {
      if (v14 == 3)
      {
        MEMORY[0x23EE67750](4);
        sub_23882C46C(v24, v13);
      }

      else if (v14 == 4)
      {
        MEMORY[0x23EE67750](5);
        sub_23882C6D8(v24, v13);
        if (v12)
        {
          sub_2388D34C8();
          MEMORY[0x23EE67750](*(v12 + 16));
          v18 = *(v12 + 16);
          if (v18)
          {
            v19 = v12 + 40;
            do
            {

              sub_2388D2938();

              v19 += 16;
              --v18;
            }

            while (v18);
          }
        }

        else
        {
          sub_2388D34C8();
        }
      }

      else
      {
        MEMORY[0x23EE67750](0);
      }
    }

    else if (v14)
    {
      if (v14 == 1)
      {
        MEMORY[0x23EE67750](2);
        if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v17 = v13;
        }

        else
        {
          v17 = 0;
        }

        MEMORY[0x23EE67770](v17);
      }

      else
      {
        MEMORY[0x23EE67750](3);
        sub_2388D2938();
      }
    }

    else
    {
      MEMORY[0x23EE67750](1);
      sub_2388D34C8();
    }

    v5 &= v5 - 1;
    sub_2388D34C8();
    sub_238810DC4(v13, v23, v14);
    result = sub_2388D34E8();
    v8 = result ^ v22;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x23EE67750](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v22 = v8;
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

char *sub_23882C97C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = a1;
  if (!a4 || (v8 = a7 >> 1, a7 >> 1 == a6))
  {
    if (a3 > 2u)
    {
      if (a3 == 3)
      {
        v124 = *(a1 + 16);
        if (v124)
        {
          v162 = MEMORY[0x277D84F90];
          sub_2388B7B78(0, v124, 0);
          v9 = v162;
          v127 = (a1 + 48);
          do
          {
            v128 = *(v127 - 2);
            v129 = *(v127 - 1);
            v130 = *v127;
            sub_238814698(v128, v129, *v127);
            v131 = sub_23882C97C(v128, v129, v130, 0, 0, 0, 0);
            v135 = *(v162 + 16);
            v134 = *(v162 + 24);
            if (v135 >= v134 >> 1)
            {
              v137 = v131;
              v138 = v132;
              v139 = v133;
              sub_2388B7B78((v134 > 1), v135 + 1, 1);
              v132 = v138;
              v131 = v137;
              v133 = v139;
            }

            v127 += 24;
            *(v162 + 16) = v135 + 1;
            v136 = v162 + 24 * v135;
            *(v136 + 32) = v131;
            *(v136 + 40) = v132;
            *(v136 + 48) = v133;
            *(v136 + 49) = HIBYTE(v133) & 1;
            --v124;
          }

          while (v124);
          sub_238810DC4(a1, a2, 3);
        }

        else
        {
          sub_238810DC4(a1, a2, 3);
          return MEMORY[0x277D84F90];
        }
      }

      else
      {
        if (a3 == 4)
        {
          sub_238810E44(&qword_27DF2FB80, &qword_2388D4990);
          v11 = sub_2388D3108();
          v9 = v11;
          v12 = v7 + 64;
          v13 = 1 << *(v7 + 32);
          v14 = -1;
          if (v13 < 64)
          {
            v14 = ~(-1 << v13);
          }

          v15 = v14 & *(v7 + 64);
          v16 = (v13 + 63) >> 6;
          v150 = v11 + 64;
          v143 = a2;

          v17 = 0;
          if (!v15)
          {
LABEL_13:
            v19 = v17;
            while (1)
            {
              v17 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                goto LABEL_93;
              }

              if (v17 >= v16)
              {
                sub_238810DC4(v7, v143, 4);
                return v9;
              }

              v20 = *(v12 + 8 * v17);
              ++v19;
              if (v20)
              {
                v18 = __clz(__rbit64(v20));
                v153 = (v20 - 1) & v20;
                goto LABEL_18;
              }
            }
          }

          while (1)
          {
            v18 = __clz(__rbit64(v15));
            v153 = (v15 - 1) & v15;
LABEL_18:
            v21 = v18 | (v17 << 6);
            v22 = (*(v7 + 48) + 16 * v21);
            v23 = v22[1];
            v158 = *v22;
            v24 = *(v7 + 56) + 24 * v21;
            v7 = *v24;
            v25 = *(v24 + 8);
            v26 = *(v24 + 16);

            sub_238814698(v7, v25, v26);
            v27 = sub_23882C97C(v7, v25, v26, 0, 0, 0, 0);
            *(v150 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
            v28 = (*(v9 + 6) + 16 * v21);
            *v28 = v158;
            v28[1] = v23;
            v29 = *(v9 + 7) + 24 * v21;
            *v29 = v27;
            *(v29 + 8) = v30;
            *(v29 + 16) = a3;
            *(v29 + 17) = HIBYTE(a3) & 1;
            v31 = *(v9 + 2);
            v32 = __OFADD__(v31, 1);
            v33 = v31 + 1;
            if (v32)
            {
              goto LABEL_98;
            }

            *(v9 + 2) = v33;
            v7 = a1;
            v15 = v153;
            if (!v153)
            {
              goto LABEL_13;
            }
          }
        }

        return 0;
      }
    }

    else if (a3)
    {
      return a1;
    }

    else
    {
      return (a1 & 1);
    }

    return v9;
  }

  if ((a7 >> 1) <= a6)
  {
    goto LABEL_99;
  }

  v34 = (a5 + 16 * a6);
  v35 = v34[1];
  v143 = a2;
  if (!v35)
  {
    if (a3 != 3)
    {
      goto LABEL_104;
    }

    v106 = *(a1 + 16);
    swift_unknownObjectRetain();
    v9 = sub_2388B66D8(0, v106, 0, MEMORY[0x277D84F90]);
    v107 = *(v7 + 16);
    if (v107)
    {
      v152 = a7;
      v108 = 0;
      v156 = v106 - 1;
      v109 = __OFSUB__(v8, a6);
      v149 = v109;
      v110 = (v7 + 48);
      do
      {
        if (v108 >= *(v7 + 16))
        {
          goto LABEL_94;
        }

        v111 = *(v110 - 2);
        v7 = *(v110 - 1);
        v112 = *v110;
        if (v156 == v108)
        {
          if (v149)
          {
            goto LABEL_95;
          }

          swift_unknownObjectRetain();
          sub_238814698(v111, v7, v112);
          v113 = sub_23882C97C(v111, v7, v112, a4, a5, a6 + 1, v152);
          v115 = v114;
          v117 = v116;
          swift_unknownObjectRelease();
          a3 = v117;
        }

        else
        {
          sub_238814698(*(v110 - 2), *(v110 - 1), *v110);
          v113 = sub_23882C97C(v111, v7, v112, 0, 0, 0, 0);
          v115 = v118;
        }

        v120 = *(v9 + 2);
        v119 = *(v9 + 3);
        v121 = HIBYTE(a3);
        if (v120 >= v119 >> 1)
        {
          v123 = a3;
          v9 = sub_2388B66D8((v119 > 1), v120 + 1, 1, v9);
          LOBYTE(a3) = v123;
        }

        ++v108;
        *(v9 + 2) = v120 + 1;
        v122 = &v9[24 * v120];
        *(v122 + 4) = v113;
        *(v122 + 5) = v115;
        v122[48] = a3;
        v122[49] = v121 & 1;
        v110 += 24;
        v7 = a1;
      }

      while (v107 != v108);
    }

    swift_unknownObjectRelease();
    sub_238810DC4(v7, v143, 3);
    return v9;
  }

  if (a3 != 4)
  {
    goto LABEL_103;
  }

  v155 = *v34;
  v161 = MEMORY[0x277D84F98];
  swift_unknownObjectRetain();

  sub_238810E44(&qword_27DF2FCA8, qword_2388D4DA8);
  sub_2388D2768();
  v37 = 0;
  v38 = v7 + 64;
  v39 = 1 << *(v7 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v7 + 64);
  v9 = v161;
  v42 = (v39 + 63) >> 6;
  v43 = __OFSUB__(v8, a6);
  v142 = v43;
  v145 = v7 + 64;
  v146 = v35;
  v144 = v42;
  while (v41)
  {
    v48 = v37;
LABEL_38:
    v49 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v50 = v49 | (v48 << 6);
    v51 = (*(v7 + 48) + 16 * v50);
    v52 = *v51;
    v53 = v51[1];
    v54 = *(v7 + 56) + 24 * v50;
    v55 = *v54;
    v56 = *(v54 + 8);
    v57 = *(v54 + 16);
    v58 = *v51 == v155 && v35 == v53;
    if (v58 || (sub_2388D3368() & 1) != 0)
    {
      if (v142)
      {
        goto LABEL_96;
      }

      v7 = v52;
      swift_unknownObjectRetain();

      sub_238814698(v55, v56, v57);
      v59 = sub_23882C97C(v55, v56, v57, a4, a5, a6 + 1, a7);
      v147 = v60;
      v62 = v61;
      swift_unknownObjectRelease();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v53;
      v65 = v7;
      v66 = v64;
      v68 = sub_238820AA8(v7, v64);
      v69 = *(v161 + 2);
      v70 = (v67 & 1) == 0;
      v71 = v69 + v70;
      if (__OFADD__(v69, v70))
      {
        goto LABEL_97;
      }

      v7 = v67;
      if (*(v161 + 3) >= v71)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v74 = HIBYTE(v62) & 1;
          if ((v67 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        else
        {
          sub_238820C04();
          v74 = HIBYTE(v62) & 1;
          if ((v7 & 1) == 0)
          {
            goto LABEL_51;
          }
        }
      }

      else
      {
        sub_238821AC4(v71, isUniquelyReferenced_nonNull_native);
        v72 = sub_238820AA8(v65, v66);
        if ((v7 & 1) != (v73 & 1))
        {
          goto LABEL_105;
        }

        v68 = v72;
        v74 = HIBYTE(v62) & 1;
        if ((v7 & 1) == 0)
        {
LABEL_51:
          *&v161[8 * (v68 >> 6) + 64] |= 1 << v68;
          v75 = (*(v161 + 6) + 16 * v68);
          *v75 = v65;
          v75[1] = v66;
          v76 = *(v161 + 7) + 24 * v68;
          *v76 = v59;
          *(v76 + 8) = v147;
          *(v76 + 16) = v62;
          *(v76 + 17) = v74;
          v77 = *(v161 + 2);
          v32 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v32)
          {
            goto LABEL_100;
          }

          *(v161 + 2) = v78;
          goto LABEL_31;
        }
      }

      v44 = *(v161 + 7) + 24 * v68;
      v45 = *v44;
      v46 = *(v44 + 8);
      *v44 = v59;
      *(v44 + 8) = v147;
      v47 = *(v44 + 16);
      *(v44 + 16) = v62;
      *(v44 + 17) = v74;
      sub_238810DC4(v45, v46, v47);
LABEL_31:
      v37 = v48;
      v7 = a1;
      goto LABEL_32;
    }

    sub_238814698(v55, v56, v57);
    v79 = sub_23882C97C(v55, v56, v57, 0, 0, 0, 0);
    v148 = v80;
    v82 = v81;
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v52;
    v85 = v83;
    v86 = v84;
    v87 = sub_238820AA8(v84, v53);
    v89 = *(v161 + 2);
    v90 = (v88 & 1) == 0;
    v32 = __OFADD__(v89, v90);
    v91 = v89 + v90;
    if (v32)
    {
      goto LABEL_101;
    }

    v92 = v88;
    if (*(v161 + 3) < v91)
    {
      sub_238821AC4(v91, v85);
      v87 = sub_238820AA8(v86, v53);
      if ((v92 & 1) != (v93 & 1))
      {
        goto LABEL_105;
      }

LABEL_58:
      v94 = HIBYTE(v82) & 1;
      if ((v92 & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_59;
    }

    if (v85)
    {
      goto LABEL_58;
    }

    v100 = v87;
    sub_238820C04();
    v87 = v100;
    v94 = HIBYTE(v82) & 1;
    if ((v92 & 1) == 0)
    {
LABEL_63:
      *&v161[8 * (v87 >> 6) + 64] |= 1 << v87;
      v101 = (*(v161 + 6) + 16 * v87);
      *v101 = v86;
      v101[1] = v53;
      v102 = *(v161 + 7) + 24 * v87;
      *v102 = v79;
      *(v102 + 8) = v148;
      *(v102 + 16) = v82;
      *(v102 + 17) = v94;
      v103 = *(v161 + 2);
      v32 = __OFADD__(v103, 1);
      v104 = v103 + 1;
      if (v32)
      {
        goto LABEL_102;
      }

      *(v161 + 2) = v104;
      goto LABEL_65;
    }

LABEL_59:
    v95 = v87;

    v96 = *(v161 + 7) + 24 * v95;
    v97 = *v96;
    v98 = *(v96 + 8);
    *v96 = v79;
    *(v96 + 8) = v148;
    v99 = *(v96 + 16);
    *(v96 + 16) = v82;
    *(v96 + 17) = v94;
    sub_238810DC4(v97, v98, v99);
LABEL_65:
    v37 = v48;
LABEL_32:
    v38 = v145;
    v35 = v146;
    v42 = v144;
  }

  while (1)
  {
    v48 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v48 >= v42)
    {

      swift_unknownObjectRelease();

      return v9;
    }

    v41 = *(v38 + 8 * v48);
    ++v37;
    if (v41)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
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
  v141 = a3;
  swift_unknownObjectRetain();
  sub_238810DC4(v7, v143, v141);
  __break(1u);
LABEL_105:
  result = sub_2388D3438();
  __break(1u);
  return result;
}

uint64_t sub_23882D3D4(uint64_t result)
{
  v1 = (result + 49);
  v2 = *(result + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 24;
  }

  while ((v3 & 1) != 0);
  return result;
}

uint64_t sub_23882D408(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  while (v5)
  {
    v6 = v2;
LABEL_10:
    v7 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if ((*(*(result + 56) + 24 * (v7 | (v6 << 6)) + 17) & 1) == 0)
    {
LABEL_11:
      v8 = result;

      return v8;
    }
  }

  while (1)
  {
    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v6 >= ((v3 + 63) >> 6))
    {
      goto LABEL_11;
    }

    v5 = *(result + 64 + 8 * v6);
    ++v2;
    if (v5)
    {
      v2 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23882D4E4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v6 = a6;
        if (a6 == 1)
        {
          if (*&a1 != *&a4)
          {
            v6 = 0;
          }

          return v6 & 1;
        }

        goto LABEL_31;
      }

      if (a6 == 2)
      {
        if (a1 != a4 || a2 != a5)
        {

          return sub_2388D3368();
        }

        goto LABEL_29;
      }
    }

    else if (!a6)
    {
      v6 = a4 ^ a1 ^ 1;
      return v6 & 1;
    }

    goto LABEL_31;
  }

  if (a3 != 3)
  {
    if (a3 == 4)
    {
      if (a6 != 4 || (sub_23881D7DC(a1, a4) & 1) == 0)
      {
        goto LABEL_31;
      }

      if (a2)
      {
        if (!a5 || (sub_238890BFC(a2, a5) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else if (a5)
      {
        goto LABEL_31;
      }
    }

    else if (a6 != 5 || a5 | a4)
    {
      goto LABEL_31;
    }

LABEL_29:
    v6 = 1;
    return v6 & 1;
  }

  if (a6 != 3)
  {
LABEL_31:
    v6 = 0;
    return v6 & 1;
  }

  return sub_2388919B8(a1, a4);
}

unint64_t sub_23882D644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FCB0;
  if (!qword_27DF2FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FCB0);
  }

  return result;
}

__n128 sub_23882D698(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_23882D6BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_23882D704(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23882D770(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_2388D0D58();
  swift_allocObject();
  *a2 = sub_2388D0D48();
  swift_allocObject();
  v5 = sub_2388D0D48();
  *&v7 = 0;
  *(&v7 + 1) = 0xE000000000000000;
  *&v8 = 15;
  *(&v8 + 1) = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  *&v10 = MEMORY[0x277D84F98];
  *(&v10 + 1) = v5;
  *(a2 + 24) = v7;
  *(a2 + 40) = v8;
  *(a2 + 56) = v9;
  *(a2 + 72) = v10;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0xE000000000000000;
  sub_23882F0E0();
  *(a2 + 104) = v6;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
}

void sub_23882D83C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  sub_2388D2908();
  v7 = sub_23882E3F8();
  if (*(v3 + 64) <= 120)
  {
    v10 = *(v3 + 40);
    v40 = *(v3 + 24);
    v41 = v10;
    v11 = *(v3 + 72);
    v42 = *(v3 + 56);
    v43 = v11;
    sub_23882F0E0();
    if (*(v3 + 104) >> 14 >= v12 >> 14)
    {
      *(a3 + 48) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
    }

    else
    {
      *(v3 + 104) = v12;
      v15 = *(v3 + 40);
      v37[0] = *(v3 + 24);
      v37[1] = v15;
      v16 = *(v3 + 72);
      v38 = *(v3 + 56);
      v39 = v16;
      v17 = *(&v15 + 1);
      v18 = sub_23882FE28(v37, v12, v13, v14 & 1);
      v20 = v19;

      v5[11] = v18;
      v5[12] = v20;
      if (*(v17 + 16))
      {
        v21 = v38;
        v44 = v38 + 32;
        v33 = (2 * *(v38 + 16)) | 1;
      }

      else
      {
        v21 = 0;
        v44 = 0;
        v33 = 0;
      }

      v22 = sub_238819688(v18, v20);
      v24 = v23;
      sub_238826CFC(v22, v23, v25);
      sub_2388D0D38();
      if (v4)
      {

        swift_unknownObjectRelease();
        sub_238826D50(v22, v24);
        *(a3 + 48) = 0;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *a3 = 0u;
      }

      else
      {
        sub_238826D50(v22, v24);
        v26 = sub_23882C97C(a1, a2, v36, v21, v44, 0, v33);
        v28 = v27;
        v30 = v29;
        swift_unknownObjectRelease();
        v32 = v5[1];
        v31 = v5[2];

        *a3 = v18;
        *(a3 + 8) = v20;
        *(a3 + 16) = v26;
        *(a3 + 24) = v28;
        *(a3 + 32) = v30 & 0x1FF;
        *(a3 + 40) = v32;
        *(a3 + 48) = v31;
      }
    }
  }

  else
  {
    sub_23882FFFC(v7, v8, v9);
    swift_willThrowTypedImpl();
  }
}

uint64_t sub_23882DAAC()
{
  v1 = *(v0 + 8);
  sub_2388D34A8();
  if (v1)
  {
    MEMORY[0x23EE67750](0);
    sub_2388D2938();
  }

  else
  {
    MEMORY[0x23EE67750](1);
  }

  return sub_2388D34E8();
}

uint64_t sub_23882DB1C(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x23EE67750](1);
  }

  MEMORY[0x23EE67750](0);

  return sub_2388D2938();
}

uint64_t sub_23882DB94()
{
  v1 = *(v0 + 8);
  sub_2388D34A8();
  if (v1)
  {
    MEMORY[0x23EE67750](0);
    sub_2388D2938();
  }

  else
  {
    MEMORY[0x23EE67750](1);
  }

  return sub_2388D34E8();
}

uint64_t sub_23882DC00(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return sub_2388D3368();
  }
}

uint64_t sub_23882DC4C()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_23882C63C(v3, v1);
  return sub_2388D34E8();
}

uint64_t sub_23882DC9C()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_23882C63C(v3, v1);
  return sub_2388D34E8();
}

uint64_t sub_23882DCEC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = sub_238880FF0(v0[2], *v0, v1);
  if ((v1 & 0x1000000000000000) != 0)
  {
    return sub_2388D2F98();
  }

  v4 = v3 >> 16;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v9[0] = v2;
    v9[1] = v1 & 0xFFFFFFFFFFFFFFLL;
    v6 = v9 + v4;
  }

  else
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      v5 = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v5 = sub_2388D3008();
    }

    v6 = (v5 + v4);
  }

  result = *v6;
  if (*v6 < 0)
  {
    v8 = (__clz(result ^ 0xFF) - 24);
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        return ((result & 0xF) << 12) | ((v6[1] & 0x3F) << 6) | v6[2] & 0x3F;
      }

      else
      {
        return ((result & 0xF) << 18) | ((v6[1] & 0x3F) << 12) | ((v6[2] & 0x3F) << 6) | v6[3] & 0x3F;
      }
    }

    else if (v8 != 1)
    {
      return v6[1] & 0x3F | ((result & 0x1F) << 6);
    }
  }

  return result;
}

uint64_t _s16FoundationModels21LanguageModelFeedbackV5IssueV8CategoryO9hashValueSivg_0()
{
  v1 = *v0;
  sub_2388D34A8();
  MEMORY[0x23EE67750](v1);
  return sub_2388D34E8();
}

uint64_t sub_23882DE7C()
{
  v1 = *v0;
  sub_2388D34A8();
  MEMORY[0x23EE67750](v1);
  return sub_2388D34E8();
}

uint64_t sub_23882DED4(char a1)
{
  v3 = v1[3];
  v4 = *(v3 + 16);
  if (v4 && *(v3 + 16 + 16 * v4) == 2)
  {
    v5 = v1[4];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_2388B6C08(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    v8 = v7 + 1;
    if (v7 >= v6 >> 1)
    {
      v5 = sub_2388B6C08((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v8;
    v9 = &v5[16 * v7];
    *(v9 + 4) = 0;
    *(v9 + 5) = 0;
    v1[4] = v5;
    if (v1[5] <= v7)
    {
      v1[5] = v8;
    }
  }

  v10 = v1[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2388B6D14(0, *(v3 + 16) + 1, 1, v3);
    v3 = result;
  }

  v13 = *(v3 + 16);
  v12 = *(v3 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_2388B6D14((v12 > 1), v13 + 1, 1, v3);
    v3 = result;
  }

  *(v3 + 16) = v13 + 1;
  v14 = v3 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = v10;
  v1[3] = v3;
  return result;
}

uint64_t sub_23882E018(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2388D2918();
  v4 = sub_2388D2E98();
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = *(v2 + 48);
  if (*(v12 + 16) && (v13 = sub_238820B20(v4, v5, v6, v7), (v14 & 1) != 0))
  {
    v15 = v13;

    v16 = *(*(v12 + 56) + 16 * v15);
  }

  else
  {

    v17 = sub_238819134(v8, v9, v10, v11);
    v21 = v18;
    sub_2388D0D38();
    v16 = v22;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v3 + 48);
    sub_23882FC7C(v16, v24, v8, v9, v10, v11, isUniquelyReferenced_nonNull_native);

    sub_238826D50(v17, v21);
    *(v3 + 48) = v23;
  }

  return v16;
}

unint64_t sub_23882E1B8()
{
  v3 = v0[3];
  if (*(v3 + 2))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v4 = *(v3 + 2);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
    __break(1u);
  }

  v3 = sub_238895334(v3);
  v4 = *(v3 + 2);
  if (!v4)
  {
    goto LABEL_28;
  }

LABEL_4:
  v5 = v4 - 1;
  v6 = &v3[16 * v5];
  v7 = v6[32];
  result = *(v6 + 5);
  *(v3 + 2) = v5;
  v0[3] = v3;
  if (v7 == 6)
  {
    v9 = v0[2];
    if (v9 >> 14 >= result >> 14)
    {
      v1 = sub_23882E018(result, v9);
      v3 = v10;
      v2 = v0[4];

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_7:
        v12 = *(v2 + 2);
        v11 = *(v2 + 3);
        if (v12 >= v11 >> 1)
        {
          v2 = sub_2388B6C08((v11 > 1), v12 + 1, 1, v2);
        }

        *(v2 + 2) = v12 + 1;
        v13 = &v2[16 * v12];
        *(v13 + 4) = v1;
        *(v13 + 5) = v3;

        v0[4] = v2;
        v14 = *(v2 + 2);
        if (v0[5] < v14)
        {
          v0[5] = v14;
        }

        goto LABEL_11;
      }

LABEL_30:
      v2 = sub_2388B6C08(0, *(v2 + 2) + 1, 1, v2);
      goto LABEL_7;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_11:
  v15 = v0[3];
  v16 = *(v15 + 2);
  if (!v16)
  {
    return result;
  }

  v17 = v15[16 * v16 + 16];
  if (v17 == 2)
  {
    goto LABEL_21;
  }

  if (v17 != 8)
  {
    return result;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_238895334(v15);
    v18 = *(v15 + 2);
    if (v18)
    {
      goto LABEL_16;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v18 = *(v15 + 2);
  if (!v18)
  {
    goto LABEL_32;
  }

LABEL_16:
  *(v15 + 2) = v18 - 1;
  if (v18 == 1)
  {
    goto LABEL_34;
  }

  *(v15 + 2) = v18 - 2;
  v0[3] = v15;
  v15 = v0[4];
  if (!*(v15 + 2))
  {
    goto LABEL_37;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_38;
  }

  v19 = *(v15 + 2);
  if (!v19)
  {
    while (1)
    {
      __break(1u);
LABEL_21:
      v15 = v0[4];
      if (!*(v15 + 2))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_35;
      }

      v19 = *(v15 + 2);
      if (v19)
      {
        goto LABEL_24;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      v15 = sub_238895320(v15);
      v19 = *(v15 + 2);
      if (v19)
      {
        goto LABEL_24;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v15 = sub_238895320(v15);
    v19 = *(v15 + 2);
    if (v19)
    {
      goto LABEL_24;
    }

    goto LABEL_36;
  }

LABEL_24:
  *(v15 + 2) = v19 - 1;

  v0[4] = v15;
  return result;
}

unint64_t sub_23882E3F8()
{
  while (1)
  {
    v1 = v0[1];
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
    if ((v1 & 0x2000000000000000) != 0)
    {
      v2 = HIBYTE(v1) & 0xF;
    }

    if (v0[2] >> 14 >= (4 * v2))
    {
      break;
    }

    result = sub_23882E438();
  }

  return result;
}

unint64_t sub_23882E438()
{
  while (1)
  {
    sub_23882E494();
    if (v0 == 2)
    {
      break;
    }

    if (v0)
    {
      sub_23882EC50();

      return sub_23882E1B8();
    }

    sub_23882E1B8();
  }

  return sub_23882EC50();
}

void sub_23882E494()
{
  v1 = *(v0 + 24);
  v4 = *(v1 + 16);
  v2 = v1 + 16;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *(v2 + 16 * v3);
  if (v5 <= 3)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {

        sub_23882E708();
      }

      else
      {

        sub_23882E7C4();
      }

      return;
    }

    if (!v5)
    {

      sub_23882E684();
      return;
    }
  }

  else
  {
    if (v5 <= 5)
    {
      if (v5 == 4)
      {
        sub_23882DCEC();
      }

      else
      {

        sub_23882E9BC();
      }

      return;
    }

    if (v5 != 6)
    {
      if (v5 == 7)
      {
        if (sub_23882DCEC() == 58)
        {
          v6 = 8;
LABEL_25:
          sub_23882DED4(v6);
          return;
        }

        sub_23882DCEC();
        return;
      }

LABEL_8:
      sub_23882E8B4();
      return;
    }
  }

  if (sub_23882DCEC() != 34 && sub_23882DCEC() == 92)
  {
    v6 = 0;
    goto LABEL_25;
  }
}

void sub_23882E684()
{
  v1 = v0[3];
  v4 = *(v1 + 16);
  v2 = v1 + 16;
  v3 = v4;
  if (v4)
  {
    if (sub_23882EEBC(*(v2 + 16 * v3 + 8), v0[2], *v0, v0[1]) == 1)
    {
      sub_23882DCEC();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23882E708()
{
  if (sub_23882DCEC() == 93)
  {
    return 1;
  }

  if (sub_23882DCEC() != 44)
  {
    v1 = sub_23882DCEC();
    if (v1 > 0x20 || ((1 << v1) & 0x100002600) == 0)
    {
      sub_23882E8B4();
    }
  }

  return 2;
}

uint64_t sub_23882E7C4()
{
  if (sub_23882DCEC() == 125)
  {
    return 1;
  }

  if (sub_23882DCEC() != 44)
  {
    v1 = sub_23882DCEC();
    if ((v1 > 0x20 || ((1 << v1) & 0x100002600) == 0) && sub_23882DCEC() == 34)
    {
      sub_23882DED4(7);
      sub_23882DED4(6);
    }
  }

  return 2;
}

uint64_t sub_23882E8B4()
{
  sub_23882ECDC();
  v1 = v0[1];
  v2 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v0[2] >> 14 < (4 * v2))
  {
    v3 = sub_23882DCEC();
    switch(v3)
    {
      case '""':
        v4 = 1;
        goto LABEL_17;
      case '[':
        v4 = 2;
        goto LABEL_17;
      case '{':
        v4 = 3;
LABEL_17:
        sub_23882DED4(v4);
        return 2;
    }

    if ((v3 - 58) > 0xFFFFFFF5)
    {
      v4 = 4;
      goto LABEL_17;
    }

    v5 = v3;
    v4 = 4;
    if (v5 == 43 || v5 == 45)
    {
      goto LABEL_17;
    }

    v6 = sub_23882DCEC() - 97;
    if (v6 <= 0x14 && ((0x1E2831u >> v6) & 1) != 0)
    {
      v4 = 5;
      goto LABEL_17;
    }
  }

  return 2;
}

uint64_t sub_23882E9BC()
{
  v1 = v0;
  v2 = v0[1];
  v32 = *v0;
  v33 = v2;
  v3 = v0[3];
  v34 = v0[2];
  v35 = v3;
  if (sub_23882DCEC() == 101)
  {
    return 1;
  }

  v5 = v0[1];
  v28 = *v0;
  v29 = v5;
  v6 = v0[3];
  v30 = v0[2];
  v31 = v6;
  if (sub_23882DCEC() == 108)
  {
    v7 = v28;
    v8 = sub_23882FB70(v29, v28, *(&v28 + 1));
    if (v8 < 0x4000)
    {
      __break(1u);
    }

    else if ((*(&v28 + 1) & 0x1000000000000000) == 0)
    {
      if ((*(&v28 + 1) & 0x2000000000000000) != 0)
      {
        *&v27[0] = v28;
        *(&v27[0] + 1) = *(&v28 + 1) & 0xFFFFFFFFFFFFFFLL;
        v13 = v27 + (v8 >> 16);
        if ((*(v13 - 1) & 0xC0) == 0x80)
        {
          v11 = -2;
          do
          {
            v14 = v13[v11--] & 0xC0;
          }

          while (v14 == 128);
          goto LABEL_16;
        }
      }

      else
      {
        if ((v28 & 0x1000000000000000) != 0)
        {
          v9 = (*(&v28 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v26 = v8;
          v9 = sub_2388D3008();
          v8 = v26;
        }

        v10 = v9 + (v8 >> 16);
        if ((*(v10 - 1) & 0xC0) == 0x80)
        {
          v11 = -2;
          do
          {
            v12 = *(v10 + v11--) & 0xC0;
          }

          while (v12 == 128);
LABEL_16:
          v15 = v11 + 1;
LABEL_18:
          v16 = sub_238880FF0((v8 + (v15 << 16)) & 0xFFFFFFFFFFFF0000 | 5, v28, *(&v28 + 1)) >> 16;
          if ((*(&v7 + 1) & 0x2000000000000000) != 0)
          {
            *&v27[0] = v7;
            *(&v27[0] + 1) = *(&v7 + 1) & 0xFFFFFFFFFFFFFFLL;
            v18 = v27 + v16;
          }

          else
          {
            if ((v7 & 0x1000000000000000) != 0)
            {
              v17 = (*(&v7 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              v25 = v16;
              v17 = sub_2388D3008();
              v16 = v25;
            }

            v18 = (v17 + v16);
          }

          v19 = *v18;
          if (*v18 < 0)
          {
            v23 = (__clz(v19 ^ 0xFF) - 24);
            if (v23 > 2)
            {
              if (v23 == 3)
              {
                v19 = ((v19 & 0xF) << 12) | ((v18[1] & 0x3F) << 6) | v18[2] & 0x3F;
              }

              else
              {
                v19 = ((v19 & 0xF) << 18) | ((v18[1] & 0x3F) << 12) | ((v18[2] & 0x3F) << 6) | v18[3] & 0x3F;
              }
            }

            else if (v23 != 1)
            {
              v19 = v18[1] & 0x3F | ((v19 & 0x1F) << 6);
            }
          }

LABEL_24:
          if (v19 == 108)
          {
            return 1;
          }

          goto LABEL_25;
        }
      }

      v15 = -1;
      goto LABEL_18;
    }

    v24 = sub_2388D28F8();
    sub_238880FF0(v24, v28, *(&v28 + 1));
    v19 = sub_2388D2F98();
    goto LABEL_24;
  }

LABEL_25:
  v20 = v1[1];
  v27[0] = *v1;
  v27[1] = v20;
  v21 = v1[3];
  v27[2] = v1[2];
  v27[3] = v21;
  v22 = sub_23882DCEC() - 97;
  if (v22 > 0x14)
  {
    return 0;
  }

  else
  {
    return byte_2388D523A[v22];
  }
}