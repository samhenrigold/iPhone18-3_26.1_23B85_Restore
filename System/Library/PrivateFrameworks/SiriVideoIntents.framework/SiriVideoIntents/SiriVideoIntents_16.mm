uint64_t sub_2697F6E78(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2697F62C8(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_2697F7624();
        goto LABEL_22;
      }

      sub_2697F8414(v9 + 1);
    }

    v11 = *v4;
    sub_269855674();
    sub_269855694();
    if (a2)
    {
      sub_269854B34();
    }

    result = sub_2698556C4();
    v12 = v11 + 56;
    v13 = -1 << *(v11 + 32);
    a3 = result & ~v13;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      v15 = *(v11 + 48);
      do
      {
        v16 = (v15 + 16 * a3);
        v17 = v16[1];
        if (v17)
        {
          if (a2)
          {
            if (*v16 == v8 && v17 == a2)
            {
              goto LABEL_25;
            }

            result = sub_269855584();
            if (result)
            {
              goto LABEL_25;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_25;
        }

        a3 = (a3 + 1) & v14;
      }

      while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_22:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
    result = sub_2698555E4();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

void *sub_2697F7034()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F70, &qword_269858E00);
  v2 = *v0;
  v3 = sub_2698551C4();
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

void sub_2697F718C()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2(0);
  OUTLINED_FUNCTION_8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = OUTLINED_FUNCTION_8_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v11 = *v0;
  v12 = sub_2698551C4();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v1;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
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
    v28 = v5 + 32;
    v29 = v5 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v5 + 72) * (v22 | (v17 << 6));
      (*(v5 + 16))(v8, *(v11 + 48) + v25, v3);
      (*(v5 + 32))(*(v13 + 48) + v25, v8, v3);
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

        v1 = v27;
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
    *v1 = v13;
    OUTLINED_FUNCTION_21_0();
  }
}

void *sub_2697F73A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256F0, &qword_269866FA8);
  v2 = *v0;
  v3 = sub_2698551C4();
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

void *sub_2697F74E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256E0, &qword_269866FA0);
  v2 = *v0;
  v3 = sub_2698551C4();
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

void *sub_2697F7624()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256D8, &qword_269866F98);
  v2 = *v0;
  v3 = sub_2698551C4();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

uint64_t sub_2697F7778(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F70, &qword_269858E00);
  result = sub_2698551D4();
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
        sub_269855674();

        sub_269854B34();
        result = sub_2698556C4();
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

uint64_t sub_2697F79AC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2698519E4();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256C0, &qword_269866F88);
  v7 = sub_2698551D4();
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
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_2697F8C6C(&unk_280326380, MEMORY[0x277CB9E20], MEMORY[0x277CB9E28]);
        result = sub_269854A24();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
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

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_2697F7CC4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_269851A04();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256D0, &qword_269866F90);
  v7 = sub_2698551D4();
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
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_2697F8C6C(&unk_2803263A0, MEMORY[0x277CBA000], MEMORY[0x277CBA008]);
        result = sub_269854A24();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
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

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_2697F7FDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256F0, &qword_269866FA8);
  result = sub_2698551D4();
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
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        sub_269855674();
        MEMORY[0x26D646580](v15);
        result = sub_2698556C4();
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

uint64_t sub_2697F81F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256E0, &qword_269866FA0);
  result = sub_2698551D4();
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
        sub_269855674();
        MEMORY[0x26D646580](v15);
        result = sub_2698556C4();
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

uint64_t sub_2697F8414(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256D8, &qword_269866F98);
  result = sub_2698551D4();
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
        v17 = *v15;
        v16 = v15[1];
        sub_269855674();
        sub_269855694();
        if (v16)
        {

          sub_269854B34();
        }

        result = sub_2698556C4();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v17;
        v26[1] = v16;
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
          goto LABEL_23;
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
          goto LABEL_27;
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

LABEL_27:
    *v2 = v5;
  }

  return result;
}

unint64_t *sub_2697F8664(unint64_t *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_2697F8840(v5, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_2697F86DC(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_2697F8664(v8, v4, v2);
      MEMORY[0x26D647170](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_26980F698(0, v4, v5);
  v6 = sub_2697F8840(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_2697F8840(unint64_t *a1, uint64_t a2, void *a3)
{
  v36 = a2;
  v37 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B28, &qword_26985C360);
  MEMORY[0x28223BE20](v44);
  v49 = &v35 - v4;
  v50 = sub_269853904();
  result = MEMORY[0x28223BE20](v50);
  v48 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 0;
  v8 = 0;
  v45 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v42 = v6 + 16;
  v43 = v6;
  v46 = 0x8000000269880BB0;
  v39 = 0x8000000269880BD0;
  v41 = (v6 + 8);
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v47 = (v14 - 1) & v14;
LABEL_11:
    v19 = v16 | (v8 << 6);
    v20 = v45[7];
    v21 = (v45[6] + 16 * v19);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(v43 + 72);
    v40 = v19;
    v25 = *(v43 + 16);
    v26 = v48;
    v27 = v50;
    v25(v48, v20 + v24 * v19, v50);
    v28 = v49;
    *v49 = v22;
    *(v28 + 1) = v23;
    v25(&v28[*(v44 + 48)], v26, v27);
    v29 = v22 == 0xD000000000000015 && v46 == v23;
    if (v29 || ((v30 = sub_269855584(), v22 == 0xD000000000000015) ? (v31 = v39 == v23) : (v31 = 0), !v31 ? (v32 = 0) : (v32 = 1), (v30 & 1) != 0 || (v32 & 1) != 0))
    {
      swift_bridgeObjectRetain_n();
      sub_269698048(v49, &qword_280323B28, &qword_26985C360);
      (*v41)(v48, v50);

      v14 = v47;
    }

    else
    {
      v33 = sub_269855584();
      swift_bridgeObjectRetain_n();
      sub_269698048(v49, &qword_280323B28, &qword_26985C360);
      (*v41)(v48, v50);

      v14 = v47;
      if ((v33 & 1) == 0)
      {
        *(v37 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
        if (__OFADD__(v38++, 1))
        {
          goto LABEL_30;
        }
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      return sub_2697BE7A4(v37, v36, v38, v45);
    }

    v18 = v10[v8];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v47 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_2697F8BFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B30, &qword_26985C368);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697F8C6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2697F8CB4(uint64_t a1, void *a2, unint64_t *a3, void *a4)
{
  sub_26969329C(0, a3, a4);
  v5 = sub_269854CA4();

  [a2 setDependentSignals_];
}

void *sub_2697F8D30(void *result)
{
  if (result)
  {
  }

  return result;
}

void OUTLINED_FUNCTION_11_35()
{

  JUMPOUT(0x26D645D60);
}

void OUTLINED_FUNCTION_33_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_34_11(uint64_t a1)
{

  return sub_2698552E4();
}

uint64_t sub_2697F8EAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_26969B138(a1, &v6 - v3, &unk_280322D50, &unk_2698583F0);
  return sub_2697B8DB0(v4);
}

id sub_2697F8F58(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_269851D64();
  v4 = [v2 initWithNSUUID_];

  sub_269851DA4();
  OUTLINED_FUNCTION_4_3();
  (*(v5 + 8))(a1);
  return v4;
}

void sub_2697F9010(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F0, &qword_2698603D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_26969B138(a2, &v11 - v7, &qword_2803240F0, &qword_2698603D0);
  v9 = sub_269851DA4();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    v10 = sub_269851D64();
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  [v3 emitMessage:a1 isolatedStreamUUID:v10];
}

void *sub_2697F9130()
{
  result = sub_2697F9150();
  qword_28033D8E0 = result;
  return result;
}

void *sub_2697F9150()
{
  if (qword_280322688 != -1)
  {
    swift_once();
  }

  v0 = qword_28033D8B8;
  v1 = objc_allocWithZone(MEMORY[0x277D23C38]);
  swift_retain_n();
  v2 = [v1 init];
  type metadata accessor for GlobalsImpl();
  inited = swift_initStaticObject();
  type metadata accessor for UserDefaultsProviderImpl();
  swift_allocObject();
  v4 = v2;
  v5 = sub_2697B9550();
  v6 = [objc_opt_self() sharedAnalytics];
  v7 = [v6 defaultMessageStream];

  v8 = qword_280322680;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = sub_2697FCF68(v10, v0, sub_2697F93D8, 0, sub_2697F9458, 0, v4, inited, v5, v9, sub_2697F94E4, 0, sub_2697F9378, 0);

  return v11;
}

id sub_2697F9340()
{
  v0 = objc_allocWithZone(sub_2698547C4());

  return [v0 init];
}

id sub_2697F9378()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isDiagnosticSubmissionAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_2697F93D8()
{
  if (qword_280322678 != -1)
  {
    swift_once();
  }

  sub_2697EABE0(v2);
  v0 = v3;
  sub_2697E719C(v2);
  return v0;
}

uint64_t sub_2697F9458()
{
  if (qword_280322678 != -1)
  {
    swift_once();
  }

  sub_2697EABE0(v2);
  v0 = v3;

  sub_2697E719C(v2);
  return v0;
}

uint64_t sub_2697F94E4@<X0>(void *a1@<X8>)
{
  v2 = sub_2697F9340();
  result = sub_2698547C4();
  a1[3] = result;
  a1[4] = &off_287A44C78;
  *a1 = v2;
  return result;
}

void sub_2697F9524()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v1;
  v66 = type metadata accessor for SignalRecordingContext(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  v6 = &v63 - v5;
  v7 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12();
  v68 = (v11 - v12);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v63 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v63 - v18;
  v67 = v0;
  v20 = (*(v0 + 80))(v17);
  if (qword_2803226F0 != -1)
  {
    OUTLINED_FUNCTION_0_56();
    swift_once();
  }

  OUTLINED_FUNCTION_33_0(v7, qword_28033D940);
  v21 = *(v9 + 16);
  v69 = v22;
  v70 = v21;
  (v21)(v19);
  v71 = v2;
  sub_2697EE474(v2, v6);
  v23 = sub_2698548B4();
  v24 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v24))
  {
    v25 = swift_slowAlloc();
    v64 = v16;
    v26 = v25;
    v27 = OUTLINED_FUNCTION_9_3();
    v65 = v9;
    v28 = v27;
    v74[0] = v27;
    *v26 = 67109378;
    v63 = v7;
    v29 = v20;
    *(v26 + 4) = v20 & 1;
    *(v26 + 8) = 2080;
    v30 = OUTLINED_FUNCTION_31_3();
    sub_2697EE474(v30, v31);
    v32 = sub_269854AE4();
    v34 = v33;
    sub_2697602B0(v6);
    v35 = sub_26974F520(v32, v34, v74);

    *(v26 + 10) = v35;
    _os_log_impl(&dword_269684000, v23, v24, "SiriSignalsRecorder shouldRecord, D&U is permitted: %{BOOL}d, context: %s", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v36 = v65;
    OUTLINED_FUNCTION_10();
    v16 = v64;
    OUTLINED_FUNCTION_10();

    v37 = *(v36 + 8);
    v38 = v19;
    v39 = v63;
    v37(v38);
  }

  else
  {

    sub_2697602B0(v6);
    v37 = *(v9 + 8);
    v40 = v19;
    v39 = v7;
    (v37)(v40, v7);
    v29 = v20;
  }

  v41 = v71;
  if ((v29 & 1) == 0)
  {
    v46 = v68;
    v47 = v39;
    v70(v68, v69, v39);
    v48 = sub_2698548B4();
    v49 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v49))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_16_24();
      _os_log_impl(v50, v51, v52, v53, v54, 2u);
      OUTLINED_FUNCTION_10();
    }

    v55 = v46;
    goto LABEL_15;
  }

  v42 = *(v67 + 16);
  v43 = sub_269817454();
  sub_26981D1E4(v43, v42, &v72);
  if (!v73)
  {
    sub_26969B0C0(&v72, &qword_280325720, &qword_269867100);
    v47 = v39;
    v70(v16, v69, v39);
    v56 = sub_2698548B4();
    v57 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v57))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_16_24();
      _os_log_impl(v58, v59, v60, v61, v62, 2u);
      OUTLINED_FUNCTION_10();
    }

    v55 = v16;
LABEL_15:
    (v37)(v55, v47);
    goto LABEL_16;
  }

  sub_26968E5D4(&v72, v74);
  v44 = v75;
  v45 = v76;
  __swift_project_boxed_opaque_existential_1(v74, v75);
  (*(v45 + 16))(v41, v44, v45);
  __swift_destroy_boxed_opaque_existential_0(v74);
LABEL_16:
  OUTLINED_FUNCTION_21_0();
}

void sub_2697F99B8()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v1;
  type metadata accessor for SignalRecordingContext(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_28();
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  if (qword_2803226F0 != -1)
  {
    OUTLINED_FUNCTION_0_56();
    swift_once();
  }

  __swift_project_value_buffer(v7, qword_28033D940);
  OUTLINED_FUNCTION_6_46();
  v14 = OUTLINED_FUNCTION_12_11();
  v15(v14);
  sub_2697EE474(v2, v6);
  v16 = sub_2698548B4();
  v17 = sub_269854F14();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_27_2();
    v19 = OUTLINED_FUNCTION_9_3();
    v25 = v19;
    *v18 = 136315138;
    sub_2697EE474(v6, v0);
    OUTLINED_FUNCTION_31_3();
    v20 = sub_269854AE4();
    v22 = v21;
    sub_2697602B0(v6);
    v23 = sub_26974F520(v20, v22, &v25);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_269684000, v16, v17, "SiriSignalsRecorder prepareRecord %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2697602B0(v6);
  }

  (*(v9 + 8))(v13, v7);
  OUTLINED_FUNCTION_21_0();
}

void sub_2697F9BE8()
{
  OUTLINED_FUNCTION_19_1();
  v53 = v0;
  v54 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v44 - v4;
  type metadata accessor for SignalRecordingContext(0);
  OUTLINED_FUNCTION_8();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v52 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - v10;
  v12 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_28();
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  if (qword_2803226F0 != -1)
  {
    OUTLINED_FUNCTION_0_56();
    swift_once();
  }

  OUTLINED_FUNCTION_33_0(v12, qword_28033D940);
  v19 = *(v14 + 16);
  v48 = v20;
  v49 = v14 + 16;
  v47 = v19;
  (v19)(v18);
  sub_2697EE474(v54, v11);
  v21 = sub_2698548B4();
  v22 = sub_269854F14();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_27_2();
    v24 = OUTLINED_FUNCTION_9_3();
    v46 = v12;
    v25 = v24;
    v57[0] = v24;
    *v23 = 136315138;
    v45 = v6;
    v26 = v1;
    v27 = v14;
    sub_2697EE474(v11, v52);
    v28 = sub_269854AE4();
    v30 = v29;
    sub_2697602B0(v11);
    v31 = sub_26974F520(v28, v30, v57);
    v14 = v27;
    v1 = v26;
    v6 = v45;

    *(v23 + 4) = v31;
    _os_log_impl(&dword_269684000, v21, v22, "SiriSignalsRecorder record %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v12 = v46;
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2697602B0(v11);
  }

  v32 = *(v14 + 8);
  v32(v18, v12);
  v33 = *(v53 + 16);
  v34 = sub_269817454();
  sub_26981D1E4(v34, v33, &v55);
  if (v56)
  {
    sub_26968E5D4(&v55, v57);
    v35 = v51;
    sub_269854D94();
    v36 = sub_269854DB4();
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v36);
    sub_2696A73F8(v57, &v55);
    v37 = v52;
    sub_2697EE474(v54, v52);
    v38 = (*(v6 + 80) + 72) & ~*(v6 + 80);
    v39 = (v50 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    sub_26968E5D4(&v55, v40 + 32);
    sub_2697FCDBC(v37, v40 + v38);
    *(v40 + v39) = v53;

    sub_26983AA20();

    __swift_destroy_boxed_opaque_existential_0(v57);
  }

  else
  {
    sub_26969B0C0(&v55, &qword_280325720, &qword_269867100);
    v47(v1, v48, v12);
    v41 = sub_2698548B4();
    v42 = sub_269854F14();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_16_2();
      *v43 = 0;
      _os_log_impl(&dword_269684000, v41, v42, "SiriSignalsRecorder record unsupported type", v43, 2u);
      OUTLINED_FUNCTION_10();
    }

    v32(v1, v12);
  }

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2697FA0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_2698548D4();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324390, &unk_2698677E0);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v9 = sub_269851DA4();
  v6[13] = v9;
  v6[14] = *(v9 - 8);
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697FA24C);
}

uint64_t sub_2697FA24C(uint64_t a1)
{
  v2 = v1[15];
  v3 = v1[2];
  sub_269851D94();
  v4 = v3[3];
  v5 = v3[4];
  v6 = OUTLINED_FUNCTION_31_3();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v8 = (*(v5 + 8))(v4, v5);
  v9 = swift_task_alloc();
  *(v9 + 16) = v2;
  v10 = sub_269808254(sub_2697FCF38, v9, 0, v8);
  v1[16] = v10;

  v11 = *(v10 + 16);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v12 = OUTLINED_FUNCTION_22_3();
  if (v11 == v13(v12))
  {
    v14 = v3[3];
    v15 = v3[4];
    __swift_project_boxed_opaque_existential_1(v1[2], v14);
    v16 = MEMORY[0x277D84F90];
    if (v11)
    {
      v33 = v15;
      v34 = v14;
      v17 = v1[14];
      v18 = v1[9];
      v37 = v1[8];
      v39 = MEMORY[0x277D84F90];
      sub_2698552A4();
      v19 = v10 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v35 = (v17 + 32);
      v36 = *(v18 + 72);
      do
      {
        v21 = v1[12];
        v20 = v1[13];
        v22 = v1[10];
        v23 = v1[11];
        sub_26969B138(v19, v21, &qword_280324390, &unk_2698677E0);
        sub_26969B138(v21, v23, &qword_280324390, &unk_2698677E0);
        v24 = *v23;
        v25 = *(v37 + 48);
        *v22 = *v23;
        (*v35)(v22 + v25, v23 + v25, v20);
        v26 = v24;
        sub_26969B0C0(v22, &qword_280324390, &unk_2698677E0);
        sub_26969B0C0(v21, &qword_280324390, &unk_2698677E0);
        sub_269855284();
        sub_2698552B4();
        sub_2698552C4();
        sub_269855294();
        v19 += v36;
        --v11;
      }

      while (v11);
      v16 = v39;
      v15 = v33;
      v14 = v34;
    }

    v1[17] = v16;
    v38 = (*(v15 + 24) + **(v15 + 24));
    v27 = swift_task_alloc();
    v1[18] = v27;
    *v27 = v1;
    v27[1] = sub_2697FA608;
    v28 = v1[3];

    return v38(v28, v16, v14, v15);
  }

  else
  {

    v30 = OUTLINED_FUNCTION_9_34();
    v31(v30);

    OUTLINED_FUNCTION_7_7();

    return v32();
  }
}

uint64_t sub_2697FA608()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_26();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;
  *(v7 + 152) = v5;
  *(v7 + 160) = v6;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2697FA70C()
{
  v1 = v0[20];
  if (v1)
  {
    if (v1 == 1)
    {
      OUTLINED_FUNCTION_6_7();
      sub_2697FAC84();
    }

    else
    {
      v11 = v0[19];

      OUTLINED_FUNCTION_31_3();
      sub_2697FAC84();
      sub_2697FCF54(v11, v1);

      sub_2697FCF54(v11, v1);
    }
  }

  else
  {

    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_0_56();
      swift_once();
    }

    OUTLINED_FUNCTION_33_0(v0[5], qword_28033D940);
    v2 = OUTLINED_FUNCTION_12_11();
    v3(v2);
    v4 = sub_2698548B4();
    v5 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v5))
    {
      v6 = v0[19];
      v8 = v0[6];
      v7 = v0[7];
      v9 = v0[5];
      v10 = OUTLINED_FUNCTION_16_2();
      *v10 = 0;
      _os_log_impl(&dword_269684000, v4, v5, "SiriSignalsRecorder did not log to SELF", v10, 2u);
      OUTLINED_FUNCTION_10();

      sub_2697FCF54(v6, 0);
      (*(v8 + 8))(v7, v9);
    }

    else
    {

      v12 = OUTLINED_FUNCTION_22_3();
      v13(v12);
    }
  }

  v14 = OUTLINED_FUNCTION_9_34();
  v15(v14);

  OUTLINED_FUNCTION_7_7();

  return v16();
}

