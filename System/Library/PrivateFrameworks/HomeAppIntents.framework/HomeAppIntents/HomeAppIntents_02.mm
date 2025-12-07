void *sub_252740BD0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2528C0E30();
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

uint64_t sub_252740D00(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2528C0570();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6D8, &qword_2528C47B0);
  v7 = sub_2528C0E40();
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
      sub_25274ABA0(&qword_27F4FC6C8, MEMORY[0x277D16AB0], MEMORY[0x277D16AC8]);
      result = sub_2528C0900();
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

uint64_t sub_25274101C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2528BECF0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC678, &qword_2528C4780);
  v7 = sub_2528C0E40();
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
      sub_25274ABA0(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2528C0900();
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

uint64_t sub_252741338(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC728, &unk_2528C47F0);
  result = sub_2528C0E40();
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
      result = sub_2528C1120();
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

uint64_t sub_252741528(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void *))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2528C0E40();
  v8 = result;
  if (*(v6 + 16))
  {
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
      v19 = *(*(v6 + 48) + (v16 | (v9 << 6)));
      v20 = sub_2528C1130();
      a4(v20);
      sub_2528C0A40();

      result = sub_2528C1180();
      v21 = -1 << *(v8 + 32);
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + v15) = v19;
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

        v5 = v4;
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
    *v5 = v8;
  }

  return result;
}

uint64_t sub_25274176C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC850, &unk_2528D3C30);
  result = sub_2528C0E40();
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
      sub_2528C1130();

      sub_2528C0A40();
      result = sub_2528C1180();
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

uint64_t sub_2527419A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC630, &qword_2528C4758);
  result = sub_2528C0E40();
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
      v16 = *(*(v3 + 48) + 2 * (v13 | (v6 << 6)));
      v25 = v16;
      sub_2528C1130();
      DeviceType.hash(into:)(v24);
      result = sub_2528C1180();
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
      *(*(v5 + 48) + 2 * v12) = v16;
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

uint64_t sub_252741BC8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2528BFDE0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC790, &qword_2528C4858);
  v7 = sub_2528C0E40();
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
      sub_25274ABA0(&qword_27F4FC798, MEMORY[0x277D16348], MEMORY[0x277D16350]);
      result = sub_2528C0900();
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

uint64_t sub_252741EE4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2528C07B0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6B8, &qword_2528C47A0);
  v7 = sub_2528C0E40();
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
      sub_25274ABA0(&qword_27F4FC6A8, MEMORY[0x277D16EC8], MEMORY[0x277D16ED0]);
      result = sub_2528C0900();
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

uint64_t sub_252742200(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC690, &qword_2528C4788);
  result = sub_2528C0E40();
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
      sub_2528C1130();
      MEMORY[0x2530A87A0](v16);
      result = sub_2528C1180();
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

uint64_t sub_252742420(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6C0, &qword_2528C47A8);
  result = sub_2528C0E40();
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
      result = MEMORY[0x2530A8770](*(v5 + 40), v16, 4);
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

uint64_t sub_252742614(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6F8, &unk_2528D3CA0);
  result = sub_2528C0E40();
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
      sub_2528C1130();
      sub_2528C0A40();

      result = sub_2528C1180();
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

uint64_t sub_252742988(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2528BFCF0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC648, &qword_2528C4760);
  v7 = sub_2528C0E40();
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
      sub_25274ABA0(&qword_27F4FC638, MEMORY[0x277D15F48], MEMORY[0x277D15F58]);
      result = sub_2528C0900();
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

uint64_t sub_252742CA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC800, &qword_2528C48B8);
  result = sub_2528C0E40();
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
LABEL_16:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_2528C1130();
      sub_2528C0A40();

      result = sub_2528C1180();
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
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
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
        goto LABEL_16;
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

uint64_t sub_252742F64(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v3 == 1)
      {
        v4 = *a1 == v2;
        return v4 & 1;
      }
    }

    else if (v3 == 2 && v2 == 0)
    {
      v4 = 1;
      return v4 & 1;
    }

LABEL_13:
    v4 = 0;
    return v4 & 1;
  }

  if (*(a2 + 8))
  {
    goto LABEL_13;
  }

  v5 = HomeError.rawValue.getter();
  v7 = v6;
  if (v5 == HomeError.rawValue.getter() && v7 == v8)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2528C1060();
  }

  return v4 & 1;
}

uint64_t sub_25274304C(uint64_t a1)
{
  v2 = sub_2528BED50();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC610, &qword_2528C4748);
    v9 = sub_2528C0E50();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_25274ABA0(&qword_27F4FC618, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_2528C0900();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_25274ABA0(&qword_27F4FC620, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_2528C0930();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25274336C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC750, &unk_2528C4820);
    v3 = sub_2528C0E50();
    v4 = 0;
    v5 = v3 + 56;
    v27 = a1 + 32;
    v26 = v1;
    while (1)
    {
      v6 = *(v27 + v4);
      sub_2528C1130();
      RobotVacuumCleanerRunState.rawValue.getter();
      sub_2528C0A40();

      result = sub_2528C1180();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xE700000000000000;
          v14 = 0x646570706F7473;
          switch(*(*(v3 + 48) + v9))
          {
            case 1:
              v14 = 0x676E696E6E7572;
              break;
            case 2:
              v13 = 0xE600000000000000;
              v14 = 0x646573756170;
              break;
            case 3:
              v13 = 0xE500000000000000;
              v14 = 0x726F727265;
              break;
            case 4:
              v14 = 0x43676E696B656573;
              v13 = 0xEE00726567726168;
              break;
            case 5:
              v13 = 0xE800000000000000;
              v14 = 0x676E696772616863;
              break;
            case 6:
              v13 = 0xE600000000000000;
              v14 = 0x64656B636F64;
              break;
            case 7:
              v14 = 0x676E697974706D65;
              v13 = 0xEF6E694274737544;
              break;
            case 8:
              v14 = 0x676E696E61656C63;
              v13 = 0xEB00000000706F4DLL;
              break;
            case 9:
              v14 = 0xD000000000000010;
              v13 = 0x80000002528E4E10;
              break;
            case 0xA:
              v14 = 0x676E697461647075;
              v13 = 0xEC0000007370614DLL;
              break;
            case 0xB:
              v13 = 0xE500000000000000;
              v14 = 0x6B63757473;
              break;
            case 0xC:
              v14 = 0xD000000000000018;
              v13 = 0x80000002528E4E40;
              break;
            case 0xD:
              v14 = 0x4D6E694274737564;
              v13 = 0xEE00676E69737369;
              break;
            case 0xE:
              v14 = 0x466E694274737564;
              v13 = 0xEB000000006C6C75;
              break;
            case 0xF:
              v14 = 0xD000000000000010;
              v13 = 0x80000002528E4E80;
              break;
            case 0x10:
              v14 = 0x6E61547265746177;
              v13 = 0xEE007974706D456BLL;
              break;
            case 0x11:
              v14 = 0xD000000000000010;
              v13 = 0x80000002528E4EA0;
              break;
            case 0x12:
              v14 = 0xD000000000000015;
              v13 = 0x80000002528E4EC0;
              break;
            case 0x13:
              v14 = 0x6574746142776F6CLL;
              v13 = 0xEA00000000007972;
              break;
            case 0x14:
              v14 = 0xD000000000000015;
              v13 = 0x80000002528E4EE0;
              break;
            case 0x15:
              v14 = 0xD000000000000012;
              v13 = 0x80000002528E4F00;
              break;
            case 0x16:
              v14 = 0xD000000000000015;
              v13 = 0x80000002528E4F20;
              break;
            case 0x17:
              v14 = 0x614A736C65656877;
              v13 = 0xEC00000064656D6DLL;
              break;
            case 0x18:
              v14 = 0x6D614A6873757262;
              v13 = 0xEB0000000064656DLL;
              break;
            case 0x19:
              v14 = 0xD000000000000018;
              v13 = 0x80000002528E4F50;
              break;
            case 0x1A:
              v14 = 0x6E776F6E6B6E75;
              break;
            default:
              break;
          }

          v15 = 0xE700000000000000;
          v16 = 0x646570706F7473;
          switch(v6)
          {
            case 1:
              if (v14 == 0x676E696E6E7572)
              {
                goto LABEL_82;
              }

              goto LABEL_83;
            case 2:
              v15 = 0xE600000000000000;
              v21 = 1937072496;
              goto LABEL_67;
            case 3:
              v15 = 0xE500000000000000;
              if (v14 != 0x726F727265)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 4:
              v17 = 0x43676E696B656573;
              v18 = 0x726567726168;
              goto LABEL_64;
            case 5:
              v15 = 0xE800000000000000;
              if (v14 != 0x676E696772616863)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 6:
              v15 = 0xE600000000000000;
              v21 = 1801678692;
LABEL_67:
              if (v14 != (v21 & 0xFFFF0000FFFFFFFFLL | 0x646500000000))
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 7:
              v15 = 0xEF6E694274737544;
              if (v14 != 0x676E697974706D65)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 8:
              v19 = 0x676E696E61656C63;
              v20 = 7368525;
              goto LABEL_74;
            case 9:
              v15 = 0x80000002528E4E10;
              if (v14 != 0xD000000000000010)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 10:
              v15 = 0xEC0000007370614DLL;
              if (v14 != 0x676E697461647075)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 11:
              v15 = 0xE500000000000000;
              if (v14 != 0x6B63757473)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 12:
              v15 = 0x80000002528E4E40;
              if (v14 != 0xD000000000000018)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 13:
              v17 = 0x4D6E694274737564;
              v18 = 0x676E69737369;
              goto LABEL_64;
            case 14:
              v19 = 0x466E694274737564;
              v20 = 7105653;
              goto LABEL_74;
            case 15:
              v15 = 0x80000002528E4E80;
              if (v14 != 0xD000000000000010)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 16:
              v17 = 0x6E61547265746177;
              v18 = 0x7974706D456BLL;
LABEL_64:
              v15 = v18 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              if (v14 != v17)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 17:
              v15 = 0x80000002528E4EA0;
              if (v14 != 0xD000000000000010)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 18:
              v15 = 0x80000002528E4EC0;
              if (v14 != 0xD000000000000015)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 19:
              v15 = 0xEA00000000007972;
              if (v14 != 0x6574746142776F6CLL)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 20:
              v15 = 0x80000002528E4EE0;
              if (v14 != 0xD000000000000015)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 21:
              v15 = 0x80000002528E4F00;
              if (v14 != 0xD000000000000012)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 22:
              v15 = 0x80000002528E4F20;
              if (v14 != 0xD000000000000015)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 23:
              v16 = 0x614A736C65656877;
              v15 = 0xEC00000064656D6DLL;
              goto LABEL_81;
            case 24:
              v19 = 0x6D614A6873757262;
              v20 = 6579565;
LABEL_74:
              v15 = v20 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              if (v14 != v19)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 25:
              v15 = 0x80000002528E4F50;
              if (v14 != 0xD000000000000018)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 26:
              if (v14 != 0x6E776F6E6B6E75)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            default:
LABEL_81:
              if (v14 != v16)
              {
                goto LABEL_83;
              }

LABEL_82:
              if (v13 == v15)
              {

                goto LABEL_4;
              }

LABEL_83:
              v22 = sub_2528C1060();

              if (v22)
              {
                goto LABEL_4;
              }

              v9 = (v9 + 1) & v8;
              v10 = v9 >> 6;
              v11 = *(v5 + 8 * (v9 >> 6));
              v12 = 1 << v9;
              if ((v11 & (1 << v9)) == 0)
              {
                goto LABEL_88;
              }

              break;
          }
        }
      }

