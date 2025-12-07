unint64_t sub_1DCD42254(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DCD41018(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1DCD43794(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = sub_1DD0DE8DC();
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1DCB10E5C(0, &qword_1EDE460A8, 0x1E696AAE8);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_1DD0DE8EC();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DCD42AC0();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_1DD0DF11C();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

uint64_t sub_1DCD423B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a5)
  {
    sub_1DCD4123C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_1DCD42C10();
      goto LABEL_17;
    }

    sub_1DCD439A4(v10 + 1);
  }

  v12 = *v5;
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  sub_1DD0DE8FC();
  result = sub_1DD0DF20C();
  v13 = -1 << *(v12 + 32);
  a4 = result & ~v13;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    do
    {
      v15 = (*(v12 + 48) + 24 * a4);
      v16 = v15[2];
      v17 = *v15 == v9 && v15[1] == a2;
      if (v17 || (result = sub_1DD0DF0AC(), (result & 1) != 0))
      {
        sub_1DCB10E5C(0, &qword_1EDE4D6A8, 0x1E69E58C0);

        v18 = v16;
        v19 = sub_1DD0DE8EC();

        if (v19)
        {
          goto LABEL_20;
        }
      }

      a4 = (a4 + 1) & v14;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_17:
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
LABEL_20:
  result = sub_1DD0DF11C();
  __break(1u);
  return result;
}

void sub_1DCD425A4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1DCD41714(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1DCD43C00(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1DD0DF1DC();
      sub_1DD0DDF2C();
      v16 = sub_1DD0DF20C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_1DD0DF0AC() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_1DCD42ED0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_1DD0DF11C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

void *sub_1DCD4270C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DF8, &qword_1DD0EFFD0);
  v2 = *v0;
  v3 = sub_1DD0DEBCC();
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
        v18 = (*(v2 + 48) + (v17 << 6));
        v20 = v18[1];
        v19 = v18[2];
        v21 = *v18;
        *&v24[9] = *(v18 + 41);
        v23[1] = v20;
        *v24 = v19;
        v23[0] = v21;
        memmove((*(v4 + 48) + (v17 << 6)), v18, 0x39uLL);
        result = sub_1DCB32880(v23, &v22);
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

void *sub_1DCD4288C()
{
  v1 = v0;
  v2 = sub_1DD0DB3AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E18, &qword_1DD0EFFE0);
  v7 = *v0;
  v8 = sub_1DD0DEBCC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

id sub_1DCD42AC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E20, &qword_1DD0EFFE8);
  v2 = *v0;
  v3 = sub_1DD0DEBCC();
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

id sub_1DCD42C10()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E28, &qword_1DD0EFFF8);
  v2 = *v0;
  v3 = sub_1DD0DEBCC();
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + 8 * v17);
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

void sub_1DCD42D78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2870, &qword_1DD0E6B80);
  v2 = *v0;
  v3 = sub_1DD0DEBCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_1DCD42ED0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E00, &qword_1DD0EFFD8);
  v2 = *v0;
  v3 = sub_1DD0DEBCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

uint64_t sub_1DCD43028(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DF8, &qword_1DD0EFFD0);
  result = sub_1DD0DEBDC();
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
    v33 = v3;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + ((v13 | (v6 << 6)) << 6));
        v17 = *v16;
        v18 = *(v16 + 41);
        v19 = v16[2];
        v36 = v16[1];
        *v37 = v19;
        *&v37[9] = v18;
        v35 = v17;
        sub_1DD0DF1DC();
        sub_1DCB32880(&v35, v34);
        sub_1DD0DDF2C();

        v20 = v36;
        sub_1DD0DDF2C();

        if (v20)
        {
          MEMORY[0x1E12A7840](0);
          sub_1DD0DDF2C();
        }

        else
        {
          MEMORY[0x1E12A7840](1);
        }

        if (*v37)
        {
          MEMORY[0x1E12A7840](0);
          sub_1DD0DDF2C();
        }

        else
        {
          MEMORY[0x1E12A7840](1);
        }

        if (*&v37[16])
        {
          sub_1DD0DF1FC();
          sub_1DD0DDF2C();
        }

        else
        {
          sub_1DD0DF1FC();
        }

        v3 = v33;
        result = sub_1DD0DF20C();
        v21 = -1 << *(v5 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = (*(v5 + 48) + (v24 << 6));
        v30 = v35;
        v31 = v36;
        v32 = *v37;
        *(v29 + 41) = *&v37[9];
        v29[1] = v31;
        v29[2] = v32;
        *v29 = v30;
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
          goto LABEL_30;
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
          goto LABEL_34;
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

LABEL_34:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DCD4347C(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1DD0DB3AC();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E18, &qword_1DD0EFFE0);
  v8 = sub_1DD0DEBDC();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    if (v14)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_12:
        v20 = *(v33 + 72);
        (*(v33 + 16))(v6, *(result + 48) + v20 * (v17 | (v10 << 6)), v34);
        sub_1DCD442F0(&qword_1EDE464E0, MEMORY[0x1E69D0948], MEMORY[0x1E69D0950]);
        result = sub_1DD0DDF0C();
        v21 = -1 << *(v8 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v16 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v16 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v16 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        (*v30)(*(v8 + 48) + v24 * v20, v6, v34);
        ++*(v8 + 16);
        result = v31;
        if (!v14)
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
        v28 = *(v16 + 8 * v23);
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
      v18 = v10;
      while (1)
      {
        v10 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v10 >= v15)
        {

          v2 = v29;
          goto LABEL_25;
        }

        v19 = *(v11 + 8 * v10);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v14 = (v19 - 1) & v19;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1DCD43794(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E20, &qword_1DD0EFFE8);
  result = sub_1DD0DEBDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_1DD0DE8DC();
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
        *(*(v5 + 48) + 8 * v19) = v15;
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

          v2 = v24;
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

uint64_t sub_1DCD439A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E28, &qword_1DD0EFFF8);
  result = sub_1DD0DEBDC();
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
        v16 = (*(v3 + 48) + 24 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        sub_1DD0DF1DC();

        v20 = v19;
        sub_1DD0DDF2C();
        sub_1DD0DE8FC();
        result = sub_1DD0DF20C();
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
        v29 = (*(v5 + 48) + 24 * v24);
        *v29 = v17;
        v29[1] = v18;
        v29[2] = v20;
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

void sub_1DCD43C00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E00, &qword_1DD0EFFD8);
  v4 = sub_1DD0DEBDC();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v17 = *v15;
        v16 = v15[1];
        sub_1DD0DF1DC();
        sub_1DD0DDF2C();
        v18 = sub_1DD0DF20C();
        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (*(v5 + 48) + 16 * v22);
        *v27 = v17;
        v27[1] = v16;
        ++*(v5 + 16);

        if (!v9)
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
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
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
}

uint64_t sub_1DCD43E34(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDFBC();

  return v3;
}

uint64_t sub_1DCD43E98(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void destroy for FlowDelegatePluginLoader.KeyAndBundle(uint64_t a1)
{

  v2 = *(a1 + 16);
}

void *sub_1DCD440B0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[2];
  a1[2] = v4;

  v5 = v4;
  return a1;
}

void *assignWithCopy for FlowDelegatePluginLoader.KeyAndBundle(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v4 = a2[2];
  v5 = a1[2];
  a1[2] = v4;
  v6 = v4;

  return a1;
}

uint64_t assignWithTake for FlowDelegatePluginLoader.KeyAndBundle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

unint64_t sub_1DCD441AC()
{
  result = qword_1EDE4AE60;
  if (!qword_1EDE4AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4AE60);
  }

  return result;
}

uint64_t sub_1DCD44200@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = v1 + ((*(v4 + 80) + 56) & ~*(v4 + 80));

  return sub_1DCD3D164((v1 + 16), v5, a1);
}

uint64_t sub_1DCD44270(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCD442C4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1DCD442E0(uint64_t result)
{
  if (result != 1)
  {
    sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCD442F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FlowUnhandledEvent.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FlowUnhandledEvent.description.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *assignWithCopy for FlowExecutionEnvironment(void *a1, void *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  __swift_assign_boxed_opaque_existential_1(a1 + 5, a2 + 5);
  __swift_assign_boxed_opaque_existential_1(a1 + 10, a2 + 10);
  return a1;
}

uint64_t assignWithTake for FlowExecutionEnvironment(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 40));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 80));
  v5 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v5;
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for FlowExecutionEnvironment(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowExecutionEnvironment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FlowOutput.__allocating_init(atoms:flowActivity:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FlowOutput.init(atoms:flowActivity:)(a1, a2);
  return v4;
}

uint64_t sub_1DCD44740(uint64_t a1)
{
  swift_beginAccess();
  sub_1DCB6C5E8(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t FlowOutput.init(atoms:flowActivity:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 16) = a1;
  swift_beginAccess();
  sub_1DCB6C5E8(a2, v2 + 24);
  swift_endAccess();
  return v2;
}

uint64_t sub_1DCD44804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3280, &unk_1DD0E23D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FlowOutput.deinit()
{

  sub_1DCD4489C(v0 + 24);
  return v0;
}

uint64_t sub_1DCD4489C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3280, &unk_1DD0E23D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FlowOutput.__deallocating_deinit()
{

  sub_1DCD4489C(v0 + 24);

  return swift_deallocClassInstance();
}

char *initializeBufferWithCopyOfBuffer for FlowOutputAtom(char *a1, char **a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    v5 = a2[2];
    *(a1 + 1) = a2[1];
    *(a1 + 2) = v5;
    v6 = a2[4];
    *(a1 + 3) = a2[3];
    *(a1 + 4) = v6;
    v7 = a2[6];
    *(a1 + 5) = a2[5];
    *(a1 + 6) = v7;
    v8 = a2[8];
    v9 = a2[7];
    a1[72] = *(a2 + 72);
    *(a1 + 7) = v9;
    *(a1 + 8) = v8;
    v10 = a2[11];
    *(a1 + 10) = a2[10];
    *(a1 + 11) = v10;
    v11 = a2[13];
    *(a1 + 12) = a2[12];
    *(a1 + 13) = v11;
    v12 = a2[15];
    *(a1 + 14) = a2[14];
    *(a1 + 15) = v12;
    v33 = a2[16];
    *(a1 + 16) = v33;
    a1[136] = *(a2 + 136);
    v13 = a2[19];
    v32 = a2[18];
    *(a1 + 18) = v32;
    *(a1 + 19) = v13;
    v14 = a2[21];
    *(a1 + 20) = a2[20];
    *(a1 + 21) = v14;
    a1[176] = *(a2 + 176);
    v15 = a2[24];
    *(a1 + 23) = a2[23];
    *(a1 + 24) = v15;
    a1[200] = *(a2 + 200);
    v16 = a2[27];
    *(a1 + 26) = a2[26];
    *(a1 + 27) = v16;
    v17 = a2[29];
    v34 = a2[30];
    *(a1 + 28) = a2[28];
    *(a1 + 29) = v17;
    *(a1 + 30) = v34;
    v35 = a2[32];

    v18 = v33;
    v19 = v32;

    if (v35)
    {
      *(a1 + 31) = a2[31];
      *(a1 + 32) = v35;
      *(a1 + 33) = a2[33];
    }

    else
    {
      *(a1 + 248) = *(a2 + 31);
      *(a1 + 33) = a2[33];
    }

    v22 = a2[35];
    *(a1 + 34) = a2[34];
    *(a1 + 35) = v22;
    v23 = type metadata accessor for NLContextUpdate(0);
    v24 = v23[32];
    v25 = sub_1DD0DD72C();

    if (__swift_getEnumTagSinglePayload(a2 + v24, 1, v25))
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
      memcpy(&a1[v24], a2 + v24, *(*(v26 - 8) + 64));
    }

    else
    {
      (*(*(v25 - 8) + 16))(&a1[v24], a2 + v24, v25);
      __swift_storeEnumTagSinglePayload(&a1[v24], 0, 1, v25);
    }

    a1[v23[33]] = *(a2 + v23[33]);
    a1[v23[34]] = *(a2 + v23[34]);
    v27 = v23[35];
    v28 = &a1[v27];
    v29 = (a2 + v27);
    v30 = v29[1];
    *v28 = *v29;
    *(v28 + 1) = v30;
  }

  else
  {
    v20 = *a2;
    *a1 = *a2;
    v21 = v20;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void destroy for FlowOutputAtom(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    if (*(a1 + 256))
    {
    }

    v3 = *(type metadata accessor for NLContextUpdate(0) + 128);
    v4 = sub_1DD0DD72C();
    if (!__swift_getEnumTagSinglePayload(a1 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(a1 + v3, v4);
    }
  }

  else
  {
    v5 = *a1;
  }
}

uint64_t initializeWithCopy for FlowOutputAtom(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    v5 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v5;
    v6 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v6;
    v7 = *(a2 + 48);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = v7;
    v8 = *(a2 + 64);
    v9 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v9;
    *(a1 + 64) = v8;
    v10 = *(a2 + 88);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = v10;
    v11 = *(a2 + 104);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = v11;
    v12 = *(a2 + 120);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = v12;
    v33 = *(a2 + 128);
    *(a1 + 128) = v33;
    *(a1 + 136) = *(a2 + 136);
    v13 = *(a2 + 152);
    v32 = *(a2 + 144);
    *(a1 + 144) = v32;
    *(a1 + 152) = v13;
    v14 = *(a2 + 168);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = v14;
    *(a1 + 176) = *(a2 + 176);
    v15 = *(a2 + 192);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = v15;
    *(a1 + 200) = *(a2 + 200);
    v16 = *(a2 + 216);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = v16;
    v17 = *(a2 + 232);
    v34 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = v17;
    *(a1 + 240) = v34;
    v35 = *(a2 + 256);

    v18 = v33;
    v19 = v32;

    if (v35)
    {
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = v35;
      *(a1 + 264) = *(a2 + 264);
    }

    else
    {
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
    }

    v22 = *(a2 + 280);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 280) = v22;
    v23 = type metadata accessor for NLContextUpdate(0);
    v24 = v23[32];
    v25 = sub_1DD0DD72C();

    if (__swift_getEnumTagSinglePayload(a2 + v24, 1, v25))
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
      memcpy((a1 + v24), (a2 + v24), *(*(v26 - 8) + 64));
    }

    else
    {
      (*(*(v25 - 8) + 16))(a1 + v24, a2 + v24, v25);
      __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v25);
    }

    *(a1 + v23[33]) = *(a2 + v23[33]);
    *(a1 + v23[34]) = *(a2 + v23[34]);
    v27 = v23[35];
    v28 = (a1 + v27);
    v29 = (a2 + v27);
    v30 = v29[1];
    *v28 = *v29;
    v28[1] = v30;
  }

  else
  {
    v20 = *a2;
    *a1 = *a2;
    v21 = v20;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for FlowOutputAtom(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCD455B0(a1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      v5 = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 64) = v5;
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      v20 = *(a2 + 128);
      *(a1 + 128) = v20;
      *(a1 + 136) = *(a2 + 136);
      v19 = *(a2 + 144);
      *(a1 + 144) = v19;
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      v21 = *(a2 + 256);

      v6 = v20;
      v7 = v19;

      if (v21)
      {
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 264) = *(a2 + 264);
      }

      else
      {
        v10 = *(a2 + 248);
        *(a1 + 264) = *(a2 + 264);
        *(a1 + 248) = v10;
      }

      *(a1 + 272) = *(a2 + 272);
      *(a1 + 280) = *(a2 + 280);
      v11 = type metadata accessor for NLContextUpdate(0);
      v12 = v11[32];
      v13 = sub_1DD0DD72C();

      if (__swift_getEnumTagSinglePayload(a2 + v12, 1, v13))
      {
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
        memcpy((a1 + v12), (a2 + v12), *(*(v14 - 8) + 64));
      }

      else
      {
        (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
        __swift_storeEnumTagSinglePayload(a1 + v12, 0, 1, v13);
      }

      *(a1 + v11[33]) = *(a2 + v11[33]);
      *(a1 + v11[34]) = *(a2 + v11[34]);
      v15 = v11[35];
      v16 = (a1 + v15);
      v17 = (a2 + v15);
      *v16 = *v17;
      v16[1] = v17[1];
    }

    else
    {
      v8 = *a2;
      *a1 = *a2;
      v9 = v8;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1DCD455B0(uint64_t a1)
{
  v2 = type metadata accessor for FlowOutputAtom(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FlowOutputAtom(uint64_t a1)
{
  result = qword_1ECCA4E90;
  if (!qword_1ECCA4E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *initializeWithTake for FlowOutputAtom(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 3) = *(a2 + 3);
    v6 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v6;
    *(a1 + 8) = *(a2 + 8);
    a1[72] = a2[72];
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 13) = *(a2 + 13);
    *(a1 + 7) = *(a2 + 7);
    *(a1 + 16) = *(a2 + 16);
    a1[136] = a2[136];
    v7 = *(a2 + 10);
    *(a1 + 9) = *(a2 + 9);
    *(a1 + 10) = v7;
    a1[176] = a2[176];
    *(a1 + 184) = *(a2 + 184);
    a1[200] = a2[200];
    v8 = *(a2 + 14);
    *(a1 + 13) = *(a2 + 13);
    *(a1 + 14) = v8;
    *(a1 + 30) = *(a2 + 30);
    *(a1 + 33) = *(a2 + 33);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 17) = *(a2 + 17);
    v9 = type metadata accessor for NLContextUpdate(0);
    v10 = v9[32];
    v11 = sub_1DD0DD72C();
    if (__swift_getEnumTagSinglePayload(&a2[v10], 1, v11))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
      memcpy(&a1[v10], &a2[v10], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
      __swift_storeEnumTagSinglePayload(&a1[v10], 0, 1, v11);
    }

    a1[v9[33]] = a2[v9[33]];
    a1[v9[34]] = a2[v9[34]];
    *&a1[v9[35]] = *&a2[v9[35]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v13 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v13);
  }
}

char *assignWithTake for FlowOutputAtom(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCD455B0(a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 3) = *(a2 + 3);
    v6 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v6;
    *(a1 + 8) = *(a2 + 8);
    a1[72] = a2[72];
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 13) = *(a2 + 13);
    *(a1 + 7) = *(a2 + 7);
    *(a1 + 16) = *(a2 + 16);
    a1[136] = a2[136];
    v7 = *(a2 + 10);
    *(a1 + 9) = *(a2 + 9);
    *(a1 + 10) = v7;
    a1[176] = a2[176];
    *(a1 + 184) = *(a2 + 184);
    a1[200] = a2[200];
    v8 = *(a2 + 14);
    *(a1 + 13) = *(a2 + 13);
    *(a1 + 14) = v8;
    *(a1 + 30) = *(a2 + 30);
    *(a1 + 33) = *(a2 + 33);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 17) = *(a2 + 17);
    v9 = type metadata accessor for NLContextUpdate(0);
    v10 = v9[32];
    v11 = sub_1DD0DD72C();
    if (__swift_getEnumTagSinglePayload(&a2[v10], 1, v11))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
      memcpy(&a1[v10], &a2[v10], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
      __swift_storeEnumTagSinglePayload(&a1[v10], 0, 1, v11);
    }

    a1[v9[33]] = a2[v9[33]];
    a1[v9[34]] = a2[v9[34]];
    *&a1[v9[35]] = *&a2[v9[35]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t sub_1DCD45AA0(uint64_t a1)
{
  result = type metadata accessor for NLContextUpdate(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_1DCD45B38()
{
  OUTLINED_FUNCTION_42();
  v1[19] = v2;
  v1[20] = v0;
  type metadata accessor for NLContextUpdate(0);
  v1[21] = swift_task_alloc();
  v3 = type metadata accessor for FlowOutputAtom(0);
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCD45C38, 0, 0);
}

uint64_t sub_1DCD45C38()
{
  sub_1DCB17CA0(*(v0 + 152), v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  type metadata accessor for FlowOutput();
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 136);
    *(v0 + 216) = v1;
    if (qword_1EDE4F900 != -1)
    {
LABEL_30:
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v2 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v2, qword_1EDE57E00);
    v3 = sub_1DD0DD8EC();
    v4 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v6, v7, "Warning: Deprecated FlowOutput being used. Domains should use AceOutput instead.");
      MEMORY[0x1E12A8390](v5, -1, -1);
    }

    v8 = MEMORY[0x1E69E7CC0];
    *(v0 + 144) = MEMORY[0x1E69E7CC0];
    v9 = *(v1 + 16);
    *(v0 + 224) = v9;
    v10 = *(v9 + 16);
    *(v0 + 232) = v10;
    if (v10)
    {
      *(v0 + 304) = *(*(v0 + 184) + 80);

      v11 = 0;
      while (1)
      {
        *(v0 + 248) = v8;
        *(v0 + 256) = v8;
        OUTLINED_FUNCTION_15_33(v11);
        if (v13)
        {
          __break(1u);
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_6_39(v12);
        v14 = OUTLINED_FUNCTION_20();
        sub_1DCCCF36C(v14, v15);
        if (OUTLINED_FUNCTION_18_27() == 1)
        {
          break;
        }

        v1 = *(v0 + 176);
        OUTLINED_FUNCTION_0_50();
        sub_1DCD46838(v16, v17);
        v18 = OUTLINED_FUNCTION_20();
        sub_1DCCCF36C(v18, v19);
        if (OUTLINED_FUNCTION_18_27() == 1)
        {
          v20 = OUTLINED_FUNCTION_3_56();
          sub_1DCD46838(v20, v21);
          v22 = OUTLINED_FUNCTION_20();
          sub_1DCD46838(v22, v23);
        }

        else
        {
          v24 = **(v0 + 192);
          MEMORY[0x1E12A6920]();
          OUTLINED_FUNCTION_14_34();
          if (v13)
          {
            OUTLINED_FUNCTION_12_32();
          }

          OUTLINED_FUNCTION_16_23();

          OUTLINED_FUNCTION_0_50();
          sub_1DCD46838(v1, v25);
          v8 = *(v0 + 144);
        }

        v11 = *(v0 + 240) + 1;
        if (v11 == *(v0 + 232))
        {

          goto LABEL_26;
        }
      }

      sub_1DCD467D4(*(v0 + 200), *(v0 + 168));
      swift_getObjectType();
      OUTLINED_FUNCTION_7_36();
      v37 = swift_task_alloc();
      *(v0 + 264) = v37;
      *v37 = v0;
      v38 = OUTLINED_FUNCTION_1_54(v37);

      return v39(v38);
    }

    else
    {
LABEL_26:
      OUTLINED_FUNCTION_19_24();
      v40 = swift_task_alloc();
      *(v0 + 288) = v40;
      *v40 = v0;
      OUTLINED_FUNCTION_2_52(v40);

      return AceServiceInvokerAsync.submitAllSerial(_:)();
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v26 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v26, qword_1EDE57E00);
    v27 = sub_1DD0DD8EC();
    v28 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v30, v31, "Output is not a FlowOutput! handle() should have never been called.");
      MEMORY[0x1E12A8390](v29, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD0E07C0;
    *(inited + 32) = 0x6567617373654DLL;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0xD000000000000078;
    *(inited + 56) = 0x80000001DD11A9A0;
    v33 = sub_1DD0DDE9C();
    v34 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1DCF7E450(0xD000000000000016, 0x80000001DD1126E0, 1002, v33);
    swift_willThrow();
    OUTLINED_FUNCTION_11_34();

    OUTLINED_FUNCTION_29();

    return v35();
  }
}

uint64_t sub_1DCD46118()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v2 + 272) = v0;

  if (v0)
  {

    v4 = sub_1DCD4660C;
  }

  else
  {
    v4 = sub_1DCD46234;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1DCD46234()
{
  v1 = *(v0 + 208);
  OUTLINED_FUNCTION_4_51();
  sub_1DCD46838(v2, v3);
  OUTLINED_FUNCTION_0_50();
  sub_1DCD46838(v1, v4);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  while (1)
  {
    v7 = *(v0 + 240) + 1;
    if (v7 == *(v0 + 232))
    {
      break;
    }

    *(v0 + 248) = v6;
    *(v0 + 256) = v5;
    OUTLINED_FUNCTION_15_33(v7);
    if (v9)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_6_39(v8);
    v10 = OUTLINED_FUNCTION_20();
    sub_1DCCCF36C(v10, v11);
    if (OUTLINED_FUNCTION_18_27() == 1)
    {
      sub_1DCD467D4(*(v0 + 200), *(v0 + 168));
      swift_getObjectType();
      OUTLINED_FUNCTION_7_36();
      v24 = swift_task_alloc();
      *(v0 + 264) = v24;
      *v24 = v0;
      v25 = OUTLINED_FUNCTION_1_54(v24);

      v26(v25);
      return;
    }

    v12 = *(v0 + 176);
    OUTLINED_FUNCTION_0_50();
    sub_1DCD46838(v13, v14);
    v15 = OUTLINED_FUNCTION_20();
    sub_1DCCCF36C(v15, v16);
    if (OUTLINED_FUNCTION_18_27() == 1)
    {
      v17 = OUTLINED_FUNCTION_3_56();
      sub_1DCD46838(v17, v18);
      v19 = OUTLINED_FUNCTION_20();
      sub_1DCD46838(v19, v20);
    }

    else
    {
      v21 = **(v0 + 192);
      MEMORY[0x1E12A6920]();
      OUTLINED_FUNCTION_14_34();
      if (v9)
      {
        OUTLINED_FUNCTION_12_32();
      }

      OUTLINED_FUNCTION_16_23();

      OUTLINED_FUNCTION_0_50();
      sub_1DCD46838(v12, v22);
      v6 = *(v0 + 144);
      v5 = v6;
    }
  }

  OUTLINED_FUNCTION_19_24();
  v23 = swift_task_alloc();
  *(v0 + 288) = v23;
  *v23 = v0;
  OUTLINED_FUNCTION_2_52(v23);

  AceServiceInvokerAsync.submitAllSerial(_:)();
}

uint64_t sub_1DCD4646C()
{
  OUTLINED_FUNCTION_42();
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v2 = v5;
  *(v5 + 296) = v0;

  if (v0)
  {
    v3 = sub_1DCD466AC;
  }

  else
  {

    v3 = sub_1DCD4657C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DCD4657C()
{

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCD4660C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);

  OUTLINED_FUNCTION_4_51();
  sub_1DCD46838(v2, v3);
  OUTLINED_FUNCTION_0_50();
  sub_1DCD46838(v1, v4);
  OUTLINED_FUNCTION_11_34();

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCD466AC()
{

  OUTLINED_FUNCTION_11_34();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCD4673C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB22EC8;

  return sub_1DCD45B38();
}

uint64_t sub_1DCD467D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLContextUpdate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCD46838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static FlowOutputHelper.makeFlowOutput(atoms:flowActivity:)(uint64_t a1, uint64_t a2)
{
  sub_1DCB09910(a2, v4, &unk_1ECCA3280, &unk_1DD0E23D0);
  type metadata accessor for FlowOutput();
  swift_allocObject();

  return FlowOutput.init(atoms:flowActivity:)(v2, v4);
}

uint64_t sub_1DCD46914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28F8, &qword_1DD0E6F08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCD46988(void *a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v41 = a2;
  v45 = a1;
  v3 = type metadata accessor for FlowOutputAtom(0);
  v44 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28F8, &qword_1DD0E6F08);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v40 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA4EA0, &qword_1DD0F02C8);
  v24 = *(v7 + 72);
  v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DD0E32B0;
  v42 = v26;
  v27 = v26 + v25;
  v28 = v3;
  sub_1DCB09910(v41, v23, &unk_1ECCA3270, &qword_1DD0E0F70);
  v29 = 1;
  if (__swift_getEnumTagSinglePayload(v23, 1, v15) != 1)
  {
    sub_1DCD4870C(v23, v19, type metadata accessor for NLContextUpdate);
    sub_1DCB46478(v19, v27);
    swift_storeEnumTagMultiPayload();
    sub_1DCB41F98(v19);
    v29 = 0;
  }

  __swift_storeEnumTagSinglePayload(v27, v29, 1, v3);
  v30 = v45;
  *(v27 + v24) = v45;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27 + v24, 0, 1, v3);
  v31 = v30;
  v32 = 0;
  v33 = 0;
  v34 = MEMORY[0x1E69E7CC0];
  v45 = v3;
  do
  {
    v35 = v32;
    sub_1DCB09910(v27 + v33 * v24, v14, &qword_1ECCA28F8, &qword_1DD0E6F08);
    sub_1DCD46914(v14, v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v28) == 1)
    {
      sub_1DCB0E9D8(v11, &qword_1ECCA28F8, &qword_1DD0E6F08);
    }

    else
    {
      sub_1DCD4870C(v11, v46, type metadata accessor for FlowOutputAtom);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DCE19828();
        v34 = v37;
      }

      v36 = *(v34 + 16);
      if (v36 >= *(v34 + 24) >> 1)
      {
        sub_1DCE19828();
        v34 = v38;
      }

      *(v34 + 16) = v36 + 1;
      sub_1DCD4870C(v46, v34 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v36, type metadata accessor for FlowOutputAtom);
      v28 = v45;
    }

    v32 = 1;
    v33 = 1;
  }

  while ((v35 & 1) == 0);
  swift_setDeallocating();
  sub_1DCC657E4();
  sub_1DCB09910(v43, v47, &unk_1ECCA3280, &unk_1DD0E23D0);
  type metadata accessor for FlowOutput();
  swift_allocObject();
  return FlowOutput.init(atoms:flowActivity:)(v34, v47);
}

