void sub_1ADEC8784(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9C8, &qword_1AE245670);
  v4 = sub_1AE23D9DC();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1AE23E31C();
      MEMORY[0x1B26FCBD0](v16);
      v17 = sub_1AE23E34C();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
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
}

void sub_1ADEC89A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1AE23D9DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    v30 = v5;
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      sub_1AE23CD0C();
      sub_1AE23E31C();
      v20 = v19;
      sub_1AE23CDAC();
      v21 = sub_1AE23E34C();

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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v4 = v29;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
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
    *v4 = v7;
  }
}

void sub_1ADEC8BF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA28, &qword_1AE2456B0);
  v4 = sub_1AE23D9DC();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1AE23E31C();
      sub_1ADDD86D8(v18, v19);
      sub_1AE23BECC();
      v20 = sub_1AE23E34C();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_1ADEC8E2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA20, &qword_1AE2456A8);
  v4 = sub_1AE23D9DC();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_1AE23E30C();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
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

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_1ADEC901C(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA990, &qword_1AE245640);
  v3 = sub_1AE23D9DC();
  v4 = v3;
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
    for (i = v3 + 56; v8; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v15 = *(*(v2 + 48) + 16 * (v11 | (v5 << 6)));
      sub_1AE23E31C();

      sub_1ADF76AA0(v16, v15);
      sub_1ADF76AA0(v16, *(&v15 + 1));
      sub_1AE23E34C();
      v14 = sub_1AE23D91C();
      *(i + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + 16 * v14) = v15;
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
        goto LABEL_14;
      }

      v13 = *(v2 + 56 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v1 = v4;
  }
}

void sub_1ADEC91F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9B0, &qword_1AE254430);
  v4 = sub_1AE23D9DC();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1AE23E31C();

      sub_1AE23CDAC();
      v20 = sub_1AE23E34C();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_1ADEC9428(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1AE23BDDC();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9A0, &qword_1AE245650);
  v7 = sub_1AE23D9DC();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1ADDE5F54(&unk_1ED969ED8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v21 = sub_1AE23CBBC();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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

        v2 = v29;
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
}

void sub_1ADEC9744(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1AE23DD7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1AE23D06C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1ADEC9CB4(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1ADEC983C(0, v2, 1, a1);
  }
}

void sub_1ADEC983C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v53[2] = *MEMORY[0x1E69E9840];
  if (a3 == a2)
  {
    return;
  }

  v6 = *a4;
  v7 = *a4 + 16 * a3 - 16;
  v8 = a1 - a3;
  v49 = *a4;