LABEL_88:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v23 = *(v3 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      *(v3 + 16) = v25;
LABEL_4:
      if (++v4 == v26)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_252743BB8(uint64_t a1)
{
  v2 = sub_2528C0570();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_25274ABA0(&qword_27F4FC6C8, MEMORY[0x277D16AB0], MEMORY[0x277D16AC8]);
  result = MEMORY[0x2530A82F0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_252738F54(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_252743D54(uint64_t a1)
{
  v2 = sub_2528BECF0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_25274ABA0(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x2530A82F0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_252739234(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_252743EF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2530A82F0](v2, MEMORY[0x277D84D38], MEMORY[0x277D84D48]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_252739514(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_252743FCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2530A82F0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_25273A0C4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_252744064(uint64_t a1)
{
  v2 = sub_2528BFDE0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_25274ABA0(&qword_27F4FC798, MEMORY[0x277D16348], MEMORY[0x277D16350]);
  result = MEMORY[0x2530A82F0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_25273A32C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_252744200(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HMCharacteristicValueHeatingCooling(0);
  v4 = v3;
  v5 = sub_25274ABA0(&qword_27F4FC688, type metadata accessor for HMCharacteristicValueHeatingCooling, &unk_2528C3214);
  result = MEMORY[0x2530A82F0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_25273A8EC(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_2527442AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2530A82F0](v2, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_25273A9E4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_252744354(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x2530A82F0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_2527443D4(uint64_t a1)
{
  v2 = sub_2528BFCF0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_25274ABA0(&qword_27F4FC638, MEMORY[0x277D15F48], MEMORY[0x277D15F58]);
  result = MEMORY[0x2530A82F0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_25273AF34(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_252744570(uint64_t a1)
{
  v2 = sub_2528BF3E0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8A8, &qword_2528C4958);
    v9 = sub_2528C0E50();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_25274ABA0(&qword_27F4FC8B0, MEMORY[0x277D15A40], MEMORY[0x277D15A48]);
      v16 = sub_2528C0900();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_25274ABA0(&qword_27F4FC8B8, MEMORY[0x277D15A40], MEMORY[0x277D15A50]);
          v23 = sub_2528C0930();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_252744890(uint64_t a1)
{
  v2 = sub_2528BECF0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC678, &qword_2528C4780);
    v9 = sub_2528C0E50();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_25274ABA0(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v16 = sub_2528C0900();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_25274ABA0(&qword_27F4FC680, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v23 = sub_2528C0930();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_252744BB0()
{
  result = qword_27F4FC498;
  if (!qword_27F4FC498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FC488, &unk_2528C3F80);
    sub_25274ABA0(&qword_27F4FC4A0, type metadata accessor for HomeEntity, &protocol conformance descriptor for HomeEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC498);
  }

  return result;
}

uint64_t sub_252744C64(uint64_t a1, char a2)
{
  *(v3 + 240) = a2;
  *(v3 + 40) = a1;
  sub_2528BEE30();
  *(v3 + 48) = swift_task_alloc();
  v4 = sub_2528BFCE0();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC4A8, &qword_2528C3FC0);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v5 = type metadata accessor for SceneEntity(0);
  *(v3 + 104) = v5;
  *(v3 + 112) = *(v5 - 8);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = *(type metadata accessor for HomeEntity.SnapshotPair(0) - 8);
  *(v3 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70);
  *(v3 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  *(v3 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v6 = swift_task_alloc();
  v7 = *v2;
  *(v3 + 160) = v6;
  *(v3 + 168) = v7;

  return MEMORY[0x2822009F8](sub_252744EFC, 0, 0);
}

uint64_t sub_252744EFC()
{
  v35 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  v0[22] = __swift_project_value_buffer(v1, qword_27F5025C8);

  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v34 = v6;
    *v5 = 136315138;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC890, &qword_2528C4940);
    v8 = MEMORY[0x2530A81A0](v4, v7);
    v10 = sub_2527389AC(v8, v9, &v34);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_252711000, v2, v3, "Searching for scenes with comparators: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2530A8D80](v6, -1, -1);
    MEMORY[0x2530A8D80](v5, -1, -1);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v11 = v0[5];
  v12 = sub_2528C0820();
  v13 = __swift_project_value_buffer(v12, qword_27F5025E0);
  v0[23] = v13;

  v14 = 1;
  v0[24] = sub_2528B919C(1, 0, v13, v11);

  if (sub_2528BE9A0())
  {
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v14 = 0;
  }

  v15 = v0[19];
  v16 = v0[20];
  v17 = v0[18];
  v18 = type metadata accessor for HomeEntity(0);
  (*(*(v18 - 8) + 56))(v16, v14, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC490, &unk_2528C9050);
  v19 = sub_2528BF3E0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2528C17E0;
  v24 = v23 + v22;
  v25 = *(v20 + 104);
  v25(v24, *MEMORY[0x277D15A30], v19);
  *(v24 + v21) = 0;
  v25(v24 + v21, *MEMORY[0x277D15A28], v19);
  sub_252744570(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v26 = *MEMORY[0x277D16520];
  v27 = sub_2528C00B0();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v17, v26, v27);
  (*(v28 + 56))(v17, 0, 1, v27);
  sub_2528C0590();
  v29 = sub_2528C05D0();
  (*(*(v29 - 8) + 56))(v15, 0, 1, v29);
  v30 = swift_task_alloc();
  v0[25] = v30;
  *v30 = v0;
  v30[1] = sub_252745400;
  v31 = v0[19];
  v32 = v0[20];

  return sub_25277ECE4(v32, 0, 1, v31);
}

uint64_t sub_252745400(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  *(*v1 + 208) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_25274555C, 0, 0);
}

void *sub_25274555C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 208);
  v52 = *(v2 + 128);
  v63 = *(v2 + 112);
  v71 = *(v2 + 80);
  v51 = v3 + 64;
  v4 = -1 << *(v3 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v3 + 64);
  v50 = (63 - v4) >> 6;
  v59 = *(v2 + 64);
  v53 = *(v2 + 208);

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v58 = v2;
  while (1)
  {
    *(v2 + 216) = v9;
    if (!v6)
    {
      break;
    }

    v56 = v9;
LABEL_12:
    v54 = v8;
    v55 = v6;
    sub_25274A454(*(v53 + 56) + *(v52 + 72) * (__clz(__rbit64(v6)) | (v8 << 6)), *(v2 + 136), type metadata accessor for HomeEntity.SnapshotPair);
    v11 = sub_2528BF380();
    v12 = *(v11 + 16);
    if (v12)
    {
      v72 = MEMORY[0x277D84F90];
      sub_25282F020(0, v12, 0);
      v13 = v72;
      v14 = v11 + 64;
      result = sub_2528C0E00();
      v15 = result;
      v16 = 0;
      v57 = v11 + 72;
      v60 = v12;
      v61 = v11;
      v62 = v11 + 64;
      while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v11 + 32))
      {
        if ((*(v14 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
        {
          goto LABEL_48;
        }

        v66 = v15 >> 6;
        v64 = v16;
        v65 = *(v11 + 36);
        v18 = *(v71 + 48);
        v69 = *(v2 + 120);
        v70 = v13;
        v20 = *(v2 + 88);
        v19 = *(v2 + 96);
        v21 = *(v2 + 56);
        v67 = *(v2 + 72);
        v68 = *(v2 + 48);
        v22 = v11;
        v23 = *(v11 + 48);
        v24 = sub_2528BECF0();
        v25 = *(v24 - 8);
        (*(v25 + 16))(v19, v23 + *(v25 + 72) * v15, v24);
        v26 = *(v59 + 16);
        v26(v19 + v18, *(v22 + 56) + *(v59 + 72) * v15, v21);
        (*(v25 + 32))(v20, v19, v24);
        v27 = *(v71 + 48);
        (*(v59 + 32))(v20 + v27, v19 + v18, v21);
        v26(v67, v20 + v27, v21);
        sub_2528BF2F0();
        SceneEntity.init(staticActionSet:staticHome:)(v67, v68, v69);
        v28 = v20;
        v13 = v70;
        sub_2527213D8(v28, &qword_27F4FC4A8, &qword_2528C3FC0);
        v30 = *(v70 + 16);
        v29 = *(v70 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_25282F020((v29 > 1), v30 + 1, 1);
          v13 = v70;
        }

        v2 = v58;
        v31 = *(v58 + 120);
        *(v13 + 16) = v30 + 1;
        result = sub_25274AB38(v31, v13 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v30, type metadata accessor for SceneEntity);
        v11 = v61;
        v14 = v62;
        v17 = 1 << *(v61 + 32);
        if (v15 >= v17)
        {
          goto LABEL_49;
        }

        v32 = *(v62 + 8 * v66);
        if ((v32 & (1 << v15)) == 0)
        {
          goto LABEL_50;
        }

        if (v65 != *(v61 + 36))
        {
          goto LABEL_51;
        }

        v33 = v32 & (-2 << (v15 & 0x3F));
        if (v33)
        {
          v17 = __clz(__rbit64(v33)) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v34 = v66 << 6;
          v35 = (v57 + 8 * v66);
          v36 = v66 + 1;
          while (v36 < (v17 + 63) >> 6)
          {
            v38 = *v35++;
            v37 = v38;
            v34 += 64;
            ++v36;
            if (v38)
            {
              result = sub_25271A63C(v15, v65, 0);
              v17 = __clz(__rbit64(v37)) + v34;
              goto LABEL_15;
            }
          }

          result = sub_25271A63C(v15, v65, 0);
        }

LABEL_15:
        v16 = v64 + 1;
        v15 = v17;
        if (v64 + 1 == v60)
        {

          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_32:
    sub_25274A4BC(*(v2 + 136), type metadata accessor for HomeEntity.SnapshotPair);
    v39 = *(v13 + 16);
    result = v56;
    v40 = v56[2];
    v41 = v40 + v39;
    if (__OFADD__(v40, v39))
    {
      goto LABEL_53;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v42 = v56;
    if (!result || v41 > v56[3] >> 1)
    {
      if (v40 <= v41)
      {
        v43 = v40 + v39;
      }

      else
      {
        v43 = v40;
      }

      result = sub_2527387D0(result, v43, 1, v56, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
      v42 = result;
    }

    v6 = (v55 - 1) & v55;
    if (*(v13 + 16))
    {
      if ((v42[3] >> 1) - v42[2] < v39)
      {
        goto LABEL_55;
      }

      v9 = v42;
      swift_arrayInitWithCopy();

      v8 = v54;
      if (v39)
      {
        v44 = *(v9 + 16);
        v45 = __OFADD__(v44, v39);
        v46 = v44 + v39;
        if (v45)
        {
          goto LABEL_56;
        }

        *(v9 + 16) = v46;
      }
    }

    else
    {
      v9 = v42;

      v8 = v54;
      if (v39)
      {
        goto LABEL_54;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v50)
    {
      v47 = *(v2 + 240);

      v48 = swift_task_alloc();
      *(v2 + 224) = v48;
      *v48 = v2;
      v48[1] = sub_252745BF0;
      v49 = *(v2 + 40);

      return sub_2528ADF2C(v49, v47 & 1, v9);
    }

    v6 = *(v51 + 8 * v10);
    ++v8;
    if (v6)
    {
      v56 = v9;
      v8 = v10;
      goto LABEL_12;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_252745BF0(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[29] = v1;

  if (v1)
  {

    v4 = sub_252745F2C;
  }

  else
  {
    v4 = sub_252745D14;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252745D14(uint64_t a1, uint64_t a2)
{
  v21 = v2;
  v3 = v2[27];
  v5 = v2[23];
  v4 = v2[24];

  sub_2528BAD54(1, v4, v5, v3);

  v6 = sub_2528C0890();
  v7 = sub_2528C0D10();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v2[27];
  if (v8)
  {
    v10 = v2[13];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = MEMORY[0x2530A81A0](v9, v10);
    v15 = v14;

    v16 = sub_2527389AC(v13, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_252711000, v6, v7, "Found sceneEntities: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x2530A8D80](v12, -1, -1);
    MEMORY[0x2530A8D80](v11, -1, -1);
  }

  else
  {
  }

  v17 = v2[3];

  v18 = v2[1];

  return v18(v17);
}

uint64_t sub_252745F2C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_2527460E8()
{
  result = qword_27F4FC4C8;
  if (!qword_27F4FC4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC4C8);
  }

  return result;
}

unint64_t sub_25274625C()
{
  result = qword_27F4FC508;
  if (!qword_27F4FC508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC508);
  }

  return result;
}

unint64_t sub_2527462B4()
{
  result = qword_27F4FC510;
  if (!qword_27F4FC510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC510);
  }

  return result;
}

unint64_t sub_252746354()
{
  result = qword_27F4FC520;
  if (!qword_27F4FC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC520);
  }

  return result;
}

unint64_t sub_2527463AC()
{
  result = qword_27F4FC528;
  if (!qword_27F4FC528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FC530, qword_2528C42F0);
    sub_25274ABA0(&qword_27F4FC4E0, type metadata accessor for SceneEntity, &protocol conformance descriptor for SceneEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC528);
  }

  return result;
}

unint64_t sub_252746464()
{
  result = qword_27F4FC538;
  if (!qword_27F4FC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC538);
  }

  return result;
}

unint64_t sub_2527464BC()
{
  result = qword_27F4FC540;
  if (!qword_27F4FC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC540);
  }

  return result;
}

unint64_t sub_252746514()
{
  result = qword_27F4FC548;
  if (!qword_27F4FC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC548);
  }

  return result;
}

unint64_t sub_25274656C()
{
  result = qword_27F4FC550;
  if (!qword_27F4FC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC550);
  }

  return result;
}

unint64_t sub_252746608()
{
  result = qword_27F4FC568;
  if (!qword_27F4FC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC568);
  }

  return result;
}

unint64_t sub_25274665C()
{
  result = qword_27F4FC570;
  if (!qword_27F4FC570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC570);
  }

  return result;
}

unint64_t sub_2527466B0()
{
  result = qword_27F4FC578;
  if (!qword_27F4FC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC578);
  }

  return result;
}

unint64_t sub_252746708()
{
  result = qword_27F4FC580;
  if (!qword_27F4FC580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC580);
  }

  return result;
}

unint64_t sub_2527467A4()
{
  result = qword_27F4FC598;
  if (!qword_27F4FC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC598);
  }

  return result;
}

void sub_252746820(uint64_t a1)
{
  sub_2527468B0(319);
  if (v1 <= 0x3F)
  {
    sub_2528BECF0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2527468B0(uint64_t a1)
{
  if (!qword_28151F358)
  {
    sub_25274690C();
    v1 = sub_2528BE770();
    if (!v2)
    {
      atomic_store(v1, &qword_28151F358);
    }
  }
}

unint64_t sub_25274690C()
{
  result = qword_28151F350;
  if (!qword_28151F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151F350);
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_2528BEA50();
  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_2528BEA50();

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for SceneEntityQuery(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SceneEntityQuery(uint64_t result, int a2, int a3)
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

unint64_t sub_252746AD4()
{
  result = qword_27F4FC5B0;
  if (!qword_27F4FC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC5B0);
  }

  return result;
}

unint64_t sub_252746B28()
{
  result = qword_27F4FC5C0;
  if (!qword_27F4FC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC5C0);
  }

  return result;
}

unint64_t sub_252746B7C()
{
  result = qword_27F4FC5D0;
  if (!qword_27F4FC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC5D0);
  }

  return result;
}

unint64_t sub_252746BD0()
{
  result = qword_27F4FC5D8;
  if (!qword_27F4FC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC5D8);
  }

  return result;
}

unint64_t sub_252746C24()
{
  result = qword_27F4FC5E0;
  if (!qword_27F4FC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC5E0);
  }

  return result;
}

unint64_t sub_252746C78()
{
  result = qword_27F4FC5F8;
  if (!qword_27F4FC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC5F8);
  }

  return result;
}

unint64_t sub_252746CCC()
{
  result = qword_27F4FC600;
  if (!qword_27F4FC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC600);
  }

  return result;
}

unint64_t sub_252746D20()
{
  result = qword_27F4FC608;
  if (!qword_27F4FC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC608);
  }

  return result;
}

uint64_t sub_252746D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_2528BEE30();
  v3[5] = swift_task_alloc();
  v4 = sub_2528BFCE0();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC470, &unk_2528CDE00);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for SceneEntity(0);
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC4A8, &qword_2528C3FC0);
  v3[16] = swift_task_alloc();
  v3[17] = *(type metadata accessor for HomeEntity.SnapshotPair(0) - 8);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v3[20] = swift_task_alloc();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8);
  v3[21] = v6;
  v3[22] = *(v6 + 64);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252747080, 0, 0);
}

uint64_t sub_252747080()
{
  v34 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  v0[24] = __swift_project_value_buffer(v1, qword_27F5025C8);

  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v33 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2527389AC(v5, v4, &v33);
    _os_log_impl(&dword_252711000, v2, v3, "Searching for scenes with name: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v8 = v0[23];
  v9 = v0[21];
  v31 = v0[19];
  v32 = v0[20];
  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[2];
  v13 = sub_2528C0820();
  v0[25] = __swift_project_value_buffer(v13, qword_27F5025E0);
  sub_25272006C(v10, v8, &qword_27F4FC488, &unk_2528C3F80);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v11;
  sub_25274AA0C(v8, v15 + v14, &qword_27F4FC488, &unk_2528C3F80);

  v0[26] = sub_2528B73C8(1u, 1, sub_25274AA74, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC490, &unk_2528C9050);
  v16 = sub_2528BF3E0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2528C17E0;
  v21 = v20 + v19;
  v22 = *(v17 + 104);
  v22(v21, *MEMORY[0x277D15A30], v16);
  *(v21 + v18) = 0;
  v22(v21 + v18, *MEMORY[0x277D15A28], v16);
  sub_252744570(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v23 = *MEMORY[0x277D16520];
  v24 = sub_2528C00B0();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v31, v23, v24);
  (*(v25 + 56))(v31, 0, 1, v24);
  sub_2528C0590();
  v26 = sub_2528C05D0();
  (*(*(v26 - 8) + 56))(v32, 0, 1, v26);
  v27 = swift_task_alloc();
  v0[27] = v27;
  *v27 = v0;
  v27[1] = sub_252747558;
  v28 = v0[20];
  v29 = v0[4];

  return sub_25277ECE4(v29, 0, 0, v28);
}

uint64_t sub_252747558(uint64_t a1)
{
  v2 = *(*v1 + 160);
  *(*v1 + 224) = a1;

  sub_2527213D8(v2, &qword_27F4FC480, &unk_2528C7FA0);

  return MEMORY[0x2822009F8](sub_252747688, 0, 0);
}

uint64_t sub_252747688(uint64_t a1, uint64_t a2)
{
  v79 = v2;
  v3 = v2[28];
  v64 = v2[17];
  v72 = v2[15];
  v4 = v2[12];
  v5 = v3 + 64;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v3 + 64);
  v9 = (63 - v6) >> 6;
  v71 = v2[7];
  v78 = MEMORY[0x277D84F90];
  v61 = v4;
  v69 = (v4 + 48);
  v70 = (v4 + 56);
  v65 = v3;

  v11 = 0;
  v62 = v9;
  v63 = v5;
LABEL_6:
  if (v8)
  {
    v13 = v11;
  }

  else
  {
    do
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_42;
      }

      if (v13 >= v9)
      {
        v49 = v2[25];
        v48 = v2[26];

        v50 = v78;

        sub_2528BAD54(1, v48, v49, v78);

        v51 = sub_2528C0890();
        v52 = sub_2528C0D10();

        v77 = v78;
        if (os_log_type_enabled(v51, v52))
        {
          v53 = v2[11];
          v54 = v2[2];
          v76 = v2[3];
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v78 = v56;
          *v55 = 136315394;
          v57 = MEMORY[0x2530A81A0](v50, v53);
          v59 = sub_2527389AC(v57, v58, &v78);

          *(v55 + 4) = v59;
          *(v55 + 12) = 2080;
          *(v55 + 14) = sub_2527389AC(v54, v76, &v78);
          _os_log_impl(&dword_252711000, v51, v52, "Found sceneEntities: %s for name: %s", v55, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v56, -1, -1);
          MEMORY[0x2530A8D80](v55, -1, -1);
        }

        v60 = v2[1];

        return v60(v77);
      }

      v8 = *(v5 + 8 * v13);
      ++v11;
    }

    while (!v8);
  }

  v66 = v13;
  v67 = (v8 - 1) & v8;
  sub_25274A454(*(v65 + 56) + *(v64 + 72) * (__clz(__rbit64(v8)) | (v13 << 6)), v2[18], type metadata accessor for HomeEntity.SnapshotPair);
  v14 = sub_2528BF380();
  v15 = v14 + 64;
  v16 = -1 << *(v14 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v14 + 64);
  v19 = (63 - v16) >> 6;
  v75 = v14;

  v20 = 0;
  v68 = MEMORY[0x277D84F90];
  v73 = v19;
  v74 = v15;
LABEL_15:
  v21 = v20;
  if (!v18)
  {
    goto LABEL_17;
  }

  do
  {
    v20 = v21;
LABEL_20:
    v22 = v2[16];
    v23 = v2[6];
    v25 = v2[2];
    v24 = v2[3];
    v26 = __clz(__rbit64(v18)) | (v20 << 6);
    v27 = *(v75 + 48);
    v28 = sub_2528BECF0();
    (*(*(v28 - 8) + 16))(v22, v27 + *(*(v28 - 8) + 72) * v26, v28);
    v29 = *(v75 + 56) + *(v71 + 72) * v26;
    v30 = *(v72 + 48);
    v31 = *(v71 + 16);
    v31(v22 + v30, v29, v23);
    if (sub_2528BFCB0() == v25 && v32 == v24)
    {
    }

    else
    {
      v34 = sub_2528C1060();

      if ((v34 & 1) == 0)
      {
        v35 = 1;
        goto LABEL_28;
      }
    }

    v37 = v2[8];
    v36 = v2[9];
    v38 = v2[5];
    v31(v37, v22 + v30, v2[6]);
    sub_2528BF2F0();
    SceneEntity.init(staticActionSet:staticHome:)(v37, v38, v36);
    v35 = 0;
LABEL_28:
    v18 &= v18 - 1;
    v39 = v2[16];
    v41 = v2[10];
    v40 = v2[11];
    v42 = v2[9];
    (*v70)(v42, v35, 1, v40);
    sub_25274AA0C(v42, v41, &qword_27F4FC470, &unk_2528CDE00);
    sub_2527213D8(v39, &qword_27F4FC4A8, &qword_2528C3FC0);
    if ((*v69)(v41, 1, v40) != 1)
    {
      v43 = v2[13];
      v44 = v2[14];
      sub_25274AB38(v2[10], v44, type metadata accessor for SceneEntity);
      sub_25274AB38(v44, v43, type metadata accessor for SceneEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_2527387D0(0, v68[2] + 1, 1, v68, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
      }

      v46 = v68[2];
      v45 = v68[3];
      if (v46 >= v45 >> 1)
      {
        v68 = sub_2527387D0((v45 > 1), v46 + 1, 1, v68, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
      }

      v47 = v2[13];
      v68[2] = v46 + 1;
      result = sub_25274AB38(v47, v68 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v46, type metadata accessor for SceneEntity);
      v19 = v73;
      v15 = v74;
      goto LABEL_15;
    }

    result = sub_2527213D8(v2[10], &qword_27F4FC470, &unk_2528CDE00);
    v21 = v20;
    v19 = v73;
    v15 = v74;
  }

  while (v18);
LABEL_17:
  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v19)
    {
      v12 = v2[18];

      sub_25274A4BC(v12, type metadata accessor for HomeEntity.SnapshotPair);
      result = sub_252735C84(v68, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity, type metadata accessor for SceneEntity);
      v11 = v66;
      v8 = v67;
      v9 = v62;
      v5 = v63;
      goto LABEL_6;
    }

    v18 = *(v15 + 8 * v20);
    ++v21;
    if (v18)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_252747DF8(_BYTE *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  sub_2528BEE30();
  *(v2 + 24) = swift_task_alloc();
  v4 = sub_2528BFCE0();
  *(v2 + 32) = v4;
  *(v2 + 40) = *(v4 - 8);
  *(v2 + 48) = swift_task_alloc();
  v5 = sub_2528C0CD0();
  *(v2 + 56) = v5;
  *(v2 + 64) = *(v5 - 8);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC838, &qword_2528C48F0);
  *(v2 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBBC0, &qword_2528C1800);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC470, &unk_2528CDE00);
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();
  v6 = type metadata accessor for SceneEntity(0);
  *(v2 + 144) = v6;
  *(v2 + 152) = *(v6 - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC4A8, &qword_2528C3FC0);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = *(type metadata accessor for HomeEntity.SnapshotPair(0) - 8);
  *(v2 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70);
  *(v2 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  *(v2 + 216) = swift_task_alloc();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8);
  *(v2 + 224) = v7;
  *(v2 + 232) = *(v7 + 64);
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 280) = *a1;

  return MEMORY[0x2822009F8](sub_252748200, 0, 0);
}

uint64_t sub_252748200()
{
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v24 = *(v0 + 216);
  v4 = *(v0 + 208);
  v5 = *(v0 + 16);
  v6 = sub_2528C0820();
  *(v0 + 248) = __swift_project_value_buffer(v6, qword_27F5025E0);
  sub_25272006C(v5, v2, &qword_27F4FC488, &unk_2528C3F80);
  v7 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  sub_25274AA0C(v2, v8 + v7, &qword_27F4FC488, &unk_2528C3F80);
  *(v0 + 256) = sub_2528B73C8(1u, 1, sub_25274A99C, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC490, &unk_2528C9050);
  v9 = sub_2528BF3E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2528C17E0;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, *MEMORY[0x277D15A30], v9);
  *(v14 + v11) = 0;
  v15(v14 + v11, *MEMORY[0x277D15A28], v9);
  sub_252744570(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v16 = *MEMORY[0x277D16520];
  v17 = sub_2528C00B0();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v4, v16, v17);
  (*(v18 + 56))(v4, 0, 1, v17);
  sub_2528C0590();
  v19 = sub_2528C05D0();
  (*(*(v19 - 8) + 56))(v24, 0, 1, v19);
  v20 = swift_task_alloc();
  *(v0 + 264) = v20;
  *v20 = v0;
  v20[1] = sub_2527485B4;
  v21 = *(v0 + 216);
  v22 = *(v0 + 16);

  return sub_25277ECE4(v22, 0, 0, v21);
}

uint64_t sub_2527485B4(uint64_t a1)
{
  v2 = *(*v1 + 216);
  *(*v1 + 272) = a1;

  sub_2527213D8(v2, &qword_27F4FC480, &unk_2528C7FA0);

  return MEMORY[0x2822009F8](sub_2527486E4, 0, 0);
}

uint64_t sub_2527486E4(uint64_t a1, uint64_t a2)
{
  v126 = v2;
  v4 = *(v2 + 272);
  v96 = *(v2 + 192);
  v115 = *(v2 + 176);
  v5 = *(v2 + 152);
  v114 = *(v2 + 80);
  v6 = *(v2 + 64);
  v7 = *(v2 + 40);
  v125[0] = MEMORY[0x277D84F90];
  v8 = v4 + 64;
  v9 = -1 << *(v4 + 32);
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 64);
  v12 = (63 - v9) >> 6;
  v113 = v7;
  v112 = (v6 + 56);
  v93 = *MEMORY[0x277D16EF8];
  v108 = (v6 + 104);
  v92 = *MEMORY[0x277D16F38];
  v106 = *MEMORY[0x277D16F28];
  v99 = *MEMORY[0x277D16F10];
  v105 = *MEMORY[0x277D16EF0];
  v97 = v4;
  v98 = (v6 + 32);
  v104 = (v6 + 8);
  v110 = (v5 + 56);
  v111 = (v6 + 48);
  v91 = v5;
  v109 = (v5 + 48);

  v13 = 0;
  v14 = &qword_27F4FBBC0;
  v94 = v12;
  v95 = v8;
LABEL_6:
  if (v11)
  {
    v16 = v13;
  }

  else
  {
    do
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_67;
      }

      if (v16 >= v12)
      {
        v67 = *(v2 + 248);
        v66 = *(v2 + 256);

        v3 = v125[0];

        sub_2528BAD54(1, v66, v67, v125[0]);

        if (qword_27F4FBB40 != -1)
        {
          goto LABEL_68;
        }

        goto LABEL_47;
      }

      v11 = *(v8 + 8 * v16);
      ++v13;
    }

    while (!v11);
  }

  v100 = v16;
  v101 = (v11 - 1) & v11;
  sub_25274A454(*(v97 + 56) + *(v96 + 72) * (__clz(__rbit64(v11)) | (v16 << 6)), *(v2 + 200), type metadata accessor for HomeEntity.SnapshotPair);
  v17 = sub_2528BF380();
  v18 = v17 + 64;
  v19 = -1 << *(v17 + 32);
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v17 + 64);
  v22 = (63 - v19) >> 6;
  v119 = v17;

  v23 = 0;
  v107 = MEMORY[0x277D84F90];
  v116 = v22;
  v117 = v18;
