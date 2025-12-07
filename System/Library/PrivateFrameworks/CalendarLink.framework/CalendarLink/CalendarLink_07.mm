uint64_t sub_24288CB00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_2428B35D8();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC48C0, &qword_2428C3378);
  v42 = v4;
  result = sub_2428B4B88();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
        sub_2428B3218();
      }

      sub_2428B4C88();
      sub_2428B4678();
      result = sub_2428B4CB8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_24288CEA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_2428B35D8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = sub_2428B4B88();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_24288E478();
      result = sub_2428B4538();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_24288D254(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_2428B4B88();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
        sub_2428B3218();
        v27 = v26;
      }

      sub_2428B4C88();
      sub_2428B4678();
      result = sub_2428B4CB8();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

id sub_24288D4F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2FD8, &qword_2428C3380);
  v2 = *v0;
  v3 = sub_2428B4B78();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_24288D678()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC48B8, &qword_2428C3370);
  v2 = *v0;
  v3 = sub_2428B4B78();
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
        sub_2428B3218();
        result = sub_2428B3218();
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

char *sub_24288D7F0()
{
  v1 = v0;
  v35 = sub_2428B35D8();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC48C0, &qword_2428C3378);
  v3 = *v0;
  v4 = sub_2428B4B78();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);
        result = sub_2428B3218();
        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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

id sub_24288DA98(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_2428B35D8();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_2428B4B78();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    v19 = v9;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v23 = v20 | (v13 << 6);
        v24 = v37;
        v25 = *(v37 + 72) * v23;
        v27 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v25, v35);
        v28 = *(*(v7 + 56) + 8 * v23);
        (*(v24 + 32))(*(v19 + 48) + v25, v27, v26);
        *(*(v19 + 56) + 8 * v23) = v28;
        result = v28;
        v17 = v38;
      }

      while (v38);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v22 = *(v31 + v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v38 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

id sub_24288DD0C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2428B4B78();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
        sub_2428B3218();
        result = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void sub_24288DE68(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;
  sub_2428B3218();
  v10 = v8;
  v11 = sub_242801C04(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v17) = v12;
  if (v9[3] < v16)
  {
    sub_24288D254(v16, v5 & 1, &qword_27ECC4880, &qword_2428C3138);
    v11 = sub_242801C04(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_2428B4C38();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_24288DD0C(&qword_27ECC4880, &qword_2428C3138);
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4B10, &qword_2428C53F0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_2428B4A68();
    MEMORY[0x245D1B1E0](0xD00000000000001BLL, 0x80000002428D0460);
    sub_2428B4B08();
    MEMORY[0x245D1B1E0](39, 0xE100000000000000);
    sub_2428B4B58();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v17 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v5 = *(v17 - 2);
      v6 = *(v17 - 1);
      v27 = *v17;
      v28 = *a3;
      sub_2428B3218();
      v10 = v27;
      v29 = sub_242801C04(v5, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v7 = v30;
      if (v28[3] < v33)
      {
        sub_24288D254(v33, 1, &qword_27ECC4880, &qword_2428C3138);
        v29 = sub_242801C04(v5, v6);
        if ((v7 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v7)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v5;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v17 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

unint64_t sub_24288E230()
{
  result = qword_280CDDCE0;
  if (!qword_280CDDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDCE0);
  }

  return result;
}

unint64_t sub_24288E288()
{
  result = qword_280CDDCD8;
  if (!qword_280CDDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDCD8);
  }

  return result;
}

unint64_t sub_24288E2E4()
{
  result = qword_280CDDCE8;
  if (!qword_280CDDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDCE8);
  }

  return result;
}

unint64_t sub_24288E33C()
{
  result = qword_27ECC4888;
  if (!qword_27ECC4888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC4890, qword_2428C31D8);
    sub_24285FCE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4888);
  }

  return result;
}

unint64_t sub_24288E3C0()
{
  result = qword_27ECC4898;
  if (!qword_27ECC4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4898);
  }

  return result;
}

unint64_t sub_24288E424()
{
  result = qword_27ECC48A0;
  if (!qword_27ECC48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC48A0);
  }

  return result;
}

unint64_t sub_24288E478()
{
  result = qword_27ECC3230;
  if (!qword_27ECC3230)
  {
    sub_2428B35D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3230);
  }

  return result;
}

void InboxItemEntity.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  a2[2] = a1;
  v3 = a1;
  v4 = [v3 objectID];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 stringRepresentation];

    if (v6)
    {
      v7 = sub_2428B4618();
      v9 = v8;

      *a2 = v7;
      a2[1] = v9;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

{
  v4 = [a1 notification];
  if (v4)
  {
    v5 = v4;
    v6 = [v5 objectID];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 stringRepresentation];

      if (v8)
      {
        v9 = sub_2428B4618();
        v11 = v10;

        *a2 = v9;
        a2[1] = v11;
        a2[2] = v5;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

uint64_t sub_24288E664()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC48E0);
  __swift_project_value_buffer(v10, qword_27ECC48E0);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3578();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t static InboxItemEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1948 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC48E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t InboxItemEntity.displayRepresentation.getter()
{
  v1 = [*(v0 + 16) titleStringWithOptions_];
  if (v1)
  {
    v2 = v1;
    sub_2428B4618();
  }

  return sub_2428B3128();
}

uint64_t sub_24288EA8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  qword_27ECC48F8 = result;
  return result;
}

uint64_t static InboxItemEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECC1950 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC48F8;
  return sub_2428B2F38();
}

uint64_t static InboxItemEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECC1950 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC48F8 = v1;
}

uint64_t (*static InboxItemEntity.defaultQuery.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1950 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24288EC84@<X0>(void *a1@<X8>)
{
  if (qword_27ECC1950 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC48F8;
  return sub_2428B2F38();
}

uint64_t sub_24288ED04(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27ECC1950;
  sub_2428B2F38();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC48F8 = v1;
}

uint64_t InboxItemEntity.id.getter()
{
  v1 = *v0;
  sub_2428B3218();
  return v1;
}

uint64_t InboxItemEntity.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_24288EE38@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1948 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC48E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24288EEE0(uint64_t a1)
{
  v2 = sub_2427CE75C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_24288EF2C()
{
  v1 = [*(v0 + 16) titleStringWithOptions_];
  if (v1)
  {
    v2 = v1;
    sub_2428B4618();
  }

  return sub_2428B3128();
}

uint64_t sub_24288EFB0(uint64_t a1)
{
  v2 = sub_24288F1B4();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_24288F000()
{
  result = qword_280CDDE90;
  if (!qword_280CDDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE90);
  }

  return result;
}

unint64_t sub_24288F058()
{
  result = qword_280CDDE78;
  if (!qword_280CDDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE78);
  }

  return result;
}

unint64_t sub_24288F0B0()
{
  result = qword_280CDDE40;
  if (!qword_280CDDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE40);
  }

  return result;
}

unint64_t sub_24288F108()
{
  result = qword_280CDDE70;
  if (!qword_280CDDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE70);
  }

  return result;
}

unint64_t sub_24288F15C()
{
  result = qword_280CDDE68;
  if (!qword_280CDDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE68);
  }

  return result;
}

unint64_t sub_24288F1B4()
{
  result = qword_280CDDE58;
  if (!qword_280CDDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE58);
  }

  return result;
}

unint64_t sub_24288F20C()
{
  result = qword_27ECC4900;
  if (!qword_27ECC4900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC4908, &qword_2428C34E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4900);
  }

  return result;
}

unint64_t sub_24288F274()
{
  result = qword_280CDDE50;
  if (!qword_280CDDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE50);
  }

  return result;
}

uint64_t sub_24288F2C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24288F310(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t EventEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_2428B4238();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_2428B4298();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t EventEntityRepresentation.init(_:)(uint64_t a1)
{
  v2 = sub_2428B4238();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = sub_2428B4298();
  (*(v3 + 8))(a1, v2);
  return v5;
}

uint64_t EventEntityRepresentation.__deallocating_deinit()
{
  _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_24288F5D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_24288F634(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_24288F688(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

unint64_t EventEntityRepresentation.PrivacyLevelRepresentation.init(_:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

CalendarLink::EventEntityRepresentation::PrivacyLevelRepresentation_optional __swiftcall EventEntityRepresentation.PrivacyLevelRepresentation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24288F7B0(uint64_t a1)
{
  v2 = sub_24289099C();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_24288F7EC(uint64_t a1)
{
  v2 = sub_24289099C();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_24288F828(uint64_t a1, uint64_t a2)
{
  v4 = sub_24288FED0();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_24288F874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24289099C();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_24288F8D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24288FED0();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_24288F9C8(uint64_t a1)
{
  v2 = sub_242890948();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_24288FA04(uint64_t a1)
{
  v2 = sub_242890948();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_24288FA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2428901BC();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_24288FA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242890948();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_24288FAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2428901BC();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

CalendarLink::EventEntityRepresentation::AvailabilityRepresentation __swiftcall EventEntityRepresentation.AvailabilityRepresentation.init(_:)(EKEventAvailability a1)
{
  if (a1 < 4)
  {
    v2 = a1 + 1;
  }

  else
  {
    v2 = 0;
  }

  *v1 = v2;
  return a1;
}

CalendarLink::EventEntityRepresentation::AvailabilityRepresentation_optional __swiftcall EventEntityRepresentation.AvailabilityRepresentation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t type metadata accessor for EventEntityRepresentation(uint64_t a1)
{
  result = qword_27ECC4A78;
  if (!qword_27ECC4A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24288FDD8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EventEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24288FE20()
{
  result = qword_27ECC4988;
  if (!qword_27ECC4988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4988);
  }

  return result;
}

unint64_t sub_24288FE78()
{
  result = qword_27ECC4990;
  if (!qword_27ECC4990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4990);
  }

  return result;
}

unint64_t sub_24288FED0()
{
  result = qword_27ECC4998;
  if (!qword_27ECC4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4998);
  }

  return result;
}

unint64_t sub_24288FF28()
{
  result = qword_27ECC49A0;
  if (!qword_27ECC49A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC49A0);
  }

  return result;
}

unint64_t sub_24288FF80()
{
  result = qword_27ECC49A8;
  if (!qword_27ECC49A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC49A8);
  }

  return result;
}

unint64_t sub_242890004()
{
  result = qword_27ECC49C0;
  if (!qword_27ECC49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC49C0);
  }

  return result;
}

unint64_t sub_24289005C()
{
  result = qword_27ECC49C8;
  if (!qword_27ECC49C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC49C8);
  }

  return result;
}

unint64_t sub_2428900B4()
{
  result = qword_27ECC49D0;
  if (!qword_27ECC49D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC49D0);
  }

  return result;
}

unint64_t sub_24289010C()
{
  result = qword_27ECC49D8;
  if (!qword_27ECC49D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC49D8);
  }

  return result;
}

unint64_t sub_242890164()
{
  result = qword_27ECC49E0;
  if (!qword_27ECC49E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC49E0);
  }

  return result;
}

unint64_t sub_2428901BC()
{
  result = qword_27ECC49E8;
  if (!qword_27ECC49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC49E8);
  }

  return result;
}

unint64_t sub_242890214()
{
  result = qword_27ECC49F0;
  if (!qword_27ECC49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC49F0);
  }

  return result;
}

unint64_t sub_24289026C()
{
  result = qword_27ECC49F8;
  if (!qword_27ECC49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC49F8);
  }

  return result;
}

unint64_t sub_2428902F0()
{
  result = qword_27ECC4A10;
  if (!qword_27ECC4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A10);
  }

  return result;
}

unint64_t sub_242890348()
{
  result = qword_27ECC4A18;
  if (!qword_27ECC4A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A18);
  }

  return result;
}

unint64_t sub_2428903A0()
{
  result = qword_27ECC4A20;
  if (!qword_27ECC4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A20);
  }

  return result;
}

unint64_t sub_2428903F8()
{
  result = qword_27ECC4A28;
  if (!qword_27ECC4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A28);
  }

  return result;
}

unint64_t sub_242890458()
{
  result = qword_27ECC4A30;
  if (!qword_27ECC4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A30);
  }

  return result;
}

unint64_t sub_2428904B0()
{
  result = qword_27ECC4A38;
  if (!qword_27ECC4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A38);
  }

  return result;
}

unint64_t sub_242890508()
{
  result = qword_27ECC4A40;
  if (!qword_27ECC4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A40);
  }

  return result;
}

unint64_t sub_242890560()
{
  result = qword_27ECC4A48;
  if (!qword_27ECC4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A48);
  }

  return result;
}

unint64_t sub_242890604()
{
  result = qword_27ECC4A60;
  if (!qword_27ECC4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A60);
  }

  return result;
}

unint64_t sub_24289065C()
{
  result = qword_27ECC4A68;
  if (!qword_27ECC4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A68);
  }

  return result;
}

uint64_t sub_2428906B0(uint64_t a1)
{
  v2 = sub_2428908F4();

  return MEMORY[0x28213DAB0](a1, v2);
}

unint64_t sub_2428906F0()
{
  result = qword_27ECC4A70;
  if (!qword_27ECC4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A70);
  }

  return result;
}

uint64_t sub_242890744(uint64_t a1)
{
  v2 = sub_2428908F4();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_242890780(uint64_t a1, uint64_t a2)
{
  v4 = sub_2428904B0();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_2428907CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2428908F4();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_242890830(uint64_t a1, uint64_t a2)
{
  v4 = sub_2428904B0();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_2428908F4()
{
  result = qword_27ECC4A88;
  if (!qword_27ECC4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A88);
  }

  return result;
}

unint64_t sub_242890948()
{
  result = qword_27ECC4A90;
  if (!qword_27ECC4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A90);
  }

  return result;
}

unint64_t sub_24289099C()
{
  result = qword_27ECC4A98;
  if (!qword_27ECC4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A98);
  }

  return result;
}

Swift::Void __swiftcall UIView.annotate(withEvent:)(EKEvent_optional withEvent)
{
  if (withEvent.value.super.super.super.isa)
  {
    v4 = withEvent.value.super.super.super.isa;
    if ([(objc_class *)v4 isIntegrationEvent])
    {
      if (([(objc_class *)v4 isReminderIntegrationEvent]& 1) == 0)
      {
        goto LABEL_5;
      }

      v1 = sub_242835730(v4);
      if (!v1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = sub_2427C2238(v4);
      if (!v1)
      {
LABEL_5:
        v2 = v4;
LABEL_11:

        return;
      }
    }

    v3 = v1;
    sub_2428B48C8();

    v2 = v3;
    goto LABEL_11;
  }

  sub_2428B48B8();
}

Swift::Void __swiftcall UIView.annotate(withCalendar:)(EKCalendar_optional withCalendar)
{
  isa = withCalendar.value.super.super.isa;
  v3 = sub_2428B2978();
  MEMORY[0x28223BE20](v3);
  v4 = sub_2428B3DB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (isa)
  {
    v8 = isa;
    v15[1] = v1;
    v9 = v8;
    sub_2428B3DC8();
    v10 = sub_2428B3D78();
    v12 = v11;
    v16 = MEMORY[0x277D84F90];
    sub_2427C2574();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3658, &qword_2428BD4D8);
    sub_2427C2710();
    sub_2428B4938();
    v16 = v10;
    v17 = v12;
    v13 = objc_allocWithZone(sub_2428B41D8());
    sub_2427FE688();
    v14 = sub_2428B41C8();
    sub_2428B48C8();

    (*(v5 + 8))(v7, v4);
  }
}

void sub_242890CB0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.super.isa = a3;
  UIView.annotate(withCalendar:)(v9);
}

void UIView.annotate(withNotification:)(void *a1)
{
  v2 = sub_2428B2978();
  MEMORY[0x28223BE20](v2);
  if (a1)
  {
    v3 = a1;
    v4 = [v3 objectID];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 stringRepresentation];

      if (v6)
      {
        sub_2428B4618();

        sub_2427C2574();
        sub_2428B3218();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3658, &qword_2428BD4D8);
        sub_2427C2710();
        sub_2428B4938();
        v7 = objc_allocWithZone(sub_2428B41D8());
        sub_2427CE75C();
        v8 = sub_2428B41C8();
        sub_2428B48C8();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_242890EC4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  UIView.annotate(withNotification:)(a3);
}

Swift::Void __swiftcall UIView.updateEntityAnnotationState(isSelected:isHighlighted:isFocused:isDisabled:isEditing:isPrimary:)(Swift::Bool isSelected, Swift::Bool isHighlighted, Swift::Bool isFocused, Swift::Bool isDisabled, Swift::Bool isEditing, Swift::Bool isPrimary)
{
  v6 = sub_2428B2978();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2428B2968();
  sub_2428B48A8();
  (*(v7 + 8))(v9, v6);
}