LABEL_5:
  v45 = v7;
  v46 = a3;
  v9 = *(v6 + 16 * a3);
  v44 = v8;
  v10 = v8;
  while (1)
  {
    v12 = *v7;
    v11 = *(v7 + 8);
    v13 = *(&v9 + 1);
    v14 = *(&v9 + 1) >> 62;
    if ((*(&v9 + 1) >> 62) > 1)
    {
      if (v14 != 2)
      {
        memset(v53, 0, 14);
        v51 = v9;
        sub_1ADDD86D8(v12, v11);
        sub_1ADDD86D8(v12, v11);
        v15 = v51;
        sub_1ADE54BA0(v53, v53, v12, v11, v51, v13, &v52);
        if (v5)
        {
LABEL_48:
          sub_1ADDCC35C(v12, v11);
          v42 = v15;
          goto LABEL_50;
        }

        sub_1ADDCC35C(v12, v11);
        sub_1ADDCC35C(v51, v13);
        sub_1ADDCC35C(v12, v11);
        sub_1ADDCC35C(v51, v13);
        if ((v52 & 1) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_39;
      }

      v50 = v10;
      v16 = v9;
      v17 = *(v9 + 16);
      v47 = *(v9 + 24);
      sub_1ADDD86D8(v12, v11);
      sub_1ADDD86D8(v16, v13);
      sub_1ADDD86D8(v12, v11);
      sub_1ADDD86D8(v16, v13);
      v18 = sub_1AE23BB7C();
      if (v18)
      {
        v19 = sub_1AE23BBAC();
        if (__OFSUB__(v17, v19))
        {
          goto LABEL_45;
        }

        v18 += v17 - v19;
      }

      v20 = __OFSUB__(v47, v17);
      v21 = v47 - v17;
      if (v20)
      {
        goto LABEL_44;
      }

      v22 = sub_1AE23BB9C();
      v23 = v22 >= v21 ? v21 : v22;
      v24 = v23 + v18;
      v25 = v18 ? v24 : 0;
      v26 = v18;
      v27 = v12;
      v28 = v11;
      v29 = v16;
      v30 = v13;
      v31 = v5;
    }

    else
    {
      v50 = v10;
      if (!v14)
      {
        v15 = v9;
        v53[0] = v9;
        LODWORD(v53[1]) = DWORD2(v9);
        WORD2(v53[1]) = WORD6(v9);
        sub_1ADDD86D8(v12, v11);
        sub_1ADDD86D8(v12, v11);
        sub_1ADE54BA0(v53, v53 + BYTE6(v13), v12, v11, v15, v13, &v52);
        if (v5)
        {
          goto LABEL_48;
        }

        sub_1ADDCC35C(v12, v11);
        sub_1ADDCC35C(v15, v13);
        sub_1ADDCC35C(v12, v11);
        sub_1ADDCC35C(v15, v13);
        if ((v52 & 1) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_39;
      }

      v48 = v5;
      v16 = v9;
      v32 = v9;
      v33 = (v9 >> 32) - v9;
      if (v9 >> 32 < v9)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
      }

      sub_1ADDD86D8(v12, v11);
      sub_1ADDD86D8(v16, v13);
      sub_1ADDD86D8(v12, v11);
      sub_1ADDD86D8(v16, v13);
      v34 = sub_1AE23BB7C();
      if (v34)
      {
        v35 = sub_1AE23BBAC();
        if (__OFSUB__(v32, v35))
        {
          goto LABEL_46;
        }

        v34 += v32 - v35;
      }

      v36 = sub_1AE23BB9C();
      v37 = v36 >= v33 ? v33 : v36;
      v38 = v37 + v34;
      v25 = v34 ? v38 : 0;
      v26 = v34;
      v27 = v12;
      v28 = v11;
      v29 = v16;
      v30 = v13;
      v31 = v48;
    }

    sub_1ADE54BA0(v26, v25, v27, v28, v29, v30, v53);
    v5 = v31;
    if (v31)
    {
      break;
    }

    sub_1ADDCC35C(v12, v11);
    sub_1ADDCC35C(v16, v13);
    sub_1ADDCC35C(v12, v11);
    v39 = v53[0];
    sub_1ADDCC35C(v16, v13);
    v6 = v49;
    v10 = v50;
    if ((v39 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_39:
    if (!v6)
    {
      goto LABEL_47;
    }

    v40 = *v7;
    v9 = *(v7 + 16);
    *v7 = v9;
    *(v7 + 16) = v40;
    v7 -= 16;
    if (__CFADD__(v10++, 1))
    {
LABEL_4:
      a3 = v46 + 1;
      v7 = v45 + 16;
      v8 = v44 - 1;
      if (v46 + 1 == a2)
      {
        return;
      }

      goto LABEL_5;
    }
  }

  sub_1ADDCC35C(v12, v11);
  v42 = v16;
LABEL_50:
  sub_1ADDCC35C(v42, v13);

  __break(1u);
}

void sub_1ADEC9CB4(void **a1, uint64_t a2, char **a3, int64_t a4)
{
  v8 = v4;
  v136 = *MEMORY[0x1E69E9840];
  v9 = a3[1];
  if (v9 >= 1)
  {
    v7 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = v7;
      v123 = v10;
      v118 = v7;
      if (v7 + 1 >= v9)
      {
        v9 = v7 + 1;
        goto LABEL_43;
      }

      v129 = v8;
      v12 = &(*a3)[16 * v7 + 16];
      v13 = *v12;
      v14 = v12[1];
      v121 = 16 * v7;
      v15 = &(*a3)[16 * v7];
      v5 = *v15;
      v6 = *(v15 + 1);
      sub_1ADDD86D8(*v12, v14);
      sub_1ADDD86D8(v5, v6);
      v130 = sub_1ADE56D70(v13, v14, v5, v6);
      sub_1ADDCC35C(v5, v6);
      sub_1ADDCC35C(v13, v14);
      v8 = v7 + 2;
      v16 = (v15 + 24);
      v125 = v9;
      while (v9 != v8)
      {
        v9 = v16[1];
        v10 = v16[2];
        v5 = *(v16 - 1);
        v6 = *v16;
        v17 = v10 >> 62;
        if ((v10 >> 62) > 1)
        {
          if (v17 == 2)
          {
            v19 = *(v9 + 16);
            v127 = *(v9 + 24);
            sub_1ADDD86D8(v5, v6);
            sub_1ADDD86D8(v9, v10);
            sub_1ADDD86D8(v5, v6);
            sub_1ADDD86D8(v9, v10);
            v20 = sub_1AE23BB7C();
            if (v20)
            {
              v21 = sub_1AE23BBAC();
              if (__OFSUB__(v19, v21))
              {
                goto LABEL_177;
              }

              v20 += v19 - v21;
            }

            v51 = __OFSUB__(v127, v19);
            v22 = v127 - v19;
            if (v51)
            {
              goto LABEL_173;
            }

            v23 = sub_1AE23BB9C();
            if (v23 >= v22)
            {
              v24 = v22;
            }

            else
            {
              v24 = v23;
            }

LABEL_25:
            v27 = v24 + v20;
            if (v20)
            {
              v28 = v27;
            }

            else
            {
              v28 = 0;
            }

            sub_1ADE54BA0(v20, v28, v5, v6, v9, v10, v134);
            if (v129)
            {
              goto LABEL_194;
            }

            sub_1ADDCC35C(v5, v6);
            sub_1ADDCC35C(v9, v10);
            sub_1ADDCC35C(v5, v6);
            v29 = LOBYTE(v134[0]);
            sub_1ADDCC35C(v9, v10);
            goto LABEL_6;
          }

          memset(v134, 0, 14);
          sub_1ADDD86D8(v5, v6);
          sub_1ADDD86D8(v5, v6);
          v18 = v134;
        }

        else
        {
          if (v17)
          {
            if (v9 >> 32 < v9)
            {
              goto LABEL_172;
            }

            sub_1ADDD86D8(v5, v6);
            sub_1ADDD86D8(v9, v10);
            sub_1ADDD86D8(v5, v6);
            sub_1ADDD86D8(v9, v10);
            v20 = sub_1AE23BB7C();
            if (v20)
            {
              v25 = sub_1AE23BBAC();
              if (__OFSUB__(v9, v25))
              {
                goto LABEL_178;
              }

              v20 += v9 - v25;
            }

            v26 = sub_1AE23BB9C();
            v24 = (v9 >> 32) - v9;
            if (v26 < v24)
            {
              v24 = v26;
            }

            goto LABEL_25;
          }

          v134[0] = v16[1];
          LOWORD(v134[1]) = v10;
          BYTE2(v134[1]) = BYTE2(v10);
          BYTE3(v134[1]) = BYTE3(v10);
          BYTE4(v134[1]) = BYTE4(v10);
          BYTE5(v134[1]) = BYTE5(v10);
          sub_1ADDD86D8(v5, v6);
          sub_1ADDD86D8(v5, v6);
          v18 = v134 + BYTE6(v10);
        }

        sub_1ADE54BA0(v134, v18, v5, v6, v9, v10, &v133);
        if (v129)
        {
          goto LABEL_194;
        }

        sub_1ADDCC35C(v5, v6);
        sub_1ADDCC35C(v9, v10);
        sub_1ADDCC35C(v5, v6);
        sub_1ADDCC35C(v9, v10);
        v29 = v133;
LABEL_6:
        ++v8;
        v16 += 2;
        v10 = v123;
        v9 = v125;
        if ((v130 ^ v29))
        {
          v9 = v8 - 1;
          break;
        }
      }

      v11 = v118;
      v30 = v121;
      v8 = v129;
      if (v130)
      {
        if (v9 >= v118)
        {
          if (v118 < v9)
          {
            v31 = 16 * v9 - 16;
            v32 = v9;
            v33 = v118;
            do
            {
              if (v33 != --v32)
              {
                v34 = *a3;
                if (!*a3)
                {
                  goto LABEL_187;
                }

                v35 = *&v34[v30];
                *&v34[v30] = *&v34[v31];
                *&v34[v31] = v35;
              }

              ++v33;
              v31 -= 16;
              v30 += 16;
            }

            while (v33 < v32);
          }

          goto LABEL_43;
        }

LABEL_183:
        __break(1u);
LABEL_184:
        v10 = sub_1ADF7ACAC(v10);
LABEL_146:
        v135 = v10;
        v111 = *(v10 + 16);
        if (v111 >= 2)
        {
          while (*a3)
          {
            v112 = *(v10 + 16 * v111);
            v113 = *(v10 + 16 * (v111 - 1) + 40);
            sub_1ADECA95C(&(*a3)[16 * v112], &(*a3)[16 * *(v10 + 16 * (v111 - 1) + 32)], &(*a3)[16 * v113], v5);
            if (v8)
            {
              goto LABEL_154;
            }

            if (v113 < v112)
            {
              goto LABEL_175;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_1ADF7ACAC(v10);
            }

            if (v111 - 2 >= *(v10 + 16))
            {
              goto LABEL_176;
            }

            v114 = (v10 + 16 * v111);
            *v114 = v112;
            v114[1] = v113;
            v135 = v10;
            sub_1ADF7AC20(v111 - 1);
            v10 = v135;
            v111 = *(v135 + 16);
            if (v111 <= 1)
            {
              goto LABEL_154;
            }
          }

          goto LABEL_188;
        }

LABEL_154:

        return;
      }

LABEL_43:
      v36 = a3[1];
      if (v9 >= v36)
      {
        goto LABEL_51;
      }

      if (__OFSUB__(v9, v11))
      {
        goto LABEL_180;
      }

      if (v9 - v11 >= a4)
      {
        goto LABEL_51;
      }

      if (__OFADD__(v11, a4))
      {
        goto LABEL_181;
      }

      if (v11 + a4 < v36)
      {
        v36 = (v11 + a4);
      }

      if (v36 < v11)
      {
LABEL_182:
        __break(1u);
        goto LABEL_183;
      }

      if (v9 == v36)
      {
LABEL_51:
        v7 = v9;
        if (v9 < v11)
        {
          goto LABEL_179;
        }

        goto LABEL_52;
      }

      v119 = v36;
      v5 = *a3;
      v82 = &(*a3)[16 * v9 - 16];
      v83 = v11 - v9;
      v128 = *a3;
      while (2)
      {
        v126 = v9;
        v84 = *&v5[2 * v9];
        v120 = v83;
        v122 = v82;
        v85 = v83;
        v9 = v82;
        while (2)
        {
          v6 = *v9;
          v10 = *(v9 + 8);
          v7 = *(&v84 + 1);
          v86 = *(&v84 + 1) >> 62;
          if ((*(&v84 + 1) >> 62) > 1)
          {
            if (v86 != 2)
            {
              memset(v134, 0, 14);
              v132 = v84;
              sub_1ADDD86D8(v6, v10);
              sub_1ADDD86D8(v6, v10);
              v87 = v132;
              sub_1ADE54BA0(v134, v134, v6, v10, v132, v7, &v133);
              if (v8)
              {
LABEL_192:
                sub_1ADDCC35C(v6, v10);
                v115 = v87;
                goto LABEL_193;
              }

              sub_1ADDCC35C(v6, v10);
              sub_1ADDCC35C(v132, v7);
              sub_1ADDCC35C(v6, v10);
              sub_1ADDCC35C(v132, v7);
              if ((v133 & 1) == 0)
              {
                break;
              }

              goto LABEL_137;
            }

            v5 = v84;
            v88 = *(v84 + 16);
            v129 = *(v84 + 24);
            v131 = v85;
            sub_1ADDD86D8(v6, v10);
            sub_1ADDD86D8(v5, v7);
            sub_1ADDD86D8(v6, v10);
            sub_1ADDD86D8(v5, v7);
            v89 = sub_1AE23BB7C();
            if (v89)
            {
              v90 = sub_1AE23BBAC();
              if (__OFSUB__(v88, v90))
              {
                goto LABEL_157;
              }

              v89 += v88 - v90;
            }

            v51 = __OFSUB__(v129, v88);
            v91 = &v129[-v88];
            if (v51)
            {
              goto LABEL_156;
            }

            v92 = sub_1AE23BB9C();
            if (v92 >= v91)
            {
              v93 = v91;
            }

            else
            {
              v93 = v92;
            }

            v94 = v93 + v89;
            if (v89)
            {
              v95 = v94;
            }

            else
            {
              v95 = 0;
            }

            v96 = v89;
            v97 = v6;
            v98 = v10;
            v99 = v5;
            v100 = v7;
            v101 = v8;
          }

          else
          {
            if (!v86)
            {
              v87 = v84;
              v134[0] = v84;
              LODWORD(v134[1]) = DWORD2(v84);
              WORD2(v134[1]) = WORD6(v84);
              sub_1ADDD86D8(v6, v10);
              sub_1ADDD86D8(v6, v10);
              sub_1ADE54BA0(v134, v134 + BYTE6(v7), v6, v10, v87, v7, &v133);
              if (v8)
              {
                goto LABEL_192;
              }

              sub_1ADDCC35C(v6, v10);
              sub_1ADDCC35C(v87, v7);
              sub_1ADDCC35C(v6, v10);
              sub_1ADDCC35C(v87, v7);
              if ((v133 & 1) == 0)
              {
                break;
              }

              goto LABEL_137;
            }

            v129 = v8;
            v5 = v84;
            v8 = v84;
            v102 = (v84 >> 32) - v84;
            if (v84 >> 32 < v84)
            {
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              __break(1u);
LABEL_170:
              __break(1u);
LABEL_171:
              __break(1u);
LABEL_172:
              __break(1u);
LABEL_173:
              __break(1u);
LABEL_174:
              __break(1u);
LABEL_175:
              __break(1u);
LABEL_176:
              __break(1u);
LABEL_177:
              __break(1u);
LABEL_178:
              __break(1u);
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
              goto LABEL_182;
            }

            v131 = v85;
            sub_1ADDD86D8(v6, v10);
            sub_1ADDD86D8(v5, v7);
            sub_1ADDD86D8(v6, v10);
            sub_1ADDD86D8(v5, v7);
            v103 = sub_1AE23BB7C();
            if (v103)
            {
              v104 = sub_1AE23BBAC();
              if (__OFSUB__(v8, v104))
              {
                goto LABEL_158;
              }

              v103 += v8 - v104;
            }

            v105 = sub_1AE23BB9C();
            if (v105 >= v102)
            {
              v106 = v102;
            }

            else
            {
              v106 = v105;
            }

            v107 = v106 + v103;
            if (v103)
            {
              v95 = v107;
            }

            else
            {
              v95 = 0;
            }

            v96 = v103;
            v97 = v6;
            v98 = v10;
            v99 = v5;
            v100 = v7;
            v101 = v129;
          }

          sub_1ADE54BA0(v96, v95, v97, v98, v99, v100, v134);
          v8 = v101;
          if (v101)
          {
            goto LABEL_191;
          }

          sub_1ADDCC35C(v6, v10);
          sub_1ADDCC35C(v5, v7);
          sub_1ADDCC35C(v6, v10);
          v108 = v134[0];
          sub_1ADDCC35C(v5, v7);
          v5 = v128;
          v85 = v131;
          if (v108)
          {
LABEL_137:
            if (!v5)
            {
              __break(1u);
LABEL_186:
              __break(1u);
LABEL_187:
              __break(1u);
LABEL_188:
              __break(1u);
LABEL_189:
              __break(1u);
            }

            v109 = *v9;
            v84 = *(v9 + 16);
            *v9 = v84;
            *(v9 + 16) = v109;
            v9 -= 16;
            if (__CFADD__(v85++, 1))
            {
              break;
            }

            continue;
          }

          break;
        }

        v9 = v126 + 1;
        v82 = v122 + 2;
        v83 = v120 - 1;
        if ((v126 + 1) != v119)
        {
          continue;
        }

        break;
      }

      v10 = v123;
      v7 = v119;
      if (v119 < v118)
      {
        goto LABEL_179;
      }

LABEL_52:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1ADE5522C(0, *(v10 + 16) + 1, 1, v10);
      }

      v38 = *(v10 + 16);
      v37 = *(v10 + 24);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v10 = sub_1ADE5522C((v37 > 1), v38 + 1, 1, v10);
      }

      *(v10 + 16) = v39;
      v40 = v10 + 16 * v38;
      *(v40 + 32) = v118;
      *(v40 + 40) = v7;
      v5 = *a1;
      if (!*a1)
      {
        goto LABEL_189;
      }

      if (v38)
      {
        while (2)
        {
          v6 = v39 - 1;
          if (v39 >= 4)
          {
            v45 = v10 + 32 + 16 * v39;
            v46 = *(v45 - 64);
            v47 = *(v45 - 56);
            v51 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            if (v51)
            {
              goto LABEL_162;
            }

            v50 = *(v45 - 48);
            v49 = *(v45 - 40);
            v51 = __OFSUB__(v49, v50);
            v43 = v49 - v50;
            v44 = v51;
            if (v51)
            {
              goto LABEL_163;
            }

            v52 = (v10 + 16 * v39);
            v54 = *v52;
            v53 = v52[1];
            v51 = __OFSUB__(v53, v54);
            v55 = v53 - v54;
            if (v51)
            {
              goto LABEL_165;
            }

            v51 = __OFADD__(v43, v55);
            v56 = v43 + v55;
            if (v51)
            {
              goto LABEL_168;
            }

            if (v56 >= v48)
            {
              v74 = (v10 + 32 + 16 * v6);
              v76 = *v74;
              v75 = v74[1];
              v51 = __OFSUB__(v75, v76);
              v77 = v75 - v76;
              if (v51)
              {
                goto LABEL_174;
              }

              if (v43 < v77)
              {
                v6 = v39 - 2;
              }
            }

            else
            {
LABEL_71:
              if (v44)
              {
                goto LABEL_164;
              }

              v57 = (v10 + 16 * v39);
              v59 = *v57;
              v58 = v57[1];
              v60 = __OFSUB__(v58, v59);
              v61 = v58 - v59;
              v62 = v60;
              if (v60)
              {
                goto LABEL_167;
              }

              v63 = (v10 + 32 + 16 * v6);
              v65 = *v63;
              v64 = v63[1];
              v51 = __OFSUB__(v64, v65);
              v66 = v64 - v65;
              if (v51)
              {
                goto LABEL_170;
              }

              if (__OFADD__(v61, v66))
              {
                goto LABEL_171;
              }

              if (v61 + v66 < v43)
              {
                goto LABEL_85;
              }

              if (v43 < v66)
              {
                v6 = v39 - 2;
              }
            }
          }

          else
          {
            if (v39 == 3)
            {
              v41 = *(v10 + 32);
              v42 = *(v10 + 40);
              v51 = __OFSUB__(v42, v41);
              v43 = v42 - v41;
              v44 = v51;
              goto LABEL_71;
            }

            v67 = (v10 + 16 * v39);
            v69 = *v67;
            v68 = v67[1];
            v51 = __OFSUB__(v68, v69);
            v61 = v68 - v69;
            v62 = v51;
LABEL_85:
            if (v62)
            {
              goto LABEL_166;
            }

            v70 = v10 + 16 * v6;
            v72 = *(v70 + 32);
            v71 = *(v70 + 40);
            v51 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v51)
            {
              goto LABEL_169;
            }

            if (v73 < v61)
            {
              break;
            }
          }

          v78 = v6 - 1;
          if (v6 - 1 >= v39)
          {
            goto LABEL_159;
          }

          if (!*a3)
          {
            goto LABEL_186;
          }

          v79 = *(v10 + 32 + 16 * v78);
          v80 = *(v10 + 32 + 16 * v6 + 8);
          sub_1ADECA95C(&(*a3)[16 * v79], &(*a3)[16 * *(v10 + 32 + 16 * v6)], &(*a3)[16 * v80], v5);
          if (v8)
          {
            goto LABEL_154;
          }

          if (v80 < v79)
          {
            goto LABEL_160;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1ADF7ACAC(v10);
          }

          if (v78 >= *(v10 + 16))
          {
            goto LABEL_161;
          }

          v81 = v10 + 16 * v78;
          *(v81 + 32) = v79;
          *(v81 + 40) = v80;
          v135 = v10;
          sub_1ADF7AC20(v6);
          v10 = v135;
          v39 = *(v135 + 16);
          if (v39 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v9 = a3[1];
      if (v7 >= v9)
      {
        goto LABEL_144;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_144:
  v5 = *a1;
  if (*a1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_146;
  }

  __break(1u);
LABEL_191:
  sub_1ADDCC35C(v6, v10);
  v115 = v5;
LABEL_193:
  sub_1ADDCC35C(v115, v7);

  __break(1u);
LABEL_194:
  sub_1ADDCC35C(v5, v6);
  sub_1ADDCC35C(v9, v10);

  __break(1u);
}

void sub_1ADECA95C(char *__dst, char *__src, char *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v78[2] = *MEMORY[0x1E69E9840];
  v9 = __src - __dst;
  v10 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 4;
  v12 = a3 - __src;
  v13 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 4;
  if (v11 < v13 >> 4)
  {
    v15 = a4;
    if (a4 != __dst || &__dst[16 * v11] <= a4)
    {
      memmove(a4, __dst, 16 * v11);
    }

    v16 = &v15[2 * v11];
    if (v9 >= 16 && v7 < v6)
    {
      v75 = &v15[2 * v11];
      v67 = v6;
      do
      {
        v71 = v8;
        v18 = *v7;
        v17 = v7[1];
        v19 = *v15;
        v20 = v15[1];
        v21 = v17 >> 62;
        if ((v17 >> 62) > 1)
        {
          if (v21 != 2)
          {
            memset(v78, 0, 14);
            sub_1ADDD86D8(v19, v20);
            sub_1ADDD86D8(v19, v20);
            sub_1ADE54BA0(v78, v78, v19, v20, v18, v17, &v77);
            if (v5)
            {
              goto LABEL_106;
            }

            sub_1ADDCC35C(v19, v20);
            sub_1ADDCC35C(v18, v17);
            sub_1ADDCC35C(v19, v20);
            sub_1ADDCC35C(v18, v17);
            if ((v77 & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_36;
          }

          v73 = v7;
          v69 = v15;
          v22 = v5;
          v23 = *(v18 + 16);
          v24 = *(v18 + 24);
          sub_1ADDD86D8(v19, v20);
          sub_1ADDD86D8(v18, v17);
          sub_1ADDD86D8(v19, v20);
          sub_1ADDD86D8(v18, v17);
          v25 = sub_1AE23BB7C();
          if (v25)
          {
            v26 = sub_1AE23BBAC();
            if (__OFSUB__(v23, v26))
            {
              goto LABEL_102;
            }

            v25 += v23 - v26;
          }

          v27 = __OFSUB__(v24, v23);
          v28 = v24 - v23;
          if (v27)
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (!v21)
          {
            v78[0] = *v7;
            LOWORD(v78[1]) = v17;
            BYTE2(v78[1]) = BYTE2(v17);
            BYTE3(v78[1]) = BYTE3(v17);
            BYTE4(v78[1]) = BYTE4(v17);
            BYTE5(v78[1]) = BYTE5(v17);
            sub_1ADDD86D8(v19, v20);
            sub_1ADDD86D8(v19, v20);
            sub_1ADE54BA0(v78, v78 + BYTE6(v17), v19, v20, v18, v17, &v77);
            if (v5)
            {
              goto LABEL_106;
            }

            sub_1ADDCC35C(v19, v20);
            sub_1ADDCC35C(v18, v17);
            sub_1ADDCC35C(v19, v20);
            sub_1ADDCC35C(v18, v17);
            v16 = v75;
            if ((v77 & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_36;
          }

          v73 = v7;
          v22 = v5;
          v28 = (v18 >> 32) - v18;
          if (v18 >> 32 < v18)
          {
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
LABEL_105:
            __break(1u);
          }

          v69 = v15;
          sub_1ADDD86D8(v19, v20);
          sub_1ADDD86D8(v18, v17);
          sub_1ADDD86D8(v19, v20);
          sub_1ADDD86D8(v18, v17);
          v25 = sub_1AE23BB7C();
          if (v25)
          {
            v29 = sub_1AE23BBAC();
            if (__OFSUB__(v18, v29))
            {
              goto LABEL_105;
            }

            v25 += v18 - v29;
          }
        }

        v30 = sub_1AE23BB9C();
        if (v30 >= v28)
        {
          v31 = v28;
        }

        else
        {
          v31 = v30;
        }

        v32 = v31 + v25;
        if (v25)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        sub_1ADE54BA0(v25, v33, v19, v20, v18, v17, v78);
        v5 = v22;
        if (v22)
        {
LABEL_106:
          sub_1ADDCC35C(v19, v20);
          v63 = v18;
          v64 = v17;
          goto LABEL_108;
        }

        sub_1ADDCC35C(v19, v20);
        sub_1ADDCC35C(v18, v17);
        sub_1ADDCC35C(v19, v20);
        v34 = v78[0];
        sub_1ADDCC35C(v18, v17);
        v15 = v69;
        v7 = v73;
        v16 = v75;
        if ((v34 & 1) == 0)
        {
LABEL_41:
          v35 = v15;
          v36 = v71;
          v37 = v71 == v15;
          v15 += 2;
          v38 = v67;
          if (v37)
          {
            goto LABEL_43;
          }

LABEL_42:
          *v36 = *v35;
          goto LABEL_43;
        }

LABEL_36:
        v35 = v7;
        v36 = v71;
        v37 = v71 == v7;
        v7 += 2;
        v38 = v67;
        if (!v37)
        {
          goto LABEL_42;
        }

LABEL_43:
        v8 = (v36 + 2);
      }

      while (v15 < v16 && v7 < v38);
    }

    v7 = v8;
LABEL_94:
    if (v7 != v15 || v7 >= (v15 + ((v16 - v15 + (v16 - v15 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
    {
      memmove(v7, v15, 16 * ((v16 - v15) / 16));
    }

    return;
  }

  if (a4 != __src || &__src[16 * v14] <= a4)
  {
    v39 = a4;
    memmove(a4, __src, 16 * v14);
    a4 = v39;
  }

  v40 = &a4[2 * v14];
  v15 = a4;
  if (v12 < 16 || v7 <= v8)
  {
    v16 = v40;
    goto LABEL_94;
  }

  v70 = a4;
  v72 = v8;
  v16 = v40;
LABEL_52:
  v74 = v7;
  v65 = v7 - 2;
  v41 = v6;
  v42 = v16;
  while (1)
  {
    v44 = *(v42 - 2);
    v43 = *(v42 - 1);
    v42 -= 2;
    v45 = *(v74 - 2);
    v46 = *(v74 - 1);
    v47 = v43 >> 62;
    if ((v43 >> 62) > 1)
    {
      break;
    }

    v76 = v16;
    if (!v47)
    {
      v48 = v41;
      v78[0] = v44;
      LOWORD(v78[1]) = v43;
      BYTE2(v78[1]) = BYTE2(v43);
      BYTE3(v78[1]) = BYTE3(v43);
      BYTE4(v78[1]) = BYTE4(v43);
      BYTE5(v78[1]) = BYTE5(v43);
      sub_1ADDD86D8(v45, v46);
      sub_1ADDD86D8(v45, v46);
      sub_1ADE54BA0(v78, v78 + BYTE6(v43), v45, v46, v44, v43, &v77);
      if (v4)
      {
        goto LABEL_107;
      }

      sub_1ADDCC35C(v45, v46);
      sub_1ADDCC35C(v44, v43);
      sub_1ADDCC35C(v45, v46);
      sub_1ADDCC35C(v44, v43);
      v49 = v48;
      v6 = v48 - 16;
      if (v77)
      {
        goto LABEL_87;
      }

      goto LABEL_85;
    }

    if (v44 >> 32 < v44)
    {
      goto LABEL_99;
    }

    v68 = v41;
    sub_1ADDD86D8(v45, v46);
    sub_1ADDD86D8(v44, v43);
    sub_1ADDD86D8(v45, v46);
    sub_1ADDD86D8(v44, v43);
    v51 = sub_1AE23BB7C();
    if (v51)
    {
      v58 = sub_1AE23BBAC();
      if (__OFSUB__(v44, v58))
      {
        goto LABEL_104;
      }

      v51 += v44 - v58;
    }

    v59 = sub_1AE23BB9C();
    if (v59 >= (v44 >> 32) - v44)
    {
      v60 = (v44 >> 32) - v44;
    }

    else
    {
      v60 = v59;
    }

    v61 = v60 + v51;
    if (v51)
    {
      v57 = v61;
    }

    else
    {
      v57 = 0;
    }

LABEL_80:
    sub_1ADE54BA0(v51, v57, v45, v46, v44, v43, v78);
    if (v4)
    {
      goto LABEL_107;
    }

    sub_1ADDCC35C(v45, v46);
    sub_1ADDCC35C(v44, v43);
    sub_1ADDCC35C(v45, v46);
    v62 = v78[0];
    sub_1ADDCC35C(v44, v43);
    v49 = v68;
    v15 = v70;
    v6 = v68 - 16;
    v16 = v76;
    if (v62)
    {
LABEL_87:
      if (v49 != v74)
      {
        *v6 = *v65;
      }

      if (v16 <= v15 || (v7 = v65, v65 <= v72))
      {
        v7 = v65;
        goto LABEL_94;
      }

      goto LABEL_52;
    }

LABEL_85:
    if (v16 != v49)
    {
      *v6 = *v42;
    }

    v16 = v42;
    v41 = v6;
    if (v42 <= v15)
    {
      v16 = v42;
      v7 = v74;
      goto LABEL_94;
    }
  }

  v68 = v41;
  if (v47 == 2)
  {
    v76 = v16;
    v50 = *(v44 + 16);
    v66 = *(v44 + 24);
    sub_1ADDD86D8(v45, v46);
    sub_1ADDD86D8(v44, v43);
    sub_1ADDD86D8(v45, v46);
    sub_1ADDD86D8(v44, v43);
    v51 = sub_1AE23BB7C();
    if (v51)
    {
      v52 = sub_1AE23BBAC();
      if (__OFSUB__(v50, v52))
      {
        goto LABEL_103;
      }

      v51 += v50 - v52;
    }

    v27 = __OFSUB__(v66, v50);
    v53 = v66 - v50;
    if (v27)
    {
      goto LABEL_100;
    }

    v54 = sub_1AE23BB9C();
    if (v54 >= v53)
    {
      v55 = v53;
    }

    else
    {
      v55 = v54;
    }

    v56 = v55 + v51;
    if (v51)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    goto LABEL_80;
  }

  memset(v78, 0, 14);
  sub_1ADDD86D8(v45, v46);
  sub_1ADDD86D8(v45, v46);
  sub_1ADE54BA0(v78, v78, v45, v46, v44, v43, &v77);
  if (!v4)
  {
    sub_1ADDCC35C(v45, v46);
    sub_1ADDCC35C(v44, v43);
    sub_1ADDCC35C(v45, v46);
    sub_1ADDCC35C(v44, v43);
    v49 = v68;
    v6 = v68 - 16;
    if (v77)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

LABEL_107:
  sub_1ADDCC35C(v45, v46);
  v63 = v44;
  v64 = v43;
LABEL_108:
  sub_1ADDCC35C(v63, v64);

  __break(1u);
}

BOOL sub_1ADECB280(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, _DWORD *a5, int8x8_t a6)
{
  v38[3] = *MEMORY[0x1E69E9840];
  v6 = a5[4];
  v7 = a5[5];
  if ((v7 & v6) != 0)
  {
    return !sub_1AE033364(a1, a2, a3, a4, (a5 + 4), a5 + 4);
  }

  for (i = a4 >> a1; ; i = a4 >> a1)
  {
    v10 = 1 << i;
    if ((v10 & v6) != 0)
    {
      break;
    }

    if ((v10 & v7) == 0)
    {
      return 0;
    }

    a6.i32[0] = (v10 - 1) & v7;
    a6 = vcnt_s8(a6);
    a6.i16[0] = vaddlv_u8(a6);
    a5 = *&a5[4 * a6.u32[0] + 8];
    a1 = (a1 + 5);
    v6 = a5[4];
    v7 = a5[5];
    if ((v7 & v6) != 0)
    {
      return !sub_1AE033364(a1, a2, a3, a4, (a5 + 4), a5 + 4);
    }
  }

  a6.i32[0] = (v10 - 1) & v6;
  v11 = vcnt_s8(a6);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = &a5[4 * ~v11.i32[0]] + a5[6];
  v14 = *(v12 + 4);
  v13 = *(v12 + 5);
  v15 = v13 >> 62;
  v16 = a3 >> 62;
  if (v13 >> 62 == 3)
  {
    if (v14)
    {
      v17 = 0;
    }

    else
    {
      v17 = v13 == 0xC000000000000000;
    }

    v18 = 0;
    v19 = v17 && a3 >> 62 == 3;
    if (v19 && !a2 && a3 == 0xC000000000000000)
    {
      return 1;
    }

    goto LABEL_31;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      v18 = 0;
      if (v16 <= 1)
      {
        goto LABEL_32;
      }

      goto LABEL_37;
    }

    v21 = *(v14 + 16);
    v20 = *(v14 + 24);
    v22 = __OFSUB__(v20, v21);
    v18 = v20 - v21;
    if (!v22)
    {
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v15)
  {
LABEL_29:
    LODWORD(v18) = HIDWORD(v14) - v14;
    if (__OFSUB__(HIDWORD(v14), v14))
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v18 = v18;
LABEL_31:
    if (v16 <= 1)
    {
      goto LABEL_32;
    }

    goto LABEL_37;
  }

  v18 = BYTE6(v13);
  if (v16 <= 1)
  {
LABEL_32:
    if (!v16)
    {
      v23 = BYTE6(a3);
      goto LABEL_39;
    }

    LODWORD(v23) = HIDWORD(a2) - a2;
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      v23 = v23;
      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_63;
  }

LABEL_37:
  if (v16 != 2)
  {
    return !v18;
  }

  v25 = *(a2 + 16);
  v24 = *(a2 + 24);
  v22 = __OFSUB__(v24, v25);
  v23 = v24 - v25;
  if (v22)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_39:
  if (v18 != v23)
  {
    return 0;
  }

  if (v18 >= 1)
  {
    if (v15 > 1)
    {
      v30 = a2;
      v31 = a3;
      if (v15 != 2)
      {
        memset(v38, 0, 14);
        sub_1ADDD86D8(v14, v13);
        v28 = v30;
        v29 = v31;
LABEL_60:
        sub_1ADDD8820(v38, v28, v29, &v37);
        sub_1ADDCC35C(v14, v13);
        return v37;
      }

      v32 = *(v14 + 16);
      v33 = *(v14 + 24);
      sub_1ADDD86D8(v14, v13);
      v34 = sub_1AE23BB7C();
      if (v34)
      {
        v35 = sub_1AE23BBAC();
        if (__OFSUB__(v32, v35))
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v34 += v32 - v35;
      }

      if (!__OFSUB__(v33, v32))
      {
LABEL_57:
        sub_1AE23BB9C();
        sub_1ADDD8820(v34, v30, v31, v38);
        sub_1ADDCC35C(v14, v13);
        return (v38[0] & 1) != 0;
      }

      __break(1u);
    }

    else if (!v15)
    {
      v38[0] = v14;
      LOWORD(v38[1]) = v13;
      BYTE2(v38[1]) = BYTE2(v13);
      BYTE3(v38[1]) = BYTE3(v13);
      BYTE4(v38[1]) = BYTE4(v13);
      BYTE5(v38[1]) = BYTE5(v13);
      sub_1ADDD86D8(v14, v13);
      v28 = a2;
      v29 = a3;
      goto LABEL_60;
    }

    if (v14 >> 32 >= v14)
    {
      v30 = a2;
      v31 = a3;
      sub_1ADDD86D8(v14, v13);
      v34 = sub_1AE23BB7C();
      if (!v34)
      {
        goto LABEL_57;
      }

      v36 = sub_1AE23BBAC();
      if (!__OFSUB__(v14, v36))
      {
        v34 += v14 - v36;
        goto LABEL_57;
      }

LABEL_67:
      __break(1u);
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  return 1;
}

uint64_t sub_1ADECB664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  result = sub_1AE23BB7C();
  v15 = result;
  if (result)
  {
    result = sub_1AE23BBAC();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v15 += a1 - result;
  }

  v16 = __OFSUB__(a2, a1);
  v17 = a2 - a1;
  if (v16)
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = sub_1AE23BB9C();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = v19 + v15;
  if (v15)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  sub_1ADE54BA0(v15, v21, a4, a5, a6, a7, &v23);
  if (!v7)
  {
    v22 = v23;
  }

  return v22 & 1;
}

uint64_t sub_1ADECB734(uint64_t a1, uint64_t a2)
{
  v46 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v56 = MEMORY[0x1E69E7CC0];
  sub_1ADE6F43C(0, v5, 0);
  v6 = v56;
  v7 = a1 + 56;
  v8 = sub_1AE23D8EC();
  v9 = *(a1 + 36);
  v44 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  result = swift_beginAccess();
  if (v8 < 0 || v8 >= 1 << *(a1 + 32))
  {
LABEL_25:
    __break(1u);
  }

  else
  {
    v39 = a1 + 64;
    v40 = v5;
    v11 = 1;
    v41 = a2;
    v42 = a1 + 56;
    v43 = a1;
    while (1)
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        break;
      }

      v48 = v9;
      v49 = 1 << v8;
      v47 = v11;
      v13 = *(a1 + 48);
      v50 = v8;
      v14 = (v13 + 16 * v8);
      v15 = *v14;
      v16 = v14[1];
      v17 = a2 + v44;
      v18 = v45;
      sub_1ADECD9E8(v17, v45, type metadata accessor for PartiallyOrderedReferenceMap);
      v19 = *(v18 + *(v46 + 20));
      sub_1ADDD86D8(v15, v16);
      sub_1ADDD86D8(v15, v16);
      sub_1ADDDF7A8(v15, v16, v19, v51);
      result = sub_1ADDD872C(v18, type metadata accessor for PartiallyOrderedReferenceMap);
      v20 = v52;
      if (!v52)
      {
        goto LABEL_30;
      }

      v22 = v54;
      v21 = v55;
      v23 = v53;
      v25 = v51[0];
      v24 = v51[1];

      result = sub_1ADDDC21C(v26, v24, v20, v23, v22, v21);
      if (!v25)
      {
        goto LABEL_31;
      }

      sub_1ADDCC35C(v15, v16);
      v56 = v6;
      v28 = *(v6 + 16);
      v27 = *(v6 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1ADE6F43C((v27 > 1), v28 + 1, 1);
        v6 = v56;
      }

      *(v6 + 16) = v28 + 1;
      v29 = (v6 + 24 * v28);
      v29[4] = v15;
      v29[5] = v16;
      v29[6] = v25;
      a1 = v43;
      v30 = 1 << *(v43 + 32);
      result = v50;
      if (v50 >= v30)
      {
        goto LABEL_27;
      }

      v7 = v42;
      v31 = *(v42 + 8 * v12);
      if ((v31 & v49) == 0)
      {
        goto LABEL_28;
      }

      if (v48 != *(v43 + 36))
      {
        goto LABEL_29;
      }

      v32 = v31 & (-2 << (v50 & 0x3F));
      if (v32)
      {
        v8 = __clz(__rbit64(v32)) | v50 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = v12 << 6;
        v34 = v12 + 1;
        v35 = (v39 + 8 * v12);
        while (v34 < (v30 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_1ADDFFBC8(v50, v48, 0);
            v8 = __clz(__rbit64(v36)) + v33;
            goto LABEL_20;
          }
        }

        result = sub_1ADDFFBC8(v50, v48, 0);
        v8 = v30;
      }

LABEL_20:
      a2 = v41;
      if (v47 == v40)
      {
        return v6;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        v9 = *(a1 + 36);
        v11 = v47 + 1;
        if (v8 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1ADECBAD4(uint64_t a1, uint64_t a2)
{
  v37 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v37);
  v36 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA08, &qword_1AE245690);
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CD0];
  v31[1] = v5 + 16;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v33 = v5;
  *(v5 + 24) = a2;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v11 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;

  v45 = a1;

  v38 = a2;
  v35 = v11;
  swift_beginAccess();
  v12 = 0;
  v13 = (v8 + 63) >> 6;
  v34 = a1 + 56;
  while (v10)
  {
    v16 = v12;
LABEL_12:
    v17 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v18 = (*(v45 + 48) + ((v16 << 10) | (16 * v17)));
    v19 = *v18;
    v20 = v18[1];
    v21 = v36;
    sub_1ADECD9E8(v38 + v35, v36, type metadata accessor for PartiallyOrderedReferenceMap);
    v22 = *(v21 + *(v37 + 20));
    sub_1ADDD86D8(v19, v20);
    sub_1ADDDF7A8(v19, v20, v22, v40);
    sub_1ADDD872C(v21, type metadata accessor for PartiallyOrderedReferenceMap);
    v23 = v41;
    if (!v41)
    {
      v14 = v19;
      v15 = v20;
LABEL_5:
      sub_1ADDCC35C(v14, v15);
      goto LABEL_6;
    }

    v39 = v20;
    v25 = v43;
    v24 = v44;
    v26 = v42;
    v27 = v40[0];
    v28 = v40[1];

    sub_1ADDDC21C(v29, v28, v23, v26, v25, v24);
    if (!v27)
    {
      v14 = v19;
      v15 = v39;
      goto LABEL_5;
    }

    v42 = v32;
    v43 = &off_1F23C4578;
    v40[0] = v33;
    v30 = *(*v27 + 128);

    v30(v40);
    sub_1ADDCC35C(v19, v39);

    __swift_destroy_boxed_opaque_existential_1(v40);
LABEL_6:
    v12 = v16;
    v7 = v34;
  }

  while (1)
  {
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      swift_beginAccess();

      return;
    }

    v10 = *(v7 + 8 * v16);
    ++v12;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1ADECBDF8(uint64_t *a1, void *a2)
{
  v64 = *a1;
  v65 = a1[1];
  v3 = MEMORY[0x1E69E7CC0];
  v76 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
  v77 = sub_1ADDD9ECC(v3);
  v73 = a2;
  v4 = *a2 + 64;
  v5 = 1 << *(*a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a2 + 64);
  v8 = (v5 + 63) >> 6;
  v69 = *a2;

  v9 = 0;
  v66 = v8;
  v67 = v4;
LABEL_6:
  if (v7)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
LABEL_11:
      v13 = __clz(__rbit64(v7)) | (v9 << 6);
      v14 = (*(v69 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v69 + 56) + 48 * v13);
      v71 = *v17;
      v78 = v17[5];
      v18 = type metadata accessor for RetainVisitor();
      v19 = swift_allocObject();
      sub_1ADDD86D8(v15, v16);

      v20 = MEMORY[0x1E69E7CC0];
      v21 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v22 = sub_1ADDD9ECC(v20);
      v19[2] = v21;
      v19[3] = v22;
      if (!v71)
      {
        goto LABEL_45;
      }

      v75[3] = v18;
      v75[4] = &off_1F23C4550;
      v75[0] = v19;
      v23 = *(*v71 + 128);

      v23(v75);

      __swift_destroy_boxed_opaque_existential_1(v75);
      v25 = sub_1ADF5F04C(v75, v15, v16);
      if (*(v24 + 16))
      {
        v26 = v24;
        v68 = v25;
        swift_beginAccess();
        v27 = v19[3];
        *(v26 + 32) = v19[2];
        *(v26 + 40) = v27;

        v68(v75, 0);
      }

      else
      {
        (v25)(v75, 0);
      }

      v7 &= v7 - 1;
      swift_beginAccess();
      v10 = v19[2];
      v11 = v19[3];

      sub_1ADDDC8DC(v10, v11);

      sub_1ADDCC35C(v15, v16);
      v8 = v66;
      v4 = v67;
      goto LABEL_6;
    }
  }

  v28 = v76;
  v29 = v76 + 64;
  v30 = 1 << *(v76 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v76 + 64);
  v33 = (v30 + 63) >> 6;

  v34 = 0;
  v70 = v33;
  v72 = v29;
  if (!v32)
  {
LABEL_17:
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_43;
      }

      if (v35 >= v33)
      {

        if (v65 >> 60 == 15)
        {
          return;
        }

        sub_1ADDD86D8(v64, v65);
        v56 = sub_1ADF5F04C(v75, v64, v65);
        if (*(v55 + 16))
        {
          v57 = *(v55 + 8);
          v58 = __OFADD__(v57, 1);
          v59 = v57 + 1;
          if (v58)
          {
            goto LABEL_44;
          }

          *(v55 + 8) = v59;
          (v56)(v75, 0);
        }

        else
        {
          (v56)(v75, 0);
        }

        sub_1ADDE158C(v64, v65);
        return;
      }

      v32 = *(v29 + 8 * v35);
      ++v34;
      if (v32)
      {
        v34 = v35;
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
LABEL_21:
    v36 = __clz(__rbit64(v32)) | (v34 << 6);
    v37 = (*(v28 + 48) + 16 * v36);
    v38 = *v37;
    v39 = v37[1];
    v74 = *(*(v28 + 56) + 8 * v36);
    v40 = *v73;
    v41 = *(*v73 + 16);
    sub_1ADDD86D8(*v37, v39);
    if (!v41)
    {
      v50 = 0;
LABEL_38:
      v47 = 0;
      v48 = 0;
      v51 = 0;
      goto LABEL_40;
    }

    v42 = sub_1ADDDE7CC(v38, v39);
    if ((v43 & 1) == 0)
    {
      v50 = 0;
      v41 = 0;
      goto LABEL_38;
    }

    v78 = v38;
    v44 = v39;
    v45 = v28;
    v46 = (*(v40 + 56) + 48 * v42);
    v41 = *v46;
    v47 = v46[1];
    v49 = v46[2];
    v48 = v46[3];
    v51 = v46[4];
    v50 = v46[5];

    if (!v49)
    {
      break;
    }

    sub_1ADDDC21C(v52, v47, v49, v48, v51, v50);
    v28 = v45;
    v39 = v44;
    v38 = v78;
    if (!v41)
    {
      goto LABEL_41;
    }

    v54 = sub_1ADF5F04C(v75, v38, v39);
    if (*(v53 + 16))
    {
      *(v53 + 8) = v74;
    }

    (v54)(v75, 0);
    v33 = v70;
    v29 = v72;
    v32 &= v32 - 1;
    sub_1ADDCC35C(v38, v39);
    if (!v32)
    {
      goto LABEL_17;
    }
  }

  v39 = v44;
  v38 = v78;
LABEL_40:
  sub_1ADDDC21C(v41, v47, 0, v48, v51, v50);
LABEL_41:

  sub_1ADE42E40(v60, v61, v62);
  swift_allocError();
  *v63 = 0xD000000000000013;
  *(v63 + 8) = 0x80000001AE260C60;
  *(v63 + 16) = 0;
  swift_willThrow();

  sub_1ADDCC35C(v38, v39);
}

uint64_t (*sub_1ADECC43C(uint64_t *a1, uint64_t *a2, uint64_t a3))()
{
  v27 = a2;
  v28 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v26 = &v26 - v5;
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  if (qword_1ED969288 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_1ED96F228);
  (*(v7 + 16))(v9, v12, v6);
  type metadata accessor for ReplicaState(0);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v15 = type metadata accessor for Replica(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v13 + v14, 1, 1, v15);
  (*(v7 + 32))(v13 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v9, v6);
  *(v13 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v13 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v17 = v26;
  v16(v26, 1, 1, v15);
  swift_beginAccess();
  sub_1ADDD85E4(v17, v13 + v14);
  swift_endAccess();
  v18 = sub_1ADDD94CC(v13);

  sub_1ADEAAC3C(v19, v27, v28);
  swift_beginAccess();
  v30 = v10;
  v31 = v11;
  sub_1ADDD86D8(v10, v11);
  result = sub_1ADDDD4A0(v29, &v30);
  if (!*(v21 + 16))
  {
    (result)(v29, 0);
    sub_1ADDCC35C(v30, v31);
    swift_endAccess();
    goto LABEL_7;
  }

  v22 = *(v21 + 8);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 8) = v24;
    (result)(v29, 0);
    swift_endAccess();
    sub_1ADDCC35C(v30, v31);
LABEL_7:
    swift_beginAccess();
    sub_1ADDD86D8(v10, v11);
    sub_1ADDE0110(v32, v10, v11);
    swift_endAccess();
    sub_1ADDCC35C(v32[0], v32[1]);
    v29[0] = v10;
    v29[1] = v11;
    sub_1ADDD86D8(v10, v11);
    sub_1ADEA9BC0(1, 1, v25, v29);

    sub_1ADDE158C(v10, v11);
    sub_1ADDE158C(v10, v11);
    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADECC810(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44 = *MEMORY[0x1E69E9840];
  v37 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v37);
  v36 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v28 = v8;
    v29 = v3;
    v27[1] = v27;
    MEMORY[0x1EEE9AC00](v10);
    v30 = v27 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v9);
    v11 = *(a1 + 56);
    v32 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    v12 = -1;
    if (v9 < 64)
    {
      v12 = ~(-1 << v9);
    }

    v13 = v12 & v11;
    v33 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
    swift_beginAccess();
    v31 = 0;
    v3 = 0;
    v8 = (v9 + 63) >> 6;
    v34 = a2;
    v35 = a1;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v38 = (v13 - 1) & v13;
LABEL_12:
      v17 = v14 | (v3 << 6);
      v18 = (*(a1 + 48) + 16 * v17);
      v19 = *v18;
      v9 = v18[1];
      v20 = v36;
      sub_1ADECD9E8(a2 + v33, v36, type metadata accessor for PartiallyOrderedReferenceMap);
      v21 = *(v20 + *(v37 + 20));
      sub_1ADDD86D8(v19, v9);
      sub_1ADDDF7A8(v19, v9, v21, v39);
      sub_1ADDD872C(v20, type metadata accessor for PartiallyOrderedReferenceMap);
      if (v40)
      {
        sub_1ADDDC21C(v39[0], v39[1], v40, v41, v42, v43);
        sub_1ADDCC35C(v19, v9);
        a2 = v34;
        a1 = v35;
        v13 = v38;
      }

      else
      {
        sub_1ADDCC35C(v19, v9);
        *&v30[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        v22 = __OFADD__(v31++, 1);
        a2 = v34;
        a1 = v35;
        v13 = v38;
        if (v22)
        {
          __break(1u);
LABEL_17:
          v23 = sub_1AE1B2384(v30, v28, v31, a1);

          return v23;
        }
      }
    }

    v15 = v3;
    while (1)
    {
      v3 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v3 >= v8)
      {
        goto LABEL_17;
      }

      v16 = *(v32 + 8 * v3);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v38 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();

  sub_1ADEC052C(v25, v8, a1, a2);
  v23 = v26;

  MEMORY[0x1B26FDA50](v25, -1, -1);

  return v23;
}

void sub_1ADECCBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v9;
  v11 = v9[1];
  (*(v12 + 16))(v8, v13, v6);
  sub_1ADDD9FE4(v8, a3, v25);
  v14 = v25[0];
  v31 = v10;
  v32 = v11;
  v16 = type metadata accessor for Ref(0, a3, a4, v15);
  WitnessTable = swift_getWitnessTable();
  Reference.identity.getter(v16, WitnessTable);
  v18 = v29;
  v19 = v30;
  swift_beginAccess();
  v26 = v18;
  v27 = v19;
  v21 = sub_1ADDDD4A0(v25, &v26);
  if (v20[2])
  {
    *v20 = v14;

    (v21)(v25, 0);
    swift_endAccess();

    sub_1ADDCC35C(v26, v27);
  }

  else
  {
    (v21)(v25, 0);
    sub_1ADDCC35C(v26, v27);
    swift_endAccess();
  }

  v31 = v10;
  v32 = v11;
  Reference.identity.getter(v16, WitnessTable);
  sub_1ADDCC35C(v10, v11);
  v22 = v29;
  v23 = v30;
  swift_beginAccess();
  sub_1ADDE0110(v28, v22, v23);
  swift_endAccess();

  sub_1ADDCC35C(v28[0], v28[1]);
}

double sub_1ADECCE2C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;

  sub_1ADECCBCC(a1, &v8, a3, a4);

  return result;
}

double sub_1ADECCEA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AE23D7CC();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - v10;
  v13 = *a2;
  v12 = a2[1];
  (*(v14 + 16))(v16 - v10, a1, v9);
  v16[0] = v13;
  v16[1] = v12;

  sub_1ADEAEA50(v11, v16, a3, a4);

  return result;
}

void sub_1ADECCFAC(uint64_t a1)
{
  v2 = v1;
  v3 = *(*v1 + 80);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v15 - v5;
  (*(v7 + 16))(v15 - v5, v4);
  sub_1ADDD9FE4(v6, v3, v15);
  v8 = v15[0];
  swift_beginAccess();
  v9 = v1[2];
  v10 = v2[3];
  swift_beginAccess();
  v16 = v9;
  v17 = v10;

  sub_1ADDD86D8(v9, v10);
  v12 = sub_1ADDDD4A0(v15, &v16);
  if (v11[2])
  {
    *v11 = v8;

    (v12)(v15, 0);
    swift_endAccess();

    sub_1ADDCC35C(v16, v17);
  }

  else
  {
    (v12)(v15, 0);
    sub_1ADDCC35C(v16, v17);
    swift_endAccess();
  }

  v13 = v2[2];
  v14 = v2[3];
  swift_beginAccess();

  sub_1ADDD86D8(v13, v14);
  sub_1ADDE0110(v18, v13, v14);
  swift_endAccess();

  sub_1ADDCC35C(v18[0], v18[1]);
}

void sub_1ADECD208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v31 = a2;
  v32 = *(v4 + 80);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v29 = v28 - v5;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - v8;
  v11 = *(v10 + 16);
  v28[1] = v9;
  v11(v7);
  v12 = v2[4];
  swift_beginAccess();
  v14 = v2[2];
  v13 = v2[3];
  v15 = v12 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  v16 = (v15 + *(type metadata accessor for PartiallyOrderedReferenceMap(0) + 20));
  ++v16[2];
  sub_1AE23E31C();

  sub_1ADDD86D8(v14, v13);
  sub_1AE23BECC();
  v17 = sub_1AE23E34C();
  v18 = *v16;
  swift_beginAccess();
  v19 = *(v18 + 16) != 0;
  *&v37 = v14;
  *(&v37 + 1) = v13;
  sub_1ADDD86D8(v14, v13);
  sub_1ADDDC21C(0, 0, 0, 0, 0, 0);
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v41[0] = v17;
  *&v41[1] = v18;
  DWORD2(v41[1]) = 0;
  BYTE12(v41[1]) = 0;
  *(&v41[1] + 13) = v19;
  sub_1ADDDD688(&v37);
  if (!v39)
  {
    __break(1u);
    goto LABEL_7;
  }

  v20 = v38;
  if (!v38)
  {
LABEL_7:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = (*(*v20 + 168))();

    *&v38 = v21;
    v20 = v21;
  }

  sub_1ADDDD94C(v16, &v37);
  v35[2] = v39;
  v35[3] = v40;
  v36[0] = v41[0];
  *(v36 + 15) = *(v41 + 15);
  v35[0] = v37;
  v35[1] = v38;
  sub_1ADDCEDE0(v35, &qword_1EB5BA960, &qword_1AE2455E0);
  swift_endAccess();

  sub_1ADDCC35C(v14, v13);
  (*(*v20 + 248))(v34);
  v22 = v29;
  v23 = v32;
  swift_dynamicCast();
  swift_setAtWritableKeyPath();
  v34[3] = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  v25 = v30;
  (*(v30 + 16))(boxed_opaque_existential_1, v22, v23);
  (*(*v20 + 256))(v34);
  __swift_destroy_boxed_opaque_existential_1(v34);
  v26 = v3[2];
  v27 = v3[3];
  swift_beginAccess();

  sub_1ADDD86D8(v26, v27);
  sub_1ADDE0110(v33, v26, v27);
  swift_endAccess();

  sub_1ADDCC35C(v33[0], v33[1]);
  (*(v25 + 8))(v22, v23);
}

uint64_t sub_1ADECD728(uint64_t a1)
{
  result = sub_1ADDE5F54(&qword_1ED966B08, type metadata accessor for CapsuleRef, &unk_1AE2455E8);
  *(a1 + 16) = result;
  return result;
}

void sub_1ADECD780(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1ADDCC35C(a1, a2);

    sub_1ADDE158C(a3, a4);
  }
}

double sub_1ADECD7D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_1ADDCC35C(a1, a2);
  }

  return result;
}

double sub_1ADECD850(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 123) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1ADECD978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADECD9E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADECDB08(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (result)
  {
    (a3)();

    return a3(a2);
  }

  return result;
}

id CRType.context.getter()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v0 = sub_1ADDCE2E4(0, v2);
  sub_1ADDCEDE0(v2, &qword_1EB5B9DB0, &qword_1AE240B80);
  return v0;
}

id sub_1ADECDD98@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

id sub_1ADECDDD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    v6 = *v2;
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);

    v4 = v6;
  }

  *a2 = v4;

  return v4;
}

uint64_t CRType.copy(renamingReferences:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v8 = v5;
  v6 = *(a3 + 24);

  v6(&v8, a2, a3);
}

uint64_t sub_1ADECDEDC@<X0>(_BYTE *a2@<X8>)
{
  sub_1ADED05F4();
  result = sub_1AE23D78C();
  *a2 = result & 1;
  return result;
}

uint64_t CRValue<>.observableDifference(from:with:)@<X0>(_BYTE *a4@<X8>)
{
  result = sub_1AE23CCBC();
  *a4 = result & 1;
  return result;
}

uint64_t sub_1ADECDF70@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1ADDD86D8(v2, v3);
}

uint64_t sub_1ADECDF7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v5;
  a2[1] = v4;

  return sub_1ADDD86D8(v5, v4);
}