LABEL_15:
  v24 = v23;
  if (!v21)
  {
    goto LABEL_17;
  }

  do
  {
    v23 = v24;
LABEL_20:
    v25 = *(v2 + 280);
    v26 = *(v2 + 184);
    v27 = *(v2 + 32);
    v28 = __clz(__rbit64(v21)) | (v23 << 6);
    v29 = *(v119 + 48);
    v30 = sub_2528BECF0();
    (*(*(v30 - 8) + 16))(v26, v29 + *(*(v30 - 8) + 72) * v28, v30);
    v122 = *(v115 + 48);
    v123 = v26;
    v118 = *(v113 + 16);
    v118(v26 + v122, *(v119 + 56) + *(v113 + 72) * v28, v27);
    if (v25 <= 2)
    {
      v31 = v105;
      if (v25)
      {
        v31 = v99;
        if (v25 != 1)
        {
          v31 = v92;
        }
      }

      goto LABEL_27;
    }

    v31 = v106;
    if (v25 == 3)
    {
      goto LABEL_27;
    }

    if (v25 == 4)
    {
      v31 = v93;
LABEL_27:
      (*v108)(*(v2 + 112), v31, *(v2 + 56));
      v32 = 0;
      goto LABEL_28;
    }

    v32 = 1;
LABEL_28:
    v34 = *(v2 + 112);
    v33 = *(v2 + 120);
    v35 = *(v2 + 104);
    v36 = *(v2 + 88);
    v37 = *(v2 + 56);
    (*v112)(v34, v32, 1, v37);
    sub_25274AA0C(v34, v33, v14, &qword_2528C1800);
    sub_2528BFC80();
    v38 = *(v114 + 48);
    sub_25272006C(v33, v36, v14, &qword_2528C1800);
    v120 = v38;
    sub_25272006C(v35, v36 + v38, v14, &qword_2528C1800);
    v39 = v14;
    v40 = *v111;
    v41 = (*v111)(v36, 1, v37);
    v42 = *(v2 + 56);
    if (v41 == 1)
    {
      v43 = *(v2 + 120);
      sub_2527213D8(*(v2 + 104), v39, &qword_2528C1800);
      sub_2527213D8(v43, v39, &qword_2528C1800);
      v44 = v40(v36 + v120, 1, v42);
      v14 = v39;
      if (v44 != 1)
      {
        goto LABEL_33;
      }

      sub_2527213D8(*(v2 + 88), v39, &qword_2528C1800);
      v3 = &unk_2528CDE00;
LABEL_35:
      v54 = *(v2 + 128);
      v55 = *(v2 + 48);
      v56 = *(v2 + 24);
      v118(v55, v123 + v122, *(v2 + 32));
      sub_2528BF2F0();
      SceneEntity.init(staticActionSet:staticHome:)(v55, v56, v54);
      v50 = 0;
      goto LABEL_38;
    }

    sub_25272006C(*(v2 + 88), *(v2 + 96), v39, &qword_2528C1800);
    v45 = v40(v36 + v120, 1, v42);
    v46 = *(v2 + 120);
    v47 = *(v2 + 96);
    v48 = *(v2 + 104);
    if (v45 == 1)
    {
      v49 = *(v2 + 56);
      sub_2527213D8(*(v2 + 104), v39, &qword_2528C1800);
      sub_2527213D8(v46, v39, &qword_2528C1800);
      (*v104)(v47, v49);
      v14 = v39;
LABEL_33:
      sub_2527213D8(*(v2 + 88), &qword_27F4FC838, &qword_2528C48F0);
      v50 = 1;
      v3 = &unk_2528CDE00;
      goto LABEL_38;
    }

    v102 = *(v2 + 120);
    v103 = *(v2 + 88);
    v51 = *(v2 + 72);
    v52 = *(v2 + 56);
    (*v98)(v51, v36 + v120, v52);
    sub_25274ABA0(&qword_27F4FC840, MEMORY[0x277D16F40], MEMORY[0x277D16F48]);
    v121 = sub_2528C0930();
    v53 = *v104;
    (*v104)(v51, v52);
    sub_2527213D8(v48, v39, &qword_2528C1800);
    sub_2527213D8(v102, v39, &qword_2528C1800);
    v53(v47, v52);
    sub_2527213D8(v103, v39, &qword_2528C1800);
    v14 = v39;
    v3 = &unk_2528CDE00;
    if (v121)
    {
      goto LABEL_35;
    }

    v50 = 1;
LABEL_38:
    v21 &= v21 - 1;
    v57 = *(v2 + 184);
    v59 = *(v2 + 136);
    v58 = *(v2 + 144);
    v60 = *(v2 + 128);
    (*v110)(v60, v50, 1, v58);
    sub_25274AA0C(v60, v59, &qword_27F4FC470, &unk_2528CDE00);
    sub_2527213D8(v57, &qword_27F4FC4A8, &qword_2528C3FC0);
    if ((*v109)(v59, 1, v58) != 1)
    {
      v61 = *(v2 + 160);
      v62 = *(v2 + 168);
      sub_25274AB38(*(v2 + 136), v62, type metadata accessor for SceneEntity);
      sub_25274AB38(v62, v61, type metadata accessor for SceneEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = sub_2527387D0(0, v107[2] + 1, 1, v107, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
      }

      v64 = v107[2];
      v63 = v107[3];
      if (v64 >= v63 >> 1)
      {
        v107 = sub_2527387D0((v63 > 1), v64 + 1, 1, v107, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
      }

      v65 = *(v2 + 160);
      v107[2] = v64 + 1;
      sub_25274AB38(v65, v107 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v64, type metadata accessor for SceneEntity);
      v22 = v116;
      v18 = v117;
      goto LABEL_15;
    }

    sub_2527213D8(*(v2 + 136), &qword_27F4FC470, &unk_2528CDE00);
    v24 = v23;
    v22 = v116;
    v18 = v117;
  }

  while (v21);
LABEL_17:
  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v22)
    {
      v15 = *(v2 + 200);

      sub_25274A4BC(v15, type metadata accessor for HomeEntity.SnapshotPair);
      sub_252735C84(v107, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity, type metadata accessor for SceneEntity);
      v13 = v100;
      v11 = v101;
      v12 = v94;
      v8 = v95;
      goto LABEL_6;
    }

    v21 = *(v18 + 8 * v23);
    ++v24;
    if (v21)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  swift_once();
LABEL_47:
  v68 = sub_2528C08B0();
  __swift_project_value_buffer(v68, qword_27F5025C8);

  v69 = sub_2528C0890();
  v70 = sub_2528C0D10();

  v124 = v3;
  if (os_log_type_enabled(v69, v70))
  {
    v71 = *(v2 + 280);
    v72 = *(v2 + 144);
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v125[0] = v74;
    *v73 = 136315394;
    v75 = MEMORY[0x2530A81A0](v3, v72);
    v77 = sub_2527389AC(v75, v76, v125);

    v78 = 0xEB000000006C6176;
    *(v73 + 4) = v77;
    v79 = 0x69727241656D6F68;
    v80 = 0xE500000000000000;
    *(v73 + 12) = 2080;
    v81 = 0x7065656C73;
    v82 = 0xEB0000000064656ELL;
    v83 = 0x6966654472657375;
    if (v71 != 4)
    {
      v83 = 1701736302;
      v82 = 0xE400000000000000;
    }

    if (v71 != 3)
    {
      v81 = v83;
      v80 = v82;
    }

    v84 = 0xED00006572757472;
    v85 = 0x61706544656D6F68;
    if (v71 != 1)
    {
      v85 = 0x7055656B6177;
      v84 = 0xE600000000000000;
    }

    if (v71)
    {
      v79 = v85;
      v78 = v84;
    }

    if (v71 <= 2)
    {
      v86 = v79;
    }

    else
    {
      v86 = v81;
    }

    if (v71 <= 2)
    {
      v87 = v78;
    }

    else
    {
      v87 = v80;
    }

    v88 = sub_2527389AC(v86, v87, v125);

    *(v73 + 14) = v88;
    _os_log_impl(&dword_252711000, v69, v70, "Found sceneEntities: %s for sceneType: %s", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v74, -1, -1);
    MEMORY[0x2530A8D80](v73, -1, -1);
  }

  v89 = *(v2 + 8);

  return v89(v124);
}

uint64_t sub_252749330(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SceneEntity(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = sub_2528BEC40();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = *a2;
  v12 = *(a2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC708, &qword_2528C47D8);
  sub_2528BEC20();
  sub_25274ABA0(&qword_27F4FC518, type metadata accessor for SceneEntity, &protocol conformance descriptor for SceneEntity);
  v13 = sub_2528BE6F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC710, &unk_2528C47E0);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_25274A400();
  sub_2528BE700();
  sub_25274A454(a1, v9, type metadata accessor for SceneEntity);
  sub_25274A454(v9, v7, type metadata accessor for SceneEntity);
  sub_2528BEA50();
  sub_2528BE6C0();
  sub_25274A4BC(v9, type metadata accessor for SceneEntity);
  v15 = v11;
  v16 = v12;
  sub_2528BE6C0();
  sub_25274A4BC(a1, type metadata accessor for SceneEntity);

  return v13;
}

uint64_t sub_252749584()
{
  v0 = type metadata accessor for SceneEntity(0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = (&v9 - v4);
  v6 = sub_2528BEC40();
  MEMORY[0x28223BE20](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC708, &qword_2528C47D8);
  sub_2528BEC20();
  sub_25274ABA0(&qword_27F4FC518, type metadata accessor for SceneEntity, &protocol conformance descriptor for SceneEntity);
  v7 = sub_2528BE6F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC710, &unk_2528C47E0);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_25274A400();
  sub_2528BE700();
  sub_2528BEA50();
  sub_2527305D0(v5);
  sub_25274A454(v5, v3, type metadata accessor for SceneEntity);
  sub_2528BE6C0();
  sub_25274A4BC(v5, type metadata accessor for SceneEntity);

  return v7;
}

uint64_t sub_252749788(uint64_t a1)
{
  v2 = sub_2528BFDE0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC790, &qword_2528C4858);
    v9 = sub_2528C0E50();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_25274ABA0(&qword_27F4FC798, MEMORY[0x277D16348], MEMORY[0x277D16350]);
      v16 = sub_2528C0900();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_25274ABA0(&qword_27F4FC7A0, MEMORY[0x277D16348], MEMORY[0x277D16360]);
          v23 = sub_2528C0930();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_252749AA8(uint64_t a1)
{
  v2 = sub_2528BFCF0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC648, &qword_2528C4760);
    v9 = sub_2528C0E50();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_25274ABA0(&qword_27F4FC638, MEMORY[0x277D15F48], MEMORY[0x277D15F58]);
      v16 = sub_2528C0900();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_25274ABA0(&qword_27F4FC640, MEMORY[0x277D15F48], MEMORY[0x277D15F68]);
          v23 = sub_2528C0930();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_252749DC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC850, &unk_2528D3C30);
    v3 = sub_2528C0E50();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_2528C1130();

      sub_2528C0A40();
      result = sub_2528C1180();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2528C1060();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_252749F30(uint64_t a1)
{
  v2 = sub_2528C0770();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC660, &qword_2528C4778);
    v9 = sub_2528C0E50();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_25274ABA0(&qword_27F4FC668, MEMORY[0x277D16E98], MEMORY[0x277D16EA0]);
      v16 = sub_2528C0900();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_25274ABA0(&qword_27F4FC670, MEMORY[0x277D16E98], MEMORY[0x277D16EA8]);
          v23 = sub_2528C0930();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25274A250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC630, &qword_2528C4758);
    v3 = sub_2528C0E50();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 2 * v4);
      v19 = v10;
      v18 = v10;
      sub_2528C1130();
      DeviceType.hash(into:)(v17);
      result = sub_2528C1180();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      if ((v16 & v15) != 0)
      {
        while (1)
        {
          v17[0] = *(*(v3 + 48) + 2 * v13);
          result = _s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v17, &v19);
          if (result)
          {
            break;
          }

          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v10 = v19;
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 2 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_25274A3AC()
{
  result = qword_27F4FC6F0;
  if (!qword_27F4FC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC6F0);
  }

  return result;
}

unint64_t sub_25274A400()
{
  result = qword_27F4FC718;
  if (!qword_27F4FC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC718);
  }

  return result;
}

uint64_t sub_25274A454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25274A4BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25274A51C()
{
  result = qword_27F4FC770;
  if (!qword_27F4FC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC770);
  }

  return result;
}

unint64_t sub_25274A570()
{
  result = qword_27F4FC7E8;
  if (!qword_27F4FC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC7E8);
  }

  return result;
}

uint64_t sub_25274A5C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC800, &qword_2528C48B8);
    v3 = sub_2528C0E50();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4);
      v26 = v4 + 1;
      sub_2528C1130();
      sub_2528C0A40();

      result = sub_2528C1180();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 > 2)
          {
            v15 = 0xE400000000000000;
            if (v13 == 3)
            {
              v14 = 1701670760;
              if (v6 > 2)
              {
                goto LABEL_35;
              }
            }

            else if (v13 == 4)
            {
              v14 = 1836019570;
              if (v6 > 2)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v14 = 1701736314;
              if (v6 > 2)
              {
                goto LABEL_35;
              }
            }
          }

          else if (*(*(v3 + 48) + v9))
          {
            if (v13 == 1)
            {
              v14 = 0x7954656369766564;
            }

            else
            {
              v14 = 0x70756F7267;
            }

            if (v13 == 1)
            {
              v15 = 0xEA00000000006570;
            }

            else
            {
              v15 = 0xE500000000000000;
            }

            if (v6 > 2)
            {
LABEL_35:
              v18 = 1836019570;
              if (v6 != 4)
              {
                v18 = 1701736314;
              }

              if (v6 == 3)
              {
                v19 = 1701670760;
              }

              else
              {
                v19 = v18;
              }

              v17 = 0xE400000000000000;
              if (v14 != v19)
              {
                goto LABEL_42;
              }

              goto LABEL_41;
            }
          }

          else
          {
            v14 = 0x614E656369766564;
            v15 = 0xEA0000000000656DLL;
            if (v6 > 2)
            {
              goto LABEL_35;
            }
          }

          if (v6)
          {
            if (v6 == 1)
            {
              v16 = 0x7954656369766564;
            }

            else
            {
              v16 = 0x70756F7267;
            }

            if (v6 == 1)
            {
              v17 = 0xEA00000000006570;
            }

            else
            {
              v17 = 0xE500000000000000;
            }

            if (v14 != v16)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v17 = 0xEA0000000000656DLL;
            if (v14 != 0x614E656369766564)
            {
              goto LABEL_42;
            }
          }

LABEL_41:
          if (v15 == v17)
          {

            goto LABEL_4;
          }

LABEL_42:
          v20 = sub_2528C1060();

          if (v20)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      *(v3 + 16) = v23;
LABEL_4:
      v4 = v26;
      if (v26 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_25274A948()
{
  result = qword_27F4FC808;
  if (!qword_27F4FC808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC808);
  }

  return result;
}

uint64_t sub_25274A99C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v1 = *(v0 + 16);

  return sub_252734008(v1);
}

uint64_t sub_25274AA0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25274AA74()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_252733ED0(v2, v3, v4);
}

unint64_t sub_25274AAE4()
{
  result = qword_27F4FC878;
  if (!qword_27F4FC878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC878);
  }

  return result;
}

uint64_t sub_25274AB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25274ABA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25274AC0C()
{
  result = qword_27F4FC910;
  if (!qword_27F4FC910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FC908, &qword_2528C4A40);
    sub_25274AC98();
    sub_25274AD48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC910);
  }

  return result;
}

unint64_t sub_25274AC98()
{
  result = qword_27F4FC918;
  if (!qword_27F4FC918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FC8F8, &qword_2528C4A10);
    sub_25272275C(&qword_27F4FC920, &qword_27F4FC8F0, &qword_2528C4A08, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC918);
  }

  return result;
}

unint64_t sub_25274AD48()
{
  result = qword_27F4FC928;
  if (!qword_27F4FC928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FC8E8, &qword_2528C4A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC928);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SceneOutcome(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for SceneOutcome(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_25274AF14(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_25274AF2C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_25274AF58()
{
  result = qword_27F4FC968;
  if (!qword_27F4FC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC968);
  }

  return result;
}

unint64_t sub_25274AFB0()
{
  result = qword_27F4FC970;
  if (!qword_27F4FC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC970);
  }

  return result;
}

unint64_t sub_25274B008()
{
  result = qword_27F4FC978;
  if (!qword_27F4FC978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC978);
  }

  return result;
}

unint64_t sub_25274B05C()
{
  result = qword_27F4FC980;
  if (!qword_27F4FC980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC980);
  }

  return result;
}

unint64_t sub_25274B0B4()
{
  result = qword_27F4FC988;
  if (!qword_27F4FC988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC988);
  }

  return result;
}

unint64_t sub_25274B10C()
{
  result = qword_27F4FC990;
  if (!qword_27F4FC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC990);
  }

  return result;
}

unint64_t sub_25274B164()
{
  result = qword_27F4FC998;
  if (!qword_27F4FC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC998);
  }

  return result;
}

unint64_t sub_25274B1BC()
{
  result = qword_27F4FC9A0;
  if (!qword_27F4FC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9A0);
  }

  return result;
}

unint64_t sub_25274B258()
{
  result = qword_27F4FC9B8;
  if (!qword_27F4FC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9B8);
  }

  return result;
}

unint64_t sub_25274B2B0()
{
  result = qword_27F4FC9C0;
  if (!qword_27F4FC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9C0);
  }

  return result;
}

unint64_t sub_25274B308()
{
  result = qword_27F4FC9C8;
  if (!qword_27F4FC9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9C8);
  }

  return result;
}

unint64_t sub_25274B360()
{
  result = qword_27F4FC9D0;
  if (!qword_27F4FC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9D0);
  }

  return result;
}

unint64_t sub_25274B3B4()
{
  result = qword_27F4FC9D8;
  if (!qword_27F4FC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9D8);
  }

  return result;
}

unint64_t sub_25274B40C()
{
  result = qword_27F4FC9E0;
  if (!qword_27F4FC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9E0);
  }

  return result;
}

unint64_t sub_25274B464()
{
  result = qword_27F4FC9E8;
  if (!qword_27F4FC9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9E8);
  }

  return result;
}

unint64_t sub_25274B4BC()
{
  result = qword_27F4FC9F0;
  if (!qword_27F4FC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9F0);
  }

  return result;
}

unint64_t sub_25274B514()
{
  result = qword_27F4FC9F8;
  if (!qword_27F4FC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9F8);
  }

  return result;
}

unint64_t sub_25274B5B0()
{
  result = qword_27F4FCA10;
  if (!qword_27F4FCA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA10);
  }

  return result;
}

unint64_t sub_25274B608()
{
  result = qword_27F4FCA18;
  if (!qword_27F4FCA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA18);
  }

  return result;
}

unint64_t sub_25274B660()
{
  result = qword_27F4FCA20;
  if (!qword_27F4FCA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA20);
  }

  return result;
}

unint64_t sub_25274B6B8()
{
  result = qword_27F4FCA28;
  if (!qword_27F4FCA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA28);
  }

  return result;
}

unint64_t sub_25274B70C()
{
  result = qword_27F4FCA30;
  if (!qword_27F4FCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA30);
  }

  return result;
}

unint64_t sub_25274B764()
{
  result = qword_27F4FCA38;
  if (!qword_27F4FCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA38);
  }

  return result;
}