uint64_t JoinEventIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v28 = a1;
  v2 = sub_2428B3298();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v32 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v31 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v30 = v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v8 - 8);
  v29 = v24 - v9;
  v25 = sub_2428B3558();
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2428B36C8();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_2428B45F8();
  MEMORY[0x28223BE20](v14 - 8);
  v26 = sub_2428B3568();
  v15 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v24[1] = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v45 = 0u;
  v46 = 0u;
  *&v47 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2540, &qword_2428B5AE0);
  sub_2428B4578();
  sub_2428B36B8();
  v17 = *MEMORY[0x277CC9110];
  v18 = *(v10 + 104);
  v19 = v25;
  v18(v12, v17, v25);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v18(v12, v17, v19);
  v20 = v29;
  sub_2428B3578();
  (*(v15 + 56))(v20, 0, 1, v26);
  sub_2427CBC50(&v45);
  v41 = v51;
  v42 = v52;
  v43 = v53;
  v44 = v54;
  v37 = v47;
  v38 = v48;
  v39 = v49;
  v40 = v50;
  v35 = v45;
  v36 = v46;
  v21 = sub_2428B2AE8();
  v22 = *(*(v21 - 8) + 56);
  v22(v30, 1, 1, v21);
  v22(v31, 1, 1, v21);
  (*(v33 + 104))(v32, *MEMORY[0x277CBA308], v34);
  sub_2427C2774();
  result = sub_2428B2E68();
  v28[1] = result;
  return result;
}

uint64_t sub_24289168C()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2428B36C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2428B45F8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2428B3568();
  __swift_allocate_value_buffer(v6, qword_27ECC4AA0);
  __swift_project_value_buffer(v6, qword_27ECC4AA0);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t static JoinEventIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1958 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4AA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242891914()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3078();
  __swift_allocate_value_buffer(v10, qword_27ECC4AB8);
  __swift_project_value_buffer(v10, qword_27ECC4AB8);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3588();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3088();
}

uint64_t static JoinEventIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1960 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4AB8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static JoinEventIntent.description.setter(uint64_t a1)
{
  if (qword_27ECC1960 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4AB8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static JoinEventIntent.description.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1960 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3078();
  __swift_project_value_buffer(v1, qword_27ECC4AB8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_242891E40@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1960 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4AB8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242891F00(uint64_t a1)
{
  if (qword_27ECC1960 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4AB8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_242891FFC(uint64_t *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  swift_unknownObjectRetain();
  sub_2428B28F8();
}

uint64_t JoinEventIntent.eventStoreProvider.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*JoinEventIntent.eventStoreProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CBEA8;
}

uint64_t (*JoinEventIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static JoinEventIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4AD8, &qword_2428C3F18);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4AE0, &qword_2428C3F20);
  MEMORY[0x28223BE20](v1);
  sub_24285FC3C();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4AF0, &qword_2428C3F50);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t JoinEventIntent.perform()(uint64_t a1)
{
  *(v2 + 520) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  *(v2 + 528) = swift_task_alloc();
  *(v2 + 536) = swift_task_alloc();
  *(v2 + 544) = swift_task_alloc();
  *(v2 + 552) = swift_task_alloc();
  v3 = sub_2428B35D8();
  *(v2 + 560) = v3;
  *(v2 + 568) = *(v3 - 8);
  *(v2 + 576) = swift_task_alloc();
  *(v2 + 584) = *v1;
  sub_2428B4758();
  *(v2 + 600) = sub_2428B4748();
  v5 = sub_2428B4728();
  *(v2 + 608) = v5;
  *(v2 + 616) = v4;

  return MEMORY[0x2822009F8](sub_2428924D0, v5, v4);
}

uint64_t sub_2428924D0()
{
  v1 = sub_2428B43D8();
  *(v0 + 488) = v1;
  *(v0 + 496) = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740], MEMORY[0x277CF7728]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 464));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 464));
  if ((v1 & 1) == 0)
  {

    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_2428B2928();
LABEL_9:
    swift_willThrow();
LABEL_10:

    v16 = *(v0 + 8);

    return v16();
  }

  sub_2428B28E8();
  v3 = [*(v0 + 504) eventStore];
  *(v0 + 624) = v3;
  swift_unknownObjectRelease();
  if (!v3)
  {

    sub_2427CCDB0();
    swift_allocError();
    *v15 = 24;
    goto LABEL_9;
  }

  sub_2428B2DC8();
  v4 = *(v0 + 352);
  *(v0 + 176) = *(v0 + 336);
  *(v0 + 192) = v4;
  v5 = *(v0 + 384);
  *(v0 + 208) = *(v0 + 368);
  *(v0 + 224) = v5;
  v6 = *(v0 + 288);
  *(v0 + 112) = *(v0 + 272);
  *(v0 + 128) = v6;
  v7 = *(v0 + 320);
  *(v0 + 144) = *(v0 + 304);
  *(v0 + 160) = v7;
  v8 = *(v0 + 256);
  *(v0 + 80) = *(v0 + 240);
  *(v0 + 96) = v8;
  sub_2428B3218();
  sub_2427CCE04(v0 + 80);
  v9 = sub_2428B4608();

  v10 = [v3 eventWithAppEntityIdentifier_];
  *(v0 + 632) = v10;

  if (!v10)
  {

    sub_2427CCDB0();
    swift_allocError();
    *v18 = 25;
    swift_willThrow();

    goto LABEL_10;
  }

  v11 = [v10 virtualConference];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 urlWithAllowedScheme];

    if (v13)
    {
      sub_2428B35B8();

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v20 = *(v0 + 568);
    v21 = *(v0 + 560);
    v22 = *(v0 + 544);
    v23 = *(v0 + 536);
    v19 = *(v20 + 56);
    v19(v23, v14, 1, v21);
    sub_2427EC914(v23, v22);
    v24 = *(v20 + 48);
    if (v24(v22, 1, v21) != 1)
    {
      v28 = *(v0 + 560);
      v29 = *(v0 + 552);
      (*(*(v0 + 568) + 32))(v29, *(v0 + 544), v28);
      v19(v29, 0, 1, v28);
      goto LABEL_23;
    }
  }

  else
  {
    v19 = *(*(v0 + 568) + 56);
    v19(*(v0 + 544), 1, 1, *(v0 + 560));
  }

  v25 = [v10 conferenceURLForDisplay];
  if (v25)
  {
    v26 = v25;
    sub_2428B35B8();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v30 = *(v0 + 568);
  v31 = *(v0 + 560);
  v32 = *(v0 + 552);
  v33 = *(v0 + 544);
  v34 = *(v0 + 528);
  v19(v34, v27, 1, v31);
  sub_2427EC914(v34, v32);
  v24 = *(v30 + 48);
  if (v24(v33, 1, v31) != 1)
  {
    sub_2427D49D0(*(v0 + 544));
  }

LABEL_23:
  v35 = *(v0 + 560);
  v36 = *(v0 + 552);
  if (v24(v36, 1, v35) == 1)
  {

    sub_2427D49D0(v36);
    sub_2427CCDB0();
    swift_allocError();
    *v37 = 81;
    swift_willThrow();

    goto LABEL_10;
  }

  (*(*(v0 + 568) + 32))(*(v0 + 576), v36, v35);
  v38 = [objc_opt_self() defaultWorkspace];
  *(v0 + 640) = v38;
  if (v38)
  {
    v39 = v38;
    v40 = sub_2428B35A8();
    *(v0 + 648) = v40;
    v41 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
    *(v0 + 656) = v41;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 512;
    *(v0 + 24) = sub_242892B98;
    v42 = swift_continuation_init();
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4AF8, &unk_2428C3F60);
    *(v0 + 400) = MEMORY[0x277D85DD0];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_242892F04;
    *(v0 + 424) = &block_descriptor;
    *(v0 + 432) = v42;
    [v39 openURL:v40 configuration:v41 completionHandler:v0 + 400];
    v38 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v38);
}

uint64_t sub_242892B98()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 664) = v2;
  v3 = *(v1 + 616);
  v4 = *(v1 + 608);
  if (v2)
  {
    v5 = sub_242892DF4;
  }

  else
  {
    v5 = sub_242892CC8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_242892CC8()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[72];
  v7 = v0[71];
  v10 = v0[70];

  sub_2428B2C28();

  (*(v7 + 8))(v6, v10);

  v8 = v0[1];

  return v8();
}

uint64_t sub_242892DF4()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[72];
  v7 = v0[71];
  v8 = v0[70];

  swift_willThrow();

  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_242892F04(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4B10, &qword_2428C53F0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_2428B4528();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

unint64_t sub_242893030()
{
  result = qword_280CDDE30;
  if (!qword_280CDDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE30);
  }

  return result;
}

unint64_t sub_242893088()
{
  result = qword_280CDDE38;
  if (!qword_280CDDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE38);
  }

  return result;
}

uint64_t sub_242893114@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1958 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4AA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2428931BC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4AD8, &qword_2428C3F18);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4AE0, &qword_2428C3F20);
  MEMORY[0x28223BE20](v3);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4AF0, &qword_2428C3F50);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t sub_24289334C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return JoinEventIntent.perform()(a1);
}

void EventEntity.init(_:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3240, &qword_2428BBF00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - v5;
  v7 = sub_2428B3BB8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - v12;
  v14 = a1;
  sub_2428B3BC8();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_2427E0980(v6, &qword_27ECC3240, &qword_2428BBF00);
    sub_2427CBC50(v26);
    v15 = v26[7];
    a2[6] = v26[6];
    a2[7] = v15;
    v16 = v26[9];
    a2[8] = v26[8];
    a2[9] = v16;
    v17 = v26[3];
    a2[2] = v26[2];
    a2[3] = v17;
    v18 = v26[5];
    a2[4] = v26[4];
    a2[5] = v18;
    v19 = v26[1];
    *a2 = v26[0];
    a2[1] = v19;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    EventEntity.init(_:)(v11, v25);

    (*(v8 + 8))(v13, v7);
    v20 = v25[7];
    a2[6] = v25[6];
    a2[7] = v20;
    v21 = v25[9];
    a2[8] = v25[8];
    a2[9] = v21;
    v22 = v25[3];
    a2[2] = v25[2];
    a2[3] = v22;
    v23 = v25[5];
    a2[4] = v25[4];
    a2[5] = v23;
    v24 = v25[1];
    *a2 = v25[0];
    a2[1] = v24;
    nullsub_1();
  }
}

Swift::Bool __swiftcall EventEntity.Availability.isSupported(by:)(EKEvent by)
{
  v2 = *v1;
  v3 = [(objc_class *)by.super.super.super.isa calendar];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 supportedEventAvailabilities];

    v6 = (v5 >> 1) & 1;
    v7 = (v5 >> 2) & 1;
    if (v2 != 3)
    {
      LOBYTE(v7) = (v5 & 8) != 0;
    }

    if (v2 != 2)
    {
      LOBYTE(v6) = v7;
    }

    v8 = v5 == 0;
    if (v2)
    {
      v8 = v5 & 1;
    }

    if (v2 <= 1)
    {
      LOBYTE(v3) = v8;
    }

    else
    {
      LOBYTE(v3) = v6;
    }
  }

  else
  {
    __break(1u);
  }

  return v3;
}

uint64_t sub_2428937B4()
{
  result = sub_2428B4618();
  qword_280CDDF30 = result;
  qword_280CDDF38 = v1;
  return result;
}

uint64_t static EventEntity.attributionBundleIdentifier.getter()
{
  if (qword_280CDDF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_280CDDF30;
  sub_2428B3218();
  return v0;
}

uint64_t static EventEntity.attributionBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280CDDF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280CDDF30 = a1;
  qword_280CDDF38 = a2;
}

uint64_t (*static EventEntity.attributionBundleIdentifier.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280CDDF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24289397C@<X0>(void *a1@<X8>)
{
  if (qword_280CDDF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280CDDF38;
  *a1 = qword_280CDDF30;
  a1[1] = v2;
  return sub_2428B3218();
}

uint64_t sub_2428939FC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_280CDDF28;
  sub_2428B3218();
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280CDDF30 = v2;
  qword_280CDDF38 = v1;
}

uint64_t sub_242893AAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC4B20);
  __swift_project_value_buffer(v10, qword_27ECC4B20);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3578();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t EventEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v1 - 8);
  v21 = &v17 - v2;
  v3 = sub_2428B3688();
  v19 = *(v3 - 8);
  v20 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v18 = sub_2428B3568();
  v12 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  sub_2428B2C68();
  sub_2428B3548();
  type metadata accessor for LocalizedStringUtils();
  sub_2428B2C68();
  sub_2428B2C68();
  sub_2428B2C68();
  if (v23 == 1)
  {
    sub_2427F0234(v11);
  }

  else
  {
    sub_2427F0828(v8, v6);
  }

  v13 = v20;
  v14 = *(v19 + 8);
  v14(v6, v20);
  v14(v8, v13);
  (*(v12 + 56))(v11, 0, 1, v18);
  v15 = sub_2428B3148();
  (*(*(v15 - 8) + 56))(v21, 1, 1, v15);
  return sub_2428B3178();
}

uint64_t sub_242894194()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  qword_27ECC4B38 = result;
  return result;
}

uint64_t static EventEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECC1978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC4B38;
  return sub_2428B2F38();
}

uint64_t static EventEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECC1978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC4B38 = v1;
}