id sub_1ADECDFE4()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v0 = sub_1ADDCE2E4(0, v2);
  sub_1ADDCEDE0(v2, &qword_1EB5B9DB0, &qword_1AE240B80);
  return v0;
}

uint64_t static CRDT.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 88);
  if (v7(a2, a3, a4))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7(a1, a3, a4) ^ 1;
  }

  return v8 & 1;
}

uint64_t CRType.copy()(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CC8];
  (*(a2 + 24))(&v3, a1);
}

uint64_t PartialCRDT<>.delta(_:from:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v8 = *(a1 - 8);
  (*(v8 + 16))(a2, v3);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, a1);
}

uint64_t CRValueObservableDifference.hashValue.getter()
{
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](0);
  return sub_1AE23E34C();
}

uint64_t sub_1ADECE30C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AllRefsVisitor();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CD0];
  *(v5 + 24) = 0;
  *(v5 + 16) = v6;
  v7 = (v5 + 16);
  v11[3] = v4;
  v11[4] = &off_1F23C4500;
  v11[0] = v5;
  v8 = *(a2 + 48);

  v8(v11, a1, a2);
  __swift_destroy_boxed_opaque_existential_1(v11);
  swift_beginAccess();
  v9 = *v7;

  return v9;
}

uint64_t CRType.observableDifference(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  (*(a3 + 40))(a1, v4, a2);
  return sub_1ADDCEDE0(v4, &qword_1EB5BAA40, &unk_1AE24EC50);
}

uint64_t CRDT.merge(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  result = (*(*(a1 + 8) + 16))();
  if (qword_1EB5B9528 != -1)
  {
    result = swift_once();
  }

  v4 = byte_1EB5D74C2;
  *a2 = word_1EB5D74C0;
  *(a2 + 2) = v4;
  return result;
}

uint64_t CRDT.applying(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v21 - v18;
  (*(v9 + 16))(v14, a1, v8, v17);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v14, v8);
    return (*(*(a2 - 8) + 16))(a4, v22, a2);
  }

  else
  {
    (*(v15 + 32))(v19, v14, AssociatedTypeWitness);
    (*(*(a2 - 8) + 16))(a4, v22, a2);
    (*(v15 + 16))(v11, v19, AssociatedTypeWitness);
    (*(v15 + 56))(v11, 0, 1, AssociatedTypeWitness);
    (*(v21 + 80))(v11, a2);
    (*(v9 + 8))(v11, v8);
    return (*(v15 + 8))(v19, AssociatedTypeWitness);
  }
}