unint64_t sub_25274B7BC()
{
  result = qword_27F4FCA40;
  if (!qword_27F4FCA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA40);
  }

  return result;
}

unint64_t sub_25274B814()
{
  result = qword_27F4FCA48;
  if (!qword_27F4FCA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA48);
  }

  return result;
}

unint64_t sub_25274B86C()
{
  result = qword_27F4FCA50;
  if (!qword_27F4FCA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA50);
  }

  return result;
}

unint64_t sub_25274B908()
{
  result = qword_27F4FCA68;
  if (!qword_27F4FCA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA68);
  }

  return result;
}

unint64_t sub_25274B960()
{
  result = qword_27F4FCA70;
  if (!qword_27F4FCA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA70);
  }

  return result;
}

unint64_t sub_25274B9B8()
{
  result = qword_27F4FCA78;
  if (!qword_27F4FCA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA78);
  }

  return result;
}

unint64_t sub_25274BA10()
{
  result = qword_27F4FCA80;
  if (!qword_27F4FCA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA80);
  }

  return result;
}

unint64_t sub_25274BB30()
{
  result = qword_27F4FCAB8;
  if (!qword_27F4FCAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCAB8);
  }

  return result;
}

unint64_t sub_25274BB84()
{
  result = qword_27F4FCAC0;
  if (!qword_27F4FCAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCAC0);
  }

  return result;
}

unint64_t sub_25274BBD8()
{
  result = qword_27F4FCAC8;
  if (!qword_27F4FCAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCAC8);
  }

  return result;
}

uint64_t CameraClipEntity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2528BECF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CameraClipEntity.id.setter(uint64_t a1)
{
  v3 = sub_2528BECF0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CameraClipEntity.cameraProfileID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CameraClipEntity(0) + 20);
  v4 = sub_2528BECF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CameraClipEntity(uint64_t a1)
{
  result = qword_27F4FCBB0;
  if (!qword_27F4FCBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CameraClipEntity.cameraProfileID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CameraClipEntity(0) + 20);
  v4 = sub_2528BECF0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_25274BF50()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FCAD0);
  __swift_project_value_buffer(v0, qword_27F4FCAD0);
  return sub_2528BE9D0();
}

uint64_t static CameraClipEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB630 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FCAD0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CameraClipEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27F4FB630 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FCAD0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CameraClipEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27F4FB630 != -1)
  {
    swift_once();
  }

  v1 = sub_2528BE9F0();
  __swift_project_value_buffer(v1, qword_27F4FCAD0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25274C1EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB630 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FCAD0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25274C2AC(uint64_t a1)
{
  if (qword_27F4FB630 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FCAD0);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_25274C3A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2528BECF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_25274C410(uint64_t a1)
{
  v2 = sub_25274E0DC(&qword_27F4FCB90, type metadata accessor for CameraClipEntity, &protocol conformance descriptor for CameraClipEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25274C498(uint64_t a1)
{
  v2 = sub_25274E0DC(&qword_27F4FCB60, type metadata accessor for CameraClipEntity, &protocol conformance descriptor for CameraClipEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25274C514()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB18, &qword_2528C54D0);
  __swift_allocate_value_buffer(v0, qword_27F4FCAE8);
  __swift_project_value_buffer(v0, qword_27F4FCAE8);
  type metadata accessor for CameraClipEntity(0);
  sub_25274E0DC(&qword_27F4FCB90, type metadata accessor for CameraClipEntity, &protocol conformance descriptor for CameraClipEntity);
  return sub_2528BE990();
}

uint64_t sub_25274C5D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC30, &qword_2528C59C0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  swift_getKeyPath();
  sub_25274E0DC(&qword_27F4FCB90, type metadata accessor for CameraClipEntity, &protocol conformance descriptor for CameraClipEntity);
  sub_25272275C(&qword_27F4FCC38, &qword_27F4FBE18, &unk_2528C2550, MEMORY[0x277CB9E70]);
  sub_2528BEAD0();
  type metadata accessor for CameraClipEntity(0);
  sub_2528BEAF0();
  v7 = *(v1 + 8);
  v7(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC40, &unk_2528C59C8);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v9 + v8, v6, v0);
  v10 = sub_2528BEAE0();

  v7(v6, v0);
  return v10;
}

uint64_t static CameraClipEntityQuery.sortingOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB638 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB18, &qword_2528C54D0);
  v3 = __swift_project_value_buffer(v2, qword_27F4FCAE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CameraClipEntityQuery.sortingOptions.setter(uint64_t a1)
{
  if (qword_27F4FB638 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB18, &qword_2528C54D0);
  v3 = __swift_project_value_buffer(v2, qword_27F4FCAE8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CameraClipEntityQuery.sortingOptions.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27F4FB638 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB18, &qword_2528C54D0);
  __swift_project_value_buffer(v1, qword_27F4FCAE8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25274CA88@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB638 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB18, &qword_2528C54D0);
  v3 = __swift_project_value_buffer(v2, qword_27F4FCAE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25274CB54(uint64_t a1)
{
  if (qword_27F4FB638 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB18, &qword_2528C54D0);
  v3 = __swift_project_value_buffer(v2, qword_27F4FCAE8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_25274CC28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB20, &qword_2528C54D8);
  __swift_allocate_value_buffer(v0, qword_27F4FCB00);
  __swift_project_value_buffer(v0, qword_27F4FCB00);
  type metadata accessor for CameraClipEntity(0);
  sub_2528BEC90();
  sub_25274E0DC(&qword_27F4FCB90, type metadata accessor for CameraClipEntity, &protocol conformance descriptor for CameraClipEntity);
  return sub_2528BE920();
}

uint64_t sub_25274CCFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCBE8, &qword_2528C5918);
  swift_getKeyPath();
  sub_2528BE870();
  sub_25274E0DC(&qword_27F4FCB90, type metadata accessor for CameraClipEntity, &protocol conformance descriptor for CameraClipEntity);
  v0 = sub_2528BEA50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCBF0, &qword_2528C5948);
  swift_getKeyPath();
  sub_2528BEA50();
  sub_2528BE870();
  v1 = sub_2528BEA50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8C8, &qword_2528C49E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2528C54C0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  type metadata accessor for CameraClipEntity(0);
  sub_2528BEC90();
  sub_2528BEA50();
  v3 = sub_2528BEA40();

  return v3;
}

uint64_t sub_25274CEAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC18, &qword_2528C59A0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC20, &qword_2528C59A8);
  swift_allocObject();
  sub_2528BE850();
  type metadata accessor for CameraClipEntity(0);
  sub_25274E0DC(&qword_27F4FCB90, type metadata accessor for CameraClipEntity, &protocol conformance descriptor for CameraClipEntity);
  sub_2528BEAC0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC28, &unk_2528C59B0);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v5 + v4, v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE18, &unk_2528C2550);
  sub_2528BEC90();
  sub_25274E0DC(&qword_27F4FCBC8, MEMORY[0x277CC9578], MEMORY[0x277CBA4E8]);
  v6 = sub_2528BEAB0();

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_25274D12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2528BEC90();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_25274D198()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCBF8, &qword_2528C5980);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC00, &qword_2528C5988);
  swift_allocObject();
  sub_2528BE850();
  type metadata accessor for CameraClipEntity(0);
  sub_25274E0DC(&qword_27F4FCB90, type metadata accessor for CameraClipEntity, &protocol conformance descriptor for CameraClipEntity);
  sub_2528BEAC0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC08, &qword_2528C5990);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v5 + v4, v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC10, &qword_2528C5998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCBD8, &qword_2528C58F8);
  sub_2528BEC90();
  sub_25274E194();
  v6 = sub_2528BEAB0();

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_25274D408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCBD8, &qword_2528C58F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_25274E328(a1, &v11 - v5);
  v7 = sub_2528BEC90();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v6, 1, v7) != 1)
  {
    return (*(v8 + 32))(a2, v6, v7);
  }

  sub_2528BEC80();
  result = (v9)(v6, 1, v7);
  if (result != 1)
  {
    return sub_25274E398(v6);
  }

  return result;
}

uint64_t static CameraClipEntityQuery.properties.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB640 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB20, &qword_2528C54D8);
  v3 = __swift_project_value_buffer(v2, qword_27F4FCB00);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CameraClipEntityQuery.properties.setter(uint64_t a1)
{
  if (qword_27F4FB640 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB20, &qword_2528C54D8);
  v3 = __swift_project_value_buffer(v2, qword_27F4FCB00);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CameraClipEntityQuery.properties.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27F4FB640 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB20, &qword_2528C54D8);
  __swift_project_value_buffer(v1, qword_27F4FCB00);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25274D7B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB640 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB20, &qword_2528C54D8);
  v3 = __swift_project_value_buffer(v2, qword_27F4FCB00);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25274D87C(uint64_t a1)
{
  if (qword_27F4FB640 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB20, &qword_2528C54D8);
  v3 = __swift_project_value_buffer(v2, qword_27F4FCB00);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

unint64_t sub_25274DA88()
{
  result = qword_27F4FCB40;
  if (!qword_27F4FCB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCB40);
  }

  return result;
}

unint64_t sub_25274DCAC()
{
  result = qword_27F4FCB80;
  if (!qword_27F4FCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCB80);
  }

  return result;
}

unint64_t sub_25274DD04()
{
  result = qword_27F4FCB88;
  if (!qword_27F4FCB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCB88);
  }

  return result;
}

unint64_t sub_25274DDC4()
{
  result = qword_27F4FCB98;
  if (!qword_27F4FCB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCB98);
  }

  return result;
}

unint64_t sub_25274DE1C()
{
  result = qword_27F4FCBA0;
  if (!qword_27F4FCBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCBA8, qword_2528C5810);
    sub_25274E0DC(&qword_27F4FCB58, type metadata accessor for CameraClipEntity, &protocol conformance descriptor for CameraClipEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCBA0);
  }

  return result;
}

uint64_t sub_25274DED0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_25274DA88();
  *v5 = v2;
  v5[1] = sub_2527228B0;

  return MEMORY[0x28210B618](a1, a2, v6);
}

void sub_25274DFAC(uint64_t a1)
{
  sub_2528BECF0();
  if (v1 <= 0x3F)
  {
    sub_25274E048(319);
    if (v2 <= 0x3F)
    {
      sub_25274E124(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25274E048(uint64_t a1)
{
  if (!qword_27F4FCBC0)
  {
    sub_2528BEC90();
    sub_25274E0DC(&qword_27F4FCBC8, MEMORY[0x277CC9578], MEMORY[0x277CBA4E8]);
    v1 = sub_2528BE770();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4FCBC0);
    }
  }
}

uint64_t sub_25274E0DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_25274E124(uint64_t a1)
{
  if (!qword_27F4FCBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCBD8, &qword_2528C58F8);
    sub_25274E194();
    v1 = sub_2528BE770();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4FCBD0);
    }
  }
}

unint64_t sub_25274E194()
{
  result = qword_27F4FCBE0;
  if (!qword_27F4FCBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCBD8, &qword_2528C58F8);
    sub_25274E0DC(&qword_27F4FCBC8, MEMORY[0x277CC9578], MEMORY[0x277CBA4E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCBE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraClipEntityQuery(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CameraClipEntityQuery(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_25274E328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCBD8, &qword_2528C58F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25274E398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCBD8, &qword_2528C58F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25274E414()
{
  result = qword_27F4FCC48;
  if (!qword_27F4FCC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCC48);
  }

  return result;
}

unint64_t sub_25274E46C()
{
  result = qword_27F4FCC50;
  if (!qword_27F4FCC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCC50);
  }

  return result;
}

unint64_t sub_25274E544()
{
  result = qword_27F4FCC58;
  if (!qword_27F4FCC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCC58);
  }

  return result;
}

uint64_t sub_25274E598()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F502888);
  __swift_project_value_buffer(v0, qword_27F502888);
  return sub_2528BEC20();
}

uint64_t sub_25274E700(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25274E7D4, 0, 0);
}

uint64_t sub_25274E7D4()
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2528C08B0();
  v3 = __swift_project_value_buffer(v2, qword_27F5025C8);
  v0[8] = v3;
  sub_2527BBA98(v1, v3);
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v4 = v0[3];
  v5 = sub_2528C0820();
  v6 = __swift_project_value_buffer(v5, qword_27F5025E0);
  v0[9] = v6;
  v0[10] = sub_2528B7AE0(v4, v6);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_25274E91C;
  v8 = v0[2];

  return sub_25274EC18(v8);
}

uint64_t sub_25274E91C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_25274EB68;
  }

  else
  {
    v2 = sub_25274EA30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25274EA30()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v7 = v0[3];
  v6 = v0[4];
  (*(v5 + 16))(v3, v0[2], v6);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v3, v6);
  sub_2527BC828(v7, v1, sub_252756420, v9, v2);

  sub_2527BDFB4(v7, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_25274EB68()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 24);
  sub_2527BE9D0(v3, *(v0 + 80), v1, *(v0 + 72));
  sub_2527C01BC(v3, v1, v2);
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25274EC18(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = type metadata accessor for HomeEntity(0);
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = type metadata accessor for ShowDeviceResultIntent(0);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v4 = sub_2528BECF0();
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v5 = sub_2528BEEC0();
  v2[36] = v5;
  v2[37] = *(v5 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = *(type metadata accessor for DeviceEntity(0) - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70);
  v2[46] = swift_task_alloc();
  v6 = sub_2528C0060();
  v2[47] = v6;
  v2[48] = *(v6 - 8);
  v2[49] = swift_task_alloc();
  v7 = sub_2528BEE30();
  v2[50] = v7;
  v2[51] = *(v7 - 8);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v8 = sub_2528C00D0();
  v2[56] = v8;
  v2[57] = *(v8 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v9 = sub_2528BE8B0();
  v2[60] = v9;
  v2[61] = *(v9 - 8);
  v2[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  v2[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0);
  v2[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB0, &qword_2528D2DB0);
  v2[65] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v10 = sub_2528BF400();
  v2[70] = v10;
  v11 = *(v10 - 8);
  v2[71] = v11;
  v2[72] = *(v11 + 64);
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v2[77] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25274F290, 0, 0);
}

uint64_t sub_25274F290()
{
  v0[82] = *(v0[25] + 24);
  sub_2528BE790();
  v1 = *(v0[12] + 16);

  if (v1)
  {
    v2 = v0[77];
    v0[83] = *v0[25];
    sub_2528BE790();
    sub_2528BE790();
    v3 = v0[13];
    v0[84] = v3;
    v4 = sub_2528C05D0();
    v0[85] = v4;
    v5 = *(v4 - 8);
    v6 = *(v5 + 56);
    v0[86] = v6;
    v0[87] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v6(v2, 1, 1, v4);
    v7 = swift_task_alloc();
    v0[88] = v7;
    *v7 = v0;
    v7[1] = sub_25274F68C;
    v8 = v0[81];
    v9 = v0[77];

    return sub_25277ECE4(v8, v3, 0, v9);
  }

  else
  {
    type metadata accessor for HomeAppIntentError(0);
    sub_252756778(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_25274F68C(uint64_t a1)
{
  v2 = *(*v1 + 648);
  v3 = *(*v1 + 616);
  *(*v1 + 712) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_25274F80C, 0, 0);
}

uint64_t sub_25274F80C()
{
  v1 = *(v0 + 512);
  sub_2527D38F8(*(v0 + 712), v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 520);
    sub_2527213D8(*(v0 + 512), &qword_27F4FCDA8, &unk_2528C5CB0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
LABEL_4:
    v17 = *(v0 + 632);
    v18 = *(v0 + 208);
    v19 = *(v0 + 216);
    sub_2527213D8(*(v0 + 520), &qword_27F4FCDB0, &qword_2528D2DB0);
    type metadata accessor for HomeAppIntentError(0);
    sub_252756778(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    v21 = v20;
    sub_2528BE790();
    v22 = *(v19 + 48);
    v23 = 1;
    if (!v22(v17, 1, v18))
    {
      (*(*(v0 + 264) + 16))(v21, *(v0 + 632), *(v0 + 256));
      v23 = 0;
    }

    v24 = *(v0 + 624);
    v26 = *(v0 + 256);
    v25 = *(v0 + 264);
    v27 = *(v0 + 208);
    sub_2527213D8(*(v0 + 632), &qword_27F4FC488, &unk_2528C3F80);
    (*(v25 + 56))(v21, v23, 1, v26);
    v28 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48));
    sub_2528BE790();
    v29 = v22(v24, 1, v27);
    v30 = *(v0 + 624);
    if (v29)
    {
      sub_2527213D8(v30, &qword_27F4FC488, &unk_2528C3F80);
      v31 = 0;
      v32 = 0;
    }

    else
    {
      v33 = *(v0 + 224);
      v34 = *(v0 + 624);
      sub_252756580(v30, v33, type metadata accessor for HomeEntity);
      sub_2527213D8(v34, &qword_27F4FC488, &unk_2528C3F80);
      sub_2528BE6B0();
      v31 = *(v0 + 64);
      v32 = *(v0 + 72);
      sub_2527567C0(v33, type metadata accessor for HomeEntity);
    }

    *v28 = v31;
    v28[1] = v32;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_10;
  }

  v5 = *(v0 + 568);
  v6 = *(v0 + 560);
  v7 = *(v0 + 520);
  v8 = *(v0 + 512);
  v9 = *(v0 + 264);
  v93 = *(v0 + 256);
  v10 = v8 + *(v2 + 48);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
  v12 = *(v11 + 48);
  v13 = *(v5 + 16);
  *(v0 + 720) = v13;
  *(v0 + 728) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v7, v10, v6);
  v14 = type metadata accessor for HomeEntity.SnapshotPair(0);
  sub_25272006C(v10 + *(v14 + 20), v7 + v12, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_2527567C0(v10, type metadata accessor for HomeEntity.SnapshotPair);
  v15 = *(v11 - 8);
  (*(v15 + 56))(v7, 0, 1, v11);
  v16 = *(v9 + 8);
  *(v0 + 736) = v16;
  *(v0 + 744) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v8, v93);
  if ((*(v15 + 48))(v7, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  v89 = *(v0 + 608);
  v90 = *(v0 + 600);
  v37 = *(v0 + 568);
  v88 = *(v0 + 560);
  v38 = *(v0 + 552);
  v39 = *(v0 + 520);
  v40 = *(v0 + 504);
  v41 = *(v0 + 200);
  v42 = *(v11 + 48);
  v43 = *(v37 + 32);
  v37 += 32;
  *(v0 + 752) = v43;
  *(v0 + 760) = v37 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v43();
  sub_25274AA0C(v39 + v42, v38, &qword_27F4FCDB8, &unk_2528C5CC0);
  v44 = sub_2528C0C40();
  (*(*(v44 - 8) + 56))(v40, 1, 1, v44);
  *(v0 + 768) = *(v41 + 4);
  v13(v90, v89, v88);
  v45 = (*(v37 + 48) + 80) & ~*(v37 + 48);
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  v47 = *v41;
  v48 = v41[2];
  *(v46 + 48) = v41[1];
  *(v46 + 64) = v48;
  *(v46 + 32) = v47;
  (v43)(v46 + v45, v90, v88);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2527D3B74(0, 0, v40, &unk_2528C5CF0, v46);

  sub_2528BE790();
  v49 = *(v0 + 112);
  *(v0 + 776) = v49;
  sub_2528BE790();
  *(v0 + 784) = *(v0 + 120);
  sub_2528BE790();
  sub_2528BE790();
  *(v0 + 792) = *(v0 + 80);
  *(v0 + 93) = *(v0 + 88);
  v50 = v41[2];
  v51 = *v41;
  *(v0 + 32) = v41[1];
  *(v0 + 48) = v50;
  *(v0 + 16) = v51;
  sub_25274E544();
  sub_2528BE5B0();
  v52 = *(v49 + 16);
  *(v0 + 800) = v52;
  if (!v52)
  {
    v76 = *(v0 + 640);
    v77 = *(v0 + 568);
    v91 = *(v0 + 560);
    v92 = *(v0 + 608);
    v78 = *(v0 + 552);
    v79 = *(v0 + 488);
    v80 = *(v0 + 496);
    v81 = *(v0 + 480);

    type metadata accessor for HomeAppIntentError(0);
    sub_252756778(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v79 + 8))(v80, v81);
    sub_2527213D8(v76, &qword_27F4FC488, &unk_2528C3F80);
    sub_2527213D8(v78, &qword_27F4FCDB8, &unk_2528C5CC0);
    (*(v77 + 8))(v92, v91);
LABEL_10:

    v35 = *(v0 + 8);

    return v35();
  }

  v53 = *(v0 + 544);
  v54 = *(v0 + 448);
  v55 = *(v0 + 456);
  sub_25272006C(*(v0 + 552), v53, &qword_27F4FCDB8, &unk_2528C5CC0);
  v56 = *(v55 + 48);
  *(v0 + 808) = v56;
  *(v0 + 816) = (v55 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v56(v53, 1, v54) == 1)
  {
    sub_2527213D8(*(v0 + 544), &qword_27F4FCDB8, &unk_2528C5CC0);
    v57 = 0;
    v58 = MEMORY[0x277D84F90];
    *(v0 + 904) = MEMORY[0x277D84F90];
    v59 = *(v0 + 344);
    v94 = v58;
    v60 = *(v0 + 776) + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v61 = *(v59 + 72);
    do
    {
      v62 = *(v0 + 800);
      v63 = *(v0 + 784);
      v64 = *(v0 + 360);
      sub_252756580(v60, v64, type metadata accessor for DeviceEntity);
      ++v57;
      v65 = swift_task_alloc();
      *(v65 + 16) = v64;
      v66 = sub_2527A3118(sub_2527565E8, v65, v63);
      *(v0 + 1064) = 0;

      sub_2527567C0(v64, type metadata accessor for DeviceEntity);
      sub_252735C48(v66);
      v60 += v61;
    }

    while (v57 != v62);
    v67 = *(v0 + 93);
    v68 = *(v0 + 792);
    v69 = *(v0 + 776);
    v70 = *(v0 + 608);
    *(v0 + 912) = v94;
    v71 = swift_task_alloc();
    *(v0 + 920) = v71;
    *(v71 + 16) = v70;
    *(v71 + 24) = v69;
    *(v71 + 32) = v68;
    *(v71 + 40) = v67;
    v72 = swift_task_alloc();
    *(v0 + 928) = v72;
    *v72 = v0;
    v72[1] = sub_252750FE0;
    v73 = *(v0 + 784);
    v74 = *(v0 + 776);
    v75 = *(v0 + 608);

    return sub_2527764BC(v94, v75, v73, v74, &unk_2528C6DF0, v71);
  }

  else
  {
    v82 = *(v0 + 544);
    v83 = *(v0 + 472);
    v84 = *(v0 + 448);
    v85 = *(v0 + 456);
    v86 = *(v85 + 32);
    *(v0 + 824) = v86;
    *(v0 + 832) = (v85 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v86(v83, v82, v84);
    sub_2528BF2F0();
    v87 = swift_task_alloc();
    *(v0 + 840) = v87;
    *v87 = v0;
    v87[1] = sub_2527504A8;

    return MEMORY[0x28216E680]();
  }
}

uint64_t sub_2527504A8(uint64_t a1)
{
  v2 = *(*v1 + 440);
  v3 = *(*v1 + 408);
  v4 = *(*v1 + 400);
  *(*v1 + 848) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_252750608, 0, 0);
}

uint64_t sub_252750608()
{
  if (*(v0 + 848))
  {
    v1 = *(v0 + 776);
    v2 = *(v0 + 472);
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v0 + 856) = sub_2527A2F84(sub_252756820, v3, v1);
    *(v0 + 864) = 0;

    *(v0 + 872) = sub_2528BEFC0();
    sub_2528C0C20();
    *(v0 + 880) = sub_2528C0C10();
    v5 = sub_2528C0BD0();

    return MEMORY[0x2822009F8](sub_2527508F0, v5, v4);
  }

  else
  {
    (*(*(v0 + 456) + 8))(*(v0 + 472), *(v0 + 448));
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    *(v0 + 904) = MEMORY[0x277D84F90];
    v8 = *(v0 + 344);
    v26 = v7;
    v9 = *(v0 + 776) + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      v11 = *(v0 + 800);
      v12 = *(v0 + 784);
      v13 = *(v0 + 360);
      sub_252756580(v9, v13, type metadata accessor for DeviceEntity);
      ++v6;
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      v15 = sub_2527A3118(sub_2527565E8, v14, v12);
      *(v0 + 1064) = 0;

      sub_2527567C0(v13, type metadata accessor for DeviceEntity);
      sub_252735C48(v15);
      v9 += v10;
    }

    while (v6 != v11);
    v16 = *(v0 + 93);
    v17 = *(v0 + 792);
    v18 = *(v0 + 776);
    v19 = *(v0 + 608);
    *(v0 + 912) = v26;
    v20 = swift_task_alloc();
    *(v0 + 920) = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    *(v20 + 32) = v17;
    *(v20 + 40) = v16;
    v21 = swift_task_alloc();
    *(v0 + 928) = v21;
    *v21 = v0;
    v21[1] = sub_252750FE0;
    v22 = *(v0 + 784);
    v23 = *(v0 + 776);
    v24 = *(v0 + 608);

    return sub_2527764BC(v26, v24, v22, v23, &unk_2528C6DF0, v20);
  }
}

uint64_t sub_2527508F0()
{

  *(v0 + 888) = sub_2528BEF70();

  return MEMORY[0x2822009F8](sub_252750964, 0, 0);
}

uint64_t sub_252750964()
{
  v1 = v0[106];
  v3 = v0[48];
  v2 = v0[49];
  v5 = v0[46];
  v4 = v0[47];
  v6 = sub_252743EF0(v0[107]);

  *v2 = v6;
  v2[1] = v1;
  (*(v3 + 104))(v2, *MEMORY[0x277D16508], v4);
  v7 = sub_2528C00B0();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = v1;
  v9 = swift_task_alloc();
  v0[112] = v9;
  *v9 = v0;
  v9[1] = sub_252750ABC;
  v10 = v0[67];
  v11 = v0[49];
  v12 = v0[46];

  return MEMORY[0x282170970](v10, v11, v8, v12);
}

uint64_t sub_252750ABC()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 376);
  v4 = *(*v0 + 368);

  sub_2527213D8(v4, &qword_27F4FC478, &unk_2528C3F70);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_252750C64, 0, 0);
}