uint64_t (*static EventEntity.defaultQuery.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24289438C@<X0>(void *a1@<X8>)
{
  if (qword_27ECC1978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC4B38;
  return sub_2428B2F38();
}

uint64_t sub_24289440C(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27ECC1978;
  sub_2428B2F38();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC4B38 = v1;
}

uint64_t EventEntity.id.getter()
{
  v1 = *v0;
  sub_2428B3218();
  return v1;
}

uint64_t EventEntity.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_24289454C(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[7];
  v11[6] = a2[6];
  v11[7] = v4;
  v5 = a2[9];
  v11[8] = a2[8];
  v11[9] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v11[3] = v6;
  v7 = a2[5];
  v11[4] = a2[4];
  v11[5] = v7;
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v10[20] = v3;
  v10[21] = v2;
  sub_2428B3218();
  sub_2427CD4FC(v11, v10);
  sub_2428B2C78();
  return sub_2427CCE04(v11);
}

uint64_t (*EventEntity.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242894690(_BYTE *a1, _OWORD *a2)
{
  v4 = sub_2428B3688();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-v9];
  v11 = *(v5 + 16);
  v11(&v18[-v9], a1, v4);
  v12 = a2[7];
  v19[6] = a2[6];
  v19[7] = v12;
  v13 = a2[9];
  v19[8] = a2[8];
  v19[9] = v13;
  v14 = a2[3];
  v19[2] = a2[2];
  v19[3] = v14;
  v15 = a2[5];
  v19[4] = a2[4];
  v19[5] = v15;
  v16 = a2[1];
  v19[0] = *a2;
  v19[1] = v16;
  v11(v8, v10, v4);
  sub_2427CD4FC(v19, v18);
  sub_2428B2C78();
  (*(v5 + 8))(v10, v4);
  return sub_2427CCE04(v19);
}

uint64_t EventEntity.startDate.setter(uint64_t a1)
{
  v2 = sub_2428B3688();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_2428B2C78();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*EventEntity.startDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242894974(_BYTE *a1, _OWORD *a2)
{
  v4 = sub_2428B3688();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-v9];
  v11 = *(v5 + 16);
  v11(&v18[-v9], a1, v4);
  v12 = a2[7];
  v19[6] = a2[6];
  v19[7] = v12;
  v13 = a2[9];
  v19[8] = a2[8];
  v19[9] = v13;
  v14 = a2[3];
  v19[2] = a2[2];
  v19[3] = v14;
  v15 = a2[5];
  v19[4] = a2[4];
  v19[5] = v15;
  v16 = a2[1];
  v19[0] = *a2;
  v19[1] = v16;
  v11(v8, v10, v4);
  sub_2427CD4FC(v19, v18);
  sub_2428B2C78();
  (*(v5 + 8))(v10, v4);
  return sub_2427CCE04(v19);
}

uint64_t EventEntity.endDate.setter(uint64_t a1)
{
  v2 = sub_2428B3688();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_2428B2C78();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*EventEntity.endDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242894C58(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v10[6] = a2[6];
  v10[7] = v3;
  v4 = a2[9];
  v10[8] = a2[8];
  v10[9] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v9[167] = v2;
  sub_2427CD4FC(v10, v9);
  sub_2428B2C78();
  return sub_2427CCE04(v10);
}

uint64_t (*EventEntity.isAllDay.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242894D9C(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  sub_2427E0918(a1, &v16[-v8], &qword_27ECC44A0, &qword_2428C16C0);
  v10 = a2[7];
  v17[6] = a2[6];
  v17[7] = v10;
  v11 = a2[9];
  v17[8] = a2[8];
  v17[9] = v11;
  v12 = a2[3];
  v17[2] = a2[2];
  v17[3] = v12;
  v13 = a2[5];
  v17[4] = a2[4];
  v17[5] = v13;
  v14 = a2[1];
  v17[0] = *a2;
  v17[1] = v14;
  sub_2427E0918(v9, v7, &qword_27ECC44A0, &qword_2428C16C0);
  sub_2427CD4FC(v17, v16);
  sub_2428B2C78();
  sub_2427E0980(v9, &qword_27ECC44A0, &qword_2428C16C0);
  return sub_2427CCE04(v17);
}

uint64_t EventEntity.recurrence.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427E0918(a1, &v5 - v3, &qword_27ECC44A0, &qword_2428C16C0);
  sub_2428B2C78();
  return sub_2427E0980(a1, &qword_27ECC44A0, &qword_2428C16C0);
}

uint64_t (*EventEntity.recurrence.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242895060(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[7];
  v11[6] = a2[6];
  v11[7] = v4;
  v5 = a2[9];
  v11[8] = a2[8];
  v11[9] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v11[3] = v6;
  v7 = a2[5];
  v11[4] = a2[4];
  v11[5] = v7;
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v10[20] = v3;
  v10[21] = v2;
  sub_2428B3218();
  sub_2427CD4FC(v11, v10);
  sub_2428B2C78();
  return sub_2427CCE04(v11);
}

uint64_t (*EventEntity.startTimeZoneID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_2428951D8(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[7];
  v11[6] = a2[6];
  v11[7] = v4;
  v5 = a2[9];
  v11[8] = a2[8];
  v11[9] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v11[3] = v6;
  v7 = a2[5];
  v11[4] = a2[4];
  v11[5] = v7;
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v10[20] = v3;
  v10[21] = v2;
  sub_2428B3218();
  sub_2427CD4FC(v11, v10);
  sub_2428B2C78();
  return sub_2427CCE04(v11);
}

uint64_t (*EventEntity.endTimeZoneID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242895340(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  sub_2427E0918(a1, &v16[-v8], &qword_27ECC2CE0, &qword_2428B6560);
  v10 = a2[7];
  v17[6] = a2[6];
  v17[7] = v10;
  v11 = a2[9];
  v17[8] = a2[8];
  v17[9] = v11;
  v12 = a2[3];
  v17[2] = a2[2];
  v17[3] = v12;
  v13 = a2[5];
  v17[4] = a2[4];
  v17[5] = v13;
  v14 = a2[1];
  v17[0] = *a2;
  v17[1] = v14;
  sub_2427E0918(v9, v7, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2427CD4FC(v17, v16);
  sub_2428B2C78();
  sub_2427E0980(v9, &qword_27ECC2CE0, &qword_2428B6560);
  return sub_2427CCE04(v17);
}

uint64_t EventEntity.virtualLocation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427E0918(a1, &v5 - v3, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428B2C78();
  return sub_2427E0980(a1, &qword_27ECC2CE0, &qword_2428B6560);
}

uint64_t (*EventEntity.virtualLocation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_2428955F4(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4BA8, &unk_2428C4098);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  sub_2427E0918(a1, &v16[-v8], &unk_27ECC4BA8, &unk_2428C4098);
  v10 = a2[7];
  v17[6] = a2[6];
  v17[7] = v10;
  v11 = a2[9];
  v17[8] = a2[8];
  v17[9] = v11;
  v12 = a2[3];
  v17[2] = a2[2];
  v17[3] = v12;
  v13 = a2[5];
  v17[4] = a2[4];
  v17[5] = v13;
  v14 = a2[1];
  v17[0] = *a2;
  v17[1] = v14;
  sub_2427E0918(v9, v7, &unk_27ECC4BA8, &unk_2428C4098);
  sub_2427CD4FC(v17, v16);
  sub_2428B2C78();
  sub_2427E0980(v9, &unk_27ECC4BA8, &unk_2428C4098);
  return sub_2427CCE04(v17);
}

uint64_t EventEntity.travelTime.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4BA8, &unk_2428C4098);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427E0918(a1, &v5 - v3, &unk_27ECC4BA8, &unk_2428C4098);
  sub_2428B2C78();
  return sub_2427E0980(a1, &unk_27ECC4BA8, &unk_2428C4098);
}

uint64_t (*EventEntity.travelTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242895884(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v14 = a1[2];
  v15 = v3;
  v4 = a1[3];
  v16 = a1[4];
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a2[7];
  v17[6] = a2[6];
  v17[7] = v6;
  v7 = a2[9];
  v17[8] = a2[8];
  v17[9] = v7;
  v8 = a2[3];
  v17[2] = a2[2];
  v17[3] = v8;
  v9 = a2[5];
  v17[4] = a2[4];
  v17[5] = v9;
  v10 = a2[1];
  v17[0] = *a2;
  v17[1] = v10;
  v12[12] = v14;
  v12[13] = v4;
  v12[14] = a1[4];
  v12[10] = v13[0];
  v12[11] = v2;
  sub_2427E35A0(v13, v12);
  sub_2427CD4FC(v17, v12);
  sub_2428B2C78();
  return sub_2427CCE04(v17);
}

uint64_t (*EventEntity.calendar.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242895A30(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v10[6] = a2[6];
  v10[7] = v3;
  v4 = a2[9];
  v10[8] = a2[8];
  v10[9] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v9[167] = v2;
  sub_2427CD4FC(v10, v9);
  sub_2428B2C78();
  return sub_2427CCE04(v10);
}

uint64_t (*EventEntity.status.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242895B9C(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4430, &unk_2428B7970);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  sub_2427E0918(a1, &v16[-v8], &unk_27ECC4430, &unk_2428B7970);
  v10 = a2[7];
  v17[6] = a2[6];
  v17[7] = v10;
  v11 = a2[9];
  v17[8] = a2[8];
  v17[9] = v11;
  v12 = a2[3];
  v17[2] = a2[2];
  v17[3] = v12;
  v13 = a2[5];
  v17[4] = a2[4];
  v17[5] = v13;
  v14 = a2[1];
  v17[0] = *a2;
  v17[1] = v14;
  sub_2427E0918(v9, v7, &unk_27ECC4430, &unk_2428B7970);
  sub_2427CD4FC(v17, v16);
  sub_2428B2C78();
  sub_2427E0980(v9, &unk_27ECC4430, &unk_2428B7970);
  return sub_2427CCE04(v17);
}

uint64_t EventEntity.note.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4430, &unk_2428B7970);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427E0918(a1, &v5 - v3, &unk_27ECC4430, &unk_2428B7970);
  sub_2428B2C78();
  return sub_2427E0980(a1, &unk_27ECC4430, &unk_2428B7970);
}

uint64_t (*EventEntity.note.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242895E60(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v11[6] = a2[6];
  v11[7] = v3;
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v5 = a2[3];
  v11[2] = a2[2];
  v11[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v10 = v2;
  sub_2428B3218();
  sub_2427CD4FC(v11, v9);
  sub_2428B2C78();
  return sub_2427CCE04(v11);
}

uint64_t (*EventEntity.organizers.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CBEA8;
}

uint64_t sub_242895FDC(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v11[6] = a2[6];
  v11[7] = v3;
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v5 = a2[3];
  v11[2] = a2[2];
  v11[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v10 = v2;
  sub_2428B3218();
  sub_2427CD4FC(v11, v9);
  sub_2428B2C78();
  return sub_2427CCE04(v11);
}

uint64_t (*EventEntity.attendees.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242896148(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  sub_2427E0918(a1, &v16[-v8], &qword_27ECC2CE0, &qword_2428B6560);
  v10 = a2[7];
  v17[6] = a2[6];
  v17[7] = v10;
  v11 = a2[9];
  v17[8] = a2[8];
  v17[9] = v11;
  v12 = a2[3];
  v17[2] = a2[2];
  v17[3] = v12;
  v13 = a2[5];
  v17[4] = a2[4];
  v17[5] = v13;
  v14 = a2[1];
  v17[0] = *a2;
  v17[1] = v14;
  sub_2427E0918(v9, v7, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2427CD4FC(v17, v16);
  sub_2428B2C78();
  sub_2427E0980(v9, &qword_27ECC2CE0, &qword_2428B6560);
  return sub_2427CCE04(v17);
}

uint64_t EventEntity.url.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427E0918(a1, &v5 - v3, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428B2C78();
  return sub_2427E0980(a1, &qword_27ECC2CE0, &qword_2428B6560);
}

uint64_t (*EventEntity.url.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t EventEntity.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v273 = a1;
  v252 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4BB8, &qword_2428C40A8);
  MEMORY[0x28223BE20](v2 - 8);
  v246 = &v219 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v251 = &v219 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v254 = &v219 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v247 = &v219 - v10;
  MEMORY[0x28223BE20](v9);
  v248 = &v219 - v11;
  v250 = sub_2428B35D8();
  v249 = *(v250 - 8);
  MEMORY[0x28223BE20](v250);
  v226 = &v219 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_2428B3EA8();
  v269 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v225 = &v219 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4BC0, &unk_2428C40B0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v244 = &v219 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v257 = &v219 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4430, &unk_2428B7970);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v231 = &v219 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v230 = &v219 - v21;
  v289 = sub_2428B39A8();
  v229 = *(v289 - 8);
  MEMORY[0x28223BE20](v289);
  v288 = &v219 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = sub_2428B3A78();
  v290 = *(v276 - 8);
  v23 = MEMORY[0x28223BE20](v276);
  v291 = &v219 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v275 = &v219 - v25;
  v26 = type metadata accessor for AlarmTrigger(0);
  v286 = *(v26 - 8);
  v287 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v285 = &v219 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v284 = &v219 - v29;
  v30 = sub_2428B3DB8();
  MEMORY[0x28223BE20](v30 - 8);
  v280 = &v219 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4BA8, &unk_2428C4098);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v277 = (&v219 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v274 = &v219 - v35;
  v281 = sub_2428B3778();
  v235 = *(v281 - 1);
  MEMORY[0x28223BE20](v281);
  v228 = &v219 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2DF8, &unk_2428C1770);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v232 = &v219 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v233 = (&v219 - v40);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4BD0, &qword_2428C40C0);
  v219 = *(v221 - 8);
  v41 = MEMORY[0x28223BE20](v221);
  v220 = &v219 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v227 = &v219 - v43;
  v224 = sub_2428B37C8();
  v223 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v222 = &v219 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4BD8, &qword_2428C40C8);
  MEMORY[0x28223BE20](v45 - 8);
  v279 = &v219 - v46;
  v283 = sub_2428B3E08();
  v282 = *(v283 - 1);
  MEMORY[0x28223BE20](v283);
  v234 = &v219 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC38E0, &unk_2428C40D0);
  v49 = MEMORY[0x28223BE20](v48 - 8);
  v278 = &v219 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v271 = (&v219 - v51);
  v272 = sub_2428B3688();
  v270 = *(v272 - 8);
  v52 = MEMORY[0x28223BE20](v272);
  v237 = &v219 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v236 = &v219 - v54;
  v55 = sub_2428B3558();
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v58 = &v219 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2428B36C8();
  MEMORY[0x28223BE20](v59 - 8);
  v60 = sub_2428B45F8();
  MEMORY[0x28223BE20](v60 - 8);
  v61 = sub_2428B3568();
  MEMORY[0x28223BE20](v61 - 8);
  v63 = &v219 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4270, &qword_2428B6EC8);
  sub_2428B4578();
  sub_2428B36B8();
  v64 = *MEMORY[0x277CC9110];
  v65 = *(v56 + 104);
  v65(v58, v64, v55);
  sub_2428B3578();
  v268 = sub_2428B2D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2760, &qword_2428B9340);
  sub_2428B4578();
  sub_2428B36B8();
  v65(v58, v64, v55);
  sub_2428B3578();
  v267 = sub_2428B2D48();
  sub_2428B4578();
  sub_2428B36B8();
  v65(v58, v64, v55);
  sub_2428B3578();
  v266 = sub_2428B2D48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v65(v58, v64, v55);
  sub_2428B3578();
  v265 = sub_2428B2D78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4BE0, &unk_2428C40E0);
  v243 = sub_2428B2D58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3760, &qword_2428B6ED0);
  sub_2428B4578();
  sub_2428B36B8();
  v65(v58, v64, v55);
  sub_2428B3578();
  v264 = sub_2428B2D68();
  sub_2428B4578();
  sub_2428B36B8();
  v65(v58, v64, v55);
  sub_2428B3578();
  v263 = sub_2428B2D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4BF0, &unk_2428C40F0);
  sub_2428B4578();
  sub_2428B36B8();
  v65(v58, v64, v55);
  sub_2428B3578();
  sub_24289C7B0(&unk_27ECC2D50, type metadata accessor for Location, &unk_2428BB110);
  v256 = sub_2428B2CF8();
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C00, &qword_2428B6ED8);
  v253 = sub_2428B2D38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C08, &qword_2428C4100);
  sub_2428B4578();
  sub_2428B36B8();
  v65(v58, v64, v55);
  sub_2428B3578();
  v262 = MEMORY[0x245D19860](v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4C10, &qword_2428C4108);
  sub_2428B4578();
  sub_2428B36B8();
  v65(v58, v64, v55);
  sub_2428B3578();
  sub_2427FE688();
  v261 = sub_2428B2CB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4C20, &qword_2428C4110);
  sub_2428B4578();
  sub_2428B36B8();
  v65(v58, v64, v55);
  sub_2428B3578();
  sub_24281E490();
  v260 = sub_2428B2C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4C30, &qword_2428C4118);
  sub_2428B4578();
  sub_2428B36B8();
  v65(v58, v64, v55);
  sub_2428B3578();
  sub_24289C7B0(&unk_27ECC2D70, type metadata accessor for AlarmTrigger, &unk_2428BBF84);
  v259 = sub_2428B2CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C40, &qword_2428C4120);
  v255 = sub_2428B2D18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C48, &qword_2428C4128);
  sub_2428B4578();
  sub_2428B36B8();
  v65(v58, v64, v55);
  sub_2428B3578();
  v258 = sub_2428B2CD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4C50, &unk_2428C4130);
  sub_2427EB740();
  v242 = sub_2428B2CC8();
  sub_2428B4578();
  sub_2428B36B8();
  v65(v58, v64, v55);
  sub_2428B3578();
  v66 = sub_2428B2D28();
  v240 = sub_2428B3B08();
  v239 = v67;
  v238 = sub_2428B3AB8();
  v292 = sub_2428B3B38();
  v293 = v68;
  sub_2428B2C78();
  v69 = v236;
  sub_2428B3BA8();
  v70 = v270;
  v71 = *(v270 + 16);
  v72 = v237;
  v73 = v272;
  v71(v237, v69, v272);
  sub_2428B2C78();
  v74 = *(v70 + 8);
  v74(v69, v73);
  sub_2428B3B68();
  v71(v72, v69, v73);
  sub_2428B2C78();
  v75 = v73;
  v76 = v271;
  v74(v69, v75);
  LOBYTE(v292) = sub_2428B3B78() & 1;
  sub_2428B2C78();
  sub_2428B3AA8();
  v77 = sub_2428B3768();
  v78 = *(v77 - 8);
  v79 = *(v78 + 48);
  if (v79(v76, 1, v77) == 1)
  {
    sub_2427E0980(v76, &qword_27ECC38E0, &unk_2428C40D0);
    v80 = 0;
    v81 = 0;
  }

  else
  {
    v80 = sub_2428B3728();
    v81 = v82;
    (*(v78 + 8))(v76, v77);
  }

  v292 = v80;
  v293 = v81;
  sub_2428B2C78();
  v83 = v278;
  sub_2428B3A98();
  v84 = v79(v83, 1, v77);
  v85 = v257;
  v86 = v281;
  if (v84 == 1)
  {
    sub_2427E0980(v83, &qword_27ECC38E0, &unk_2428C40D0);
    v87 = 0;
    v88 = 0;
  }

  else
  {
    v87 = sub_2428B3728();
    v89 = v83;
    v88 = v90;
    (*(v78 + 8))(v89, v77);
  }

  v91 = v269;
  v92 = v283;
  v93 = v282;
  v292 = v87;
  v293 = v88;
  sub_2428B2C78();
  v94 = v279;
  sub_2428B3AE8();
  v95 = (*(v93 + 48))(v94, 1, v92);
  v241 = v66;
  if (v95 == 1)
  {
    sub_2427E0980(v94, &qword_27ECC4BD8, &qword_2428C40C8);
    goto LABEL_15;
  }

  v96 = v234;
  (*(v93 + 32))(v234, v94, v92);
  v97 = sub_2428B3DD8();
  if (!v97)
  {
    (*(v93 + 8))(v96, v92);
LABEL_15:
    v117 = sub_2428B3B88();
    if (v118)
    {
      v119 = v233;
      *v233 = v117;
      *(v119 + 8) = v118;
      v120 = type metadata accessor for Location(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
      sub_2427E0918(v119, v232, &qword_27ECC2DF8, &unk_2428C1770);
      sub_2428B2C78();
      sub_2427E0980(v119, &qword_27ECC2DF8, &unk_2428C1770);
    }

    goto LABEL_30;
  }

  v98 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C80, &qword_2428C4148);
  v99 = *(v219 + 72);
  v100 = (*(v219 + 80) + 32) & ~*(v219 + 80);
  v278 = swift_allocObject();
  v101 = &v278[v100];
  [v98 coordinate];
  v103 = v102;
  v279 = v98;
  [v98 coordinate];
  *v101 = v103;
  *(v101 + 1) = v104;
  v105 = v235;
  v106 = *(v235 + 104);
  v106(v101, *MEMORY[0x277CCB100], v86);
  v107 = *(v105 + 56);
  v108 = 1;
  v107(v101, 0, 1, v86);
  v109 = &v101[v99];
  v110 = sub_2428B3DF8();
  if (v111)
  {
    *v109 = v110;
    v109[1] = v111;
    v106(&v101[v99], *MEMORY[0x277CCB110], v86);
    v108 = 0;
  }

  v112 = v220;
  v107(v109, v108, 1, v86);
  v113 = v227;
  sub_2427E0918(v101, v227, &qword_27ECC4BD0, &qword_2428C40C0);
  sub_24289C7F8(v113, v112);
  v114 = *(v235 + 48);
  v115 = (v235 + 32);
  if (v114(v112, 1, v86) == 1)
  {
    sub_2427E0980(v112, &qword_27ECC4BD0, &qword_2428C40C0);
    v116 = MEMORY[0x277D84F90];
  }

  else
  {
    v121 = *v115;
    (*v115)(v228, v112, v86);
    v116 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v116 = sub_2427F7388(0, *(v116 + 2) + 1, 1, v116);
    }

    v123 = *(v116 + 2);
    v122 = *(v116 + 3);
    if (v123 >= v122 >> 1)
    {
      v116 = sub_2427F7388((v122 > 1), v123 + 1, 1, v116);
    }

    *(v116 + 2) = v123 + 1;
    v124 = &v116[((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v123];
    v86 = v281;
    v121(v124, v228, v281);
  }

  v85 = v257;
  v125 = v109;
  v126 = v227;
  sub_2427E0918(v125, v227, &qword_27ECC4BD0, &qword_2428C40C0);
  sub_24289C7F8(v126, v112);
  if (v114(v112, 1, v86) == 1)
  {
    sub_2427E0980(v112, &qword_27ECC4BD0, &qword_2428C40C0);
  }

  else
  {
    v127 = *v115;
    (*v115)(v228, v112, v86);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v116 = sub_2427F7388(0, *(v116 + 2) + 1, 1, v116);
    }

    v129 = *(v116 + 2);
    v128 = *(v116 + 3);
    if (v129 >= v128 >> 1)
    {
      v116 = sub_2427F7388((v128 > 1), v129 + 1, 1, v116);
    }

    *(v116 + 2) = v129 + 1;
    v127(&v116[((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v129], v228, v86);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v130 = v234;
  sub_2428B3DE8();
  v131 = v222;
  sub_2428B37A8();
  v132 = v223;
  v133 = v233;
  v134 = v224;
  (*(v223 + 16))(v233, v131, v224);
  v135 = type metadata accessor for Location(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v135 - 8) + 56))(v133, 0, 1, v135);
  sub_2427E0918(v133, v232, &qword_27ECC2DF8, &unk_2428C1770);
  sub_2428B2C78();

  sub_2427E0980(v133, &qword_27ECC2DF8, &unk_2428C1770);
  (*(v132 + 8))(v131, v134);
  (*(v282 + 8))(v130, v283);
  v91 = v269;
LABEL_30:
  sub_2428B3A88();
  v279 = objc_opt_self();
  v136 = [v279 seconds];
  v137 = sub_2428283F0();
  v138 = v274;
  v278 = v137;
  sub_2428B34A8();
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC44E0, &unk_2428BBFC0);
  (*(*(v139 - 8) + 56))(v138, 0, 1, v139);
  sub_2427E0918(v138, v277, &unk_27ECC4BA8, &unk_2428C4098);
  sub_2428B2C78();
  sub_2427E0980(v138, &unk_27ECC4BA8, &unk_2428C4098);
  v140 = v280;
  sub_2428B3AC8();
  CalendarEntity.init(_:)(v140, &v292);
  sub_2428B2C78();
  v141 = sub_2428B3B58();
  v142 = 0x2010003u >> (8 * v141);
  if (v141 >= 4)
  {
    LOBYTE(v142) = 3;
  }

  LOBYTE(v292) = v142;
  sub_2428B2C78();
  v143 = sub_2428B3B48();
  if (v143)
  {
    v144 = v143;
  }

  else
  {
    v144 = MEMORY[0x277D84F90];
  }

  v145 = *(v144 + 2);
  if (v145)
  {
    v292 = MEMORY[0x277D84F90];
    sub_2427E2BCC(0, v145, 0);
    v146 = v292;
    v283 = *(v290 + 16);
    v147 = (*(v290 + 80) + 32) & ~*(v290 + 80);
    v237 = v144;
    v148 = &v144[v147];
    v282 = *(v290 + 72);
    v281 = (v229 + 88);
    LODWORD(v280) = *MEMORY[0x277CF7B78];
    LODWORD(v274) = *MEMORY[0x277CF7B70];
    v290 += 16;
    v149 = (v290 - 8);
    v271 = (v229 + 8);
    v277 = (v229 + 96);
    v270 += 32;
    v150 = v276;
    v151 = v275;
    do
    {
      v152 = v283;
      (v283)(v151, v148, v150);
      v153 = v291;
      v152(v291, v151, v150);
      v154 = v288;
      sub_2428B3A68();
      v155 = v151;
      v156 = v289;
      v157 = (*v281)(v154, v289);
      if (v157 == v280)
      {
        (*v277)(v154, v156);
        v158 = [v279 seconds];
        v159 = v285;
        sub_2428B34A8();
        v160 = *v149;
        (*v149)(v153, v150);
        v160(v155, v150);
        swift_storeEnumTagMultiPayload();
        v151 = v155;
      }

      else if (v157 == v274)
      {
        v161 = *v149;
        v150 = v276;
        (*v149)(v291, v276);
        v162 = v275;
        v161(v275, v150);
        v163 = v156;
        v151 = v162;
        (*v277)(v154, v163);
        v159 = v285;
        (*v270)();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v164 = [v279 seconds];
        v165 = v285;
        sub_2428B34A8();
        v166 = *v149;
        v150 = v276;
        (*v149)(v291, v276);
        v167 = v275;
        v166(v275, v150);
        swift_storeEnumTagMultiPayload();
        v168 = v154;
        v159 = v165;
        v169 = v156;
        v151 = v167;
        (*v271)(v168, v169);
      }

      v170 = v284;
      sub_24289C74C(v159, v284);
      v292 = v146;
      v172 = *(v146 + 16);
      v171 = *(v146 + 24);
      if (v172 >= v171 >> 1)
      {
        sub_2427E2BCC((v171 > 1), v172 + 1, 1);
        v150 = v276;
        v146 = v292;
      }

      *(v146 + 16) = v172 + 1;
      sub_24289C74C(v170, v146 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v172);
      v148 += v282;
      --v145;
    }

    while (v145);

    v91 = v269;
    v85 = v257;
  }

  else
  {

    v146 = MEMORY[0x277D84F90];
  }

  v292 = v146;
  sub_2428B2C78();
  sub_2428B3B28();
  v173 = v254;
  v174 = v251;
  v175 = v250;
  v176 = v249;
  v177 = v244;
  if (v178)
  {
    v179 = v230;
    sub_2428B34E8();
    v180 = sub_2428B34F8();
    (*(*(v180 - 8) + 56))(v179, 0, 1, v180);
    sub_2427E0918(v179, v231, &unk_27ECC4430, &unk_2428B7970);
    sub_2428B2C78();
    v91 = v269;
    sub_2427E0980(v179, &unk_27ECC4430, &unk_2428B7970);
  }

  sub_2428B3B98();
  sub_2427E0918(v85, v177, &unk_27ECC4BC0, &unk_2428C40B0);
  v181 = v245;
  v182 = (*(v91 + 48))(v177, 1, v245);
  v183 = v247;
  if (v182 == 1)
  {
    v184 = MEMORY[0x277D84F90];
  }

  else
  {
    v185 = v174;
    v186 = v85;
    v187 = v225;
    (*(v91 + 32))(v225, v177, v181);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C70, &qword_2428C4140);
    v188 = *(sub_2428B2BD8() - 8);
    v189 = v91;
    v190 = v181;
    v191 = (*(v188 + 80) + 32) & ~*(v188 + 80);
    v184 = swift_allocObject();
    *(v184 + 16) = xmmword_2428B5D50;
    v294 = v190;
    v295 = sub_24289C7B0(&qword_27ECC4C78, MEMORY[0x277CF7BE0], MEMORY[0x277CF7BD8]);
    v192 = __swift_allocate_boxed_opaque_existential_1(&v292);
    (*(v189 + 16))(v192, v187, v190);
    sub_2428A8840(&v292, v184 + v191);
    v193 = v187;
    v85 = v186;
    v174 = v185;
    v173 = v254;
    (*(v189 + 8))(v193, v190);
  }

  sub_2427E0980(v85, &unk_27ECC4BC0, &unk_2428C40B0);
  v292 = v184;
  sub_2428B2C78();
  v194 = v246;
  sub_2428B3AD8();
  v195 = v194;
  v196 = sub_2428B4148();
  v197 = *(v196 - 8);
  if ((*(v197 + 48))(v195, 1, v196) == 1)
  {
    sub_2427E0980(v195, &qword_27ECC4BB8, &qword_2428C40A8);
    (*(v176 + 56))(v183, 1, 1, v175);
    v198 = v252;
  }

  else
  {
    sub_2428B4138();
    (*(v197 + 8))(v195, v196);
    v199 = *(v176 + 48);
    v200 = v199(v183, 1, v175);
    v198 = v252;
    if (v200 != 1)
    {
      v201 = v248;
      (*(v176 + 32))(v248, v183, v175);
      (*(v176 + 56))(v201, 0, 1, v175);
      goto LABEL_58;
    }
  }

  v201 = v248;
  sub_2428B3AF8();
  v199 = *(v176 + 48);
  if (v199(v183, 1, v175) != 1)
  {
    sub_2427E0980(v183, &qword_27ECC2CE0, &qword_2428B6560);
  }