uint64_t CRDT.merging(delta:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = (*(a3 + 104))();
  v10 = *(a2 - 8);
  if (v9)
  {
    v14 = *(a2 - 8);
    (*(v14 + 16))(a4, v4, a2);
    (*(a3 + 112))(a1, a2, a3);
    v10 = v14;
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(v10 + 56);

  return v12(a4, v11, 1, a2);
}

void sub_1ADECE974(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *&a1[OBJC_IVAR___CRContext_assetManager];
  type metadata accessor for CRDecodeContext();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC8];
  v10[2] = MEMORY[0x1E69E7CC8];
  v10[3] = v11;
  v10[4] = v9;
  type metadata accessor for CRDecoder();
  swift_allocObject();
  sub_1ADDD86D8(a2, a3);

  v12 = sub_1ADE644B8(a2, a3, v10);
  if (v4)
  {
    sub_1ADDCC35C(a2, a3);
  }

  else
  {
    CRCounter.MutatingAction.init(from:)(v12, v13, v14, &v15);
    sub_1ADDCC35C(a2, a3);

    *a4 = v15;
  }
}

void CRMutatingAction.init(_:serializedData:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *&a1[OBJC_IVAR___CRContext_assetManager];
  type metadata accessor for CRDecodeContext();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC8];
  v11[2] = MEMORY[0x1E69E7CC8];
  v11[3] = v12;
  v11[4] = v10;
  type metadata accessor for CRDecoder();
  swift_allocObject();
  sub_1ADDD86D8(a2, a3);

  v13 = sub_1ADE644B8(a2, a3, v11);
  if (!v5)
  {
    (*(*(a5 + 8) + 8))(v13, a4);
  }

  sub_1ADDCC35C(a2, a3);
}

uint64_t CRMutatingAction.serializedData(_:version:)(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (*a2)
  {
    v6 = v4;
    LOBYTE(v19[0]) = *a2;
    type metadata accessor for CREncoder();
    swift_allocObject();
    v10 = CREncoder.init(_:version:fileSignature:)(a1, v19, 0, 0xF000000000000000);
    v19[3] = a3;
    v19[4] = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v6, a3);
    sub_1ADE69650();
    sub_1ADE6742C(v19, v20);
    if (v5)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v19);
      return v6;
    }

    if (!*(v10 + 104))
    {
      sub_1ADE42E40(v12, v13, v14);
      swift_allocError();
      *v17 = 0xD00000000000002CLL;
      *(v17 + 8) = 0x80000001AE260CE0;
      *(v17 + 16) = 3;
      swift_willThrow();

      sub_1ADE6AF00(v20);
      goto LABEL_10;
    }

    sub_1ADE675B8(v20, *(v10 + 104) + 4, 0);
    v6 = v16;
    sub_1ADDF6EEC();
    sub_1ADE6AF00(v20);

    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v15 = 0xD00000000000002ALL;
    *(v15 + 8) = 0x80000001AE2604C0;
    *(v15 + 16) = 0;
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1ADECEDF4@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECEE60@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECEECC@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECEF38@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECEFA4@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECF010@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECF07C@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECF0E8@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECF154@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECF1C0@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECF22C@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECF298@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECF304@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECF370@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECF3DC@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECF448@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECF4B4@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECF520@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECF58C@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECF5F8@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECF664@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

double sub_1ADECF6D0@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

double sub_1ADECF70C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v5;
  a2[1] = v4;

  return result;
}

void sub_1ADECF76C(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v5 = *a1;
  v6 = *v3;
  sub_1ADF64C74(v3[1], a1[1]);
  v9 = 0;
  if (v7)
  {
    sub_1ADF64C74(v6, v5);
    if (v8)
    {
      v9 = 1;
    }
  }

  *a2 = v9;
}

double sub_1ADECF7C4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v4;

  return result;
}

uint64_t sub_1ADECF814@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ADE4D280(*v2, *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1ADECF87C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v4;
  return result;
}

double sub_1ADECF8E0@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t sub_1ADECF8EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_1ADECF960@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  if (*v2 == *a1 && v2[1] == a1[1])
  {
    result = 1;
  }

  else
  {
    result = sub_1AE23E00C();
  }

  *a2 = result & 1;
  return result;
}

uint64_t sub_1ADECF9AC@<X0>(_BYTE *a3@<X8>)
{
  sub_1ADED05AC(&qword_1EB5BAA58, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  result = sub_1AE23CCBC();
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ADECFA30@<X0>(_BYTE *a3@<X8>)
{
  sub_1ADED05AC(&qword_1EB5BAA50, MEMORY[0x1E6968130], MEMORY[0x1E6968148]);
  result = sub_1AE23CCBC();
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ADECFAB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v4;
  a2[1] = v5;

  sub_1ADDD86D8(v4, v5);
}

uint64_t sub_1ADECFB38@<X0>(_BYTE *a3@<X8>)
{
  sub_1ADED05AC(&qword_1ED96A710, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  result = sub_1AE23CCBC();
  *a3 = result & 1;
  return result;
}

float sub_1ADECFBBC@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1ADECFBC8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v4;
  return result;
}

double sub_1ADECFC4C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1ADECFC58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1ADECFCE8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1ADECFD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v6 = *(*(a2 - 8) + 16);

  return v6(a3, v3, a2);
}

uint64_t sub_1ADECFDE8@<X0>(_BYTE *a3@<X8>)
{
  sub_1ADED05AC(&qword_1ED969648, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  result = sub_1AE23CCBC();
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ADECFE6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ADF92AF0(*v2, *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1ADECFEA0@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADECFF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  return sub_1ADED0548(v2, a2);
}

uint64_t sub_1ADECFF64@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  v5 = 0;
  if (*(v3 + *(a2 + 20)) == *(result + *(a2 + 20)))
  {
    result = sub_1AE23BF8C();
    if (result)
    {
      v5 = 1;
    }
  }

  *a3 = v5;
  return result;
}

uint64_t sub_1ADECFFD0@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADED003C@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADED00A8@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADED0148@<X0>(_BYTE *a3@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a3);
}

uint64_t sub_1ADED01B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v4;
}

void sub_1ADED0204(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *(v4 + 24);
  v7 = *(*a1 + 16);
  v8 = *(*a1 + 24);
  sub_1ADDD86D8(v5, v6);
  sub_1ADDD86D8(v7, v8);
  v9 = sub_1ADDD6F8C(v5, v6, v7, v8);
  sub_1ADDCC35C(v5, v6);
  sub_1ADDCC35C(v7, v8);
  *a2 = v9;
}

unint64_t sub_1ADED02A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAA48;
  if (!qword_1EB5BAA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAA48);
  }

  return result;
}

uint64_t dispatch thunk of CRType.copy(renamingReferences:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 24))(a1, a2);
}

{
  return (*(a3 + 32))(a1, a2);
}

uint64_t dispatch thunk of CRMergeable.merge(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(a1, a2);
}

{
  return (*(a3 + 16))(a1, a2);
}

uint64_t sub_1ADED0548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinalizedTimestamp(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADED05AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1ADED05F4()
{
  result = qword_1ED966B40;
  if (!qword_1ED966B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED966B40);
  }

  return result;
}

uint64_t sub_1ADED0688(_OWORD *a1, __int128 *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v12[0] = v2;
  *(v12 + 9) = *(a1 + 121);
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v13[6] = a2[6];
  v14[0] = v6;
  *(v14 + 9) = *(a2 + 121);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1ADEDBEF4(v11, v13) & 1;
}

uint64_t sub_1ADED0710(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1ADEDB054(v11, v13) & 1;
}

uint64_t sub_1ADED0794(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1ADEDA6E4(v11, v13) & 1;
}

uint64_t sub_1ADED0818()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7808);
  __swift_project_value_buffer(v0, qword_1EB5D7808);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1AE2427D0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "wantsToBeSource";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1AE23C67C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "isDestination";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "deltaMerge";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "fullModelRequest";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "fullModel";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "heartbeat";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "mergeRequest";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "mergeResponse";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "done";
  *(v22 + 8) = 4;
  *(v22 + 16) = 2;
  v8();
  return sub_1AE23C68C();
}

void sub_1ADED0B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    v10 = sub_1AE23C38C();
    if (v4 || (v11 & 1) != 0)
    {
      break;
    }

    if (v10 <= 4)
    {
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          sub_1ADED0EF8(v5, a1, a2, a3);
        }

        else
        {
          v9 = sub_1ADEDA13C;
LABEL_4:
          sub_1ADED26F8(a1, v5, a2, a3, v9);
        }
      }

      else if (v10 == 1)
      {
        sub_1ADED0D48(a1, v5, a2, a3);
      }

      else if (v10 == 2)
      {
        v9 = sub_1ADEDA0BC;
        goto LABEL_4;
      }
    }

    else if (v10 <= 6)
    {
      if (v10 == 5)
      {
        sub_1ADED1384(v5, a1, a2, a3);
      }

      else
      {
        sub_1ADED1810(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(v10)
      {
        case 7:
          sub_1ADED1D08(v5, a1, a2, a3);
          break;
        case 8:
          sub_1ADED2200(v5, a1, a2, a3);
          break;
        case 9:
          v9 = sub_1ADEDA270;
          goto LABEL_4;
      }
    }
  }
}

uint64_t sub_1ADED0EF8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ADEDA0C8(v88);
  v84 = v88[4];
  v85 = v88[5];
  v86 = v88[6];
  v87 = v88[7];
  v80 = v88[0];
  v81 = v88[1];
  v82 = v88[2];
  v83 = v88[3];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v92 = a1[3];
  v91 = v8;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a1;
  v89 = v6;
  v90 = v9;
  *(v96 + 9) = *(a1 + 121);
  v13 = a1[5];
  v12 = a1[6];
  v14 = v12;
  v96[0] = a1[7];
  v95 = v12;
  v15 = a1[3];
  v16 = a1[5];
  v93 = a1[4];
  v94 = v16;
  v17 = a1[7];
  v103 = v14;
  v104[0] = v17;
  *(v104 + 9) = *(a1 + 121);
  v99 = v10;
  v100 = v15;
  v101 = v93;
  v102 = v13;
  v97 = v11;
  v98 = v7;
  v18 = sub_1ADEDA030(&v97);
  v21 = v18;
  if (v18 != 1)
  {
    v62 = v103;
    v63[0] = v104[0];
    *(v63 + 9) = *(v104 + 9);
    v58 = v99;
    v59 = v100;
    v60 = v101;
    v61 = v102;
    v56 = v97;
    v57 = v98;
    v18 = sub_1ADEDA044(&v56);
    if (v18 == 2)
    {
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v56);
      v23 = v22;
      v76 = v84;
      v77 = v85;
      v78 = v86;
      v79 = v87;
      v72 = v80;
      v73 = v81;
      v74 = v82;
      v75 = v83;
      v50 = v91;
      v51 = v92;
      v48 = v89;
      v49 = v90;
      *(v55 + 9) = *(v96 + 9);
      v54 = v95;
      v55[0] = v96[0];
      v52 = v93;
      v53 = v94;
      sub_1ADEDA104(&v48, &v40);
      sub_1ADDCEDE0(&v72, &qword_1EB5BB400, &qword_1AE246370);
      v24 = v23[3];
      v26 = *v23;
      v25 = v23[1];
      v42 = v23[2];
      v43 = v24;
      v40 = v26;
      v41 = v25;
      v27 = v23[7];
      v29 = v23[4];
      v28 = v23[5];
      v46 = v23[6];
      v47[0] = v27;
      v44 = v29;
      v45 = v28;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v40);
      v84 = v44;
      v85 = v45;
      v86 = v46;
      v87 = v47[0];
      v80 = v40;
      v81 = v41;
      v82 = v42;
      v83 = v43;
    }
  }

  sub_1ADE73BC8(v18, v19, v20);
  sub_1AE23C4FC();
  if (v4 || (v68 = v84, v69 = v85, v70 = v86, v71 = v87, v64 = v80, v65 = v81, v66 = v82, v67 = v83, v74 = v82, v75 = v83, v72 = v80, v73 = v81, v78 = v86, v79 = v87, v76 = v84, v77 = v85, sub_1ADEDA0E0(&v72) == 1))
  {
    v60 = v84;
    v61 = v85;
    v62 = v86;
    v63[0] = v87;
    v56 = v80;
    v57 = v81;
    v58 = v82;
    v59 = v83;
    return sub_1ADDCEDE0(&v56, &qword_1EB5BB400, &qword_1AE246370);
  }

  else
  {
    v60 = v68;
    v61 = v69;
    v62 = v70;
    v63[0] = v71;
    v56 = v64;
    v57 = v65;
    v58 = v66;
    v59 = v67;
    sub_1ADE73B00(&v56, &v48);
    if (v21 != 1)
    {
      sub_1AE23C39C();
    }

    v39[4] = v84;
    v39[5] = v85;
    v39[6] = v86;
    v39[7] = v87;
    v39[0] = v80;
    v39[1] = v81;
    v39[2] = v82;
    v39[3] = v83;
    sub_1ADDCEDE0(v39, &qword_1EB5BB400, &qword_1AE246370);
    v44 = v76;
    v45 = v77;
    v46 = v78;
    v47[0] = v79;
    v40 = v72;
    v41 = v73;
    v42 = v74;
    v43 = v75;
    sub_1ADEDA0F8(&v40);
    v54 = v46;
    v55[0] = v47[0];
    *(v55 + 9) = *(v47 + 9);
    v50 = v42;
    v51 = v43;
    v52 = v44;
    v53 = v45;
    v48 = v40;
    v49 = v41;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v48);
    v31 = a1[7];
    v62 = a1[6];
    v63[0] = v31;
    *(v63 + 9) = *(a1 + 121);
    v32 = a1[3];
    v58 = a1[2];
    v59 = v32;
    v33 = a1[5];
    v60 = a1[4];
    v61 = v33;
    v34 = a1[1];
    v56 = *a1;
    v57 = v34;
    v35 = v53;
    a1[4] = v52;
    a1[5] = v35;
    v36 = v51;
    a1[2] = v50;
    a1[3] = v36;
    v37 = v49;
    *a1 = v48;
    a1[1] = v37;
    *(a1 + 121) = *(v55 + 9);
    v38 = v55[0];
    a1[6] = v54;
    a1[7] = v38;
    return sub_1ADEDA084(&v56);
  }
}

uint64_t sub_1ADED1384(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ADEDA0C8(v88);
  v84 = v88[4];
  v85 = v88[5];
  v86 = v88[6];
  v87 = v88[7];
  v80 = v88[0];
  v81 = v88[1];
  v82 = v88[2];
  v83 = v88[3];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v92 = a1[3];
  v91 = v8;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a1;
  v89 = v6;
  v90 = v9;
  *(v96 + 9) = *(a1 + 121);
  v13 = a1[5];
  v12 = a1[6];
  v14 = v12;
  v96[0] = a1[7];
  v95 = v12;
  v15 = a1[3];
  v16 = a1[5];
  v93 = a1[4];
  v94 = v16;
  v17 = a1[7];
  v103 = v14;
  v104[0] = v17;
  *(v104 + 9) = *(a1 + 121);
  v99 = v10;
  v100 = v15;
  v101 = v93;
  v102 = v13;
  v97 = v11;
  v98 = v7;
  v18 = sub_1ADEDA030(&v97);
  v21 = v18;
  if (v18 != 1)
  {
    v62 = v103;
    v63[0] = v104[0];
    *(v63 + 9) = *(v104 + 9);
    v58 = v99;
    v59 = v100;
    v60 = v101;
    v61 = v102;
    v56 = v97;
    v57 = v98;
    v18 = sub_1ADEDA044(&v56);
    if (v18 == 4)
    {
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v56);
      v23 = v22;
      v76 = v84;
      v77 = v85;
      v78 = v86;
      v79 = v87;
      v72 = v80;
      v73 = v81;
      v74 = v82;
      v75 = v83;
      v50 = v91;
      v51 = v92;
      v48 = v89;
      v49 = v90;
      *(v55 + 9) = *(v96 + 9);
      v54 = v95;
      v55[0] = v96[0];
      v52 = v93;
      v53 = v94;
      sub_1ADEDA104(&v48, &v40);
      sub_1ADDCEDE0(&v72, &qword_1EB5BB400, &qword_1AE246370);
      v24 = v23[3];
      v26 = *v23;
      v25 = v23[1];
      v42 = v23[2];
      v43 = v24;
      v40 = v26;
      v41 = v25;
      v27 = v23[7];
      v29 = v23[4];
      v28 = v23[5];
      v46 = v23[6];
      v47[0] = v27;
      v44 = v29;
      v45 = v28;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v40);
      v84 = v44;
      v85 = v45;
      v86 = v46;
      v87 = v47[0];
      v80 = v40;
      v81 = v41;
      v82 = v42;
      v83 = v43;
    }
  }

  sub_1ADE73BC8(v18, v19, v20);
  sub_1AE23C4FC();
  if (v4 || (v68 = v84, v69 = v85, v70 = v86, v71 = v87, v64 = v80, v65 = v81, v66 = v82, v67 = v83, v74 = v82, v75 = v83, v72 = v80, v73 = v81, v78 = v86, v79 = v87, v76 = v84, v77 = v85, sub_1ADEDA0E0(&v72) == 1))
  {
    v60 = v84;
    v61 = v85;
    v62 = v86;
    v63[0] = v87;
    v56 = v80;
    v57 = v81;
    v58 = v82;
    v59 = v83;
    return sub_1ADDCEDE0(&v56, &qword_1EB5BB400, &qword_1AE246370);
  }

  else
  {
    v60 = v68;
    v61 = v69;
    v62 = v70;
    v63[0] = v71;
    v56 = v64;
    v57 = v65;
    v58 = v66;
    v59 = v67;
    sub_1ADE73B00(&v56, &v48);
    if (v21 != 1)
    {
      sub_1AE23C39C();
    }

    v39[4] = v84;
    v39[5] = v85;
    v39[6] = v86;
    v39[7] = v87;
    v39[0] = v80;
    v39[1] = v81;
    v39[2] = v82;
    v39[3] = v83;
    sub_1ADDCEDE0(v39, &qword_1EB5BB400, &qword_1AE246370);
    v44 = v76;
    v45 = v77;
    v46 = v78;
    v47[0] = v79;
    v40 = v72;
    v41 = v73;
    v42 = v74;
    v43 = v75;
    sub_1ADEDA148(&v40);
    v54 = v46;
    v55[0] = v47[0];
    *(v55 + 9) = *(v47 + 9);
    v50 = v42;
    v51 = v43;
    v52 = v44;
    v53 = v45;
    v48 = v40;
    v49 = v41;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v48);
    v31 = a1[7];
    v62 = a1[6];
    v63[0] = v31;
    *(v63 + 9) = *(a1 + 121);
    v32 = a1[3];
    v58 = a1[2];
    v59 = v32;
    v33 = a1[5];
    v60 = a1[4];
    v61 = v33;
    v34 = a1[1];
    v56 = *a1;
    v57 = v34;
    v35 = v53;
    a1[4] = v52;
    a1[5] = v35;
    v36 = v51;
    a1[2] = v50;
    a1[3] = v36;
    v37 = v49;
    *a1 = v48;
    a1[1] = v37;
    *(a1 + 121) = *(v55 + 9);
    v38 = v55[0];
    a1[6] = v54;
    a1[7] = v38;
    return sub_1ADEDA084(&v56);
  }
}