uint64_t sub_2697FA930@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v29 = a2;
  v3 = sub_2698548D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269851DA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D581F0]) init];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x277D581F8]) init];
    if (v13)
    {
      v14 = v13;
      sub_26969329C(0, &qword_2803256F8, 0x277D5AC78);
      v15 = *(v8 + 16);
      v15(v10, a1, v7);
      v16 = sub_2697F8F58(v10);
      [v14 setInferenceId_];

      [v12 setEventMetadata_];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324390, &unk_2698677E0);
      v18 = *(v17 + 48);
      v19 = v29;
      *v29 = v12;
      v15(&v19[v18], a1, v7);
      v20 = v19;
      v21 = 0;
      v22 = v17;
      return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
    }
  }

  if (qword_2803226F0 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v3, qword_28033D940);
  (*(v4 + 16))(v6, v23, v3);
  v24 = sub_2698548B4();
  v25 = sub_269854F24();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_269684000, v24, v25, "SiriSignalsRecorder could not create SelfLoggingMessage or INFERENCESchemaINFERENCEClientEventMetadata", v26, 2u);
    MEMORY[0x26D647170](v26, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324390, &unk_2698677E0);
  v20 = v29;
  v21 = 1;
  return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
}

void sub_2697FAC84()
{
  OUTLINED_FUNCTION_19_1();
  v149 = v0;
  v127 = v1;
  v3 = v2;
  v138 = v4;
  v6 = v5;
  v7 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v121 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v121 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F0, &qword_2698603D0);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  v19 = MEMORY[0x28223BE20](v18);
  v137 = &v121 - v20;
  MEMORY[0x28223BE20](v19);
  v151 = &v121 - v21;
  v22 = sub_269851DA4();
  OUTLINED_FUNCTION_8();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v27);
  v147 = &v121 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324390, &unk_2698677E0);
  v30 = MEMORY[0x28223BE20](v29);
  v146 = (&v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v30);
  v145 = &v121 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v144 = &v121 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v143 = (&v121 - v39);
  v40 = *(v6 + 16);
  v128 = v40;
  v135 = v7;
  if (!v40)
  {
    v96 = v7;
    __swift_project_boxed_opaque_existential_1(v127, v127[3]);
    v97 = OUTLINED_FUNCTION_22_3();
    v98(v97);
    v84 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v122 = v14;
  v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v123 = v6;
  v42 = v6 + v41;
  v43 = (v24 + 32);
  v140 = *(v36 + 48);
  v141 = v36;
  v150 = (v24 + 16);
  v142 = v24;
  v139 = (v24 + 8);
  v152 = *(v37 + 72);
  v133 = (v9 + 16);
  v124 = v9;
  v132 = v9 + 8;
  *&v38 = 136315138;
  v129 = v38;
  v153 = v6 + v41;
  v44 = v40;
  v136 = v3;
  v131 = v16;
  v45 = v147;
  v148 = (v24 + 32);
  do
  {
    v46 = v143;
    sub_26969B138(v42, v143, &qword_280324390, &unk_2698677E0);
    v47 = *v46;
    v154 = *v43;
    v154(v45, v46 + v140, v22);
    v48 = v3;
    if (!v3)
    {
      v61 = v151;
      (*v150)(v151, v45, v22);
      __swift_storeEnumTagSinglePayload(v61, 0, 1, v22);
      v63 = v149[6];
      v62 = v149[7];
      __swift_project_boxed_opaque_existential_1(v149 + 3, v63);
      v45 = v147;
      (*(v62 + 8))(v47, v61, v63, v62);

      sub_26969B0C0(v61, &qword_2803240F0, &qword_2698603D0);
      v64 = OUTLINED_FUNCTION_29_15();
      v65(v64);
      v3 = 0;
LABEL_15:
      v43 = v148;
      goto LABEL_16;
    }

    v49 = v151;
    OUTLINED_FUNCTION_31_14();
    v50 = v149[6];
    v51 = v149[7];
    __swift_project_boxed_opaque_existential_1(v149 + 3, v50);
    (*(v51 + 8))(v47, v49, v50, v51);
    v52 = v137;
    sub_269851D44();
    v3 = v48;
    if (__swift_getEnumTagSinglePayload(v52, 1, v22) == 1)
    {
      sub_26969B0C0(v52, &qword_2803240F0, &qword_2698603D0);
      if (qword_2803226F0 != -1)
      {
        OUTLINED_FUNCTION_0_56();
        swift_once();
      }

      v53 = v135;
      OUTLINED_FUNCTION_33_0(v135, qword_28033D940);
      (*v133)(v131);

      v54 = sub_2698548B4();
      v55 = sub_269854F24();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = OUTLINED_FUNCTION_27_2();
        v57 = OUTLINED_FUNCTION_9_3();
        v155[0] = v57;
        *v56 = v129;
        *(v56 + 4) = sub_26974F520(v138, v136, v155);
        _os_log_impl(&dword_269684000, v54, v55, "SiriSignalsRecorder request ID %s is not a valid UUID", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);
        v3 = v136;
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();

        v58 = OUTLINED_FUNCTION_23_18();
        v60 = v135;
      }

      else
      {

        v58 = OUTLINED_FUNCTION_23_18();
        v60 = v53;
      }

      v59(v58, v60);
      sub_26969B0C0(v151, &qword_2803240F0, &qword_2698603D0);
      v45 = v147;
      v76 = OUTLINED_FUNCTION_29_15();
      v77(v76);
      goto LABEL_15;
    }

    v66 = v134;
    v67 = v52;
    v43 = v148;
    v154(v134, v67, v22);
    v45 = v147;
    sub_2697FBA20();
    if (v68)
    {
      v69 = v68;
      v71 = v149[6];
      v70 = v149[7];
      __swift_project_boxed_opaque_existential_1(v149 + 3, v71);
      v72 = v130;
      OUTLINED_FUNCTION_31_14();
      v73 = v71;
      v3 = v136;
      (*(v70 + 8))(v69, v72, v73, v70);
      v43 = v148;

      sub_26969B0C0(v72, &qword_2803240F0, &qword_2698603D0);
      v74 = *v139;
      (*v139)(v134, v22);
    }

    else
    {

      v74 = *v139;
      (*v139)(v66, v22);
    }

    sub_26969B0C0(v151, &qword_2803240F0, &qword_2698603D0);
    v75 = OUTLINED_FUNCTION_29_15();
    (v74)(v75);
LABEL_16:
    v42 += v152;
    --v44;
  }

  while (v44);
  v78 = v127[3];
  v79 = v127[4];
  __swift_project_boxed_opaque_existential_1(v127, v78);
  (*(v79 + 32))(v78, v79);
  v155[0] = MEMORY[0x277D84F90];
  v80 = v128;
  sub_2698153E8(0, v128, 0);
  v81 = v126;
  v82 = v153;
  v83 = v154;
  v84 = v155[0];
  do
  {
    v153 = v82;
    v85 = v22;
    v86 = v144;
    v87 = v83;
    sub_26969B138(v82, v144, &qword_280324390, &unk_2698677E0);
    v88 = v145;
    sub_26969B138(v86, v145, &qword_280324390, &unk_2698677E0);
    v89 = v84;
    v90 = *(v141 + 48);
    v91 = v146;
    *v146 = *v88;
    v87(v91 + v90, &v88[v90], v85);
    v92 = (v91 + v90);
    v84 = v89;
    (*v150)(v81, v92, v85);
    sub_26969B0C0(v91, &qword_280324390, &unk_2698677E0);
    sub_26969B0C0(v86, &qword_280324390, &unk_2698677E0);
    v155[0] = v89;
    v94 = *(v89 + 16);
    v93 = *(v89 + 24);
    if (v94 >= v93 >> 1)
    {
      sub_2698153E8(v93 > 1, v94 + 1, 1);
      v81 = v126;
      v84 = v155[0];
    }

    *(v84 + 16) = v94 + 1;
    v95 = v154;
    v154((v84 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v94), v81, v85);
    v82 = v153 + v152;
    --v80;
    v22 = v85;
    v83 = v95;
  }

  while (v80);
  v96 = v135;
  v3 = v136;
  v9 = v124;
  v14 = v122;
LABEL_24:
  if (v3)
  {
    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_0_56();
      swift_once();
    }

    __swift_project_value_buffer(v96, qword_28033D940);
    OUTLINED_FUNCTION_6_46();
    v99(v14);

    v100 = v84;
    v101 = sub_2698548B4();
    v102 = sub_269854F14();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = OUTLINED_FUNCTION_9_3();
      v155[0] = swift_slowAlloc();
      *v103 = 134218498;
      *(v103 + 4) = v128;

      *(v103 + 12) = 2080;
      v104 = MEMORY[0x26D645BC0](v100, v22);
      v105 = v14;
      v107 = v106;

      v108 = sub_26974F520(v104, v107, v155);

      *(v103 + 14) = v108;
      *(v103 + 22) = 2080;
      *(v103 + 24) = sub_26974F520(v138, v3, v155);
      _os_log_impl(&dword_269684000, v101, v102, "SiriSignalsRecorder logged to SELF %ld messages with UUIDs %s and request ID %s", v103, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v9 + 8))(v105, v135);
    }

    else
    {

      (*(v9 + 8))(v14, v96);
    }
  }

  else
  {
    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_0_56();
      swift_once();
    }

    __swift_project_value_buffer(v96, qword_28033D940);
    OUTLINED_FUNCTION_6_46();
    v109 = v125;
    v110(v125);

    v111 = v84;
    v112 = sub_2698548B4();
    v113 = sub_269854F14();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = v96;
      v116 = OUTLINED_FUNCTION_9_3();
      v155[0] = v116;
      *v114 = 134218242;
      *(v114 + 4) = v128;

      *(v114 + 12) = 2080;
      v117 = MEMORY[0x26D645BC0](v111, v22);
      v119 = v118;

      v120 = sub_26974F520(v117, v119, v155);

      *(v114 + 14) = v120;
      _os_log_impl(&dword_269684000, v112, v113, "SiriSignalsRecorder logged to SELF %ld messages with UUIDs %s", v114, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v116);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v9 + 8))(v125, v115);
    }

    else
    {

      (*(v9 + 8))(v109, v96);
    }
  }

  OUTLINED_FUNCTION_21_0();
}

void sub_2697FBA20()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = sub_269851DA4();
  OUTLINED_FUNCTION_8();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  v18 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (v18)
  {
    v19 = v18;
    v32 = v3;
    v20 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
    if (v20)
    {
      v21 = v20;
      v22 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
      if (v22)
      {
        v23 = v22;
        [v21 setComponent_];
        sub_26969329C(0, &qword_2803256F8, 0x277D5AC78);
        v24 = *(v13 + 16);
        v24(v17, v32, v11);
        v25 = sub_2697F8F58(v17);
        [v21 setUuid_];

        [v23 setComponent_];
        v24(v17, v1, v11);
        v26 = sub_2697F8F58(v17);
        [v23 setUuid_];

        [v19 setSource_];
        [v19 setTarget_];

        goto LABEL_13;
      }
    }

    else
    {
      v21 = v19;
    }
  }

  if (qword_2803226F0 != -1)
  {
    OUTLINED_FUNCTION_0_56();
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_28033D940);
  OUTLINED_FUNCTION_6_46();
  v27 = OUTLINED_FUNCTION_12_11();
  v28(v27);
  v29 = sub_2698548B4();
  v30 = sub_269854F24();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_16_2();
    *v31 = 0;
    _os_log_impl(&dword_269684000, v29, v30, "SiriSignalsRecorder createLinkMessage could not create link messages", v31, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v6 + 8))(v10, v4);
LABEL_13:
  OUTLINED_FUNCTION_21_0();
}

void sub_2697FBD40()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v51 = v9;
  v52 = v10;
  v11 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v53 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_28();
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v50 - v18;
  v20 = "53697269-963B-45BE-8111-566964656f11";
  if (v8)
  {
    v20 = "53697269-963B-45BE-8222-566964656f22";
  }

  v21 = v20 - 32;
  sub_26969329C(0, &qword_280325718, 0x277CCAD78);
  v22 = sub_2697FC1C4(0xD000000000000024, v21 | 0x8000000000000000);
  if (v22)
  {
    v23 = v22;

    v24 = sub_2697FC1C4(v6, v4);
    if (v24)
    {
      v25 = v24;
      (*(v2 + 64))(v55);
      sub_269854D94();
      v26 = sub_269854DB4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v26);
      sub_2696A73F8(v55, v54);
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      sub_26968E5D4(v54, (v27 + 4));
      v28 = v51;
      v29 = v52;
      v27[9] = v23;
      v27[10] = v28;
      v27[11] = v29;
      v27[12] = v25;
      v30 = v23;

      v31 = v25;
      sub_26983AA20();

      __swift_destroy_boxed_opaque_existential_0(v55);
    }

    else
    {
      v43 = v6;
      if (qword_2803226F0 != -1)
      {
        OUTLINED_FUNCTION_0_56();
        swift_once();
      }

      v44 = v11;
      OUTLINED_FUNCTION_33_0(v11, qword_28033D940);
      v45 = v53;
      (*(v53 + 16))(v16);

      v46 = sub_2698548B4();
      v47 = sub_269854F24();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = OUTLINED_FUNCTION_27_2();
        v49 = OUTLINED_FUNCTION_9_3();
        v55[0] = v49;
        *v48 = 136315138;
        *(v48 + 4) = sub_26974F520(v43, v4, v55);
        _os_log_impl(&dword_269684000, v46, v47, "SiriSignalsRecorder recordTrigger could not create request UUID from %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      else
      {
      }

      (*(v45 + 8))(v16, v44);
    }
  }

  else
  {
    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_0_56();
      swift_once();
    }

    OUTLINED_FUNCTION_33_0(v11, qword_28033D940);
    v32 = v53;
    (*(v53 + 16))(v1);
    v33 = sub_2698548B4();
    v34 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_4(v34))
    {
      v35 = OUTLINED_FUNCTION_27_2();
      v36 = OUTLINED_FUNCTION_9_3();
      v55[0] = v36;
      *v35 = 136315138;
      v37 = sub_26974F520(0xD000000000000024, v21 | 0x8000000000000000, v55);

      *(v35 + 4) = v37;
      OUTLINED_FUNCTION_16_24();
      _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    (*(v32 + 8))(v1, v11);
  }

  OUTLINED_FUNCTION_21_0();
}

id sub_2697FC1C4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_269854A64();

  v4 = [v2 initWithUUIDString_];

  return v4;
}

uint64_t sub_2697FC238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = sub_2698548D4();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697FC30C);
}

uint64_t sub_2697FC30C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
  v3 = swift_allocObject();
  *(v0 + 96) = v3;
  *(v3 + 16) = xmmword_269857710;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v7 = (*MEMORY[0x277CE4838] + MEMORY[0x277CE4838]);

  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_26_17(v4);

  return v7(v5, v3);
}

uint64_t sub_2697FC414()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2697FC528()
{
  v1 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v5 = (*MEMORY[0x277CE4830] + MEMORY[0x277CE4830]);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_26_17(v2);

  return v5(v3, v1);
}

uint64_t sub_2697FC5E0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2697FC6D8()
{
  v23 = v0;
  v1 = v0[14];
  if (qword_2803226F0 != -1)
  {
    OUTLINED_FUNCTION_0_56();
    swift_once();
  }

  v3 = v0[9];
  v2 = v0[10];
  OUTLINED_FUNCTION_33_0(v0[8], qword_28033D940);
  (*(v3 + 16))(v2);
  v4 = v1;
  v5 = sub_2698548B4();
  v6 = sub_269854F24();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[8];
  if (v7)
  {
    v21 = v0[10];
    v11 = OUTLINED_FUNCTION_27_2();
    v12 = OUTLINED_FUNCTION_9_3();
    v22 = v12;
    *v11 = 136315138;
    v0[2] = v1;
    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v14 = sub_269854AE4();
    v16 = sub_26974F520(v14, v15, &v22);

    *(v11 + 4) = v16;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v17, v18, "SiriSignalsRecorder recordTrigger error emitting trigger message, %s");
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v8 + 8))(v21, v10);
  }

  else
  {

    (*(v8 + 8))(v9, v10);
  }

  OUTLINED_FUNCTION_7_7();

  return v19();
}

uint64_t sub_2697FC8C0()
{
  if (qword_2803226F0 != -1)
  {
    OUTLINED_FUNCTION_0_56();
    swift_once();
  }

  OUTLINED_FUNCTION_33_0(*(v0 + 64), qword_28033D940);
  v1 = OUTLINED_FUNCTION_12_11();
  v2(v1);
  v3 = sub_2698548B4();
  v4 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v4))
  {
    v5 = OUTLINED_FUNCTION_16_2();
    *v5 = 0;
    _os_log_impl(&dword_269684000, v3, v4, "SiriSignalsRecorder recordTrigger emitted trigger message", v5, 2u);
    OUTLINED_FUNCTION_10();
  }

  v6 = OUTLINED_FUNCTION_22_3();
  v7(v6);

  OUTLINED_FUNCTION_7_7();

  return v8();
}

uint64_t sub_2697FC9F4()
{
  v23 = v0;
  v1 = v0[16];
  if (qword_2803226F0 != -1)
  {
    OUTLINED_FUNCTION_0_56();
    swift_once();
  }

  v3 = v0[9];
  v2 = v0[10];
  OUTLINED_FUNCTION_33_0(v0[8], qword_28033D940);
  (*(v3 + 16))(v2);
  v4 = v1;
  v5 = sub_2698548B4();
  v6 = sub_269854F24();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[8];
  if (v7)
  {
    v21 = v0[10];
    v11 = OUTLINED_FUNCTION_27_2();
    v12 = OUTLINED_FUNCTION_9_3();
    v22 = v12;
    *v11 = 136315138;
    v0[2] = v1;
    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v14 = sub_269854AE4();
    v16 = sub_26974F520(v14, v15, &v22);

    *(v11 + 4) = v16;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v17, v18, "SiriSignalsRecorder recordTrigger error emitting trigger message, %s");
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v8 + 8))(v21, v10);
  }

  else
  {

    (*(v8 + 8))(v9, v10);
  }

  OUTLINED_FUNCTION_7_7();

  return v19();
}

void *sub_2697FCBDC()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return v0;
}

uint64_t sub_2697FCC14()
{
  sub_2697FCBDC();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_2697FCC6C()
{
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[12];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2696DA938;
  v7 = OUTLINED_FUNCTION_28_15();

  return sub_2697FC238(v7, v8, v9, v10, v2, v3, v4, v5);
}

uint64_t sub_2697FCD38@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2697FCDBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalRecordingContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697FCE20()
{
  v2 = *(type metadata accessor for SignalRecordingContext(0) - 8);
  v3 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 72) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2696DAF80;
  v5 = OUTLINED_FUNCTION_28_15();

  return sub_2697FA0AC(v5, v6, v7, v8, v9, v3);
}