LABEL_58:
  if (v199(v201, 1, v175) == 1)
  {
    sub_2427E0980(v201, &qword_27ECC2CE0, &qword_2428B6560);
  }

  else
  {
    v202 = v226;
    (*(v176 + 32))(v226, v201, v175);
    (*(v176 + 16))(v173, v202, v175);
    (*(v176 + 56))(v173, 0, 1, v175);
    sub_2427E0918(v173, v174, &qword_27ECC2CE0, &qword_2428B6560);
    sub_2428B2C78();
    sub_2427E0980(v173, &qword_27ECC2CE0, &qword_2428B6560);
    (*(v176 + 8))(v202, v175);
  }

  v203 = v267;
  v204 = v243;
  v205 = v238 & 1;
  v206 = v173;
  v207 = v273;
  sub_2428B3B18();
  sub_2427E0918(v206, v174, &qword_27ECC2CE0, &qword_2428B6560);
  v208 = v241;
  sub_2428B2C78();
  v209 = sub_2428B3BB8();
  (*(*(v209 - 8) + 8))(v207, v209);
  result = sub_2427E0980(v206, &qword_27ECC2CE0, &qword_2428B6560);
  v211 = v239;
  *v198 = v240;
  *(v198 + 8) = v211;
  *(v198 + 16) = v205;
  *(v198 + 24) = v268;
  *(v198 + 32) = v203;
  v212 = v265;
  *(v198 + 40) = v266;
  *(v198 + 48) = v212;
  v213 = v264;
  *(v198 + 56) = v204;
  *(v198 + 64) = v213;
  v214 = v256;
  *(v198 + 72) = v263;
  *(v198 + 80) = v214;
  v215 = v262;
  *(v198 + 88) = v253;
  *(v198 + 96) = v215;
  v216 = v260;
  *(v198 + 104) = v261;
  *(v198 + 112) = v216;
  v217 = v255;
  *(v198 + 120) = v259;
  *(v198 + 128) = v217;
  v218 = v242;
  *(v198 + 136) = v258;
  *(v198 + 144) = v218;
  *(v198 + 152) = v208;
  return result;
}

CalendarLink::EventEntity::EventEntityStatus_optional __swiftcall EventEntity.EventEntityStatus.init(_:)(EKEventStatus a1)
{
  v2 = 0x2010003u >> (8 * a1);
  if (a1 >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return a1;
}

uint64_t sub_242898F78()
{
  if (qword_280CDDF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_280CDDF30;
  sub_2428B3218();
  return v0;
}

uint64_t sub_242899020(uint64_t a1)
{
  v2 = sub_2427C2774();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_242899070(uint64_t a1)
{
  v2 = sub_2427C2990();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2428990BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC4B40);
  __swift_project_value_buffer(v10, qword_27ECC4B40);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3578();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t sub_2428993E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v0 - 8);
  v53 = &v33 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v33 - v3;
  v43 = sub_2428B3558();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v48 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2428B45F8();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2428B3568();
  v54 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4D88, &qword_2428C4D48);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4D90, &unk_2428C4D50);
  v15 = *(v14 - 8);
  v52 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2428B7E80;
  v18 = (v17 + v16);
  v37 = *(v14 + 48);
  v38 = v17;
  *v18 = 0;
  v39 = v11;
  sub_2428B4578();
  v40 = v8;
  sub_2428B36B8();
  v51 = *MEMORY[0x277CC9110];
  v49 = *(v4 + 104);
  v49(v48);
  sub_2428B3578();
  v19 = *(v54 + 56);
  v54 += 56;
  v50 = v19;
  v20 = v46;
  v21 = v47;
  v19(v46, 1, 1, v47);
  v41 = sub_2428B3148();
  v22 = *(v41 - 8);
  v44 = *(v22 + 56);
  v42 = v22 + 56;
  v44(v53, 1, 1, v41);
  sub_2428B3178();
  v34 = &v18[v52];
  v35 = v18;
  v45 = v14;
  v37 = *(v14 + 48);
  *v34 = 1;
  sub_2428B4578();
  sub_2428B36B8();
  v23 = v43;
  v36 = v4 + 104;
  (v49)(v48, v51, v43);
  v33 = v13;
  sub_2428B3578();
  v50(v20, 1, 1, v21);
  v24 = v41;
  v44(v53, 1, 1, v41);
  sub_2428B3178();
  v37 = 2 * v52;
  v34 = *(v14 + 48);
  v18[v37] = 2;
  sub_2428B4578();
  sub_2428B36B8();
  v25 = v48;
  (v49)(v48, v51, v23);
  sub_2428B3578();
  v26 = v46;
  v50(v46, 1, 1, v47);
  v27 = v53;
  v28 = v24;
  v29 = v44;
  v44(v53, 1, 1, v28);
  sub_2428B3178();
  v30 = &v35[v37 + v52];
  v52 = *(v45 + 48);
  *v30 = 3;
  sub_2428B4578();
  sub_2428B36B8();
  (v49)(v25, v51, v43);
  sub_2428B3578();
  v50(v26, 1, 1, v47);
  v29(v27, 1, 1, v41);
  sub_2428B3178();
  v31 = sub_242822144(v38);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC4B58 = v31;
  return result;
}

uint64_t (*static EventEntity.PrivacyLevel.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1988 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t EventEntity.PrivacyLevel.init(_:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

CalendarLink::EventEntity::PrivacyLevel_optional __swiftcall EventEntity.PrivacyLevel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_242899D2C(uint64_t a1)
{
  v2 = sub_24281E43C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_242899D9C(uint64_t a1)
{
  v2 = sub_24289CB68();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_242899DF8()
{
  v0 = sub_2428B3338();
  __swift_allocate_value_buffer(v0, qword_27ECC4B60);
  __swift_project_value_buffer(v0, qword_27ECC4B60);
  return sub_2428B3318();
}

uint64_t static EventEntity.EventEntityStatus.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1990 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4B60);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static EventEntity.EventEntityStatus.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27ECC1990 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4B60);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static EventEntity.EventEntityStatus.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1990 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3338();
  __swift_project_value_buffer(v1, qword_27ECC4B60);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24289A0A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1990 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4B60);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_24289A164(uint64_t a1)
{
  if (qword_27ECC1990 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4B60);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_24289A22C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v0 - 8);
  v43 = v27 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = v27 - v3;
  v29 = sub_2428B3558();
  v45 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2428B36C8();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B45F8();
  MEMORY[0x28223BE20](v8 - 8);
  v35 = sub_2428B3568();
  v9 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4D78, &qword_2428C4D38);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4D80, &qword_2428C4D40);
  v34 = v10;
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v32 = 2 * v11;
  v13 = swift_allocObject();
  v33 = v13;
  *(v13 + 16) = xmmword_2428B9770;
  v14 = v13 + v12;
  v28 = *(v10 + 48);
  *(v13 + v12) = 0;
  sub_2428B4578();
  v27[1] = v7;
  sub_2428B36B8();
  v42 = *MEMORY[0x277CC9110];
  v30 = *(v45 + 104);
  v45 += 104;
  v15 = v31;
  v30(v31);
  sub_2428B3578();
  v16 = *(v9 + 56);
  v39 = v9 + 56;
  v40 = v16;
  v17 = v35;
  v16(v44, 1, 1, v35);
  v37 = sub_2428B3148();
  v18 = *(v37 - 8);
  v36 = *(v18 + 56);
  v38 = v18 + 56;
  v36(v43, 1, 1, v37);
  v41 = v14;
  sub_2428B3178();
  v19 = v34;
  v28 = *(v34 + 48);
  *(v14 + v11) = 1;
  sub_2428B4578();
  sub_2428B36B8();
  v20 = v29;
  v21 = v30;
  (v30)(v15, v42, v29);
  sub_2428B3578();
  v40(v44, 1, 1, v17);
  v22 = v43;
  v36(v43, 1, 1, v37);
  v23 = v22;
  sub_2428B3178();
  v24 = (v41 + v32);
  v32 = *(v19 + 48);
  *v24 = 2;
  sub_2428B4578();
  sub_2428B36B8();
  (v21)(v15, v42, v20);
  sub_2428B3578();
  v40(v44, 1, 1, v35);
  v36(v23, 1, 1, v37);
  sub_2428B3178();
  v25 = sub_242822168(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC4B78 = v25;
  return result;
}