void static FlowOutputHelper.makeCancellationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:canUseServerTTS:flowActivity:)(uint64_t a1, void *a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1DCD47034(a2);
}

void sub_1DCD47034(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BE8, &unk_1DD0EB600);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 184))(v4, v5);
  sub_1DD0DCFCC();
}

unint64_t sub_1DCD4737C(uint64_t a1, unint64_t a2, char a3)
{
  v3 = a2;
  v4 = sub_1DCB08B14(a2);
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v4 == v5)
    {
      v11 = sub_1DCB08B14(a1);
      v47 = sub_1DCB08B14(v3);
      if (v47 < v11)
      {
        if (qword_1EDE4F900 != -1)
        {
          swift_once();
        }

        v12 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v12, qword_1EDE57E00);

        v13 = sub_1DD0DD8EC();
        v14 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 134218240;
          *(v15 + 4) = sub_1DCB08B14(a1);

          *(v15 + 12) = 2048;
          *(v15 + 14) = sub_1DCB08B14(v3);

          _os_log_impl(&dword_1DCAFC000, v13, v14, "FlowOutputHelper is applying dialogs to snippets but there are %ld dialogs and %ld snippets. We will attempt to attach dialogs to as many snippets as possible and add empty AceViews as needed.", v15, 0x16u);
          MEMORY[0x1E12A8390](v15, -1, -1);
        }

        else
        {
        }
      }

      if (v11 < 0)
      {
        goto LABEL_66;
      }

      v20 = MEMORY[0x1E69E7CC0];
      if (v11)
      {
        v49 = MEMORY[0x1E69E7CC0];
        sub_1DD0DED0C();
        v21 = a1 & 0xC000000000000001;
        v22 = v11;
        v23 = 4;
        v46 = v22;
        do
        {
          if (v23 - 4 >= v47)
          {
            v29 = [objc_allocWithZone(MEMORY[0x1E69C7708]) init];
            if (v21)
            {
              v30 = MEMORY[0x1E12A72C0](v23 - 4, a1);
            }

            else
            {
              v30 = *(a1 + 8 * v23);
            }

            v31 = v30;
            [v29 setDialog_];

            sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
            v32 = sub_1DD0DE8CC();
            [v29 setListenAfterSpeaking_];
          }

          else
          {
            if (v6)
            {
              v24 = MEMORY[0x1E12A72C0](v23 - 4, v3);
            }

            else
            {
              if ((v23 - 4) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_65;
              }

              v24 = *(v3 + 8 * v23);
            }

            v25 = v24;
            if (v21)
            {
              v26 = MEMORY[0x1E12A72C0](v23 - 4, a1);
            }

            else
            {
              v26 = *(a1 + 8 * v23);
            }

            v27 = v26;
            [v25 setDialog_];

            if (v6)
            {
              v28 = MEMORY[0x1E12A72C0](v23 - 4, v3);
            }

            else
            {
              v28 = *(v3 + 8 * v23);
            }

            v33 = v28;
            sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
            v34 = sub_1DD0DE8CC();
            [v33 setListenAfterSpeaking_];

            if (v6)
            {
              MEMORY[0x1E12A72C0](v23 - 4, v3);
            }

            else
            {
              v35 = *(v3 + 8 * v23);
            }
          }

          sub_1DD0DECDC();
          sub_1DD0DED1C();
          sub_1DD0DED2C();
          sub_1DD0DECEC();
          ++v23;
          --v22;
        }

        while (v22);
        v20 = v49;
        v11 = v46;
        v7 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      if (v11 >= v47)
      {
        return v20;
      }

      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v36 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v36, qword_1EDE57E00);

      v37 = sub_1DD0DD8EC();
      v38 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134218240;
        *(v39 + 4) = sub_1DCB08B14(a1);

        *(v39 + 12) = 2048;
        *(v39 + 14) = sub_1DCB08B14(v3);

        _os_log_impl(&dword_1DCAFC000, v37, v38, "FlowOutputHelper received %ld dialogs but there are %ld snippets. Adding remaining snippets without dialog.", v39, 0x16u);
        MEMORY[0x1E12A8390](v39, -1, -1);
      }

      else
      {
      }

      if (v4 < v11)
      {
        __break(1u);
      }

      else
      {
        sub_1DCF41428();
        result = sub_1DCF41428();
        if (!v6 || v11 == v4)
        {
        }

        else
        {
          if (v11 >= v4)
          {
            __break(1u);
            return result;
          }

          sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);

          v41 = v11;
          do
          {
            v42 = v41 + 1;
            sub_1DD0DEC4C();
            v41 = v42;
          }

          while (v4 != v42);
        }

        if (!(v3 >> 62))
        {
          v43 = v7 + 32;
          v44 = (2 * v4) | 1;
LABEL_61:
          sub_1DCBB92F8(v7, v43, v11, v44);
          return v20;
        }
      }

      v7 = sub_1DD0DEE4C();
      v11 = v45;
      goto LABEL_61;
    }

    if (v6)
    {
      v8 = MEMORY[0x1E12A72C0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_64;
      }

      v8 = *(v3 + 8 * v5 + 32);
    }

    v9 = v8;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v10 = [v8 dialog];

    ++v5;
    if (v10)
    {

      if (qword_1EDE4F900 != -1)
      {
        goto LABEL_67;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  swift_once();
LABEL_16:
  v16 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v16, qword_1EDE57E00);
  v17 = sub_1DD0DD8EC();
  v18 = sub_1DD0DE6CC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1DCAFC000, v17, v18, "FlowOutputHelper detected SADialogs on one or more snippets. Declining to modify provided snippets", v19, 2u);
    MEMORY[0x1E12A8390](v19, -1, -1);
  }

  return v3;
}

uint64_t static FlowOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:preCommandSubmissionContextUpdate:postCommandSubmissionContextUpdate:flowActivity:)(void *__src, int a2, int a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a6;
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DCB10E5C(0, &unk_1EDE46088, 0x1E69C77A0);
  v14 = sub_1DCF73E90(__dst, v11);
  v15 = sub_1DCD4737C(v14, a4, a5);

  sub_1DCB10E5C(0, &unk_1EDE46230, 0x1E69C7AF8);
  v16 = sub_1DD0DDFBC();
  v18 = sub_1DCF77328(v16, v17, v15, MEMORY[0x1E69E7CC0], 0);

  v19 = v18;
  v20 = sub_1DCD47C08(v18, a7, a8);

  sub_1DCB09910(a9, __dst, &unk_1ECCA3280, &unk_1DD0E23D0);
  type metadata accessor for FlowOutput();
  swift_allocObject();
  v21 = FlowOutput.init(atoms:flowActivity:)(v20, __dst);

  return v21;
}

uint64_t sub_1DCD47C08(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NLContextUpdate(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v30 - v16;
  sub_1DCB09910(a2, &v30 - v16, &unk_1ECCA3270, &qword_1DD0E0F70);
  if (__swift_getEnumTagSinglePayload(v17, 1, v6) == 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
    if (a1)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2478, &unk_1DD0F9870);
      v19 = *(type metadata accessor for FlowOutputAtom(0) - 8);
      v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1DD0E07C0;
      *(v21 + v20) = a1;
      swift_storeEnumTagMultiPayload();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DCD4870C(v17, v9, type metadata accessor for NLContextUpdate);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2478, &unk_1DD0F9870);
    v22 = *(type metadata accessor for FlowOutputAtom(0) - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DD0E07C0;
    sub_1DCB46478(v9, v18 + v23);
    swift_storeEnumTagMultiPayload();
    sub_1DCB41F98(v9);
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v31 = v18;
  v24 = a1;
  sub_1DCBB984C(v21);
  v25 = v31;
  sub_1DCB09910(a3, v14, &unk_1ECCA3270, &qword_1DD0E0F70);
  if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1DCD4870C(v14, v9, type metadata accessor for NLContextUpdate);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2478, &unk_1DD0F9870);
    v27 = *(type metadata accessor for FlowOutputAtom(0) - 8);
    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1DD0E07C0;
    sub_1DCB46478(v9, v26 + v28);
    swift_storeEnumTagMultiPayload();
    sub_1DCB41F98(v9);
  }

  v31 = v25;
  sub_1DCBB984C(v26);
  return v31;
}

uint64_t static FlowOutputHelper.makeClarificationViewOutput(aceViews:nlContextUpdate:flowActivity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DCB10E5C(0, &unk_1EDE46230, 0x1E69C7AF8);
  v5 = sub_1DD0DDFBC();
  v7 = sub_1DCF77328(v5, v6, a1, MEMORY[0x1E69E7CC0], 0);

  OUTLINED_FUNCTION_0_51(v7);

  return a3;
}

uint64_t sub_1DCD4870C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for FlowOutputHelper(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCD4881C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1DCD488B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 0x28uLL)
  {
    v5 = 40;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  if ((*(v4 + 80) & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v7 = *(a2 + v5);
  if (v7 >= 2)
  {
    v7 = *a2 + 2;
  }

  if (v7 == 1)
  {
    (*(v4 + 16))(a1);
    *(a1 + v5) = 1;
  }

  else
  {
    v8 = *(a2 + 3);
    *(a1 + 24) = v8;
    (**(v8 - 8))(a1);
    *(a1 + v5) = 0;
  }

  return a1;
}

uint64_t sub_1DCD489E4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 0x28)
  {
    v2 = 40;
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    switch(v5)
    {
      case 1:
        v6 = *a1;
        goto LABEL_12;
      case 2:
        v6 = *a1;
        goto LABEL_12;
      case 3:
        v6 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v6 = *a1;
LABEL_12:
        v7 = (v6 | (v4 << (8 * v2))) + 2;
        v3 = v6 + 2;
        if (v2 < 4)
        {
          v3 = v7;
        }

        break;
      default:
        break;
    }
  }

  if (v3 == 1)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  else
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t sub_1DCD48ACC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x28uLL)
  {
    v4 = 40;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        v5 = v8 + 2;
        if (v4 < 4)
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1);
    v10 = 1;
  }

  else
  {
    v11 = *(a2 + 24);
    *(a1 + 24) = v11;
    (**(v11 - 8))(a1);
    v10 = 0;
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_1DCD48C20(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 0x28uLL)
    {
      v7 = 40;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      switch(v10)
      {
        case 1:
          v11 = *a1;
          goto LABEL_14;
        case 2:
          v11 = *a1;
          goto LABEL_14;
        case 3:
          v11 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v11 = *a1;
LABEL_14:
          v12 = (v11 | (v9 << (8 * v7))) + 2;
          v8 = v11 + 2;
          if (v7 < 4)
          {
            v8 = v12;
          }

          break;
        default:
          break;
      }
    }

    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a2;
          goto LABEL_28;
        case 2:
          v16 = *a2;
          goto LABEL_28;
        case 3:
          v16 = *a2 | (a2[2] << 16);
          goto LABEL_28;
        case 4:
          v16 = *a2;
LABEL_28:
          v17 = (v16 | (v14 << (8 * v7))) + 2;
          v13 = v16 + 2;
          if (v7 < 4)
          {
            v13 = v17;
          }

          break;
        default:
          break;
      }
    }

    if (v13 == 1)
    {
      (*(v6 + 16))(a1, a2, v5);
      v18 = 1;
    }

    else
    {
      v19 = *(a2 + 3);
      *(a1 + 3) = v19;
      *(a1 + 4) = *(a2 + 4);
      (**(v19 - 8))(a1, a2);
      v18 = 0;
    }

    a1[v7] = v18;
  }

  return a1;
}