uint64_t sub_2697FCF54(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void *sub_2697FCF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v82 = a5;
  v83 = a6;
  v86 = a3;
  v87 = a4;
  v85 = a1;
  v91 = a14;
  v90 = a13;
  v89 = a12;
  v88 = a11;
  v84 = a9;
  v17 = type metadata accessor for TrialSignalCollectConfigProvider();
  v148[4] = &off_287A44AE0;
  v148[3] = v17;
  v148[0] = a2;
  v146 = &type metadata for LSApplicationRecordProvider;
  v147 = &xmmword_287A41430;
  v143 = &type metadata for PlayOnThirdPartySignalsCreator;
  v144 = &off_287A45FB8;
  v141 = &off_287A413C0;
  v140 = &type metadata for AppIntentsMetadataProvider;
  v139[0] = a7;
  v137 = &type metadata for FeatureFlagServiceImpl;
  v138 = &off_287A41BD8;
  v18 = type metadata accessor for GlobalsImpl();
  v135 = &off_287A41CD0;
  v134 = v18;
  v78 = v18;
  v133[0] = a8;
  v132 = &off_287A44C90;
  v131 = sub_26969329C(0, &qword_280325728, 0x277D552C8);
  *&v130 = a10;
  type metadata accessor for SiriSignalsRecorder();
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v148, v17);
  v21 = *(v17 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v80 = *(v21 + 16);
  v81 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v80(&v77 - v81);
  __swift_mutable_project_boxed_opaque_existential_1(v145, v146);
  __swift_mutable_project_boxed_opaque_existential_1(v142, v143);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v139, v140);
  MEMORY[0x28223BE20](v23);
  v25 = (&v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  __swift_mutable_project_boxed_opaque_existential_1(v136, v137);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v133, v134);
  MEMORY[0x28223BE20](v27);
  v29 = (&v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = *(&v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *v25;
  v33 = *v29;
  v129[4] = &off_287A44AE0;
  v129[3] = v17;
  v129[0] = v31;
  v128[3] = &type metadata for LSApplicationRecordProvider;
  v128[4] = &xmmword_287A41430;
  v127[3] = &type metadata for PlayOnThirdPartySignalsCreator;
  v127[4] = &off_287A45FB8;
  v126[4] = &off_287A413C0;
  v126[3] = &type metadata for AppIntentsMetadataProvider;
  v126[0] = v32;
  v125[3] = &type metadata for FeatureFlagServiceImpl;
  v125[4] = &off_287A41BD8;
  v124[4] = &off_287A41CD0;
  v124[3] = v18;
  v124[0] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325730, &qword_269867118);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_269858BC0;
  *(v34 + 32) = 1;
  sub_2696A73F8(v129, v123);
  sub_2696A73F8(v128, v122);
  sub_2696A73F8(v127, v121);
  sub_2696A73F8(v126, v120);
  sub_2696A73F8(v125, v119);
  sub_2696A73F8(v124, v118);
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v123, v123[3]);
  MEMORY[0x28223BE20](v35);
  v37 = (&v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  __swift_mutable_project_boxed_opaque_existential_1(v122, v122[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v121, v121[3]);
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v120, v120[3]);
  MEMORY[0x28223BE20](v39);
  v41 = (&v77 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  __swift_mutable_project_boxed_opaque_existential_1(v119, v119[3]);
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v118, v118[3]);
  MEMORY[0x28223BE20](v43);
  v45 = (&v77 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45);
  v47 = *v37;
  v48 = *v41;
  v49 = *v45;
  v117[4] = &off_287A44AE0;
  v117[3] = v17;
  v117[0] = v47;
  v115 = &type metadata for LSApplicationRecordProvider;
  v116 = &xmmword_287A41430;
  v112 = &type metadata for PlayOnThirdPartySignalsCreator;
  v113 = &off_287A45FB8;
  v110 = &off_287A413C0;
  v109 = &type metadata for AppIntentsMetadataProvider;
  v108[0] = v48;
  v106 = &type metadata for FeatureFlagServiceImpl;
  v107 = &off_287A41BD8;
  v50 = v78;
  v103 = v78;
  v104 = &off_287A41CD0;
  v102[0] = v49;
  v79 = type metadata accessor for PlayOnThirdPartyAppSignalRecordingHandler();
  v51 = swift_allocObject();
  v52 = __swift_mutable_project_boxed_opaque_existential_1(v117, v17);
  MEMORY[0x28223BE20](v52);
  v53 = (&v77 - v81);
  v80(&v77 - v81);
  __swift_mutable_project_boxed_opaque_existential_1(v114, v115);
  __swift_mutable_project_boxed_opaque_existential_1(v111, v112);
  v54 = __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
  MEMORY[0x28223BE20](v54);
  v56 = (&v77 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56);
  __swift_mutable_project_boxed_opaque_existential_1(v105, v106);
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v102, v103);
  MEMORY[0x28223BE20](v58);
  v60 = (&v77 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v61 + 16))(v60);
  v62 = *v53;
  v63 = *v56;
  v64 = *v60;
  v100 = v17;
  v101 = &off_287A44AE0;
  v99[0] = v62;
  v98[3] = &type metadata for LSApplicationRecordProvider;
  v98[4] = &xmmword_287A41430;
  v97[3] = &type metadata for PlayOnThirdPartySignalsCreator;
  v97[4] = &off_287A45FB8;
  v96[4] = &off_287A413C0;
  v96[3] = &type metadata for AppIntentsMetadataProvider;
  v96[0] = v63;
  v95[3] = &type metadata for FeatureFlagServiceImpl;
  v95[4] = &off_287A41BD8;
  v93 = v50;
  v94 = &off_287A41CD0;
  *&v92 = v64;
  *(v51 + 16) = 1;
  sub_2696A73F8(v99, v51 + 24);
  v65 = v83;
  *(v51 + 64) = v82;
  *(v51 + 72) = v65;
  sub_2696A73F8(v98, v51 + 80);
  sub_2696A73F8(v97, v51 + 120);
  sub_2696A73F8(v96, v51 + 160);
  sub_2696A73F8(v95, v51 + 200);
  sub_2696A73F8(&v92, v51 + 240);
  __swift_project_boxed_opaque_existential_1(v99, v100);

  sub_2697EAC90(v149);
  __swift_destroy_boxed_opaque_existential_0(v95);
  __swift_destroy_boxed_opaque_existential_0(v96);
  __swift_destroy_boxed_opaque_existential_0(v97);
  __swift_destroy_boxed_opaque_existential_0(v98);
  sub_26976030C(v149);
  v66 = v150;
  KeyPath = swift_getKeyPath();
  strcpy((v51 + 280), "Ground truth");
  *(v51 + 293) = 0;
  *(v51 + 294) = -5120;
  *(v51 + 296) = sub_2697EB138;
  *(v51 + 304) = 0;
  *(v51 + 312) = v66;
  *(v51 + 320) = v84;
  *(v51 + 328) = &off_287A41E38;
  *(v51 + 336) = KeyPath;
  *(v51 + 344) = sub_26968E738;
  *(v51 + 352) = 0;
  sub_26968E5D4(&v92, v51 + 360);
  __swift_destroy_boxed_opaque_existential_0(v99);
  __swift_destroy_boxed_opaque_existential_0(v102);
  __swift_destroy_boxed_opaque_existential_0(v105);
  __swift_destroy_boxed_opaque_existential_0(v108);
  __swift_destroy_boxed_opaque_existential_0(v111);
  __swift_destroy_boxed_opaque_existential_0(v114);
  __swift_destroy_boxed_opaque_existential_0(v117);
  __swift_destroy_boxed_opaque_existential_0(v118);
  __swift_destroy_boxed_opaque_existential_0(v119);
  __swift_destroy_boxed_opaque_existential_0(v120);
  __swift_destroy_boxed_opaque_existential_0(v121);
  __swift_destroy_boxed_opaque_existential_0(v122);
  __swift_destroy_boxed_opaque_existential_0(v123);
  *(v34 + 64) = v79;
  *(v34 + 72) = &off_287A44C50;
  *(v34 + 40) = v51;
  *(v34 + 80) = 2;
  v68 = type metadata accessor for ABComparisonPlayOnThirdPartyAppHandler();
  v69 = swift_allocObject();
  v69[6] = type metadata accessor for RoutingAppPredictor();
  v69[7] = &off_287A445F8;
  v70 = v85;
  v71 = v86;
  v69[2] = 2;
  v69[3] = v70;
  v72 = v87;
  v69[8] = v71;
  v69[9] = v72;
  v69[10] = sub_2697EB138;
  v69[11] = 0;
  *(v34 + 112) = v68;
  *(v34 + 120) = &off_287A44AF0;
  *(v34 + 88) = v69;
  *(v34 + 128) = 3;
  *(v34 + 160) = &type metadata for SmartAppSelectionDisambiguationHandler;
  *(v34 + 168) = &off_287A44D40;
  *(v34 + 136) = 1;
  *(v34 + 176) = 4;
  *(v34 + 208) = &type metadata for ABComparisonSmartAppSelectionDisambiguationHandler;
  *(v34 + 216) = &off_287A44B40;
  *(v34 + 184) = 2;
  *(v34 + 224) = 5;
  *(v34 + 256) = &type metadata for ABComparisonSmartAppSelectionSuccessHandler;
  *(v34 + 264) = &off_287A44B90;
  *(v34 + 232) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325738, &qword_269867148);
  sub_2697FDC04();
  v73 = sub_269854A04();

  __swift_destroy_boxed_opaque_existential_0(v124);
  __swift_destroy_boxed_opaque_existential_0(v125);
  __swift_destroy_boxed_opaque_existential_0(v126);
  __swift_destroy_boxed_opaque_existential_0(v127);
  __swift_destroy_boxed_opaque_existential_0(v128);
  __swift_destroy_boxed_opaque_existential_0(v129);
  v19[2] = v73;
  sub_26968E5D4(&v130, (v19 + 3));
  v74 = v89;
  v19[8] = v88;
  v19[9] = v74;
  v75 = v91;
  v19[10] = v90;
  v19[11] = v75;
  __swift_destroy_boxed_opaque_existential_0(v133);
  __swift_destroy_boxed_opaque_existential_0(v136);
  __swift_destroy_boxed_opaque_existential_0(v139);
  __swift_destroy_boxed_opaque_existential_0(v142);
  __swift_destroy_boxed_opaque_existential_0(v145);
  __swift_destroy_boxed_opaque_existential_0(v148);
  return v19;
}

unint64_t sub_2697FDC04()
{
  result = qword_280325740;
  if (!qword_280325740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325740);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_14()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t sub_2697FDD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1;
    v39 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v4, 0);
    v6 = v39;
    result = sub_269811248();
    v10 = result;
    v11 = 0;
    v38 = v5 + 56;
    v30 = v5 + 64;
    v31 = v4;
    v32 = v5;
    v33 = a3;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(v5 + 32))
      {
        v12 = v10 >> 6;
        if ((*(v38 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_32;
        }

        if (*(v5 + 36) != v8)
        {
          goto LABEL_33;
        }

        v13 = (*(v5 + 48) + 16 * v10);
        v14 = *v13;
        v15 = v13[1];
        v16 = *v13 == a2 && v15 == a3;
        v35 = v11;
        v36 = v8;
        v37 = v9;
        if (v16)
        {
          v17 = 1;
        }

        else
        {
          v17 = sub_269855584() & 1;
        }

        v19 = *(v39 + 16);
        v18 = *(v39 + 24);

        if (v19 >= v18 >> 1)
        {
          result = sub_269814EEC((v18 > 1), v19 + 1, 1);
        }

        *(v39 + 16) = v19 + 1;
        v20 = (v39 + 24 * v19);
        v20[4] = v14;
        v20[5] = v15;
        v20[6] = v17;
        if (v37)
        {
          goto LABEL_37;
        }

        v5 = v32;
        a3 = v33;
        v21 = 1 << *(v32 + 32);
        if (v10 >= v21)
        {
          goto LABEL_34;
        }

        v22 = *(v38 + 8 * v12);
        if ((v22 & (1 << v10)) == 0)
        {
          goto LABEL_35;
        }

        if (*(v32 + 36) != v36)
        {
          goto LABEL_36;
        }

        v23 = v22 & (-2 << (v10 & 0x3F));
        if (v23)
        {
          v21 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v24 = v31;
        }

        else
        {
          v25 = v12 << 6;
          v26 = v12 + 1;
          v24 = v31;
          v27 = (v30 + 8 * v12);
          while (v26 < (v21 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              result = sub_26968E5C8(v10, v36, 0);
              v21 = __clz(__rbit64(v28)) + v25;
              goto LABEL_25;
            }
          }

          result = sub_26968E5C8(v10, v36, 0);
        }

LABEL_25:
        v11 = v35 + 1;
        if (v35 + 1 == v24)
        {

          return v6;
        }

        v9 = 0;
        v8 = *(v32 + 36);
        v10 = v21;
        if (v21 < 0)
        {
          break;
        }
      }
    }

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
LABEL_37:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2697FDFE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v34 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v1, 0);
    v3 = v34;
    result = sub_269811248();
    v6 = result;
    v8 = v7;
    v9 = 0;
    v33 = v2 + 56;
    v28 = v2 + 64;
    v29 = v1;
    v30 = v2;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v2 + 32))
      {
        v10 = v6 >> 6;
        if ((*(v33 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_29;
        }

        if (*(v2 + 36) != v5)
        {
          goto LABEL_30;
        }

        v31 = v9;
        v32 = v5;
        v11 = (*(v2 + 48) + 16 * v6);
        v13 = *v11;
        v12 = v11[1];
        result = sub_26970C48C();
        if (v14)
        {
          v15 = -1;
        }

        else
        {
          v15 = result + 1;
          if (__OFADD__(result, 1))
          {
            goto LABEL_34;
          }
        }

        v17 = *(v34 + 16);
        v16 = *(v34 + 24);

        if (v17 >= v16 >> 1)
        {
          result = sub_269814EEC((v16 > 1), v17 + 1, 1);
        }

        *(v34 + 16) = v17 + 1;
        v18 = (v34 + 24 * v17);
        v18[4] = v13;
        v18[5] = v12;
        v18[6] = v15;
        if (v8)
        {
          goto LABEL_35;
        }

        v2 = v30;
        v19 = 1 << *(v30 + 32);
        if (v6 >= v19)
        {
          goto LABEL_31;
        }

        v20 = *(v33 + 8 * v10);
        if ((v20 & (1 << v6)) == 0)
        {
          goto LABEL_32;
        }

        if (*(v30 + 36) != v32)
        {
          goto LABEL_33;
        }

        v21 = v20 & (-2 << (v6 & 0x3F));
        if (v21)
        {
          v19 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
          v22 = v29;
        }

        else
        {
          v23 = v10 << 6;
          v24 = v10 + 1;
          v22 = v29;
          v25 = (v28 + 8 * v10);
          while (v24 < (v19 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              result = sub_26968E5C8(v6, v32, 0);
              v19 = __clz(__rbit64(v26)) + v23;
              goto LABEL_22;
            }
          }

          result = sub_26968E5C8(v6, v32, 0);
        }

LABEL_22:
        v9 = v31 + 1;
        if (v31 + 1 == v22)
        {

          return v3;
        }

        v8 = 0;
        v5 = *(v30 + 36);
        v6 = v19;
        if (v19 < 0)
        {
          break;
        }
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
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2697FE280(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t *))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a2;
  a4(a1, a3, 0, isUniquelyReferenced_nonNull_native, &v12);
  v10 = v12;
  if (v4)
  {
  }

  return v10;
}

uint64_t sub_2697FE308(uint64_t a1)
{
  type metadata accessor for SignalRecordingContext(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppDisambiguationContext(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_6_47();
  sub_269800C18(a1, v4, v9);
  if (swift_getEnumCaseMultiPayload() == 3)
  {

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0);
    sub_26971522C(&v4[*(v10 + 48)], v8);
    v11 = *&v8[*(v5 + 36)];
    OUTLINED_FUNCTION_0_57();
    sub_269800C78(v8, v12);
    return v11 & 1;
  }

  else
  {
    sub_269800C78(v4, type metadata accessor for SignalRecordingContext);
    return 0;
  }
}

uint64_t sub_2697FE450(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B28, &qword_26985C360);
  v2[5] = v3;
  OUTLINED_FUNCTION_8_9(v3);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_2698548D4();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803254E8, &unk_269866100);
  OUTLINED_FUNCTION_8_9(v5);
  v2[15] = OUTLINED_FUNCTION_4_7();
  v6 = type metadata accessor for ModelInput(0);
  OUTLINED_FUNCTION_8_9(v6);
  v2[16] = OUTLINED_FUNCTION_4_7();
  v7 = sub_269853984();
  v2[17] = v7;
  v2[18] = *(v7 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v8 = type metadata accessor for SignalRecordingContext(0);
  v2[23] = v8;
  OUTLINED_FUNCTION_8_9(v8);
  v2[24] = OUTLINED_FUNCTION_4_7();
  v9 = type metadata accessor for AppDisambiguationContext(0);
  v2[25] = v9;
  OUTLINED_FUNCTION_8_9(v9);
  v2[26] = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_2697FE698);
}

uint64_t sub_2697FE698()
{
  v1 = v0[4];
  if (v1 >> 62)
  {
    if (!sub_269855324())
    {
LABEL_15:
      OUTLINED_FUNCTION_7_44();

      OUTLINED_FUNCTION_7_42();
      OUTLINED_FUNCTION_112();

      __asm { BRAA            X3, X16 }
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

  sub_269750050();
  v2 = v0[4];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x26D646120](0, v2);
  }

  else
  {
    v3 = *(v2 + 32);
  }

  v4 = v3;
  v0[27] = v3;
  v5 = v0[24];
  OUTLINED_FUNCTION_6_47();
  sub_269800C18(v6, v5, v7);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v29 = v0[24];

    v34 = type metadata accessor for SignalRecordingContext;
LABEL_14:
    sub_269800C78(v29, v34);
    goto LABEL_15;
  }

  v9 = v0 + 16;
  v8 = v0[16];
  v11 = v0[25];
  v10 = v0[26];
  v12 = v0[24];
  v14 = *v12;
  v13 = *(v12 + 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0);
  sub_26971522C(v12 + *(v15 + 48), v10);
  v16 = v10 + *(v11 + 28);
  v17 = type metadata accessor for ModelParams(0);
  sub_269800C18(v16 + *(v17 + 20), v8, type metadata accessor for ModelInput);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F40, &unk_269858D40);
  if (__swift_getEnumTagSinglePayload(v8, 1, v18) == 1)
  {
    v58 = v14;
    v9 = v0 + 15;
    v19 = v0[15];
    v20 = v0[25];
    v21 = v0[26];
    v22 = v0[17];
    sub_269800C78(v0[16], type metadata accessor for ModelInput);
    sub_26969B138(v21 + *(v20 + 32), v19, &qword_2803254E8, &unk_269866100);
    if (__swift_getEnumTagSinglePayload(v19, 1, v22) == 1)
    {
      v23 = *v9;

      sub_26969B0C0(v23, &qword_2803254E8, &unk_269866100);
      if (qword_2803226F0 != -1)
      {
        OUTLINED_FUNCTION_2_35(&qword_2803226F0);
      }

      __swift_project_value_buffer(v0[10], qword_28033D940);
      v24 = OUTLINED_FUNCTION_11_4();
      v25(v24);
      v26 = sub_2698548B4();
      v27 = sub_269854F24();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v0[26];
      v30 = v0[14];
      v31 = v0[10];
      v32 = v0[11];
      if (v28)
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_269684000, v26, v27, "SmartAppSelectionDisambiguationHandler gatherSignals error, additionalSignals is nil", v33, 2u);
        OUTLINED_FUNCTION_10();
      }

      (*(v32 + 8))(v30, v31);
      v34 = type metadata accessor for AppDisambiguationContext;
      goto LABEL_14;
    }

    v14 = v58;
  }

  v37 = *v9;
  v38 = v0[26];
  v39 = v0[22];
  v40 = v0[17];
  v41 = *(v0[18] + 32);
  v0[28] = v41;
  v41(v39, v37, v40);
  v0[29] = sub_2697FF838(v14, v13, v38);

  v42 = *(v16 + *(v17 + 24));
  v43 = *(v42 + 16);
  v44 = MEMORY[0x277D84F90];
  if (v43)
  {
    v59 = MEMORY[0x277D84F90];
    sub_269814F0C(0, v43, 0);
    v44 = v59;
    v45 = *(v59 + 16);
    v46 = 16 * v45;
    v47 = (v42 + 40);
    do
    {
      v49 = *(v47 - 1);
      v48 = *v47;
      v50 = *(v59 + 24);

      if (v45 >= v50 >> 1)
      {
        sub_269814F0C(v50 > 1, v45 + 1, 1);
      }

      *(v59 + 16) = v45 + 1;
      v51 = v59 + v46;
      *(v51 + 32) = v49;
      *(v51 + 40) = v48;
      v46 += 16;
      v47 += 3;
      ++v45;
      --v43;
    }

    while (v43);
  }

  v0[30] = v44;
  v52 = swift_task_alloc();
  v0[31] = v52;
  *v52 = v0;
  v52[1] = sub_2697FEBA4;
  OUTLINED_FUNCTION_112();

  return sub_2697B7D94(v53, v54, v55);
}