uint64_t sub_252750C64()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 448);
  (*(*(v0 + 456) + 56))(v2, 0, 1, v4);
  sub_25272006C(v2, v3, &qword_27F4FCDB8, &unk_2528C5CC0);
  v5 = v1(v3, 1, v4);
  v6 = MEMORY[0x277D84F90];
  if (v5 == 1)
  {
    v7 = *(v0 + 848);
    v8 = *(v0 + 536);
    v9 = *(v0 + 456);
    sub_2527213D8(*(v0 + 528), &qword_27F4FCDB8, &unk_2528C5CC0);

    sub_2527213D8(v8, &qword_27F4FCDB8, &unk_2528C5CC0);
    v10 = *(v0 + 864);
    v11 = MEMORY[0x277D84F90];
    (*(v9 + 8))(*(v0 + 472), *(v0 + 448));
  }

  else
  {
    v10 = *(v0 + 864);
    v12 = *(v0 + 848);
    v13 = *(v0 + 784);
    v14 = *(v0 + 776);
    v15 = *(v0 + 536);
    v17 = *(v0 + 456);
    v16 = *(v0 + 464);
    v18 = *(v0 + 448);
    (*(v0 + 824))(v16, *(v0 + 528), v18);
    v19 = swift_task_alloc();
    *(v19 + 16) = v13;
    v6 = MEMORY[0x277D84F90];
    *(v19 + 24) = v16;
    v11 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25275683C, v19, v14);

    sub_2527213D8(v15, &qword_27F4FCDB8, &unk_2528C5CC0);
    v20 = *(v17 + 8);
    v20(v16, v18);
    v20(*(v0 + 472), *(v0 + 448));
  }

  v21 = 0;
  *(v0 + 904) = v11;
  v22 = *(v0 + 344);
  v40 = v6;
  v23 = *(v0 + 776) + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v24 = *(v22 + 72);
  do
  {
    v25 = *(v0 + 800);
    v26 = *(v0 + 784);
    v27 = *(v0 + 360);
    sub_252756580(v23, v27, type metadata accessor for DeviceEntity);
    ++v21;
    v28 = swift_task_alloc();
    *(v28 + 16) = v27;
    v29 = sub_2527A3118(sub_2527565E8, v28, v26);
    *(v0 + 1064) = v10;

    sub_2527567C0(v27, type metadata accessor for DeviceEntity);
    sub_252735C48(v29);
    v23 += v24;
  }

  while (v21 != v25);
  v30 = *(v0 + 93);
  v31 = *(v0 + 792);
  v32 = *(v0 + 776);
  v33 = *(v0 + 608);
  *(v0 + 912) = v40;
  v34 = swift_task_alloc();
  *(v0 + 920) = v34;
  *(v34 + 16) = v33;
  *(v34 + 24) = v32;
  *(v34 + 32) = v31;
  *(v34 + 40) = v30;
  v35 = swift_task_alloc();
  *(v0 + 928) = v35;
  *v35 = v0;
  v35[1] = sub_252750FE0;
  v36 = *(v0 + 784);
  v37 = *(v0 + 776);
  v38 = *(v0 + 608);

  return sub_2527764BC(v40, v38, v36, v37, &unk_2528C6DF0, v34);
}

uint64_t sub_252750FE0(uint64_t a1)
{
  *(*v1 + 936) = a1;

  return MEMORY[0x2822009F8](sub_25275111C, 0, 0);
}

uint64_t sub_25275111C()
{
  v63 = v0;
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[76];
  v4 = MEMORY[0x277D84F90];
  v5 = sub_25278D334(MEMORY[0x277D84F90]);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;
  v7 = sub_2527F2ADC(v5, sub_252756604, v6, v2);
  v0[118] = v7;

  if (*(v7 + 16))
  {
    v8 = v0[71];
    v9 = v0[70];
    v10 = v0[42];
    v11 = *(v8 + 56);
    v0[119] = v11;
    v0[120] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v10, 1, 1, v9);
    sub_2528BF2F0();
    v0[121] = sub_2528BEFC0();
    v12 = swift_task_alloc();
    v0[122] = v12;
    *v12 = v0;
    v13 = sub_2527517DC;
  }

  else
  {
    v14 = v0[117];
    v15 = v0[113];
    v57 = v0[80];
    v16 = v0[61];
    v17 = v0[62];
    v18 = v0[60];

    sub_252735C2C(v14);
    sub_252735C2C(v15);
    v19 = sub_25280D9C4(v4);
    v60 = v0;
    v0[132] = v19;

    (*(v16 + 8))(v17, v18);
    sub_2527213D8(v57, &qword_27F4FC488, &unk_2528C3F80);
    if (sub_2528C0880())
    {
      v20 = *(v19 + 2);
      if (v20)
      {
        v21 = v19 + 40;
        v22 = 0x27F4FB000;
        do
        {
          v34 = *(v22 + 2880);
          sub_2528BEA50();
          sub_2528BEA50();
          if (v34 != -1)
          {
            swift_once();
          }

          v35 = sub_2528C08B0();
          __swift_project_value_buffer(v35, qword_27F5025C8);
          sub_2528BEA50();
          sub_2528BEA50();
          v36 = sub_2528C0890();
          v37 = sub_2528C0D10();

          if (os_log_type_enabled(v36, v37))
          {
            v23 = v60[44];
            v24 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v62[0] = v58;
            *v24 = 136315394;
            v56 = v37;
            sub_2528BE6B0();
            v25 = DeviceEntity.debugDescription.getter();
            v27 = v26;
            sub_2527567C0(v23, type metadata accessor for DeviceEntity);
            v28 = sub_2527389AC(v25, v27, v62);

            *(v24 + 4) = v28;
            *(v24 + 12) = 2080;
            sub_2528BE6B0();
            v29 = MEMORY[0x2530A81A0](v60[23], &type metadata for AttributeResult);
            v31 = v30;

            v32 = v29;
            v22 = 0x27F4FB000uLL;
            v33 = sub_2527389AC(v32, v31, v62);

            *(v24 + 14) = v33;
            _os_log_impl(&dword_252711000, v36, v56, "GetAttributeValueIntent: %s resulted in %s", v24, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x2530A8D80](v58, -1, -1);
            MEMORY[0x2530A8D80](v24, -1, -1);
          }

          else
          {
          }

          v21 += 16;
          --v20;
        }

        while (v20);
      }
    }

    else
    {
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v38 = sub_2528C08B0();
      __swift_project_value_buffer(v38, qword_27F5025C8);

      v39 = sub_2528C0890();
      v40 = sub_2528C0D10();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = v42;
        v61 = v42;
        *v41 = 136446210;
        v44 = *(v19 + 2);
        v45 = MEMORY[0x277D84F90];
        if (v44)
        {
          v59 = v42;
          v62[0] = MEMORY[0x277D84F90];
          sub_25282F0CC(0, v44, 0);
          v45 = v62[0];
          v46 = v19 + 40;
          do
          {
            sub_2528BEA50();
            sub_2528BEA50();
            sub_2528BE6B0();

            v47 = v60[22];
            v62[0] = v45;
            v49 = *(v45 + 16);
            v48 = *(v45 + 24);
            if (v49 >= v48 >> 1)
            {
              sub_25282F0CC((v48 > 1), v49 + 1, 1);
              v45 = v62[0];
            }

            *(v45 + 16) = v49 + 1;
            *(v45 + 8 * v49 + 32) = v47;
            v46 += 16;
            --v44;
          }

          while (v44);
          v43 = v59;
        }

        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDF8, &qword_2528C5D08);
        v51 = MEMORY[0x2530A81A0](v45, v50);
        v53 = v52;

        v54 = sub_2527389AC(v51, v53, &v61);

        *(v41 + 4) = v54;
        _os_log_impl(&dword_252711000, v39, v40, "GetAttributeValueIntent completed with results: %{public}s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        MEMORY[0x2530A8D80](v43, -1, -1);
        MEMORY[0x2530A8D80](v41, -1, -1);
      }
    }

    sub_2528BEFC0();
    v12 = swift_task_alloc();
    v60[134] = v12;
    *v12 = v60;
    v13 = sub_252752C2C;
  }

  v12[1] = v13;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_2527517DC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 93);
  v5 = *v1;
  v3[123] = a1;

  v6 = swift_task_alloc();
  v3[124] = v6;
  *v6 = v5;
  v6[1] = sub_25275197C;
  v7 = v2[118];
  v8 = v2[99];
  v9 = v2[54];
  v10 = v2[41];

  return MEMORY[0x28216EA10](v10, v9, v7, v8, v4, 0);
}