uint64_t (*static EventEntity.EventEntityStatus.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1998 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

CalendarLink::EventEntity::EventEntityStatus_optional __swiftcall EventEntity.EventEntityStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2428B4BB8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EventEntity.EventEntityStatus.rawValue.getter()
{
  v1 = 0x76697461746E6574;
  if (*v0 != 1)
  {
    v1 = 0x656C6C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D7269666E6F63;
  }
}

uint64_t sub_24289AA94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x76697461746E6574;
  if (v2 == 1)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v3 = 0x656C6C65636E6163;
    v4 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656D7269666E6F63;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0x76697461746E6574;
  if (*a2 == 1)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v7 = 0x656C6C65636E6163;
    v8 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656D7269666E6F63;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2428B4BF8();
  }

  return v11 & 1;
}

uint64_t sub_24289AB88()
{
  sub_2428B4C88();
  sub_2428B4678();

  return sub_2428B4CB8();
}

uint64_t sub_24289AC28(uint64_t a1)
{
  sub_2428B4678();
}

uint64_t sub_24289ACB4(uint64_t a1)
{
  sub_2428B4C88();
  sub_2428B4678();

  return sub_2428B4CB8();
}

void sub_24289AD5C(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = *v1;
  v4 = 0x76697461746E6574;
  if (v3 == 1)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v4 = 0x656C6C65636E6163;
    v5 = 0xE900000000000064;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x656D7269666E6F63;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_24289ADB8(uint64_t a1)
{
  v2 = sub_24281E490();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_24289AE28(uint64_t a1)
{
  v2 = sub_24289CF84();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_24289AE84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC4B80);
  __swift_project_value_buffer(v10, qword_27ECC4B80);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3578();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t sub_24289B1A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v0 - 8);
  v57 = v43 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v65 = v43 - v3;
  v4 = sub_2428B3558();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2428B45F8();
  MEMORY[0x28223BE20](v9 - 8);
  v58 = sub_2428B3568();
  v10 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4D60, &qword_2428C4D30);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2ED8, &qword_2428BB640);
  v67 = v12;
  v13 = *(v12 - 8);
  v59 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v51 = 4 * v59;
  v15 = swift_allocObject();
  v52 = v15;
  *(v15 + 16) = xmmword_2428BC390;
  v68 = v15 + v14;
  v50 = *(v12 + 48);
  *(v15 + v14) = 0;
  sub_2428B4578();
  sub_2428B36B8();
  v60 = *MEMORY[0x277CC9110];
  v16 = *(v5 + 104);
  v61 = v5 + 104;
  v62 = v16;
  v53 = v7;
  v16(v7);
  sub_2428B3578();
  v66 = *(v10 + 56);
  v69 = v10 + 56;
  v17 = v65;
  v18 = v58;
  v66(v65, 1, 1, v58);
  v19 = sub_2428B3148();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v63 = v20 + 56;
  v64 = v21;
  v22 = v57;
  v55 = v19;
  v21(v57, 1, 1, v19);
  v23 = v68;
  sub_2428B3178();
  v49 = (v23 + v59);
  v50 = *(v67 + 48);
  *v49 = 1;
  sub_2428B4578();
  sub_2428B36B8();
  v24 = v53;
  v25 = v60;
  v54 = v4;
  v62(v53, v60, v4);
  sub_2428B3578();
  v26 = v17;
  v27 = v69;
  v66(v26, 1, 1, v18);
  v64(v22, 1, 1, v19);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4D70, &unk_2428B6230);
  v48 = *(v27 + 16);
  v45 = *(v27 + 24);
  v43[1] = (v45 + 32) & ~v45;
  v28 = swift_allocObject();
  v46 = xmmword_2428B5D50;
  *(v28 + 16) = xmmword_2428B5D50;
  sub_2428B4578();
  sub_2428B36B8();
  v29 = v62;
  v62(v24, v25, v4);
  sub_2428B3578();
  v30 = v57;
  v31 = v65;
  sub_2428B3168();
  v50 = 2 * v59;
  v44 = (v68 + 2 * v59);
  v49 = *(v67 + 48);
  *v44 = 2;
  sub_2428B4578();
  sub_2428B36B8();
  v32 = v54;
  v29(v24, v60, v54);
  sub_2428B3578();
  v66(v31, 1, 1, v58);
  v64(v30, 1, 1, v55);
  *(swift_allocObject() + 16) = v46;
  sub_2428B4578();
  sub_2428B36B8();
  v33 = v24;
  v34 = v60;
  v35 = v62;
  v62(v33, v60, v32);
  sub_2428B3578();
  v36 = v57;
  sub_2428B3168();
  v37 = v67;
  v50 += v68 + v59;
  v59 = *(v67 + 48);
  *v50 = 3;
  sub_2428B4578();
  sub_2428B36B8();
  v38 = v53;
  v35(v53, v34, v32);
  sub_2428B3578();
  v39 = v58;
  v66(v65, 1, 1, v58);
  v40 = v55;
  v64(v36, 1, 1, v55);
  sub_2428B3178();
  v59 = *(v37 + 48);
  *(v68 + v51) = 4;
  sub_2428B4578();
  sub_2428B36B8();
  v62(v38, v60, v54);
  sub_2428B3578();
  v66(v65, 1, 1, v39);
  v64(v36, 1, 1, v40);
  sub_2428B3178();
  v41 = sub_242822350(v52);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC4B98 = v41;
  return result;
}

uint64_t (*static EventEntity.Availability.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC19A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

CalendarLink::EventEntity::Availability __swiftcall EventEntity.Availability.init(_:)(EKEventAvailability a1)
{
  if (a1 < 4)
  {
    v2 = a1 + 1;
  }

  else
  {
    v2 = 0;
  }

  *v1 = v2;
  return a1;
}

CalendarLink::EventEntity::Availability_optional __swiftcall EventEntity.Availability.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24289BE20(uint64_t a1)
{
  v2 = sub_24281E4E4();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_24289BE90(uint64_t a1)
{
  v2 = sub_24289D3A0();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t static EventEntity.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C88, &qword_2428C4150);
  MEMORY[0x28223BE20](v1);
  v3 = v16 - v2;
  v4 = sub_2428B4418();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C90, &qword_2428C4158);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  sub_2428B43F8();
  sub_24289C868();
  sub_2428B41A8();
  sub_2428B43E8();
  sub_2428B41A8();
  v12 = *(v1 + 48);
  v13 = *(v6 + 16);
  v13(v3, v11, v5);
  v13(&v3[v12], v9, v5);
  sub_2428B41B8();
  v14 = *(v6 + 8);
  v14(v9, v5);
  return (v14)(v11, v5);
}

uint64_t sub_24289C170(uint64_t *a1)
{
  v3 = sub_2428B4648();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *a1;
  v6 = a1[1];
  v1[17] = v4;
  v1[18] = v5;
  v1[19] = v6;

  return MEMORY[0x2822009F8](sub_24289C238, 0, 0);
}

void sub_24289C238()
{
  if (qword_27ECC1978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2428B2F38();
  v2 = sub_2427F3D30();

  v3 = sub_2428B4608();
  v4 = [v2 eventWithAppEntityIdentifier_];

  if (v4)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CF7C88]) init];
    v6 = [v5 textRepresentationForEvent:v4 withTextFormat:0 showURI:0];

    if (v6)
    {
      v8 = *(v0 + 128);
      v7 = *(v0 + 136);
      v9 = *(v0 + 120);
      sub_2428B4918();
      swift_unknownObjectRelease();
      sub_2428024B8((v0 + 48), (v0 + 16));
      swift_dynamicCast();
      sub_2428B4638();
      v10 = sub_2428B4628();
      v12 = v11;
      (*(v8 + 8))(v7, v9);
      if (v12 >> 60 != 15)
      {

        v13 = *(v0 + 8);

        v13(v10, v12);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_2427CCDB0();
  swift_allocError();
  *v14 = 25;
  swift_willThrow();

  v1 = *(v0 + 8);

  v1();
}

uint64_t sub_24289C4FC(void *a1)
{
  v2 = a1[1];
  *(v1 + 40) = *a1;
  *(v1 + 48) = v2;
  return MEMORY[0x2822009F8](sub_24289C520, 0, 0);
}

uint64_t sub_24289C520()
{
  if (qword_27ECC1978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2428B2F38();
  v3 = sub_2427F3D30();

  v4 = sub_2428B4608();
  v5 = [v3 eventWithAppEntityIdentifier_];

  if (v5)
  {
    v6 = [v5 exportToICSWithOptions_];
    if (v6)
    {
      v7 = v6;
      v8 = sub_2428B3618();
      v10 = v9;

      v11 = *(v0 + 8);

      return v11(v8, v10);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v13 = -127;
    swift_willThrow();
  }

  else
  {
    sub_2427CCDB0();
    swift_allocError();
    *v12 = 25;
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24289C74C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmTrigger(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24289C7B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24289C7F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4BD0, &qword_2428C40C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24289C868()
{
  result = qword_27ECC4C98;
  if (!qword_27ECC4C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4C98);
  }

  return result;
}

unint64_t sub_24289C908()
{
  result = qword_280CDE3E0;
  if (!qword_280CDE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE3E0);
  }

  return result;
}

unint64_t sub_24289C960()
{
  result = qword_280CDE428;
  if (!qword_280CDE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE428);
  }

  return result;
}

unint64_t sub_24289C9B8()
{
  result = qword_280CDE400;
  if (!qword_280CDE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE400);
  }

  return result;
}

unint64_t sub_24289CA10()
{
  result = qword_280CDE3D8;
  if (!qword_280CDE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE3D8);
  }

  return result;
}

unint64_t sub_24289CA68()
{
  result = qword_280CDE410;
  if (!qword_280CDE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE410);
  }

  return result;
}

unint64_t sub_24289CABC()
{
  result = qword_280CDE408;
  if (!qword_280CDE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE408);
  }

  return result;
}

unint64_t sub_24289CB10()
{
  result = qword_280CDE420;
  if (!qword_280CDE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE420);
  }

  return result;
}

unint64_t sub_24289CB68()
{
  result = qword_280CDE418;
  if (!qword_280CDE418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE418);
  }

  return result;
}

unint64_t sub_24289CBD8()
{
  result = qword_280CDE3F8;
  if (!qword_280CDE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE3F8);
  }

  return result;
}

unint64_t sub_24289CC30()
{
  result = qword_280CDE3D0;
  if (!qword_280CDE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE3D0);
  }

  return result;
}

unint64_t sub_24289CC88()
{
  result = qword_280CDE3E8;
  if (!qword_280CDE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE3E8);
  }

  return result;
}

unint64_t sub_24289CD24()
{
  result = qword_27ECC4CD0;
  if (!qword_27ECC4CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4CD0);
  }

  return result;
}

unint64_t sub_24289CD7C()
{
  result = qword_27ECC4CD8;
  if (!qword_27ECC4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4CD8);
  }

  return result;
}

unint64_t sub_24289CDD4()
{
  result = qword_27ECC4CE0;
  if (!qword_27ECC4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4CE0);
  }

  return result;
}

unint64_t sub_24289CE2C()
{
  result = qword_27ECC4CE8;
  if (!qword_27ECC4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4CE8);
  }

  return result;
}

unint64_t sub_24289CE84()
{
  result = qword_27ECC4CF0;
  if (!qword_27ECC4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4CF0);
  }

  return result;
}

unint64_t sub_24289CED8()
{
  result = qword_27ECC4CF8;
  if (!qword_27ECC4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4CF8);
  }

  return result;
}

unint64_t sub_24289CF2C()
{
  result = qword_27ECC4D00;
  if (!qword_27ECC4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4D00);
  }

  return result;
}

unint64_t sub_24289CF84()
{
  result = qword_27ECC4D08;
  if (!qword_27ECC4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4D08);
  }

  return result;
}

unint64_t sub_24289CFF4()
{
  result = qword_27ECC4D10;
  if (!qword_27ECC4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4D10);
  }

  return result;
}

unint64_t sub_24289D04C()
{
  result = qword_27ECC4D18;
  if (!qword_27ECC4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4D18);
  }

  return result;
}

unint64_t sub_24289D0A4()
{
  result = qword_27ECC4D20;
  if (!qword_27ECC4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4D20);
  }

  return result;
}

unint64_t sub_24289D140()
{
  result = qword_280CDE448;
  if (!qword_280CDE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE448);
  }

  return result;
}

unint64_t sub_24289D198()
{
  result = qword_280CDE490;
  if (!qword_280CDE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE490);
  }

  return result;
}

unint64_t sub_24289D1F0()
{
  result = qword_280CDE468;
  if (!qword_280CDE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE468);
  }

  return result;
}

unint64_t sub_24289D248()
{
  result = qword_280CDE440;
  if (!qword_280CDE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE440);
  }

  return result;
}

unint64_t sub_24289D2A0()
{
  result = qword_280CDE478;
  if (!qword_280CDE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE478);
  }

  return result;
}

unint64_t sub_24289D2F4()
{
  result = qword_280CDE470;
  if (!qword_280CDE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE470);
  }

  return result;
}

unint64_t sub_24289D348()
{
  result = qword_280CDE488;
  if (!qword_280CDE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE488);
  }

  return result;
}

unint64_t sub_24289D3A0()
{
  result = qword_280CDE480;
  if (!qword_280CDE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE480);
  }

  return result;
}

unint64_t sub_24289D464()
{
  result = qword_280CDE460;
  if (!qword_280CDE460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE460);
  }

  return result;
}

unint64_t sub_24289D4BC()
{
  result = qword_280CDE438;
  if (!qword_280CDE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE438);
  }

  return result;
}

unint64_t sub_24289D514()
{
  result = qword_280CDE450;
  if (!qword_280CDE450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE450);
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_24289D5F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_24289D63C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24289D720()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2428B36C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2428B45F8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2428B3568();
  __swift_allocate_value_buffer(v6, qword_27ECC4DA0);
  __swift_project_value_buffer(v6, qword_27ECC4DA0);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_2428B3578();
}

uint64_t (*static DeleteEventIntent.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC19B0 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3568();
  __swift_project_value_buffer(v1, qword_27ECC4DA0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24289DA2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3078();
  __swift_allocate_value_buffer(v10, qword_27ECC4DB8);
  __swift_project_value_buffer(v10, qword_27ECC4DB8);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3588();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3088();
}

uint64_t (*static DeleteEventIntent.description.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC19B8 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3078();
  __swift_project_value_buffer(v1, qword_27ECC4DB8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t DeleteEventIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v27 = a1;
  v26 = sub_2428B3298();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v19 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v38 = 0u;
  v39 = 0u;
  *&v40 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2540, &qword_2428B5AE0);
  v24 = sub_2428B3568();
  v14 = *(v24 - 8);
  v23 = *(v14 + 56);
  v25 = v14 + 56;
  v23(v13, 1, 1, v24);
  sub_2427CBC50(&v38);
  v34 = v44;
  v35 = v45;
  v36 = v46;
  v37 = v47;
  v30 = v40;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v28 = v38;
  v29 = v39;
  v15 = sub_2428B2AE8();
  v16 = *(*(v15 - 8) + 56);
  v16(v10, 1, 1, v15);
  v16(v8, 1, 1, v15);
  v21 = *MEMORY[0x277CBA308];
  v17 = *(v2 + 104);
  v19[1] = v2 + 104;
  v20 = v17;
  v17(v4);
  sub_2427C2774();
  v27[1] = sub_2428B2E48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2DA0, &qword_2428BE810);
  v23(v13, 1, 1, v24);
  LOBYTE(v28) = 3;
  v16(v10, 1, 1, v15);
  v16(v8, 1, 1, v15);
  v20(v4, v21, v26);
  sub_24281E538();
  result = sub_2428B2E28();
  v27[2] = result;
  return result;
}

uint64_t DeleteEventIntent.eventStoreProvider.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*DeleteEventIntent.eventStoreProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CBEA8;
}

uint64_t sub_24289E328(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[7];
  v3 = a1[5];
  v19 = a1[6];
  v20 = v2;
  v4 = a1[7];
  v5 = a1[9];
  v21 = a1[8];
  v22 = v5;
  v6 = a1[3];
  v7 = a1[1];
  v15 = a1[2];
  v16 = v6;
  v8 = a1[3];
  v9 = a1[5];
  v17 = a1[4];
  v18 = v9;
  v10 = a1[1];
  v14[0] = *a1;
  v14[1] = v10;
  v13[16] = v19;
  v13[17] = v4;
  v11 = a1[9];
  v13[18] = v21;
  v13[19] = v11;
  v13[12] = v15;
  v13[13] = v8;
  v13[14] = v17;
  v13[15] = v3;
  v13[10] = v14[0];
  v13[11] = v7;
  sub_2427CD4FC(v14, v13);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t (*DeleteEventIntent.entity.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t (*DeleteEventIntent.span.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static DeleteEventIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4DD8, &qword_2428C4D78);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4DE0, &qword_2428C4D80);
  MEMORY[0x28223BE20](v1);
  sub_24289E78C();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4DF0, &qword_2428C4DB0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

unint64_t sub_24289E78C()
{
  result = qword_27ECC4DE8;
  if (!qword_27ECC4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4DE8);
  }

  return result;
}

uint64_t sub_24289E7E0()
{
  swift_getKeyPath();
  sub_24289E78C();
  v0 = sub_2428B2F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2428B5A90;
  *(v1 + 32) = v0;
  sub_2428B2F38();
  v2 = sub_2428B3218();

  return v2;
}