uint64_t sub_2697FEBA4()
{
  *(*v1 + 256) = v0;

  if (v0)
  {

    v2 = sub_2697FF560;
  }

  else
  {
    v2 = sub_2697FECD0;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2697FECD0()
{
  v99 = v0;
  v93 = *(v0 + 240);
  v96 = *(v0 + 216);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  (*(v0 + 224))(*(v0 + 168), *(v0 + 160), v3);
  v4 = sub_269853964();
  v5 = sub_269853964();
  sub_2697FE280(v5, v4, sub_269800B44, sub_26980074C);
  v6 = sub_269853974();
  v7 = sub_269853974();
  sub_2697FE280(v7, v6, sub_269800BB4, sub_2698004A4);
  sub_269853944();
  sub_269853944();
  sub_269853954();
  v8 = sub_269853964();
  v74 = *(v2 + 8);
  v74(v1, v3);
  v9 = sub_2697F3AF0(v8, v93);
  v11 = v10;

  v73 = v9;
  [v96 setVideoSmartAppSelectionDisambiguation_];
  v12 = *(v11 + 16);
  v84 = v0;
  if (v12)
  {
    v82 = *(v0 + 56);
    v83 = *(v0 + 64);
    v80 = *(v0 + 40);
    v81 = *(v0 + 48);
    v98[0] = MEMORY[0x277D84F90];
    sub_269814F0C(0, v12, 0);
    v97 = v98[0];
    v15 = sub_2697F1D9C();
    v16 = 0;
    v17 = v11 + 64;
    v76 = v13;
    v77 = v12;
    v75 = v11 + 72;
    v78 = v11 + 64;
    v79 = v11;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v11 + 32))
    {
      if ((*(v17 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_32;
      }

      if (*(v11 + 36) != v13)
      {
        goto LABEL_33;
      }

      v88 = v15 >> 6;
      v86 = v16;
      v87 = v13;
      v85 = v14;
      v18 = *(v80 + 48);
      v19 = *(v0 + 64);
      v20 = *(v0 + 72);
      v21 = *(v0 + 56);
      v22 = *(v11 + 56);
      v23 = (*(v11 + 48) + 16 * v15);
      v24 = v23[1];
      v90 = *v23;
      v94 = *(v0 + 48);
      v25 = sub_269853904();
      OUTLINED_FUNCTION_8();
      v27 = v26;
      (*(v26 + 16))(v20 + v18, v22 + *(v28 + 72) * v15, v25);
      *v19 = v90;
      *(v83 + 8) = v24;
      v29 = *(v27 + 32);
      v29(&v19[*(v80 + 48)], v20 + v18, v25);
      sub_26969B138(v19, v21, &qword_280323B28, &qword_26985C360);
      v30 = *(v82 + 8);
      v31 = *(v80 + 48);
      v32 = *v21;
      *v94 = *v21;
      *(v81 + 8) = v30;
      v29(v94 + v31, v21 + v31, v25);

      sub_26969B0C0(v94, &qword_280323B28, &qword_26985C360);
      sub_26969B0C0(v19, &qword_280323B28, &qword_26985C360);
      v98[0] = v97;
      v0 = *(v97 + 16);
      v33 = *(v97 + 24);
      if (v0 >= v33 >> 1)
      {
        sub_269814F0C(v33 > 1, v0 + 1, 1);
        v97 = v98[0];
      }

      *(v97 + 16) = v0 + 1;
      v34 = v97 + 16 * v0;
      *(v34 + 32) = v32;
      *(v34 + 40) = v30;
      v11 = v79;
      v35 = 1 << *(v79 + 32);
      if (v15 >= v35)
      {
        goto LABEL_34;
      }

      v17 = v78;
      v36 = *(v78 + 8 * v88);
      if ((v36 & (1 << v15)) == 0)
      {
        goto LABEL_35;
      }

      if (*(v79 + 36) != v87)
      {
        goto LABEL_36;
      }

      v37 = v36 & (-2 << (v15 & 0x3F));
      if (v37)
      {
        v35 = __clz(__rbit64(v37)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v38 = v88 << 6;
        v39 = (v75 + 8 * v88);
        v40 = v88 + 1;
        while (v40 < (v35 + 63) >> 6)
        {
          v42 = *v39++;
          v41 = v42;
          v38 += 64;
          ++v40;
          if (v42)
          {
            sub_26968E5C8(v15, v87, v85 & 1);
            v35 = __clz(__rbit64(v41)) + v38;
            goto LABEL_19;
          }
        }

        sub_26968E5C8(v15, v87, v85 & 1);
      }

LABEL_19:
      v14 = 0;
      v16 = v86 + 1;
      v15 = v35;
      v13 = v76;
      v0 = v84;
      if (v86 + 1 == v77)
      {

        goto LABEL_22;
      }
    }

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
LABEL_37:
    OUTLINED_FUNCTION_2_35(&qword_2803226F0);
    goto LABEL_24;
  }

  v97 = MEMORY[0x277D84F90];
LABEL_22:
  if (!*(v97 + 16))
  {
    v66 = *(v0 + 208);
    v65 = *(v0 + 216);
    v67 = v84[22];
    v68 = v84[21];
    v69 = v84[17];

    v74(v68, v69);
    v74(v67, v69);
    OUTLINED_FUNCTION_0_57();
    v64 = v66;
    goto LABEL_28;
  }

  if (qword_2803226F0 != -1)
  {
    goto LABEL_37;
  }

LABEL_24:
  v43 = *(v0 + 104);
  v44 = *(v0 + 88);
  v45 = v84[10];
  v46 = __swift_project_value_buffer(v45, qword_28033D940);
  (*(v44 + 16))(v43, v46, v45);

  v47 = sub_2698548B4();
  v48 = sub_269854F24();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v84[26];
  v51 = v84[27];
  v52 = v84[21];
  v95 = v84[22];
  v53 = v84[17];
  v54 = v84[13];
  v56 = v84[10];
  v55 = v84[11];
  if (v49)
  {
    v92 = v84[21];
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v98[0] = v58;
    *v57 = 136315138;
    v89 = v54;
    v91 = v50;
    v59 = MEMORY[0x26D645BC0](v97, MEMORY[0x277D837D0]);
    v61 = v60;

    v62 = sub_26974F520(v59, v61, v98);

    *(v57 + 4) = v62;
    _os_log_impl(&dword_269684000, v47, v48, "SmartAppSelectionDisambiguationHandler populate has unhandled signals %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v55 + 8))(v89, v56);
    v74(v92, v53);
    v74(v95, v53);
    OUTLINED_FUNCTION_0_57();
    v64 = v91;
  }

  else
  {

    (*(v55 + 8))(v54, v56);
    v74(v52, v53);
    v74(v95, v53);
    OUTLINED_FUNCTION_0_57();
    v64 = v50;
  }

LABEL_28:
  sub_269800C78(v64, v63);

  v70 = OUTLINED_FUNCTION_7_42();

  return v71(v70, 1);
}

void sub_2697FF560()
{
  if (qword_2803226F0 != -1)
  {
    OUTLINED_FUNCTION_2_35(&qword_2803226F0);
  }

  v1 = *(v0 + 256);
  __swift_project_value_buffer(*(v0 + 80), qword_28033D940);
  v2 = OUTLINED_FUNCTION_11_4();
  v3(v2);
  v4 = v1;
  v5 = sub_2698548B4();
  v6 = sub_269854F24();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 256);
  v9 = *(v0 + 208);
  v10 = *(v0 + 176);
  v11 = *(v0 + 136);
  v12 = *(v0 + 144);
  v13 = *(v0 + 88);
  v14 = *(v0 + 96);
  v29 = *(v0 + 80);
  if (v7)
  {
    v26 = *(v0 + 216);
    v27 = *(v0 + 96);
    v15 = swift_slowAlloc();
    v28 = v9;
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315138;
    *(v0 + 16) = v8;
    v17 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v18 = sub_269854AE4();
    v25 = v11;
    v20 = sub_26974F520(v18, v19, &v30);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_269684000, v5, v6, "SmartAppSelectionDisambiguationHandler error gathering signals, %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v13 + 8))(v27, v29);
    (*(v12 + 8))(v10, v25);
    OUTLINED_FUNCTION_0_57();
    v22 = v28;
  }

  else
  {

    (*(v13 + 8))(v14, v29);
    (*(v12 + 8))(v10, v11);
    OUTLINED_FUNCTION_0_57();
    v22 = v9;
  }

  sub_269800C78(v22, v21);
  OUTLINED_FUNCTION_7_44();

  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_112();

  __asm { BRAA            X3, X16 }
}

unsigned __int8 *sub_2697FF838(uint64_t (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t *a3)
{
  v125 = a1;
  v132 = type metadata accessor for StaticSignal(0);
  OUTLINED_FUNCTION_8();
  v126 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v12);
  v135 = &v121[-v13];
  v14 = a3 + *(type metadata accessor for AppDisambiguationContext(0) + 28);
  v127 = type metadata accessor for ModelParams(0);
  v15 = *(v127 + 24);
  v128 = v14;
  v16 = *(v14 + v15);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    *&v138 = MEMORY[0x277D84F90];
    sub_269814F0C(0, v17, 0);
    v18 = v138;
    v19 = (v16 + 40);
    do
    {
      v21 = *(v19 - 1);
      v20 = *v19;
      *&v138 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);

      if (v23 >= v22 >> 1)
      {
        sub_269814F0C(v22 > 1, v23 + 1, 1);
        v18 = v138;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 40) = v20;
      v19 += 3;
      --v17;
    }

    while (v17);
  }

  v134 = a3;
  v25 = *a3;
  v26 = *(*a3 + 16);
  if (v26)
  {
    *&v138 = MEMORY[0x277D84F90];
    sub_269814F0C(0, v26, 0);
    v27 = v138;
    v28 = (v25 + 40);
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;
      *&v138 = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);

      if (v32 >= v31 >> 1)
      {
        sub_269814F0C(v31 > 1, v32 + 1, 1);
        v27 = v138;
      }

      *(v27 + 16) = v32 + 1;
      v33 = v27 + 16 * v32;
      *(v33 + 32) = v29;
      *(v33 + 40) = v30;
      v28 += 3;
      --v26;
    }

    while (v26);
  }

  sub_2697F1EE0(v18);
  v35 = v34;

  sub_2697F1EE0(v36);
  v124 = v37;

  v38 = sub_2697FDD30(v35, v125, a2);
  v42 = sub_26980C0F4(v38, v39, v40, v41);
  v43 = v135;
  *v135 = 0xD000000000000010;
  *(v43 + 1) = 0x800000026987ADF0;
  v44 = v132;
  v45 = *(v132 + 20);
  *&v43[v45] = v42;
  v46 = v43;
  v47 = *MEMORY[0x277D60188];
  v48 = sub_269853904();
  OUTLINED_FUNCTION_4_3();
  v50 = *(v49 + 104);
  v51 = v49 + 104;
  LODWORD(v125) = v47;
  v52 = v50(&v46[v45], v47, v48);
  MEMORY[0x28223BE20](v52);
  *&v121[-16] = v134;
  v53 = sub_269811A10(sub_269800BF8, &v121[-32], v35);
  v57 = sub_26980C0F4(v53, v54, v55, v56);
  v58 = v136;
  *v136 = 0xD000000000000012;
  *(v58 + 1) = 0x800000026987AE10;
  v59 = *(v44 + 20);
  *&v58[v59] = v57;
  v50(&v58[v59], v47, v48);

  v60 = sub_2697FDFE0(v35);

  v64 = sub_26980C0F4(v60, v61, v62, v63);
  v65 = v133;
  *v133 = 0xD000000000000018;
  *(v65 + 1) = 0x800000026987AE30;
  v66 = *(v44 + 20);
  *&v65[v66] = v64;
  v50(&v65[v66], v125, v48);
  v67 = *(v124 + 16);

  v68 = v129;
  *v129 = 0xD000000000000015;
  *(v68 + 8) = 0x800000026987ADB0;
  v69 = *(v44 + 20);
  *(v68 + v69) = v67;
  v70 = *MEMORY[0x277D60170];
  v50((v68 + v69), v70, v48);
  v71 = v134;
  v72 = 1;
  if (*(v134 + 8))
  {
    v72 = 2;
  }

  v73 = v130;
  *v130 = 0xD000000000000017;
  *(v73 + 8) = 0x800000026987AD70;
  v74 = *(v44 + 20);
  *(v73 + v74) = v72;
  v50((v73 + v74), v70, v48);
  v75 = *(v71 + 16);
  v76 = v131;
  *v131 = 0xD000000000000015;
  *(v76 + 8) = 0x800000026987AD90;
  v77 = *(v44 + 20);
  *(v76 + v77) = v75;
  v122 = v70;
  v134 = v48;
  v125 = v50;
  v124 = v51;
  v50((v76 + v77), v70, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280325750, qword_269867200);
  v78 = *(v126 + 72);
  v79 = (*(v126 + 80) + 32) & ~*(v126 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_269858BB0;
  v81 = v80 + v79;
  sub_269800C18(v135, v81, type metadata accessor for StaticSignal);
  sub_269800C18(v136, v81 + v78, type metadata accessor for StaticSignal);
  sub_269800C18(v65, v81 + 2 * v78, type metadata accessor for StaticSignal);
  sub_269800C18(v68, v81 + 3 * v78, type metadata accessor for StaticSignal);
  sub_269800C18(v73, v81 + 4 * v78, type metadata accessor for StaticSignal);
  result = sub_269800C18(v76, v81 + 5 * v78, type metadata accessor for StaticSignal);
  v83 = v127;
  v84 = v128;
  v85 = (v128 + *(v127 + 32));
  v86 = v85[1];
  if (!v86)
  {
    goto LABEL_83;
  }

  v87 = *v85;
  v88 = HIBYTE(v86) & 0xF;
  v89 = v87 & 0xFFFFFFFFFFFFLL;
  if (!((v86 & 0x2000000000000000) != 0 ? HIBYTE(v86) & 0xF : v87 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_83;
  }

  if ((v86 & 0x1000000000000000) != 0)
  {

    sub_2697ECE58(v87, v86, 10);
    v92 = v118;
    v120 = v119;

    if ((v120 & 1) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  if ((v86 & 0x2000000000000000) == 0)
  {
    if ((v87 & 0x1000000000000000) != 0)
    {
      result = ((v86 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_269855264();
    }

    v91 = *result;
    if (v91 == 43)
    {
      if (v89 >= 1)
      {
        if (v89 != 1)
        {
          v92 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_48();
              if (!v94 & v93)
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_1_51();
              if (!v94)
              {
                goto LABEL_81;
              }

              v92 = v101 + v100;
              if (__OFADD__(v101, v100))
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_4_36();
              if (v94)
              {
                goto LABEL_82;
              }
            }
          }

          goto LABEL_72;
        }

        goto LABEL_81;
      }

      goto LABEL_90;
    }

    if (v91 != 45)
    {
      if (v89)
      {
        v92 = 0;
        if (result)
        {
          while (1)
          {
            v104 = *result - 48;
            if (v104 > 9)
            {
              goto LABEL_81;
            }

            v105 = 10 * v92;
            if ((v92 * 10) >> 64 != (10 * v92) >> 63)
            {
              goto LABEL_81;
            }

            v92 = v105 + v104;
            if (__OFADD__(v105, v104))
            {
              goto LABEL_81;
            }

            ++result;
            if (!--v89)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_72;
      }

LABEL_81:
      v92 = 0;
      v97 = 1;
LABEL_82:
      LOBYTE(v137) = v97;
      if ((v97 & 1) == 0)
      {
LABEL_84:
        v108 = v123;
        *v123 = 0x7265566C65646F4DLL;
        *(v108 + 8) = 0xEC0000006E6F6973;
        v109 = v132;
        v110 = *(v132 + 20);
        *(v108 + v110) = v92;
        v125((v108 + v110), v122, v134);
        v111 = (v84 + *(v83 + 28));
        v112 = v111[1];
        v138 = *v111;
        v139 = v112;
        v140 = v111[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324270, &unk_26985F2B0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2698580D0;
        sub_269812708((inited + 32));
        *(inited + 96) = v109;
        *(inited + 104) = sub_26974FF94();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
        sub_269800C18(v108, boxed_opaque_existential_1, type metadata accessor for StaticSignal);
        v115 = sub_269812A00();
        v137 = inited;
        sub_26980B8C4(v115);
        v116 = v137;
        v117 = sub_26974D0C0(v80);
        swift_setDeallocating();
        sub_269819E30();
        v137 = v117;
        sub_26980B8C4(v116);
        sub_269800C78(v108, type metadata accessor for StaticSignal);
        sub_269800C78(v76, type metadata accessor for StaticSignal);
        sub_269800C78(v73, type metadata accessor for StaticSignal);
        sub_269800C78(v68, type metadata accessor for StaticSignal);
        sub_269800C78(v133, type metadata accessor for StaticSignal);
        sub_269800C78(v136, type metadata accessor for StaticSignal);
        sub_269800C78(v135, type metadata accessor for StaticSignal);
        return v137;
      }

LABEL_83:
      v92 = -1;
      goto LABEL_84;
    }

    if (v89 >= 1)
    {
      if (v89 != 1)
      {
        v92 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_48();
            if (!v94 & v93)
            {
              goto LABEL_81;
            }

            OUTLINED_FUNCTION_1_51();
            if (!v94)
            {
              goto LABEL_81;
            }

            v92 = v96 - v95;
            if (__OFSUB__(v96, v95))
            {
              goto LABEL_81;
            }

            OUTLINED_FUNCTION_4_36();
            if (v94)
            {
              goto LABEL_82;
            }
          }
        }

LABEL_72:
        v97 = 0;
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  *&v138 = v87;
  *(&v138 + 1) = v86 & 0xFFFFFFFFFFFFFFLL;
  if (v87 != 43)
  {
    if (v87 != 45)
    {
      if (v88)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_48();
          if (!v94 & v93)
          {
            break;
          }

          OUTLINED_FUNCTION_1_51();
          if (!v94)
          {
            break;
          }

          v92 = v107 + v106;
          if (__OFADD__(v107, v106))
          {
            break;
          }

          OUTLINED_FUNCTION_4_36();
          if (v94)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    if (v88)
    {
      if (v88 != 1)
      {
        OUTLINED_FUNCTION_14_29();
        while (1)
        {
          OUTLINED_FUNCTION_1_48();
          if (!v94 & v93)
          {
            break;
          }

          OUTLINED_FUNCTION_1_51();
          if (!v94)
          {
            break;
          }

          v92 = v99 - v98;
          if (__OFSUB__(v99, v98))
          {
            break;
          }

          OUTLINED_FUNCTION_4_36();
          if (v94)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    goto LABEL_89;
  }

  if (v88)
  {
    if (v88 != 1)
    {
      OUTLINED_FUNCTION_14_29();
      while (1)
      {
        OUTLINED_FUNCTION_1_48();
        if (!v94 & v93)
        {
          break;
        }

        OUTLINED_FUNCTION_1_51();
        if (!v94)
        {
          break;
        }

        v92 = v103 + v102;
        if (__OFADD__(v103, v102))
        {
          break;
        }

        OUTLINED_FUNCTION_4_36();
        if (v94)
        {
          goto LABEL_82;
        }
      }
    }

    goto LABEL_81;
  }

LABEL_91:
  __break(1u);
  return result;
}

uint64_t sub_2698002F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2 + *(type metadata accessor for AppDisambiguationContext(0) + 28);
  v7 = *(v6 + *(type metadata accessor for ModelParams(0) + 24));
  v8 = (v7 + 48);
  v9 = *(v7 + 16) + 1;
  do
  {
    if (!--v9)
    {
      v14 = -1;
      goto LABEL_13;
    }

    result = *(v8 - 2);
    v11 = *v8;
    if (result == v5 && *(v8 - 1) == v4)
    {
      break;
    }

    v8 += 3;
    result = sub_269855584();
  }

  while ((result & 1) == 0);
  v13 = round(v11 * 100.0);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13 < 9.22337204e18)
  {
    v14 = v13;
LABEL_13:
    *a3 = v5;
    a3[1] = v4;
    a3[2] = v14;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_269800408(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2697EC780;

  return sub_2697FE450(a1, a2);
}

uint64_t sub_2698004A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v60 = a5;
  sub_269702AA8();
  v7 = v55;
  v8 = v57;
  v9 = v58;
  v48 = v59;
  v49 = v54[3];
  v45 = v56;
  v10 = (v56 + 64) >> 6;

  v46 = a3;

  v47 = v55;
  if (v58)
  {
    while (1)
    {
      v50 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v49 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v49 + 56) + 8 * v13);
      v54[0] = *v14;
      v54[1] = v15;
      v54[2] = v16;

      v17 = v16;
      v48(&v51, v54);

      v18 = v51;
      v19 = v52;
      v20 = v53;
      v21 = *v60;
      v29 = sub_26973CEF8(v51, v52);
      v30 = v21[2];
      v31 = (v22 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v22;
      if (v21[3] >= v32)
      {
        if ((v50 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322DE8, &unk_2698671E0);
          sub_2698552F4();
        }
      }

      else
      {
        sub_26980E374(v32, v50 & 1, v23, v24, v25, v26, v27, v28, v44, v45, v46, SBYTE4(v46));
        v34 = sub_26973CEF8(v18, v19);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_24;
        }

        v29 = v34;
      }

      v9 &= v9 - 1;
      v36 = *v60;
      if (v33)
      {

        v37 = v36[7];
        v38 = *(v37 + 8 * v29);
        *(v37 + 8 * v29) = v20;
      }

      else
      {
        v36[(v29 >> 6) + 8] |= 1 << v29;
        v39 = (v36[6] + 16 * v29);
        *v39 = v18;
        v39[1] = v19;
        *(v36[7] + 8 * v29) = v20;
        v40 = v36[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_23;
        }

        v36[2] = v42;
      }

      a4 = 1;
      v8 = v11;
      v7 = v47;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_26968E614(v49);
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v50 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_2698555F4();
  __break(1u);
  return result;
}

uint64_t sub_26980074C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v43 = sub_269853904();
  v8 = *(v43 - 8);
  v9 = MEMORY[0x28223BE20](v43);
  v40 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325748, &unk_2698671F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (v39 - v14);
  sub_269702AA8();
  v44 = v48;
  v45 = v49;
  v46 = v50;
  v47 = v51;
  v41 = v8;
  v42 = (v8 + 32);
  v39[4] = v8 + 8;
  v39[5] = v8 + 16;
  v39[3] = v8 + 40;
  v39[1] = a1;

  v39[0] = a3;

  while (1)
  {
    sub_2697020D4(v15);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B38, &qword_26985C370);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      sub_26968E614(v44);
    }

    v18 = *v15;
    v17 = v15[1];
    v19 = *v42;
    v20 = v12;
    (*v42)(v12, v15 + *(v16 + 48), v43);
    v21 = *v52;
    v23 = sub_26973CEF8(v18, v17);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256A0, &qword_269866F70);
        sub_2698552F4();
      }
    }

    else
    {
      sub_26980E388(v26, a4 & 1);
      v28 = sub_26973CEF8(v18, v17);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_16;
      }

      v23 = v28;
    }

    v30 = *v52;
    if (v27)
    {
      v32 = v40;
      v31 = v41;
      v12 = v20;
      v33 = v43;
      (*(v41 + 16))(v40, v20, v43);
      (*(v31 + 8))(v20, v33);

      (*(v31 + 40))(v30[7] + *(v31 + 72) * v23, v32, v33);
      a4 = 1;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v34 = (v30[6] + 16 * v23);
      *v34 = v18;
      v34[1] = v17;
      v12 = v20;
      v19((v30[7] + *(v41 + 72) * v23), v20, v43);
      v35 = v30[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_15;
      }

      v30[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_2698555F4();
  __break(1u);
  return result;
}

uint64_t sub_269800B44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B28, &qword_26985C360) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B38, &qword_26985C370);
  result = sub_269701E58(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_269800BB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_269701E10(&v6, *a1, *(a1 + 8), *(a1 + 16));
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_269800C18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_269800C78(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_44()
{
}

uint64_t sub_269800DCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_269814EEC(0, v1, 0);
  v2 = v31;
  result = sub_269811248();
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v25 = v3 + 64;
  v26 = v3 + 56;
  v27 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v30 = v6;
      v28 = v8;
      v29 = v5;
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v15 = *(v31 + 16);
      v14 = *(v31 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_269814EEC((v14 > 1), v15 + 1, 1);
      }

      *(v31 + 16) = v15 + 1;
      v16 = (v31 + 24 * v15);
      v16[4] = v12;
      v16[5] = v13;
      v16[6] = -1;
      if (v30)
      {
        goto LABEL_29;
      }

      v9 = v26;
      v3 = v27;
      v17 = 1 << *(v27 + 32);
      if (v7 >= v17)
      {
        goto LABEL_26;
      }

      v18 = *(v26 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v27 + 36) != v29)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (v25 + 8 * v10);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_26968E5C8(v7, v29, 0);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        result = sub_26968E5C8(v7, v29, 0);
      }

LABEL_19:
      v8 = v28 + 1;
      if (v28 + 1 == v1)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v27 + 36);
      v7 = v17;
      if (v17 < 0)
      {
        break;
      }
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
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_269801010(void *a1@<X0>, char *a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for AppEvent(0);
  OUTLINED_FUNCTION_3_20();
  v81 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12();
  v72 = v6 - v7;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v8);
  v79 = (&v71 - v9);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v71 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280325A60, &qword_2698672B0);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_12();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v78 = &v71 - v18;
  OUTLINED_FUNCTION_22_0();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v71 - v21;
  MEMORY[0x28223BE20](v20);
  v80 = &v71 - v23;
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v3);
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_1();
  (*(v33 + 16))(v32 - v31);
  v82 = sub_269854C34();
  v34 = *(v82 + 16);
  if (v34)
  {
    v35 = 0;
    v36 = v82 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v75 = v3;
    v76 = v12;
    v77 = v36;
    v74 = v22;
    while (v35 < *(v82 + 16))
    {
      OUTLINED_FUNCTION_0_58();
      sub_269802B44();
      if (v12[*(v3 + 24)])
      {
        v37 = v16;
        v38 = v78;
        sub_269802A74();
        if (__swift_getEnumTagSinglePayload(v38, 1, v3) == 1)
        {
          sub_26969B0C0(v38, &unk_280325A60, &qword_2698672B0);
          v39 = v80;
        }

        else
        {
          OUTLINED_FUNCTION_0_58();
          v40 = v79;
          sub_269802ACC();
          v42 = *v12;
          v41 = *(v12 + 1);
          v43 = *v12 == *v40 && v41 == v40[1];
          if (v43 || (sub_269855584() & 1) != 0)
          {

            sub_26969B0C0(v74, &unk_280325A60, &qword_2698672B0);
            sub_26969B0C0(v80, &unk_280325A60, &qword_2698672B0);
            v52 = *(v75 + 20);
            v53 = type metadata accessor for AppLifecycle(0);
            v54 = *(v53 + 20);
            v55 = sub_269851D34();
            OUTLINED_FUNCTION_4_3();
            v57 = *(v56 + 16);
            v58 = v73;
            v59 = v76;
            v57(&v73[v54], &v76[v52], v55);
            v60 = v79;
            v57(&v58[*(v53 + 24)], v79 + v52, v55);
            *v58 = v42;
            *(v58 + 1) = v41;

            sub_2698027DC(v60, type metadata accessor for AppEvent);
            sub_2698027DC(v59, type metadata accessor for AppEvent);
            OUTLINED_FUNCTION_24_4();
            v51 = v53;
            goto LABEL_18;
          }

          OUTLINED_FUNCTION_4_37();
          sub_2698027DC(v79, v44);
          v16 = v37;
          v39 = v80;
          v22 = v74;
          v3 = v75;
          v12 = v76;
        }

        sub_269802834(v39, v16);
        if (__swift_getEnumTagSinglePayload(v16, 1, v3) != 1)
        {
          sub_26969B0C0(v22, &unk_280325A60, &qword_2698672B0);

          OUTLINED_FUNCTION_0_58();
          v61 = v72;
          sub_269802ACC();
          v62 = *v12;
          v81 = *(v12 + 1);
          v82 = v62;
          v63 = *(v3 + 20);
          v64 = type metadata accessor for AppLifecycle(0);
          v65 = *(v64 + 20);
          v66 = sub_269851D34();
          OUTLINED_FUNCTION_4_3();
          v68 = *(v67 + 16);
          v69 = v73;
          v68(&v73[v65], &v12[v63], v66);
          v68(&v69[*(v64 + 24)], (v61 + *(v3 + 20)), v66);
          v70 = v81;

          sub_2698027DC(v61, type metadata accessor for AppEvent);
          *v69 = v82;
          *(v69 + 1) = v70;
          sub_2698027DC(v12, type metadata accessor for AppEvent);
          OUTLINED_FUNCTION_24_4();
          v51 = v64;
          goto LABEL_18;
        }

        sub_26969B0C0(v16, &unk_280325A60, &qword_2698672B0);
        OUTLINED_FUNCTION_0_58();
        sub_269802ACC();
      }

      else
      {
        sub_26969B0C0(v22, &unk_280325A60, &qword_2698672B0);
        OUTLINED_FUNCTION_0_58();
        sub_269802ACC();
      }

      OUTLINED_FUNCTION_24_4();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v3);
      if (v34 == ++v35)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_26969B0C0(v22, &unk_280325A60, &qword_2698672B0);
    sub_26969B0C0(v80, &unk_280325A60, &qword_2698672B0);
    type metadata accessor for AppLifecycle(0);
    OUTLINED_FUNCTION_57();
LABEL_18:
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
    OUTLINED_FUNCTION_21_0();
  }
}