uint64_t sub_25275197C()
{
  v2 = *v1;
  v2[125] = v0;

  v3 = v2[123];
  if (v0)
  {

    v4 = sub_252752118;
  }

  else
  {
    (*(v2[51] + 8))(v2[54], v2[50]);

    v4 = sub_252751ACC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252751ACC()
{
  v56 = v0;
  sub_2527213D8(v0[42], &qword_27F4FCD98, &qword_2528C6200);
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[42];
  sub_25274AA0C(v0[41], v3, &qword_27F4FCD98, &qword_2528C6200);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_252756620, v4, v2);

  sub_2527213D8(v3, &qword_27F4FCD98, &qword_2528C6200);
  v6 = v0[117];
  v7 = v0[113];
  v50 = v0[80];
  v8 = v0[61];
  v9 = v0[62];
  v10 = v0[60];

  sub_252735C2C(v6);
  sub_252735C2C(v7);
  v11 = sub_25280D9C4(v5);
  v53 = v0;
  v0[132] = v11;

  (*(v8 + 8))(v9, v10);
  sub_2527213D8(v50, &qword_27F4FC488, &unk_2528C3F80);
  if (sub_2528C0880())
  {
    v12 = *(v11 + 2);
    if (v12)
    {
      v13 = v11 + 40;
      v14 = 0x27F4FB000;
      do
      {
        v26 = *(v14 + 2880);
        sub_2528BEA50();
        sub_2528BEA50();
        if (v26 != -1)
        {
          swift_once();
        }

        v27 = sub_2528C08B0();
        __swift_project_value_buffer(v27, qword_27F5025C8);
        sub_2528BEA50();
        sub_2528BEA50();
        v28 = sub_2528C0890();
        v29 = sub_2528C0D10();

        if (os_log_type_enabled(v28, v29))
        {
          v15 = v53[44];
          v16 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v55[0] = v51;
          *v16 = 136315394;
          v49 = v29;
          sub_2528BE6B0();
          v17 = DeviceEntity.debugDescription.getter();
          v19 = v18;
          sub_2527567C0(v15, type metadata accessor for DeviceEntity);
          v20 = sub_2527389AC(v17, v19, v55);

          *(v16 + 4) = v20;
          *(v16 + 12) = 2080;
          sub_2528BE6B0();
          v21 = MEMORY[0x2530A81A0](v53[23], &type metadata for AttributeResult);
          v23 = v22;

          v24 = v21;
          v14 = 0x27F4FB000uLL;
          v25 = sub_2527389AC(v24, v23, v55);

          *(v16 + 14) = v25;
          _os_log_impl(&dword_252711000, v28, v49, "GetAttributeValueIntent: %s resulted in %s", v16, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v51, -1, -1);
          MEMORY[0x2530A8D80](v16, -1, -1);
        }

        else
        {
        }

        v13 += 16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v30 = sub_2528C08B0();
    __swift_project_value_buffer(v30, qword_27F5025C8);

    v31 = sub_2528C0890();
    v32 = sub_2528C0D10();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      v54 = v34;
      *v33 = 136446210;
      v36 = *(v11 + 2);
      v37 = MEMORY[0x277D84F90];
      if (v36)
      {
        v52 = v34;
        v55[0] = MEMORY[0x277D84F90];
        sub_25282F0CC(0, v36, 0);
        v37 = v55[0];
        v38 = v11 + 40;
        do
        {
          sub_2528BEA50();
          sub_2528BEA50();
          sub_2528BE6B0();

          v39 = v53[22];
          v55[0] = v37;
          v41 = *(v37 + 16);
          v40 = *(v37 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_25282F0CC((v40 > 1), v41 + 1, 1);
            v37 = v55[0];
          }

          *(v37 + 16) = v41 + 1;
          *(v37 + 8 * v41 + 32) = v39;
          v38 += 16;
          --v36;
        }

        while (v36);
        v35 = v52;
      }

      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDF8, &qword_2528C5D08);
      v43 = MEMORY[0x2530A81A0](v37, v42);
      v45 = v44;

      v46 = sub_2527389AC(v43, v45, &v54);

      *(v33 + 4) = v46;
      _os_log_impl(&dword_252711000, v31, v32, "GetAttributeValueIntent completed with results: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x2530A8D80](v35, -1, -1);
      MEMORY[0x2530A8D80](v33, -1, -1);
    }
  }

  sub_2528BEFC0();
  v47 = swift_task_alloc();
  v53[134] = v47;
  *v47 = v53;
  v47[1] = sub_252752C2C;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_252752118()
{
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[77];
  v4 = v0[54];
  v5 = v0[50];
  v6 = v0[51];
  v7 = *(v6 + 8);
  v0[126] = v7;
  v0[127] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v5);
  v1(v3, 1, 1, v2);
  v8 = swift_task_alloc();
  v0[128] = v8;
  *v8 = v0;
  v8[1] = sub_252752208;
  v9 = v0[77];

  return MEMORY[0x28216E990](v9);
}

uint64_t sub_252752208(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 1032) = a1;

  v4 = swift_task_alloc();
  *(v3 + 1040) = v4;
  *v4 = v6;
  v4[1] = sub_252752354;

  return sub_25279D1DC(a1);
}

uint64_t sub_252752354(uint64_t a1)
{
  *(*v1 + 1048) = a1;

  return MEMORY[0x2822009F8](sub_252752454, 0, 0);
}

uint64_t sub_252752454()
{
  v76 = v0;
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1008);
  v3 = *(v0 + 616);
  v4 = *(v0 + 424);
  v5 = *(v0 + 400);

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2528BF2F0();
  sub_2528BEE00();
  v2(v4, v5);
  v73 = v0;
  if (*(v1 + 16) && (v6 = sub_252785C40(*(v0 + 280)), (v7 & 1) != 0))
  {
    v8 = *(v0 + 736);
    v67 = *(v0 + 1000);
    v69 = *(v0 + 336);
    v9 = *(v0 + 312);
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    v12 = *(v0 + 280);
    v13 = *(v0 + 256);
    (*(v10 + 16))(v9, *(*(v0 + 1048) + 56) + *(v10 + 72) * v6, v11);
    v8(v12, v13);

    sub_2528BEE70();

    sub_2527213D8(v69, &qword_27F4FCD98, &qword_2528C6200);
    (*(v10 + 8))(v9, v11);
    v14 = 0;
  }

  else
  {
    v15 = *(v0 + 736);
    v16 = *(v0 + 336);
    v17 = *(v0 + 280);
    v18 = *(v0 + 256);

    v15(v17, v18);
    sub_2527213D8(v16, &qword_27F4FCD98, &qword_2528C6200);
    v14 = 1;
  }

  (*(v0 + 952))(*(v0 + 320), v14, 1, *(v0 + 560));
  v19 = *(v0 + 784);
  v20 = *(v0 + 776);
  v21 = *(v0 + 336);
  sub_25274AA0C(*(v0 + 320), v21, &qword_27F4FCD98, &qword_2528C6200);
  v22 = swift_task_alloc();
  *(v22 + 16) = v19;
  *(v22 + 24) = v21;
  v23 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_252756620, v22, v20);

  sub_2527213D8(v21, &qword_27F4FCD98, &qword_2528C6200);
  v24 = *(v0 + 936);
  v25 = *(v0 + 904);
  v70 = *(v0 + 640);
  v26 = *(v0 + 488);
  v27 = *(v0 + 496);
  v28 = *(v0 + 480);

  sub_252735C2C(v24);
  sub_252735C2C(v25);
  v29 = sub_25280D9C4(v23);
  *(v0 + 1056) = v29;

  (*(v26 + 8))(v27, v28);
  sub_2527213D8(v70, &qword_27F4FC488, &unk_2528C3F80);
  if (sub_2528C0880())
  {
    v30 = *(v29 + 2);
    if (v30)
    {
      v31 = v29 + 40;
      v32 = 0x27F4FB000;
      do
      {
        v44 = *(v32 + 2880);
        sub_2528BEA50();
        sub_2528BEA50();
        if (v44 != -1)
        {
          swift_once();
        }

        v45 = sub_2528C08B0();
        __swift_project_value_buffer(v45, qword_27F5025C8);
        sub_2528BEA50();
        sub_2528BEA50();
        v46 = sub_2528C0890();
        v47 = sub_2528C0D10();

        if (os_log_type_enabled(v46, v47))
        {
          v33 = v73[44];
          v34 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v75[0] = v71;
          *v34 = 136315394;
          v68 = v47;
          sub_2528BE6B0();
          v35 = DeviceEntity.debugDescription.getter();
          v37 = v36;
          sub_2527567C0(v33, type metadata accessor for DeviceEntity);
          v38 = sub_2527389AC(v35, v37, v75);

          *(v34 + 4) = v38;
          *(v34 + 12) = 2080;
          sub_2528BE6B0();
          v39 = MEMORY[0x2530A81A0](v73[23], &type metadata for AttributeResult);
          v41 = v40;

          v42 = v39;
          v32 = 0x27F4FB000uLL;
          v43 = sub_2527389AC(v42, v41, v75);

          *(v34 + 14) = v43;
          _os_log_impl(&dword_252711000, v46, v68, "GetAttributeValueIntent: %s resulted in %s", v34, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v71, -1, -1);
          MEMORY[0x2530A8D80](v34, -1, -1);
        }

        else
        {
        }

        v31 += 16;
        --v30;
      }

      while (v30);
    }
  }

  else
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v48 = sub_2528C08B0();
    __swift_project_value_buffer(v48, qword_27F5025C8);

    v49 = sub_2528C0890();
    v50 = sub_2528C0D10();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v52;
      v74 = v52;
      *v51 = 136446210;
      v54 = *(v29 + 2);
      v55 = MEMORY[0x277D84F90];
      if (v54)
      {
        v72 = v52;
        v75[0] = MEMORY[0x277D84F90];
        sub_25282F0CC(0, v54, 0);
        v55 = v75[0];
        v56 = v29 + 40;
        do
        {
          sub_2528BEA50();
          sub_2528BEA50();
          sub_2528BE6B0();

          v57 = v73[22];
          v75[0] = v55;
          v59 = *(v55 + 16);
          v58 = *(v55 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_25282F0CC((v58 > 1), v59 + 1, 1);
            v55 = v75[0];
          }

          *(v55 + 16) = v59 + 1;
          *(v55 + 8 * v59 + 32) = v57;
          v56 += 16;
          --v54;
        }

        while (v54);
        v53 = v72;
      }

      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDF8, &qword_2528C5D08);
      v61 = MEMORY[0x2530A81A0](v55, v60);
      v63 = v62;

      v64 = sub_2527389AC(v61, v63, &v74);

      *(v51 + 4) = v64;
      _os_log_impl(&dword_252711000, v49, v50, "GetAttributeValueIntent completed with results: %{public}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x2530A8D80](v53, -1, -1);
      MEMORY[0x2530A8D80](v51, -1, -1);
    }
  }

  sub_2528BEFC0();
  v65 = swift_task_alloc();
  v73[134] = v65;
  *v65 = v73;
  v65[1] = sub_252752C2C;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_252752C2C(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 1080) = a1;

  v4 = swift_task_alloc();
  *(v3 + 1088) = v4;
  *v4 = v6;
  v4[1] = sub_252752D78;

  return sub_25279D1DC(a1);
}

uint64_t sub_252752D78(uint64_t a1)
{
  *(*v1 + 1096) = a1;

  return MEMORY[0x2822009F8](sub_252752E78, 0, 0);
}

uint64_t sub_252752E78()
{
  v61 = v0;
  v1 = *(v0 + 1096);
  v3 = *(v0 + 408);
  v2 = *(v0 + 416);
  v4 = *(v0 + 400);

  sub_2528BF2F0();
  sub_2528BEE00();
  (*(v3 + 8))(v2, v4);
  if (*(v1 + 16) && (v5 = sub_252785C40(*(v0 + 272)), (v6 & 1) != 0))
  {
    v59 = *(v0 + 752);
    v7 = *(v0 + 736);
    v8 = *(v0 + 584);
    v57 = *(v0 + 560);
    v58 = *(v0 + 592);
    v9 = *(v0 + 296);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    v12 = *(v0 + 272);
    v13 = *(v0 + 256);
    (*(v9 + 16))(v10, *(*(v0 + 1096) + 56) + *(v9 + 72) * v5, v11);
    v7(v12, v13);

    sub_2528BEE70();
    (*(v9 + 8))(v10, v11);
    v59(v58, v8, v57);
  }

  else
  {
    v14 = *(v0 + 736);
    v15 = *(v0 + 720);
    v16 = *(v0 + 608);
    v17 = *(v0 + 592);
    v18 = *(v0 + 560);
    v19 = *(v0 + 272);
    v20 = *(v0 + 256);

    v14(v19, v20);
    v15(v17, v16, v18);
  }

  v21 = *(v0 + 1056);
  sub_2528BE790();
  v22 = *(v0 + 128);
  if (*(v21 + 16))
  {
    sub_2528BEA50();
    sub_2528BEA50();
    sub_2528BE6B0();

    if (*(*(v0 + 136) + 16))
    {
      sub_2528BEA50();
      sub_2528BEA50();

      sub_2528BE6B0();

      v23 = *(v0 + 89);
      goto LABEL_10;
    }
  }

  v23 = 63;
LABEL_10:
  v24 = *(v0 + 1056);
  v25 = *(v0 + 592);
  v26 = *(v0 + 240);
  sub_2528BE790();

  ShowDeviceResultIntent.init()(v26);
  sub_252859458(v24, v25, (v0 + 90));
  sub_2528BE7A0();
  if (v23 != 63)
  {
    *(v0 + 92) = v23;
    sub_2528BE7A0();
  }

  sub_25285A33C(v22, v60);

  v27 = v60[0];
  if (LOBYTE(v60[0]) != 2)
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v28 = sub_2528C08B0();
    __swift_project_value_buffer(v28, qword_27F5025C8);
    v29 = sub_2528C0890();
    v30 = sub_2528C0D10();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v60[0] = v32;
      *v31 = 136315138;
      if (v27)
      {
        v33 = 0xD000000000000010;
      }

      else
      {
        v33 = 6449010;
      }

      if (v27)
      {
        v34 = 0x80000002528E51C0;
      }

      else
      {
        v34 = 0xE300000000000000;
      }

      v35 = sub_2527389AC(v33, v34, v60);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_252711000, v29, v30, "Setting SecondaryAccessoryControlDestinationin in ShowDeviceResultIntent: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x2530A8D80](v32, -1, -1);
      MEMORY[0x2530A8D80](v31, -1, -1);
    }

    *(v0 + 91) = v27 & 1;
    sub_2528BE7A0();
  }

  v36 = _s14HomeAppIntents22ShowDeviceResultIntentV019getSuccessAndFailedE3IDs4fromShySSG07successeL0_AF06failedeL0tSayAA0eF0VG_tFZ_0(*(v0 + 1056));
  v37 = v36;
  v39 = v38;
  v40 = *(v36 + 16);
  if (v40)
  {
    v41 = sub_252865988(*(v36 + 16), 0);
    v42 = sub_252868828(v60, v41 + 4, v40, v37);
    sub_25271A648(v60[0]);
    if (v42 == v40)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  v41 = MEMORY[0x277D84F90];
LABEL_28:
  *(v0 + 152) = v41;
  sub_2528BE7A0();
  v43 = *(v39 + 16);
  if (v43)
  {
    v44 = sub_252865988(*(v39 + 16), 0);
    v45 = sub_252868828(v60, v44 + 4, v43, v39);
    sub_25271A648(v60[0]);
    if (v45 == v43)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  v44 = MEMORY[0x277D84F90];
LABEL_32:
  v46 = *(v0 + 1056);
  v54 = *(v0 + 592);
  v47 = *(v0 + 568);
  v48 = *(v0 + 560);
  v55 = *(v0 + 552);
  v56 = *(v0 + 608);
  v50 = *(v0 + 240);
  v49 = *(v0 + 248);
  *(v0 + 160) = v44;
  sub_2528BE7A0();
  sub_25275663C(v50, v49);
  *(v0 + 168) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD8, &qword_2528C5D00);
  sub_2527566A0();
  sub_252756778(&qword_27F4FCDF0, type metadata accessor for ShowDeviceResultIntent, &protocol conformance descriptor for ShowDeviceResultIntent);
  sub_2528BE650();
  sub_2527567C0(v49, type metadata accessor for ShowDeviceResultIntent);
  v51 = *(v47 + 8);
  v51(v54, v48);
  sub_2527213D8(v55, &qword_27F4FCDB8, &unk_2528C5CC0);
  v51(v56, v48);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_2527536B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[6] = *(type metadata accessor for DeviceEntity(0) - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25275376C, 0, 0);
}

void *sub_25275376C()
{
  v22 = v0;
  result = sub_2528BE790();
  v2 = *(v0 + 16);
  v18 = *(v2 + 16);
  if (v18)
  {
    v3 = 0;
    v15 = *(v0 + 48);
    v17 = v2 + 32;
    v4 = MEMORY[0x277D84FA0];
    v16 = *(v0 + 16);
    while (v3 < *(v2 + 16))
    {
      v8 = *(v17 + v3);
      sub_2528BE790();
      v9 = *(v0 + 24);
      v20 = v4;
      v10 = *(v9 + 16);
      if (v10)
      {
        v19 = v8;
        v11 = v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v12 = *(v15 + 72);
        do
        {
          v13 = *(v0 + 56);
          sub_252756580(v11, v13, type metadata accessor for DeviceEntity);
          sub_2528BE6B0();
          sub_25273A214(v21, *(v0 + 64));
          sub_2527567C0(v13, type metadata accessor for DeviceEntity);
          v11 += v12;
          --v10;
        }

        while (v10);

        v5 = v20;
        v2 = v16;
        v4 = MEMORY[0x277D84FA0];
        v8 = v19;
      }

      else
      {

        v5 = v4;
      }

      ++v3;
      v6 = swift_task_alloc();
      v7 = *(v0 + 32);
      *(v6 + 16) = v8;
      *(v6 + 24) = vextq_s8(v7, v7, 8uLL);
      sub_2527E4D64(sub_252756858, v6, v5);

      if (v3 == v18)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v14 = *(v0 + 8);

    return v14();
  }

  return result;
}

uint64_t sub_252753980(unsigned __int16 *a1, int a2, uint64_t a3, void *a4)
{
  v30 = a2;
  v7 = sub_2528BF400();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v25 - v12;
  v26 = *a1;
  v14 = sub_2528C0C40();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a3, v7);
  v15 = a4[2];
  v16 = a4[3];
  v25[1] = a4[1];
  v25[2] = v15;
  v18 = a4[4];
  v17 = a4[5];
  v27 = v16;
  v28 = v18;
  v29 = v17;
  v19 = (*(v8 + 80) + 35) & ~*(v8 + 80);
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v26;
  *(v21 + 34) = v30;
  (*(v8 + 32))(v21 + v19, v10, v7);
  v22 = (v21 + v20);
  v23 = *(a4 + 1);
  *v22 = *a4;
  v22[1] = v23;
  v22[2] = *(a4 + 2);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2527D3E74(0, 0, v13, &unk_2528C5D18, v21);
}

uint64_t sub_252753BF0(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 248) = a6;
  *(v7 + 256) = a7;
  *(v7 + 89) = a5;
  *(v7 + 90) = a4;
  *(v7 + 240) = a1;
  v8 = sub_2528BEC90();
  *(v7 + 264) = v8;
  *(v7 + 272) = *(v8 - 8);
  *(v7 + 280) = swift_task_alloc();
  v9 = sub_2528BEEC0();
  *(v7 + 288) = v9;
  *(v7 + 296) = *(v9 - 8);
  *(v7 + 304) = swift_task_alloc();
  v10 = sub_2528BF400();
  *(v7 + 312) = v10;
  *(v7 + 320) = *(v10 - 8);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20);
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  v11 = sub_2528BE8B0();
  *(v7 + 360) = v11;
  *(v7 + 368) = *(v11 - 8);
  *(v7 + 376) = swift_task_alloc();
  v12 = sub_2528BECF0();
  *(v7 + 384) = v12;
  *(v7 + 392) = *(v12 - 8);
  *(v7 + 400) = swift_task_alloc();
  v13 = sub_2528BEE30();
  *(v7 + 408) = v13;
  *(v7 + 416) = *(v13 - 8);
  *(v7 + 424) = swift_task_alloc();
  *(v7 + 432) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252753EE4, 0, 0);
}

uint64_t sub_252753EE4(uint64_t a1)
{
  v2 = *(v1 + 432);
  v3 = *(v1 + 408);
  v4 = *(v1 + 416);
  v6 = *(v1 + 368);
  v5 = *(v1 + 376);
  v13 = *(v1 + 360);
  v7 = *(v1 + 256);
  sub_2528BF2F0();
  sub_2528BEE00();
  v8 = *(v4 + 8);
  *(v1 + 440) = v8;
  *(v1 + 448) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v3);
  v9 = *v7;
  v10 = v7[2];
  *(v1 + 192) = v7[1];
  *(v1 + 208) = v10;
  *(v1 + 176) = v9;
  sub_25274E544();
  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v6 + 8))(v5, v13);
  sub_2528BE790();
  *(v1 + 456) = *(v1 + 224);
  *(v1 + 92) = *(v1 + 232);
  sub_2528BEFC0();
  v11 = swift_task_alloc();
  *(v1 + 464) = v11;
  *v11 = v1;
  v11[1] = sub_252754060;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_252754060(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 472) = a1;

  v4 = swift_task_alloc();
  *(v3 + 480) = v4;
  *v4 = v6;
  v4[1] = sub_2527541AC;

  return sub_25279D1DC(a1);
}

uint64_t sub_2527541AC(uint64_t a1)
{
  *(*v1 + 488) = a1;

  return MEMORY[0x2822009F8](sub_2527542AC, 0, 0);
}

uint64_t sub_2527542AC()
{
  v1 = *(v0 + 488);

  if (*(v1 + 16) && (v2 = sub_252785C40(*(v0 + 400)), (v3 & 1) != 0))
  {
    v4 = *(v0 + 344);
    v50 = *(v0 + 352);
    v6 = *(v0 + 328);
    v5 = *(v0 + 336);
    v7 = *(v0 + 312);
    v8 = *(v0 + 320);
    v9 = *(v0 + 296);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    (*(v9 + 16))(v10, *(*(v0 + 488) + 56) + *(v9 + 72) * v2, v11);

    sub_2528BEE70();
    (*(v9 + 8))(v10, v11);
    (*(v8 + 32))(v5, v6, v7);
    sub_25272006C(v50, v4, &qword_27F4FCE00, &qword_2528C5D20);
    v12 = sub_2528BE890();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v4, 1, v12);
    v15 = *(v0 + 344);
    if (v14 == 1)
    {
      sub_2527213D8(*(v0 + 344), &qword_27F4FCE00, &qword_2528C5D20);
      v51 = 0;
    }

    else
    {
      v51 = sub_2528BE880();
      (*(v13 + 8))(v15, v12);
    }

    v21 = v14 == 1;
    v45 = *(v0 + 440);
    v22 = *(v0 + 424);
    v44 = *(v0 + 408);
    v23 = *(v0 + 392);
    v47 = *(v0 + 384);
    v48 = *(v0 + 400);
    v46 = *(v0 + 352);
    v24 = *(v0 + 336);
    v26 = *(v0 + 312);
    v25 = *(v0 + 320);
    v28 = *(v0 + 272);
    v27 = *(v0 + 280);
    v29 = *(v0 + 264);
    v49 = *(v0 + 89);
    v30 = *(v0 + 90);
    *(v0 + 496) = v21;
    sub_2528BEC80();
    sub_2528BEC60();
    v32 = v31;
    (*(v28 + 8))(v27, v29);
    sub_2528BF2F0();
    v33 = sub_2528BEDD0();
    v45(v22, v44);
    (*(v25 + 8))(v24, v26);
    sub_2527213D8(v46, &qword_27F4FCE00, &qword_2528C5D20);
    (*(v23 + 8))(v48, v47);
    v34 = qword_2528C5D28[v49];
    v35 = *(v0 + 456);
    if ((v30 & 0xC000) == 0x4000)
    {
      v36 = HIBYTE(v30) & 0x3F;
    }

    else
    {
      v36 = v30;
    }

    v37 = *(v0 + 240);
    *(v0 + 504) = *(v0 + 92);
    v38 = *(v0 + 496);
    v39 = *(v0 + 504);
    *(v0 + 96) = 0xD000000000000026;
    *(v0 + 104) = 0x80000002528E56C0;
    *(v0 + 112) = v51;
    *(v0 + 120) = v38;
    *(v0 + 128) = v32;
    *(v0 + 136) = v33 & 1;
    *(v0 + 144) = v36 + 1;
    *(v0 + 152) = v34;
    *(v0 + 160) = v35;
    *(v0 + 168) = v39;
    sub_2527569B0();
    sub_2528BFA10();
    v40 = *(v0 + 144);
    *(v0 + 48) = *(v0 + 128);
    *(v0 + 64) = v40;
    *(v0 + 73) = *(v0 + 153);
    v41 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v41;
    sub_252756A04(v0 + 16);
    *v37 = 0;
  }

  else
  {
    v17 = *(v0 + 392);
    v16 = *(v0 + 400);
    v18 = *(v0 + 384);
    v19 = *(v0 + 352);
    v20 = *(v0 + 240);

    sub_2527213D8(v19, &qword_27F4FCE00, &qword_2528C5D20);
    (*(v17 + 8))(v16, v18);
    *v20 = 1;
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_2527546F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB648 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F502888);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527547B8(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_252754864;

  return sub_25274E700(a1);
}