uint64_t sub_1ADED1810(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ADEDA154(v90);
  v87 = v90[6];
  v88 = v90[7];
  v83 = v90[2];
  v84 = v90[3];
  v85 = v90[4];
  v86 = v90[5];
  v81 = v90[0];
  v82 = v90[1];
  v6 = a1[5];
  v7 = a1[7];
  v98 = a1[6];
  v99[0] = v7;
  *(v99 + 9) = *(a1 + 121);
  v8 = a1[1];
  v9 = a1[3];
  v94 = a1[2];
  v95 = v9;
  v11 = a1[3];
  v10 = a1[4];
  v12 = v10;
  v97 = a1[5];
  v96 = v10;
  v13 = *a1;
  v14 = *a1;
  v93 = a1[1];
  v92 = v13;
  v15 = a1[7];
  v106 = v98;
  v107[0] = v15;
  *(v107 + 9) = *(a1 + 121);
  v102 = v94;
  v103 = v11;
  v104 = v12;
  v105 = v6;
  v89 = v91;
  v100 = v14;
  v101 = v8;
  v16 = sub_1ADEDA030(&v100);
  v19 = v16;
  if (v16 != 1)
  {
    v61 = v106;
    *v62 = v107[0];
    *&v62[9] = *(v107 + 9);
    v57 = v102;
    v58 = v103;
    v59 = v104;
    v60 = v105;
    v55 = v100;
    v56 = v101;
    v16 = sub_1ADEDA044(&v55);
    if (v16 == 5)
    {
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v55);
      v21 = v20;
      v78 = v87;
      v79 = v88;
      v80 = v89;
      v74 = v83;
      v75 = v84;
      v76 = v85;
      v77 = v86;
      v72 = v81;
      v73 = v82;
      v53 = v98;
      *v54 = v99[0];
      *&v54[9] = *(v99 + 9);
      v49 = v94;
      v50 = v95;
      v51 = v96;
      v52 = v97;
      v47 = v92;
      v48 = v93;
      sub_1ADEDA104(&v47, &v39);
      sub_1ADDCEDE0(&v72, &qword_1EB5BAB60, &qword_1AE246378);
      v39 = *v21;
      v22 = *(v21 + 64);
      v24 = *(v21 + 16);
      v23 = *(v21 + 32);
      v42 = *(v21 + 48);
      v43 = v22;
      v40 = v24;
      v41 = v23;
      v26 = *(v21 + 96);
      v25 = *(v21 + 112);
      v27 = *(v21 + 80);
      *&v46[16] = *(v21 + 128);
      v45 = v26;
      *v46 = v25;
      v44 = v27;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v39);
      v87 = v45;
      v88 = *v46;
      v89 = *&v46[16];
      v83 = v41;
      v84 = v42;
      v85 = v43;
      v86 = v44;
      v81 = v39;
      v82 = v40;
    }
  }

  sub_1ADED9D78(v16, v17, v18);
  sub_1AE23C4FC();
  if (v4 || (v69 = v87, v70 = v88, v65 = v83, v66 = v84, v67 = v85, v68 = v86, v63 = v81, v64 = v82, v78 = v87, v79 = v88, v74 = v83, v75 = v84, v76 = v85, v77 = v86, v71 = v89, v80 = v89, v72 = v81, v73 = v82, sub_1ADEDA180(&v72) == 1))
  {
    v61 = v87;
    *v62 = v88;
    *&v62[16] = v89;
    v57 = v83;
    v58 = v84;
    v59 = v85;
    v60 = v86;
    v55 = v81;
    v56 = v82;
    return sub_1ADDCEDE0(&v55, &qword_1EB5BAB60, &qword_1AE246378);
  }

  else
  {
    v61 = v69;
    *v62 = v70;
    *&v62[16] = v71;
    v57 = v65;
    v58 = v66;
    v59 = v67;
    v60 = v68;
    v55 = v63;
    v56 = v64;
    sub_1ADEDA1A4(&v55, &v47);
    if (v19 != 1)
    {
      sub_1AE23C39C();
    }

    v37[6] = v87;
    v37[7] = v88;
    v38 = v89;
    v37[2] = v83;
    v37[3] = v84;
    v37[4] = v85;
    v37[5] = v86;
    v37[0] = v81;
    v37[1] = v82;
    sub_1ADDCEDE0(v37, &qword_1EB5BAB60, &qword_1AE246378);
    v45 = v78;
    *v46 = v79;
    *&v46[16] = v80;
    v41 = v74;
    v42 = v75;
    v43 = v76;
    v44 = v77;
    v39 = v72;
    v40 = v73;
    sub_1ADEDA1DC(&v39);
    v53 = v45;
    *v54 = *v46;
    *&v54[9] = *&v46[9];
    v49 = v41;
    v50 = v42;
    v51 = v43;
    v52 = v44;
    v47 = v39;
    v48 = v40;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v47);
    v29 = a1[7];
    v61 = a1[6];
    *v62 = v29;
    *&v62[9] = *(a1 + 121);
    v30 = a1[3];
    v57 = a1[2];
    v58 = v30;
    v31 = a1[5];
    v59 = a1[4];
    v60 = v31;
    v32 = a1[1];
    v55 = *a1;
    v56 = v32;
    v33 = v52;
    a1[4] = v51;
    a1[5] = v33;
    v34 = v50;
    a1[2] = v49;
    a1[3] = v34;
    v35 = v48;
    *a1 = v47;
    a1[1] = v35;
    *(a1 + 121) = *&v54[9];
    v36 = *v54;
    a1[6] = v53;
    a1[7] = v36;
    return sub_1ADEDA084(&v55);
  }
}

uint64_t sub_1ADED1D08(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ADE1F4F0(v90);
  v87 = v90[6];
  v88 = v90[7];
  v83 = v90[2];
  v84 = v90[3];
  v85 = v90[4];
  v86 = v90[5];
  v81 = v90[0];
  v82 = v90[1];
  v6 = a1[5];
  v7 = a1[7];
  v98 = a1[6];
  v99[0] = v7;
  *(v99 + 9) = *(a1 + 121);
  v8 = a1[1];
  v9 = a1[3];
  v94 = a1[2];
  v95 = v9;
  v11 = a1[3];
  v10 = a1[4];
  v12 = v10;
  v97 = a1[5];
  v96 = v10;
  v13 = *a1;
  v14 = *a1;
  v93 = a1[1];
  v92 = v13;
  v15 = a1[7];
  v106 = v98;
  v107[0] = v15;
  *(v107 + 9) = *(a1 + 121);
  v102 = v94;
  v103 = v11;
  v104 = v12;
  v105 = v6;
  v89 = v91;
  v100 = v14;
  v101 = v8;
  v16 = sub_1ADEDA030(&v100);
  v19 = v16;
  if (v16 != 1)
  {
    v61 = v106;
    *v62 = v107[0];
    *&v62[9] = *(v107 + 9);
    v57 = v102;
    v58 = v103;
    v59 = v104;
    v60 = v105;
    v55 = v100;
    v56 = v101;
    v16 = sub_1ADEDA044(&v55);
    if (v16 == 6)
    {
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v55);
      v21 = v20;
      v78 = v87;
      v79 = v88;
      v80 = v89;
      v74 = v83;
      v75 = v84;
      v76 = v85;
      v77 = v86;
      v72 = v81;
      v73 = v82;
      v53 = v98;
      *v54 = v99[0];
      *&v54[9] = *(v99 + 9);
      v49 = v94;
      v50 = v95;
      v51 = v96;
      v52 = v97;
      v47 = v92;
      v48 = v93;
      sub_1ADEDA104(&v47, &v39);
      sub_1ADDCEDE0(&v72, &qword_1EB5BAB68, &qword_1AE246380);
      v39 = *v21;
      v22 = *(v21 + 64);
      v24 = *(v21 + 16);
      v23 = *(v21 + 32);
      v42 = *(v21 + 48);
      v43 = v22;
      v40 = v24;
      v41 = v23;
      v26 = *(v21 + 96);
      v25 = *(v21 + 112);
      v27 = *(v21 + 80);
      v46[16] = *(v21 + 128);
      v45 = v26;
      *v46 = v25;
      v44 = v27;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v39);
      v87 = v45;
      v88 = *v46;
      v89 = v46[16];
      v83 = v41;
      v84 = v42;
      v85 = v43;
      v86 = v44;
      v81 = v39;
      v82 = v40;
    }
  }

  sub_1ADED9C18(v16, v17, v18);
  sub_1AE23C4FC();
  if (v4 || (v69 = v87, v70 = v88, v65 = v83, v66 = v84, v67 = v85, v68 = v86, v63 = v81, v64 = v82, v78 = v87, v79 = v88, v74 = v83, v75 = v84, v76 = v85, v77 = v86, v71 = v89, v80 = v89, v72 = v81, v73 = v82, sub_1ADE1F524(&v72) == 1))
  {
    v61 = v87;
    *v62 = v88;
    v62[16] = v89;
    v57 = v83;
    v58 = v84;
    v59 = v85;
    v60 = v86;
    v55 = v81;
    v56 = v82;
    return sub_1ADDCEDE0(&v55, &qword_1EB5BAB68, &qword_1AE246380);
  }

  else
  {
    v61 = v69;
    *v62 = v70;
    v62[16] = v71;
    v57 = v65;
    v58 = v66;
    v59 = v67;
    v60 = v68;
    v55 = v63;
    v56 = v64;
    sub_1ADEDA1E8(&v55, &v47);
    if (v19 != 1)
    {
      sub_1AE23C39C();
    }

    v37[6] = v87;
    v37[7] = v88;
    v38 = v89;
    v37[2] = v83;
    v37[3] = v84;
    v37[4] = v85;
    v37[5] = v86;
    v37[0] = v81;
    v37[1] = v82;
    sub_1ADDCEDE0(v37, &qword_1EB5BAB68, &qword_1AE246380);
    v45 = v78;
    *v46 = v79;
    v46[16] = v80;
    v41 = v74;
    v42 = v75;
    v43 = v76;
    v44 = v77;
    v39 = v72;
    v40 = v73;
    sub_1ADEDA220(&v39);
    v53 = v45;
    *v54 = *v46;
    *&v54[9] = *&v46[9];
    v49 = v41;
    v50 = v42;
    v51 = v43;
    v52 = v44;
    v47 = v39;
    v48 = v40;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v47);
    v29 = a1[7];
    v61 = a1[6];
    *v62 = v29;
    *&v62[9] = *(a1 + 121);
    v30 = a1[3];
    v57 = a1[2];
    v58 = v30;
    v31 = a1[5];
    v59 = a1[4];
    v60 = v31;
    v32 = a1[1];
    v55 = *a1;
    v56 = v32;
    v33 = v52;
    a1[4] = v51;
    a1[5] = v33;
    v34 = v50;
    a1[2] = v49;
    a1[3] = v34;
    v35 = v48;
    *a1 = v47;
    a1[1] = v35;
    *(a1 + 121) = *&v54[9];
    v36 = *v54;
    a1[6] = v53;
    a1[7] = v36;
    return sub_1ADEDA084(&v55);
  }
}

uint64_t sub_1ADED2200(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ADE1F4F0(v90);
  v87 = v90[6];
  v88 = v90[7];
  v83 = v90[2];
  v84 = v90[3];
  v85 = v90[4];
  v86 = v90[5];
  v81 = v90[0];
  v82 = v90[1];
  v6 = a1[5];
  v7 = a1[7];
  v98 = a1[6];
  v99[0] = v7;
  *(v99 + 9) = *(a1 + 121);
  v8 = a1[1];
  v9 = a1[3];
  v94 = a1[2];
  v95 = v9;
  v11 = a1[3];
  v10 = a1[4];
  v12 = v10;
  v97 = a1[5];
  v96 = v10;
  v13 = *a1;
  v14 = *a1;
  v93 = a1[1];
  v92 = v13;
  v15 = a1[7];
  v106 = v98;
  v107[0] = v15;
  *(v107 + 9) = *(a1 + 121);
  v102 = v94;
  v103 = v11;
  v104 = v12;
  v105 = v6;
  v89 = v91;
  v100 = v14;
  v101 = v8;
  v16 = sub_1ADEDA030(&v100);
  v19 = v16;
  if (v16 != 1)
  {
    v61 = v106;
    *v62 = v107[0];
    *&v62[9] = *(v107 + 9);
    v57 = v102;
    v58 = v103;
    v59 = v104;
    v60 = v105;
    v55 = v100;
    v56 = v101;
    v16 = sub_1ADEDA044(&v55);
    if (v16 == 7)
    {
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v55);
      v21 = v20;
      v78 = v87;
      v79 = v88;
      v80 = v89;
      v74 = v83;
      v75 = v84;
      v76 = v85;
      v77 = v86;
      v72 = v81;
      v73 = v82;
      v53 = v98;
      *v54 = v99[0];
      *&v54[9] = *(v99 + 9);
      v49 = v94;
      v50 = v95;
      v51 = v96;
      v52 = v97;
      v47 = v92;
      v48 = v93;
      sub_1ADEDA104(&v47, &v39);
      sub_1ADDCEDE0(&v72, &qword_1EB5BAB70, &qword_1AE246388);
      v39 = *v21;
      v22 = *(v21 + 64);
      v24 = *(v21 + 16);
      v23 = *(v21 + 32);
      v42 = *(v21 + 48);
      v43 = v22;
      v40 = v24;
      v41 = v23;
      v26 = *(v21 + 96);
      v25 = *(v21 + 112);
      v27 = *(v21 + 80);
      v46[16] = *(v21 + 128);
      v45 = v26;
      *v46 = v25;
      v44 = v27;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v39);
      v87 = v45;
      v88 = *v46;
      v89 = v46[16];
      v83 = v41;
      v84 = v42;
      v85 = v43;
      v86 = v44;
      v81 = v39;
      v82 = v40;
    }
  }

  sub_1ADED9AB8(v16, v17, v18);
  sub_1AE23C4FC();
  if (v4 || (v69 = v87, v70 = v88, v65 = v83, v66 = v84, v67 = v85, v68 = v86, v63 = v81, v64 = v82, v78 = v87, v79 = v88, v74 = v83, v75 = v84, v76 = v85, v77 = v86, v71 = v89, v80 = v89, v72 = v81, v73 = v82, sub_1ADE1F524(&v72) == 1))
  {
    v61 = v87;
    *v62 = v88;
    v62[16] = v89;
    v57 = v83;
    v58 = v84;
    v59 = v85;
    v60 = v86;
    v55 = v81;
    v56 = v82;
    return sub_1ADDCEDE0(&v55, &qword_1EB5BAB70, &qword_1AE246388);
  }

  else
  {
    v61 = v69;
    *v62 = v70;
    v62[16] = v71;
    v57 = v65;
    v58 = v66;
    v59 = v67;
    v60 = v68;
    v55 = v63;
    v56 = v64;
    sub_1ADEDA22C(&v55, &v47);
    if (v19 != 1)
    {
      sub_1AE23C39C();
    }

    v37[6] = v87;
    v37[7] = v88;
    v38 = v89;
    v37[2] = v83;
    v37[3] = v84;
    v37[4] = v85;
    v37[5] = v86;
    v37[0] = v81;
    v37[1] = v82;
    sub_1ADDCEDE0(v37, &qword_1EB5BAB70, &qword_1AE246388);
    v45 = v78;
    *v46 = v79;
    v46[16] = v80;
    v41 = v74;
    v42 = v75;
    v43 = v76;
    v44 = v77;
    v39 = v72;
    v40 = v73;
    sub_1ADEDA264(&v39);
    v53 = v45;
    *v54 = *v46;
    *&v54[9] = *&v46[9];
    v49 = v41;
    v50 = v42;
    v51 = v43;
    v52 = v44;
    v47 = v39;
    v48 = v40;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v47);
    v29 = a1[7];
    v61 = a1[6];
    *v62 = v29;
    *&v62[9] = *(a1 + 121);
    v30 = a1[3];
    v57 = a1[2];
    v58 = v30;
    v31 = a1[5];
    v59 = a1[4];
    v60 = v31;
    v32 = a1[1];
    v55 = *a1;
    v56 = v32;
    v33 = v52;
    a1[4] = v51;
    a1[5] = v33;
    v34 = v50;
    a1[2] = v49;
    a1[3] = v34;
    v35 = v48;
    *a1 = v47;
    a1[1] = v35;
    *(a1 + 121) = *&v54[9];
    v36 = *v54;
    a1[6] = v53;
    a1[7] = v36;
    return sub_1ADEDA084(&v55);
  }
}

uint64_t sub_1ADED26F8(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *))
{
  v36 = 2;
  result = sub_1AE23C3AC();
  if (!v5)
  {
    v9 = v36;
    if (v36 != 2)
    {
      v10 = a2[7];
      v34[6] = a2[6];
      *v35 = v10;
      *&v35[9] = *(a2 + 121);
      v11 = a2[3];
      v34[2] = a2[2];
      v34[3] = v11;
      v12 = a2[5];
      v34[4] = a2[4];
      v34[5] = v12;
      v13 = a2[1];
      v34[0] = *a2;
      v34[1] = v13;
      if (sub_1ADEDA030(v34) != 1)
      {
        sub_1AE23C39C();
      }

      LOBYTE(v22[0]) = v9 & 1;
      a5(v22);
      v30 = v22[6];
      v31[0] = v23[0];
      *(v31 + 9) = *(v23 + 9);
      v26 = v22[2];
      v27 = v22[3];
      v28 = v22[4];
      v29 = v22[5];
      v24 = v22[0];
      v25 = v22[1];
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v24);
      v14 = a2[7];
      v32[6] = a2[6];
      v33[0] = v14;
      *(v33 + 9) = *(a2 + 121);
      v15 = a2[3];
      v32[2] = a2[2];
      v32[3] = v15;
      v16 = a2[5];
      v32[4] = a2[4];
      v32[5] = v16;
      v17 = a2[1];
      v32[0] = *a2;
      v32[1] = v17;
      v18 = v29;
      a2[4] = v28;
      a2[5] = v18;
      v19 = v27;
      a2[2] = v26;
      a2[3] = v19;
      v20 = v25;
      *a2 = v24;
      a2[1] = v20;
      *(a2 + 121) = *(v31 + 9);
      v21 = v31[0];
      a2[6] = v30;
      a2[7] = v21;
      return sub_1ADEDA084(v32);
    }
  }

  return result;
}

uint64_t sub_1ADED286C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3[7];
  v24 = v3[6];
  v25[0] = v12;
  *(v25 + 9) = *(v3 + 121);
  v13 = v3[3];
  v20 = v3[2];
  v21 = v13;
  v14 = v3[5];
  v22 = v3[4];
  v23 = v14;
  v15 = v3[1];
  v18 = *v3;
  v19 = v15;
  if (sub_1ADEDA030(&v18) == 1)
  {
    goto LABEL_25;
  }

  v26[6] = v24;
  v27[0] = v25[0];
  *(v27 + 9) = *(v25 + 9);
  v26[2] = v20;
  v26[3] = v21;
  v26[4] = v22;
  v26[5] = v23;
  v26[0] = v18;
  v26[1] = v19;
  v16 = sub_1ADEDA044(v26);
  if (v16 <= 3)
  {
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v26);
        result = sub_1ADED2D90(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }

      else
      {
        Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v26);
        result = sub_1ADED2EC0(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }
    }

    else if (v16)
    {
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v26);
      result = sub_1ADED2CB4(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v26);
      result = sub_1ADED2BAC(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    goto LABEL_25;
  }

  if (v16 > 5)
  {
    if (v16 == 6)
    {
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v26);
      result = sub_1ADED3208(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    else if (v16 == 7)
    {
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v26);
      result = sub_1ADED3348(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v26);
      result = sub_1ADED3488(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    goto LABEL_25;
  }

  if (v16 == 4)
  {
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v26);
    result = sub_1ADED2F9C(v3, a1, a2, a3);
    if (v4)
    {
      return result;
    }

    goto LABEL_25;
  }

  Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v26);
  result = sub_1ADED30CC(v3, a1, a2, a3);
  if (!v4)
  {
LABEL_25:
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1ADED2BAC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[7];
  v17 = a1[6];
  v18[0] = v5;
  *(v18 + 9) = *(a1 + 121);
  v6 = a1[3];
  v13 = a1[2];
  v14 = v6;
  v7 = a1[5];
  v15 = a1[4];
  v16 = v7;
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;
  result = sub_1ADEDA030(&v11);
  if (result == 1 || (v19[6] = v17, v20[0] = v18[0], *(v20 + 9) = *(v18 + 9), v19[2] = v13, v19[3] = v14, v19[4] = v15, v19[5] = v16, v19[0] = v11, v19[1] = v12, result = sub_1ADEDA044(v19), result))
  {
    __break(1u);
  }

  else
  {
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v19);
    sub_1ADEDA04C(a1, &v10);
    sub_1AE23C5CC();
    return sub_1ADEDA084(a1);
  }

  return result;
}

uint64_t sub_1ADED2CB4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[7];
  v15 = a1[6];
  v16[0] = v4;
  *(v16 + 9) = *(a1 + 121);
  v5 = a1[3];
  v11 = a1[2];
  v12 = v5;
  v6 = a1[5];
  v13 = a1[4];
  v14 = v6;
  v7 = a1[1];
  v9 = *a1;
  v10 = v7;
  result = sub_1ADEDA030(&v9);
  if (result == 1 || (v17[6] = v15, v18[0] = v16[0], *(v18 + 9) = *(v16 + 9), v17[2] = v11, v17[3] = v12, v17[4] = v13, v17[5] = v14, v17[0] = v9, v17[1] = v10, result = sub_1ADEDA044(v17), result != 1))
  {
    __break(1u);
  }

  else
  {
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v17);
    return sub_1AE23C59C();
  }

  return result;
}

uint64_t sub_1ADED2D90(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[7];
  v22 = a1[6];
  v23[0] = v4;
  *(v23 + 9) = *(a1 + 121);
  v5 = a1[3];
  v18 = a1[2];
  v19 = v5;
  v6 = a1[5];
  v20 = a1[4];
  v21 = v6;
  v7 = a1[1];
  v16 = *a1;
  v17 = v7;
  result = sub_1ADEDA030(&v16);
  if (result == 1 || (v24[6] = v22, v25[0] = v23[0], *(v25 + 9) = *(v23 + 9), v24[2] = v18, v24[3] = v19, v24[4] = v20, v24[5] = v21, v24[0] = v16, v24[1] = v17, result = sub_1ADEDA044(v24), result != 2))
  {
    __break(1u);
  }

  else
  {
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v24);
    v10 = v9[5];
    v25[6] = v9[4];
    v25[7] = v10;
    v11 = v9[7];
    v25[8] = v9[6];
    v25[9] = v11;
    v12 = v9[1];
    v25[2] = *v9;
    v25[3] = v12;
    v13 = v9[3];
    v25[4] = v9[2];
    v25[5] = v13;
    sub_1ADE73BC8(v9, v14, v15);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED2EC0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[7];
  v15 = a1[6];
  v16[0] = v4;
  *(v16 + 9) = *(a1 + 121);
  v5 = a1[3];
  v11 = a1[2];
  v12 = v5;
  v6 = a1[5];
  v13 = a1[4];
  v14 = v6;
  v7 = a1[1];
  v9 = *a1;
  v10 = v7;
  result = sub_1ADEDA030(&v9);
  if (result == 1 || (v17[6] = v15, v18[0] = v16[0], *(v18 + 9) = *(v16 + 9), v17[2] = v11, v17[3] = v12, v17[4] = v13, v17[5] = v14, v17[0] = v9, v17[1] = v10, result = sub_1ADEDA044(v17), result != 3))
  {
    __break(1u);
  }

  else
  {
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v17);
    return sub_1AE23C59C();
  }

  return result;
}