uint64_t sub_1DCD48E48(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x28uLL)
  {
    v4 = 40;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        v5 = v8 + 2;
        if (v4 < 4)
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    (*(*(*(a3 + 16) - 8) + 32))(a1);
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v11 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v11;
    *(a1 + 32) = *(a2 + 4);
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_1DCD48F74(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 0x28uLL)
    {
      v7 = 40;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      switch(v10)
      {
        case 1:
          v11 = *a1;
          goto LABEL_14;
        case 2:
          v11 = *a1;
          goto LABEL_14;
        case 3:
          v11 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v11 = *a1;
LABEL_14:
          v12 = (v11 | (v9 << (8 * v7))) + 2;
          v8 = v11 + 2;
          if (v7 < 4)
          {
            v8 = v12;
          }

          break;
        default:
          break;
      }
    }

    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a2;
          goto LABEL_28;
        case 2:
          v16 = *a2;
          goto LABEL_28;
        case 3:
          v16 = *a2 | (a2[2] << 16);
          goto LABEL_28;
        case 4:
          v16 = *a2;
LABEL_28:
          v17 = (v16 | (v14 << (8 * v7))) + 2;
          v13 = v16 + 2;
          if (v7 < 4)
          {
            v13 = v17;
          }

          break;
        default:
          break;
      }
    }

    if (v13 == 1)
    {
      (*(v6 + 32))(a1, a2, v5);
      v18 = 1;
    }

    else
    {
      v18 = 0;
      v19 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v19;
      *(a1 + 4) = *(a2 + 4);
    }

    a1[v7] = v18;
  }

  return a1;
}

uint64_t sub_1DCD4916C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 40;
  if (*(v3 + 64) > 0x28uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1DCD49290(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x28)
  {
    v5 = 40;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1DCD49454(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 40;
  if (*(v2 + 64) > 0x28uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    switch(v6)
    {
      case 1:
        v7 = *a1;
        goto LABEL_12;
      case 2:
        v7 = *a1;
        goto LABEL_12;
      case 3:
        v7 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v7 = *a1;
LABEL_12:
        v8 = (v7 | (v5 << (8 * v3))) + 2;
        LODWORD(v4) = v7 + 2;
        if (v3 >= 4)
        {
          v4 = v4;
        }

        else
        {
          v4 = v8;
        }

        break;
      default:
        return v4;
    }
  }

  return v4;
}

void sub_1DCD494F8(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x28uLL)
  {
    v4 = 40;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 1)
  {
    v5 = a2 - 2;
    if (v4 < 4)
    {
      a1[v4] = (v5 >> (8 * v4)) + 2;
      if (v4)
      {
        v6 = v5 & ~(-1 << (8 * v4));
        bzero(a1, v4);
        if (v4 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v4 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v5;
        }
      }
    }

    else
    {
      a1[v4] = 2;
      bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    a1[v4] = a2;
  }
}

uint64_t sub_1DCD495EC@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a4;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v15, v8);
    a1(v12);
    result = (*(v9 + 8))(v12, v8);
    if (v5)
    {
      return result;
    }
  }

  else
  {
    sub_1DCAFF9E8(v15, a5);
  }

  type metadata accessor for _FlowPlanEvent(0, v22, v19, v20);
  return swift_storeEnumTagMultiPayload();
}

Swift::Void __swiftcall FlowPlugin.warmup()()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  oslog = sub_1DD0DD8EC();
  v1 = sub_1DD0DE6DC();
  if (os_log_type_enabled(oslog, v1))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v2, v3, "No-op warming...", v4, v5, v6, v7, v8, oslog);
    OUTLINED_FUNCTION_80();
  }
}

Swift::Void __swiftcall FlowPlugin.warmup(refId:)(Swift::String refId)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  oslog = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6DC();
  if (os_log_type_enabled(oslog, v2))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v3, v4, "No-op warming...", v5, v6, v7, v8, v9, oslog);
    OUTLINED_FUNCTION_80();
  }
}

void *FlowPlugin.makeFlowFor(parse:)()
{
  type metadata accessor for AnyFlow();
  swift_allocObject();
  return sub_1DCBD23E0();
}

uint64_t sub_1DCD49AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[4] = a2;
  a4[5] = a3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4 + 1);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a2);
  v8 = type metadata accessor for FlowSearchResult(0);
  *(a4 + *(v8 + 28)) = 1;
  v9 = *(v8 + 24);
  v10 = type metadata accessor for NamedParseTransformer(0);

  return __swift_storeEnumTagSinglePayload(a4 + v9, 1, 1, v10);
}

uint64_t sub_1DCD49B68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD0, &unk_1DD0EFEB0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  v4 = type metadata accessor for FlowSearchResult(0);
  __swift_allocate_value_buffer(v4, qword_1ECCA4F28);
  v5 = __swift_project_value_buffer(v4, qword_1ECCA4F28);
  v6 = type metadata accessor for NamedParseTransformer(0);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  v5[1] = 0u;
  v5[2] = 0u;
  *v5 = 0u;
  *(v5 + *(v4 + 28)) = 1;
  return sub_1DCD4A1E8(v3, v5 + *(v4 + 24));
}

uint64_t static FlowSearchResult.noFlow.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECCA12C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FlowSearchResult(0);
  v3 = __swift_project_value_buffer(v2, qword_1ECCA4F28);
  return sub_1DCD4A18C(v3, a1, type metadata accessor for FlowSearchResult);
}

uint64_t static FlowSearchResult.flow<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  return sub_1DCD49AB8(v8, a2, a3, a4);
}

uint64_t static FlowSearchResult.reform(transformer:exclude:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD0, &unk_1DD0EFEB0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - v8;
  sub_1DCD4A18C(a1, &v13 - v8, type metadata accessor for NamedParseTransformer);
  v10 = type metadata accessor for NamedParseTransformer(0);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  v11 = type metadata accessor for FlowSearchResult(0);
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *(a3 + *(v11 + 28)) = a2;
  return sub_1DCD4A1E8(v9, a3 + *(v11 + 24));
}

void SentinalFlow.execute(completion:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v17 - v6;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v8 = sub_1DD0DD8FC();
  v9 = __swift_project_value_buffer(v8, qword_1EDE57E00);
  v10 = *(v8 - 8);
  (*(v10 + 16))(v7, v9, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_1DCB4F1DC(v7, v4, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    sub_1DCBCF738(v4);
  }

  else
  {
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v13 = 136315650;
      v14 = sub_1DD0DEC3C();
      v16 = sub_1DCB10E9C(v14, v15, &v18);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2048;
      *(v13 + 14) = 191;
      *(v13 + 22) = 2080;
      *(v13 + 24) = sub_1DCB10E9C(0xD000000000000022, 0x80000001DD11A420, &v18);
      _os_log_impl(&dword_1DCAFC000, v11, v12, "FatalError at %s:%lu - %s", v13, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v10 + 8))(v4, v8);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000022, 0x80000001DD11A420);
}

uint64_t sub_1DCD4A18C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DCD4A1E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD0, &unk_1DD0EFEB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void initializeBufferWithCopyOfBuffer for FlowSearchResult(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  *a1 = *a2;
  if ((v3 & 0x20000) == 0)
  {
    sub_1DD0DCF8C();
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCD4AD28(uint64_t a1)
{
  v2 = type metadata accessor for NamedParseTransformer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithTake for FlowSearchResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a3 + 24);
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = type metadata accessor for NamedParseTransformer(0);
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
    if (__swift_getEnumTagSinglePayload(v8, 1, v11))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
      memcpy(v7, v8, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(*(v11 - 8) + 32))(v7, v8, v11);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
    }

    sub_1DD0DCF7C();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD0, &unk_1DD0EFEB0);
  memcpy(v7, v8, *(*(v10 - 8) + 64));
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t *assignWithTake for FlowSearchResult(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 1;
  *a1 = *a2;

  if (a1[4])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 1);
  }

  v7 = *(v6 + 1);
  *(a1 + 1) = *v6;
  *(a1 + 3) = v7;
  a1[5] = v6[4];
  v8 = *(a3 + 24);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = type metadata accessor for NamedParseTransformer(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v11);
  v13 = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (!EnumTagSinglePayload)
  {
    if (v13)
    {
      sub_1DCD4AD28(v9);
      goto LABEL_9;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
    v18 = __swift_getEnumTagSinglePayload(v9, 1, v17);
    v19 = __swift_getEnumTagSinglePayload(v10, 1, v17);
    if (v18)
    {
      if (!v19)
      {
        (*(*(v17 - 8) + 32))(v9, v10, v17);
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v17);
        goto LABEL_18;
      }
    }

    else
    {
      v21 = *(v17 - 8);
      if (!v19)
      {
        (*(v21 + 40))(v9, v10, v17);
LABEL_18:
        sub_1DD0DCF7C();
      }

      (*(v21 + 8))(v9, v17);
    }

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
    memcpy(v9, v10, *(*(v22 - 8) + 64));
    goto LABEL_18;
  }

  if (!v13)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
    if (__swift_getEnumTagSinglePayload(v10, 1, v14))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
      memcpy(v9, v10, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(*(v14 - 8) + 32))(v9, v10, v14);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
    }

    sub_1DD0DCF7C();
  }

LABEL_9:
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD0, &unk_1DD0EFEB0) - 8) + 64);
  memcpy(v9, v10, v16);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