uint64_t sub_252754864()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_252754958@<D0>(_OWORD *a1@<X8>)
{
  sub_2527553B8(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_252754998(uint64_t a1)
{
  v2 = sub_25274E544();

  return MEMORY[0x28210B538](a1, v2);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2527549E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_252754A30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_252754A8C()
{
  v0 = 7104878;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  MEMORY[0x28223BE20](v1);
  sub_2528C0E70();
  MEMORY[0x2530A80B0](0x69746E45656D6F68, 0xEC000000203A7974);
  sub_2528BE790();
  v2 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v2);

  MEMORY[0x2530A80B0](0x203A73656E6F7A20, 0xE800000000000000);
  sub_2528BE790();
  if (v19)
  {
    v3 = type metadata accessor for ZoneEntity(0);
    v4 = MEMORY[0x2530A81C0](v19, v3);
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x2530A80B0](v4, v6);

  MEMORY[0x2530A80B0](0x203A736D6F6F7220, 0xE800000000000000);
  sub_2528BE790();
  if (v19)
  {
    v7 = type metadata accessor for RoomEntity(0);
    v0 = MEMORY[0x2530A81C0](v19, v7);
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  MEMORY[0x2530A80B0](v0, v9);

  MEMORY[0x2530A80B0](0x7365636976656420, 0xEA0000000000203ALL);
  sub_2528BE790();
  v10 = type metadata accessor for DeviceEntity(0);
  v11 = MEMORY[0x2530A81A0](v19, v10);
  v13 = v12;

  MEMORY[0x2530A80B0](v11, v13);

  MEMORY[0x2530A80B0](0xD000000000000011, 0x80000002528E56F0);
  sub_2528BE790();
  v14 = MEMORY[0x2530A81A0](v19, &type metadata for AttributeKind);
  v16 = v15;

  MEMORY[0x2530A80B0](v14, v16);

  MEMORY[0x2530A80B0](0x74756F656D697420, 0xEA0000000000203ALL);
  sub_2528BE790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE10, &unk_2528C6280);
  v17 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v17);

  return 0;
}

uint64_t sub_252754DAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  swift_getKeyPath();
  v3 = sub_2528BE9C0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD78, &qword_2528C5C90);
  v1 = sub_252756318();
  MEMORY[0x2530A60E0](&v4, &v3, v0, &type metadata for ZoneEntityFromNameResolver, v1);

  v3 = v4;
  sub_25275636C();
  sub_2528BEAA0();
}

uint64_t sub_252754E8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  swift_getKeyPath();
  v0 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8);
  swift_getKeyPath();
  v1 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0);
  swift_getKeyPath();
  v2 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28);
  swift_getKeyPath();
  v3 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD50, &qword_2528CF3F0);
  swift_getKeyPath();
  v7 = v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = sub_2528BE9C0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD58, &qword_2528C5C88);
  v5 = sub_252756210();
  MEMORY[0x2530A60E0](v12, &v7, v4, &type metadata for RoomEntityFromNameResolver, v5);

  v7 = v12[0];
  v8 = v12[1];
  v9 = v12[2];
  v10 = v12[3];
  v11 = v12[4];
  sub_252756264();
  sub_2528BEAA0();
}

uint64_t sub_252755084@<X0>(uint64_t a1@<X8>)
{
  v9[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD00, &unk_2528C6A90);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  sub_2527FECD0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD08, &unk_2528C5B90);
  v6 = sub_252755F54();
  MEMORY[0x2530A60E0](&v31, &v45, v5, &type metadata for DeviceEntityFromAccessoryTypeResolver, v6);
  v38[4] = v49;
  v38[5] = v50;
  v38[6] = v51;
  v38[0] = v45;
  v38[1] = v46;
  v38[2] = v47;
  v38[3] = v48;
  sub_252755FA8(v38);
  sub_2527FECD0();
  v7 = sub_252755FFC();
  MEMORY[0x2530A60E0](&v24, &v45, v5, &type metadata for DeviceEntityFromInputTypeResolver, v7);
  v39[4] = v49;
  v39[5] = v50;
  v39[6] = v51;
  v39[0] = v45;
  v39[1] = v46;
  v39[2] = v47;
  v39[3] = v48;
  sub_252756050(v39);
  v40[4] = v35;
  v40[5] = v36;
  v40[6] = v37;
  v40[0] = v31;
  v40[1] = v32;
  v40[2] = v33;
  v40[3] = v34;
  v21 = v35;
  v22 = v36;
  v23 = v37;
  v17 = v31;
  v18 = v32;
  v19 = v33;
  v20 = v34;
  sub_2527560A4(v40, &v45);
  sub_252756100();
  sub_2528BEAA0();
  v41[4] = v21;
  v41[5] = v22;
  v41[6] = v23;
  v41[0] = v17;
  v41[1] = v18;
  v41[2] = v19;
  v41[3] = v20;
  sub_252755FA8(v41);
  v42[4] = v28;
  v42[5] = v29;
  v42[6] = v30;
  v42[0] = v24;
  v42[1] = v25;
  v42[2] = v26;
  v42[3] = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v13 = v27;
  sub_2527561B4(v42, &v45);
  v9[2] = v6;
  v9[3] = &type metadata for DeviceEntityFromAccessoryTypeResolver;
  sub_2528BEA90();
  v43[4] = v14;
  v43[5] = v15;
  v43[6] = v16;
  v43[0] = v10;
  v43[1] = v11;
  v43[3] = v13;
  v43[2] = v12;
  sub_252756050(v43);
  (*(v2 + 8))(v4, v1);
  v44[4] = v28;
  v44[5] = v29;
  v44[6] = v30;
  v44[0] = v24;
  v44[1] = v25;
  v44[3] = v27;
  v44[2] = v26;
  sub_252756050(v44);
  v49 = v35;
  v50 = v36;
  v51 = v37;
  v45 = v31;
  v46 = v32;
  v47 = v33;
  v48 = v34;
  return sub_252755FA8(&v45);
}

uint64_t sub_2527553B8@<X0>(void *a1@<X8>)
{
  v71 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC78, &unk_2528C5B30);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v63 - v1;
  v86 = sub_2528BE950();
  v2 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v74 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v63 - v11;
  v67 = &v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v63 - v14;
  v16 = sub_2528BEC40();
  v80 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC88, &unk_2528C5B40);
  v20 = v19;
  sub_2528BEC20();
  v79 = *(v17 + 56);
  v81 = v17 + 56;
  v79(v15, 1, 1, v16);
  v21 = type metadata accessor for HomeEntity(0);
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = sub_2528BE630();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v85 = v24;
  v25 = v23 + 56;
  v24(v9, 1, 1, v22);
  v26 = v7;
  v24(v7, 1, 1, v22);
  v84 = *MEMORY[0x277CBA308];
  v27 = *(v2 + 104);
  v28 = v74;
  v27(v74);
  v78 = v2 + 104;
  sub_252756778(&qword_27F4FCC90, type metadata accessor for HomeEntity, &protocol conformance descriptor for HomeEntity);
  v73 = v20;
  v82 = v15;
  v72 = v9;
  v29 = v26;
  v63 = v26;
  v67 = sub_2528BE7F0();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC98, &unk_2528C60A0);
  sub_2528BEC20();
  v30 = v15;
  v31 = v79;
  v32 = v80;
  v79(v30, 1, 1, v80);
  v91 = 0;
  v83 = v22;
  v33 = v85;
  v85(v9, 1, 1, v22);
  v33(v29, 1, 1, v22);
  v34 = v28;
  v76 = v27;
  (v27)(v28, v84, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCA0, &unk_2528C5B50);
  v75 = MEMORY[0x277CBA480];
  sub_25272275C(&qword_27F4FCCA8, &qword_27F4FCCA0, &unk_2528C5B50, MEMORY[0x277CBA480]);
  sub_252756778(&qword_27F4FCCB0, type metadata accessor for ZoneEntity, &protocol conformance descriptor for ZoneEntity);
  v35 = v72;
  v36 = v82;
  v37 = v63;
  v66 = sub_2528BE7E0();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCB8, &unk_2528C60B0);
  sub_2528BEC20();
  v31(v36, 1, 1, v32);
  v90 = 0;
  v38 = v83;
  v39 = v85;
  v77 = v25;
  v85(v35, 1, 1, v83);
  v39(v37, 1, 1, v38);
  v40 = v84;
  (v27)(v34, v84, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCC0, &qword_2528C5B60);
  sub_25272275C(&qword_27F4FCCC8, &qword_27F4FCCC0, &qword_2528C5B60, v75);
  sub_252756778(&qword_27F4FCCD0, type metadata accessor for RoomEntity, &protocol conformance descriptor for RoomEntity);
  v41 = v72;
  v42 = v82;
  v43 = v37;
  v65 = sub_2528BE7E0();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCD8, &qword_2528C5B68);
  sub_2528BEC20();
  v79(v42, 1, 1, v80);
  v89 = 0;
  v44 = v41;
  v45 = v41;
  v46 = v83;
  v47 = v85;
  v85(v44, 1, 1, v83);
  v47(v37, 1, 1, v46);
  v76(v34, v40, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCE0, &unk_2528C5B70);
  sub_25272275C(&qword_27F4FCCE8, &qword_27F4FCCE0, &unk_2528C5B70, v75);
  sub_252756778(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  v48 = v82;
  v49 = v45;
  v75 = sub_2528BE7E0();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCF0, &unk_2528C6600);
  sub_2528BEC20();
  v50 = v80;
  v51 = v79;
  v79(v48, 1, 1, v80);
  v87 = 0;
  v52 = v83;
  v53 = v85;
  v85(v49, 1, 1, v83);
  v53(v43, 1, 1, v52);
  v54 = v74;
  v55 = v76;
  v76(v74, v84, v86);
  sub_25272E944();
  v56 = v82;
  v57 = v54;
  v58 = sub_2528BE7D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCF8, &unk_2528C5B80);
  sub_2528BEC20();
  v51(v56, 1, 1, v50);
  v87 = 0;
  v88 = 1;
  v85(v49, 1, 1, v83);
  (*(v69 + 104))(v68, *MEMORY[0x277CB9ED0], v70);
  v55(v57, v84, v86);
  result = sub_2528BE820();
  v60 = v71;
  v61 = v66;
  *v71 = v67;
  v60[1] = v61;
  v62 = v75;
  v60[2] = v65;
  v60[3] = v62;
  v60[4] = v58;
  v60[5] = result;
  return result;
}

unint64_t sub_252755F54()
{
  result = qword_27F4FCD10;
  if (!qword_27F4FCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCD10);
  }

  return result;
}

unint64_t sub_252755FFC()
{
  result = qword_27F4FCD18;
  if (!qword_27F4FCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCD18);
  }

  return result;
}

unint64_t sub_252756100()
{
  result = qword_27F4FCD20;
  if (!qword_27F4FCD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCD08, &unk_2528C5B90);
    sub_252756778(&qword_27F4FCD28, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCD20);
  }

  return result;
}

unint64_t sub_252756210()
{
  result = qword_27F4FCD60;
  if (!qword_27F4FCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCD60);
  }

  return result;
}

unint64_t sub_252756264()
{
  result = qword_27F4FCD68;
  if (!qword_27F4FCD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCD58, &qword_2528C5C88);
    sub_252756778(&qword_27F4FCD70, type metadata accessor for RoomEntity, &protocol conformance descriptor for RoomEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCD68);
  }

  return result;
}

unint64_t sub_252756318()
{
  result = qword_27F4FCD80;
  if (!qword_27F4FCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCD80);
  }

  return result;
}

unint64_t sub_25275636C()
{
  result = qword_27F4FCD88;
  if (!qword_27F4FCD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCD78, &qword_2528C5C90);
    sub_252756778(&qword_27F4FCD90, type metadata accessor for ZoneEntity, &protocol conformance descriptor for ZoneEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCD88);
  }

  return result;
}

uint64_t sub_252756420()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);

  return sub_2527C4B6C();
}

uint64_t sub_25275648C(uint64_t a1)
{
  v4 = *(sub_2528BF400() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25271F3AC;

  return sub_2527536B0(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_252756580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25275663C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowDeviceResultIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2527566A0()
{
  result = qword_27F4FCDE0;
  if (!qword_27F4FCDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCDD8, &qword_2528C5D00);
    sub_252756724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCDE0);
  }

  return result;
}

unint64_t sub_252756724()
{
  result = qword_27F4FCDE8;
  if (!qword_27F4FCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCDE8);
  }

  return result;
}

uint64_t sub_252756778(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2527567C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252756878(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2528BF400() - 8);
  v6 = (*(v5 + 80) + 35) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 34);
  v11 = *(v1 + 32);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2527228B0;

  return sub_252753BF0(a1, v8, v9, v11, v10, v1 + v6, v1 + v7);
}

unint64_t sub_2527569B0()
{
  result = qword_27F4FCE08;
  if (!qword_27F4FCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCE08);
  }

  return result;
}

void sub_252756A58()
{
  v0 = sub_2528C09D0();
  v1 = MGGetSInt32Answer();

  dword_27F5028A0 = v1;
}

unint64_t sub_252756AB0()
{
  result = qword_27F4FCE18;
  if (!qword_27F4FCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCE18);
  }

  return result;
}

unint64_t sub_252756B08()
{
  result = qword_27F4FCE20;
  if (!qword_27F4FCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCE20);
  }

  return result;
}

unint64_t sub_252756BE0()
{
  result = qword_27F4FCE28;
  if (!qword_27F4FCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCE28);
  }

  return result;
}

uint64_t sub_252756C34()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F5028A8);
  __swift_project_value_buffer(v0, qword_27F5028A8);
  return sub_2528BEC20();
}

uint64_t sub_252756D78(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252756E4C, 0, 0);
}

uint64_t sub_252756E4C()
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2528C08B0();
  v3 = __swift_project_value_buffer(v2, qword_27F5025C8);
  v0[8] = v3;
  sub_2527BBAC8(v1, v3);
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v4 = v0[3];
  v5 = sub_2528C0820();
  v6 = __swift_project_value_buffer(v5, qword_27F5025E0);
  v0[9] = v6;
  v0[10] = sub_2528B7B10(v4, v6);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_252756F94;
  v8 = v0[2];

  return sub_252757290(v8);
}

uint64_t sub_252756F94()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_2527571E0;
  }

  else
  {
    v2 = sub_2527570A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2527570A8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v7 = v0[3];
  v6 = v0[4];
  (*(v5 + 16))(v3, v0[2], v6);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v3, v6);
  sub_2527BC844(v7, v1, sub_252756420, v9, v2);

  sub_2527BDFD0(v7, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2527571E0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 24);
  sub_2527BE9EC(v3, *(v0 + 80), v1, *(v0 + 72));
  sub_2527C01D8(v3, v1, v2);
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252757290(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = type metadata accessor for HomeEntity(0);
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = type metadata accessor for ShowDeviceResultIntent(0);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = sub_2528BE8B0();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v2[45] = swift_task_alloc();
  v5 = sub_2528BECF0();
  v2[46] = v5;
  v2[47] = *(v5 - 8);
  v2[48] = swift_task_alloc();
  v6 = type metadata accessor for DeviceEntity(0);
  v2[49] = v6;
  v2[50] = *(v6 - 8);
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE40, &qword_2528C61C0);
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  v2[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0);
  v2[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB0, &qword_2528D2DB0);
  v2[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v7 = sub_2528BF400();
  v2[63] = v7;
  v8 = *(v7 - 8);
  v2[64] = v8;
  v2[65] = *(v8 + 64);
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v2[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252757760, 0, 0);
}