uint64_t sub_1ADED2F9C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[7];
  v22 = a1[6];
  v23[0] = v4;
  *(v23 + 9) = *(a1 + 121);
  v5 = a1[3];
  v18 = a1[2];
  v19 = v5;
  v6 = a1[5];
  v20 = a1[4];
  v21 = v6;
  v7 = a1[1];
  v16 = *a1;
  v17 = v7;
  result = sub_1ADEDA030(&v16);
  if (result == 1 || (v24[6] = v22, v25[0] = v23[0], *(v25 + 9) = *(v23 + 9), v24[2] = v18, v24[3] = v19, v24[4] = v20, v24[5] = v21, v24[0] = v16, v24[1] = v17, result = sub_1ADEDA044(v24), result != 4))
  {
    __break(1u);
  }

  else
  {
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v24);
    v10 = v9[5];
    v25[6] = v9[4];
    v25[7] = v10;
    v11 = v9[7];
    v25[8] = v9[6];
    v25[9] = v11;
    v12 = v9[1];
    v25[2] = *v9;
    v25[3] = v12;
    v13 = v9[3];
    v25[4] = v9[2];
    v25[5] = v13;
    sub_1ADE73BC8(v9, v14, v15);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED30CC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[7];
  v23 = a1[6];
  v24[0] = v4;
  *(v24 + 9) = *(a1 + 121);
  v5 = a1[3];
  v19 = a1[2];
  v20 = v5;
  v6 = a1[5];
  v21 = a1[4];
  v22 = v6;
  v7 = a1[1];
  v17 = *a1;
  v18 = v7;
  result = sub_1ADEDA030(&v17);
  if (result == 1 || (v25[6] = v23, v26[0] = v24[0], *(v26 + 9) = *(v24 + 9), v25[2] = v19, v25[3] = v20, v25[4] = v21, v25[5] = v22, v25[0] = v17, v25[1] = v18, result = sub_1ADEDA044(v25), result != 5))
  {
    __break(1u);
  }

  else
  {
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v25);
    v10 = *(v9 + 112);
    v26[8] = *(v9 + 96);
    v26[9] = v10;
    v11 = *(v9 + 128);
    v12 = *(v9 + 48);
    v26[4] = *(v9 + 32);
    v26[5] = v12;
    v13 = *(v9 + 80);
    v26[6] = *(v9 + 64);
    v26[7] = v13;
    v14 = *(v9 + 16);
    v26[2] = *v9;
    v26[3] = v14;
    v27 = v11;
    sub_1ADED9D78(v9, v15, v16);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED3208(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[7];
  v23 = a1[6];
  v24[0] = v4;
  *(v24 + 9) = *(a1 + 121);
  v5 = a1[3];
  v19 = a1[2];
  v20 = v5;
  v6 = a1[5];
  v21 = a1[4];
  v22 = v6;
  v7 = a1[1];
  v17 = *a1;
  v18 = v7;
  result = sub_1ADEDA030(&v17);
  if (result == 1 || (v25[6] = v23, v26[0] = v24[0], *(v26 + 9) = *(v24 + 9), v25[2] = v19, v25[3] = v20, v25[4] = v21, v25[5] = v22, v25[0] = v17, v25[1] = v18, result = sub_1ADEDA044(v25), result != 6))
  {
    __break(1u);
  }

  else
  {
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v25);
    v10 = *(v9 + 112);
    v26[8] = *(v9 + 96);
    v26[9] = v10;
    v11 = *(v9 + 128);
    v12 = *(v9 + 48);
    v26[4] = *(v9 + 32);
    v26[5] = v12;
    v13 = *(v9 + 80);
    v26[6] = *(v9 + 64);
    v26[7] = v13;
    v14 = *(v9 + 16);
    v26[2] = *v9;
    v26[3] = v14;
    v27 = v11;
    sub_1ADED9C18(v9, v15, v16);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED3348(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[7];
  v23 = a1[6];
  v24[0] = v4;
  *(v24 + 9) = *(a1 + 121);
  v5 = a1[3];
  v19 = a1[2];
  v20 = v5;
  v6 = a1[5];
  v21 = a1[4];
  v22 = v6;
  v7 = a1[1];
  v17 = *a1;
  v18 = v7;
  result = sub_1ADEDA030(&v17);
  if (result == 1 || (v25[6] = v23, v26[0] = v24[0], *(v26 + 9) = *(v24 + 9), v25[2] = v19, v25[3] = v20, v25[4] = v21, v25[5] = v22, v25[0] = v17, v25[1] = v18, result = sub_1ADEDA044(v25), result != 7))
  {
    __break(1u);
  }

  else
  {
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v25);
    v10 = *(v9 + 112);
    v26[8] = *(v9 + 96);
    v26[9] = v10;
    v11 = *(v9 + 128);
    v12 = *(v9 + 48);
    v26[4] = *(v9 + 32);
    v26[5] = v12;
    v13 = *(v9 + 80);
    v26[6] = *(v9 + 64);
    v26[7] = v13;
    v14 = *(v9 + 16);
    v26[2] = *v9;
    v26[3] = v14;
    v27 = v11;
    sub_1ADED9AB8(v9, v15, v16);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED3488(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[7];
  v15 = a1[6];
  v16[0] = v4;
  *(v16 + 9) = *(a1 + 121);
  v5 = a1[3];
  v11 = a1[2];
  v12 = v5;
  v6 = a1[5];
  v13 = a1[4];
  v14 = v6;
  v7 = a1[1];
  v9 = *a1;
  v10 = v7;
  result = sub_1ADEDA030(&v9);
  if (result == 1 || (v17[6] = v15, v18[0] = v16[0], *(v18 + 9) = *(v16 + 9), v17[2] = v11, v17[3] = v12, v17[4] = v13, v17[5] = v14, v17[0] = v9, v17[1] = v10, result = sub_1ADEDA044(v17), result != 8))
  {
    __break(1u);
  }

  else
  {
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v17);
    return sub_1AE23C59C();
  }

  return result;
}

__n128 sub_1ADED3564@<Q0>(uint64_t a1@<X8>)
{
  sub_1ADEDA27C(v6);
  v2 = v7[0];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 121) = *(v7 + 9);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

void (*sub_1ADED35DC(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADE9BCF4;
}

uint64_t sub_1ADED36FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADED9FDC(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADED376C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADED9ED8(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADED37A8(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED3830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADED9ED8(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADED387C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED3900(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v12[0] = v2;
  *(v12 + 9) = *(a1 + 121);
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v13[6] = a2[6];
  v14[0] = v6;
  *(v14 + 9) = *(a2 + 121);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1ADEDBADC(v11, v13) & 1;
}

uint64_t sub_1ADED3988()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7820);
  __swift_project_value_buffer(v0, qword_1EB5D7820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isInitialHeartbeat";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADED3B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1ADE73BC8(1, v5, v6);
        sub_1AE23C4FC();
      }

      else if (result == 2)
      {
        sub_1AE23C3BC();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADED3C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1AE23C32C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADED3D54(v5, a1, a2, a3);
  if (!v4)
  {
    if (*v5 == 1)
    {
      sub_1AE23C59C();
    }

    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_1ADED3D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 88);
  v11[4] = *(a1 + 72);
  v11[5] = v4;
  v5 = *(a1 + 120);
  v11[6] = *(a1 + 104);
  v11[7] = v5;
  v6 = *(a1 + 24);
  v11[0] = *(a1 + 8);
  v11[1] = v6;
  v7 = *(a1 + 56);
  v11[2] = *(a1 + 40);
  v11[3] = v7;
  result = sub_1ADEDA0E0(v11);
  if (result != 1)
  {
    sub_1ADE73BC8(result, v9, v10);
    return sub_1AE23C66C();
  }

  return result;
}

__n128 sub_1ADED3E28@<Q0>(uint64_t a1@<X8>)
{
  sub_1ADEDA0C8(v4);
  *&v3[87] = v4[5];
  *&v3[71] = v4[4];
  *&v3[119] = v4[7];
  *&v3[103] = v4[6];
  *&v3[55] = v4[3];
  *&v3[39] = v4[2];
  *&v3[23] = v4[1];
  *&v3[7] = v4[0];
  *(a1 + 81) = *&v3[80];
  *(a1 + 97) = *&v3[96];
  *(a1 + 113) = *&v3[112];
  *(a1 + 17) = *&v3[16];
  result = *&v3[32];
  *(a1 + 33) = *&v3[32];
  *(a1 + 49) = *&v3[48];
  *(a1 + 65) = *&v3[64];
  *a1 = 0;
  *(a1 + 128) = *&v3[127];
  *(a1 + 1) = *v3;
  return result;
}

void (*sub_1ADED3F04(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADED4024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEDC4D4(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADED4094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADED9D78(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADED40D0(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED4158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADED9D78(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADED41A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED4228(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1ADEDB454(v11, v13) & 1;
}

void sub_1ADED42C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    v9 = sub_1AE23C38C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (v9 <= 2)
    {
      if (v9 == 1)
      {
        sub_1ADED43CC(v5, a1, a2, a3);
      }

      else if (v9 == 2)
      {
        sub_1ADED45F0(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(v9)
      {
        case 3:
          sub_1ADED4A58(v5, a1, a2, a3);
          break;
        case 4:
          sub_1ADED4D5C(v5, a1, a2, a3);
          break;
        case 5:
          sub_1ADED5060(v5, a1, a2, a3);
          break;
      }
    }
  }
}

uint64_t sub_1ADED43CC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[5];
  v7 = a1[7];
  v54 = a1[6];
  v55 = v7;
  v8 = a1[1];
  v9 = a1[3];
  v50 = a1[2];
  v51 = v9;
  v10 = a1[3];
  v11 = a1[5];
  v52 = a1[4];
  v53 = v11;
  v12 = a1[1];
  v48 = *a1;
  v49 = v12;
  v13 = a1[7];
  v63 = v54;
  v64 = v13;
  v59 = v50;
  v60 = v10;
  v61 = v52;
  v62 = v6;
  v47 = 1;
  v56 = *(a1 + 128);
  v65 = *(a1 + 128);
  v57 = v48;
  v58 = v8;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v57);
  v17 = enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm;
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v44 = v63;
    v45 = v64;
    v46 = v65;
    v40 = v59;
    v41 = v60;
    v42 = v61;
    v43 = v62;
    v38 = v57;
    v39 = v58;
    enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = sub_1ADEDC3FC(&v38);
    if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm == 4)
    {
      v47 = 0;
      v35 = v54;
      v36 = v55;
      v37 = v56;
      v31 = v50;
      v32 = v51;
      v33 = v52;
      v34 = v53;
      v29 = v48;
      v30 = v49;
      enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = sub_1ADEDC5CC(&v29, v27);
    }
  }

  sub_1ADED9958(enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm, v15, v16);
  result = sub_1AE23C4FC();
  if (!v4 && (v47 & 1) == 0)
  {
    if (v17 != 1)
    {
      sub_1AE23C39C();
    }

    sub_1ADEDC57C(v27);
    v35 = v27[6];
    v36 = v27[7];
    v37 = v28;
    v31 = v27[2];
    v32 = v27[3];
    v33 = v27[4];
    v34 = v27[5];
    v29 = v27[0];
    v30 = v27[1];
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v29);
    v19 = a1[7];
    v44 = a1[6];
    v45 = v19;
    v46 = *(a1 + 128);
    v20 = a1[3];
    v40 = a1[2];
    v41 = v20;
    v21 = a1[5];
    v42 = a1[4];
    v43 = v21;
    v22 = a1[1];
    v38 = *a1;
    v39 = v22;
    v23 = v34;
    a1[4] = v33;
    a1[5] = v23;
    v24 = v36;
    a1[6] = v35;
    a1[7] = v24;
    *(a1 + 128) = v37;
    v25 = v32;
    a1[2] = v31;
    a1[3] = v25;
    v26 = v30;
    *a1 = v29;
    a1[1] = v26;
    return sub_1ADEDC59C(&v38);
  }

  return result;
}

uint64_t sub_1ADED45F0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ADEDA0C8(v90);
  v86 = v90[4];
  v87 = v90[5];
  v88 = v90[6];
  v89 = v90[7];
  v82 = v90[0];
  v83 = v90[1];
  v84 = v90[2];
  v85 = v90[3];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v94 = a1[3];
  v93 = v8;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a1;
  v91 = v6;
  v92 = v9;
  v13 = a1[5];
  v12 = a1[6];
  v14 = v12;
  v98 = a1[7];
  v97 = v12;
  v15 = a1[3];
  v16 = a1[5];
  v95 = a1[4];
  v96 = v16;
  v17 = a1[7];
  v106 = v14;
  v107 = v17;
  v102 = v10;
  v103 = v15;
  v99 = *(a1 + 128);
  v108 = *(a1 + 128);
  v104 = v95;
  v105 = v13;
  v100 = v11;
  v101 = v7;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v100);
  v21 = enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm;
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v63 = v106;
    v64 = v107;
    v65 = v108;
    v59 = v102;
    v60 = v103;
    v61 = v104;
    v62 = v105;
    v57 = v100;
    v58 = v101;
    enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = sub_1ADEDC3FC(&v57);
    if (!enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm)
    {
      v22 = sub_1ADE1F544(&v57);
      v78 = v86;
      v79 = v87;
      v80 = v88;
      v81 = v89;
      v74 = v82;
      v75 = v83;
      v76 = v84;
      v77 = v85;
      v50 = v93;
      v51 = v94;
      v48 = v91;
      v49 = v92;
      v56 = v99;
      v54 = v97;
      v55 = v98;
      v52 = v95;
      v53 = v96;
      sub_1ADEDC5CC(&v48, &v39);
      sub_1ADDCEDE0(&v74, &qword_1EB5BB400, &qword_1AE246370);
      v23 = v22[3];
      v25 = *v22;
      v24 = v22[1];
      v41 = v22[2];
      v42 = v23;
      v39 = v25;
      v40 = v24;
      v26 = v22[7];
      v28 = v22[4];
      v27 = v22[5];
      v45 = v22[6];
      v46 = v26;
      v43 = v28;
      v44 = v27;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v39);
      v86 = v43;
      v87 = v44;
      v88 = v45;
      v89 = v46;
      v82 = v39;
      v83 = v40;
      v84 = v41;
      v85 = v42;
    }
  }

  sub_1ADE73BC8(enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm, v19, v20);
  sub_1AE23C4FC();
  if (v4 || (v70 = v86, v71 = v87, v72 = v88, v73 = v89, v66 = v82, v67 = v83, v68 = v84, v69 = v85, v76 = v84, v77 = v85, v74 = v82, v75 = v83, v80 = v88, v81 = v89, v78 = v86, v79 = v87, sub_1ADEDA0E0(&v74) == 1))
  {
    v61 = v86;
    v62 = v87;
    v63 = v88;
    v64 = v89;
    v57 = v82;
    v58 = v83;
    v59 = v84;
    v60 = v85;
    return sub_1ADDCEDE0(&v57, &qword_1EB5BB400, &qword_1AE246370);
  }

  else
  {
    v61 = v70;
    v62 = v71;
    v63 = v72;
    v64 = v73;
    v57 = v66;
    v58 = v67;
    v59 = v68;
    v60 = v69;
    sub_1ADE73B00(&v57, &v48);
    if (v21 != 1)
    {
      sub_1AE23C39C();
    }

    v38[4] = v86;
    v38[5] = v87;
    v38[6] = v88;
    v38[7] = v89;
    v38[0] = v82;
    v38[1] = v83;
    v38[2] = v84;
    v38[3] = v85;
    sub_1ADDCEDE0(v38, &qword_1EB5BB400, &qword_1AE246370);
    v43 = v78;
    v44 = v79;
    v45 = v80;
    v46 = v81;
    v39 = v74;
    v40 = v75;
    v41 = v76;
    v42 = v77;
    sub_1ADE1F554(&v39);
    v54 = v45;
    v55 = v46;
    v56 = v47;
    v50 = v41;
    v51 = v42;
    v52 = v43;
    v53 = v44;
    v48 = v39;
    v49 = v40;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v48);
    v30 = a1[7];
    v63 = a1[6];
    v64 = v30;
    v65 = *(a1 + 128);
    v31 = a1[3];
    v59 = a1[2];
    v60 = v31;
    v32 = a1[5];
    v61 = a1[4];
    v62 = v32;
    v33 = a1[1];
    v57 = *a1;
    v58 = v33;
    v34 = v53;
    a1[4] = v52;
    a1[5] = v34;
    v35 = v55;
    a1[6] = v54;
    a1[7] = v35;
    *(a1 + 128) = v56;
    v36 = v51;
    a1[2] = v50;
    a1[3] = v36;
    v37 = v49;
    *a1 = v48;
    a1[1] = v37;
    return sub_1ADEDC59C(&v57);
  }
}

uint64_t sub_1ADED4A58(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v63, 0, sizeof(v63));
  v6 = a1[5];
  v7 = a1[7];
  v70 = a1[6];
  v71 = v7;
  v8 = a1[1];
  v9 = a1[3];
  v66 = a1[2];
  v67 = v9;
  v10 = a1[3];
  v11 = a1[5];
  v68 = a1[4];
  v69 = v11;
  v12 = a1[1];
  v64 = *a1;
  v65 = v12;
  v13 = a1[7];
  v79 = v70;
  v80 = v13;
  v75 = v66;
  v76 = v10;
  v77 = v68;
  v78 = v6;
  v72 = *(a1 + 128);
  v81 = *(a1 + 128);
  v73 = v64;
  v74 = v8;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v73);
  v82 = enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm;
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v60 = v79;
    v61 = v80;
    v62 = v81;
    v56 = v75;
    v57 = v76;
    v58 = v77;
    v59 = v78;
    v54 = v73;
    v55 = v74;
    enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = sub_1ADEDC3FC(&v54);
    if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm == 1)
    {
      v17 = sub_1ADE1F544(&v54);
      v18 = *v17;
      v34 = *(v17 + 24);
      v35 = *(v17 + 8);
      v47 = v66;
      v48 = v67;
      v53 = v72;
      v51 = v70;
      v52 = v71;
      v49 = v68;
      v50 = v69;
      v45 = v64;
      v46 = v65;
      sub_1ADEDC5CC(&v45, &v36);
      enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = sub_1ADEDC604(0, 0, 0, 0);
      v63[0] = v18;
      *&v63[3] = v34;
      *&v63[1] = v35;
    }
  }

  sub_1ADED97F8(enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm, v15, v16);
  sub_1AE23C4FC();
  v20 = v63[0];
  v19 = v63[1];
  v22 = v63[2];
  v21 = v63[3];
  v23 = v63[4];
  if (v4)
  {
    v24 = v63[0];
    return sub_1ADEDC604(v24, v63[1], v63[2], v63[3]);
  }

  if (!v63[0])
  {
    v24 = 0;
    return sub_1ADEDC604(v24, v63[1], v63[2], v63[3]);
  }

  sub_1ADE73C1C(v19, v22, v21, v23);
  if (v82 != 1)
  {
    sub_1AE23C39C();
  }

  sub_1ADEDC604(v63[0], v63[1], v63[2], v63[3]);
  *&v36 = v20;
  *(&v36 + 1) = v19;
  *&v37 = v22;
  *(&v37 + 1) = v21;
  *&v38 = v23;
  sub_1ADE1F568(&v36);
  v51 = v42;
  v52 = v43;
  v53 = v44;
  v47 = v38;
  v48 = v39;
  v49 = v40;
  v50 = v41;
  v45 = v36;
  v46 = v37;
  Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v45);
  v26 = a1[7];
  v60 = a1[6];
  v61 = v26;
  v62 = *(a1 + 128);
  v27 = a1[3];
  v56 = a1[2];
  v57 = v27;
  v28 = a1[5];
  v58 = a1[4];
  v59 = v28;
  v29 = a1[1];
  v54 = *a1;
  v55 = v29;
  v30 = v50;
  a1[4] = v49;
  a1[5] = v30;
  v31 = v52;
  a1[6] = v51;
  a1[7] = v31;
  *(a1 + 128) = v53;
  v32 = v48;
  a1[2] = v47;
  a1[3] = v32;
  v33 = v46;
  *a1 = v45;
  a1[1] = v33;
  return sub_1ADEDC59C(&v54);
}