void sub_1DCD4B490(uint64_t a1)
{
  sub_1DCD4B538(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1DCD4B538(uint64_t a1)
{
  if (!qword_1EDE48388[0])
  {
    type metadata accessor for NamedParseTransformer(255);
    v1 = sub_1DD0DE97C();
    if (!v2)
    {
      atomic_store(v1, qword_1EDE48388);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SentinalFlow(_BYTE *result, int a2, int a3)
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

SiriKitFlow::FlowPluginBundleImpl __swiftcall FlowPluginBundleImpl.init(bundlePath:pluginCacheKeys:)(Swift::String bundlePath, Swift::OpaquePointer pluginCacheKeys)
{
  v15 = bundlePath;
  v4 = v2;
  v5 = 0;
  v6 = *(pluginCacheKeys._rawValue + 2);
  v7 = pluginCacheKeys._rawValue + 40;
  countAndFlagsBits = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = &v7[16 * v5]; ; i += 2)
  {
    if (v6 == v5)
    {

      *v4 = v15;
      v4[1]._countAndFlagsBits = countAndFlagsBits;
      goto LABEL_14;
    }

    if (v5 >= *(pluginCacheKeys._rawValue + 2))
    {
      break;
    }

    v11 = *(i - 1);
    v10 = *i;

    sub_1DCDA5A0C(v11, v10, v20);
    if (v21 != 1)
    {
      OUTLINED_FUNCTION_0_52();
      bundlePath._countAndFlagsBits = swift_isUniquelyReferenced_nonNull_native();
      if ((bundlePath._countAndFlagsBits & 1) == 0)
      {
        sub_1DCE18938();
        countAndFlagsBits = bundlePath._countAndFlagsBits;
      }

      v12 = *(countAndFlagsBits + 16);
      if (v12 >= *(countAndFlagsBits + 24) >> 1)
      {
        sub_1DCE18938();
        countAndFlagsBits = bundlePath._countAndFlagsBits;
      }

      ++v5;
      *v17 = v19[0];
      *&v17[9] = *(v19 + 9);
      v13 = v18[0];
      v16 = v18[1];
      *(countAndFlagsBits + 16) = v12 + 1;
      v14 = (countAndFlagsBits + (v12 << 6));
      *(v14 + 73) = *&v17[9];
      v14[3] = v16;
      v14[4] = *v17;
      v14[2] = v13;
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_0_52();
    bundlePath._countAndFlagsBits = sub_1DCD4B8A8(v18);
    ++v5;
  }

  __break(1u);
LABEL_14:
  result.bundlePath = bundlePath;
  result.supportedTopics = pluginCacheKeys;
  return result;
}

SiriKitFlow::FlowPluginBundleImpl __swiftcall FlowPluginBundleImpl.init(bundlePath:supportedTopics:)(Swift::String bundlePath, Swift::OpaquePointer supportedTopics)
{
  *v2 = bundlePath;
  *(v2 + 16) = supportedTopics;
  result.bundlePath = bundlePath;
  result.supportedTopics = supportedTopics;
  return result;
}

uint64_t sub_1DCD4B84C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1DCD4B8A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4F40, &qword_1DD0F0410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *assignWithCopy for FlowPluginBundleImpl(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for Parse.DirectInvocation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t destroy for FlowPluginBundleCache()
{
}

uint64_t *initializeWithCopy for FlowPluginBundleCache(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  return a1;
}

uint64_t *assignWithCopy for FlowPluginBundleCache(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for FlowPluginBundleCache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for FlowPluginBundleCache(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowPluginBundleCache(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DCD4BC14(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = *(result + 16);
  do
  {
    if (v8 == v7)
    {
      break;
    }

    v9 = *(sub_1DD0DAECC() - 8);
    sub_1DCD4DC04((result + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++), a2, a3);
  }

  while (!v3);
}

uint64_t sub_1DCD4BCE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v51 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v50 = &v50 - v9;
  v10 = sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  sub_1DD0DE7FC();
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  sub_1DD0DD84C();
  sub_1DD0DD81C();
  v18 = *(v12 + 8);
  v18(v17, v10);
  v19 = [objc_opt_self() defaultManager];
  v20 = sub_1DD0DAE6C();
  v53[0] = 0;
  v21 = [v19 contentsOfDirectoryAtURL:v20 includingPropertiesForKeys:0 options:0 error:v53];

  v22 = v53[0];
  if (!v21)
  {
    v35 = v53[0];
    v36 = sub_1DD0DAE0C();

    swift_willThrow();
    sub_1DD0DE7EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1DD0E07C0;
    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = sub_1DCB34060();
    *(v37 + 32) = 0x6572756C696146;
    *(v37 + 40) = 0xE700000000000000;
    sub_1DD0DD84C();
    sub_1DD0DD80C();

    v18(v17, v10);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v38 = sub_1DD0DD8FC();
    v39 = __swift_project_value_buffer(v38, qword_1EDE57E00);
    v40 = *(v38 - 8);
    v41 = v50;
    (*(v40 + 16))(v50, v39, v38);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v38);
    v42 = v41;
    v43 = v51;
    sub_1DCBCF6C8(v42, v51);
    if (__swift_getEnumTagSinglePayload(v43, 1, v38) == 1)
    {
      sub_1DCBCF738(v51);
    }

    else
    {
      v44 = sub_1DD0DD8EC();
      v45 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_75(v45))
      {
        v46 = swift_slowAlloc();
        v53[0] = swift_slowAlloc();
        *v46 = 136315650;
        v47 = sub_1DD0DEC3C();
        v49 = sub_1DCB10E9C(v47, v48, v53);

        *(v46 + 4) = v49;
        *(v46 + 12) = 2048;
        *(v46 + 14) = 94;
        *(v46 + 22) = 2080;
        *(v46 + 24) = sub_1DCB10E9C(0xD000000000000036, 0x80000001DD11AA50, v53);
        _os_log_impl(&dword_1DCAFC000, v44, v45, "FatalError at %s:%lu - %s", v46, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_52();
      }

      (*(v40 + 8))(v51, v38);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000036, 0x80000001DD11AA50);
  }

  v23 = sub_1DD0DAECC();
  v24 = sub_1DD0DE2EC();
  v25 = v22;

  v53[0] = MEMORY[0x1E69E7CC8];
  v52 = MEMORY[0x1E69E7CC8];
  sub_1DCD4BC14(v24, v53, &v52);

  v26 = v53[0];
  v27 = v52;
  v28 = objc_opt_self();

  v29 = [v28 processInfo];
  v30 = [v29 operatingSystemVersionString];

  v31 = sub_1DD0DDFBC();
  v33 = v32;

  sub_1DCD4DA4C();
  result = (*(*(v23 - 8) + 8))(a1, v23);
  *a2 = v26;
  a2[1] = v31;
  a2[2] = v33;
  a2[3] = 0;
  a2[4] = v27;
  return result;
}

uint64_t sub_1DCD4C370()
{
  if (v0[4])
  {
    v1 = v0[4];
  }

  else
  {
    v1 = sub_1DCD4D678(v0);
    v0[4] = v1;
  }

  return v1;
}

uint64_t sub_1DCD4C3BC()
{
  if (v0[3])
  {
    v1 = v0[3];
  }

  else
  {
    sub_1DCD4D400(*v0);
    v1 = v2;
    v0[3] = v2;
  }

  return v1;
}

uint64_t sub_1DCD4C41C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1DD0DAECC();
  OUTLINED_FUNCTION_9();
  v79 = v4;
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  v17 = objc_opt_self();
  v18 = [v17 processInfo];

  sub_1DD0DE7FC();
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  sub_1DD0DD84C();
  sub_1DD0DD81C();
  v77 = v9;
  v76 = *(v11 + 8);
  v76(v16, v9);
  v19 = [objc_opt_self() defaultManager];
  sub_1DD0DAEAC();
  v20 = sub_1DD0DDF8C();

  v21 = [v19 fileExistsAtPath_];

  v78 = v3;
  if (!v21)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v22 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v22, qword_1EDE57E00);
    v23 = sub_1DD0DD8EC();
    v24 = sub_1DD0DE70C();
    v25 = v79;
    if (OUTLINED_FUNCTION_75(v24))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v26, v27, "Didn't find a bundle cache file, will compute a fresh cache file");
      OUTLINED_FUNCTION_52();
    }

    v28 = sub_1DD0DE7EC();
    OUTLINED_FUNCTION_11_35(v28);
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_4_53(v29, &dword_1DCAFC000, v30, "LoadFlowDelegatePluginCache");
    v31 = OUTLINED_FUNCTION_13_33();
    v76(v31, v77);
    goto LABEL_19;
  }

  sub_1DD0DAEDC();
  sub_1DD0DAC9C();
  swift_allocObject();
  sub_1DD0DAC8C();
  sub_1DCD4F198();
  sub_1DD0DAC7C();
  v74 = a1;

  v32 = v80;
  v33 = v81;
  v35 = v82;
  v34 = v83;
  v36 = v84;
  v37 = [v17 processInfo];
  v38 = [v37 operatingSystemVersionString];

  v39 = sub_1DD0DDFBC();
  v41 = v40;

  if (v81 == v39 && v82 == v41)
  {
  }

  else
  {
    OUTLINED_FUNCTION_21_17();
    v43 = sub_1DD0DF0AC();

    if ((v43 & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v44 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v44, qword_1EDE57E00);

      v45 = sub_1DD0DD8EC();
      v46 = sub_1DD0DE70C();

      v73 = v46;
      v47 = os_log_type_enabled(v45, v46);
      a1 = v74;
      if (v47)
      {
        v72 = v45;
        v48 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v48 = 136315394;

        v49 = OUTLINED_FUNCTION_21_17();
        v52 = sub_1DCB10E9C(v49, v50, v51);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2080;
        v53 = [v17 processInfo];
        v54 = [v53 operatingSystemVersionString];

        v55 = sub_1DD0DDFBC();
        v57 = v56;

        v58 = sub_1DCB10E9C(v55, v57, &v80);

        *(v48 + 14) = v58;
        _os_log_impl(&dword_1DCAFC000, v72, v73, "Cached FlowDelegate os version %s does not match current os version %s", v48, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_10_35();
      }

      else
      {
        OUTLINED_FUNCTION_10_35();
      }

      v25 = v79;
      v71 = sub_1DD0DE7EC();
      OUTLINED_FUNCTION_11_35(v71);
      OUTLINED_FUNCTION_3_58();
      OUTLINED_FUNCTION_4_53(v59, &dword_1DCAFC000, v60, "LoadFlowDelegatePluginCache");
      v61 = OUTLINED_FUNCTION_13_33();
      v76(v61, v77);
LABEL_19:
      v32 = 0;
      v33 = 0;
      v35 = 0;
      v34 = 0;
      v36 = 0;
      goto LABEL_20;
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v63 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v63, qword_1EDE57E00);
  v64 = sub_1DD0DD8EC();
  v65 = sub_1DD0DE70C();
  if (OUTLINED_FUNCTION_75(v65))
  {
    v66 = OUTLINED_FUNCTION_50_0();
    *v66 = 0;
    _os_log_impl(&dword_1DCAFC000, v64, v65, "Loaded bundle cache successfully", v66, 2u);
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_10_35();

  v67 = sub_1DD0DE7EC();
  OUTLINED_FUNCTION_11_35(v67);
  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_4_53(v68, &dword_1DCAFC000, v69, "LoadFlowDelegatePluginCache");
  v70 = OUTLINED_FUNCTION_13_33();
  v76(v70, v77);
  a1 = v74;
  v25 = v79;
LABEL_20:
  result = (*(v25 + 8))(a1, v78);
  *a2 = v32;
  a2[1] = v33;
  a2[2] = v35;
  a2[3] = v34;
  a2[4] = v36;
  return result;
}

uint64_t sub_1DCD4CF58(uint64_t a1)
{
  v1 = sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  sub_1DD0DE7FC();
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  sub_1DD0DD84C();
  OUTLINED_FUNCTION_5_45();
  sub_1DD0DD81C();
  v9 = *(v3 + 8);
  v9(v8, v1);
  sub_1DD0DACDC();
  swift_allocObject();
  sub_1DD0DACCC();
  sub_1DCD4F1EC();
  v10 = sub_1DD0DACBC();
  v12 = v11;
  sub_1DD0DAF4C();
  sub_1DD0DE7EC();
  sub_1DD0DD84C();
  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_5_45();
  sub_1DD0DD80C();
  v9(v8, v1);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v13 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v13, qword_1EDE57E00);
  v14 = sub_1DD0DD8EC();
  v15 = sub_1DD0DE70C();
  if (OUTLINED_FUNCTION_75(v15))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v16, v17, "Wrote bundle cache successfully");
    OUTLINED_FUNCTION_52();
  }

  sub_1DCB21A14(v10, v12);
}

uint64_t *sub_1DCD4D2F0@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v4 = *result;
  v5 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  v6 = *(*result + 16);
LABEL_2:
  v7 = (v4 + 40 + 16 * v3);
  while (1)
  {
    if (v6 == v3)
    {
      *a2 = v5;
      return result;
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    ++v3;
    v8 = v7 + 2;
    v10 = *(v7 - 1);
    v9 = *v7;
    sub_1DCD15A7C();

    result = sub_1DCD158F4(v10, v9);
    v7 = v8;
    if (result)
    {
      MEMORY[0x1E12A6920]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD0DE33C();
      }

      result = sub_1DD0DE3AC();
      v5 = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_1DCD4D400(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7CC8];
  v30 = MEMORY[0x1E69E7CC8];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v29 = *(*(a1 + 56) + 8 * v11);

    sub_1DCD4D2F0(&v29, v28);
    if (v2)
    {

      return;
    }

    v7 &= v7 - 1;

    v15 = v28[0];
    if (v28[0])
    {
      if (*(v3 + 24) <= *(v3 + 16))
      {
        sub_1DCC72268();
        v3 = v30;
      }

      sub_1DD0DF1DC();
      sub_1DD0DDF2C();
      v16 = sub_1DD0DF20C();
      v17 = v3 + 64;
      v18 = -1 << *(v3 + 32);
      v19 = v16 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v3 + 64 + 8 * (v19 >> 6))) == 0)
      {
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
          v25 = *(v17 + 8 * v20);
          if (v25 != -1)
          {
            v21 = __clz(__rbit64(~v25)) + (v20 << 6);
            goto LABEL_24;
          }
        }

        goto LABEL_28;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v3 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v26 = (*(v3 + 48) + 16 * v21);
      *v26 = v14;
      v26[1] = v13;
      *(*(v3 + 56) + 8 * v21) = v15;
      ++*(v3 + 16);
      v2 = 0;
    }

    else
    {

      v2 = 0;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1DCD4D678(uint64_t *a1)
{
  v1 = *a1;
  v14 = MEMORY[0x1E69E7CC8];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  for (i = 0; v4; i = v7)
  {
    v7 = i;
LABEL_8:
    v8 = __clz(__rbit64(v4)) | (v7 << 6);
    v9 = (*(v1 + 48) + 16 * v8);
    v10 = v9[1];
    v11 = *(*(v1 + 56) + 8 * v8);
    v13[0] = *v9;
    v13[1] = v10;
    v13[2] = v11;

    sub_1DCD4D7DC(&v14, v13);
    v4 &= v4 - 1;
  }

  while (1)
  {
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return v14;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++i;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_1DCD4D7DC(void *result, uint64_t *a2)
{
  v28 = a2[2];
  v27 = *(v28 + 16);
  if (v27)
  {
    v2 = 0;
    v3 = 0;
    v25 = a2[1];
    v26 = *a2;
    v4 = (v28 + 40);
    while (v3 < *(v28 + 16))
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1DCB370A4(v2, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v30 = *result;
      v7 = sub_1DCB21038(v6, v5);
      if (__OFADD__(v30[2], (v8 & 1) == 0))
      {
        goto LABEL_19;
      }

      v9 = v7;
      v10 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4F68, &qword_1DD0F04F8);
      if (sub_1DD0DEDCC())
      {
        v11 = sub_1DCB21038(v6, v5);
        if ((v10 & 1) != (v12 & 1))
        {
          goto LABEL_21;
        }

        v9 = v11;
      }

      *result = v30;
      if (v10)
      {
      }

      else
      {
        v30[(v9 >> 6) + 8] |= 1 << v9;
        v13 = (v30[6] + 16 * v9);
        *v13 = v6;
        v13[1] = v5;
        *(v30[7] + 8 * v9) = MEMORY[0x1E69E7CC0];
        v14 = v30[2];
        v15 = __OFADD__(v14, 1);
        v16 = v14 + 1;
        if (v15)
        {
          goto LABEL_20;
        }

        v30[2] = v16;
      }

      v17 = v30[7];
      v18 = *(v17 + 8 * v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v9) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DCB34108(0, *(v18 + 16) + 1, 1, v18);
        v18 = v23;
        *(v17 + 8 * v9) = v23;
      }

      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1DCB34108(v20 > 1, v21 + 1, 1, v18);
        v18 = v24;
        *(v17 + 8 * v9) = v24;
      }

      ++v3;
      *(v18 + 16) = v21 + 1;
      v22 = v18 + 16 * v21;
      *(v22 + 32) = v26;
      *(v22 + 40) = v25;
      v4 += 2;
      v2 = sub_1DCD4DA3C;
      if (v27 == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    sub_1DD0DF12C();
    __break(1u);
  }
}

uint64_t sub_1DCD4DA4C()
{
  v0 = sub_1DD0DD85C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DE7EC();
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DD0E07C0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1DCB34060();
  *(v5 + 32) = 0x73736563637553;
  *(v5 + 40) = 0xE700000000000000;
  sub_1DD0DD84C();
  sub_1DD0DD80C();

  return (*(v1 + 8))(v4, v0);
}

void sub_1DCD4DC04(void *a1, uint64_t a2, uint64_t a3)
{
  v87 = a2;
  v88 = a3;
  v5 = sub_1DD0DAECC();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v89 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v84 - v12;
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v86 = &v84 - v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v84 - v18;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v20 = sub_1DD0DD8FC();
  v21 = __swift_project_value_buffer(v20, qword_1EDE57E00);
  v22 = *(v6 + 16);
  v95 = a1;
  v90 = v22;
  v22(v19, a1, v5);
  v91 = v21;
  v23 = sub_1DD0DD8EC();
  v24 = sub_1DD0DE70C();
  v25 = os_log_type_enabled(v23, v24);
  v93 = v6;
  v85 = v13;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v84 = v3;
    v27 = v26;
    v28 = v5;
    v29 = swift_slowAlloc();
    v94[0] = v29;
    *v27 = 136315138;
    v30 = sub_1DD0DAEAC();
    v31 = v6;
    v33 = v32;
    v92 = *(v31 + 8);
    v92(v19, v28);
    v34 = sub_1DCB10E9C(v30, v33, v94);

    *(v27 + 4) = v34;
    _os_log_impl(&dword_1DCAFC000, v23, v24, "Loading bundle at path %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v35 = v29;
    v5 = v28;
    MEMORY[0x1E12A8390](v35, -1, -1);
    MEMORY[0x1E12A8390](v27, -1, -1);
  }

  else
  {

    v92 = *(v6 + 8);
    v92(v19, v5);
  }

  sub_1DCD15A7C();
  v36 = v95;
  v37 = sub_1DD0DAEAC();
  v39 = sub_1DCD158F4(v37, v38);
  if (v39)
  {
    v40 = v39;
    v41 = sub_1DCD43E34(v39);
    if (v42)
    {
      v43 = v41;
      v44 = v42;
      if (qword_1EDE4AE78 != -1)
      {
        v41 = swift_once();
      }

      v45 = qword_1EDE4AE80;
      v94[0] = v43;
      v94[1] = v44;
      MEMORY[0x1EEE9AC00](v41, v42);
      *(&v84 - 2) = v94;

      v46 = sub_1DCC3EBE4(sub_1DCD00108, (&v84 - 4), v45);

      if (v46)
      {
        v47 = v86;
        v90(v86, v95, v5);

        v48 = sub_1DD0DD8EC();
        v49 = sub_1DD0DE6CC();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = v5;
          v51 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v94[0] = v95;
          *v51 = 136315394;
          LODWORD(v91) = v49;
          v52 = sub_1DD0DAEAC();
          v53 = v47;
          v55 = v54;
          v92(v53, v50);
          v56 = sub_1DCB10E9C(v52, v55, v94);

          *(v51 + 4) = v56;
          *(v51 + 12) = 2080;
          v57 = sub_1DCB10E9C(v43, v44, v94);

          *(v51 + 14) = v57;
          _os_log_impl(&dword_1DCAFC000, v48, v91, "Skipping bundle at path %s with ID %s; it is in the exclude list", v51, 0x16u);
          v58 = v95;
          swift_arrayDestroy();
          MEMORY[0x1E12A8390](v58, -1, -1);
          MEMORY[0x1E12A8390](v51, -1, -1);

LABEL_23:
          return;
        }

        goto LABEL_26;
      }

      v36 = v95;
    }

    v67 = sub_1DCD159CC(v40);
    if (!v67)
    {
      v67 = sub_1DD0DDE9C();
    }

    static IntentTopic.makeFromBundleInfoPlist(dictionary:)(v67, v68, v69);
    v71 = v70;

    if (*(v71 + 16))
    {
      MEMORY[0x1EEE9AC00](v72, v73);
      v74 = v88;
      *(&v84 - 4) = v87;
      *(&v84 - 3) = v36;
      *(&v84 - 2) = v74;
      sub_1DCC34D60(sub_1DCD4F178, (&v84 - 6), v71);

      return;
    }

    v47 = v85;
    v90(v85, v36, v5);
    v76 = sub_1DD0DD8EC();
    v77 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v94[0] = v95;
      *v78 = 136315138;
      v79 = sub_1DD0DAEAC();
      v81 = v80;
      v92(v47, v5);
      v82 = sub_1DCB10E9C(v79, v81, v94);

      *(v78 + 4) = v82;
      _os_log_impl(&dword_1DCAFC000, v76, v77, "Bundle at path %s has malformed or no entries for SupportDomains, SupportedIntents, SupportedInvocations, or SupportedPegasusComponents keys", v78, 0xCu);
      v83 = v95;
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      MEMORY[0x1E12A8390](v83, -1, -1);
      MEMORY[0x1E12A8390](v78, -1, -1);

      goto LABEL_23;
    }

LABEL_26:
    v75 = v47;
    goto LABEL_27;
  }

  v59 = v89;
  v90(v89, v36, v5);
  v40 = sub_1DD0DD8EC();
  v60 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v40, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v94[0] = v62;
    *v61 = 136315138;
    v63 = sub_1DD0DAEAC();
    v65 = v64;
    v92(v59, v5);
    v66 = sub_1DCB10E9C(v63, v65, v94);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_1DCAFC000, v40, v60, "Could not initialize bundle for path %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    MEMORY[0x1E12A8390](v62, -1, -1);
    MEMORY[0x1E12A8390](v61, -1, -1);
    goto LABEL_23;
  }

  v75 = v59;
LABEL_27:
  v92(v75, v5);
}

void sub_1DCD4E470(_OWORD *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = a1[1];
  v48[0] = *a1;
  v48[1] = v6;
  v49[0] = a1[2];
  *(v49 + 9) = *(a1 + 41);
  v7 = IntentTopic.cacheKey.getter();
  v9 = v8;
  v10 = sub_1DD0DAEAC();
  v46 = v11;
  v47 = v10;
  swift_isUniquelyReferenced_nonNull_native();
  *&v48[0] = *a2;
  v12 = *&v48[0];
  *a2 = 0x8000000000000000;
  v50 = v7;
  v13 = sub_1DCB21038(v7, v9);
  if (__OFADD__(*(v12 + 16), (v14 & 1) == 0))
  {
    __break(1u);
  }

  else
  {
    v15 = v13;
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4F68, &qword_1DD0F04F8);
    if (sub_1DD0DEDCC())
    {
      v17 = sub_1DCB21038(v50, v9);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_22;
      }

      v15 = v17;
    }

    *a2 = *&v48[0];

    v19 = *a2;
    if ((v16 & 1) == 0)
    {
      sub_1DCC60DC8(v15, v50, v9, MEMORY[0x1E69E7CC0], v19);
    }

    v20 = *(v19 + 56) + 8 * v15;
    sub_1DCD4B7BC();
    v21 = *(*v20 + 16);
    sub_1DCBBF6CC(v21);
    v22 = *v20;
    *(v22 + 16) = v21 + 1;
    v23 = v22 + 16 * v21;
    *(v23 + 32) = v47;
    *(v23 + 40) = v46;
    v24 = sub_1DD0DAEAC();
    v26 = v25;
    swift_isUniquelyReferenced_nonNull_native();
    *&v48[0] = *a4;
    v27 = *&v48[0];
    *a4 = 0x8000000000000000;
    v28 = sub_1DCB21038(v24, v26);
    v30 = v29;
    if (!__OFADD__(*(v27 + 16), (v29 & 1) == 0))
    {
      v31 = v28;
      if ((sub_1DD0DEDCC() & 1) == 0)
      {
        goto LABEL_11;
      }

      v32 = sub_1DCB21038(v24, v26);
      if ((v30 & 1) == (v33 & 1))
      {
        v31 = v32;
LABEL_11:
        *a4 = *&v48[0];

        v34 = *a4;
        if (v30)
        {
        }

        else
        {
          sub_1DCC60DC8(v31, v24, v26, MEMORY[0x1E69E7CC0], *a4);
        }

        v35 = *(v34 + 56) + 8 * v31;
        sub_1DCD4B7BC();
        v36 = *(*v35 + 16);
        sub_1DCBBF6CC(v36);
        v37 = *v35;
        *(v37 + 16) = v36 + 1;
        v38 = v37 + 16 * v36;
        *(v38 + 32) = v50;
        *(v38 + 40) = v9;
        v39 = qword_1EDE4F900;

        if (v39 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }

LABEL_22:
      sub_1DD0DF12C();
      __break(1u);
      return;
    }
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_15:
  v40 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v40, qword_1EDE57E00);

  v41 = sub_1DD0DD8EC();
  v42 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v48[0] = v44;
    *v43 = 136315138;
    v45 = sub_1DCB10E9C(v50, v9, v48);

    *(v43 + 4) = v45;
    _os_log_impl(&dword_1DCAFC000, v41, v42, "Plugin Cache entry for '%s'", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x1E12A8390](v44, -1, -1);
    MEMORY[0x1E12A8390](v43, -1, -1);
  }

  else
  {
  }
}

void sub_1DCD4E858()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DCD4F114(0xD000000000000017, 0x80000001DD11AB00);
  if (v1 && (v2 = v1, v3 = sub_1DD0DDF8C(), v4 = [v2 stringArrayForKey_], v2, v3, v4))
  {
    v5 = sub_1DD0DE2EC();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  qword_1EDE4AE80 = v5;
}

uint64_t sub_1DCD4E92C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001DD11AC20 == a2;
  if (v3 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DCD4EA04(char a1)
{
  if (a1)
  {
    return 0x6F6973726556736FLL;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1DCD4EA44(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4F60, &qword_1DD0F04F0);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v13[-v10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCD4EEFC();
  sub_1DD0DF24C();
  v14 = *v3;
  v13[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4F50, &unk_1DD0F04E0);
  sub_1DCD4EFFC();
  sub_1DD0DEFFC();
  if (!v2)
  {
    v13[6] = 1;
    sub_1DD0DEFBC();
  }

  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_1DCD4EBC8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4F48, &qword_1DD0F04D8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = [objc_opt_self() processInfo];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCD4EEFC();
  sub_1DD0DF23C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4F50, &unk_1DD0F04E0);
  sub_1DCD4EF50();
  sub_1DD0DEF4C();
  v8 = sub_1DD0DEF0C();
  v10 = v9;
  v11 = OUTLINED_FUNCTION_55_0();
  v12(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v14;
  a2[1] = v8;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = v10;
  return result;
}

uint64_t sub_1DCD4EDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD4E92C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCD4EE24(uint64_t a1)
{
  v2 = sub_1DCD4EEFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD4EE60(uint64_t a1)
{
  v2 = sub_1DCD4EEFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DCD4EE9C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DCD4EBC8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1DCD4EEFC()
{
  result = qword_1EDE4F568[0];
  if (!qword_1EDE4F568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE4F568);
  }

  return result;
}

unint64_t sub_1DCD4EF50()
{
  result = qword_1ECCA4F58;
  if (!qword_1ECCA4F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA4F50, &unk_1DD0F04E0);
    sub_1DCD4F0A8(&qword_1ECCA7D50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4F58);
  }

  return result;
}

unint64_t sub_1DCD4EFFC()
{
  result = qword_1EDE462C0;
  if (!qword_1EDE462C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA4F50, &unk_1DD0F04E0);
    sub_1DCD4F0A8(&qword_1EDE46290, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE462C0);
  }

  return result;
}

uint64_t sub_1DCD4F0A8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA2758, &unk_1DD0E6880);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1DCD4F114(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DD0DDF8C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t sub_1DCD4F198()
{
  result = qword_1EDE4F550;
  if (!qword_1EDE4F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4F550);
  }

  return result;
}

unint64_t sub_1DCD4F1EC()
{
  result = qword_1EDE4AE68;
  if (!qword_1EDE4AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4AE68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FlowPluginBundleCache.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCD4F320()
{
  result = qword_1ECCA4F70;
  if (!qword_1ECCA4F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4F70);
  }

  return result;
}

unint64_t sub_1DCD4F378()
{
  result = qword_1EDE4F558;
  if (!qword_1EDE4F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4F558);
  }

  return result;
}

unint64_t sub_1DCD4F3D0()
{
  result = qword_1EDE4F560;
  if (!qword_1EDE4F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4F560);
  }

  return result;
}

uint64_t static FlowRedirectContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v6;
  sub_1DCD1B9D0(v11, v2, v5);
  sub_1DCD1B9D0(v3, v4, v6);
  LOBYTE(v3) = static SiriXRedirectContext.RedirectReason.== infix(_:_:)(&v11, &v8);
  sub_1DCD1BB80(v8, v9, v10);
  sub_1DCD1BB80(v11, v12, v13);
  return v3 & 1;
}

uint64_t sub_1DCD4F4B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000001DD11AC90 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCD4F558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD4F4B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DCD4F584(uint64_t a1)
{
  v2 = sub_1DCD4F87C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD4F5C0(uint64_t a1)
{
  v2 = sub_1DCD4F87C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD4F5FC(uint64_t a1)
{
  v2 = sub_1DCD4F8D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD4F638(uint64_t a1)
{
  v2 = sub_1DCD4F8D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FlowRedirectContext.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4F78, &qword_1DD0F0620);
  OUTLINED_FUNCTION_9();
  v22 = v3;
  v23 = v4;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v19[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4F80, &qword_1DD0F0628);
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v19[-v14];
  v16 = *v1;
  v21 = v1[1];
  v20 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCD4F87C();
  sub_1DD0DF24C();
  sub_1DCD4F8D0();
  sub_1DD0DEF7C();
  v24 = v16;
  v25 = v21;
  v26 = v20;
  sub_1DCD4F924();
  v17 = v22;
  sub_1DD0DEFFC();
  (*(v23 + 8))(v8, v17);
  return (*(v11 + 8))(v15, v9);
}

unint64_t sub_1DCD4F87C()
{
  result = qword_1ECCA4F88;
  if (!qword_1ECCA4F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4F88);
  }

  return result;
}

unint64_t sub_1DCD4F8D0()
{
  result = qword_1ECCA4F90;
  if (!qword_1ECCA4F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4F90);
  }

  return result;
}