uint64_t DeleteEventIntent.perform()(uint64_t a1)
{
  *(v2 + 384) = a1;
  *(v2 + 392) = *v1;
  *(v2 + 408) = *(v1 + 16);
  sub_2428B4758();
  *(v2 + 416) = sub_2428B4748();
  v3 = sub_2428B4728();
  *(v2 + 424) = v3;
  *(v2 + 432) = v4;

  return MEMORY[0x2822009F8](sub_24289E97C, v3, v4);
}

uint64_t sub_24289E97C()
{
  v1 = sub_2428B43D8();
  *(v0 + 360) = v1;
  *(v0 + 368) = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740], MEMORY[0x277CF7728]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 336));
  if (v1)
  {
    v3 = sub_2427F5334();
    *(v0 + 440) = v3;
    v4 = v3;
    sub_24281B654();
    *(v0 + 448) = v5;
    v8 = v5;
    sub_2428B2DC8();
    v9 = *(v0 + 288);
    v10 = *(v0 + 304);
    v11 = *(v0 + 256);
    *(v0 + 112) = *(v0 + 272);
    *(v0 + 128) = v9;
    v12 = *(v0 + 320);
    *(v0 + 144) = v10;
    *(v0 + 160) = v12;
    v13 = *(v0 + 224);
    v14 = *(v0 + 240);
    v15 = *(v0 + 192);
    *(v0 + 48) = *(v0 + 208);
    *(v0 + 64) = v13;
    *(v0 + 80) = v14;
    *(v0 + 96) = v11;
    *(v0 + 16) = *(v0 + 176);
    *(v0 + 32) = v15;
    sub_2428B3218();
    sub_2427CCE04(v0 + 16);
    v16 = sub_2428B4608();

    v17 = [v4 eventWithIdentifier_];
    *(v0 + 456) = v17;

    if (!v17)
    {

      sub_2428B2C28();

      v6 = *(v0 + 8);
      goto LABEL_5;
    }

    if ([v17 isDeletable])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
      v18 = swift_allocObject();
      *(v0 + 464) = v18;
      *(v18 + 16) = xmmword_2428B5A90;
      *(v18 + 32) = v17;
      v19 = v17;
      v20 = sub_2428B2DE8();
      *(v0 + 472) = v20;
      v21 = swift_task_alloc();
      *(v0 + 480) = v21;
      *v21 = v0;
      v21[1] = sub_24289ED98;

      return sub_24280CA3C(v0 + 496, v18, v20);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v22 = 40;
    swift_willThrow();
  }

  else
  {

    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_2428B2928();
    swift_willThrow();
  }

  v6 = *(v0 + 8);
LABEL_5:

  return v6();
}

uint64_t sub_24289ED98()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {

    v3 = *(v2 + 424);
    v4 = *(v2 + 432);
    v5 = sub_24289F07C;
  }

  else
  {

    v3 = *(v2 + 424);
    v4 = *(v2 + 432);
    v5 = sub_24289EF30;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24289EF30()
{

  v1 = qword_2428C4F98[*(v0 + 496)];
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  *(v0 + 376) = 0;
  v4 = [v2 deleteEvent:v3 span:v1 error:v0 + 376];
  v5 = *(v0 + 376);
  v6 = *(v0 + 448);
  v7 = *(v0 + 456);
  v8 = *(v0 + 440);
  if (v4)
  {
    v9 = v5;
    sub_2428B2C28();
  }

  else
  {
    v11 = v5;
    sub_2428B3538();

    swift_willThrow();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24289F07C()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 440);

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_24289F130()
{
  result = qword_280CDDDD8;
  if (!qword_280CDDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDDD8);
  }

  return result;
}

unint64_t sub_24289F188()
{
  result = qword_280CDDDE0;
  if (!qword_280CDDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDDE0);
  }

  return result;
}

uint64_t sub_24289F214@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC19B0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4DA0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_24289F2D4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4DD8, &qword_2428C4D78);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4DE0, &qword_2428C4D80);
  MEMORY[0x28223BE20](v3);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4DF0, &qword_2428C4DB0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_24289F480(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return DeleteEventIntent.perform()(a1);
}

unint64_t sub_24289F520()
{
  result = qword_27ECC4DF8;
  if (!qword_27ECC4DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4DF8);
  }

  return result;
}