uint64_t sub_269801660@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_269851D34();
  OUTLINED_FUNCTION_3_20();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = *a1;
  if ([v11 type] != 3)
  {
    v12 = sub_26980275C(v11);
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      v16 = [v11 absoluteTimestamp];
      if (v16)
      {
        v17 = v16;
        sub_269851D14();

        v18 = type metadata accessor for AppEvent(0);
        (*(v6 + 16))(a2 + *(v18 + 20), v10, v4);
        v19 = [v11 starting];
        (*(v6 + 8))(v10, v4);
        *a2 = v14;
        a2[1] = v15;
        *(a2 + *(v18 + 24)) = v19;
        OUTLINED_FUNCTION_24_4();
        return __swift_storeEnumTagSinglePayload(v20, v21, v22, v18);
      }
    }
  }

  type metadata accessor for AppEvent(0);
  v24 = OUTLINED_FUNCTION_3_0();

  return __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
}

void sub_26980181C(char *a2@<X8>)
{
  v3 = type metadata accessor for AppEvent(0);
  OUTLINED_FUNCTION_3_20();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12();
  v78 = (v7 - v8);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v9);
  v77 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280325A60, &qword_2698672B0);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_12();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v73 - v16;
  OUTLINED_FUNCTION_57();
  v76 = v3;
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v3);
  v21 = OUTLINED_FUNCTION_50_0();
  __swift_project_boxed_opaque_existential_1(v21, v22);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_1();
  (*(v26 + 16))(v25 - v24);
  v27 = sub_269854C34();
  v28 = v27;
  v29 = *(v27 + 16);
  if (v29)
  {
    v73 = a2;
    v74 = v17;
    v30 = 0;
    v31 = v5;
    v32 = &unk_280325A60;
    v33 = v76;
    v34 = v77;
    v75 = v27;
    while (v30 < *(v28 + 16))
    {
      OUTLINED_FUNCTION_0_58();
      sub_269802B44();
      if (v34[*(v33 + 24)])
      {
        sub_269802A74();
        if (__swift_getEnumTagSinglePayload(v14, 1, v33) == 1)
        {
          sub_26969B0C0(v17, &unk_280325A60, &qword_2698672B0);

          sub_26969B0C0(v14, &unk_280325A60, &qword_2698672B0);
          v65 = *v34;
          v64 = *(v34 + 1);
          v66 = *(v33 + 20);
          v53 = type metadata accessor for AppLifecycle(0);
          v67 = *(v53 + 20);
          v68 = sub_269851D34();
          OUTLINED_FUNCTION_4_3();
          v70 = *(v69 + 16);
          v71 = v73;
          v70(&v73[v67], &v34[v66], v68);
          v70(&v71[*(v53 + 24)], &v34[v66], v68);
          *v71 = v65;
          *(v71 + 1) = v64;

          OUTLINED_FUNCTION_4_37();
          sub_2698027DC(v34, v72);
          goto LABEL_17;
        }

        v35 = v32;
        v36 = v29;
        v37 = v31;
        OUTLINED_FUNCTION_0_58();
        v38 = v78;
        sub_269802ACC();
        v39 = v34;
        v40 = *v34;
        v41 = *(v39 + 1);
        v42 = v40 == *v38 && v41 == v38[1];
        if (v42 || (sub_269855584() & 1) != 0)
        {
          sub_26969B0C0(v74, &unk_280325A60, &qword_2698672B0);

          v51 = v76;
          v52 = *(v76 + 20);
          v53 = type metadata accessor for AppLifecycle(0);
          v54 = *(v53 + 20);
          v55 = sub_269851D34();
          OUTLINED_FUNCTION_4_3();
          v57 = *(v56 + 16);
          v58 = v73;
          v59 = &v73[v54];
          v60 = v77;
          v57(v59, &v77[v52], v55);
          v61 = *(v51 + 20);
          v62 = v78;
          v57(&v58[*(v53 + 24)], v78 + v61, v55);
          *v58 = v40;
          *(v58 + 1) = v41;

          OUTLINED_FUNCTION_5_40();
          sub_2698027DC(v62, v63);
          sub_2698027DC(v60, v41);
LABEL_17:
          OUTLINED_FUNCTION_24_4();
          v50 = v53;
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_5_40();
        sub_2698027DC(v78, v43);
        v34 = v77;
        sub_2698027DC(v77, v41);
        v31 = v37;
        v29 = v36;
        v28 = v75;
        v17 = v74;
        v32 = v35;
        v33 = v76;
      }

      else
      {
        sub_26969B0C0(v17, v32, &qword_2698672B0);
        OUTLINED_FUNCTION_0_58();
        sub_269802ACC();
        OUTLINED_FUNCTION_24_4();
        __swift_storeEnumTagSinglePayload(v44, v45, v46, v33);
      }

      if (v29 == ++v30)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    sub_26969B0C0(v17, &unk_280325A60, &qword_2698672B0);
    type metadata accessor for AppLifecycle(0);
    OUTLINED_FUNCTION_57();
LABEL_18:
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    OUTLINED_FUNCTION_21_0();
  }
}

void sub_269801D50(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_269851D34();
  OUTLINED_FUNCTION_3_20();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = *a1;
  v15 = sub_26980275C(*a1);
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v19 = [v14 absoluteTimestamp];
    if (v19)
    {
      v20 = v19;
      sub_269851D14();

      v21 = *(v6 + 32);
      v21(v13, v10, v4);
      v22 = [v14 playbackState];
      if (v22 - 1 >= 5)
      {
        (*(v6 + 8))(v13, v4);

        type metadata accessor for AppEvent(0);
        v25 = OUTLINED_FUNCTION_3_0();
      }

      else
      {
        v23 = 1u >> (v22 - 1);
        v24 = type metadata accessor for AppEvent(0);
        v21(a2 + *(v24 + 20), v13, v4);
        *a2 = v17;
        a2[1] = v18;
        *(a2 + *(v24 + 24)) = v23;
        OUTLINED_FUNCTION_24_4();
        v28 = v24;
      }

      __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
      OUTLINED_FUNCTION_21_0();
      return;
    }
  }

  type metadata accessor for AppEvent(0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_21_0();

  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
}

uint64_t sub_269801F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A40, &qword_2698672A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v14 - v6);
  sub_269802A74();
  v8 = type metadata accessor for AppLifecycle(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_26969B0C0(v7, &qword_280325A40, &qword_2698672A8);
    return 0;
  }

  v11 = *v7;
  v10 = v7[1];

  sub_2698027DC(v7, type metadata accessor for AppLifecycle);
  if (v11 == v4 && v10 == v3)
  {
  }

  else
  {
    v13 = sub_269855584();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_26980209C()
{

  return v0;
}

uint64_t sub_2698020CC()
{
  sub_26980209C();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_269802160(uint64_t a1)
{
  result = sub_269851D34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2698021DC(uint64_t a1, uint64_t a2)
{
  v10 = *v2;
  v9 = *(v2 + 2);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = v2[1];
  *(v5 + 32) = *v2;
  *(v5 + 48) = v6;
  *(v5 + 64) = v2[2];

  sub_269698250(&v10, v8);
  sub_269802A74();

  sub_269853B24();
}

uint64_t sub_2698022C0(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v26[1] = a3;
  v27 = a2;
  v5 = sub_269853904();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A40, &qword_2698672A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v26 - v10;
  v12 = type metadata accessor for AppLifecycle(0);
  MEMORY[0x28223BE20](v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269802A74();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_26969B0C0(v11, &qword_280325A40, &qword_2698672A8);
    v15 = sub_269800DCC(*(a4 + 16));
    *v8 = sub_26980C0F4(v15, v16, v17, v18);
    (*(v6 + 104))(v8, *MEMORY[0x277D60188], v5);
    v27(v8);
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v20 = sub_269802ACC();
    MEMORY[0x28223BE20](v20);
    v26[-2] = a4;
    v26[-1] = v14;
    v22 = sub_269811A10(sub_269802B24, &v26[-4], v21);
    *v8 = sub_26980C0F4(v22, v23, v24, v25);
    (*(v6 + 104))(v8, *MEMORY[0x277D60188], v5);
    v27(v8);
    (*(v6 + 8))(v8, v5);
    return sub_2698027DC(v14, type metadata accessor for AppLifecycle);
  }
}

uint64_t sub_2698025BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A40, &qword_2698672A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v11 = *a1;
  v10 = a1[1];
  v12 = *(a2 + 32);
  sub_269802B44();
  v13 = type metadata accessor for AppLifecycle(0);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
  v14 = v12(v11, v10, v9);
  sub_26969B0C0(v9, &qword_280325A40, &qword_2698672A8);
  *a4 = v11;
  a4[1] = v10;
  a4[2] = v14;
}

uint64_t sub_2698026E4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_26980275C(void *a1)
{
  v1 = [a1 bundleID];
  if (v1)
  {
    v2 = v1;
    sub_269854A94();
  }

  return OUTLINED_FUNCTION_50_0();
}

uint64_t sub_2698027DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_269802834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280325A60, &qword_2698672B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_269851D34();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_269851D34();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2698029D4(uint64_t a1)
{
  result = sub_269851D34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_269802A74()
{
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4_3();
  v3 = OUTLINED_FUNCTION_50_0();
  v4(v3);
  return v0;
}

uint64_t sub_269802ACC()
{
  OUTLINED_FUNCTION_31_2();
  v1(0);
  OUTLINED_FUNCTION_4_3();
  v2 = OUTLINED_FUNCTION_50_0();
  v3(v2);
  return v0;
}

uint64_t sub_269802B44()
{
  OUTLINED_FUNCTION_31_2();
  v1(0);
  OUTLINED_FUNCTION_4_3();
  v2 = OUTLINED_FUNCTION_50_0();
  v3(v2);
  return v0;
}

uint64_t sub_269802BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1;
    v39 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v4, 0);
    v6 = v39;
    result = sub_269811248();
    v10 = result;
    v11 = 0;
    v38 = v5 + 56;
    v30 = v5 + 64;
    v31 = v4;
    v32 = v5;
    v33 = a3;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(v5 + 32))
      {
        v12 = v10 >> 6;
        if ((*(v38 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_32;
        }

        if (*(v5 + 36) != v8)
        {
          goto LABEL_33;
        }

        v13 = (*(v5 + 48) + 16 * v10);
        v14 = *v13;
        v15 = v13[1];
        v16 = *v13 == a2 && v15 == a3;
        v35 = v11;
        v36 = v8;
        v37 = v9;
        if (v16)
        {
          v17 = 1;
        }

        else
        {
          v17 = sub_269855584() & 1;
        }

        v19 = *(v39 + 16);
        v18 = *(v39 + 24);

        if (v19 >= v18 >> 1)
        {
          result = sub_269814EEC((v18 > 1), v19 + 1, 1);
        }

        *(v39 + 16) = v19 + 1;
        v20 = (v39 + 24 * v19);
        v20[4] = v14;
        v20[5] = v15;
        v20[6] = v17;
        if (v37)
        {
          goto LABEL_37;
        }

        v5 = v32;
        a3 = v33;
        v21 = 1 << *(v32 + 32);
        if (v10 >= v21)
        {
          goto LABEL_34;
        }

        v22 = *(v38 + 8 * v12);
        if ((v22 & (1 << v10)) == 0)
        {
          goto LABEL_35;
        }

        if (*(v32 + 36) != v36)
        {
          goto LABEL_36;
        }

        v23 = v22 & (-2 << (v10 & 0x3F));
        if (v23)
        {
          v21 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v24 = v31;
        }

        else
        {
          v25 = v12 << 6;
          v26 = v12 + 1;
          v24 = v31;
          v27 = (v30 + 8 * v12);
          while (v26 < (v21 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              result = sub_26968E5C8(v10, v36, 0);
              v21 = __clz(__rbit64(v28)) + v25;
              goto LABEL_25;
            }
          }

          result = sub_26968E5C8(v10, v36, 0);
        }

LABEL_25:
        v11 = v35 + 1;
        if (v35 + 1 == v24)
        {

          return v6;
        }

        v9 = 0;
        v8 = *(v32 + 36);
        v10 = v21;
        if (v21 < 0)
        {
          break;
        }
      }
    }

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
LABEL_37:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_269802EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_269854964();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_2697F1EE0(v11);
  v13 = v12;
  sub_2696ADFE4();
  (*(v8 + 104))(v10, *MEMORY[0x277D851B8], v7);
  v14 = sub_269854FC4();
  (*(v8 + 8))(v10, v7);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_2698035EC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26969EBEC;
  aBlock[3] = &block_descriptor_22;
  v16 = _Block_copy(aBlock);
  v17 = v14;

  MRMediaRemoteGetNowPlayingClient();
  _Block_release(v16);
}

id sub_269803088(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v64 = a3;
  v65 = a5;
  v8 = sub_269853904();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_2698548D4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v59 - v17;
  if (a2)
  {
    v62 = a4;
    v63 = v9;
    v19 = qword_2803226F0;
    v20 = a2;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v12, qword_28033D940);
    (*(v13 + 16))(v18, v21, v12);
    v22 = v20;
    v23 = sub_2698548B4();
    v24 = sub_269854F24();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v61 = v8;
      v27 = v26;
      v66 = v22;
      v67 = v26;
      *v25 = 136315138;
      type metadata accessor for CFError(0);
      v28 = v22;
      v29 = sub_269854AE4();
      v31 = sub_26974F520(v29, v30, &v67);
      v60 = v11;
      v32 = v31;

      *(v25 + 4) = v32;
      _os_log_impl(&dword_269684000, v23, v24, "CurrentNowPlayingAppSignal got error %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v33 = v27;
      v8 = v61;
      MEMORY[0x26D647170](v33, -1, -1);
      MEMORY[0x26D647170](v25, -1, -1);

      (*(v13 + 8))(v18, v12);
      v11 = v60;
    }

    else
    {

      (*(v13 + 8))(v18, v12);
    }

    v44 = v62;
    v45 = sub_269800DCC(v64);
    *v11 = sub_26980C0F4(v45, v46, v47, v48);
    v9 = v63;
    (*(v63 + 104))(v11, *MEMORY[0x277D60188], v8);
    v44(v11);

    return (*(v9 + 8))(v11, v8);
  }

  if (!a1)
  {
    if (qword_2803226F0 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v12, qword_28033D940);
    (*(v13 + 16))(v16, v49, v12);
    v50 = sub_2698548B4();
    v51 = sub_269854F14();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = a4;
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_269684000, v50, v51, "CurrentNowPlayingAppSignal got nil now playing client", v53, 2u);
      v54 = v53;
      a4 = v52;
      MEMORY[0x26D647170](v54, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
    v55 = sub_269800DCC(v64);
    *v11 = sub_26980C0F4(v55, v56, v57, v58);
    (*(v9 + 104))(v11, *MEMORY[0x277D60188], v8);
    a4(v11);
    return (*(v9 + 8))(v11, v8);
  }

  v34 = a4;
  result = MRNowPlayingClientGetBundleIdentifier();
  if (result)
  {
    v36 = result;
    v37 = sub_269854A94();
    v39 = v38;

    v40 = sub_269802BFC(v64, v37, v39);

    *v11 = sub_26980C0F4(v40, v41, v42, v43);
    (*(v9 + 104))(v11, *MEMORY[0x277D60188], v8);
    v34(v11);
    return (*(v9 + 8))(v11, v8);
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_269803620(uint64_t a1, uint64_t a2)
{
  v4 = sub_269854964();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2696ADFE4();
  (*(v5 + 104))(v7, *MEMORY[0x277D851B8], v4);
  v8 = sub_269854FC4();
  (*(v5 + 8))(v7, v4);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  aBlock[4] = sub_2698038EC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26969F4F8;
  aBlock[3] = &block_descriptor_23;
  v10 = _Block_copy(aBlock);
  v11 = v8;

  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
  _Block_release(v10);
}

uint64_t sub_2698037E0(unsigned int a1, void (*a2)(void *))
{
  v4 = sub_269853904();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = a1;
  (*(v5 + 104))(v7, *MEMORY[0x277D60170], v4);
  a2(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269803934()
{

  return v0;
}

uint64_t sub_26980395C()
{
  sub_269803934();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2698039B4()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_269803A1C(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = sub_269853904();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = (a5 & 1u) + 1;
  (*(v8 + 104))(v10, *MEMORY[0x277D60170], v7);
  a1(v10);
  return (*(v8 + 8))(v10, v7);
}

void sub_269803B30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v47 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v3, 0);
    v5 = v47;
    v7 = sub_269811248();
    v9 = v8;
    v10 = 0;
    v46 = v4 + 56;
    v37 = v4 + 64;
    v38 = v3;
    v39 = v4;
    v40 = a2;
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < 1 << *(v4 + 32))
      {
        v11 = v7 >> 6;
        if ((*(v46 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          goto LABEL_34;
        }

        if (*(v4 + 36) != v6)
        {
          goto LABEL_35;
        }

        v45 = v6;
        v12 = (*(v4 + 48) + 16 * v7);
        v14 = *v12;
        v13 = v12[1];
        v15 = *(a2 + 16);

        v44 = v9;
        v43 = v14;
        if (v15)
        {
          v41 = v5;

          v16 = sub_26973CEF8(v14, v13);
          if ((v17 & 1) != 0 && (v18 = *(*(a2 + 56) + 8 * v16), objc_opt_self(), swift_dynamicCastObjCClass()))
          {
            v19 = v18;
            v20 = sub_269854FD4();
            v22 = v21;

            if (v22)
            {
              v23 = -1;
            }

            else
            {
              v23 = v20;
            }
          }

          else
          {

            v23 = -1;
          }

          v5 = v41;
        }

        else
        {
          v23 = -1;
        }

        v25 = *(v5 + 16);
        v24 = *(v5 + 24);
        v26 = v45;
        if (v25 >= v24 >> 1)
        {
          sub_269814EEC((v24 > 1), v25 + 1, 1);
          v26 = v45;
        }

        *(v5 + 16) = v25 + 1;
        v27 = (v5 + 24 * v25);
        v27[4] = v43;
        v27[5] = v13;
        v27[6] = v23;
        if (v44)
        {
          goto LABEL_39;
        }

        v4 = v39;
        a2 = v40;
        v28 = 1 << *(v39 + 32);
        if (v7 >= v28)
        {
          goto LABEL_36;
        }

        v29 = *(v46 + 8 * v11);
        if ((v29 & (1 << v7)) == 0)
        {
          goto LABEL_37;
        }

        if (*(v39 + 36) != v26)
        {
          goto LABEL_38;
        }

        v30 = v29 & (-2 << (v7 & 0x3F));
        if (v30)
        {
          v28 = __clz(__rbit64(v30)) | v7 & 0x7FFFFFFFFFFFFFC0;
          v31 = v38;
        }

        else
        {
          v42 = v5;
          v32 = v11 << 6;
          v33 = v11 + 1;
          v31 = v38;
          v34 = (v37 + 8 * v11);
          while (v33 < (v28 + 63) >> 6)
          {
            v36 = *v34++;
            v35 = v36;
            v32 += 64;
            ++v33;
            if (v36)
            {
              sub_26968E5C8(v7, v26, 0);
              v28 = __clz(__rbit64(v35)) + v32;
              goto LABEL_28;
            }
          }

          sub_26968E5C8(v7, v26, 0);
LABEL_28:
          v5 = v42;
        }

        if (++v10 == v31)
        {
          goto LABEL_32;
        }

        v9 = 0;
        v6 = *(v39 + 36);
        v7 = v28;
        if (v28 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {
LABEL_32:
  }
}

uint64_t sub_269803E50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v41 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v3, 0);
    v5 = v41;
    result = sub_269811248();
    v8 = result;
    v10 = v9;
    v11 = 0;
    v40 = v4 + 56;
    v33 = v4 + 64;
    v34 = v3;
    v35 = v4;
    v36 = a2;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v8 < 1 << *(v4 + 32))
      {
        v12 = v8 >> 6;
        if ((*(v40 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_34;
        }

        if (*(v4 + 36) != v7)
        {
          goto LABEL_35;
        }

        v38 = v7;
        v13 = (*(v4 + 48) + 16 * v8);
        v15 = *v13;
        v14 = v13[1];
        v16 = *(a2 + 16);

        v37 = v10;
        if (v16)
        {

          sub_26973CEF8(v15, v14);
          if ((v17 & 1) != 0 && (objc_opt_self(), (v18 = swift_dynamicCastObjCClass()) != 0))
          {
            v19 = [v18 subscriptionStatus];
          }

          else
          {
            v19 = -1;
          }
        }

        else
        {
          v19 = -1;
        }

        v21 = *(v5 + 16);
        v20 = *(v5 + 24);
        v22 = v38;
        if (v21 >= v20 >> 1)
        {
          result = sub_269814EEC((v20 > 1), v21 + 1, 1);
          v22 = v38;
        }

        *(v5 + 16) = v21 + 1;
        v23 = (v5 + 24 * v21);
        v23[4] = v15;
        v23[5] = v14;
        v23[6] = v19;
        if (v37)
        {
          goto LABEL_39;
        }

        v4 = v35;
        a2 = v36;
        v24 = 1 << *(v35 + 32);
        if (v8 >= v24)
        {
          goto LABEL_36;
        }

        v25 = *(v40 + 8 * v12);
        if ((v25 & (1 << v8)) == 0)
        {
          goto LABEL_37;
        }

        if (*(v35 + 36) != v22)
        {
          goto LABEL_38;
        }

        v26 = v25 & (-2 << (v8 & 0x3F));
        if (v26)
        {
          v24 = __clz(__rbit64(v26)) | v8 & 0x7FFFFFFFFFFFFFC0;
          v27 = v34;
        }

        else
        {
          v39 = v5;
          v28 = v12 << 6;
          v29 = v12 + 1;
          v27 = v34;
          v30 = (v33 + 8 * v12);
          while (v29 < (v24 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              result = sub_26968E5C8(v8, v22, 0);
              v24 = __clz(__rbit64(v31)) + v28;
              goto LABEL_26;
            }
          }

          result = sub_26968E5C8(v8, v22, 0);
LABEL_26:
          v5 = v39;
        }

        if (++v11 == v27)
        {

          return v5;
        }

        v10 = 0;
        v7 = *(v35 + 36);
        v8 = v24;
        if (v24 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_269804154(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_26969329C(0, &qword_2815718F8, 0x277CD42D8);
  v3 = sub_2698549E4();

  v2(v3);
}

uint64_t sub_2698041E8(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  OUTLINED_FUNCTION_23();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_269804540;
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325800, &unk_2698675F0);
  swift_allocObject();

  sub_269809F98(sub_2698045DC, v3);
  v5 = v4;
  OUTLINED_FUNCTION_23();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  v7 = type metadata accessor for GetterSignal();
  v8 = swift_allocObject();
  v8[2] = 0xD000000000000027;
  v8[3] = 0x800000026987AB10;
  v8[4] = sub_2698047E0;
  v8[5] = v6;
  OUTLINED_FUNCTION_23();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  v10[2] = 0xD000000000000025;
  v10[3] = 0x800000026987AB40;
  v10[4] = sub_269804854;
  v10[5] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324270, &unk_26985F2B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2698580D0;
  *(v11 + 56) = v7;
  v12 = sub_26980488C();
  *(v11 + 32) = v8;
  *(v11 + 96) = v7;
  *(v11 + 104) = v12;
  *(v11 + 64) = v12;
  *(v11 + 72) = v10;
  swift_bridgeObjectRetain_n();

  return v11;
}

void sub_2698043E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedStore];
  sub_26969329C(0, &qword_2815718D8, 0x277CD3DD8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_269854E34();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[4] = sub_26980498C;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_269804154;
  v10[3] = &block_descriptor_24;
  v9 = _Block_copy(v10);

  [v5 userContextOfClass:ObjCClassFromMetadata forBundleIdentifiers:v7 withCompletion:v9];
  _Block_release(v9);
}

uint64_t sub_269804548(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1), uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(sub_269693184, v6);
}

uint64_t sub_2698045E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a1;
  v10[4] = a2;

  sub_26980A1DC(a6, v10);
}

uint64_t sub_269804674(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v9 = sub_269853904();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  v15 = a5(a2, v14);

  *v12 = sub_26980C0F4(v15, v16, v17, v18);
  (*(v10 + 104))(v12, *MEMORY[0x277D60188], v9);
  a3(v12);
  return (*(v10 + 8))(v12, v9);
}

uint64_t objectdestroy_5Tm()
{

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

unint64_t sub_26980488C()
{
  result = qword_280325808;
  if (!qword_280325808)
  {
    type metadata accessor for GetterSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325808);
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2698049DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v45 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v3, 0);
    v5 = v45;
    result = sub_269811248();
    v9 = result;
    v10 = 0;
    v44 = v4 + 56;
    v36 = v4 + 64;
    v38 = v4;
    v39 = a2;
    v37 = v3;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(v4 + 32))
      {
        v11 = v9 >> 6;
        if ((*(v44 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_37;
        }

        if (*(v4 + 36) != v7)
        {
          goto LABEL_38;
        }

        v41 = v8;
        v42 = v7;
        v12 = (*(v4 + 48) + 16 * v9);
        v14 = *v12;
        v13 = v12[1];
        v15 = *(a2 + 16);

        v40 = v14;
        if (v15)
        {
          result = sub_26973CEF8(v14, v13);
          if (v16)
          {
            result = [*(*(a2 + 56) + 8 * result) doubleValue];
            v18 = v17 * 100.0;
            v19 = round(v18);
            v20 = v19 >= 9.22337204e18 || v19 <= -9.22337204e18;
            v21 = llround(v18);
            if (v20)
            {
              v22 = -1;
            }

            else
            {
              v22 = v21;
            }
          }

          else
          {
            v22 = -1;
          }
        }

        else
        {
          v22 = -1;
        }

        v23 = v42;
        v25 = *(v5 + 16);
        v24 = *(v5 + 24);
        if (v25 >= v24 >> 1)
        {
          result = sub_269814EEC((v24 > 1), v25 + 1, 1);
          v23 = v42;
        }

        *(v5 + 16) = v25 + 1;
        v26 = (v5 + 24 * v25);
        v26[4] = v40;
        v26[5] = v13;
        v26[6] = v22;
        if (v41)
        {
          goto LABEL_42;
        }

        v4 = v38;
        a2 = v39;
        v27 = 1 << *(v38 + 32);
        if (v9 >= v27)
        {
          goto LABEL_39;
        }

        v28 = *(v44 + 8 * v11);
        if ((v28 & (1 << v9)) == 0)
        {
          goto LABEL_40;
        }

        if (*(v38 + 36) != v23)
        {
          goto LABEL_41;
        }

        v29 = v28 & (-2 << (v9 & 0x3F));
        if (v29)
        {
          v27 = __clz(__rbit64(v29)) | v9 & 0x7FFFFFFFFFFFFFC0;
          v30 = v37;
        }

        else
        {
          v43 = v5;
          v31 = v11 << 6;
          v32 = v11 + 1;
          v30 = v37;
          v33 = (v36 + 8 * v11);
          while (v32 < (v27 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              result = sub_26968E5C8(v9, v23, 0);
              v27 = __clz(__rbit64(v34)) + v31;
              goto LABEL_29;
            }
          }

          result = sub_26968E5C8(v9, v23, 0);
LABEL_29:
          v5 = v43;
        }

        if (++v10 == v30)
        {

          return v5;
        }

        v8 = 0;
        v7 = *(v38 + 36);
        v9 = v27;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_269804CE4(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a1;
  v8 = sub_269853904();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = [objc_allocWithZone(MEMORY[0x277D3A0D0]) init];

  sub_2697DEC04(v13);
  v14 = sub_269854CA4();

  v15 = [v12 relativeAppUsageProbabilitiesForCandidateBundleIds:v14 daysAgo:a6];

  sub_269694CBC();
  v16 = sub_2698549E4();

  v17 = sub_2698049DC(a5, v16);

  *v11 = sub_26980C0F4(v17, v18, v19, v20);
  (*(v9 + 104))(v11, *MEMORY[0x277D60188], v8);
  v22(v11);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_269804ED4(uint64_t a1)
{
  v15 = MEMORY[0x277D84F90];
  sub_269815070(0, 3, 0);
  v2 = 0;
  v3 = v15;
  do
  {
    v4 = *(&unk_287A394B8 + v2 + 32);
    *&v11 = 0x6567617355707041;
    *(&v11 + 1) = 0xE90000000000002ELL;
    v14 = v4;
    v5 = sub_269855544();
    MEMORY[0x26D645A60](v5);

    MEMORY[0x26D645A60](100, 0xE100000000000000);
    v6 = v11;
    v15 = v3;
    v8 = *(v3 + 16);
    v7 = *(v3 + 24);

    if (v8 >= v7 >> 1)
    {
      sub_269815070((v7 > 1), v8 + 1, 1);
      v3 = v15;
    }

    v12 = &type metadata for PSAppUsageRelativeSignal;
    v13 = sub_269805058();
    v9 = swift_allocObject();
    *&v11 = v9;
    *(v9 + 16) = v6;
    *(v9 + 32) = a1;
    *(v9 + 40) = v4;
    *(v3 + 16) = v8 + 1;
    sub_26968E5D4(&v11, v3 + 40 * v8 + 32);
    v2 += 8;
  }

  while (v2 != 24);
  return v3;
}

unint64_t sub_269805058()
{
  result = qword_280325810;
  if (!qword_280325810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325810);
  }

  return result;
}

uint64_t sub_2698050AC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v8 = a1;
    v49 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v5, 0);
    v9 = v49;
    result = sub_269811248();
    v13 = result;
    v14 = 0;
    v48 = v8 + 56;
    v41 = v8 + 64;
    v42 = v5;
    v43 = v8;
    if ((result & 0x8000000000000000) == 0)
    {
      while (1)
      {
        if (v13 >= 1 << *(v8 + 32))
        {
          goto LABEL_37;
        }

        v15 = v13 >> 6;
        if ((*(v48 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_38;
        }

        if (*(v8 + 36) != v11)
        {
          goto LABEL_39;
        }

        v46 = v12;
        v47 = v11;
        v16 = (*(v8 + 48) + 16 * v13);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(a2 + 16);

        v44 = v14;
        v45 = v18;
        if (!v19)
        {
          break;
        }

        result = sub_26973CEF8(v18, v17);
        v21 = ((v20 ^ 1u) << 63) >> 63;
        if ((v20 ^ 1))
        {
          goto LABEL_16;
        }

        v22 = v47;
        if (a3 != 0.0)
        {
          v23 = (*(*(a2 + 56) + 8 * result) - a4) * 100.0 / a3;
          v24 = round(v23);
          v25 = v24 >= 9.22337204e18 || v24 <= -9.22337204e18;
          v26 = llround(v23);
          if (v25)
          {
            v21 = -1;
          }

          else
          {
            v21 = v26;
          }
        }

LABEL_17:
        v27 = a2;
        v29 = *(v9 + 16);
        v28 = *(v9 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_269814EEC((v28 > 1), v29 + 1, 1);
          v22 = v47;
        }

        *(v9 + 16) = v29 + 1;
        v30 = (v9 + 24 * v29);
        v30[4] = v45;
        v30[5] = v17;
        v30[6] = v21;
        if (v46)
        {
          goto LABEL_43;
        }

        v8 = v43;
        v31 = 1 << *(v43 + 32);
        if (v13 >= v31)
        {
          goto LABEL_40;
        }

        v32 = *(v48 + 8 * v15);
        if ((v32 & (1 << v13)) == 0)
        {
          goto LABEL_41;
        }

        if (*(v43 + 36) != v22)
        {
          goto LABEL_42;
        }

        a2 = v27;
        v33 = v32 & (-2 << (v13 & 0x3F));
        if (v33)
        {
          v31 = __clz(__rbit64(v33)) | v13 & 0x7FFFFFFFFFFFFFC0;
          v34 = v42;
        }

        else
        {
          v35 = v9;
          v36 = v15 << 6;
          v37 = v15 + 1;
          v34 = v42;
          v38 = (v41 + 8 * v15);
          while (v37 < (v31 + 63) >> 6)
          {
            v40 = *v38++;
            v39 = v40;
            v36 += 64;
            ++v37;
            if (v40)
            {
              result = sub_26968E5C8(v13, v22, 0);
              v31 = __clz(__rbit64(v39)) + v36;
              goto LABEL_30;
            }
          }

          result = sub_26968E5C8(v13, v22, 0);
LABEL_30:
          v9 = v35;
        }

        v14 = v44 + 1;
        if (v44 + 1 == v34)
        {

          return v9;
        }

        v12 = 0;
        v11 = *(v43 + 36);
        v13 = v31;
        if (v31 < 0)
        {
          goto LABEL_37;
        }
      }

      v21 = -1;
LABEL_16:
      v22 = v47;
      goto LABEL_17;
    }

LABEL_37:
    __break(1u);
LABEL_38:
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
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2698053E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_269805424(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (v7 < result)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_269805468(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_2698054AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 48;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);

  v6 = 1;
LABEL_3:
  v7 = (v2 + 24 * v6);
  while (v1 != v6)
  {
    if (v6 >= v1)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_13;
    }

    v9 = *v7;
    v7 += 3;
    v10 = v9;
    ++v6;
    if (v3 < v9)
    {
      v4 = *(v7 - 5);

      v3 = v10;
      v6 = v8;
      goto LABEL_3;
    }
  }

  return v4;
}

uint64_t sub_269805580(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325830, &unk_269867740);
    v3 = sub_2698553C4();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2698077F0(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_269805618()
{
  type metadata accessor for SiriRemembersInteractionDataSource(0);
  result = sub_269805640();
  qword_28033D8E8 = result;
  return result;
}

uint64_t sub_269805640()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_3_33();
  MEMORY[0x28223BE20](v2);
  v4 = &v9[-v3];
  sub_269854294();
  v5 = sub_2698542A4();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  sub_2696C96F0(v4, v0);
  type metadata accessor for SiriRemembersInteractionDataSource(0);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC16SiriVideoIntents34SiriRemembersInteractionDataSource_interactionStore;
  __swift_storeEnumTagSinglePayload(v6 + OBJC_IVAR____TtC16SiriVideoIntents34SiriRemembersInteractionDataSource_interactionStore, 1, 1, v5);
  swift_beginAccess();
  sub_2696C9A50(v0, v6 + v7);
  swift_endAccess();
  sub_269698048(v4, &qword_280322D70, &qword_2698582E8);
  return v6;
}

uint64_t sub_269805790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void (*a4)(char *, uint64_t)@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v85 = a6;
  v81 = a4;
  v82 = a5;
  v79 = a3;
  v76 = a1;
  v77 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D78, &unk_26985A370);
  MEMORY[0x28223BE20](v7 - 8);
  v69 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  MEMORY[0x28223BE20](v9 - 8);
  v80 = &v67 - v10;
  v78 = sub_2698542A4();
  OUTLINED_FUNCTION_8();
  v68 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v83 = v14 - v13;
  v75 = sub_269854284();
  OUTLINED_FUNCTION_8();
  v73 = v15;
  v17 = MEMORY[0x28223BE20](v16);
  v71 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v70 = &v67 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v72 = &v67 - v22;
  MEMORY[0x28223BE20](v21);
  v74 = &v67 - v23;
  v24 = sub_2698542D4();
  OUTLINED_FUNCTION_8();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  v30 = (v29 - v28);
  v31 = sub_2698541D4();
  OUTLINED_FUNCTION_8();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_33();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v67 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v67 - v39;
  sub_2698541C4();
  sub_2698541B4();
  v41 = *(v33 + 8);
  v41(v6, v31);
  *v30 = 0x6D614E616964656DLL;
  v30[1] = 0xE900000000000065;
  v42 = v77;
  v30[2] = v76;
  v30[3] = v42;
  (*(v26 + 104))(v30, *MEMORY[0x277D5FFE8], v24);

  sub_2698541A4();
  v43 = v30;
  v44 = v33 + 8;
  (*(v26 + 8))(v43, v24);
  v45 = v38;
  v46 = v73;
  v41(v45, v31);
  v47 = v71;
  sub_269854274();
  sub_269854244();
  v48 = *(v46 + 8);
  v49 = v75;
  v48(v47, v75);
  v50 = v72;
  sub_269854264();
  v51 = OUTLINED_FUNCTION_4_38();
  (v48)(v51);
  sub_269854254();
  v48(v50, v49);
  v52 = OBJC_IVAR____TtC16SiriVideoIntents34SiriRemembersInteractionDataSource_interactionStore;
  v53 = v84;
  swift_beginAccess();
  v54 = v53 + v52;
  v55 = v80;
  v56 = v78;
  sub_2696C96F0(v54, v80);
  if (__swift_getEnumTagSinglePayload(v55, 1, v56) == 1)
  {
    v57 = OUTLINED_FUNCTION_4_38();
    (v48)(v57);
    v41(v40, v31);
    sub_269698048(v55, &qword_280322D70, &qword_2698582E8);
    v58 = sub_269854204();
    v59 = v85;
    v60 = 1;
  }

  else
  {
    v81 = v41;
    v82 = v40;
    v84 = v44;
    v61 = v68;
    (*(v68 + 32))(v83, v55, v56);
    v62 = v69;
    sub_269854234();
    (*(v61 + 8))(v83, v56);
    v63 = OUTLINED_FUNCTION_4_38();
    (v48)(v63);
    v81(v82, v31);
    v64 = sub_269854204();
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v64);
    v65 = v85;
    (*(*(v64 - 8) + 32))(v85, v62, v64);
    v59 = v65;
    v60 = 0;
    v58 = v64;
  }

  return __swift_storeEnumTagSinglePayload(v59, v60, 1, v58);
}

uint64_t sub_269805E50()
{
  sub_269698048(v0 + OBJC_IVAR____TtC16SiriVideoIntents34SiriRemembersInteractionDataSource_interactionStore, &qword_280322D70, &qword_2698582E8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SiriRemembersInteractionDataSource(uint64_t a1)
{
  result = qword_280325820;
  if (!qword_280325820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269805F18(uint64_t a1)
{
  sub_2696C9698(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_269805FA8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  if (qword_2803226F0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_28033D940);
  (*(v12 + 16))(v16, v17, v10);

  v18 = sub_2698548B4();
  v19 = sub_269854F14();

  if (os_log_type_enabled(v18, v19))
  {
    v33 = a4;
    v20 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v32 = v34;
    *v20 = 136315394;
    *(v20 + 4) = sub_26974F520(a1, a2, &v34);
    *(v20 + 12) = 2080;
    v21 = sub_269854E54();
    v31 = a1;
    v23 = sub_26974F520(v21, v22, &v34);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_269684000, v18, v19, "SiriRemembersEntitySignals init with searchTerm %s and candidateAppBundleIds %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D647170](v32, -1, -1);
    v24 = v20;
    a4 = v33;
    MEMORY[0x26D647170](v24, -1, -1);

    v25 = v16;
    v26 = v31;
    (*(v12 + 8))(v25, v10);
  }

  else
  {

    (*(v12 + 8))(v16, v10);
    v26 = a1;
  }

  *(v5 + 16) = a3;
  OUTLINED_FUNCTION_33_9();
  v27 = swift_allocObject();
  v27[2] = a3;
  v27[3] = a4;
  v27[4] = v26;
  v27[5] = a2;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2698079DC;
  *(v28 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325838, &unk_269867750);
  swift_allocObject();

  sub_269809F90(sub_2698079E8, v28);
  *(v5 + 24) = v29;
  return v5;
}

uint64_t sub_2698062E0(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a5;
  v47 = a6;
  v45 = a4;
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D78, &unk_26985A370);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_269854204();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v41 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324298, &unk_2698679F0);
  v38 = *(v13 - 8);
  v39 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v37 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v40 = &v34 - v16;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a3 + 56);
  v20 = (v17 + 63) >> 6;
  v36 = (v11 + 32);

  v22 = 0;
  v44 = MEMORY[0x277D84F90];
  while (1)
  {
    v23 = v22;
    if (!v19)
    {
      break;
    }

LABEL_8:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = *(a3 + 48) + ((v22 << 10) | (16 * v24));
    v27 = *v25;
    v26 = *(v25 + 8);

    sub_269805790(v46, v47, 1u, v27, v26, v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {

      result = sub_269698048(v9, &qword_280322D78, &unk_26985A370);
    }

    else
    {
      v35 = *v36;
      v35(v41, v9, v10);
      v28 = *(v39 + 48);
      v29 = v37;
      *v37 = v27;
      *(v29 + 8) = v26;
      v35((v29 + v28), v41, v10);
      sub_2698079F0(v29, v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26977D17C();
        v44 = v32;
      }

      v30 = *(v44 + 16);
      if (v30 >= *(v44 + 24) >> 1)
      {
        sub_26977D17C();
        v44 = v33;
      }

      v31 = v44;
      *(v44 + 16) = v30 + 1;
      result = sub_2698079F0(v40, v31 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30);
    }
  }

  while (1)
  {
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      sub_26980C254(v44);
      v43();
    }

    v19 = *(a3 + 56 + 8 * v22);
    ++v23;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2698066C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1), uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(sub_269693184, v6);
}

uint64_t sub_269806754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = type metadata accessor for GetterSignal();
  OUTLINED_FUNCTION_33_9();
  v9 = swift_allocObject();
  strcpy((v9 + 16), "EntityRecency");
  *(v9 + 30) = -4864;
  *(v9 + 32) = sub_2698079C0;
  *(v9 + 40) = v7;
  a3[3] = v8;
  a3[4] = sub_26980488C();
  *a3 = v9;
}

uint64_t sub_269806828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a3;
  v10[5] = a1;
  v10[6] = a2;

  sub_26980A204(sub_2698079CC, v10);
}

void sub_2698068E0(uint64_t *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v75 = a6;
  v76 = a5;
  v71 = a4;
  v8 = sub_269853904();
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x28223BE20](v8);
  v72 = (&v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D80, &unk_2698582F0);
  MEMORY[0x28223BE20](v78);
  v11 = &v71 - v10;
  v82 = sub_269851D34();
  v12 = *(v82 - 8);
  v13 = MEMORY[0x28223BE20](v82);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = *a1;
  v81 = &v71 - v18;
  a2(v16);
  v19 = v17 + 64;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v17 + 64);
  v23 = (v20 + 63) >> 6;
  v79 = v17;
  v80 = (v12 + 8);

  v24 = 0;
  v77 = MEMORY[0x277D84F90];
  while (v22)
  {
LABEL_9:
    v26 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v27 = v26 | (v24 << 6);
    v28 = *(v79 + 56);
    v29 = (*(v79 + 48) + 16 * v27);
    v30 = *v29;
    v31 = v29[1];
    v32 = sub_269854204();
    (*(*(v32 - 8) + 16))(&v11[*(v78 + 48)], v28 + *(*(v32 - 8) + 72) * v27, v32);
    *v11 = v30;
    *(v11 + 1) = v31;

    sub_2698541F4();
    sub_269851CB4();
    v34 = v33;
    (*v80)(v15, v82);
    if (v34 >= 0.0 && v34 < 31536000.0)
    {

      sub_269698048(v11, &unk_280322D80, &unk_2698582F0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26977D1A0();
        v77 = v38;
      }

      v35 = *(v77 + 16);
      if (v35 >= *(v77 + 24) >> 1)
      {
        sub_26977D1A0();
        v77 = v39;
      }

      v36 = v77;
      *(v77 + 16) = v35 + 1;
      v37 = v36 + 24 * v35;
      *(v37 + 32) = v30;
      *(v37 + 40) = v31;
      *(v37 + 48) = v34;
    }

    else
    {
      sub_269698048(v11, &unk_280322D80, &unk_2698582F0);
    }
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      return;
    }

    if (v25 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v25);
    ++v24;
    if (v22)
    {
      v24 = v25;
      goto LABEL_9;
    }
  }

  v40 = v77;
  v41 = *(v77 + 16);
  v42 = MEMORY[0x277D84F90];
  if (v41)
  {
    v83 = MEMORY[0x277D84F90];
    sub_269814E64(0, v41, 0);
    v42 = v83;
    v43 = *(v83 + 16);
    v44 = (v40 + 48);
    v45 = v41;
    v46 = v76;
    v47 = v74;
    do
    {
      v48 = *v44;
      v83 = v42;
      v49 = *(v42 + 24);
      if (v43 >= v49 >> 1)
      {
        sub_269814E64(v49 > 1, v43 + 1, 1);
        v42 = v83;
      }

      *(v42 + 16) = v43 + 1;
      *(v42 + 8 * v43 + 32) = v48;
      v44 += 3;
      ++v43;
      --v45;
    }

    while (v45);
    v40 = v77;
  }

  else
  {
    v46 = v76;
    v47 = v74;
  }

  v50 = COERCE_DOUBLE(sub_2698053E0(v42));
  v52 = v51;

  if (v52)
  {
    goto LABEL_32;
  }

  v53 = MEMORY[0x277D84F90];
  if (v41)
  {
    v83 = MEMORY[0x277D84F90];
    sub_269814E64(0, v41, 0);
    v53 = v83;
    v54 = *(v83 + 16);
    v55 = (v40 + 48);
    do
    {
      v56 = *v55;
      v83 = v53;
      v57 = *(v53 + 24);
      if (v54 >= v57 >> 1)
      {
        sub_269814E64(v57 > 1, v54 + 1, 1);
        v53 = v83;
      }

      *(v53 + 16) = v54 + 1;
      *(v53 + 8 * v54 + 32) = v56;
      v55 += 3;
      ++v54;
      --v41;
    }

    while (v41);
    v40 = v77;
  }

  *&v58 = COERCE_DOUBLE(sub_269805468(v53));
  v60 = v59;

  if (v60)
  {
LABEL_32:

    v64 = sub_269800DCC(*(v71 + 16));
  }

  else
  {
    v65 = *&v58;
    v66 = sub_269805580(v40);
    v67 = *(v71 + 16);

    v64 = sub_2698050AC(v67, v66, v65 - v50, v50);
  }

  v68 = sub_26980C0F4(v64, v61, v62, v63);
  v70 = v72;
  v69 = v73;
  *v72 = v68;
  (*(v69 + 104))(v70, *MEMORY[0x277D60188], v47);
  v46(v70);
  (*(v69 + 8))(v70, v47);
  (*v80)(v81, v82);
}

uint64_t sub_269806F04()
{
  v1 = v0;
  v25 = MEMORY[0x277D84F90];
  sub_269815070(0, 7, 0);
  v2 = 0;
  v3 = v25;
  do
  {
    v4 = byte_287A39490[v2 + 32];
    v5 = 0xE400000000000000;
    v6 = 1852402994;
    switch(v4)
    {
      case 1:
        v5 = 0xE500000000000000;
        v6 = 0x6E696D3031;
        break;
      case 2:
        v5 = 0xE300000000000000;
        v6 = 7497777;
        break;
      case 3:
        v6 = 7497782;
        v5 = 0xE300000000000000;
        break;
      case 4:
        v6 = 2036425777;
        break;
      case 5:
        v6 = 2036425783;
        break;
      case 6:
        v5 = 0xE500000000000000;
        v6 = 0x7961643832;
        break;
      default:
        break;
    }

    v21 = 0xD000000000000014;
    v22 = 0x8000000269880D80;
    MEMORY[0x26D645A60](v6, v5);

    v8 = v21;
    v7 = v22;
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = v4;
    v10 = type metadata accessor for GetterSignal();
    OUTLINED_FUNCTION_33_9();
    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = v7;
    v11[4] = sub_2698079A8;
    v11[5] = v9;
    v23 = v10;
    v12 = sub_26980488C();
    v24 = v12;
    v25 = v3;
    v21 = v11;
    v14 = *(v3 + 16);
    v13 = *(v3 + 24);

    if (v14 >= v13 >> 1)
    {
      sub_269815070((v13 > 1), v14 + 1, 1);
      v10 = v23;
      v12 = v24;
    }

    ++v2;
    v15 = __swift_mutable_project_boxed_opaque_existential_1(&v21, v10);
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_3_1();
    v18 = v17 - v16;
    (*(v19 + 16))(v17 - v16);
    sub_26980B1E4(v14, v18, &v25, v10, v12);
    __swift_destroy_boxed_opaque_existential_0(&v21);
    v3 = v25;
  }

  while (v2 != 7);
  return v25;
}

uint64_t sub_2698071B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;

  sub_26980A204(sub_2698079B4, v7);
}