unint64_t sub_1DCD4F924()
{
  result = qword_1ECCA4F98;
  if (!qword_1ECCA4F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4F98);
  }

  return result;
}

void FlowRedirectContext.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4FA0, &qword_1DD0F0630);
  OUTLINED_FUNCTION_9();
  v43 = v5;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4FA8, &qword_1DD0F0638);
  OUTLINED_FUNCTION_9();
  v42 = v11;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v38 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCD4F87C();
  sub_1DD0DF23C();
  if (v2)
  {
    goto LABEL_8;
  }

  v40 = v9;
  v41 = a1;
  v16 = v43;
  v39 = v4;
  v17 = v46;
  v18 = sub_1DD0DEF5C();
  sub_1DCB547F8(v18, 0);
  v23 = v10;
  if (v21 == v22 >> 1)
  {
LABEL_7:
    v31 = sub_1DD0DECAC();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640);
    *v33 = &type metadata for FlowRedirectContext;
    sub_1DD0DEECC();
    sub_1DD0DEC8C();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v15, v23);
    a1 = v41;
LABEL_8:
    v37 = a1;
    goto LABEL_9;
  }

  if (v21 < (v22 >> 1))
  {
    v24 = v10;
    sub_1DCB54800(v21 + 1, v22 >> 1, v19, v20, v21, v22);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 == v28 >> 1)
    {
      sub_1DCD4F8D0();
      v29 = v40;
      v30 = v24;
      sub_1DD0DEEBC();
      sub_1DCD50348();
      v34 = v39;
      sub_1DD0DEF4C();
      v35 = v42;
      swift_unknownObjectRelease();
      (*(v16 + 8))(v29, v34);
      (*(v35 + 8))(v15, v30);
      v36 = v45;
      *v17 = v44;
      *(v17 + 16) = v36;
      v37 = v41;
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      return;
    }

    v23 = v10;
    goto LABEL_7;
  }

  __break(1u);
}

void SiriEnvironment.flowRedirectContextProvider.modify(void *a1)
{
  a1[1] = v1;
  a1[2] = type metadata accessor for FlowRedirectContextProvider();
  a1[3] = OUTLINED_FUNCTION_0_53(&qword_1EDE4AE50);
  sub_1DD0DCA7C();
}

uint64_t FlowRedirectContextProvider.mock.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void FlowRedirectContextProvider.__allocating_init(storage:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  FlowRedirectContextProvider.init(storage:)(a1);
}

void FlowRedirectContextProvider.init(storage:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_46();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4FB8, &qword_1DD0F0648);
  swift_allocObject();
  sub_1DD0DCE9C();
}

void FlowRedirectContextProvider.__allocating_init(flowRedirectContext:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  FlowRedirectContextProvider.init(flowRedirectContext:)(a1);
}

void sub_1DCD50038(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = v2;
  sub_1DCD507C8(v3[0], v1, v2);
  sub_1DCB709FC(v3);
}

void sub_1DCD500DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4FF0, &qword_1DD0F0A98);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v7 - v4;
  (*(v6 + 16))(&v7 - v4, a1);
  sub_1DCD501B0(v5);
}

void sub_1DCD501B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4FF0, &qword_1DD0F0A98);
  OUTLINED_FUNCTION_9();
  v4 = v3;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v9 - v7;
  swift_beginAccess();
  (*(v4 + 16))(v8, a1, v2);
  sub_1DD0DCF8C();
}

void sub_1DCD50308()
{
    ;
  }
}

unint64_t sub_1DCD50348()
{
  result = qword_1ECCA4FB0;
  if (!qword_1ECCA4FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4FB0);
  }

  return result;
}

uint64_t sub_1DCD503D0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCD1B9D0(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for FlowRedirectContext(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCD1B9D0(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1DCD1BB80(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for FlowRedirectContext(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1DCD1BB80(v4, v5, v6);
  return a1;
}

_BYTE *sub_1DCD5050C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCD505BC()
{
  result = qword_1ECCA4FC0;
  if (!qword_1ECCA4FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4FC0);
  }

  return result;
}

unint64_t sub_1DCD50614()
{
  result = qword_1ECCA4FC8;
  if (!qword_1ECCA4FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4FC8);
  }

  return result;
}

unint64_t sub_1DCD5066C()
{
  result = qword_1ECCA4FD0;
  if (!qword_1ECCA4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4FD0);
  }

  return result;
}

unint64_t sub_1DCD506C4()
{
  result = qword_1ECCA4FD8;
  if (!qword_1ECCA4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4FD8);
  }

  return result;
}

unint64_t sub_1DCD5071C()
{
  result = qword_1ECCA4FE0;
  if (!qword_1ECCA4FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4FE0);
  }

  return result;
}

unint64_t sub_1DCD50774()
{
  result = qword_1ECCA4FE8;
  if (!qword_1ECCA4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4FE8);
  }

  return result;
}

double sub_1DCD507C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1DCD1B9D0(a1, a2, a3);
  }

  return result;
}

void AnyFlow.toActingFlow()()
{
  v1 = type metadata accessor for FlowToActingFlowAdapter(0);
  OUTLINED_FUNCTION_73_1(v1);
  OUTLINED_FUNCTION_30();
  sub_1DD0DCF8C();
}

void Flow.toActingFlow()(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  OUTLINED_FUNCTION_16();
  (*(v7 + 16))(v6 - v5, v3, a1);
  type metadata accessor for AnyFlow();
  if (!swift_dynamicCast())
  {
    Flow.eraseToAnyFlow()();
  }

  v8 = type metadata accessor for FlowToActingFlowAdapter(0);
  OUTLINED_FUNCTION_73_1(v8);
  v9 = OUTLINED_FUNCTION_30();
  sub_1DCB4E3B8(v9);
}

unint64_t sub_1DCD5094C()
{
  v2 = v1;
  v3 = type metadata accessor for FlowToActingFlowAdapter.State(0);
  v4 = OUTLINED_FUNCTION_20_0(v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_9_35();
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1DD0DEC1C();

  v11 = 0xD000000000000021;
  v12 = 0x80000001DD11AD00;
  MEMORY[0x1E12A6780](*(*(v2 + 24) + 16), *(*(v2 + 24) + 24));
  MEMORY[0x1E12A6780](0x203A657461747320, 0xE800000000000000);
  v6 = OBJC_IVAR____TtC11SiriKitFlow23FlowToActingFlowAdapter_state;
  OUTLINED_FUNCTION_156(v2 + OBJC_IVAR____TtC11SiriKitFlow23FlowToActingFlowAdapter_state, v10);
  OUTLINED_FUNCTION_0_54();
  sub_1DCD58BCC(v2 + v6, v0);
  v7 = sub_1DCD5308C();
  MEMORY[0x1E12A6780](v7);

  OUTLINED_FUNCTION_1_56();
  sub_1DCB4F3E0(v0, v8);
  return v11;
}

BOOL sub_1DCD50A5C()
{
  type metadata accessor for FlowToActingFlowAdapter.State(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_9_35();
  v4 = OBJC_IVAR____TtC11SiriKitFlow23FlowToActingFlowAdapter_state;
  OUTLINED_FUNCTION_156(v1 + OBJC_IVAR____TtC11SiriKitFlow23FlowToActingFlowAdapter_state, v8);
  OUTLINED_FUNCTION_0_54();
  sub_1DCD58BCC(v1 + v4, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_1_56();
    sub_1DCB4F3E0(v0, v6);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  return EnumCaseMultiPayload != 0;
}

void sub_1DCD50B5C()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v24[4] = type metadata accessor for FlowToActingFlowAdapter.State(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  type metadata accessor for FlowTraceEvent(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_10_2();
  v14 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (v24 - v17);
  v19 = *(v0 + 24);
  v20 = (*(v19 + 80))(v2);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5040, &qword_1DD0F0CF8) + 64);
  if (v20)
  {
    v24[2] = v4;
    v24[3] = v9;
    *v18 = v19;
    OUTLINED_FUNCTION_13_34();
    sub_1DCD58BCC(v2, v18 + v22);
    *(v18 + v21) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  *v14 = v19;
  OUTLINED_FUNCTION_13_34();
  sub_1DCD58BCC(v2, v14 + v23);
  *(v14 + v21) = 0;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD510AC()
{
  OUTLINED_FUNCTION_42();
  v1[20] = v0;
  v2 = type metadata accessor for ExecuteResponse(0);
  OUTLINED_FUNCTION_20_0(v2);
  v1[21] = swift_task_alloc();
  v3 = type metadata accessor for FlowToActingFlowAdapter.Event(0);
  v1[22] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v1[23] = swift_task_alloc();
  v4 = type metadata accessor for FlowTraceEvent(0);
  v1[24] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v5 = type metadata accessor for FlowToActingFlowAdapter.State(0);
  v1[27] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v1[28] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCD511BC()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 160);
  v3 = OBJC_IVAR____TtC11SiriKitFlow23FlowToActingFlowAdapter_state;
  OUTLINED_FUNCTION_156(v2 + OBJC_IVAR____TtC11SiriKitFlow23FlowToActingFlowAdapter_state, v0 + 88);
  OUTLINED_FUNCTION_0_54();
  sub_1DCD58BCC(v2 + v3, v1);
  OUTLINED_FUNCTION_194();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 8)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v6 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v6, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1DCAFF9E8(*(v0 + 224), v0 + 16);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_1_56();
  sub_1DCB4F3E0(v7, v8);
  OUTLINED_FUNCTION_26_17();

  OUTLINED_FUNCTION_29();

  return v9();
}

uint64_t sub_1DCD51590()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCD51674()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  *v1 = *(*(v0 + 160) + 24);
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD51894()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCD51978()
{
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5030, &qword_1DD0F0CE0);
  *v2 = v1;
  OUTLINED_FUNCTION_17_21();
  sub_1DCD58BCC(v3, v2 + v4);
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD51B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = OUTLINED_FUNCTION_15_0();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCD51B90()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1DCB410E0;
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v4, 0, 0, 0x2865726170657270, 0xE900000000000029, sub_1DCD58D84, v2, &type metadata for PrepareResponse);
}

void sub_1DCD51C84()
{
  OUTLINED_FUNCTION_50();
  v3 = v1;
  type metadata accessor for FlowTraceEvent(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_9_35();
  type metadata accessor for FlowToActingFlowAdapter.State(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_10_2();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_53_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v24 - v15);
  v17 = OBJC_IVAR____TtC11SiriKitFlow23FlowToActingFlowAdapter_state;
  OUTLINED_FUNCTION_156(v3 + OBJC_IVAR____TtC11SiriKitFlow23FlowToActingFlowAdapter_state, &v27);
  OUTLINED_FUNCTION_0_54();
  sub_1DCD58BCC(v3 + v17, v16);
  OUTLINED_FUNCTION_17_11();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    if (EnumCaseMultiPayload)
    {
      OUTLINED_FUNCTION_1_56();
      sub_1DCB4F3E0(v16, v23);
LABEL_6:
      *v0 = *(v3 + 24);
      swift_storeEnumTagMultiPayload();
      sub_1DD0DCF8C();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000021, 0x80000001DD11AD00);
  MEMORY[0x1E12A6780](*(*(v3 + 24) + 16), *(*(v3 + 24) + 24));
  MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD11ADF0);
  OUTLINED_FUNCTION_0_54();
  sub_1DCD58BCC(v3 + v17, v10);
  v19 = sub_1DCD5308C();
  MEMORY[0x1E12A6780](v19);

  OUTLINED_FUNCTION_1_56();
  sub_1DCB4F3E0(v10, v20);
  OUTLINED_FUNCTION_43_15();
  swift_getErrorValue();
  v21 = sub_1DD0DF18C();
  MEMORY[0x1E12A6780](v21);

  v22 = v26;
  *v2 = v25;
  v2[1] = v22;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1DCD58C28(v2, v3 + v17);
  swift_endAccess();
  goto LABEL_6;
}

void sub_1DCD51F7C()
{
  OUTLINED_FUNCTION_50();
  v0 = type metadata accessor for PluginAction(0);
  v1 = OUTLINED_FUNCTION_20_0(v0);
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v3, v4);
  v20[6] = v20 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5010, &qword_1DD0F0CB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = OUTLINED_FUNCTION_6_36(v20 - v8);
  type metadata accessor for FlowToActingFlowAdapter.State(v9);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_10_2();
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v20[9] = v20 - v18;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v19 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v19, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD52E00@<X0>(void *a1@<X8>)
{
  v2 = sub_1DCC90B68();
  if (!v2)
  {
    v4 = type metadata accessor for FlowToActingFlowAdapter(0);
    a1[3] = v4;
    a1[4] = &off_1EECFDA20;
    OUTLINED_FUNCTION_73_1(v4);
    OUTLINED_FUNCTION_30();
    sub_1DD0DCF8C();
  }

  sub_1DCB17CA0(v2 + 16, a1);
}

void sub_1DCD52E8C(unint64_t *a1)
{
  v4 = *a1;
  sub_1DCDB1900();
  v5 = v4;
  sub_1DCDB21D4(&v5);
}

void sub_1DCD52F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FlowToActingFlowAdapter.Event(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  swift_storeEnumTagMultiPayload();
  sub_1DCD537A0();
}

void sub_1DCD53018()
{
  v0 = OUTLINED_FUNCTION_26_6();
  type metadata accessor for FlowToActingFlowAdapter.Event(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_9_35();
  swift_storeEnumTagMultiPayload();
  sub_1DCD537A0();
}

uint64_t sub_1DCD5308C()
{
  v2 = type metadata accessor for PluginAction(0);
  v3 = OUTLINED_FUNCTION_20_0(v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_9_35();
  type metadata accessor for FlowToActingFlowAdapter.State(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_0_54();
  sub_1DCD58BCC(v1, v9);
  v10 = 0x65747563657865;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v14 = *(v9 + 40);

      sub_1DCAFF9E8(v9, &v39);
      v37 = 0x6465726170657270;
      v38 = 0xE900000000000028;
      sub_1DCB17CA0(&v39, &v36);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2FC8, &qword_1DD0E8E10);
      v16 = OUTLINED_FUNCTION_61_12(v15);
      MEMORY[0x1E12A6780](v16);

      MEMORY[0x1E12A6780](32, 0xE100000000000000);
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);

      MEMORY[0x1E12A6780](v17, v18);

      OUTLINED_FUNCTION_35();

      goto LABEL_5;
    case 2u:
      v19 = *v9;
      v20 = *(v9 + 1);
      v21 = *(v9 + 8);

      v39 = 0;
      v40 = 0xE000000000000000;
      sub_1DD0DEC1C();
      v22 = OUTLINED_FUNCTION_52_13();
      MEMORY[0x1E12A6780](v22, 0xEF203A6570797428);
      LOBYTE(v36) = v19;
      sub_1DD0DEDBC();
      MEMORY[0x1E12A6780](0x6572697571657220, 0xEF203A7475706E49);
      if (v20)
      {
        v23 = 1702195828;
      }

      else
      {
        v23 = 0x65736C6166;
      }

      if (v20)
      {
        v24 = 0xE400000000000000;
      }

      else
      {
        v24 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v23, v24);

      MEMORY[0x1E12A6780](32, 0xE100000000000000);
      v36 = v21;
      sub_1DD0DCF8C();
    case 3u:
      v13 = *v9;
      v39 = 0x6574656C706D6F63;
      v40 = 0xE900000000000028;
      v36 = v13;
      sub_1DD0DCF8C();
    case 4u:
      v26 = *v9;
      v27 = *(v9 + 8);
      v39 = 0x2874726F6261;
      v40 = 0xE600000000000000;
      MEMORY[0x1E12A6780](v26, v27);
      goto LABEL_17;
    case 5u:
      v28 = *v9;
      v29 = *(v9 + 8);
      v30 = *(v9 + 16);
      MEMORY[0x1E12A6780](0x656C646E61686E75, 0xEA00000000002864);
      v39 = v28;
      v40 = v29;
      v41 = v30;
      sub_1DD0DEDBC();
      sub_1DCD21390(v28, v29, v30);
      OUTLINED_FUNCTION_35();
      return 0;
    case 6u:
      sub_1DCD58C8C(v9, v0);
      PluginAction.description.getter();
      MEMORY[0x1E12A6780]();

      OUTLINED_FUNCTION_35();
      v10 = 0x7463657269646572;
      OUTLINED_FUNCTION_14_35();
      sub_1DCB4F3E0(v0, v25);
      return v10;
    case 7u:
      v31 = *v9;
      v32 = *(v9 + 8);
      v33 = *(v9 + 16);
      v34 = *(v9 + 24);
      v39 = 0x2865737261706572;
      v40 = 0xE800000000000000;
      MEMORY[0x1E12A6780](v31, v32);

      MEMORY[0x1E12A6780](8236, 0xE200000000000000);
      MEMORY[0x1E12A6780](v33, v34);
LABEL_17:

      OUTLINED_FUNCTION_35();
      v10 = v39;
      break;
    case 8u:
      return v10;
    default:
      sub_1DCAFF9E8(v9, &v39);
      v37 = 0x2865726170657270;
      v38 = 0xE800000000000000;
      sub_1DCB17CA0(&v39, &v36);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2FC8, &qword_1DD0E8E10);
      v12 = OUTLINED_FUNCTION_61_12(v11);
      MEMORY[0x1E12A6780](v12);

      OUTLINED_FUNCTION_35();
LABEL_5:
      v10 = v37;
      __swift_destroy_boxed_opaque_existential_1Tm(&v39);
      break;
  }

  return v10;
}

uint64_t sub_1DCD53578()
{
  v2 = v1;
  type metadata accessor for ExecuteResponse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_9_35();
  type metadata accessor for FlowToActingFlowAdapter.Event(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_4_54();
  sub_1DCD58BCC(v2, v9);
  OUTLINED_FUNCTION_17_11();
  v10 = 0x6D6F43646C696863;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_16_25();
      v11 = OUTLINED_FUNCTION_194();
      sub_1DCD58C8C(v11, v12);
      v13 = OUTLINED_FUNCTION_52_13();
      MEMORY[0x1E12A6780](v13, 0xE900000000000028);
      sub_1DD0DEDBC();
      OUTLINED_FUNCTION_35();
      v10 = 0;
      OUTLINED_FUNCTION_2_54();
      sub_1DCB4F3E0(v0, v14);
      break;
    case 2u:
      sub_1DCB4F3E0(v9, type metadata accessor for FlowToActingFlowAdapter.Event);
      v10 = 0x6572756C696166;
      break;
    case 3u:
      return v10;
    default:
      MEMORY[0x1E12A6780](0x6465726170657270, 0xE900000000000028);
      sub_1DD0DEDBC();
      OUTLINED_FUNCTION_35();

      v10 = 0;
      break;
  }

  return v10;
}

void sub_1DCD537A0()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD0, &qword_1DD0EDF38);
  OUTLINED_FUNCTION_20_0(v2);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = OUTLINED_FUNCTION_6_36(v34 - v5);
  v34[4] = type metadata accessor for PluginAction(v6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_16();
  v11 = OUTLINED_FUNCTION_6_36(v10 - v9);
  v34[3] = type metadata accessor for FlowTraceEvent(v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_16();
  v34[7] = type metadata accessor for ExecuteResponse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_16();
  v34[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5000, &qword_1DD0F0CA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  type metadata accessor for FlowToActingFlowAdapter.State(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v20, v21);
  v34[16] = v34 - v22;
  v34[13] = type metadata accessor for FlowToActingFlowAdapter.Event(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_53_10();
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v34 - v31;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v33 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v33, qword_1EDE57E00);
  OUTLINED_FUNCTION_4_54();
  v34[15] = v1;
  sub_1DCD58BCC(v1, v32);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD5466C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCD510AC();
}

uint64_t sub_1DCD547B8(uint64_t *a1, char a2)
{
  if (a2)
  {
    sub_1DD0DCF8C();
  }

  return sub_1DCB4D4A0(*a1);
}

uint64_t sub_1DCD54838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5038, &qword_1DD0F0CF0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(a4 + 8))(sub_1DCD58D90, v13, a3, a4);
}