uint64_t sub_1ADED4D5C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v63, 0, sizeof(v63));
  v6 = a1[5];
  v7 = a1[7];
  v70 = a1[6];
  v71 = v7;
  v8 = a1[1];
  v9 = a1[3];
  v66 = a1[2];
  v67 = v9;
  v10 = a1[3];
  v11 = a1[5];
  v68 = a1[4];
  v69 = v11;
  v12 = a1[1];
  v64 = *a1;
  v65 = v12;
  v13 = a1[7];
  v79 = v70;
  v80 = v13;
  v75 = v66;
  v76 = v10;
  v77 = v68;
  v78 = v6;
  v72 = *(a1 + 128);
  v81 = *(a1 + 128);
  v73 = v64;
  v74 = v8;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v73);
  v82 = enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm;
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v60 = v79;
    v61 = v80;
    v62 = v81;
    v56 = v75;
    v57 = v76;
    v58 = v77;
    v59 = v78;
    v54 = v73;
    v55 = v74;
    enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = sub_1ADEDC3FC(&v54);
    if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm == 2)
    {
      v17 = sub_1ADE1F544(&v54);
      v18 = *v17;
      v34 = *(v17 + 24);
      v35 = *(v17 + 8);
      v47 = v66;
      v48 = v67;
      v53 = v72;
      v51 = v70;
      v52 = v71;
      v49 = v68;
      v50 = v69;
      v45 = v64;
      v46 = v65;
      sub_1ADEDC5CC(&v45, &v36);
      enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = sub_1ADEDC604(0, 0, 0, 0);
      v63[0] = v18;
      *&v63[3] = v34;
      *&v63[1] = v35;
    }
  }

  sub_1ADED97F8(enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm, v15, v16);
  sub_1AE23C4FC();
  v20 = v63[0];
  v19 = v63[1];
  v22 = v63[2];
  v21 = v63[3];
  v23 = v63[4];
  if (v4)
  {
    v24 = v63[0];
    return sub_1ADEDC604(v24, v63[1], v63[2], v63[3]);
  }

  if (!v63[0])
  {
    v24 = 0;
    return sub_1ADEDC604(v24, v63[1], v63[2], v63[3]);
  }

  sub_1ADE73C1C(v19, v22, v21, v23);
  if (v82 != 1)
  {
    sub_1AE23C39C();
  }

  sub_1ADEDC604(v63[0], v63[1], v63[2], v63[3]);
  *&v36 = v20;
  *(&v36 + 1) = v19;
  *&v37 = v22;
  *(&v37 + 1) = v21;
  *&v38 = v23;
  sub_1ADE1F580(&v36);
  v51 = v42;
  v52 = v43;
  v53 = v44;
  v47 = v38;
  v48 = v39;
  v49 = v40;
  v50 = v41;
  v45 = v36;
  v46 = v37;
  Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v45);
  v26 = a1[7];
  v60 = a1[6];
  v61 = v26;
  v62 = *(a1 + 128);
  v27 = a1[3];
  v56 = a1[2];
  v57 = v27;
  v28 = a1[5];
  v58 = a1[4];
  v59 = v28;
  v29 = a1[1];
  v54 = *a1;
  v55 = v29;
  v30 = v50;
  a1[4] = v49;
  a1[5] = v30;
  v31 = v52;
  a1[6] = v51;
  a1[7] = v31;
  *(a1 + 128) = v53;
  v32 = v48;
  a1[2] = v47;
  a1[3] = v32;
  v33 = v46;
  *a1 = v45;
  a1[1] = v33;
  return sub_1ADEDC59C(&v54);
}

void sub_1ADED5060(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[6];
  v7 = a1[4];
  v57 = a1[5];
  v58 = v6;
  v8 = a1[6];
  v59 = a1[7];
  v9 = a1[2];
  v10 = *a1;
  v53 = a1[1];
  v54 = v9;
  v11 = a1[2];
  v12 = a1[4];
  v55 = a1[3];
  v56 = v12;
  v13 = *a1;
  v51 = xmmword_1AE2427C0;
  v52 = v13;
  v14 = a1[7];
  v67 = v8;
  v68 = v14;
  v63 = v11;
  v64 = v55;
  v65 = v7;
  v66 = v57;
  v60 = *(a1 + 128);
  v69 = *(a1 + 128);
  v61 = v10;
  v62 = v53;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v61);
  v18 = enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm;
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v48 = v67;
    v49 = v68;
    v50 = v69;
    v44 = v63;
    v45 = v64;
    v46 = v65;
    v47 = v66;
    v42 = v61;
    v43 = v62;
    enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = sub_1ADEDC3FC(&v42);
    if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm == 3)
    {
      v19 = sub_1ADE1F544(&v42);
      v20 = *v19;
      v21 = v19[1];
      v39 = v58;
      v40 = v59;
      v41 = v60;
      v35 = v54;
      v36 = v55;
      v37 = v56;
      v38 = v57;
      v33 = v52;
      v34 = v53;
      sub_1ADEDC5CC(&v33, v31);
      sub_1ADDE158C(0, 0xF000000000000000);
      *&v51 = v20;
      *(&v51 + 1) = v21;
    }
  }

  sub_1ADED9698(enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm, v16, v17);
  sub_1AE23C4FC();
  if (v4 || *(&v51 + 1) >> 60 == 15)
  {
    sub_1ADDE158C(v51, *(&v51 + 1));
  }

  else
  {
    v22 = v51;
    sub_1ADDD86D8(v51, *(&v51 + 1));
    if (v18 != 1)
    {
      sub_1AE23C39C();
    }

    sub_1ADDE158C(v51, *(&v51 + 1));
    v31[0] = v22;
    sub_1ADE1F598(v31);
    v39 = v31[6];
    v40 = v31[7];
    v41 = v32;
    v35 = v31[2];
    v36 = v31[3];
    v37 = v31[4];
    v38 = v31[5];
    v33 = v31[0];
    v34 = v31[1];
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v33);
    v23 = a1[7];
    v48 = a1[6];
    v49 = v23;
    v50 = *(a1 + 128);
    v24 = a1[3];
    v44 = a1[2];
    v45 = v24;
    v25 = a1[5];
    v46 = a1[4];
    v47 = v25;
    v26 = a1[1];
    v42 = *a1;
    v43 = v26;
    v27 = v38;
    a1[4] = v37;
    a1[5] = v27;
    v28 = v40;
    a1[6] = v39;
    a1[7] = v28;
    *(a1 + 128) = v41;
    v29 = v36;
    a1[2] = v35;
    a1[3] = v29;
    v30 = v34;
    *a1 = v33;
    a1[1] = v30;
    sub_1ADEDC59C(&v42);
  }
}

uint64_t sub_1ADED52E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 112);
  v24 = *(v3 + 96);
  v25 = v12;
  v26 = *(v3 + 128);
  v13 = *(v3 + 48);
  v20 = *(v3 + 32);
  v21 = v13;
  v14 = *(v3 + 80);
  v22 = *(v3 + 64);
  v23 = v14;
  v15 = *(v3 + 16);
  v18 = *v3;
  v19 = v15;
  if (get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v18) == 1)
  {
    goto LABEL_13;
  }

  v27[6] = v24;
  v27[7] = v25;
  v28 = v26;
  v27[2] = v20;
  v27[3] = v21;
  v27[4] = v22;
  v27[5] = v23;
  v27[0] = v18;
  v27[1] = v19;
  v16 = sub_1ADEDC3FC(v27);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      sub_1ADE1F544(v27);
      result = sub_1ADED74E0(v3, a1, a2, a3, sub_1ADEDC3FC, sub_1ADEDD174, 4);
      if (v4)
      {
        return result;
      }
    }

    else if (v16 == 3)
    {
      sub_1ADE1F544(v27);
      result = sub_1ADED56AC(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      result = sub_1ADED55D0(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    goto LABEL_13;
  }

  if (!v16)
  {
    sub_1ADE1F544(v27);
    result = sub_1ADED727C(v3, a1, a2, a3, sub_1ADEDC3FC, sub_1ADEDD174, 2);
    if (v4)
    {
      return result;
    }

    goto LABEL_13;
  }

  sub_1ADE1F544(v27);
  result = sub_1ADED73C0(v3, a1, a2, a3, sub_1ADEDC3FC, sub_1ADEDD174, 3);
  if (!v4)
  {
LABEL_13:
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1ADED55D0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[7];
  v17 = a1[6];
  v18 = v4;
  v19 = *(a1 + 128);
  v5 = a1[3];
  v13 = a1[2];
  v14 = v5;
  v6 = a1[5];
  v15 = a1[4];
  v16 = v6;
  v7 = a1[1];
  v11 = *a1;
  v12 = v7;
  result = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v11);
  if (result == 1 || (v20[6] = v17, v20[7] = v18, v21 = v19, v20[2] = v13, v20[3] = v14, v20[4] = v15, v20[5] = v16, v20[0] = v11, v20[1] = v12, result = sub_1ADEDC3FC(v20), result != 4))
  {
    __break(1u);
  }

  else
  {
    sub_1ADED9958(result, v9, v10);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED56AC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[7];
  v18 = a1[6];
  v19 = v4;
  v20 = *(a1 + 128);
  v5 = a1[3];
  v14 = a1[2];
  v15 = v5;
  v6 = a1[5];
  v16 = a1[4];
  v17 = v6;
  v7 = a1[1];
  v12 = *a1;
  v13 = v7;
  result = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v12);
  if (result == 1 || (v21[6] = v18, v21[7] = v19, v22 = v20, v21[2] = v14, v21[3] = v15, v21[4] = v16, v21[5] = v17, v21[0] = v12, v21[1] = v13, result = sub_1ADEDC3FC(v21), result != 3))
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1ADE1F544(v21);
    v23 = *v9;
    sub_1ADED9698(v9, v10, v11);
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1ADED57BC(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADED58DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEDC528(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADED594C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADED9C18(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADED5988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADED9C18(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADED59D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1ADEDAC10(v11, v13) & 1;
}

uint64_t sub_1ADED5A70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AE2427F0;
  v10 = v9 + v8;
  v11 = v9 + v8 + v6[14];
  *(v9 + v8) = 1;
  *v11 = "version";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v13 = sub_1AE23C67C();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = "referencesSince";
  *(v15 + 8) = 15;
  *(v15 + 16) = 2;
  v14();
  v16 = (v10 + 2 * v7);
  v17 = v16 + v6[14];
  *v16 = 3;
  *v17 = "containsReferences";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v14();
  v18 = (v10 + 3 * v7);
  v19 = v18 + v6[14];
  *v18 = 4;
  *v19 = "references";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v14();
  v20 = v10 + 4 * v7 + v6[14];
  *(v10 + 4 * v7) = 5;
  *v20 = a3;
  *(v20 + 8) = a4;
  *(v20 + 16) = 2;
  v14();
  return sub_1AE23C68C();
}

void sub_1ADED5CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    v9 = sub_1AE23C38C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (v9 <= 2)
    {
      if (v9 == 1)
      {
        sub_1ADED5E04(v5, a1, a2, a3);
      }

      else if (v9 == 2)
      {
        sub_1ADED626C(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(v9)
      {
        case 3:
          sub_1ADED6570(v5, a1, a2, a3);
          break;
        case 4:
          sub_1ADED6874(v5, a1, a2, a3);
          break;
        case 5:
          sub_1ADED6CE0(v5, a1, a2, a3);
          break;
      }
    }
  }
}

uint64_t sub_1ADED5E04(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ADEDA0C8(v90);
  v86 = v90[4];
  v87 = v90[5];
  v88 = v90[6];
  v89 = v90[7];
  v82 = v90[0];
  v83 = v90[1];
  v84 = v90[2];
  v85 = v90[3];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v94 = a1[3];
  v93 = v8;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a1;
  v91 = v6;
  v92 = v9;
  v13 = a1[5];
  v12 = a1[6];
  v14 = v12;
  v98 = a1[7];
  v97 = v12;
  v15 = a1[3];
  v16 = a1[5];
  v95 = a1[4];
  v96 = v16;
  v17 = a1[7];
  v106 = v14;
  v107 = v17;
  v102 = v10;
  v103 = v15;
  v99 = *(a1 + 128);
  v108 = *(a1 + 128);
  v104 = v95;
  v105 = v13;
  v100 = v11;
  v101 = v7;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v100);
  v21 = enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm;
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v63 = v106;
    v64 = v107;
    v65 = v108;
    v59 = v102;
    v60 = v103;
    v61 = v104;
    v62 = v105;
    v57 = v100;
    v58 = v101;
    enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = sub_1ADEDC4B4(&v57);
    if (!enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm)
    {
      v22 = sub_1ADE1F544(&v57);
      v78 = v86;
      v79 = v87;
      v80 = v88;
      v81 = v89;
      v74 = v82;
      v75 = v83;
      v76 = v84;
      v77 = v85;
      v50 = v93;
      v51 = v94;
      v48 = v91;
      v49 = v92;
      v56 = v99;
      v54 = v97;
      v55 = v98;
      v52 = v95;
      v53 = v96;
      sub_1ADEDC6E8(&v48, &v39);
      sub_1ADDCEDE0(&v74, &qword_1EB5BB400, &qword_1AE246370);
      v23 = v22[3];
      v25 = *v22;
      v24 = v22[1];
      v41 = v22[2];
      v42 = v23;
      v39 = v25;
      v40 = v24;
      v26 = v22[7];
      v28 = v22[4];
      v27 = v22[5];
      v45 = v22[6];
      v46 = v26;
      v43 = v28;
      v44 = v27;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v39);
      v86 = v43;
      v87 = v44;
      v88 = v45;
      v89 = v46;
      v82 = v39;
      v83 = v40;
      v84 = v41;
      v85 = v42;
    }
  }

  sub_1ADE73BC8(enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm, v19, v20);
  sub_1AE23C4FC();
  if (v4 || (v70 = v86, v71 = v87, v72 = v88, v73 = v89, v66 = v82, v67 = v83, v68 = v84, v69 = v85, v76 = v84, v77 = v85, v74 = v82, v75 = v83, v80 = v88, v81 = v89, v78 = v86, v79 = v87, sub_1ADEDA0E0(&v74) == 1))
  {
    v61 = v86;
    v62 = v87;
    v63 = v88;
    v64 = v89;
    v57 = v82;
    v58 = v83;
    v59 = v84;
    v60 = v85;
    return sub_1ADDCEDE0(&v57, &qword_1EB5BB400, &qword_1AE246370);
  }

  else
  {
    v61 = v70;
    v62 = v71;
    v63 = v72;
    v64 = v73;
    v57 = v66;
    v58 = v67;
    v59 = v68;
    v60 = v69;
    sub_1ADE73B00(&v57, &v48);
    if (v21 != 1)
    {
      sub_1AE23C39C();
    }

    v38[4] = v86;
    v38[5] = v87;
    v38[6] = v88;
    v38[7] = v89;
    v38[0] = v82;
    v38[1] = v83;
    v38[2] = v84;
    v38[3] = v85;
    sub_1ADDCEDE0(v38, &qword_1EB5BB400, &qword_1AE246370);
    v43 = v78;
    v44 = v79;
    v45 = v80;
    v46 = v81;
    v39 = v74;
    v40 = v75;
    v41 = v76;
    v42 = v77;
    sub_1ADE1F554(&v39);
    v54 = v45;
    v55 = v46;
    v56 = v47;
    v50 = v41;
    v51 = v42;
    v52 = v43;
    v53 = v44;
    v48 = v39;
    v49 = v40;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v48);
    v30 = a1[7];
    v63 = a1[6];
    v64 = v30;
    v65 = *(a1 + 128);
    v31 = a1[3];
    v59 = a1[2];
    v60 = v31;
    v32 = a1[5];
    v61 = a1[4];
    v62 = v32;
    v33 = a1[1];
    v57 = *a1;
    v58 = v33;
    v34 = v53;
    a1[4] = v52;
    a1[5] = v34;
    v35 = v55;
    a1[6] = v54;
    a1[7] = v35;
    *(a1 + 128) = v56;
    v36 = v51;
    a1[2] = v50;
    a1[3] = v36;
    v37 = v49;
    *a1 = v48;
    a1[1] = v37;
    return sub_1ADEDC6B8(&v57);
  }
}

uint64_t sub_1ADED626C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v63, 0, sizeof(v63));
  v6 = a1[5];
  v7 = a1[7];
  v70 = a1[6];
  v71 = v7;
  v8 = a1[1];
  v9 = a1[3];
  v66 = a1[2];
  v67 = v9;
  v10 = a1[3];
  v11 = a1[5];
  v68 = a1[4];
  v69 = v11;
  v12 = a1[1];
  v64 = *a1;
  v65 = v12;
  v13 = a1[7];
  v79 = v70;
  v80 = v13;
  v75 = v66;
  v76 = v10;
  v77 = v68;
  v78 = v6;
  v72 = *(a1 + 128);
  v81 = *(a1 + 128);
  v73 = v64;
  v74 = v8;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v73);
  v82 = enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm;
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v60 = v79;
    v61 = v80;
    v62 = v81;
    v56 = v75;
    v57 = v76;
    v58 = v77;
    v59 = v78;
    v54 = v73;
    v55 = v74;
    enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = sub_1ADEDC4B4(&v54);
    if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm == 1)
    {
      v17 = sub_1ADE1F544(&v54);
      v18 = *v17;
      v34 = *(v17 + 24);
      v35 = *(v17 + 8);
      v47 = v66;
      v48 = v67;
      v53 = v72;
      v51 = v70;
      v52 = v71;
      v49 = v68;
      v50 = v69;
      v45 = v64;
      v46 = v65;
      sub_1ADEDC6E8(&v45, &v36);
      enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = sub_1ADEDC604(0, 0, 0, 0);
      v63[0] = v18;
      *&v63[3] = v34;
      *&v63[1] = v35;
    }
  }

  sub_1ADED97F8(enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm, v15, v16);
  sub_1AE23C4FC();
  v20 = v63[0];
  v19 = v63[1];
  v22 = v63[2];
  v21 = v63[3];
  v23 = v63[4];
  if (v4)
  {
    v24 = v63[0];
    return sub_1ADEDC604(v24, v63[1], v63[2], v63[3]);
  }

  if (!v63[0])
  {
    v24 = 0;
    return sub_1ADEDC604(v24, v63[1], v63[2], v63[3]);
  }

  sub_1ADE73C1C(v19, v22, v21, v23);
  if (v82 != 1)
  {
    sub_1AE23C39C();
  }

  sub_1ADEDC604(v63[0], v63[1], v63[2], v63[3]);
  *&v36 = v20;
  *(&v36 + 1) = v19;
  *&v37 = v22;
  *(&v37 + 1) = v21;
  *&v38 = v23;
  sub_1ADE1F568(&v36);
  v51 = v42;
  v52 = v43;
  v53 = v44;
  v47 = v38;
  v48 = v39;
  v49 = v40;
  v50 = v41;
  v45 = v36;
  v46 = v37;
  Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v45);
  v26 = a1[7];
  v60 = a1[6];
  v61 = v26;
  v62 = *(a1 + 128);
  v27 = a1[3];
  v56 = a1[2];
  v57 = v27;
  v28 = a1[5];
  v58 = a1[4];
  v59 = v28;
  v29 = a1[1];
  v54 = *a1;
  v55 = v29;
  v30 = v50;
  a1[4] = v49;
  a1[5] = v30;
  v31 = v52;
  a1[6] = v51;
  a1[7] = v31;
  *(a1 + 128) = v53;
  v32 = v48;
  a1[2] = v47;
  a1[3] = v32;
  v33 = v46;
  *a1 = v45;
  a1[1] = v33;
  return sub_1ADEDC6B8(&v54);
}

uint64_t sub_1ADED6570(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v63, 0, sizeof(v63));
  v6 = a1[5];
  v7 = a1[7];
  v70 = a1[6];
  v71 = v7;
  v8 = a1[1];
  v9 = a1[3];
  v66 = a1[2];
  v67 = v9;
  v10 = a1[3];
  v11 = a1[5];
  v68 = a1[4];
  v69 = v11;
  v12 = a1[1];
  v64 = *a1;
  v65 = v12;
  v13 = a1[7];
  v79 = v70;
  v80 = v13;
  v75 = v66;
  v76 = v10;
  v77 = v68;
  v78 = v6;
  v72 = *(a1 + 128);
  v81 = *(a1 + 128);
  v73 = v64;
  v74 = v8;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v73);
  v82 = enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm;
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v60 = v79;
    v61 = v80;
    v62 = v81;
    v56 = v75;
    v57 = v76;
    v58 = v77;
    v59 = v78;
    v54 = v73;
    v55 = v74;
    enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = sub_1ADEDC4B4(&v54);
    if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm == 2)
    {
      v17 = sub_1ADE1F544(&v54);
      v18 = *v17;
      v34 = *(v17 + 24);
      v35 = *(v17 + 8);
      v47 = v66;
      v48 = v67;
      v53 = v72;
      v51 = v70;
      v52 = v71;
      v49 = v68;
      v50 = v69;
      v45 = v64;
      v46 = v65;
      sub_1ADEDC6E8(&v45, &v36);
      enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = sub_1ADEDC604(0, 0, 0, 0);
      v63[0] = v18;
      *&v63[3] = v34;
      *&v63[1] = v35;
    }
  }

  sub_1ADED97F8(enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm, v15, v16);
  sub_1AE23C4FC();
  v20 = v63[0];
  v19 = v63[1];
  v22 = v63[2];
  v21 = v63[3];
  v23 = v63[4];
  if (v4)
  {
    v24 = v63[0];
    return sub_1ADEDC604(v24, v63[1], v63[2], v63[3]);
  }

  if (!v63[0])
  {
    v24 = 0;
    return sub_1ADEDC604(v24, v63[1], v63[2], v63[3]);
  }

  sub_1ADE73C1C(v19, v22, v21, v23);
  if (v82 != 1)
  {
    sub_1AE23C39C();
  }

  sub_1ADEDC604(v63[0], v63[1], v63[2], v63[3]);
  *&v36 = v20;
  *(&v36 + 1) = v19;
  *&v37 = v22;
  *(&v37 + 1) = v21;
  *&v38 = v23;
  sub_1ADE1F580(&v36);
  v51 = v42;
  v52 = v43;
  v53 = v44;
  v47 = v38;
  v48 = v39;
  v49 = v40;
  v50 = v41;
  v45 = v36;
  v46 = v37;
  Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v45);
  v26 = a1[7];
  v60 = a1[6];
  v61 = v26;
  v62 = *(a1 + 128);
  v27 = a1[3];
  v56 = a1[2];
  v57 = v27;
  v28 = a1[5];
  v58 = a1[4];
  v59 = v28;
  v29 = a1[1];
  v54 = *a1;
  v55 = v29;
  v30 = v50;
  a1[4] = v49;
  a1[5] = v30;
  v31 = v52;
  a1[6] = v51;
  a1[7] = v31;
  *(a1 + 128) = v53;
  v32 = v48;
  a1[2] = v47;
  a1[3] = v32;
  v33 = v46;
  *a1 = v45;
  a1[1] = v33;
  return sub_1ADEDC6B8(&v54);
}