uint64_t sub_269807248(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v53 = a4;
  v54 = a3;
  v65 = a2;
  v64 = sub_269854224();
  v5 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269854204();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269853904();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x28223BE20](v11);
  v50 = (v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803255E8, &unk_269866810);
  result = sub_269855394();
  v15 = 0;
  v17 = v13 + 64;
  v16 = *(v13 + 64);
  v61 = v13;
  v18 = 1 << *(v13 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v16;
  v21 = (v18 + 63) >> 6;
  v60 = v8 + 16;
  v49 = *MEMORY[0x277D5FF68];
  v68 = (v5 + 104);
  v48 = *MEMORY[0x277D5FF58];
  v47 = *MEMORY[0x277D5FF70];
  v46 = *MEMORY[0x277D5FF50];
  v45[3] = *MEMORY[0x277D5FF80];
  v45[2] = *MEMORY[0x277D5FF60];
  v59 = *MEMORY[0x277D5FF88];
  v57 = result;
  v58 = (v5 + 8);
  v62 = v8;
  v55 = result + 64;
  v56 = (v8 + 8);
  if (v20)
  {
    do
    {
      v22 = __clz(__rbit64(v20));
      v66 = (v20 - 1) & v20;
LABEL_10:
      v25 = v22 | (v15 << 6);
      v26 = *(v61 + 56);
      v27 = (*(v61 + 48) + 16 * v25);
      v28 = v27[1];
      v67 = *v27;
      v29 = v10;
      (*(v62 + 16))(v10, v26 + *(v62 + 72) * v25, v7);
      v30 = v7;
      v31 = v59;
      switch(v65)
      {
        case 1:
          v32 = &v69;
          goto LABEL_14;
        case 2:
          v32 = &v69 + 4;
LABEL_14:
          v31 = *(v32 - 64);
          break;
        case 3:
          v31 = v46;
          break;
        case 4:
          v31 = v47;
          break;
        case 5:
          v31 = v48;
          break;
        case 6:
          v31 = v49;
          break;
        default:
          break;
      }

      v33 = v63;
      v34 = v64;
      (*v68)(v63, v31, v64);

      v35 = sub_269854214();
      (*v58)(v33, v34);
      v36 = *(sub_2698541E4() + 16);

      if (v35 >= v36)
      {
        v37 = -1;
        v7 = v30;
      }

      else
      {
        result = sub_2698541E4();
        if (v35 < 0)
        {
          goto LABEL_29;
        }

        if (v35 >= *(result + 16))
        {
          goto LABEL_30;
        }

        v7 = v30;
        v37 = *(result + 2 * v35 + 32);
      }

      v10 = v29;
      (*v56)(v29, v7);
      *(v55 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      result = v57;
      v38 = (*(v57 + 48) + 16 * v25);
      *v38 = v67;
      v38[1] = v28;
      *(*(result + 56) + 8 * v25) = v37;
      v39 = *(result + 16);
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_28;
      }

      *(result + 16) = v41;
      v20 = v66;
    }

    while (v66);
  }

  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v21)
    {
      v43 = v50;
      v42 = v51;
      *v50 = result;
      v44 = v52;
      (*(v42 + 104))(v43, *MEMORY[0x277D60188], v52);
      v54(v43);
      return (*(v42 + 8))(v43, v44);
    }

    v24 = *(v17 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v66 = (v24 - 1) & v24;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_269807770()
{

  return v0;
}

uint64_t sub_269807798()
{
  sub_269807770();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2698077F0(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v12 = sub_26973CEF8(v8, v7);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v10[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F50, qword_269858D50);
        sub_2698552F4();
      }
    }

    else
    {
      sub_26980EFB0(v15);
      v17 = sub_26973CEF8(v8, v7);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v12 = v17;
    }

    v19 = *a3;
    if (v16)
    {

      *(v19[7] + 8 * v12) = v9;
    }

    else
    {
      v19[(v12 >> 6) + 8] |= 1 << v12;
      v20 = (v19[6] + 16 * v12);
      *v20 = v8;
      v20[1] = v7;
      *(v19[7] + 8 * v12) = v9;
      v21 = v19[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_18;
      }

      v19[2] = v23;
    }

    ++v5;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2698555F4();
  __break(1u);
  return result;
}