void sub_1DCD54A1C()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D18, &qword_1DD10E980);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v15[-v7];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  if (v1)
  {
    v9 = *(v4 + 32);
    OUTLINED_FUNCTION_47_12(v15, &v8[v9]);
    v8[*(v4 + 36)] = 0;
    v10 = MEMORY[0x1E69E7CA8] + 8;
    *(v8 + 3) = MEMORY[0x1E69E7CA8] + 8;
    sub_1DCB0E9D8(v15, &qword_1ECCA1D20, &qword_1DD0F0330);
    OUTLINED_FUNCTION_47_12(&v8[v9], (v8 + 32));
    v8[72] = 0;
    type metadata accessor for FlowActionType(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_47_12(&v8[v9], v15);
    v3[3] = v4;
    v3[4] = &protocol witness table for Conclude<A>;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v3);
    v12 = *(v4 + 32);
    OUTLINED_FUNCTION_47_12(v15, boxed_opaque_existential_1Tm + v12);
    *(boxed_opaque_existential_1Tm + *(v4 + 36)) = 1;
    boxed_opaque_existential_1Tm[3] = v10;
    sub_1DCB0E9D8(v15, &qword_1ECCA1D20, &qword_1DD0F0330);
    OUTLINED_FUNCTION_47_12(boxed_opaque_existential_1Tm + v12, (boxed_opaque_existential_1Tm + 4));
    *(boxed_opaque_existential_1Tm + 72) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1DCB0E9D8(v8, &qword_1ECCA1D18, &qword_1DD10E980);
  }

  else
  {
    v3[3] = v4;
    v3[4] = &protocol witness table for Conclude<A>;
    v13 = __swift_allocate_boxed_opaque_existential_1Tm(v3);
    v14 = *(v4 + 32);
    sub_1DCB09910(v15, v13 + v14, &qword_1ECCA1D20, &qword_1DD0F0330);
    *(v13 + *(v4 + 36)) = 0;
    v13[3] = MEMORY[0x1E69E7CA8] + 8;
    sub_1DCB0E9D8(v15, &qword_1ECCA1D20, &qword_1DD0F0330);
    sub_1DCB09910(v13 + v14, (v13 + 4), &qword_1ECCA1D20, &qword_1DD0F0330);
    *(v13 + 72) = 0;
    type metadata accessor for FlowActionType(0);
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_49();
}

uint64_t ActingFlow.isNoop.getter(uint64_t a1, uint64_t a2)
{
  ActingFlow.unwrap.getter(a1, a2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4D90, &qword_1DD0F0AA0);
  return swift_dynamicCast();
}

uint64_t ActingFlow.isAdaptedFlow.getter(uint64_t a1, uint64_t a2)
{
  ActingFlow.unwrap.getter(a1, a2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4D90, &qword_1DD0F0AA0);
  type metadata accessor for FlowToActingFlowAdapter(0);
  v2 = swift_dynamicCast();
  if (v2)
  {
  }

  return v2;
}

uint64_t sub_1DCD54D34(uint64_t a1)
{
  result = type metadata accessor for FlowToActingFlowAdapter.State(319);
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

char *sub_1DCD54DDC(char *a1, char *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 - 8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      (**(v6 - 8))(a1, a2);
      goto LABEL_52;
    case 1u:
      v13 = *(a2 + 24);
      *(a1 + 24) = v13;
      (**(v13 - 8))(a1, a2);
      v14 = *(a2 + 5);
      v15 = *(a2 + 6);
      *(a1 + 5) = v14;
      *(a1 + 6) = v15;
      sub_1DD0DCF8C();
    case 2u:
      *a1 = *a2;
      v8 = *(a2 + 1);
      v9 = *(a2 + 2);
      *(a1 + 1) = v8;
      *(a1 + 2) = v9;
      sub_1DD0DCF8C();
    case 3u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 4u:
      v7 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v7;

      goto LABEL_52;
    case 5u:
      v16 = *a2;
      v17 = *(a2 + 1);
      v18 = a2[16];
      sub_1DCD1B9B8(v16, v17, v18);
      *a1 = v16;
      *(a1 + 1) = v17;
      a1[16] = v18;
      goto LABEL_52;
    case 6u:
      v19 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v19;
      v20 = type metadata accessor for PluginAction(0);
      v21 = *(v20 + 20);
      v22 = &a1[v21];
      v23 = &a2[v21];
      v24 = sub_1DD0DB04C();
      v25 = *(*(v24 - 8) + 16);

      v138 = v25;
      v139 = v24;
      v25(v22, v23, v24);
      v26 = type metadata accessor for Input(0);
      v27 = v26[5];
      v28 = &v22[v27];
      v29 = &v23[v27];
      v30 = type metadata accessor for Parse(0);
      v140 = v20;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v31 = sub_1DD0DC76C();
          (*(*(v31 - 8) + 16))(v28, v29, v31);
          goto LABEL_38;
        case 1u:
          v41 = sub_1DD0DC76C();
          (*(*(v41 - 8) + 16))(v28, v29, v41);
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v28[*(v42 + 48)] = *&v29[*(v42 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v36 = *(v29 + 1);
          *v28 = *v29;
          *(v28 + 1) = v36;
          *(v28 + 2) = *(v29 + 2);

          goto LABEL_38;
        case 3u:
          *v28 = *v29;
          swift_unknownObjectRetain();
          goto LABEL_38;
        case 4u:
          v34 = sub_1DD0DB1EC();
          (*(*(v34 - 8) + 16))(v28, v29, v34);
          goto LABEL_38;
        case 5u:
          v43 = *v29;
          *v28 = *v29;
          v44 = v43;
          goto LABEL_38;
        case 6u:
          v45 = sub_1DD0DB4BC();
          (*(*(v45 - 8) + 16))(v28, v29, v45);
          __dsta = type metadata accessor for USOParse(0);
          v46 = __dsta[5];
          v47 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v29[v46], 1, v47))
          {
            v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v28[v46], &v29[v46], *(*(v48 - 8) + 64));
          }

          else
          {
            (*(*(v47 - 8) + 16))(&v28[v46], &v29[v46], v47);
            __swift_storeEnumTagSinglePayload(&v28[v46], 0, 1, v47);
          }

          v78 = __dsta[6];
          v79 = &v28[v78];
          v80 = &v29[v78];
          v81 = *(v80 + 1);
          *v79 = *v80;
          *(v79 + 1) = v81;
          v82 = __dsta[7];
          v83 = &v28[v82];
          v84 = &v29[v82];
          v83[4] = v84[4];
          *v83 = *v84;

          goto LABEL_38;
        case 7u:
          v37 = sub_1DD0DB4BC();
          (*(*(v37 - 8) + 16))(v28, v29, v37);
          __dst = type metadata accessor for USOParse(0);
          v38 = __dst[5];
          v39 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v29[v38], 1, v39))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v28[v38], &v29[v38], *(*(v40 - 8) + 64));
          }

          else
          {
            (*(*(v39 - 8) + 16))(&v28[v38], &v29[v38], v39);
            __swift_storeEnumTagSinglePayload(&v28[v38], 0, 1, v39);
          }

          v59 = __dst[6];
          v60 = &v28[v59];
          v61 = &v29[v59];
          v62 = *(v61 + 1);
          *v60 = *v61;
          *(v60 + 1) = v62;
          v63 = __dst[7];
          v64 = &v28[v63];
          v65 = &v29[v63];
          v64[4] = v65[4];
          *v64 = *v65;
          v66 = type metadata accessor for LinkParse(0);
          v67 = v66[5];
          v68 = &v28[v67];
          v69 = &v29[v67];
          __dstc = *(v69 + 1);
          *v68 = *v69;
          *(v68 + 1) = __dstc;
          v70 = v66[6];
          v71 = &v28[v70];
          v72 = &v29[v70];
          v73 = *(v72 + 1);
          *v71 = *v72;
          *(v71 + 1) = v73;
          v74 = v66[7];
          v75 = &v28[v74];
          v76 = &v29[v74];
          v77 = *(v76 + 1);
          *v75 = *v76;
          *(v75 + 1) = v77;

          goto LABEL_38;
        case 8u:
          v49 = sub_1DD0DD12C();
          (*(*(v49 - 8) + 16))(v28, v29, v49);
          v50 = type metadata accessor for NLRouterParse(0);
          v51 = *(v50 + 20);
          v52 = &v28[v51];
          v53 = &v29[v51];
          v54 = *(v53 + 1);
          *v52 = *v53;
          *(v52 + 1) = v54;
          v129 = v50;
          v55 = *(v50 + 24);
          __dstb = &v28[v55];
          v56 = &v29[v55];
          v131 = type metadata accessor for USOParse(0);

          __src = v56;
          if (__swift_getEnumTagSinglePayload(v56, 1, v131))
          {
            v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstb, v56, *(*(v57 - 8) + 64));
            v58 = v129;
          }

          else
          {
            v85 = sub_1DD0DB4BC();
            (*(*(v85 - 8) + 16))(__dstb, v56, v85);
            v86 = v131[5];
            v87 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&__src[v86], 1, v87))
            {
              v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstb[v86], &__src[v86], *(*(v88 - 8) + 64));
            }

            else
            {
              (*(*(v87 - 8) + 16))(&__dstb[v86], &__src[v86], v87);
              __swift_storeEnumTagSinglePayload(&__dstb[v86], 0, 1, v87);
            }

            v58 = v129;
            v89 = v131[6];
            v90 = &__dstb[v89];
            v91 = &__src[v89];
            v92 = *(v91 + 1);
            *v90 = *v91;
            *(v90 + 1) = v92;
            v93 = v131[7];
            v94 = &__dstb[v93];
            v95 = &__src[v93];
            v94[4] = v95[4];
            *v94 = *v95;

            __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v131);
          }

          v96 = *(v58 + 28);
          v97 = *&v29[v96];
          *&v28[v96] = v97;
          v98 = v97;
          goto LABEL_38;
        case 9u:
          v35 = sub_1DD0DD08C();
          (*(*(v35 - 8) + 16))(v28, v29, v35);
LABEL_38:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v28, v29, *(*(v30 - 8) + 64));
          break;
      }

      *&v22[v26[6]] = *&v23[v26[6]];
      v99 = v26[7];
      v100 = &v22[v99];
      v101 = &v23[v99];
      v102 = *&v23[v99 + 24];

      if (v102)
      {
        v103 = *(v101 + 4);
        *(v100 + 3) = v102;
        *(v100 + 4) = v103;
        (**(v102 - 8))(v100, v101, v102);
      }

      else
      {
        v104 = *(v101 + 1);
        *v100 = *v101;
        *(v100 + 1) = v104;
        *(v100 + 4) = *(v101 + 4);
      }

      v22[v26[8]] = v23[v26[8]];
      v105 = v140;
      *&a1[v140[6]] = *&a2[v140[6]];
      v106 = v140[7];
      v107 = *&a2[v106];
      *&a1[v106] = v107;
      v108 = v140[8];
      v109 = &a1[v108];
      v110 = &a2[v108];
      v111 = *(v110 + 1);
      *v109 = *v110;
      *(v109 + 1) = v111;
      v112 = v140[9];
      v113 = &a1[v112];
      v114 = &a2[v112];
      v115 = type metadata accessor for ActionParaphrase(0);

      v116 = v107;

      if (__swift_getEnumTagSinglePayload(v114, 1, v115))
      {
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
        memcpy(v113, v114, *(*(v117 - 8) + 64));
      }

      else
      {
        v118 = *(v114 + 1);
        *v113 = *v114;
        *(v113 + 1) = v118;
        v119 = *(v115 + 20);
        v120 = &v113[v119];
        v121 = &v114[v119];
        v122 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

        if (__swift_getEnumTagSinglePayload(v121, 1, v122))
        {
          v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
          memcpy(v120, v121, *(*(v123 - 8) + 64));
        }

        else
        {
          v124 = *(v121 + 1);
          *v120 = *v121;
          *(v120 + 1) = v124;
          v125 = *(v121 + 3);
          *(v120 + 2) = *(v121 + 2);
          *(v120 + 3) = v125;
          v137 = *(v122 + 24);
          v126 = sub_1DD0DB66C();
          v132 = *(*(v126 - 8) + 16);

          v132(&v120[v137], &v121[v137], v126);
          __swift_storeEnumTagSinglePayload(v120, 0, 1, v122);
        }

        __swift_storeEnumTagSinglePayload(v113, 0, 1, v115);
        v105 = v140;
      }

      v127 = v105[10];
      if (__swift_getEnumTagSinglePayload(&a2[v127], 1, v139))
      {
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
        memcpy(&a1[v127], &a2[v127], *(*(v128 - 8) + 64));
      }

      else
      {
        v138(&a1[v127], &a2[v127], v139);
        __swift_storeEnumTagSinglePayload(&a1[v127], 0, 1, v139);
      }

      a1[v105[11]] = a2[v105[11]];
      goto LABEL_52;
    case 7u:
      v10 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v10;
      v11 = *(a2 + 2);
      v12 = *(a2 + 3);
      *(a1 + 2) = v11;
      *(a1 + 3) = v12;

LABEL_52:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v32 = *(v5 + 64);

      result = memcpy(a1, a2, v32);
      break;
  }

  return result;
}

void *sub_1DCD55B08(char *a1, char *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      (**(v6 - 8))(a1, a2);
      goto LABEL_50;
    case 1u:
      v13 = *(a2 + 24);
      *(a1 + 24) = v13;
      (**(v13 - 8))(a1, a2);
      v14 = *(a2 + 5);
      v15 = *(a2 + 6);
      *(a1 + 5) = v14;
      *(a1 + 6) = v15;
      sub_1DD0DCF8C();
    case 2u:
      *a1 = *a2;
      v8 = *(a2 + 1);
      v9 = *(a2 + 2);
      *(a1 + 1) = v8;
      *(a1 + 2) = v9;
      sub_1DD0DCF8C();
    case 3u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 4u:
      v7 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v7;

      goto LABEL_50;
    case 5u:
      v16 = *a2;
      v17 = *(a2 + 1);
      v18 = a2[16];
      sub_1DCD1B9B8(v16, v17, v18);
      *a1 = v16;
      *(a1 + 1) = v17;
      a1[16] = v18;
      goto LABEL_50;
    case 6u:
      v19 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v19;
      v20 = type metadata accessor for PluginAction(0);
      v21 = *(v20 + 20);
      v22 = &a1[v21];
      v23 = &a2[v21];
      v24 = sub_1DD0DB04C();
      v25 = *(*(v24 - 8) + 16);

      v138 = v25;
      v139 = v24;
      v25(v22, v23, v24);
      v26 = type metadata accessor for Input(0);
      v27 = v26[5];
      v28 = &v22[v27];
      v29 = &v23[v27];
      v30 = type metadata accessor for Parse(0);
      v140 = v20;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v31 = sub_1DD0DC76C();
          (*(*(v31 - 8) + 16))(v28, v29, v31);
          goto LABEL_36;
        case 1u:
          v41 = sub_1DD0DC76C();
          (*(*(v41 - 8) + 16))(v28, v29, v41);
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v28[*(v42 + 48)] = *&v29[*(v42 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v36 = *(v29 + 1);
          *v28 = *v29;
          *(v28 + 1) = v36;
          *(v28 + 2) = *(v29 + 2);

          goto LABEL_36;
        case 3u:
          *v28 = *v29;
          swift_unknownObjectRetain();
          goto LABEL_36;
        case 4u:
          v34 = sub_1DD0DB1EC();
          (*(*(v34 - 8) + 16))(v28, v29, v34);
          goto LABEL_36;
        case 5u:
          v43 = *v29;
          *v28 = *v29;
          v44 = v43;
          goto LABEL_36;
        case 6u:
          v45 = sub_1DD0DB4BC();
          (*(*(v45 - 8) + 16))(v28, v29, v45);
          __dsta = type metadata accessor for USOParse(0);
          v46 = __dsta[5];
          v47 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v29[v46], 1, v47))
          {
            v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v28[v46], &v29[v46], *(*(v48 - 8) + 64));
          }

          else
          {
            (*(*(v47 - 8) + 16))(&v28[v46], &v29[v46], v47);
            __swift_storeEnumTagSinglePayload(&v28[v46], 0, 1, v47);
          }

          v78 = __dsta[6];
          v79 = &v28[v78];
          v80 = &v29[v78];
          v81 = *(v80 + 1);
          *v79 = *v80;
          *(v79 + 1) = v81;
          v82 = __dsta[7];
          v83 = &v28[v82];
          v84 = &v29[v82];
          v83[4] = v84[4];
          *v83 = *v84;

          goto LABEL_36;
        case 7u:
          v37 = sub_1DD0DB4BC();
          (*(*(v37 - 8) + 16))(v28, v29, v37);
          __dst = type metadata accessor for USOParse(0);
          v38 = __dst[5];
          v39 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v29[v38], 1, v39))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v28[v38], &v29[v38], *(*(v40 - 8) + 64));
          }

          else
          {
            (*(*(v39 - 8) + 16))(&v28[v38], &v29[v38], v39);
            __swift_storeEnumTagSinglePayload(&v28[v38], 0, 1, v39);
          }

          v59 = __dst[6];
          v60 = &v28[v59];
          v61 = &v29[v59];
          v62 = *(v61 + 1);
          *v60 = *v61;
          *(v60 + 1) = v62;
          v63 = __dst[7];
          v64 = &v28[v63];
          v65 = &v29[v63];
          v64[4] = v65[4];
          *v64 = *v65;
          v66 = type metadata accessor for LinkParse(0);
          v67 = v66[5];
          v68 = &v28[v67];
          v69 = &v29[v67];
          __dstc = *(v69 + 1);
          *v68 = *v69;
          *(v68 + 1) = __dstc;
          v70 = v66[6];
          v71 = &v28[v70];
          v72 = &v29[v70];
          v73 = *(v72 + 1);
          *v71 = *v72;
          *(v71 + 1) = v73;
          v74 = v66[7];
          v75 = &v28[v74];
          v76 = &v29[v74];
          v77 = *(v76 + 1);
          *v75 = *v76;
          *(v75 + 1) = v77;

          goto LABEL_36;
        case 8u:
          v49 = sub_1DD0DD12C();
          (*(*(v49 - 8) + 16))(v28, v29, v49);
          v50 = type metadata accessor for NLRouterParse(0);
          v51 = *(v50 + 20);
          v52 = &v28[v51];
          v53 = &v29[v51];
          v54 = *(v53 + 1);
          *v52 = *v53;
          *(v52 + 1) = v54;
          v129 = v50;
          v55 = *(v50 + 24);
          __dstb = &v28[v55];
          v56 = &v29[v55];
          v131 = type metadata accessor for USOParse(0);

          __src = v56;
          if (__swift_getEnumTagSinglePayload(v56, 1, v131))
          {
            v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstb, v56, *(*(v57 - 8) + 64));
            v58 = v129;
          }

          else
          {
            v85 = sub_1DD0DB4BC();
            (*(*(v85 - 8) + 16))(__dstb, v56, v85);
            v86 = v131[5];
            v87 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&__src[v86], 1, v87))
            {
              v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstb[v86], &__src[v86], *(*(v88 - 8) + 64));
            }

            else
            {
              (*(*(v87 - 8) + 16))(&__dstb[v86], &__src[v86], v87);
              __swift_storeEnumTagSinglePayload(&__dstb[v86], 0, 1, v87);
            }

            v58 = v129;
            v89 = v131[6];
            v90 = &__dstb[v89];
            v91 = &__src[v89];
            v92 = *(v91 + 1);
            *v90 = *v91;
            *(v90 + 1) = v92;
            v93 = v131[7];
            v94 = &__dstb[v93];
            v95 = &__src[v93];
            v94[4] = v95[4];
            *v94 = *v95;

            __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v131);
          }

          v96 = *(v58 + 28);
          v97 = *&v29[v96];
          *&v28[v96] = v97;
          v98 = v97;
          goto LABEL_36;
        case 9u:
          v35 = sub_1DD0DD08C();
          (*(*(v35 - 8) + 16))(v28, v29, v35);