uint64_t sub_24289F5BC@<X0>(void *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  LOBYTE(v4) = a3;
  v84 = *MEMORY[0x277D85DE8];
  v79 = a1;
  v7 = [a1 calendarsForEntityType_];
  v78 = 0;
  sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
  sub_242828268();
  v8 = sub_2428B47B8();

  v80 = a4;
  if ((a2 & 1) == 0)
  {
LABEL_40:
    if (v4)
    {
      goto LABEL_41;
    }

    goto LABEL_79;
  }

  if ((v8 & 0xC000000000000001) == 0)
  {
    v25 = *(v8 + 32);
    v14 = ((1 << v25) + 63) >> 6;
    if ((v25 & 0x3Fu) <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_88;
  }

  v10 = MEMORY[0x277D84FA0];
  v83 = MEMORY[0x277D84FA0];
  sub_2428B4988();
  v11 = sub_2428B49F8();
  if (!v11)
  {
    v8 = v10;
LABEL_38:

LABEL_39:
    a4 = v80;
    goto LABEL_40;
  }

  v8 = MEMORY[0x277D84FA0];
  a4 = 1;
  while (1)
  {
    v81 = v11;
    swift_dynamicCast();
    v12 = v82;
    if ([v82 allowsContentModifications])
    {
      break;
    }

LABEL_6:
    v11 = sub_2428B49F8();
    if (!v11)
    {
      goto LABEL_38;
    }
  }

  v13 = *(v8 + 16);
  if (*(v8 + 24) <= v13)
  {
    sub_2428AEF30(v13 + 1);
  }

  v8 = v83;
  v14 = v82;
  v15 = sub_2428B48D8();
  v16 = v83 + 56;
  v17 = -1 << *(v83 + 32);
  v18 = v15 & ~v17;
  v19 = v18 >> 6;
  if (((-1 << v18) & ~*(v83 + 56 + 8 * (v18 >> 6))) != 0)
  {
    v20 = __clz(__rbit64((-1 << v18) & ~*(v83 + 56 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v8 + 48) + 8 * v20) = v12;
    ++*(v8 + 16);
    goto LABEL_6;
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
    v24 = *(v16 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_88:
    sub_2428B3218();
    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_22:
      v75[1] = v75;
      v76 = v14;
      MEMORY[0x28223BE20](v9);
      v27 = v75 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v27, v26);
      v77 = 0;
      v28 = 0;
      v29 = 1 << *(v8 + 32);
      v30 = -1;
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      v14 = v30 & *(v8 + 56);
      v31 = (v29 + 63) >> 6;
      a4 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
      while (v14)
      {
        v32 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_32:
        v35 = v32 | (v28 << 6);
        if ([*(*(v8 + 48) + 8 * v35) allowsContentModifications])
        {
          *&v27[(v35 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v35;
          v36 = __OFADD__(v77, 1);
          v77 = (v77 + 1);
          if (v36)
          {
            __break(1u);
LABEL_36:
            v9 = sub_2428AF8CC(v27, v76, v77, v8);
            v8 = v9;
            goto LABEL_39;
          }
        }
      }

      v33 = v28;
      while (1)
      {
        v28 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_86;
        }

        if (v28 >= v31)
        {
          goto LABEL_36;
        }

        v34 = *(v8 + 56 + 8 * v28);
        ++v33;
        if (v34)
        {
          v32 = __clz(__rbit64(v34));
          v14 = (v34 - 1) & v34;
          goto LABEL_32;
        }
      }
    }

    v68 = swift_slowAlloc();
    v69 = v78;
    v70 = sub_2428A14A4(v68, v14, v8, sub_24289FDF4);
    v78 = v69;

    v9 = MEMORY[0x245D1C000](v68, -1, -1);
    v8 = v70;
    if ((v4 & 1) == 0)
    {
      goto LABEL_79;
    }

LABEL_41:
    if ((v8 & 0xC000000000000001) != 0)
    {
      break;
    }

    v52 = *(v8 + 32);
    v14 = ((1 << v52) + 63) >> 6;
    if ((v52 & 0x3Fu) > 0xD)
    {
      sub_2428B3218();
      if (!swift_stdlib_isStackAllocationSafe())
      {
        v71 = swift_slowAlloc();
        v72 = v78;
        v73 = sub_2428A14A4(v71, v14, v8, sub_24289FE28);
        if (!v72)
        {
          v74 = v73;

          MEMORY[0x245D1C000](v71, -1, -1);
          v8 = v74;
          goto LABEL_79;
        }

        result = MEMORY[0x245D1C000](v71, -1, -1);
        __break(1u);
        return result;
      }
    }

    v77 = v75;
    MEMORY[0x28223BE20](v9);
    v54 = v75 - ((v53 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v54, v53);
    v4 = 0;
    v55 = 0;
    a4 = v8 + 56;
    v56 = 1 << *(v8 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & *(v8 + 56);
    v59 = (v56 + 63) >> 6;
    while (v58)
    {
      v60 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
LABEL_71:
      v63 = v60 | (v55 << 6);
      if ([*(*(v8 + 48) + 8 * v63) isDeletable])
      {
        *&v54[(v63 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v63;
        v36 = __OFADD__(v4++, 1);
        if (v36)
        {
          __break(1u);
LABEL_75:
          v8 = sub_2428AF8CC(v54, v14, v4, v8);
          goto LABEL_78;
        }
      }
    }

    v61 = v55;
    while (1)
    {
      v55 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v55 >= v59)
      {
        goto LABEL_75;
      }

      v62 = *(a4 + 8 * v55);
      ++v61;
      if (v62)
      {
        v60 = __clz(__rbit64(v62));
        v58 = (v62 - 1) & v62;
        goto LABEL_71;
      }
    }
  }

  v37 = MEMORY[0x277D84FA0];
  v83 = MEMORY[0x277D84FA0];
  LOBYTE(v4) = sub_2428B4988();
  v38 = sub_2428B49F8();
  if (v38)
  {
    v8 = MEMORY[0x277D84FA0];
    a4 = 63;
    while (1)
    {
      v81 = v38;
      swift_dynamicCast();
      v39 = [v82 isDeletable];
      v40 = v82;
      if (v39)
      {
        v41 = *(v8 + 16);
        if (*(v8 + 24) <= v41)
        {
          sub_2428AEF30(v41 + 1);
        }

        v8 = v83;
        v14 = v40;
        v42 = sub_2428B48D8();
        v43 = v8 + 56;
        v44 = -1 << *(v8 + 32);
        v45 = v42 & ~v44;
        v46 = v45 >> 6;
        if (((-1 << v45) & ~*(v8 + 56 + 8 * (v45 >> 6))) == 0)
        {
          v48 = 0;
          v49 = (63 - v44) >> 6;
          while (++v46 != v49 || (v48 & 1) == 0)
          {
            v50 = v46 == v49;
            if (v46 == v49)
            {
              v46 = 0;
            }

            v48 |= v50;
            v51 = *(v43 + 8 * v46);
            if (v51 != -1)
            {
              v47 = __clz(__rbit64(~v51)) + (v46 << 6);
              goto LABEL_59;
            }
          }

          goto LABEL_85;
        }

        v47 = __clz(__rbit64((-1 << v45) & ~*(v8 + 56 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_59:
        *(v43 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
        *(*(v8 + 48) + 8 * v47) = v40;
        ++*(v8 + 16);
      }

      else
      {
      }

      v38 = sub_2428B49F8();
      if (!v38)
      {
        goto LABEL_77;
      }
    }
  }

  v8 = v37;
LABEL_77:

LABEL_78:
  a4 = v80;
LABEL_79:
  if ((v8 & 0xC000000000000001) != 0)
  {
    if (sub_2428B49C8())
    {
      goto LABEL_81;
    }

LABEL_83:

    v64 = 0;
    v65 = 0;
    v67 = -1;
  }

  else
  {
    if (!*(v8 + 16))
    {
      goto LABEL_83;
    }

LABEL_81:
    v64 = v79;
    v65 = sub_2428A0634(v8);

    v67 = 0;
  }

  *a4 = v64;
  *(a4 + 8) = v65;
  *(a4 + 16) = v67;
  return result;
}

uint64_t sub_24289FE5C(id *a1, char a2, char a3, id a4, char a5)
{
  v8 = *a1;
  if ((a2 & 1) == 0 || (result = [*a1 allowsContentModifications], result))
  {
    if ((a3 & 1) == 0 || (result = [v8 isDeletable], result))
    {
      if ([a4 sourceType] == 5 || !objc_msgSend(a4, sel_sourceType) && objc_msgSend(v8, sel_isSuggestedEventCalendar) && (SGAppCanShowSiriSuggestions(*MEMORY[0x277CF78A0]) & 1) != 0)
      {
        return 1;
      }

      else
      {
        v10 = [a4 sourceType] == 4;
        result = v10;
        if (!v10 && (a5 & 1) != 0)
        {
          return [a4 sourceType] == 6;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24289FF58(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_2428B49C8();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = sub_2428B49C8();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_2428A03F4(result, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_24282537C(&v34, (v3 + 8 * v13 + 32), v14, v8);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_2427C9D4C(v34);
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!sub_2428B49F8())
    {
      goto LABEL_11;
    }

    sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_2428B46E8();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_2428B49F8())
      {
        sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

void sub_2428A02E0(unint64_t *a1, SEL *a2)
{
  v4 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
  {
    v4 = sub_2428252F0(v4);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6[0] = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v6[1] = v5;
  sub_2428A06E4(v6, a2);
  *a1 = v4;
}

id sub_2428A0360(id *a1, char a2, char a3)
{
  v4 = *a1;
  if ((a2 & 1) == 0 || (result = [*a1 allowsContentModifications], result))
  {
    if ((a3 & 1) == 0 || (result = [v4 isDeletable], result))
    {
      if ([v4 isSuggestedEventCalendar])
      {
        return 0;
      }

      else
      {
        return ([v4 isNaturalLanguageSuggestedEventCalendar] ^ 1);
      }
    }
  }

  return result;
}

uint64_t sub_2428A03F4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2428B49C8();
LABEL_9:
  result = sub_2428B4A88();
  *v2 = result;
  return result;
}

void sub_2428A0494(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2780, &qword_2428B9358);
      v7 = *(sub_2428B2BA8() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_2428B2BA8();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void *sub_2428A0634(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_2428B49C8();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_2428250E8(v2, 0);
    sub_2428B3218();
    v1 = sub_24282537C(&v5, v3 + 4, v2, v1);
    sub_2427C9D4C(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_2428A06E4(uint64_t *a1, SEL *a2)
{
  v4 = a1[1];
  v5 = sub_2428B4BC8();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
        v8 = sub_2428B46F8();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_2428A0930(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_2428A0804(0, v4, 1, a1, a2);
  }
}

void sub_2428A0804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, SEL *a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v8 = *a4;
    v9 = objc_opt_self();
    v10 = v8 + 8 * v6 - 8;
    v11 = a1 - v6;
LABEL_5:
    v24 = v6;
    v12 = *(v8 + 8 * v6);
    v22 = v11;
    v23 = v10;
    v13 = v10;
    while (1)
    {
      v14 = *v13;
      v15 = v12;
      v16 = v14;
      v17 = [v9 *a5];
      v18 = v17[2](v17, v15, v16);
      _Block_release(v17);

      if (v18 != -1)
      {
LABEL_4:
        v6 = v24 + 1;
        v10 = v23 + 8;
        v11 = v22 - 1;
        if (v24 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v8)
      {
        break;
      }

      v19 = *v13;
      v12 = *(v13 + 8);
      *v13 = v12;
      *(v13 + 8) = v19;
      v13 -= 8;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2428A0930(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, SEL *a5)
{
  v7 = v5;
  v8 = a3;
  v9 = a3[1];
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      v12 = v10;
      v13 = v10 + 1;
      if (v10 + 1 < v9)
      {
        v113 = v9;
        v104 = v11;
        v106 = v7;
        v14 = *(*v8 + 8 * v13);
        v15 = 8 * v10;
        v16 = (*v8 + 8 * v10);
        v17 = *v16;
        v6 = (v16 + 2);
        v18 = objc_opt_self();
        v19 = v14;
        v20 = v17;
        v111 = v18;
        v21 = [v18 *a5];
        v22 = v12;
        v23 = v21[2](v21, v19, v20);
        _Block_release(v21);

        v102 = v22;
        v24 = v22 + 2;
        while (1)
        {
          v13 = v113;
          if (v113 == v24)
          {
            break;
          }

          v25 = *(v6 - 8);
          v26 = *v6;
          v27 = v25;
          v28 = [v111 *a5];
          v29 = v28[2](v28, v26, v27);
          _Block_release(v28);

          ++v24;
          v6 += 8;
          if ((v23 == -1) == (v29 != -1))
          {
            v13 = v24 - 1;
            break;
          }
        }

        v11 = v104;
        v7 = v106;
        v8 = a3;
        if (v23 == -1)
        {
          v12 = v102;
          if (v13 < v102)
          {
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
            return;
          }

          if (v102 < v13)
          {
            v30 = 8 * v13 - 8;
            v31 = v13;
            v32 = v102;
            do
            {
              if (v32 != --v31)
              {
                v34 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v33 = *(v34 + v15);
                *(v34 + v15) = *(v34 + v30);
                *(v34 + v30) = v33;
              }

              ++v32;
              v30 -= 8;
              v15 += 8;
            }

            while (v32 < v31);
          }
        }

        else
        {
          v12 = v102;
        }
      }

      v35 = v8[1];
      if (v13 < v35)
      {
        if (__OFSUB__(v13, v12))
        {
          goto LABEL_116;
        }

        if (v13 - v12 < a4)
        {
          if (__OFADD__(v12, a4))
          {
            goto LABEL_117;
          }

          if (v12 + a4 >= v35)
          {
            v36 = v8[1];
          }

          else
          {
            v36 = v12 + a4;
          }

          if (v36 < v12)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v13 != v36)
          {
            v105 = v11;
            v107 = v7;
            v37 = *v8;
            v6 = objc_opt_self();
            v38 = v37 + 8 * v13 - 8;
            v103 = v12;
            v39 = v12 - v13;
            v110 = v36;
            do
            {
              v112 = v38;
              v114 = v13;
              v40 = *(v37 + 8 * v13);
              v41 = v39;
              v42 = v38;
              do
              {
                v43 = *v42;
                v44 = v40;
                v45 = v43;
                v46 = [v6 *a5];
                v47 = v46[2](v46, v44, v45);
                _Block_release(v46);

                if (v47 != -1)
                {
                  break;
                }

                if (!v37)
                {
                  goto LABEL_121;
                }

                v48 = *v42;
                v40 = *(v42 + 8);
                *v42 = v40;
                *(v42 + 8) = v48;
                v42 -= 8;
              }

              while (!__CFADD__(v41++, 1));
              v13 = v114 + 1;
              v38 = v112 + 8;
              --v39;
            }

            while (v114 + 1 != v110);
            v13 = v110;
            v11 = v105;
            v7 = v107;
            v8 = a3;
            v12 = v103;
          }
        }
      }

      if (v13 < v12)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_2427F74F4(0, *(v11 + 2) + 1, 1, v11);
      }

      v51 = *(v11 + 2);
      v50 = *(v11 + 3);
      v52 = v51 + 1;
      if (v51 >= v50 >> 1)
      {
        v11 = sub_2427F74F4((v50 > 1), v51 + 1, 1, v11);
      }

      *(v11 + 2) = v52;
      v53 = &v11[16 * v51];
      *(v53 + 4) = v12;
      *(v53 + 5) = v13;
      v6 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

      v115 = v13;
      if (v51)
      {
        while (1)
        {
          v54 = v52 - 1;
          if (v52 >= 4)
          {
            break;
          }

          if (v52 == 3)
          {
            v55 = *(v11 + 4);
            v56 = *(v11 + 5);
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_57:
            if (v58)
            {
              goto LABEL_104;
            }

            v71 = &v11[16 * v52];
            v73 = *v71;
            v72 = *(v71 + 1);
            v74 = __OFSUB__(v72, v73);
            v75 = v72 - v73;
            v76 = v74;
            if (v74)
            {
              goto LABEL_107;
            }

            v77 = &v11[16 * v54 + 32];
            v79 = *v77;
            v78 = *(v77 + 1);
            v65 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v65)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v75, v80))
            {
              goto LABEL_111;
            }

            if (v75 + v80 >= v57)
            {
              if (v57 < v80)
              {
                v54 = v52 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v81 = &v11[16 * v52];
          v83 = *v81;
          v82 = *(v81 + 1);
          v65 = __OFSUB__(v82, v83);
          v75 = v82 - v83;
          v76 = v65;
LABEL_71:
          if (v76)
          {
            goto LABEL_106;
          }

          v84 = &v11[16 * v54];
          v86 = *(v84 + 4);
          v85 = *(v84 + 5);
          v65 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v65)
          {
            goto LABEL_109;
          }

          if (v87 < v75)
          {
            goto LABEL_3;
          }

LABEL_78:
          v92 = v54 - 1;
          if (v54 - 1 >= v52)
          {
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
            goto LABEL_118;
          }

          if (!*v8)
          {
            goto LABEL_122;
          }

          v93 = *&v11[16 * v92 + 32];
          v94 = *&v11[16 * v54 + 40];
          sub_2428A1014((*v8 + 8 * v93), (*v8 + 8 * *&v11[16 * v54 + 32]), (*v8 + 8 * v94), v6, a5);
          if (v7)
          {
            goto LABEL_98;
          }

          if (v94 < v93)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_2428AEF1C(v11);
          }

          if (v92 >= *(v11 + 2))
          {
            goto LABEL_101;
          }

          v95 = &v11[16 * v92];
          *(v95 + 4) = v93;
          *(v95 + 5) = v94;
          sub_2428AEE90(v54);
          v52 = *(v11 + 2);
          if (v52 <= 1)
          {
            goto LABEL_3;
          }
        }

        v59 = &v11[16 * v52 + 32];
        v60 = *(v59 - 64);
        v61 = *(v59 - 56);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_102;
        }

        v64 = *(v59 - 48);
        v63 = *(v59 - 40);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_103;
        }

        v66 = &v11[16 * v52];
        v68 = *v66;
        v67 = *(v66 + 1);
        v65 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v65)
        {
          goto LABEL_105;
        }

        v65 = __OFADD__(v57, v69);
        v70 = v57 + v69;
        if (v65)
        {
          goto LABEL_108;
        }

        if (v70 >= v62)
        {
          v88 = &v11[16 * v54 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v65 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v65)
          {
            goto LABEL_112;
          }

          if (v57 < v91)
          {
            v54 = v52 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v9 = v8[1];
      v10 = v115;
      if (v115 >= v9)
      {
        goto LABEL_88;
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_88:
  v6 = v11;
  v11 = *a1;
  if (!*a1)
  {
    goto LABEL_126;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_119:
    v6 = sub_2428AEF1C(v6);
  }

  v96 = *(v6 + 16);
  if (v96 >= 2)
  {
    do
    {
      v97 = *v8;
      if (!*v8)
      {
        goto LABEL_123;
      }

      v8 = (v96 - 1);
      v98 = *(v6 + 16 * v96);
      v99 = *(v6 + 16 * (v96 - 1) + 40);
      sub_2428A1014((v97 + 8 * v98), (v97 + 8 * *(v6 + 16 * (v96 - 1) + 32)), (v97 + 8 * v99), v11, a5);
      if (v7)
      {
        break;
      }

      if (v99 < v98)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_2428AEF1C(v6);
      }

      if (v96 - 2 >= *(v6 + 16))
      {
        goto LABEL_114;
      }

      v100 = (v6 + 16 * v96);
      *v100 = v98;
      v100[1] = v99;
      sub_2428AEE90(v96 - 1);
      v96 = *(v6 + 16);
      v8 = a3;
    }

    while (v96 > 1);
  }

LABEL_98:
}

uint64_t sub_2428A1014(char *__src, void **a2, void **a3, char *a4, SEL *a5)
{
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      v26 = a4;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
      a4 = v26;
    }

    v27 = a2;
    v28 = &a4[8 * v12];
    v14 = a4;
    if (v10 >= 8 && a2 > v6)
    {
      v42 = a4;
      v41 = v6;
LABEL_25:
      v44 = v27;
      v29 = v27 - 1;
      --v5;
      v30 = v28;
      do
      {
        v31 = (v5 + 1);
        v32 = *(v30 - 1);
        v30 -= 8;
        v33 = v29;
        v34 = *v29;
        v35 = objc_opt_self();
        v36 = v32;
        v37 = v34;
        v38 = [v35 *a5];
        v39 = v38[2](v38, v36, v37);
        _Block_release(v38);

        if (v39 == -1)
        {
          if (v31 != v44)
          {
            *v5 = *v33;
          }

          v14 = v42;
          if (v28 <= v42 || (v27 = v33, v33 <= v41))
          {
            v27 = v33;
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if (v31 != v28)
        {
          *v5 = *v30;
        }

        --v5;
        v28 = v30;
        v29 = v33;
      }

      while (v30 > v42);
      v28 = v30;
      v14 = v42;
      v27 = v44;
    }
  }

  else
  {
    v13 = a2;
    v14 = a4;
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v43 = &v14[v9];
    if (v7 >= 8)
    {
      v15 = v13;
      while (1)
      {
        if (v15 >= v5)
        {
          goto LABEL_35;
        }

        v18 = *v15;
        v19 = *v14;
        v20 = objc_opt_self();
        v21 = v18;
        v22 = v19;
        v23 = [v20 *a5];
        v24 = v23[2](v23, v21, v22);
        _Block_release(v23);

        if (v24 != -1)
        {
          break;
        }

        v16 = v15;
        v17 = v6 == v15++;
        if (!v17)
        {
          goto LABEL_12;
        }

LABEL_13:
        v6 += 8;
        if (v14 >= v43)
        {
          goto LABEL_35;
        }
      }

      v16 = v14;
      v17 = v6 == v14++;
      if (v17)
      {
        goto LABEL_13;
      }

LABEL_12:
      *v6 = *v16;
      goto LABEL_13;
    }

LABEL_35:
    v27 = v6;
    v28 = v43;
  }

LABEL_37:
  if (v27 != v14 || v27 >= (v14 + ((v28 - v14 + (v28 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v27, v14, 8 * ((v28 - v14) / 8));
  }

  return 1;
}

void sub_2428A1338(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:
        sub_2428B2F38();
        sub_2428AF8CC(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_2428A14A4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_2428A1338(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t sub_2428A1534(unint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, unsigned __int8 a6)
{
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = *v6;
  v14 = v13 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v15 = __OFSUB__(a3, v7);
  v16 = a3 - v7;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v16)
  {
    v17 = *(v13 + 16);
    v15 = __OFSUB__(v17, a2);
    v18 = v17 - a2;
    if (!v15)
    {
      result = v14 + 24 * a3;
      v19 = (v13 + 32 + 24 * a2);
      v20 = 24 * v18;
      v21 = v19 + 24 * v18;
      if (result != v19 || result >= v21)
      {
        result = memmove(result, v19, v20);
      }

      v23 = *(v13 + 16);
      v15 = __OFADD__(v23, v16);
      v24 = v23 + v16;
      if (!v15)
      {
        *(v13 + 16) = v24;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v14 = a4;
    *(v14 + 8) = a5;
    *(v14 + 16) = a6;
    result = sub_2427FAED4(a4, a5, a6);
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_2428A163C(unint64_t result, uint64_t a2, void *a3, void *a4, unsigned __int8 a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = *v5;
  v8 = *(*v5 + 2);
  if (v8 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 3) >> 1)
  {
    if (v8 <= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v8;
    }

    v7 = sub_2427F73D8(isUniquelyReferenced_nonNull_native, v18, 1, v7);
    *v5 = v7;
  }

  result = sub_2428A1534(v9, a2, 1, a3, a4, a5);
  *v5 = v7;
  return result;
}

char *_s12CalendarLink0A12ListGroupingV6groups14withEventStore16includeDelegates12writableOnly09deletableL00I18IntegrationSourcesSayAC5GroupOGSo07EKEventH0C_S4btFZ_0(void *a1, int a2, char a3, int a4, int a5)
{
  LODWORD(v143) = a5;
  LODWORD(v5) = a4;
  LOBYTE(v6) = a3;
  v139 = a2;
  v155 = *MEMORY[0x277D85DE8];
  v7 = [a1 sortedSourcesEnabledForEntityType_];
  sub_242822BFC(0, &qword_27ECC35C8, 0x277CC5AC8);
  v8 = sub_2428B46C8();

  v9 = MEMORY[0x277D84F90];
  v152 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_212;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v11 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
  v145 = v5;
  if (!v10)
  {
    v150 = v9;
    v151 = v9;
    v149 = v9;

    v66 = 0;
    v140 = v9;
    v62 = v9;
    goto LABEL_113;
  }

  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_215;
  }

  v12 = 0;
  v144 = (v8 & 0xC000000000000001);
  v127 = v8 + 32;
  v140 = v9;
  v137 = v8;
  do
  {
    if (v144)
    {
      v13 = MEMORY[0x245D1B5D0](v12, v8);
    }

    else
    {
      v13 = *(v8 + 8 * v12 + 32);
    }

    v14 = v13;
    if (![v13 isEnabledForEvents] || !objc_msgSend(v14, sel_sourceType) || objc_msgSend(v14, sel_sourceType) == 5 || objc_msgSend(v14, sel_sourceType) == 4 || objc_msgSend(v14, sel_sourceType) == 6 || (objc_msgSend(v14, sel_isDelegate) & 1) != 0)
    {

      goto LABEL_16;
    }

    v15 = v10;
    v16 = [v14 calendarsForEntityType_];
    sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
    sub_242828268();
    v17 = sub_2428B47B8();

    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = sub_2428B49C8();
    }

    else
    {
      v18 = *(v17 + 16);
    }

    if (!v18)
    {

LABEL_29:
      v11 = 0x278D6C000;
      v8 = v137;
      v10 = v15;
      goto LABEL_16;
    }

    sub_24289F5BC(v14, v6 & 1, v145 & 1, &v153);
    v19 = v154;
    if (v154 != 255)
    {
      v142 = v153;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_2427F73D8(0, *(v9 + 16) + 1, 1, v9);
      }

      v21 = *(v9 + 16);
      v20 = *(v9 + 24);
      if (v21 >= v20 >> 1)
      {
        v9 = sub_2427F73D8((v20 > 1), v21 + 1, 1, v9);
      }

      *(v9 + 16) = v21 + 1;
      v22 = v9 + 24 * v21;
      *(v22 + 32) = v142;
      *(v22 + 48) = v19;
      v152 = v9;
      goto LABEL_29;
    }

    v10 = v15;

    v11 = 0x278D6C000;
    v8 = v137;
LABEL_16:
    ++v12;
  }

  while (v10 != v12);
  v23 = 0;
  v126 = 0;
  v150 = MEMORY[0x277D84F90];
  v151 = MEMORY[0x277D84F90];
  v149 = MEMORY[0x277D84F90];
  LODWORD(v136) = v6 & 1;
  v24 = v145;
  LODWORD(v135) = v145 & 1;
  LODWORD(v134) = v143 & 1;
  v132 = *MEMORY[0x277CF78A0];
  v128 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84FA0];
  v25 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
  v138 = v10;
  while (1)
  {
    if (v144)
    {
      v27 = MEMORY[0x245D1B5D0](v23, v8);
    }

    else
    {
      v27 = *(v127 + 8 * v23);
    }

    v28 = v27;
    if (![v27 v25[291]])
    {
      v29 = v28;
      MEMORY[0x245D1B200]();
      if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2428B46E8();
        v24 = v145;
      }

      sub_2428B4708();
      v128 = v150;
    }

    if ((v139 & 1) != 0 && [v28 isDelegate] && objc_msgSend(v28, sel_isEnabled))
    {
      v30 = v28;
      v5 = &v149;
      MEMORY[0x245D1B200]();
      if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2428B46E8();
        v24 = v145;
      }

      sub_2428B4708();

      v140 = v149;
      v26 = v138;
      goto LABEL_33;
    }

    *&v142 = v23;
    v31 = [v28 calendarsForEntityType_];
    sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
    sub_242828268();
    v8 = sub_2428B47B8();

    v141 = &v126;
    v33 = MEMORY[0x28223BE20](v32);
    *(&v126 - 32) = v136;
    *(&v126 - 31) = v135;
    *(&v126 - 3) = v28;
    *(&v126 - 16) = v134;
    if ((v8 & 0xC000000000000001) != 0)
    {
      *&v153 = v9;
      v8 = sub_2428B4988();
      v34 = sub_2428B49F8();
      for (i = v9; v34; v34 = sub_2428B49F8())
      {
        v147 = v34;
        swift_dynamicCast();
        v36 = v148;
        if ((v6 & 1) != 0 && ![v148 *(v11 + 3608)] || (v24 & 1) != 0 && !objc_msgSend(v36, sel_isDeletable) || objc_msgSend(v28, v25[291]) != 5 && (objc_msgSend(v28, v25[291]) || !objc_msgSend(v36, sel_isSuggestedEventCalendar) || (SGAppCanShowSiriSuggestions(v132) & 1) == 0) && objc_msgSend(v28, v25[291]) != 4 && ((v143 & 1) == 0 || objc_msgSend(v28, v25[291]) != 6))
        {

          continue;
        }

        v37 = v148;
        v38 = *(i + 16);
        if (*(i + 24) <= v38)
        {
          sub_2428AEF30(v38 + 1);
        }

        i = v153;
        LODWORD(v5) = v37;
        v39 = sub_2428B48D8();
        v40 = i + 56;
        v41 = -1 << *(i + 32);
        v42 = v39 & ~v41;
        v43 = v42 >> 6;
        if (((-1 << v42) & ~*(i + 56 + 8 * (v42 >> 6))) != 0)
        {
          v44 = __clz(__rbit64((-1 << v42) & ~*(i + 56 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
          goto LABEL_73;
        }

        v45 = 0;
        v46 = (63 - v41) >> 6;
        do
        {
          if (++v43 == v46 && (v45 & 1) != 0)
          {
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
            goto LABEL_208;
          }

          v47 = v43 == v46;
          if (v43 == v46)
          {
            v43 = 0;
          }

          v45 |= v47;
          v48 = *(v40 + 8 * v43);
        }

        while (v48 == -1);
        v44 = __clz(__rbit64(~v48)) + (v43 << 6);
LABEL_73:
        *(v40 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
        *(*(i + 48) + 8 * v44) = v37;
        ++*(i + 16);
        v25 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
      }

      goto LABEL_32;
    }

    v49 = *(v8 + 32);
    v50 = ((1 << v49) + 63) >> 6;
    if ((v49 & 0x3Fu) <= 0xD)
    {
      goto LABEL_78;
    }

    sub_2428B3218();
    if (swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v63 = swift_slowAlloc();
    sub_2428B3218();
    v64 = v50;
    v65 = v126;
    i = sub_2428A14A4(v63, v64, v8, sub_2428A2D28);
    v126 = v65;
    v24 = v145;
    swift_bridgeObjectRelease_n();
    MEMORY[0x245D1C000](v63, -1, -1);
LABEL_32:
    v5 = &v151;
    sub_24289FF58(i);

    v8 = v137;
    v26 = v138;
    v23 = v142;
LABEL_33:
    if (++v23 == v26)
    {

      v62 = v128;
      v9 = MEMORY[0x277D84F90];
      v66 = v126;
LABEL_113:
      sub_2428A02E0(&v151, &selRef_ekOtherCalendarComparator);
      v131 = v66;
      *&v153 = v9;
      if (v62 >> 62)
      {
        goto LABEL_213;
      }

      v67 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_115;
    }
  }

LABEL_78:
  v130 = v50;
  v129 = &v126;
  MEMORY[0x28223BE20](v33);
  v131 = &v126 - ((v51 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v131, v51);
  v52 = 0;
  v53 = 0;
  v5 = (v8 + 56);
  v54 = 1 << *(v8 + 32);
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  else
  {
    v55 = -1;
  }

  v9 = v55 & *(v8 + 56);
  v56 = (v54 + 63) >> 6;
  while (2)
  {
    v133 = v52;
    while (1)
    {
      if (!v9)
      {
        v58 = v53;
        v11 = 0x278D6C000;
        v9 = MEMORY[0x277D84FA0];
        while (1)
        {
          v53 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            goto LABEL_207;
          }

          if (v53 >= v56)
          {
            break;
          }

          v59 = v5[v53];
          ++v58;
          if (v59)
          {
            v57 = __clz(__rbit64(v59));
            v9 = (v59 - 1) & v59;
            goto LABEL_91;
          }
        }

        i = sub_2428AF8CC(v131, v130, v133, v8);
        v24 = v145;
        goto LABEL_32;
      }

      v57 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_91:
      v11 = v57 | (v53 << 6);
      v60 = *(*(v8 + 48) + 8 * v11);
      v61 = v60;
      if ((v6 & 1) != 0 && ![v60 allowsContentModifications] || (v145 & 1) != 0 && !objc_msgSend(v61, sel_isDeletable))
      {
LABEL_83:

        v25 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
        continue;
      }

      v62 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
      if ([v28 sourceType] == 5 || !objc_msgSend(v28, sel_sourceType) && objc_msgSend(v61, sel_isSuggestedEventCalendar) && (SGAppCanShowSiriSuggestions(v132) & 1) != 0)
      {
        break;
      }

      if ([v28 sourceType] == 4)
      {
        break;
      }

      if ((v143 & 1) == 0)
      {
        goto LABEL_83;
      }

      v62 = [v28 sourceType];

      v25 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
      if (v62 == 6)
      {
        goto LABEL_104;
      }
    }

    v25 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
LABEL_104:
    *&v131[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
    v52 = v133 + 1;
    if (!__OFADD__(v133, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_213:
  v67 = sub_2428B49C8();
LABEL_115:
  v68 = v145;
  v128 = v62;
  if (v67)
  {
    v9 = 0;
    *&v142 = v128 & 0xC000000000000001;
    v141 = (v128 & 0xFFFFFFFFFFFFFF8);
    v137 = v128 + 32;
    v139 = v6 & 1;
    LODWORD(v138) = v145 & 1;
    v136 = v67;
    while (1)
    {
      if (v142)
      {
        v69 = MEMORY[0x245D1B5D0](v9, v128);
      }

      else
      {
        if (v9 >= v141[2])
        {
          goto LABEL_210;
        }

        v69 = *(v137 + 8 * v9);
      }

      v5 = v69;
      v70 = __OFADD__(v9++, 1);
      if (v70)
      {
        goto LABEL_209;
      }

      v71 = [v69 calendarsForEntityType_];
      sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
      sub_242828268();
      v8 = sub_2428B47B8();

      v144 = &v126;
      v73 = MEMORY[0x28223BE20](v72);
      *(&v126 - 16) = v139;
      *(&v126 - 15) = v138;
      v143 = v5;
      if ((v8 & 0xC000000000000001) != 0)
      {
        v74 = MEMORY[0x277D84FA0];
        v148 = MEMORY[0x277D84FA0];
        sub_2428B4988();
        v75 = sub_2428B49F8();
        if (v75)
        {
          v8 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
          do
          {
            v146 = v75;
            swift_dynamicCast();
            v76 = v147;
            if (v6 & 1) != 0 && ![v147 *(v11 + 3608)] || (v68 & 1) != 0 && !objc_msgSend(v76, sel_isDeletable) || (objc_msgSend(v76, sel_isSuggestedEventCalendar) & 1) != 0 || (objc_msgSend(v76, sel_isNaturalLanguageSuggestedEventCalendar))
            {
            }

            else
            {
              v77 = v147;
              v78 = v74[2];
              if (v74[3] <= v78)
              {
                sub_2428AEF30(v78 + 1);
              }

              v74 = v148;
              LODWORD(v5) = v77;
              v79 = sub_2428B48D8();
              v80 = (v74 + 7);
              v81 = -1 << *(v74 + 32);
              v82 = v79 & ~v81;
              v83 = v82 >> 6;
              if (((-1 << v82) & ~v74[(v82 >> 6) + 7]) == 0)
              {
                v85 = 0;
                v86 = (63 - v81) >> 6;
                while (++v83 != v86 || (v85 & 1) == 0)
                {
                  v87 = v83 == v86;
                  if (v83 == v86)
                  {
                    v83 = 0;
                  }

                  v85 |= v87;
                  v88 = *&v80[8 * v83];
                  if (v88 != -1)
                  {
                    v84 = __clz(__rbit64(~v88)) + (v83 << 6);
                    goto LABEL_146;
                  }
                }

LABEL_208:
                __break(1u);
LABEL_209:
                __break(1u);
LABEL_210:
                __break(1u);
LABEL_211:
                __break(1u);
LABEL_212:
                v10 = sub_2428B49C8();
                goto LABEL_3;
              }

              v84 = __clz(__rbit64((-1 << v82) & ~v74[(v82 >> 6) + 7])) | v82 & 0x7FFFFFFFFFFFFFC0;
LABEL_146:
              *&v80[(v84 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v84;
              *(v74[6] + 8 * v84) = v77;
              ++v74[2];
            }

            v75 = sub_2428B49F8();
          }

          while (v75);
        }

        goto LABEL_118;
      }

      v89 = *(v8 + 32);
      v90 = ((1 << v89) + 63) >> 6;
      if ((v89 & 0x3Fu) <= 0xD)
      {
        goto LABEL_148;
      }

      sub_2428B3218();
      if (swift_stdlib_isStackAllocationSafe())
      {
        break;
      }

      v104 = swift_slowAlloc();
      sub_2428B3218();
      v105 = v131;
      v74 = sub_2428A14A4(v104, v90, v8, sub_2428A2D54);
      v131 = v105;
      swift_bridgeObjectRelease_n();
      MEMORY[0x245D1C000](v104, -1, -1);

LABEL_170:
      v68 = v145;
LABEL_118:
      v5 = &v153;
      sub_24289FF58(v74);
      if (v9 == v136)
      {
        goto LABEL_175;
      }
    }

LABEL_148:
    v133 = v90;
    v132 = &v126;
    MEMORY[0x28223BE20](v73);
    v134 = &v126 - ((v91 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v134, v91);
    v135 = 0;
    v92 = 0;
    v5 = (v8 + 56);
    v93 = 1 << *(v8 + 32);
    if (v93 < 64)
    {
      v94 = ~(-1 << v93);
    }

    else
    {
      v94 = -1;
    }

    v95 = v94 & *(v8 + 56);
    v96 = (v93 + 63) >> 6;
    while (v95)
    {
      v97 = __clz(__rbit64(v95));
      v95 &= v95 - 1;
LABEL_160:
      v100 = v97 | (v92 << 6);
      v101 = *(*(v8 + 48) + 8 * v100);
      v102 = v101;
      if (v6 & 1) != 0 && ![v101 allowsContentModifications] || (v145 & 1) != 0 && !objc_msgSend(v102, sel_isDeletable) || (objc_msgSend(v102, sel_isSuggestedEventCalendar))
      {
      }

      else
      {
        v103 = [v102 isNaturalLanguageSuggestedEventCalendar];

        if ((v103 & 1) == 0)
        {
          *&v134[(v100 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v100;
          v70 = __OFADD__(v135++, 1);
          if (v70)
          {
            __break(1u);
          }
        }
      }
    }

    v98 = v92;
    v11 = 0x278D6C000;
    while (1)
    {
      v92 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        goto LABEL_206;
      }

      if (v92 >= v96)
      {
        break;
      }

      v99 = v5[v92];
      ++v98;
      if (v99)
      {
        v97 = __clz(__rbit64(v99));
        v95 = (v99 - 1) & v99;
        goto LABEL_160;
      }
    }

    v74 = sub_2428AF8CC(v134, v133, v135, v8);

    goto LABEL_170;
  }

LABEL_175:
  v148 = v153;
  if (!(v153 >> 62))
  {
    v106 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_177;
  }

LABEL_215:
  v106 = sub_2428B49C8();
LABEL_177:
  v107 = v140;
  v108 = v128;
  if (v106)
  {
    sub_2428A02E0(&v148, &selRef_ekCalendarComparator);

    v108 = &v152;
    sub_2428A163C(0, 0, v148, 0, 1u);
  }

  else
  {
  }

  if (v107 >> 62)
  {
    v109 = sub_2428B49C8();
    if (!v109)
    {
      goto LABEL_217;
    }

LABEL_182:
    if (v109 < 1)
    {
      __break(1u);
LABEL_227:
      v108 = sub_2427F73D8(0, *(v108 + 2) + 1, 1, v108);
LABEL_220:
      v123 = *(v108 + 2);
      v122 = *(v108 + 3);
      if (v123 >= v122 >> 1)
      {
        v108 = sub_2427F73D8((v122 > 1), v123 + 1, 1, v108);
      }

      *(v108 + 2) = v123 + 1;
      v124 = &v108[24 * v123];
      *(v124 + 4) = v109;
      *(v124 + 5) = 0;
      v124[48] = 2;
      return v108;
    }

    v5 = 0;
    v6 = v140 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v110 = MEMORY[0x245D1B5D0](v5, v140);
      }

      else
      {
        v110 = *(v140 + 8 * v5 + 32);
      }

      v111 = v110;
      v112 = [v110 calendarsForEntityType_];
      sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
      sub_242828268();
      v113 = sub_2428B47B8();

      if ((v113 & 0xC000000000000001) != 0)
      {
        if (sub_2428B49C8())
        {
          v114 = sub_2428B49C8();
          if (v114)
          {
            v115 = v114;
            if (v114 >= 1)
            {
LABEL_195:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
              v116 = swift_allocObject();
              v117 = _swift_stdlib_malloc_size(v116);
              v118 = v117 - 32;
              if (v117 < 32)
              {
                v118 = v117 - 25;
              }

              v116[2] = v115;
              v116[3] = (2 * (v118 >> 3)) | 1;
            }

            else
            {
              v116 = MEMORY[0x277D84F90];
            }

            v8 = sub_24282537C(&v153, v116 + 4, v115, v113);
            sub_2427C9D4C(v153);
            if (v8 != v115)
            {
              goto LABEL_211;
            }
          }

          else
          {

            v116 = MEMORY[0x277D84F90];
          }

          v119 = v152;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v119 = sub_2427F73D8(0, *(v119 + 2) + 1, 1, v119);
          }

          v9 = *(v119 + 2);
          v120 = *(v119 + 3);
          if (v9 >= v120 >> 1)
          {
            v119 = sub_2427F73D8((v120 > 1), v9 + 1, 1, v119);
          }

          *(v119 + 2) = v9 + 1;
          v121 = &v119[24 * v9];
          *(v121 + 4) = v111;
          *(v121 + 5) = v116;
          v121[48] = 0;
          v152 = v119;
          goto LABEL_185;
        }
      }

      else
      {
        v115 = *(v113 + 16);
        if (v115)
        {
          goto LABEL_195;
        }
      }

LABEL_185:
      v5 = (v5 + 1);
      if (v109 == v5)
      {
        goto LABEL_217;
      }
    }
  }

  v109 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v109)
  {
    goto LABEL_182;
  }

LABEL_217:

  v109 = v151;
  if (v151 >> 62)
  {
    if (!sub_2428B49C8())
    {
      goto LABEL_224;
    }

LABEL_219:
    v108 = v152;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_220;
    }

    goto LABEL_227;
  }

  if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_219;
  }

LABEL_224:

  return v152;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2428A2C84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2428A2CCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t SGAppCanShowSiriSuggestions(void *a1)
{
  v1 = a1;
  v2 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:v1];

  return v3 ^ 1u;
}

uint64_t sub_2428A2E48(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v11[6] = a2[6];
  v11[7] = v3;
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v5 = a2[3];
  v11[2] = a2[2];
  v11[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v10 = v2;
  sub_2428A56C4(v11, v9);
  sub_2428B2F38();
  sub_2428B4388();
  return sub_2428A56FC(v11);
}

uint64_t EditEventIntentRepresentation_v0.target.setter(uint64_t a1)
{
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*EditEventIntentRepresentation_v0.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2428A2FE0(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[7];
  v11[6] = a2[6];
  v11[7] = v4;
  v5 = a2[9];
  v11[8] = a2[8];
  v11[9] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v11[3] = v6;
  v7 = a2[5];
  v11[4] = a2[4];
  v11[5] = v7;
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v10[20] = v3;
  v10[21] = v2;
  sub_2428B3218();
  sub_2428A56C4(v11, v10);
  sub_2428B4388();
  return sub_2428A56FC(v11);
}

uint64_t (*EditEventIntentRepresentation_v0.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2428A3158(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v11[6] = a2[6];
  v11[7] = v3;
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v5 = a2[3];
  v11[2] = a2[2];
  v11[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v10 = v2;
  sub_2428A56C4(v11, v9);
  sub_2428B2F38();
  sub_2428B4388();
  return sub_2428A56FC(v11);
}

uint64_t EditEventIntentRepresentation_v0.structuredLocation.setter(uint64_t a1)
{
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*EditEventIntentRepresentation_v0.structuredLocation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2428A32E0(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  sub_2427E0918(a1, &v16[-v8], &qword_27ECC26F0, &unk_2428B7960);
  v10 = a2[7];
  v17[6] = a2[6];
  v17[7] = v10;
  v11 = a2[9];
  v17[8] = a2[8];
  v17[9] = v11;
  v12 = a2[3];
  v17[2] = a2[2];
  v17[3] = v12;
  v13 = a2[5];
  v17[4] = a2[4];
  v17[5] = v13;
  v14 = a2[1];
  v17[0] = *a2;
  v17[1] = v14;
  sub_2427E0918(v9, v7, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428A56C4(v17, v16);
  sub_2428B4388();
  sub_2427E0980(v9, &qword_27ECC26F0, &unk_2428B7960);
  return sub_2428A56FC(v17);
}

uint64_t EditEventIntentRepresentation_v0.startDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427E0918(a1, &v5 - v3, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B4388();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*EditEventIntentRepresentation_v0.startDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2428A3594(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  sub_2427E0918(a1, &v16[-v8], &qword_27ECC26F0, &unk_2428B7960);
  v10 = a2[7];
  v17[6] = a2[6];
  v17[7] = v10;
  v11 = a2[9];
  v17[8] = a2[8];
  v17[9] = v11;
  v12 = a2[3];
  v17[2] = a2[2];
  v17[3] = v12;
  v13 = a2[5];
  v17[4] = a2[4];
  v17[5] = v13;
  v14 = a2[1];
  v17[0] = *a2;
  v17[1] = v14;
  sub_2427E0918(v9, v7, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428A56C4(v17, v16);
  sub_2428B4388();
  sub_2427E0980(v9, &qword_27ECC26F0, &unk_2428B7960);
  return sub_2428A56FC(v17);
}

uint64_t EditEventIntentRepresentation_v0.endDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427E0918(a1, &v5 - v3, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B4388();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*EditEventIntentRepresentation_v0.endDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2428A3858(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v10[6] = a2[6];
  v10[7] = v3;
  v4 = a2[9];
  v10[8] = a2[8];
  v10[9] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v9[167] = v2;
  sub_2428A56C4(v10, v9);
  sub_2428B4388();
  return sub_2428A56FC(v10);
}

uint64_t (*EditEventIntentRepresentation_v0.isAllDay.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2428A39D0(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[7];
  v11[6] = a2[6];
  v11[7] = v4;
  v5 = a2[9];
  v11[8] = a2[8];
  v11[9] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v11[3] = v6;
  v7 = a2[5];
  v11[4] = a2[4];
  v11[5] = v7;
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v10[20] = v3;
  v10[21] = v2;
  sub_2428B3218();
  sub_2428A56C4(v11, v10);
  sub_2428B4388();
  return sub_2428A56FC(v11);
}