uint64_t sub_1ADED6874(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ADEDA0C8(v90);
  v86 = v90[4];
  v87 = v90[5];
  v88 = v90[6];
  v89 = v90[7];
  v82 = v90[0];
  v83 = v90[1];
  v84 = v90[2];
  v85 = v90[3];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v94 = a1[3];
  v93 = v8;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a1;
  v91 = v6;
  v92 = v9;
  v13 = a1[5];
  v12 = a1[6];
  v14 = v12;
  v98 = a1[7];
  v97 = v12;
  v15 = a1[3];
  v16 = a1[5];
  v95 = a1[4];
  v96 = v16;
  v17 = a1[7];
  v106 = v14;
  v107 = v17;
  v102 = v10;
  v103 = v15;
  v99 = *(a1 + 128);
  v108 = *(a1 + 128);
  v104 = v95;
  v105 = v13;
  v100 = v11;
  v101 = v7;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v100);
  v21 = enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm;
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v63 = v106;
    v64 = v107;
    v65 = v108;
    v59 = v102;
    v60 = v103;
    v61 = v104;
    v62 = v105;
    v57 = v100;
    v58 = v101;
    enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = sub_1ADEDC4B4(&v57);
    if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm == 3)
    {
      v22 = sub_1ADE1F544(&v57);
      v78 = v86;
      v79 = v87;
      v80 = v88;
      v81 = v89;
      v74 = v82;
      v75 = v83;
      v76 = v84;
      v77 = v85;
      v50 = v93;
      v51 = v94;
      v48 = v91;
      v49 = v92;
      v56 = v99;
      v54 = v97;
      v55 = v98;
      v52 = v95;
      v53 = v96;
      sub_1ADEDC6E8(&v48, &v39);
      sub_1ADDCEDE0(&v74, &qword_1EB5BB400, &qword_1AE246370);
      v23 = v22[3];
      v25 = *v22;
      v24 = v22[1];
      v41 = v22[2];
      v42 = v23;
      v39 = v25;
      v40 = v24;
      v26 = v22[7];
      v28 = v22[4];
      v27 = v22[5];
      v45 = v22[6];
      v46 = v26;
      v43 = v28;
      v44 = v27;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v39);
      v86 = v43;
      v87 = v44;
      v88 = v45;
      v89 = v46;
      v82 = v39;
      v83 = v40;
      v84 = v41;
      v85 = v42;
    }
  }

  sub_1ADE73BC8(enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm, v19, v20);
  sub_1AE23C4FC();
  if (v4 || (v70 = v86, v71 = v87, v72 = v88, v73 = v89, v66 = v82, v67 = v83, v68 = v84, v69 = v85, v76 = v84, v77 = v85, v74 = v82, v75 = v83, v80 = v88, v81 = v89, v78 = v86, v79 = v87, sub_1ADEDA0E0(&v74) == 1))
  {
    v61 = v86;
    v62 = v87;
    v63 = v88;
    v64 = v89;
    v57 = v82;
    v58 = v83;
    v59 = v84;
    v60 = v85;
    return sub_1ADDCEDE0(&v57, &qword_1EB5BB400, &qword_1AE246370);
  }

  else
  {
    v61 = v70;
    v62 = v71;
    v63 = v72;
    v64 = v73;
    v57 = v66;
    v58 = v67;
    v59 = v68;
    v60 = v69;
    sub_1ADE73B00(&v57, &v48);
    if (v21 != 1)
    {
      sub_1AE23C39C();
    }

    v38[4] = v86;
    v38[5] = v87;
    v38[6] = v88;
    v38[7] = v89;
    v38[0] = v82;
    v38[1] = v83;
    v38[2] = v84;
    v38[3] = v85;
    sub_1ADDCEDE0(v38, &qword_1EB5BB400, &qword_1AE246370);
    v43 = v78;
    v44 = v79;
    v45 = v80;
    v46 = v81;
    v39 = v74;
    v40 = v75;
    v41 = v76;
    v42 = v77;
    sub_1ADE1F598(&v39);
    v54 = v45;
    v55 = v46;
    v56 = v47;
    v50 = v41;
    v51 = v42;
    v52 = v43;
    v53 = v44;
    v48 = v39;
    v49 = v40;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v48);
    v30 = a1[7];
    v63 = a1[6];
    v64 = v30;
    v65 = *(a1 + 128);
    v31 = a1[3];
    v59 = a1[2];
    v60 = v31;
    v32 = a1[5];
    v61 = a1[4];
    v62 = v32;
    v33 = a1[1];
    v57 = *a1;
    v58 = v33;
    v34 = v53;
    a1[4] = v52;
    a1[5] = v34;
    v35 = v55;
    a1[6] = v54;
    a1[7] = v35;
    *(a1 + 128) = v56;
    v36 = v51;
    a1[2] = v50;
    a1[3] = v36;
    v37 = v49;
    *a1 = v48;
    a1[1] = v37;
    return sub_1ADEDC6B8(&v57);
  }
}

void sub_1ADED6CE0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = xmmword_1AE2427C0;
  v6 = a1[5];
  v7 = a1[7];
  v66 = a1[6];
  v67 = v7;
  v8 = a1[1];
  v9 = a1[3];
  v62 = a1[2];
  v63 = v9;
  v10 = a1[3];
  v11 = a1[5];
  v64 = a1[4];
  v65 = v11;
  v12 = a1[1];
  v60 = *a1;
  v61 = v12;
  v13 = a1[7];
  v75 = v66;
  v76 = v13;
  v71 = v62;
  v72 = v10;
  v73 = v64;
  v74 = v6;
  v59 = 0;
  v68 = *(a1 + 128);
  v77 = *(a1 + 128);
  v69 = v60;
  v70 = v8;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v69);
  v17 = enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm;
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v55 = v75;
    v56 = v76;
    v57 = v77;
    v51 = v71;
    v52 = v72;
    v53 = v73;
    v54 = v74;
    v49 = v69;
    v50 = v70;
    enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = sub_1ADEDC4B4(&v49);
    if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm == 4)
    {
      v18 = sub_1ADE1F544(&v49);
      v29 = *v18;
      v19 = *(v18 + 16);
      v42 = v62;
      v43 = v63;
      v48 = v68;
      v46 = v66;
      v47 = v67;
      v44 = v64;
      v45 = v65;
      v40 = v60;
      v41 = v61;
      sub_1ADEDC6E8(&v40, &v31);
      sub_1ADDE158C(0, 0xF000000000000000);
      v58 = v29;
      v59 = v19;
    }
  }

  sub_1ADED9538(enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm, v15, v16);
  sub_1AE23C4FC();
  if (v4 || *(&v58 + 1) >> 60 == 15)
  {
    sub_1ADDE158C(v58, *(&v58 + 1));
  }

  else
  {
    v30 = v59;
    v20 = v58;
    sub_1ADDD86D8(v58, *(&v58 + 1));
    if (v17 != 1)
    {
      sub_1AE23C39C();
    }

    sub_1ADDE158C(v58, *(&v58 + 1));
    v31 = v20;
    *&v32 = v30;
    sub_1ADEDC720(&v31);
    v46 = v37;
    v47 = v38;
    v48 = v39;
    v42 = v33;
    v43 = v34;
    v44 = v35;
    v45 = v36;
    v40 = v31;
    v41 = v32;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v40);
    v21 = a1[7];
    v55 = a1[6];
    v56 = v21;
    v57 = *(a1 + 128);
    v22 = a1[3];
    v51 = a1[2];
    v52 = v22;
    v23 = a1[5];
    v53 = a1[4];
    v54 = v23;
    v24 = a1[1];
    v49 = *a1;
    v50 = v24;
    v25 = v45;
    a1[4] = v44;
    a1[5] = v25;
    v26 = v47;
    a1[6] = v46;
    a1[7] = v26;
    *(a1 + 128) = v48;
    v27 = v43;
    a1[2] = v42;
    a1[3] = v27;
    v28 = v41;
    *a1 = v40;
    a1[1] = v28;
    sub_1ADEDC6B8(&v49);
  }
}

uint64_t sub_1ADED6F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 112);
  v24 = *(v3 + 96);
  v25 = v12;
  v26 = *(v3 + 128);
  v13 = *(v3 + 48);
  v20 = *(v3 + 32);
  v21 = v13;
  v14 = *(v3 + 80);
  v22 = *(v3 + 64);
  v23 = v14;
  v15 = *(v3 + 16);
  v18 = *v3;
  v19 = v15;
  if (get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v18) == 1)
  {
    goto LABEL_13;
  }

  v29 = a3;
  v27[6] = v24;
  v27[7] = v25;
  v28 = v26;
  v27[2] = v20;
  v27[3] = v21;
  v27[4] = v22;
  v27[5] = v23;
  v27[0] = v18;
  v27[1] = v19;
  v16 = sub_1ADEDC4B4(v27);
  sub_1ADE1F544(v27);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      result = sub_1ADED74E0(v3, a1, a2, v29, sub_1ADEDC4B4, sub_1ADEDD174, 3);
      if (v4)
      {
        return result;
      }
    }

    else if (v16 == 3)
    {
      result = sub_1ADED7600(v3, a1, a2, v29);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      result = sub_1ADED7728(v3, a1, a2, v29);
      if (v4)
      {
        return result;
      }
    }

    goto LABEL_13;
  }

  if (!v16)
  {
    result = sub_1ADED727C(v3, a1, a2, v29, sub_1ADEDC4B4, sub_1ADEDD174, 1);
    if (v4)
    {
      return result;
    }

    goto LABEL_13;
  }

  result = sub_1ADED73C0(v3, a1, a2, v29, sub_1ADEDC4B4, sub_1ADEDD174, 2);
  if (!v4)
  {
LABEL_13:
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1ADED727C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *), uint64_t (*a6)(_OWORD *), uint64_t a7)
{
  v9 = a1[7];
  v27 = a1[6];
  v28 = v9;
  v29 = *(a1 + 128);
  v10 = a1[3];
  v23 = a1[2];
  v24 = v10;
  v11 = a1[5];
  v25 = a1[4];
  v26 = v11;
  v12 = a1[1];
  v21 = *a1;
  v22 = v12;
  result = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v21);
  if (result == 1 || (v30[6] = v27, v30[7] = v28, v31 = v29, v30[2] = v23, v30[3] = v24, v30[4] = v25, v30[5] = v26, v30[0] = v21, v30[1] = v22, result = a5(v30), result))
  {
    __break(1u);
  }

  else
  {
    v14 = a6(v30);
    v15 = v14[5];
    v36 = v14[4];
    v37 = v15;
    v16 = v14[7];
    v38 = v14[6];
    v39 = v16;
    v17 = v14[1];
    v32 = *v14;
    v33 = v17;
    v18 = v14[3];
    v34 = v14[2];
    v35 = v18;
    sub_1ADE73BC8(v14, v19, v20);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED73C0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *), uint64_t (*a6)(_OWORD *), uint64_t a7)
{
  v9 = a1[7];
  v24 = a1[6];
  v25 = v9;
  v26 = *(a1 + 128);
  v10 = a1[3];
  v20 = a1[2];
  v21 = v10;
  v11 = a1[5];
  v22 = a1[4];
  v23 = v11;
  v12 = a1[1];
  v18 = *a1;
  v19 = v12;
  result = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v18);
  if (result == 1 || (v27[6] = v24, v27[7] = v25, v28 = v26, v27[2] = v20, v27[3] = v21, v27[4] = v22, v27[5] = v23, v27[0] = v18, v27[1] = v19, result = a5(v27), result != 1))
  {
    __break(1u);
  }

  else
  {
    v14 = a6(v27);
    v31 = *(v14 + 32);
    v15 = *(v14 + 16);
    v29 = *v14;
    v30 = v15;
    sub_1ADED97F8(v14, v16, v17);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED74E0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *), uint64_t (*a6)(_OWORD *), uint64_t a7)
{
  v9 = a1[7];
  v24 = a1[6];
  v25 = v9;
  v26 = *(a1 + 128);
  v10 = a1[3];
  v20 = a1[2];
  v21 = v10;
  v11 = a1[5];
  v22 = a1[4];
  v23 = v11;
  v12 = a1[1];
  v18 = *a1;
  v19 = v12;
  result = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v18);
  if (result == 1 || (v27[6] = v24, v27[7] = v25, v28 = v26, v27[2] = v20, v27[3] = v21, v27[4] = v22, v27[5] = v23, v27[0] = v18, v27[1] = v19, result = a5(v27), result != 2))
  {
    __break(1u);
  }

  else
  {
    v14 = a6(v27);
    v31 = *(v14 + 32);
    v15 = *(v14 + 16);
    v29 = *v14;
    v30 = v15;
    sub_1ADED97F8(v14, v16, v17);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED7600(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[7];
  v22 = a1[6];
  v23 = v4;
  v24 = *(a1 + 128);
  v5 = a1[3];
  v18 = a1[2];
  v19 = v5;
  v6 = a1[5];
  v20 = a1[4];
  v21 = v6;
  v7 = a1[1];
  v16 = *a1;
  v17 = v7;
  result = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v16);
  if (result == 1 || (v25[6] = v22, v25[7] = v23, v26 = v24, v25[2] = v18, v25[3] = v19, v25[4] = v20, v25[5] = v21, v25[0] = v16, v25[1] = v17, result = sub_1ADEDC4B4(v25), result != 3))
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1ADE1F544(v25);
    v10 = v9[5];
    v31 = v9[4];
    v32 = v10;
    v11 = v9[7];
    v33 = v9[6];
    v34 = v11;
    v12 = v9[1];
    v27 = *v9;
    v28 = v12;
    v13 = v9[3];
    v29 = v9[2];
    v30 = v13;
    sub_1ADE73BC8(v9, v14, v15);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED7728(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[7];
  v18 = a1[6];
  v19 = v4;
  v20 = *(a1 + 128);
  v5 = a1[3];
  v14 = a1[2];
  v15 = v5;
  v6 = a1[5];
  v16 = a1[4];
  v17 = v6;
  v7 = a1[1];
  v12 = *a1;
  v13 = v7;
  result = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v12);
  if (result == 1 || (v21[6] = v18, v21[7] = v19, v22 = v20, v21[2] = v14, v21[3] = v15, v21[4] = v16, v21[5] = v17, v21[0] = v12, v21[1] = v13, result = sub_1ADEDC4B4(v21), result != 4))
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1ADE1F544(v21);
    v24 = *(v9 + 16);
    v23 = *v9;
    sub_1ADED9538(v9, v10, v11);
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1ADED7844(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADED7964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEDC664(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADED79D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADED9AB8(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADED7A10(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED7A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADED9AB8(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADED7AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED7B68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1ADEDA2A0(v11, v13) & 1;
}

uint64_t sub_1ADED7BEC()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7868);
  __swift_project_value_buffer(v0, qword_1EB5D7868);
  return sub_1AE23C69C();
}

uint64_t sub_1ADED7C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_1AE23C38C();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

void (*sub_1ADED7C98(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADED7D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEDC738(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADED7DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADED9958(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADED7E28(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED7E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADED9958(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADED7EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED7F10()
{
  v0 = sub_1AE23C32C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v7 = sub_1AE23CCBC();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_1ADED8034()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7880);
  __swift_project_value_buffer(v0, qword_1EB5D7880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "constants";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "keyPaths";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADED81FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1ADEDC930(1, v5, v6);
        sub_1AE23C4FC();
      }

      else if (result == 2)
      {
        sub_1ADEDC8DC(2, v5, v6);
        sub_1AE23C4EC();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADED82DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1AE23C32C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADED843C(v5, a1, a2, a3);
  if (!v4)
  {
    if (*(*v5 + 16))
    {
      sub_1ADEDC8DC(result, v14, v15);
      sub_1AE23C65C();
    }

    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_1ADED843C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 24))
  {
    sub_1ADEDC930(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

double sub_1ADED84BC@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void (*sub_1ADED84FC(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADED8604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEDC888(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADED8674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADED97F8(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADED86B0(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED8720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADED97F8(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADED876C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED87D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1ADEDB84C(v5, v7) & 1;
}

uint64_t sub_1ADED8824()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7898);
  __swift_project_value_buffer(v0, qword_1EB5D7898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AE2418F0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "digests";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1AE23C67C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1AE23C68C();
}

uint64_t sub_1ADED8990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1AE23C40C();
    }
  }

  return result;
}

uint64_t sub_1ADED8A00(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
  }

  else
  {
    if (!v12)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_1AE23C5CC();
      if (v5)
      {
        return result;
      }

      goto LABEL_10;
    }

    v13 = a2;
    v14 = a2 >> 32;
  }

  if (v13 != v14)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_1AE23C31C();
  sub_1AE23C30C();
  return (*(v9 + 8))(v11, v8);
}

double sub_1ADED8B70@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AE241910;
  return result;
}

void (*sub_1ADED8B9C(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADED8C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEDC984(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADED8CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADED9698(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADED8D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADED9698(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADED8D84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  if (sub_1ADDD6F8C(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v11 = sub_1AE23CCBC();
    v12 = *(v5 + 8);
    v12(v7, v4);
    v12(v10, v4);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1ADED8EC8()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D78B0);
  __swift_project_value_buffer(v0, qword_1EB5D78B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "digest";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "assetSize";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADED9090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1AE23C40C();
    }

    else if (result == 2)
    {
      sub_1AE23C4DC();
    }
  }

  return result;
}

uint64_t sub_1ADED911C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1AE23C32C();
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_10;
    }

    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
  }

  else
  {
    if (!v13)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_1AE23C5CC();
      if (v6)
      {
        return result;
      }

      goto LABEL_10;
    }

    v14 = a2;
    v15 = a2 >> 32;
  }

  if (v14 != v15)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!a4 || (result = sub_1AE23C64C(), !v6))
  {
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v18 + 8))(v12, v10);
  }

  return result;
}

void (*sub_1ADED92D4(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADED93C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEDC9D8(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADED9438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADED9538(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADED9474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADED9538(a1, a2, a3);

  return sub_1AE23C54C();
}

unint64_t sub_1ADED94E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAA60;
  if (!qword_1EB5BAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAA60);
  }

  return result;
}

unint64_t sub_1ADED9538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAA68;
  if (!qword_1EB5BAA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAA68);
  }

  return result;
}

unint64_t sub_1ADED9590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAA70;
  if (!qword_1EB5BAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAA70);
  }

  return result;
}

unint64_t sub_1ADED95E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAA78;
  if (!qword_1EB5BAA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAA78);
  }

  return result;
}

unint64_t sub_1ADED9640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAA80;
  if (!qword_1EB5BAA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAA80);
  }

  return result;
}

unint64_t sub_1ADED9698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAA88;
  if (!qword_1EB5BAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAA88);
  }

  return result;
}

unint64_t sub_1ADED96F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAA90;
  if (!qword_1EB5BAA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAA90);
  }

  return result;
}

unint64_t sub_1ADED9748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAA98;
  if (!qword_1EB5BAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAA98);
  }

  return result;
}

unint64_t sub_1ADED97A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAAA0;
  if (!qword_1EB5BAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAA0);
  }

  return result;
}

unint64_t sub_1ADED97F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAAA8;
  if (!qword_1EB5BAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAA8);
  }

  return result;
}

unint64_t sub_1ADED9850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAAB0;
  if (!qword_1EB5BAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAB0);
  }

  return result;
}

unint64_t sub_1ADED98A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAAB8;
  if (!qword_1EB5BAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAB8);
  }

  return result;
}

unint64_t sub_1ADED9900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAAC0;
  if (!qword_1EB5BAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAC0);
  }

  return result;
}

unint64_t sub_1ADED9958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAAC8;
  if (!qword_1EB5BAAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAC8);
  }

  return result;
}

unint64_t sub_1ADED99B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAAD0;
  if (!qword_1EB5BAAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAD0);
  }

  return result;
}

unint64_t sub_1ADED9A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAAD8;
  if (!qword_1EB5BAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAD8);
  }

  return result;
}

unint64_t sub_1ADED9A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAAE0;
  if (!qword_1EB5BAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAE0);
  }

  return result;
}

unint64_t sub_1ADED9AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAAE8;
  if (!qword_1EB5BAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAE8);
  }

  return result;
}

unint64_t sub_1ADED9B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAAF0;
  if (!qword_1EB5BAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAF0);
  }

  return result;
}

unint64_t sub_1ADED9B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAAF8;
  if (!qword_1EB5BAAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAF8);
  }

  return result;
}

unint64_t sub_1ADED9BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAB00;
  if (!qword_1EB5BAB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB00);
  }

  return result;
}

unint64_t sub_1ADED9C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAB08;
  if (!qword_1EB5BAB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB08);
  }

  return result;
}

unint64_t sub_1ADED9C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAB10;
  if (!qword_1EB5BAB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB10);
  }

  return result;
}

unint64_t sub_1ADED9CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAB18;
  if (!qword_1EB5BAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB18);
  }

  return result;
}

unint64_t sub_1ADED9D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAB20;
  if (!qword_1EB5BAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB20);
  }

  return result;
}

unint64_t sub_1ADED9D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAB28;
  if (!qword_1EB5BAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB28);
  }

  return result;
}

unint64_t sub_1ADED9DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAB30;
  if (!qword_1EB5BAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB30);
  }

  return result;
}

unint64_t sub_1ADED9E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAB38;
  if (!qword_1EB5BAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB38);
  }

  return result;
}

unint64_t sub_1ADED9E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAB40;
  if (!qword_1EB5BAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB40);
  }

  return result;
}

unint64_t sub_1ADED9ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB3E0;
  if (!qword_1EB5BB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB3E0);
  }

  return result;
}

unint64_t sub_1ADED9F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAB48;
  if (!qword_1EB5BAB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB48);
  }

  return result;
}