uint64_t sub_252757760()
{
  v0[75] = *(v0[34] + 8);
  sub_2528BE790();
  v1 = *(v0[32] + 16);

  if (v1)
  {
    v2 = v0[70];
    v0[76] = *(v0[34] + 16);
    sub_2528BE790();
    sub_2528BE790();
    v3 = v0[31];
    v0[77] = v3;
    v4 = sub_2528C05D0();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    v5 = swift_task_alloc();
    v0[78] = v5;
    *v5 = v0;
    v5[1] = sub_252757AD0;
    v6 = v0[74];
    v7 = v0[70];

    return sub_25277ECE4(v6, v3, 0, v7);
  }

  else
  {
    type metadata accessor for HomeAppIntentError(0);
    sub_2527605EC(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_252757AD0(uint64_t a1)
{
  v2 = *(*v1 + 592);
  v3 = *(*v1 + 560);
  *(*v1 + 632) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_252757C50, 0, 0);
}

uint64_t sub_252757C50()
{
  v1 = v0[58];
  sub_2527D38F8(v0[79], v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[59];
    sub_2527213D8(v0[58], &qword_27F4FCDA8, &unk_2528C5CB0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
LABEL_4:
    v17 = v0[72];
    v18 = v0[35];
    v19 = v0[36];
    sub_2527213D8(v0[59], &qword_27F4FCDB0, &qword_2528D2DB0);
    type metadata accessor for HomeAppIntentError(0);
    sub_2527605EC(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    v21 = v20;
    sub_2528BE790();
    v22 = *(v19 + 48);
    v23 = 1;
    if (!v22(v17, 1, v18))
    {
      (*(v0[47] + 16))(v21, v0[72], v0[46]);
      v23 = 0;
    }

    v24 = v0[71];
    v26 = v0[46];
    v25 = v0[47];
    v27 = v0[35];
    sub_2527213D8(v0[72], &qword_27F4FC488, &unk_2528C3F80);
    (*(v25 + 56))(v21, v23, 1, v26);
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48);
    sub_2528BE790();
    v29 = v22(v24, 1, v27);
    v30 = v0[71];
    if (v29)
    {
      sub_2527213D8(v30, &qword_27F4FC488, &unk_2528C3F80);
      v31 = 0;
      v32 = 0;
    }

    else
    {
      v33 = v0[37];
      v34 = v0[71];
      sub_2527606B0(v30, v33, type metadata accessor for HomeEntity);
      sub_2527213D8(v34, &qword_27F4FC488, &unk_2528C3F80);
      sub_2528BE6B0();
      v31 = v0[10];
      v32 = v0[11];
      sub_252760650(v33, type metadata accessor for HomeEntity);
    }

    v35 = (v21 + v28);
    *v35 = v31;
    v35[1] = v32;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v36 = v0[1];

    return v36();
  }

  v5 = v0[63];
  v6 = v0[64];
  v7 = v0[58];
  v8 = v0[59];
  v9 = v0[46];
  v10 = v0[47];
  v11 = v7 + *(v2 + 48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
  v13 = *(v12 + 48);
  v14 = *(v6 + 16);
  v0[80] = v14;
  v0[81] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v58 = v14;
  v14(v8, v11, v5);
  v15 = type metadata accessor for HomeEntity.SnapshotPair(0);
  sub_25272006C(v11 + *(v15 + 20), v8 + v13, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_252760650(v11, type metadata accessor for HomeEntity.SnapshotPair);
  v16 = *(v12 - 8);
  (*(v16 + 56))(v8, 0, 1, v12);
  (*(v10 + 8))(v7, v9);
  if ((*(v16 + 48))(v8, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  v38 = v0[69];
  v39 = v0[68];
  v56 = v0[67];
  v41 = v0[63];
  v40 = v0[64];
  v42 = v0[62];
  v55 = v0[61];
  v43 = v0[59];
  v57 = v0[57];
  v44 = v0[34];
  v45 = *(v12 + 48);
  v46 = *(v40 + 32);
  v46(v38, v43, v41);
  sub_25274AA0C(v43 + v45, v42, &qword_27F4FCDB8, &unk_2528C5CC0);
  v58(v39, v38, v41);
  sub_25272006C(v42, v55, &qword_27F4FCDB8, &unk_2528C5CC0);
  v47 = sub_2528C0C40();
  (*(*(v47 - 8) + 56))(v57, 1, 1, v47);
  v0[82] = *v44;
  v0[83] = *(v44 + 3);
  v0[84] = *(v44 + 4);
  v0[85] = *(v44 + 5);
  v58(v56, v39, v41);
  v48 = (*(v40 + 80) + 80) & ~*(v40 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  v50 = *v44;
  v51 = v44[2];
  *(v49 + 48) = v44[1];
  *(v49 + 64) = v51;
  *(v49 + 32) = v50;
  v46(v49 + v48, v56, v41);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2527D3B74(0, 0, v57, &unk_2528C61D0, v49);

  v52 = swift_task_alloc();
  v0[86] = v52;
  *v52 = v0;
  v52[1] = sub_2527584A4;
  v53 = v0[68];
  v54 = v0[61];

  return sub_25275A520(v53, v54);
}

uint64_t sub_2527584A4()
{
  *(*v1 + 696) = v0;

  if (v0)
  {
    v2 = sub_25275A0A0;
  }

  else
  {
    v2 = sub_2527585B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2527585B8()
{
  v98 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 488);
  sub_2528BE790();
  v3 = *(v0 + 240);
  sub_2528BE790();
  v4 = sub_2527E50C0(v3, *(v0 + 176), v1, v2);
  *(v0 + 704) = v4;

  v87 = v4;
  if (sub_2528C0880())
  {
    v84 = v4 + 64;
    v88 = *(v0 + 400);
    v5 = -1;
    v6 = -1 << *(v4 + 32);
    if (-v6 < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & *(v4 + 64);
    v82 = (63 - v6) >> 6;

    v8 = 0;
    if (v7)
    {
      while (1)
      {
        v9 = v8;
LABEL_13:
        v12 = *(v0 + 432);
        v13 = *(v0 + 440);
        v14 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v15 = v14 | (v9 << 6);
        sub_2527606B0(*(v4 + 48) + *(v88 + 72) * v15, v12, type metadata accessor for DeviceEntity);
        v16 = *(*(v4 + 56) + 8 * v15);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
        v18 = *(v17 + 48);
        sub_252760718(v12, v13, type metadata accessor for DeviceEntity);
        *(v13 + v18) = v16;
        (*(*(v17 - 8) + 56))(v13, 0, 1, v17);

LABEL_14:
        v19 = *(v0 + 448);
        sub_25274AA0C(*(v0 + 440), v19, &qword_27F4FCE40, &qword_2528C61C0);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
        if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
        {
          break;
        }

        v21 = *(v0 + 448);
        v22 = *(v21 + *(v20 + 48));
        sub_252760718(v21, *(v0 + 424), type metadata accessor for DeviceEntity);
        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v23 = *(v0 + 416);
        v24 = *(v0 + 424);
        v25 = sub_2528C08B0();
        __swift_project_value_buffer(v25, qword_27F5025C8);
        sub_2527606B0(v24, v23, type metadata accessor for DeviceEntity);

        v26 = sub_2528C0890();
        v27 = sub_2528C0D10();

        v28 = os_log_type_enabled(v26, v27);
        v29 = *(v0 + 416);
        v93 = *(v0 + 424);
        if (v28)
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v96 = v31;
          *v30 = 136315394;
          v91 = v9;
          v32 = DeviceEntity.debugDescription.getter();
          v34 = v33;
          sub_252760650(v29, type metadata accessor for DeviceEntity);
          v35 = sub_2527389AC(v32, v34, &v96);
          v4 = v87;

          *(v30 + 4) = v35;
          *(v30 + 12) = 2080;
          v36 = MEMORY[0x2530A81A0](v22, &type metadata for Attribute);
          v38 = v37;

          v39 = sub_2527389AC(v36, v38, &v96);

          *(v30 + 14) = v39;
          _os_log_impl(&dword_252711000, v26, v27, "SetAttributeValueIntent: %s will be set attributes %s", v30, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v31, -1, -1);
          MEMORY[0x2530A8D80](v30, -1, -1);

          sub_252760650(v93, type metadata accessor for DeviceEntity);
          v8 = v91;
        }

        else
        {

          sub_252760650(v29, type metadata accessor for DeviceEntity);
          sub_252760650(v93, type metadata accessor for DeviceEntity);
          v8 = v9;
        }

        if (!v7)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_37;
    }

LABEL_6:
    if (v82 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v82;
    }

    v11 = v10 - 1;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v82)
      {
        v40 = *(v0 + 440);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
        (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
        v7 = 0;
        v9 = v11;
        goto LABEL_14;
      }

      v7 = *(v84 + 8 * v9);
      ++v8;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else if (qword_27F4FBB40 == -1)
  {
    goto LABEL_24;
  }

  swift_once();
LABEL_24:
  v42 = sub_2528C08B0();
  __swift_project_value_buffer(v42, qword_27F5025C8);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v43 = sub_2528C0890();
  v44 = sub_2528C0D10();

  if (!os_log_type_enabled(v43, v44))
  {
LABEL_36:

    v4 = v87;
LABEL_37:
    v73 = *(v0 + 272);
    sub_2528BE790();
    sub_2528BE790();
    v74 = *(v0 + 128);
    v75 = *(v0 + 136);
    v77 = v73[1];
    v76 = v73[2];
    *(v0 + 16) = *v73;
    *(v0 + 32) = v77;
    *(v0 + 48) = v76;
    sub_252756BE0();
    sub_2528BE5B0();
    v78 = swift_task_alloc();
    *(v0 + 712) = v78;
    *v78 = v0;
    v78[1] = sub_2527590D4;
    v79 = *(v0 + 584);
    v80 = *(v0 + 544);
    v81 = *(v0 + 488);

    return sub_252791C80(v4, v79, v74, v75, v80, v81);
  }

  v89 = v44;
  v45 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v94 = v46;
  *v45 = 136446466;
  sub_2528BE790();
  v47 = MEMORY[0x2530A81A0](*(v0 + 224), &type metadata for Attribute);
  v49 = v48;

  v50 = sub_2527389AC(v47, v49, &v94);

  *(v45 + 4) = v50;
  *(v45 + 12) = 2082;
  sub_2528BE790();
  v51 = *(v0 + 232);
  v52 = *(v51 + 16);
  if (!v52)
  {

    v55 = MEMORY[0x277D84F90];
LABEL_35:
    v69 = MEMORY[0x2530A81A0](v55, *(v0 + 368));
    v71 = v70;

    v72 = sub_2527389AC(v69, v71, &v94);

    *(v45 + 14) = v72;
    _os_log_impl(&dword_252711000, v43, v89, "SetAttributeValueIntent: will be set attributes %{public}s on devices %{public}s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v46, -1, -1);
    MEMORY[0x2530A8D80](v45, -1, -1);
    goto LABEL_36;
  }

  v83 = v46;
  v85 = v45;
  v86 = v43;
  v53 = *(v0 + 400);
  v54 = *(v0 + 376);
  v95 = MEMORY[0x277D84F90];
  sub_25282EFDC(0, v52, 0);
  v55 = v95;
  v56 = v51 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
  v90 = *(v53 + 72);
  v92 = v54;
  v57 = (v54 + 48);
  v58 = (v54 + 32);
  while (1)
  {
    v60 = *(v0 + 360);
    v59 = *(v0 + 368);
    sub_2527606B0(v56, *(v0 + 408), type metadata accessor for DeviceEntity);
    sub_2528BE6B0();
    sub_2528BECA0();

    if ((*v57)(v60, 1, v59) == 1)
    {
      break;
    }

    v61 = *(v0 + 408);
    v62 = *v58;
    (*v58)(*(v0 + 384), *(v0 + 360), *(v0 + 368));
    sub_252760650(v61, type metadata accessor for DeviceEntity);
    v95 = v55;
    v64 = *(v55 + 16);
    v63 = *(v55 + 24);
    if (v64 >= v63 >> 1)
    {
      sub_25282EFDC((v63 > 1), v64 + 1, 1);
      v55 = v95;
    }

    v65 = *(v0 + 384);
    v66 = *(v0 + 368);
    *(v55 + 16) = v64 + 1;
    v62(v55 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v64, v65, v66);
    v56 += v90;
    if (!--v52)
    {

      v45 = v85;
      v43 = v86;
      v46 = v83;
      goto LABEL_35;
    }
  }

  sub_2527213D8(*(v0 + 360), &qword_27F4FC628, &qword_2528C4750);
  v96 = 0;
  v97 = 0xE000000000000000;
  sub_2528C0E70();
  v67 = v97;
  *(v0 + 64) = v96;
  *(v0 + 72) = v67;
  MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
  sub_2528C0ED0();
  MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
  sub_2528BE6B0();
  MEMORY[0x2530A80B0](*(v0 + 112), *(v0 + 120));

  MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
  return sub_2528C0EE0();
}

uint64_t sub_2527590D4(uint64_t a1)
{
  v3 = *v2;
  v3[90] = a1;
  v3[91] = v1;

  if (v1)
  {
    v4 = v3[73];
    v6 = v3[43];
    v5 = v3[44];
    v7 = v3[42];

    (*(v6 + 8))(v5, v7);
    sub_2527213D8(v4, &qword_27F4FC488, &unk_2528C3F80);
    v8 = sub_25275A2E0;
  }

  else
  {
    v9 = v3[73];
    v11 = v3[43];
    v10 = v3[44];
    v12 = v3[42];

    (*(v11 + 8))(v10, v12);
    sub_2527213D8(v9, &qword_27F4FC488, &unk_2528C3F80);
    v8 = sub_25275927C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

void *sub_25275927C(uint64_t a1)
{
  v115 = v1;
  v110 = v1;
  if (sub_2528C0880())
  {
    v2 = *(v1 + 720);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v2 + 40;
      do
      {
        v15 = qword_27F4FBB40;
        sub_2528BEA50();
        sub_2528BEA50();
        if (v15 != -1)
        {
          swift_once();
        }

        v16 = sub_2528C08B0();
        __swift_project_value_buffer(v16, qword_27F5025C8);
        sub_2528BEA50();
        sub_2528BEA50();
        v17 = sub_2528C0890();
        v18 = sub_2528C0D10();

        if (os_log_type_enabled(v17, v18))
        {
          v5 = *(v110 + 432);
          v6 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *&v112[0] = v108;
          *v6 = 136315394;
          v106 = v18;
          sub_2528BE6B0();
          v7 = DeviceEntity.debugDescription.getter();
          v9 = v8;
          sub_252760650(v5, type metadata accessor for DeviceEntity);
          v10 = sub_2527389AC(v7, v9, v112);

          *(v6 + 4) = v10;
          *(v6 + 12) = 2080;
          sub_2528BE6B0();
          v11 = MEMORY[0x2530A81C0](*(v110 + 216), &type metadata for AttributeResult);
          v13 = v12;

          v14 = sub_2527389AC(v11, v13, v112);

          *(v6 + 14) = v14;
          _os_log_impl(&dword_252711000, v17, v106, "SetAttributeValueIntent: %s resulted in %s", v6, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v108, -1, -1);
          MEMORY[0x2530A8D80](v6, -1, -1);
        }

        else
        {
        }

        v4 += 16;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v19 = sub_2528C08B0();
    __swift_project_value_buffer(v19, qword_27F5025C8);

    v20 = sub_2528C0890();
    v21 = sub_2528C0D10();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v1 + 720);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      v114[0] = v24;
      *v23 = 136446210;
      v26 = *(v22 + 16);
      v27 = MEMORY[0x277D84F90];
      if (v26)
      {
        v109 = v24;
        v28 = *(v1 + 720);
        *&v112[0] = MEMORY[0x277D84F90];
        sub_25282F0CC(0, v26, 0);
        v27 = *&v112[0];
        v29 = v28 + 40;
        do
        {
          sub_2528BEA50();
          sub_2528BEA50();
          sub_2528BE6B0();

          v30 = *(v110 + 208);
          *&v112[0] = v27;
          v32 = *(v27 + 16);
          v31 = *(v27 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_25282F0CC((v31 > 1), v32 + 1, 1);
            v27 = *&v112[0];
          }

          *(v27 + 16) = v32 + 1;
          *(v27 + 8 * v32 + 32) = v30;
          v29 += 16;
          --v26;
        }

        while (v26);
        v25 = v109;
      }

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDF8, &qword_2528C5D08);
      v34 = MEMORY[0x2530A81C0](v27, v33);
      v36 = v35;

      v37 = sub_2527389AC(v34, v36, v114);

      *(v23 + 4) = v37;
      _os_log_impl(&dword_252711000, v20, v21, "SetAttributeValueIntent completed with results: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x2530A8D80](v25, -1, -1);
      MEMORY[0x2530A8D80](v23, -1, -1);
    }
  }

  v39 = *(v110 + 480);
  v38 = *(v110 + 488);
  (*(v110 + 640))(*(v110 + 528), *(v110 + 544), *(v110 + 504));
  sub_25272006C(v38, v39, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_2528BE790();
  v40 = *(v110 + 152);
  v41 = *(v40 + 16);
  if (v41)
  {
    v114[0] = MEMORY[0x277D84F90];
    sub_25282F064(0, v41, 0);
    v42 = v114[0];
    v43 = (v40 + 64);
    do
    {
      v44 = *v43;
      v45 = *(v43 - 1);
      v112[0] = *(v43 - 2);
      v112[1] = v45;
      v113 = v44;
      sub_252870158(&v111);
      v46 = v111;
      v114[0] = v42;
      v48 = *(v42 + 16);
      v47 = *(v42 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_25282F064((v47 > 1), v48 + 1, 1);
        v42 = v114[0];
      }

      *(v42 + 16) = v48 + 1;
      *(v42 + v48 + 32) = v46;
      v43 += 40;
      --v41;
    }

    while (v41);
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
  }

  v49 = *(v110 + 720);
  v50 = *(v110 + 528);
  v51 = *(v110 + 480);
  v52 = *(v110 + 320);
  sub_2528BE790();
  v53 = *(v110 + 160);
  ShowDeviceResultIntent.init()(v52);
  sub_252859C3C(v49, v50, v51, v112);
  *(v110 + 137) = v112[0];
  sub_2528BE7A0();
  sub_2528BE790();
  v54 = *(v110 + 138);
  if (v54 == 4 || (sub_252852964(v54, 1u) & 1) == 0)
  {
  }

  else
  {
    v55 = *(v110 + 720);
    v56 = *(v110 + 528);
    v57 = swift_task_alloc();
    *(v57 + 16) = v56;
    *(v57 + 24) = v53;
    v58 = sub_252853180(sub_252760634, v57, v55);

    *(v110 + 192) = v58;
    sub_2528BE7A0();
    *(v110 + 200) = v55;

    sub_2528BE7A0();
  }

  sub_25285A33C(v42, v112);

  v59 = v112[0];
  if (LOBYTE(v112[0]) != 2)
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v60 = sub_2528C08B0();
    __swift_project_value_buffer(v60, qword_27F5025C8);
    v61 = sub_2528C0890();
    v62 = sub_2528C0D10();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v112[0] = v64;
      *v63 = 136315138;
      if (v59)
      {
        v65 = 0xD000000000000010;
      }

      else
      {
        v65 = 6449010;
      }

      if (v59)
      {
        v66 = 0x80000002528E51C0;
      }

      else
      {
        v66 = 0xE300000000000000;
      }

      v67 = sub_2527389AC(v65, v66, v112);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_252711000, v61, v62, "Setting SecondaryAccessoryControlDestinationin in ShowDeviceResultIntent: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
      MEMORY[0x2530A8D80](v64, -1, -1);
      MEMORY[0x2530A8D80](v63, -1, -1);
    }

    *(v110 + 140) = v59 & 1;
    sub_2528BE7A0();
  }

  v68 = _s14HomeAppIntents22ShowDeviceResultIntentV019getSuccessAndFailedE3IDs4fromShySSG07successeL0_AF06failedeL0tSayAA0eF0VG_tFZ_0(*(v110 + 720));
  v69 = v68;
  v71 = v70;
  v72 = *(v68 + 16);
  if (v72)
  {
    v73 = sub_252865988(*(v68 + 16), 0);
    v74 = sub_252868828(v112, v73 + 4, v72, v69);
    sub_25271A648(*&v112[0]);
    if (v74 == v72)
    {
      goto LABEL_48;
    }

    __break(1u);
  }

  v73 = MEMORY[0x277D84F90];
LABEL_48:
  *(v110 + 168) = v73;
  sub_2528BE7A0();
  v75 = *(v71 + 16);
  if (v75)
  {
    v76 = sub_252865988(*(v71 + 16), 0);
    v77 = sub_252868828(v112, v76 + 4, v75, v71);
    sub_25271A648(*&v112[0]);
    if (v77 == v75)
    {
      goto LABEL_52;
    }

    __break(1u);
  }

  v76 = MEMORY[0x277D84F90];
LABEL_52:
  v78 = *(v110 + 528);
  v79 = *(v110 + 504);
  v80 = *(v110 + 512);
  v81 = *(v110 + 480);
  v83 = *(v110 + 320);
  v82 = *(v110 + 328);
  *(v110 + 144) = v76;
  sub_2528BE7A0();
  sub_2527213D8(v81, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_252760718(v83, v82, type metadata accessor for ShowDeviceResultIntent);
  v84 = *(v80 + 8);
  v84(v78, v79);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v85 = *(v110 + 328);
  v86 = *(v110 + 312);
  v87 = sub_2528C08B0();
  __swift_project_value_buffer(v87, qword_27F5025C8);
  sub_2527606B0(v85, v86, type metadata accessor for ShowDeviceResultIntent);
  v88 = sub_2528C0890();
  v89 = sub_2528C0D10();
  v90 = os_log_type_enabled(v88, v89);
  v91 = *(v110 + 312);
  v107 = v84;
  if (v90)
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *&v112[0] = v93;
    *v92 = 136315138;
    result = sub_2528BE790();
    v95 = *(v110 + 139);
    if (v95 <= 1)
    {
      if (*(v110 + 139))
      {
        v97 = 0x6B6E694C70656564;
      }

      else
      {
        v97 = 0x726577736E61;
      }

      if (*(v110 + 139))
      {
        v96 = 0xE800000000000000;
      }

      else
      {
        v96 = 0xE600000000000000;
      }
    }

    else if (v95 == 2)
    {
      v96 = 0xE600000000000000;
      v97 = 0x656369746F6ELL;
    }

    else
    {
      if (v95 != 3)
      {
        __break(1u);
        return result;
      }

      v96 = 0xE600000000000000;
      v97 = 0x686372616573;
    }

    sub_252760650(*(v110 + 312), type metadata accessor for ShowDeviceResultIntent);
    v98 = sub_2527389AC(v97, v96, v112);

    *(v92 + 4) = v98;
    _os_log_impl(&dword_252711000, v88, v89, "SetAttributeValueIntent returning ShowDeviceResultIntent for %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v93);
    MEMORY[0x2530A8D80](v93, -1, -1);
    MEMORY[0x2530A8D80](v92, -1, -1);
  }

  else
  {

    sub_252760650(v91, type metadata accessor for ShowDeviceResultIntent);
  }

  v99 = *(v110 + 552);
  v100 = *(v110 + 504);
  v104 = *(v110 + 544);
  v105 = *(v110 + 496);
  v101 = *(v110 + 488);
  v102 = *(v110 + 328);
  *(v110 + 184) = *(v110 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD8, &qword_2528C5D00);
  sub_2527566A0();
  sub_2527605EC(&qword_27F4FCDF0, type metadata accessor for ShowDeviceResultIntent, &protocol conformance descriptor for ShowDeviceResultIntent);
  sub_2528BE650();
  sub_252760650(v102, type metadata accessor for ShowDeviceResultIntent);
  sub_2527213D8(v101, &qword_27F4FCDB8, &unk_2528C5CC0);
  v107(v104, v100);
  sub_2527213D8(v105, &qword_27F4FCDB8, &unk_2528C5CC0);
  v107(v99, v100);

  v103 = *(v110 + 8);

  return v103();
}