uint64_t sub_2698079F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324298, &unk_2698679F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_269807A6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x277D84F90];
    sub_269815440(0, v1, 0);
    v5 = sub_269811248();
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_269815440((v12 > 1), v13 + 1, 1);
        }

        *(v29 + 16) = v13 + 1;
        v14 = (v29 + 24 * v13);
        v14[4] = v10;
        v14[5] = v11;
        v14[6] = MEMORY[0x277D84F90];
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_26968E5C8(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_26968E5C8(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
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
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

BOOL sub_269807CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_269855674();
  sub_269854B34();
  v6 = sub_2698556C4();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_269855584();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void sub_269807DA0()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v2 = sub_269851F04();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_2_39();
    sub_26980B58C(v9, v10, MEMORY[0x277D39218]);
    v11 = sub_269854A24();
    v12 = v1 + 56;
    v17 = v1;
    v13 = ~(-1 << *(v1 + 32));
    do
    {
      v14 = v11 & v13;
      if (((1 << (v11 & v13)) & *(v12 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v4 + 16))(v8, *(v17 + 48) + *(v4 + 72) * v14, v2);
      OUTLINED_FUNCTION_2_39();
      sub_26980B58C(&qword_280323F50, v15, MEMORY[0x277D39220]);
      v16 = sub_269854A54();
      (*(v4 + 8))(v8, v2);
      v11 = v14 + 1;
    }

    while ((v16 & 1) == 0);
  }

  OUTLINED_FUNCTION_21_0();
}

BOOL sub_269807F60(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_269854A94();
  sub_269855674();
  sub_269854B34();
  v3 = sub_2698556C4();

  v4 = ~(-1 << *(a2 + 32));
  do
  {
    v5 = (1 << (v3 & v4)) & *(a2 + 56 + (((v3 & v4) >> 3) & 0xFFFFFFFFFFFFFF8));
    v6 = v5 != 0;
    if (!v5)
    {
      break;
    }

    v7 = sub_269854A94();
    v9 = v8;
    if (v7 == sub_269854A94() && v9 == v10)
    {

      return 1;
    }

    v12 = sub_269855584();

    v3 = (v3 & v4) + 1;
  }

  while ((v12 & 1) == 0);
  return v6;
}

void sub_2698080B0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v20 = a3 & 0xC000000000000001;
  v21 = sub_26975004C();
  v18 = a3 & 0xFFFFFFFFFFFFFF8;
  v19 = a3;
  v6 = MEMORY[0x277D84F90];
  while (v21 != v5)
  {
    if (v20)
    {
      v7 = MEMORY[0x26D646120](v5, v19);
    }

    else
    {
      if (v5 >= *(v18 + 16))
      {
        goto LABEL_19;
      }

      v7 = *(v19 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v30 = v7;
    a1(&v24, &v30);
    if (v3)
    {

      return;
    }

    v9 = v25;
    if (v25)
    {
      v10 = v24;
      v11 = v26;
      v12 = v27;
      v22 = v29;
      v23 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26977C904();
        v6 = v15;
      }

      v13 = *(v6 + 16);
      if (v13 >= *(v6 + 24) >> 1)
      {
        sub_26977C904();
        v6 = v16;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 48 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v9;
      *(v14 + 48) = v11;
      *(v14 + 56) = v12;
      *(v14 + 64) = v23;
      *(v14 + 72) = v22;
    }

    ++v5;
  }
}

uint64_t sub_269808254(void (*a1)(void), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325868, &qword_2698677D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324390, &unk_2698677E0);
  OUTLINED_FUNCTION_8();
  v25 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12();
  v28 = v13 - v14;
  result = MEMORY[0x28223BE20](v15);
  v18 = &v24 - v17;
  v19 = MEMORY[0x277D84F90];
  v20 = a3;
  v26 = a1;
  v27 = a3;
  while (1)
  {
    if (a4 == v20)
    {
      return v19;
    }

    if (a4 < a3)
    {
      break;
    }

    if (v20 >= a4)
    {
      goto LABEL_17;
    }

    v30 = v20;
    a1(&v30);
    if (v4)
    {

      return v19;
    }

    if (__swift_getEnumTagSinglePayload(v10, 1, v29) == 1)
    {
      result = sub_26969B0C0(v10, &qword_280325868, &qword_2698677D8);
    }

    else
    {
      sub_26980B5D4(v10, v18, &qword_280324390, &unk_2698677E0);
      sub_26980B5D4(v18, v28, &qword_280324390, &unk_2698677E0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26977D158();
        v19 = v22;
      }

      v21 = *(v19 + 16);
      if (v21 >= *(v19 + 24) >> 1)
      {
        sub_26977D158();
        v19 = v23;
      }

      *(v19 + 16) = v21 + 1;
      result = sub_26980B5D4(v28, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, &qword_280324390, &unk_2698677E0);
      a1 = v26;
      a3 = v27;
    }

    ++v20;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_2698084F8(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v26[3] = a2;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v21 = v4;
  if (v8)
  {
LABEL_8:
    while (1)
    {
      v13 = (*(v4 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v26[0] = *v13;
      v26[1] = v14;

      (a1)(&v24, v26);
      if (v3)
      {
        break;
      }

      if (v25)
      {
        v22 = v25;
        v15 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26977D270();
          v11 = v19;
        }

        v16 = *(v11 + 16);
        v17 = v22;
        if (v16 >= *(v11 + 24) >> 1)
        {
          sub_26977D270();
          v17 = v22;
          v11 = v20;
        }

        *(v11 + 16) = v16 + 1;
        v18 = v11 + 24 * v16;
        *(v18 + 32) = v15;
        *(v18 + 40) = v17;
        v4 = v21;
      }

      v8 &= v8 - 1;
      if (!v8)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        return;
      }

      v8 = *(v5 + 8 * v12);
      ++v10;
      if (v8)
      {
        v10 = v12;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2698086DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_12();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_269854294();
  v11 = sub_2698542A4();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  sub_2696C96F0(v10, v7);
  type metadata accessor for SiriRemembersPartialMatchEntitySignals();
  OUTLINED_FUNCTION_51_4();
  v12 = swift_allocObject();
  sub_26980881C();
  sub_26969B0C0(v10, &qword_280322D70, &qword_2698582E8);
  return v12;
}

void sub_26980881C()
{
  OUTLINED_FUNCTION_19_1();
  v74 = v1;
  v3 = v2;
  v69 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  v10 = OUTLINED_FUNCTION_5_12(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v67 = &v59 - v15;
  v72 = sub_2698542D4();
  OUTLINED_FUNCTION_8();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12();
  v21 = (v19 - v20);
  MEMORY[0x28223BE20](v22);
  v61 = (&v59 - v23);
  v68 = sub_2698541D4();
  OUTLINED_FUNCTION_8();
  v64 = v24;
  v26 = MEMORY[0x28223BE20](v25);
  v60 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v62 = v30;
  v63 = &v59 - v29;
  MEMORY[0x28223BE20](v28);
  v73 = &v59 - v31;
  v32 = "entityPartialAppCount";
  v70 = v3;
  v33 = 0xD000000000000015;
  if (v3)
  {
    v33 = 0xD000000000000016;
  }

  else
  {
    v32 = "signalNamePrefix";
  }

  *(v0 + 16) = v33;
  *(v0 + 24) = v32 | 0x8000000000000000;
  v71 = v0;
  v34 = sub_269808DD8(v8, v6);

  v35 = *(v34 + 16);
  v65 = v14;
  v66 = v12;
  if (v35)
  {
    v79 = MEMORY[0x277D84F90];
    sub_269815018(0, v35, 0);
    v36 = v79;
    LODWORD(v78) = *MEMORY[0x277D5FFF0];
    v76 = *(v17 + 104);
    v77 = v17 + 104;
    v75 = v17 + 32;
    v59 = v34;
    v37 = (v34 + 40);
    v38 = v72;
    do
    {
      v39 = *v37;
      *v21 = *(v37 - 1);
      v21[1] = v39;
      v76(v21, v78, v38);
      v79 = v36;
      v41 = *(v36 + 16);
      v40 = *(v36 + 24);

      if (v41 >= v40 >> 1)
      {
        sub_269815018(v40 > 1, v41 + 1, 1);
        v36 = v79;
      }

      *(v36 + 16) = v41 + 1;
      (*(v17 + 32))(v36 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v41, v21, v38);
      v37 += 2;
      --v35;
    }

    while (v35);
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  v42 = v60;
  sub_2698541C4();
  v43 = v63;
  sub_2698541B4();
  v44 = v64;
  v45 = *(v64 + 8);
  v46 = v68;
  v45(v42, v68);
  v78 = v45;
  v47 = v61;
  *v61 = v36;
  v48 = v72;
  (*(v17 + 104))(v47, *MEMORY[0x277D5FFE0], v72);
  v49 = v73;
  sub_2698541A4();
  (*(v17 + 8))(v47, v48);
  v45(v43, v46);
  v50 = v67;
  sub_2696C96F0(v74, v67);
  (*(v44 + 16))(v43, v49, v46);
  v51 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v52 = (v65 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (*(v44 + 80) + v52 + 8) & ~*(v44 + 80);
  v54 = v53 + v62;
  v55 = swift_allocObject();
  sub_26980B5D4(v50, v55 + v51, &qword_280322D70, &qword_2698582E8);
  *(v55 + v52) = v69;
  (*(v44 + 32))(v55 + v53, v43, v46);
  *(v55 + v54) = v70 & 1;
  OUTLINED_FUNCTION_23();
  v56 = swift_allocObject();
  *(v56 + 16) = sub_26980B3D4;
  *(v56 + 24) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325840, &qword_2698677C0);
  swift_allocObject();
  sub_269809FA0();
  v58 = v57;
  sub_26969B0C0(v74, &qword_280322D70, &qword_2698582E8);
  v78(v73, v46);
  *(v71 + 32) = v58;
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269808DD8(uint64_t a1, uint64_t a2)
{
  sub_26969329C(0, &qword_280325848, 0x277CD89D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325850, &qword_2698677C8);
  OUTLINED_FUNCTION_51_4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269857710;
  v5 = *MEMORY[0x277CD8960];
  *(v4 + 32) = *MEMORY[0x277CD8960];
  v6 = v5;
  v7 = sub_269809DD0(v4);
  sub_26980B18C(a1, a2, v7);
  v18 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325858, &qword_2698677D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26985A2C0;
  v9 = *MEMORY[0x277CD88E0];
  v10 = *MEMORY[0x277CD88F0];
  *(inited + 32) = *MEMORY[0x277CD88E0];
  *(inited + 40) = v10;
  v11 = *MEMORY[0x277CD8918];
  v12 = *MEMORY[0x277CD8930];
  *(inited + 48) = *MEMORY[0x277CD8918];
  *(inited + 56) = v12;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_269831A98(inited);
  sub_269855014();

  return v18;
}

uint64_t sub_269808FA8(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22[-v12];
  v14 = sub_2698542A4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2696C96F0(a3, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_26969B0C0(v13, &qword_280322D70, &qword_2698582E8);
    sub_269807A6C(a4);
    sub_26980C27C(v18);
    a1();
  }

  else
  {
    v20 = (*(v15 + 32))(v17, v13, v14);
    MEMORY[0x28223BE20](v20);
    *&v22[-32] = a5;
    v22[-24] = a6 & 1;
    *&v22[-16] = v17;
    sub_2698084F8(sub_26980B4EC, &v22[-48], a4);
    sub_26980C27C(v21);
    a1();

    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_2698091D4@<X0>(uint64_t *a1@<X0>, int a3@<W2>, uint64_t (*a4)(char *, uint64_t)@<X3>, void *a5@<X8>)
{
  v42 = a4;
  LODWORD(v41) = a3;
  v45 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D78, &unk_26985A370);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v38 - v7;
  v44 = sub_269854204();
  v39 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v38 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269854284();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v38 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  v22 = *a1;
  v23 = a1[1];
  v46 = v22;
  sub_269854274();
  sub_269854254();
  v26 = *(v10 + 8);
  v24 = (v10 + 8);
  v25 = v26;
  v26(v13, v9);
  sub_269854244();
  v27 = v16;
  v28 = v40;
  v26(v27, v9);
  v41 = v23;
  v29 = v9;
  sub_269854264();
  v26(v19, v9);
  v30 = v43;
  sub_269854234();
  if (v30)
  {

    __swift_storeEnumTagSinglePayload(v28, 1, 1, v44);
    sub_26969B0C0(v28, &qword_280322D78, &unk_26985A370);
    v31 = v41;

    result = v25(v21, v9);
    v33 = MEMORY[0x277D84F90];
  }

  else
  {
    v42 = v25;
    v43 = v24;
    v34 = v44;
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v44);
    v36 = v38;
    v35 = v39;
    (*(v39 + 32))(v38, v28, v34);
    v31 = v41;

    v33 = sub_2698541E4();
    (*(v35 + 8))(v36, v34);
    result = v42(v21, v29);
  }

  v37 = v45;
  *v45 = v46;
  v37[1] = v31;
  v37[2] = v33;
  return result;
}

uint64_t sub_26980957C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1), uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(sub_269693184, v6);
}

void sub_269809610()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v26 = MEMORY[0x277D84F90];
  sub_269815070(0, 7, 0);
  v2 = 0;
  v3 = v26;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  do
  {
    v6 = byte_287A39490[v2 + 32];
    v22 = v5;
    v23 = v4;

    MEMORY[0x26D645A60](46, 0xE100000000000000);
    v7 = 0xE400000000000000;
    v8 = 1852402994;
    switch(v6)
    {
      case 1:
        v7 = 0xE500000000000000;
        v8 = 0x6E696D3031;
        break;
      case 2:
        v7 = 0xE300000000000000;
        v8 = 7497777;
        break;
      case 3:
        v8 = 7497782;
        v7 = 0xE300000000000000;
        break;
      case 4:
        v8 = 2036425777;
        break;
      case 5:
        v8 = 2036425783;
        break;
      case 6:
        v7 = 0xE500000000000000;
        v8 = 0x7961643832;
        break;
      default:
        break;
    }

    MEMORY[0x26D645A60](v8, v7);

    v9 = v22;
    v10 = v23;
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    *(v11 + 24) = v6;
    v12 = type metadata accessor for GetterSignal();
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = v10;
    v13[4] = sub_26980B27C;
    v13[5] = v11;
    v24 = v12;
    v14 = sub_26980B58C(&qword_280325808, type metadata accessor for GetterSignal, &unk_269867500);
    v25 = v14;
    v26 = v3;
    v22 = v13;
    v16 = *(v3 + 16);
    v15 = *(v3 + 24);

    if (v16 >= v15 >> 1)
    {
      sub_269815070((v15 > 1), v16 + 1, 1);
      v12 = v24;
      v14 = v25;
    }

    ++v2;
    v17 = __swift_mutable_project_boxed_opaque_existential_1(&v22, v12);
    MEMORY[0x28223BE20](v17);
    OUTLINED_FUNCTION_3_1();
    v20 = v19 - v18;
    (*(v21 + 16))(v19 - v18);
    sub_26980B1E4(v16, v20, &v26, v12, v14);
    __swift_destroy_boxed_opaque_existential_0(&v22);
    v3 = v26;
  }

  while (v2 != 7);
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2698098FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;

  sub_26980A22C();
}

uint64_t sub_2698099B4(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v48 = a4;
  v49 = a3;
  v58 = a2;
  v57 = sub_269854224();
  v5 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269853904();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803255E8, &unk_269866810);
  result = sub_269855394();
  v11 = 0;
  v13 = v9 + 64;
  v12 = *(v9 + 64);
  v55 = v9;
  v14 = 1 << *(v9 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v44 = *MEMORY[0x277D5FF68];
  v18 = (v5 + 104);
  v43 = *MEMORY[0x277D5FF58];
  v42 = *MEMORY[0x277D5FF70];
  v41 = *MEMORY[0x277D5FF50];
  v40 = *MEMORY[0x277D5FF80];
  v39 = *MEMORY[0x277D5FF60];
  v54 = *MEMORY[0x277D5FF88];
  v52 = result;
  v53 = (v5 + 8);
  v50 = result + 64;
  v51 = (v5 + 104);
  if ((v15 & v12) != 0)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_10:
      v22 = v19 | (v11 << 6);
      v23 = *(v55 + 56);
      v24 = (*(v55 + 48) + 16 * v22);
      v25 = v24[1];
      v59 = *v24;
      v26 = *(v23 + 8 * v22);
      v27 = v54;
      switch(v58)
      {
        case 1:
          v27 = v39;
          break;
        case 2:
          v27 = v40;
          break;
        case 3:
          v27 = v41;
          break;
        case 4:
          v27 = v42;
          break;
        case 5:
          v27 = v43;
          break;
        case 6:
          v27 = v44;
          break;
        default:
          break;
      }

      v28 = v56;
      v29 = v57;
      (*v18)(v56, v27, v57);

      v30 = sub_269854214();
      result = (*v53)(v28, v29);
      if (v30 >= *(v26 + 16))
      {

        v31 = -1;
      }

      else
      {
        if (v30 < 0)
        {
          goto LABEL_27;
        }

        v31 = *(v26 + 2 * v30 + 32);
      }

      *(v50 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v18 = v51;
      result = v52;
      v32 = (*(v52 + 48) + 16 * v22);
      *v32 = v59;
      v32[1] = v25;
      *(*(result + 56) + 8 * v22) = v31;
      v33 = *(result + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      *(result + 16) = v35;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v17)
      {
        v37 = v45;
        v36 = v46;
        *v45 = result;
        v38 = v47;
        (*(v36 + 104))(v37, *MEMORY[0x277D60188], v47);
        v49(v37);
        return (*(v36 + 8))(v37, v38);
      }

      v21 = *(v13 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id sub_269809DD0(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NLTagScheme(0);
  v2 = sub_269854CA4();

  v3 = [v1 initWithTagSchemes_];

  return v3;
}

uint64_t sub_269809E48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v9 = a1;
    if (sub_269807F60(v9, a4))
    {
    }

    else
    {
      v10 = sub_269854C04();
      v11 = MEMORY[0x26D645A10](v10);
      v13 = v12;

      sub_26977BA60();
      v14 = *(*a5 + 16);
      sub_26977BBB8();

      v15 = *a5;
      *(v15 + 16) = v14 + 1;
      v16 = v15 + 16 * v14;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }
  }

  return 1;
}

uint64_t sub_269809F14()
{

  return v0;
}

uint64_t sub_269809F3C()
{
  sub_269809F14();
  OUTLINED_FUNCTION_51_4();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_269809FA0()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v1;
  v15 = v3;
  v16 = v4;
  v14 = sub_269854F94();
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  sub_269854F74();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v12 = sub_269854994();
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_3_1();
  v13 = MEMORY[0x277D84F90];
  v0[4] = v2;
  v0[5] = v13;
  sub_26969329C(0, &qword_2815718E0, 0x277D85C78);
  sub_269854974();
  sub_26980B58C(&qword_2815718E8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324D40, &unk_269862100);
  sub_2697A1A60(&qword_281571900, &unk_280324D40, &unk_269862100);
  sub_269855174();
  (*(v6 + 104))(v10, *MEMORY[0x277D85260], v14);
  v0[6] = sub_269854FB4();
  v0[2] = v15;
  v0[3] = v16;
  OUTLINED_FUNCTION_21_0();
}

void sub_26980A22C()
{
  OUTLINED_FUNCTION_19_1();
  v27 = v1;
  v3 = v2;
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v9 = sub_269854954();
  OUTLINED_FUNCTION_8();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v15 = v14 - v13;
  v28 = sub_269854994();
  OUTLINED_FUNCTION_8();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v21 = v20 - v19;
  OUTLINED_FUNCTION_51_4();
  v22 = swift_allocObject();
  v22[2] = v4;
  v22[3] = v8;
  v22[4] = v6;
  v29[4] = v3;
  v29[5] = v22;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 1107296256;
  OUTLINED_FUNCTION_4_39();
  v29[2] = v23;
  v29[3] = v27;
  v24 = _Block_copy(v29);

  sub_269854974();
  OUTLINED_FUNCTION_3_46();
  sub_26980B58C(v25, v26, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_2697A1A60(&qword_281571908, &unk_2803228A0, &qword_2698577D0);
  sub_269855174();
  MEMORY[0x26D645EA0](0, v21, v15, v24);
  _Block_release(v24);
  (*(v11 + 8))(v15, v9);
  (*(v17 + 8))(v21, v28);

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_26980A498(void *a1, void (*a2)(void *, __n128), uint64_t a3)
{
  v6 = a1[4];
  if (v6 == 2)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    swift_beginAccess();

    sub_26977BB18();
    v19 = *(a1[5] + 16);
    sub_26977BC6C(v19, v20, v21, v22);
    v23 = a1[5];
    *(v23 + 16) = v19 + 1;
    v24 = v23 + 16 * v19;
    *(v24 + 32) = sub_26980B398;
    *(v24 + 40) = v18;
    a1[5] = v23;
    return swift_endAccess();
  }

  else if (v6 == 1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    swift_beginAccess();

    sub_26977BB18();
    v8 = *(a1[5] + 16);
    sub_26977BC6C(v8, v9, v10, v11);
    v12 = a1[5];
    *(v12 + 16) = v8 + 1;
    v13 = v12 + 16 * v8;
    *(v13 + 32) = sub_26980B660;
    *(v13 + 40) = v7;
    a1[5] = v12;
    swift_endAccess();
    v14 = a1[4];
    a1[4] = 2;
    sub_26980B564(v14);
    v15 = a1[2];
    v16 = swift_allocObject();
    swift_weakInit();

    v15(sub_26980B578, v16);
  }

  else
  {
    v25[0] = a1[4];

    (a2)(v25);
  }
}

uint64_t sub_26980A680(void *a1, void (*a2)(void *, __n128), uint64_t a3)
{
  v6 = a1[4];
  if (v6 == 1)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    swift_beginAccess();

    sub_26977BB90();
    v19 = *(a1[5] + 16);
    sub_26977BCBC(v19, v20, v21, v22);
    v23 = a1[5];
    *(v23 + 16) = v19 + 1;
    v24 = v23 + 16 * v19;
    *(v24 + 32) = sub_26980B398;
    *(v24 + 40) = v18;
    a1[5] = v23;
    return swift_endAccess();
  }

  else if (v6)
  {
    v25[0] = a1[4];

    (a2)(v25);
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    swift_beginAccess();

    sub_26977BB90();
    v8 = *(a1[5] + 16);
    sub_26977BCBC(v8, v9, v10, v11);
    v12 = a1[5];
    *(v12 + 16) = v8 + 1;
    v13 = v12 + 16 * v8;
    *(v13 + 32) = sub_26980B660;
    *(v13 + 40) = v7;
    a1[5] = v12;
    swift_endAccess();
    v14 = a1[4];
    a1[4] = 1;
    sub_26968C9EC(v14);
    v15 = a1[2];
    v16 = swift_allocObject();
    swift_weakInit();

    v15(sub_26980B3CC, v16);
  }
}