LABEL_36:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v28, v29, *(*(v30 - 8) + 64));
          break;
      }

      *&v22[v26[6]] = *&v23[v26[6]];
      v99 = v26[7];
      v100 = &v22[v99];
      v101 = &v23[v99];
      v102 = *&v23[v99 + 24];

      if (v102)
      {
        v103 = *(v101 + 4);
        *(v100 + 3) = v102;
        *(v100 + 4) = v103;
        (**(v102 - 8))(v100, v101, v102);
      }

      else
      {
        v104 = *(v101 + 1);
        *v100 = *v101;
        *(v100 + 1) = v104;
        *(v100 + 4) = *(v101 + 4);
      }

      v22[v26[8]] = v23[v26[8]];
      v105 = v140;
      *&a1[v140[6]] = *&a2[v140[6]];
      v106 = v140[7];
      v107 = *&a2[v106];
      *&a1[v106] = v107;
      v108 = v140[8];
      v109 = &a1[v108];
      v110 = &a2[v108];
      v111 = *(v110 + 1);
      *v109 = *v110;
      *(v109 + 1) = v111;
      v112 = v140[9];
      v113 = &a1[v112];
      v114 = &a2[v112];
      v115 = type metadata accessor for ActionParaphrase(0);

      v116 = v107;

      if (__swift_getEnumTagSinglePayload(v114, 1, v115))
      {
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
        memcpy(v113, v114, *(*(v117 - 8) + 64));
      }

      else
      {
        v118 = *(v114 + 1);
        *v113 = *v114;
        *(v113 + 1) = v118;
        v119 = *(v115 + 20);
        v120 = &v113[v119];
        v121 = &v114[v119];
        v122 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

        if (__swift_getEnumTagSinglePayload(v121, 1, v122))
        {
          v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
          memcpy(v120, v121, *(*(v123 - 8) + 64));
        }

        else
        {
          v124 = *(v121 + 1);
          *v120 = *v121;
          *(v120 + 1) = v124;
          v125 = *(v121 + 3);
          *(v120 + 2) = *(v121 + 2);
          *(v120 + 3) = v125;
          v137 = *(v122 + 24);
          v126 = sub_1DD0DB66C();
          v132 = *(*(v126 - 8) + 16);

          v132(&v120[v137], &v121[v137], v126);
          __swift_storeEnumTagSinglePayload(v120, 0, 1, v122);
        }

        __swift_storeEnumTagSinglePayload(v113, 0, 1, v115);
        v105 = v140;
      }

      v127 = v105[10];
      if (__swift_getEnumTagSinglePayload(&a2[v127], 1, v139))
      {
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
        memcpy(&a1[v127], &a2[v127], *(*(v128 - 8) + 64));
      }

      else
      {
        v138(&a1[v127], &a2[v127], v139);
        __swift_storeEnumTagSinglePayload(&a1[v127], 0, 1, v139);
      }

      a1[v105[11]] = a2[v105[11]];
      goto LABEL_50;
    case 7u:
      v10 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v10;
      v11 = *(a2 + 2);
      v12 = *(a2 + 3);
      *(a1 + 2) = v11;
      *(a1 + 3) = v12;

LABEL_50:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v32 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v32);
      break;
  }

  return result;
}

uint64_t *sub_1DCD567F4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCB4F3E0(a1, type metadata accessor for FlowToActingFlowAdapter.State);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v6 = a2[3];
        a1[3] = v6;
        a1[4] = a2[4];
        (**(v6 - 8))(a1, a2);
        goto LABEL_51;
      case 1u:
        v7 = a2[3];
        a1[3] = v7;
        a1[4] = a2[4];
        (**(v7 - 8))(a1, a2);
        a1[5] = a2[5];
        a1[6] = a2[6];
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 3u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 4u:
        *a1 = *a2;
        a1[1] = a2[1];

        goto LABEL_51;
      case 5u:
        v8 = *a2;
        v9 = a2[1];
        v10 = *(a2 + 16);
        sub_1DCD1B9B8(v8, v9, v10);
        *a1 = v8;
        a1[1] = v9;
        *(a1 + 16) = v10;
        goto LABEL_51;
      case 6u:
        *a1 = *a2;
        a1[1] = a2[1];
        v11 = type metadata accessor for PluginAction(0);
        v12 = *(v11 + 20);
        v13 = a1 + v12;
        v14 = a2 + v12;
        v15 = sub_1DD0DB04C();
        v16 = *(*(v15 - 8) + 16);

        v121 = v15;
        v16(v13, v14, v15);
        v17 = type metadata accessor for Input(0);
        v18 = v17[5];
        v19 = &v13[v18];
        v20 = &v14[v18];
        v119 = type metadata accessor for Parse(0);
        v122 = v11;
        v118 = v16;
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v21 = sub_1DD0DC76C();
            (*(*(v21 - 8) + 16))(v19, v20, v21);
            goto LABEL_37;
          case 1u:
            v30 = sub_1DD0DC76C();
            (*(*(v30 - 8) + 16))(v19, v20, v30);
            v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v19[*(v31 + 48)] = *&v20[*(v31 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v19 = *v20;
            *(v19 + 1) = *(v20 + 1);
            *(v19 + 2) = *(v20 + 2);

            goto LABEL_37;
          case 3u:
            *v19 = *v20;
            swift_unknownObjectRetain();
            goto LABEL_37;
          case 4u:
            v24 = sub_1DD0DB1EC();
            (*(*(v24 - 8) + 16))(v19, v20, v24);
            goto LABEL_37;
          case 5u:
            v32 = *v20;
            *v19 = *v20;
            v33 = v32;
            goto LABEL_37;
          case 6u:
            v34 = sub_1DD0DB4BC();
            (*(*(v34 - 8) + 16))(v19, v20, v34);
            v116 = type metadata accessor for USOParse(0);
            v35 = v116[5];
            v36 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v20[v35], 1, v36))
            {
              v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v19[v35], &v20[v35], *(*(v37 - 8) + 64));
            }

            else
            {
              (*(*(v36 - 8) + 16))(&v19[v35], &v20[v35], v36);
              __swift_storeEnumTagSinglePayload(&v19[v35], 0, 1, v36);
            }

            v64 = v116[6];
            v65 = &v19[v64];
            v66 = &v20[v64];
            *v65 = *v66;
            *(v65 + 1) = *(v66 + 1);
            v67 = v116[7];
            v68 = &v19[v67];
            v69 = &v20[v67];
            v70 = *v69;
            v68[4] = v69[4];
            *v68 = v70;

            goto LABEL_37;
          case 7u:
            v26 = sub_1DD0DB4BC();
            (*(*(v26 - 8) + 16))(v19, v20, v26);
            v115 = type metadata accessor for USOParse(0);
            v27 = v115[5];
            v28 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v20[v27], 1, v28))
            {
              v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v19[v27], &v20[v27], *(*(v29 - 8) + 64));
            }

            else
            {
              (*(*(v28 - 8) + 16))(&v19[v27], &v20[v27], v28);
              __swift_storeEnumTagSinglePayload(&v19[v27], 0, 1, v28);
            }

            v47 = v115[6];
            v48 = &v19[v47];
            v49 = &v20[v47];
            *v48 = *v49;
            *(v48 + 1) = *(v49 + 1);
            v50 = v115[7];
            v51 = &v19[v50];
            v52 = &v20[v50];
            v53 = *v52;
            v51[4] = v52[4];
            *v51 = v53;
            v54 = type metadata accessor for LinkParse(0);
            v55 = v54[5];
            v56 = &v19[v55];
            v57 = &v20[v55];
            *v56 = *v57;
            *(v56 + 1) = *(v57 + 1);
            v58 = v54[6];
            v59 = &v19[v58];
            v60 = &v20[v58];
            *v59 = *v60;
            *(v59 + 1) = *(v60 + 1);
            v61 = v54[7];
            v62 = &v19[v61];
            v63 = &v20[v61];
            *v62 = *v63;
            *(v62 + 1) = *(v63 + 1);

            goto LABEL_37;
          case 8u:
            v38 = sub_1DD0DD12C();
            (*(*(v38 - 8) + 16))(v19, v20, v38);
            v39 = type metadata accessor for NLRouterParse(0);
            v40 = *(v39 + 20);
            v41 = &v19[v40];
            v42 = &v20[v40];
            *v41 = *v42;
            *(v41 + 1) = *(v42 + 1);
            v111 = v39;
            v43 = *(v39 + 24);
            v117 = &v19[v43];
            v44 = &v20[v43];
            v112 = type metadata accessor for USOParse(0);

            v113 = v44;
            if (__swift_getEnumTagSinglePayload(v44, 1, v112))
            {
              v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(v117, v44, *(*(v45 - 8) + 64));
              v46 = v111;
            }

            else
            {
              v71 = sub_1DD0DB4BC();
              (*(*(v71 - 8) + 16))(v117, v44, v71);
              v72 = v112[5];
              v73 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v113[v72], 1, v73))
              {
                v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v117[v72], &v113[v72], *(*(v74 - 8) + 64));
              }

              else
              {
                (*(*(v73 - 8) + 16))(&v117[v72], &v113[v72], v73);
                __swift_storeEnumTagSinglePayload(&v117[v72], 0, 1, v73);
              }

              v46 = v111;
              v75 = v112[6];
              v76 = &v117[v75];
              v77 = &v113[v75];
              *v76 = *v77;
              *(v76 + 1) = *(v77 + 1);
              v78 = v112[7];
              v79 = &v117[v78];
              v80 = &v113[v78];
              v81 = *v80;
              v79[4] = v80[4];
              *v79 = v81;

              __swift_storeEnumTagSinglePayload(v117, 0, 1, v112);
            }

            v82 = *(v46 + 28);
            v83 = *&v20[v82];
            *&v19[v82] = v83;
            v84 = v83;
            goto LABEL_37;
          case 9u:
            v25 = sub_1DD0DD08C();
            (*(*(v25 - 8) + 16))(v19, v20, v25);
LABEL_37:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v19, v20, *(*(v119 - 8) + 64));
            break;
        }

        *&v13[v17[6]] = *&v14[v17[6]];
        v85 = v17[7];
        v86 = &v13[v85];
        v87 = &v14[v85];
        v88 = *&v14[v85 + 24];

        if (v88)
        {
          *(v86 + 3) = v88;
          *(v86 + 4) = *(v87 + 4);
          (**(v88 - 8))(v86, v87, v88);
        }

        else
        {
          v89 = *v87;
          v90 = *(v87 + 1);
          *(v86 + 4) = *(v87 + 4);
          *v86 = v89;
          *(v86 + 1) = v90;
        }

        v13[v17[8]] = v14[v17[8]];
        v91 = v122;
        *(a1 + v122[6]) = *(a2 + v122[6]);
        v92 = v122[7];
        v93 = *(a2 + v92);
        *(a1 + v92) = v93;
        v94 = v122[8];
        v95 = (a1 + v94);
        v96 = (a2 + v94);
        *v95 = *v96;
        v95[1] = v96[1];
        v97 = v122[9];
        v98 = (a1 + v97);
        v99 = (a2 + v97);
        v100 = type metadata accessor for ActionParaphrase(0);

        v101 = v93;

        if (__swift_getEnumTagSinglePayload(v99, 1, v100))
        {
          v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
          memcpy(v98, v99, *(*(v102 - 8) + 64));
        }

        else
        {
          *v98 = *v99;
          v98[1] = v99[1];
          v103 = *(v100 + 20);
          v104 = (v98 + v103);
          v105 = (v99 + v103);
          v106 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

          if (__swift_getEnumTagSinglePayload(v105, 1, v106))
          {
            v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
            memcpy(v104, v105, *(*(v107 - 8) + 64));
          }

          else
          {
            *v104 = *v105;
            v104[1] = v105[1];
            v104[2] = v105[2];
            v104[3] = v105[3];
            v120 = *(v106 + 24);
            v108 = sub_1DD0DB66C();
            v114 = *(*(v108 - 8) + 16);

            v114(v104 + v120, v105 + v120, v108);
            __swift_storeEnumTagSinglePayload(v104, 0, 1, v106);
          }

          __swift_storeEnumTagSinglePayload(v98, 0, 1, v100);
          v91 = v122;
        }

        v109 = v91[10];
        if (__swift_getEnumTagSinglePayload(a2 + v109, 1, v121))
        {
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
          memcpy(a1 + v109, a2 + v109, *(*(v110 - 8) + 64));
        }

        else
        {
          v118(a1 + v109, a2 + v109, v121);
          __swift_storeEnumTagSinglePayload(a1 + v109, 0, 1, v121);
        }

        *(a1 + v91[11]) = *(a2 + v91[11]);
        goto LABEL_51;
      case 7u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];

LABEL_51:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v22 = *(*(a3 - 8) + 64);

        return memcpy(a1, a2, v22);
    }
  }

  return a1;
}

char *sub_1DCD57598(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    *a1 = *a2;
    v6 = type metadata accessor for PluginAction(0);
    v7 = v6[5];
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = sub_1DD0DB04C();
    v83 = *(*(v10 - 8) + 32);
    v83(v8, v9, v10);
    v11 = type metadata accessor for Input(0);
    v12 = v11[5];
    v13 = &v8[v12];
    v14 = &v9[v12];
    v84 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v15 = sub_1DD0DC76C();
        (*(*(v15 - 8) + 32))(v13, v14, v15);
        goto LABEL_27;
      case 1u:
        v26 = sub_1DD0DC76C();
        (*(*(v26 - 8) + 32))(v13, v14, v26);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v13[*(v27 + 48)] = *&v14[*(v27 + 48)];
        goto LABEL_27;
      case 4u:
        v29 = sub_1DD0DB1EC();
        (*(*(v29 - 8) + 32))(v13, v14, v29);
        goto LABEL_27;
      case 6u:
        v80 = v10;
        v30 = sub_1DD0DB4BC();
        (*(*(v30 - 8) + 32))(v13, v14, v30);
        v78 = type metadata accessor for USOParse(0);
        v31 = v78[5];
        v75 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v14[v31], 1, v75))
        {
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v13[v31], &v14[v31], *(*(v32 - 8) + 64));
        }

        else
        {
          (*(*(v75 - 8) + 32))(&v13[v31], &v14[v31]);
          __swift_storeEnumTagSinglePayload(&v13[v31], 0, 1, v75);
        }

        *&v13[v78[6]] = *&v14[v78[6]];
        v40 = v78[7];
        v41 = &v13[v40];
        v42 = &v14[v40];
        v41[4] = v42[4];
        *v41 = *v42;
        goto LABEL_23;
      case 7u:
        v80 = v10;
        v33 = sub_1DD0DB4BC();
        (*(*(v33 - 8) + 32))(v13, v14, v33);
        v79 = type metadata accessor for USOParse(0);
        v34 = v79[5];
        v76 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v14[v34], 1, v76))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v13[v34], &v14[v34], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v76 - 8) + 32))(&v13[v34], &v14[v34]);
          __swift_storeEnumTagSinglePayload(&v13[v34], 0, 1, v76);
        }

        *&v13[v79[6]] = *&v14[v79[6]];
        v43 = v79[7];
        v44 = &v13[v43];
        v45 = &v14[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        v46 = type metadata accessor for LinkParse(0);
        *&v13[v46[5]] = *&v14[v46[5]];
        *&v13[v46[6]] = *&v14[v46[6]];
        *&v13[v46[7]] = *&v14[v46[7]];
LABEL_23:
        swift_storeEnumTagMultiPayload();
        v10 = v80;
        break;
      case 8u:
        v72 = v11;
        v18 = sub_1DD0DD12C();
        (*(*(v18 - 8) + 32))(v13, v14, v18);
        v19 = type metadata accessor for NLRouterParse(0);
        *&v13[*(v19 + 20)] = *&v14[*(v19 + 20)];
        v73 = v19;
        v20 = *(v19 + 24);
        v77 = &v13[v20];
        v21 = &v14[v20];
        v22 = type metadata accessor for USOParse(0);
        v74 = v21;
        v23 = v21;
        v24 = v22;
        if (__swift_getEnumTagSinglePayload(v23, 1, v22))
        {
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v77, v74, *(*(v25 - 8) + 64));
          v11 = v72;
        }

        else
        {
          v81 = v10;
          v36 = sub_1DD0DB4BC();
          (*(*(v36 - 8) + 32))(v77, v74, v36);
          v71 = v24;
          v37 = *(v24 + 20);
          v38 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v74[v37], 1, v38))
          {
            v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v77[v37], &v74[v37], *(*(v39 - 8) + 64));
          }

          else
          {
            (*(*(v38 - 8) + 32))(&v77[v37], &v74[v37], v38);
            __swift_storeEnumTagSinglePayload(&v77[v37], 0, 1, v38);
          }

          v11 = v72;
          *&v77[*(v71 + 24)] = *&v74[*(v71 + 24)];
          v47 = *(v71 + 28);
          v48 = &v77[v47];
          v49 = &v74[v47];
          v48[4] = v49[4];
          *v48 = *v49;
          __swift_storeEnumTagSinglePayload(v77, 0, 1, v71);
          v10 = v81;
        }

        *&v13[*(v73 + 28)] = *&v14[*(v73 + 28)];
        goto LABEL_27;
      case 9u:
        v28 = sub_1DD0DD08C();
        (*(*(v28 - 8) + 32))(v13, v14, v28);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v13, v14, *(*(v84 - 8) + 64));
        break;
    }

    *&v8[v11[6]] = *&v9[v11[6]];
    v50 = v11[7];
    v51 = &v8[v50];
    v52 = &v9[v50];
    v53 = *(v52 + 1);
    *v51 = *v52;
    *(v51 + 1) = v53;
    *(v51 + 4) = *(v52 + 4);
    v8[v11[8]] = v9[v11[8]];
    *&a1[v6[6]] = *&a2[v6[6]];
    *&a1[v6[7]] = *&a2[v6[7]];
    *&a1[v6[8]] = *&a2[v6[8]];
    v54 = v6[9];
    v55 = &a1[v54];
    v56 = &a2[v54];
    v57 = type metadata accessor for ActionParaphrase(0);
    if (__swift_getEnumTagSinglePayload(v56, 1, v57))
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
      memcpy(v55, v56, *(*(v58 - 8) + 64));
    }

    else
    {
      *v55 = *v56;
      v59 = *(v57 + 20);
      v60 = &v55[v59];
      v61 = &v56[v59];
      v62 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
      if (__swift_getEnumTagSinglePayload(v61, 1, v62))
      {
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
        memcpy(v60, v61, *(*(v63 - 8) + 64));
      }

      else
      {
        v64 = *(v61 + 1);
        *v60 = *v61;
        *(v60 + 1) = v64;
        v82 = v10;
        v65 = *(v62 + 24);
        v66 = sub_1DD0DB66C();
        v67 = &v60[v65];
        v68 = &v61[v65];
        v10 = v82;
        (*(*(v66 - 8) + 32))(v67, v68, v66);
        __swift_storeEnumTagSinglePayload(v60, 0, 1, v62);
      }

      __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
    }

    v69 = v6[10];
    if (__swift_getEnumTagSinglePayload(&a2[v69], 1, v10))
    {
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
      memcpy(&a1[v69], &a2[v69], *(*(v70 - 8) + 64));
    }

    else
    {
      v83(&a1[v69], &a2[v69], v10);
      __swift_storeEnumTagSinglePayload(&a1[v69], 0, 1, v10);
    }

    a1[v6[11]] = a2[v6[11]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v16 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v16);
  }
}

char *sub_1DCD57F70(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCB4F3E0(a1, type metadata accessor for FlowToActingFlowAdapter.State);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    *a1 = *a2;
    v6 = type metadata accessor for PluginAction(0);
    v7 = v6[5];
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = sub_1DD0DB04C();
    v83 = *(*(v10 - 8) + 32);
    v83(v8, v9, v10);
    v11 = type metadata accessor for Input(0);
    v12 = v11[5];
    v13 = &v8[v12];
    v14 = &v9[v12];
    v84 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v15 = sub_1DD0DC76C();
        (*(*(v15 - 8) + 32))(v13, v14, v15);
        goto LABEL_28;
      case 1u:
        v26 = sub_1DD0DC76C();
        (*(*(v26 - 8) + 32))(v13, v14, v26);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v13[*(v27 + 48)] = *&v14[*(v27 + 48)];
        goto LABEL_28;
      case 4u:
        v29 = sub_1DD0DB1EC();
        (*(*(v29 - 8) + 32))(v13, v14, v29);
        goto LABEL_28;
      case 6u:
        v80 = v10;
        v30 = sub_1DD0DB4BC();
        (*(*(v30 - 8) + 32))(v13, v14, v30);
        v78 = type metadata accessor for USOParse(0);
        v31 = v78[5];
        v75 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v14[v31], 1, v75))
        {
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v13[v31], &v14[v31], *(*(v32 - 8) + 64));
        }

        else
        {
          (*(*(v75 - 8) + 32))(&v13[v31], &v14[v31]);
          __swift_storeEnumTagSinglePayload(&v13[v31], 0, 1, v75);
        }

        *&v13[v78[6]] = *&v14[v78[6]];
        v40 = v78[7];
        v41 = &v13[v40];
        v42 = &v14[v40];
        v41[4] = v42[4];
        *v41 = *v42;
        goto LABEL_24;
      case 7u:
        v80 = v10;
        v33 = sub_1DD0DB4BC();
        (*(*(v33 - 8) + 32))(v13, v14, v33);
        v79 = type metadata accessor for USOParse(0);
        v34 = v79[5];
        v76 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v14[v34], 1, v76))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v13[v34], &v14[v34], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v76 - 8) + 32))(&v13[v34], &v14[v34]);
          __swift_storeEnumTagSinglePayload(&v13[v34], 0, 1, v76);
        }

        *&v13[v79[6]] = *&v14[v79[6]];
        v43 = v79[7];
        v44 = &v13[v43];
        v45 = &v14[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        v46 = type metadata accessor for LinkParse(0);
        *&v13[v46[5]] = *&v14[v46[5]];
        *&v13[v46[6]] = *&v14[v46[6]];
        *&v13[v46[7]] = *&v14[v46[7]];
LABEL_24:
        swift_storeEnumTagMultiPayload();
        v10 = v80;
        break;
      case 8u:
        v72 = v11;
        v18 = sub_1DD0DD12C();
        (*(*(v18 - 8) + 32))(v13, v14, v18);
        v19 = type metadata accessor for NLRouterParse(0);
        *&v13[*(v19 + 20)] = *&v14[*(v19 + 20)];
        v73 = v19;
        v20 = *(v19 + 24);
        v77 = &v13[v20];
        v21 = &v14[v20];
        v22 = type metadata accessor for USOParse(0);
        v74 = v21;
        v23 = v21;
        v24 = v22;
        if (__swift_getEnumTagSinglePayload(v23, 1, v22))
        {
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v77, v74, *(*(v25 - 8) + 64));
          v11 = v72;
        }

        else
        {
          v81 = v10;
          v36 = sub_1DD0DB4BC();
          (*(*(v36 - 8) + 32))(v77, v74, v36);
          v71 = v24;
          v37 = *(v24 + 20);
          v38 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v74[v37], 1, v38))
          {
            v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v77[v37], &v74[v37], *(*(v39 - 8) + 64));
          }

          else
          {
            (*(*(v38 - 8) + 32))(&v77[v37], &v74[v37], v38);
            __swift_storeEnumTagSinglePayload(&v77[v37], 0, 1, v38);
          }

          v11 = v72;
          *&v77[*(v71 + 24)] = *&v74[*(v71 + 24)];
          v47 = *(v71 + 28);
          v48 = &v77[v47];
          v49 = &v74[v47];
          v48[4] = v49[4];
          *v48 = *v49;
          __swift_storeEnumTagSinglePayload(v77, 0, 1, v71);
          v10 = v81;
        }

        *&v13[*(v73 + 28)] = *&v14[*(v73 + 28)];
        goto LABEL_28;
      case 9u:
        v28 = sub_1DD0DD08C();
        (*(*(v28 - 8) + 32))(v13, v14, v28);
LABEL_28:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v13, v14, *(*(v84 - 8) + 64));
        break;
    }

    *&v8[v11[6]] = *&v9[v11[6]];
    v50 = v11[7];
    v51 = &v8[v50];
    v52 = &v9[v50];
    v53 = *(v52 + 1);
    *v51 = *v52;
    *(v51 + 1) = v53;
    *(v51 + 4) = *(v52 + 4);
    v8[v11[8]] = v9[v11[8]];
    *&a1[v6[6]] = *&a2[v6[6]];
    *&a1[v6[7]] = *&a2[v6[7]];
    *&a1[v6[8]] = *&a2[v6[8]];
    v54 = v6[9];
    v55 = &a1[v54];
    v56 = &a2[v54];
    v57 = type metadata accessor for ActionParaphrase(0);
    if (__swift_getEnumTagSinglePayload(v56, 1, v57))
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
      memcpy(v55, v56, *(*(v58 - 8) + 64));
    }

    else
    {
      *v55 = *v56;
      v59 = *(v57 + 20);
      v60 = &v55[v59];
      v61 = &v56[v59];
      v62 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
      if (__swift_getEnumTagSinglePayload(v61, 1, v62))
      {
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
        memcpy(v60, v61, *(*(v63 - 8) + 64));
      }

      else
      {
        v64 = *(v61 + 1);
        *v60 = *v61;
        *(v60 + 1) = v64;
        v82 = v10;
        v65 = *(v62 + 24);
        v66 = sub_1DD0DB66C();
        v67 = &v60[v65];
        v68 = &v61[v65];
        v10 = v82;
        (*(*(v66 - 8) + 32))(v67, v68, v66);
        __swift_storeEnumTagSinglePayload(v60, 0, 1, v62);
      }

      __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
    }

    v69 = v6[10];
    if (__swift_getEnumTagSinglePayload(&a2[v69], 1, v10))
    {
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
      memcpy(&a1[v69], &a2[v69], *(*(v70 - 8) + 64));
    }

    else
    {
      v83(&a1[v69], &a2[v69], v10);
      __swift_storeEnumTagSinglePayload(&a1[v69], 0, 1, v10);
    }

    a1[v6[11]] = a2[v6[11]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}

uint64_t sub_1DCD5896C(uint64_t a1)
{
  result = type metadata accessor for PluginAction(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NoopFlow(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NoopFlow(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DCD58BCC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_26_6();
  v5(v4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1DCD58C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowToActingFlowAdapter.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCD58C8C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_26_6();
  v5(v4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_1DCD58CE8()
{
  result = qword_1ECCA5028;
  if (!qword_1ECCA5028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA5020, &unk_1DD0F0CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5028);
  }

  return result;
}

void sub_1DCD58D90(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5038, &qword_1DD0F0CF0);
  OUTLINED_FUNCTION_20_0(v2);

  sub_1DCD549A8(a1);
}

char *sub_1DCD58E08(char *a1, char **a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7 = *a2;
      v8 = v7;
      *a1 = v7;
      swift_storeEnumTagMultiPayload();
      return a1;
    case 1:
      *a1 = *a2;
      *(a1 + 1) = a2[1];
      a1[16] = *(a2 + 16);
      *(a1 + 3) = a2[3];
      sub_1DD0DCF8C();
    case 0:
      *a1 = *a2;
      *(a1 + 1) = a2[1];
      a1[16] = *(a2 + 16);
      *(a1 + 3) = a2[3];
      sub_1DD0DCF8C();
    default:
      v9 = *(v5 + 64);

      return memcpy(a1, a2, v9);
  }
}

void sub_1DCD59B60(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v14 = *a1;

      break;
    case 1:

      v4 = *(a1 + 48);
      if (v4 <= 0xFB)
      {
        sub_1DCD21390(*(a1 + 32), *(a1 + 40), v4);
      }

      v5 = type metadata accessor for ExecuteResponse(0);
      v6 = a1 + *(v5 + 36);
      v7 = type metadata accessor for PluginAction(0);
      if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
      {

        v8 = v6 + v7[5];
        v9 = sub_1DD0DB04C();
        v10 = *(*(v9 - 8) + 8);
        v10(v8, v9);
        v11 = type metadata accessor for Input(0);
        v12 = (v8 + *(v11 + 20));
        type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v13 = sub_1DD0DC76C();
            goto LABEL_17;
          case 1u:
            v18 = sub_1DD0DC76C();
            (*(*(v18 - 8) + 8))(v12, v18);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

            break;
          case 2u:

            break;
          case 3u:
            swift_unknownObjectRelease();
            break;
          case 4u:
            v13 = sub_1DD0DB1EC();
            goto LABEL_17;
          case 5u:

            break;
          case 6u:
            v37 = v10;
            v19 = sub_1DD0DB4BC();
            (*(*(v19 - 8) + 8))(v12, v19);
            v20 = *(type metadata accessor for USOParse(0) + 20);
            v21 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v12 + v20, 1, v21))
            {
              (*(*(v21 - 8) + 8))(v12 + v20, v21);
            }

            goto LABEL_27;
          case 7u:
            v37 = v10;
            v15 = sub_1DD0DB4BC();
            (*(*(v15 - 8) + 8))(v12, v15);
            v16 = *(type metadata accessor for USOParse(0) + 20);
            v17 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v12 + v16, 1, v17))
            {
              (*(*(v17 - 8) + 8))(v12 + v16, v17);
            }

            type metadata accessor for LinkParse(0);

LABEL_27:

            goto LABEL_33;
          case 8u:
            v37 = v10;
            v22 = sub_1DD0DD12C();
            (*(*(v22 - 8) + 8))(v12, v22);
            v23 = type metadata accessor for NLRouterParse(0);

            v24 = v12 + *(v23 + 24);
            v36 = type metadata accessor for USOParse(0);
            if (!__swift_getEnumTagSinglePayload(v24, 1, v36))
            {
              v25 = sub_1DD0DB4BC();
              (*(*(v25 - 8) + 8))(v24, v25);
              v35 = *(v36 + 20);
              v34 = sub_1DD0DB3EC();
              if (!__swift_getEnumTagSinglePayload(v24 + v35, 1, v34))
              {
                (*(*(v34 - 8) + 8))(v24 + v35);
              }
            }

LABEL_33:
            v10 = v37;
            break;
          case 9u:
            v13 = sub_1DD0DD08C();
LABEL_17:
            (*(*(v13 - 8) + 8))(v12, v13);
            break;
          default:
            break;
        }

        v26 = (v8 + *(v11 + 28));
        if (v26[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
        }

        v27 = v6 + v7[9];
        v28 = type metadata accessor for ActionParaphrase(0);
        if (!__swift_getEnumTagSinglePayload(v27, 1, v28))
        {

          v29 = v27 + *(v28 + 20);
          v30 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
          if (!__swift_getEnumTagSinglePayload(v29, 1, v30))
          {

            v31 = *(v30 + 24);
            v32 = sub_1DD0DB66C();
            (*(*(v32 - 8) + 8))(v29 + v31, v32);
          }
        }

        v33 = v7[10];
        if (!__swift_getEnumTagSinglePayload(v6 + v33, 1, v9))
        {
          v10(v6 + v33, v9);
        }
      }

      if (*(a1 + *(v5 + 40) + 8))
      {
      }

      break;
    case 0:

      break;
  }
}

void *sub_1DCD5A248(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7 = *a2;
      v8 = v7;
      *a1 = v7;
      swift_storeEnumTagMultiPayload();
      return a1;
    case 1:
      *a1 = *a2;
      a1[1] = a2[1];
      *(a1 + 16) = *(a2 + 16);
      a1[3] = a2[3];
      sub_1DD0DCF8C();
    case 0:
      *a1 = *a2;
      a1[1] = a2[1];
      *(a1 + 16) = *(a2 + 16);
      a1[3] = a2[3];
      sub_1DD0DCF8C();
    default:
      v9 = *(*(a3 - 8) + 64);

      return memcpy(a1, a2, v9);
  }
}

void *sub_1DCD5AF78(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCB4F3E0(a1, type metadata accessor for FlowToActingFlowAdapter.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7 = *a2;
      v8 = v7;
      *a1 = v7;
      swift_storeEnumTagMultiPayload();
      return a1;
    case 1:
      *a1 = *a2;
      a1[1] = a2[1];
      *(a1 + 16) = *(a2 + 16);
      a1[3] = a2[3];
      sub_1DD0DCF8C();
    case 0:
      *a1 = *a2;
      a1[1] = a2[1];
      *(a1 + 16) = *(a2 + 16);
      a1[3] = a2[3];
      sub_1DD0DCF8C();
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *sub_1DCD5BD30(void *a1, void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    *(a1 + 16) = *(a2 + 16);
    a1[3] = a2[3];
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 48) = *(a2 + 48);
    v6 = type metadata accessor for ExecuteResponse(0);
    v7 = *(v6 + 36);
    v8 = (a1 + v7);
    v9 = (a2 + v7);
    v10 = type metadata accessor for PluginAction(0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD0, &qword_1DD0EDF38);
      memcpy(v8, v9, *(*(v11 - 8) + 64));
    }

    else
    {
      v96 = v6;
      *v8 = *v9;
      v14 = v10[5];
      v15 = v8 + v14;
      v16 = v9 + v14;
      v95 = sub_1DD0DB04C();
      v92 = *(*(v95 - 8) + 32);
      v92(v15, v16);
      v17 = type metadata accessor for Input(0);
      v18 = v17[5];
      v97 = &v15[v18];
      v19 = &v16[v18];
      v93 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v20 = sub_1DD0DC76C();
          (*(*(v20 - 8) + 32))(v97, v19, v20);
          goto LABEL_29;
        case 1u:
          v29 = sub_1DD0DC76C();
          (*(*(v29 - 8) + 32))(v97, v19, v29);
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v97[*(v30 + 48)] = *&v19[*(v30 + 48)];
          goto LABEL_29;
        case 4u:
          v32 = sub_1DD0DB1EC();
          (*(*(v32 - 8) + 32))(v97, v19, v32);
          goto LABEL_29;
        case 6u:
          v87 = v17;
          v33 = sub_1DD0DB4BC();
          (*(*(v33 - 8) + 32))(v97, v19, v33);
          v90 = type metadata accessor for USOParse(0);
          v34 = v90[5];
          v35 = sub_1DD0DB3EC();
          v85 = v34;
          v36 = &v19[v34];
          v37 = v35;
          if (__swift_getEnumTagSinglePayload(v36, 1, v35))
          {
            v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v97[v85], &v19[v85], *(*(v38 - 8) + 64));
          }

          else
          {
            (*(*(v37 - 8) + 32))(&v97[v85], &v19[v85], v37);
            __swift_storeEnumTagSinglePayload(&v97[v85], 0, 1, v37);
          }

          *&v97[v90[6]] = *&v19[v90[6]];
          v50 = v90[7];
          v51 = &v97[v50];
          v52 = &v19[v50];
          v51[4] = v52[4];
          *v51 = *v52;
          goto LABEL_25;
        case 7u:
          v87 = v17;
          v39 = sub_1DD0DB4BC();
          (*(*(v39 - 8) + 32))(v97, v19, v39);
          v91 = type metadata accessor for USOParse(0);
          v40 = v91[5];
          v41 = sub_1DD0DB3EC();
          v86 = v40;
          v42 = &v19[v40];
          v43 = v41;
          if (__swift_getEnumTagSinglePayload(v42, 1, v41))
          {
            v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v45 = v97;
            memcpy(&v97[v86], &v19[v86], *(*(v44 - 8) + 64));
          }

          else
          {
            (*(*(v43 - 8) + 32))(&v97[v86], &v19[v86], v43);
            __swift_storeEnumTagSinglePayload(&v97[v86], 0, 1, v43);
            v45 = v97;
          }

          *&v45[v91[6]] = *&v19[v91[6]];
          v53 = v91[7];
          v54 = &v45[v53];
          v55 = &v19[v53];
          v54[4] = v55[4];
          *v54 = *v55;
          v56 = type metadata accessor for LinkParse(0);
          *&v45[v56[5]] = *&v19[v56[5]];
          *&v45[v56[6]] = *&v19[v56[6]];
          *&v45[v56[7]] = *&v19[v56[7]];
LABEL_25:
          swift_storeEnumTagMultiPayload();
          v17 = v87;
          break;
        case 8u:
          v89 = v15;
          v21 = sub_1DD0DD12C();
          (*(*(v21 - 8) + 32))(v97, v19, v21);
          v22 = type metadata accessor for NLRouterParse(0);
          *&v97[*(v22 + 20)] = *&v19[*(v22 + 20)];
          v82 = v22;
          v23 = *(v22 + 24);
          v84 = &v97[v23];
          v24 = &v19[v23];
          v25 = type metadata accessor for USOParse(0);
          v83 = v24;
          v26 = v24;
          v27 = v25;
          if (__swift_getEnumTagSinglePayload(v26, 1, v25))
          {
            v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v84, v83, *(*(v28 - 8) + 64));
            v15 = v89;
          }

          else
          {
            v88 = v17;
            v46 = sub_1DD0DB4BC();
            (*(*(v46 - 8) + 32))(v84, v83, v46);
            v81 = v27;
            v47 = *(v27 + 20);
            v48 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v83[v47], 1, v48))
            {
              v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v84[v47], &v83[v47], *(*(v49 - 8) + 64));
            }

            else
            {
              (*(*(v48 - 8) + 32))(&v84[v47], &v83[v47], v48);
              __swift_storeEnumTagSinglePayload(&v84[v47], 0, 1, v48);
            }

            v15 = v89;
            *&v84[*(v81 + 24)] = *&v83[*(v81 + 24)];
            v57 = *(v81 + 28);
            v58 = &v84[v57];
            v59 = &v83[v57];
            v58[4] = v59[4];
            *v58 = *v59;
            __swift_storeEnumTagSinglePayload(v84, 0, 1, v81);
            v17 = v88;
          }

          *&v97[*(v82 + 28)] = *&v19[*(v82 + 28)];
          goto LABEL_29;
        case 9u:
          v31 = sub_1DD0DD08C();
          (*(*(v31 - 8) + 32))(v97, v19, v31);
LABEL_29:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v97, v19, *(*(v93 - 8) + 64));
          break;
      }

      *&v15[v17[6]] = *&v16[v17[6]];
      v60 = v17[7];
      v61 = &v15[v60];
      v62 = &v16[v60];
      v63 = *(v62 + 1);
      *v61 = *v62;
      *(v61 + 1) = v63;
      *(v61 + 4) = *(v62 + 4);
      v15[v17[8]] = v16[v17[8]];
      *(v8 + v10[6]) = *(v9 + v10[6]);
      *(v8 + v10[7]) = *(v9 + v10[7]);
      *(v8 + v10[8]) = *(v9 + v10[8]);
      v64 = v10[9];
      v65 = (v8 + v64);
      v66 = (v9 + v64);
      v67 = type metadata accessor for ActionParaphrase(0);
      if (__swift_getEnumTagSinglePayload(v66, 1, v67))
      {
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
        memcpy(v65, v66, *(*(v68 - 8) + 64));
      }

      else
      {
        *v65 = *v66;
        v69 = *(v67 + 20);
        v98 = (v65 + v69);
        v70 = (v66 + v69);
        v71 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
        if (__swift_getEnumTagSinglePayload(v70, 1, v71))
        {
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
          memcpy(v98, v70, *(*(v72 - 8) + 64));
        }

        else
        {
          v73 = v70[1];
          *v98 = *v70;
          v98[1] = v73;
          v94 = *(v71 + 24);
          v74 = sub_1DD0DB66C();
          (*(*(v74 - 8) + 32))(v98 + v94, v70 + v94, v74);
          __swift_storeEnumTagSinglePayload(v98, 0, 1, v71);
        }

        __swift_storeEnumTagSinglePayload(v65, 0, 1, v67);
      }

      v75 = v10[10];
      v6 = v96;
      if (__swift_getEnumTagSinglePayload(v9 + v75, 1, v95))
      {
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
        memcpy(v8 + v75, v9 + v75, *(*(v76 - 8) + 64));
      }

      else
      {
        (v92)(v8 + v75, v9 + v75, v95);
        __swift_storeEnumTagSinglePayload(v8 + v75, 0, 1, v95);
      }

      *(v8 + v10[11]) = *(v9 + v10[11]);
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
    }

    v77 = *(v6 + 40);
    v78 = (a1 + v77);
    v79 = (a2 + v77);
    v80 = v79[1];
    *v78 = *v79;
    v78[1] = v80;
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v12 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v12);
  }
}