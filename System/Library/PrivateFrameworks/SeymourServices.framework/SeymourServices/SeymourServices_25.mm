uint64_t sub_2270FF018(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227668EF0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA9C8, &qword_2276790F0);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_28139B2A0, MEMORY[0x277D53920], MEMORY[0x277D53928]);
      result = sub_22766BF50();
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

uint64_t sub_2270FF334(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA830, &qword_227678FB0);
  result = sub_22766CDC0();
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
      sub_22766D370();
      MEMORY[0x22AA996B0](v16);
      result = sub_22766D3F0();
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

uint64_t sub_2270FF554(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA968, &qword_2276790B8);
  result = sub_22766CDC0();
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
      sub_22766D370();

      sub_2276673B0();
      result = sub_22766D3F0();
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

uint64_t sub_2270FF78C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227667440();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA668, &qword_227678EA8);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_2813A5610, MEMORY[0x277D52D18], MEMORY[0x277D52D20]);
      result = sub_22766BF50();
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

uint64_t sub_2270FFAA8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227667C80();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA960, &qword_2276790B0);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_27D7B8908, MEMORY[0x277D53250], MEMORY[0x277D53258]);
      result = sub_22766BF50();
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

uint64_t sub_2270FFDC4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227665CA0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA728, &qword_227678F08);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_2813A56D8, MEMORY[0x277D51CF0], MEMORY[0x277D51CF8]);
      result = sub_22766BF50();
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

uint64_t sub_2271000E0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227667CD0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA718, &qword_227678F00);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_27D7B8728, MEMORY[0x277D53288], MEMORY[0x277D53290]);
      result = sub_22766BF50();
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

uint64_t sub_2271003FC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227668260();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA978, &qword_2276790C0);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_27D7B8918, MEMORY[0x277D53428], MEMORY[0x277D53430]);
      result = sub_22766BF50();
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

uint64_t sub_227100718(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2276627D0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A58, &qword_2276716E0);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_28139BDA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22766BF50();
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

uint64_t sub_227100A34(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227666F20();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA758, &qword_227678F20);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&unk_2813A5640, MEMORY[0x277D52A80], MEMORY[0x277D52A88]);
      result = sub_22766BF50();
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

uint64_t sub_227100D50(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227667170();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA748, &qword_227678F18);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_2813A5628, MEMORY[0x277D52C10], MEMORY[0x277D52C18]);
      result = sub_22766BF50();
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

uint64_t sub_22710106C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2276675F0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA6E8, &qword_227678EF0);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&unk_2813A55F0, MEMORY[0x277D52EC0], MEMORY[0x277D52EC8]);
      result = sub_22766BF50();
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

uint64_t sub_227101388(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227668240();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA9D8, &qword_2276790F8);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_27D7B8950, MEMORY[0x277D533E0], MEMORY[0x277D533E8]);
      result = sub_22766BF50();
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

uint64_t sub_2271016A4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227662BD0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA9F8, &qword_227679110);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_27D7B8968, MEMORY[0x277D494A8], MEMORY[0x277D494B0]);
      result = sub_22766BF50();
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

uint64_t sub_2271019C0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22766CDC0();
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
      sub_22766D370();
      a4(v19);
      sub_22766C100();

      result = sub_22766D3F0();
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

uint64_t sub_227101C00(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227669360();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA768, &qword_22767E100);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_2813A5500, MEMORY[0x277D53BA0], MEMORY[0x277D53BA8]);
      result = sub_22766BF50();
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

uint64_t sub_227101F1C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  v6 = v5;
  v7 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22766CDC0();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v7;
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
    v16 = result + 56;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = *(v7 + 48) + 24 * (v19 | (v10 << 6));
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      sub_22766D370();
      a4(v23, v24, v25);
      a5(v36, v23, v24, v25);
      result = sub_22766D3F0();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 24 * v17;
      *v18 = v23;
      *(v18 + 8) = v24;
      *(v18 + 16) = v25;
      ++*(v9 + 16);
      v7 = v33;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v6 = v5;
        goto LABEL_26;
      }

      v21 = *(v11 + 8 * v10);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
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
    *v6 = v9;
  }

  return result;
}

uint64_t sub_227102180(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227669480();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8B18, &qword_227671788);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&unk_2813A54E0, MEMORY[0x277D53C88], MEMORY[0x277D53C90]);
      result = sub_22766BF50();
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

uint64_t sub_22710249C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227666710();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA6F8, &qword_227678EF8);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_2813A5690, MEMORY[0x277D52578], MEMORY[0x277D52580]);
      result = sub_22766BF50();
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

uint64_t sub_2271027B8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2276658B0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAA60, &qword_227679150);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_27D7B8988, MEMORY[0x277D519E0], MEMORY[0x277D519E8]);
      result = sub_22766BF50();
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

uint64_t sub_227102AD4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227665A20();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA790, &qword_227678F38);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&unk_28139B780, MEMORY[0x277D51AF0], MEMORY[0x277D51AF8]);
      result = sub_22766BF50();
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

uint64_t sub_227102DF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22766CDC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
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
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_22766CB20();
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
      *(*(v7 + 48) + 8 * v14) = v18;
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

        v4 = v26;
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

uint64_t sub_227102FFC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2276630F0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA688, &qword_227678EB8);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_27D7B8708, MEMORY[0x277D4FC48], MEMORY[0x277D4FC50]);
      result = sub_22766BF50();
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

uint64_t sub_227103318(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227667DE0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA6D8, &qword_227678EE8);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_27D7B8720, MEMORY[0x277D53330], MEMORY[0x277D53338]);
      result = sub_22766BF50();
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

uint64_t sub_227103634(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227666600();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA6C8, &qword_227678EE0);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_27D7B8718, MEMORY[0x277D52448], MEMORY[0x277D52450]);
      result = sub_22766BF50();
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

uint64_t sub_227103950(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227665750();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA658, &qword_227678EA0);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_27D7BA648, MEMORY[0x277D518F8], MEMORY[0x277D51900]);
      result = sub_22766BF50();
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

uint64_t sub_227103C6C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227668830();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA608, &qword_227678E80);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_27D7B86F0, MEMORY[0x277D535E8], MEMORY[0x277D535F0]);
      result = sub_22766BF50();
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

uint64_t sub_227103F88(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227668630();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA618, &qword_227678E88);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_27D7B86F8, MEMORY[0x277D53508], MEMORY[0x277D53510]);
      result = sub_22766BF50();
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

uint64_t sub_2271042A4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2276682A0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA5F8, &qword_227678E78);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_2813A5590, MEMORY[0x277D53450], MEMORY[0x277D53458]);
      result = sub_22766BF50();
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

uint64_t sub_2271045C0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227664B30();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAAE8, &qword_2276791B0);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_27D7B89D0, MEMORY[0x277D50D88], MEMORY[0x277D50D90]);
      result = sub_22766BF50();
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

uint64_t sub_2271048DC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227664B70();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA7F0, &qword_227678F70);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_27D7BA7E0, MEMORY[0x277D50DB8], MEMORY[0x277D50DC0]);
      result = sub_22766BF50();
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

uint64_t sub_227104BF8(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8AB8, &unk_227671740);
  result = sub_22766CDC0();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      sub_226E93170(v20 + v21 * (v17 | (v9 << 6)), v5, &qword_27D7B88C0, &unk_22767A720);
      sub_22766D370();
      sub_226EB99C8(&qword_27D7B88D0, MEMORY[0x277D52730], MEMORY[0x277D52738]);
      sub_227663B10();
      result = sub_22766D3F0();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
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
      result = sub_226E95D18(v5, *(v8 + 48) + v16 * v21, &qword_27D7B88C0, &unk_22767A720);
      ++*(v8 + 16);
      v6 = v31;
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

        v2 = v30;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_227104F28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAA98, &qword_227679178);
  result = sub_22766CDC0();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_22766D370();
      sub_226F48BA8(v19, v20, v21);
      sub_2276666E0();
      result = sub_22766D3F0();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v29;
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

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_227105180(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22766CDC0();
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
      sub_22766D370();
      v20 = a4(v19);
      MEMORY[0x22AA996B0](v20);
      result = sub_22766D3F0();
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

uint64_t sub_2271053A8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2276662D0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB08, &qword_2276791C0);
  v7 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_28139B6A8, MEMORY[0x277D52258], MEMORY[0x277D52260]);
      result = sub_22766BF50();
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

uint64_t sub_2271056C4(uint64_t a1)
{
  result = sub_226EB99C8(&qword_28139B9D8, MEMORY[0x277D50678], &protocol conformance descriptor for SessionScores);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22710571C()
{
  result = qword_28139BA18;
  if (!qword_28139BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BA18);
  }

  return result;
}

id sub_227105770(void *a1)
{
  sub_227664070();
  v3 = sub_22766BFD0();

  [a1 setSessionIdentifier_];

  sub_227664080();
  v4 = sub_22766BFD0();

  [a1 setWorkoutIdentifier_];

  v5 = sub_227664050();
  v6 = 0x7FFFFFFFLL;
  if (v5 < 0x7FFFFFFF)
  {
    v6 = v5;
  }

  if (v6 <= 0xFFFFFFFF80000000)
  {
    v7 = 0xFFFFFFFF80000000;
  }

  else
  {
    v7 = v6;
  }

  [a1 setWorkoutDuration_];
  sub_227664090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA928, &qword_22767A150);
  sub_2271058F4();
  v8 = sub_2276683C0();
  v10 = v9;

  if (!v1)
  {
    v12 = sub_227662560();
    sub_226EDC420(v8, v10);
    [a1 setScores_];

    v13 = sub_227664040();
    if (v13 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    return [a1 setActivityType_];
  }

  return result;
}

unint64_t sub_2271058F4()
{
  result = qword_27D7BA930;
  if (!qword_27D7BA930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BA928, &qword_22767A150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA930);
  }

  return result;
}

double sub_2271059CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2271059DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_227105A4C(void *a1)
{
  v2 = [a1 finalizedToken];
  if (v2)
  {
    v3 = v2;
    v4 = sub_227662590();
    v6 = v5;

    v7 = [a1 privateSeed];
    if (v7)
    {
      v8 = v7;
      v9 = sub_227662590();
      v11 = v10;

      v12 = [a1 publicKeyVersion];
      if (v12)
      {
        v13 = v12;
        sub_22766C000();

        v14 = [a1 publicInfo];
        if (v14)
        {
          v15 = v14;
          sub_22766C000();

          sub_2276648E0();
          return;
        }
      }

      sub_226EDC420(v9, v11);
    }

    sub_226EDC420(v4, v6);
  }

  v16 = sub_227664DD0();
  sub_227106028(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D51028], v16);
  swift_willThrow();
}

void *static PlaybackVoucher.representativeSamples()()
{
  v23 = sub_227664900();
  v0 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v2 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2276624D0();
  v4 = sub_2276624D0();
  v5 = sub_22766C090();
  v6 = sub_22766C090();
  v37 = v4;
  v38[0] = v3;
  v38[1] = v38;
  v38[2] = &v37;
  v35 = v6;
  v36 = v5;
  v38[3] = &v36;
  v38[4] = &v35;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D38, &qword_227671F00);
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v34 = v33;
  v27 = sub_226F5BF60(&qword_27D7B8D48, &qword_27D7B8D38, &qword_227671F00);
  v28 = v27;
  v29 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v30 = v29;
  v7 = sub_2276638E0();

  v8 = *(v7 + 16);
  if (v8)
  {
    v26 = MEMORY[0x277D84F90];
    result = sub_226F20008(0, v8, 0);
    v10 = 0;
    v11 = v26;
    v19[1] = v0 + 32;
    v12 = (v7 + 48);
    v22 = v0;
    v21 = v7;
    v20 = v8;
    v19[0] = v2;
    while (v10 < *(v7 + 16))
    {
      v13 = *(v12 - 2);
      v14 = *(v12 - 1);
      v15 = *v12;
      v16 = v12[1];
      v25 = v11;
      v24 = v12[4];
      sub_226F5E0B4(v13, v14);
      sub_226F5E0B4(v15, v16);

      v11 = v25;
      sub_2276648E0();
      v26 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_226F20008((v17 > 1), v18 + 1, 1);
        v11 = v26;
      }

      ++v10;
      *(v11 + 16) = v18 + 1;
      result = (*(v22 + 32))(v11 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, v19[0], v23);
      v12 += 8;
      v7 = v21;
      if (v20 == v10)
      {

        return v11;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_227105FD0(uint64_t a1)
{
  result = sub_227106028(&qword_2813A5798, MEMORY[0x277D50C20], &protocol conformance descriptor for PlaybackVoucher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227106028(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_227106070(void *a1)
{
  v2 = sub_2276648D0();
  v4 = v3;
  v5 = sub_227662560();
  sub_226EDC420(v2, v4);
  [a1 setFinalizedToken_];

  v6 = sub_2276648C0();
  v8 = v7;
  v9 = sub_227662560();
  sub_226EDC420(v6, v8);
  [a1 setPrivateSeed_];

  sub_2276648F0();
  v10 = sub_22766BFD0();

  [a1 setPublicKeyVersion_];

  sub_2276648B0();
  v11 = sub_22766BFD0();

  [a1 setPublicInfo_];
}

uint64_t sub_227106188()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = sub_227665270();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, *MEMORY[0x277D51590], v13, v15);
  if ([objc_opt_self() acknowledgePrivacyOverride] == 2)
  {
    sub_22766A730();
    v18 = sub_22766B380();
    v19 = sub_22766C870();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_226E8E000, v18, v19, "[NoticePrivacyPreference] Privacy acknowledgement disabled via AMSDefaults.acknowledgePrivacyOverride", v20, 2u);
      MEMORY[0x22AA9A450](v20, -1, -1);
    }

    (*(v1 + 8))(v12, v0);
    (*(v14 + 8))(v17, v13);
    return 1;
  }

  v39 = v0;
  v22 = objc_opt_self();
  sub_227665260();
  v23 = sub_22766BFD0();

  v24 = [v22 acknowledgementNeededForPrivacyIdentifier_];

  if (v24)
  {
    sub_22766A730();
    v25 = sub_22766B380();
    v26 = sub_22766C870();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_226E8E000, v25, v26, "[NoticePrivacyPreference] acknowledgementNeeded = 1", v27, 2u);
      MEMORY[0x22AA9A450](v27, -1, -1);
    }

    (*(v1 + 8))(v9, v39);
LABEL_16:
    (*(v14 + 8))(v17, v13);
    return 0;
  }

  sub_227665260();
  v28 = sub_22766BFD0();

  v29 = [v22 hasPreviouslyAcknowledgedPrivacyIdentifier_];

  if (!v29)
  {
    sub_22766A730();
    v35 = sub_22766B380();
    v36 = sub_22766C870();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_226E8E000, v35, v36, "[NoticePrivacyPreference] User never consented, needs acknowledgement.", v37, 2u);
      MEMORY[0x22AA9A450](v37, -1, -1);
    }

    (*(v1 + 8))(v3, v39);
    goto LABEL_16;
  }

  sub_227665260();
  v30 = sub_22766BFD0();

  v31 = [v22 hasRejectedPrivacyIdentifier_];

  sub_22766A730();
  v32 = sub_22766B380();
  v33 = sub_22766C870();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67109120;
    *(v34 + 4) = v31;
    _os_log_impl(&dword_226E8E000, v32, v33, "[NoticePrivacyPreference] hasRejectedPrivacy = %{BOOL}d", v34, 8u);
    MEMORY[0x22AA9A450](v34, -1, -1);
  }

  (*(v1 + 8))(v6, v39);
  (*(v14 + 8))(v17, v13);
  return v31 ^ 1;
}

uint64_t sub_2271066C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a3;
  v22 = a2;
  v23 = sub_22766A170();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669D60();
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB30, &qword_227679A10);
  v12 = sub_227667780();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_227670CD0;
  (*(v13 + 16))(v15 + v14, v4, v12);
  v16 = v25;
  sub_227565AB4(v15, v11[1], *(v11 + 16), v11[3]);

  if (!v16)
  {
    swift_getObjectType();
    sub_227669D50();
    sub_2276699D0();
    (*(v20 + 8))(v10, v8);
    sub_22766A160();
    v18 = v23;
    sub_2276699D0();
    return (*(v21 + 8))(v7, v18);
  }

  return result;
}

unint64_t sub_2271069A4(uint64_t a1)
{
  result = sub_2271069CC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2271069CC()
{
  result = qword_2813A55E0;
  if (!qword_2813A55E0)
  {
    sub_227667780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A55E0);
  }

  return result;
}

uint64_t sub_227106A44()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_226F73E2C;

    return sub_227106B2C();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_227106B2C()
{
  v1[249] = v0;
  v2 = sub_22766B390();
  v1[255] = v2;
  v1[261] = *(v2 - 8);
  v1[267] = swift_task_alloc();
  v3 = sub_22766A530();
  v1[273] = v3;
  v1[279] = *(v3 - 8);
  v1[285] = swift_task_alloc();
  v4 = sub_227662750();
  v1[291] = v4;
  v1[297] = *(v4 - 8);
  v1[303] = swift_task_alloc();
  v5 = sub_227668CB0();
  v1[309] = v5;
  v1[315] = *(v5 - 8);
  v1[321] = swift_task_alloc();
  v6 = sub_227667DA0();
  v1[327] = v6;
  v1[333] = *(v6 - 8);
  v1[339] = swift_task_alloc();
  v1[345] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB38, &unk_227679340);
  v1[351] = swift_task_alloc();
  v1[357] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v1[363] = swift_task_alloc();
  v1[369] = swift_task_alloc();
  v7 = sub_227663FA0();
  v1[370] = v7;
  v1[371] = *(v7 - 8);
  v1[372] = swift_task_alloc();
  v1[373] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v1[374] = v8;
  v1[375] = *(v8 - 8);
  v1[376] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227106EB8, 0, 0);
}

uint64_t sub_227106EB8()
{
  v1 = *(v0 + 3008);
  v2 = *(v0 + 3000);
  v3 = *(v0 + 2992);
  (*(v2 + 16))(v1, *(v0 + 1992) + OBJC_IVAR____TtC15SeymourServices37MetricBackgroundAccountEventPublisher__isBackgroundAccountEventEnabled, v3);
  sub_227669730();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 3080) == 1)
  {
    v4 = *(v0 + 1992);

    swift_asyncLet_begin();

    swift_asyncLet_begin();

    swift_asyncLet_begin();
    __swift_project_boxed_opaque_existential_0((v4 + 112), *(v4 + 136));
    sub_2275361FC();
    (*(*(v0 + 2664) + 56))(*(v0 + 2808), 0, 1, *(v0 + 2616));
    v15 = *(v0 + 2952);

    return MEMORY[0x282200930](v0 + 656, v15, sub_227107288, v0 + 2000);
  }

  else
  {
    sub_22766A740();
    v5 = sub_22766B380();
    v6 = sub_22766C8B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226E8E000, v5, v6, "[MetricBackgroundAccountEventProvider] disabled by user default - skipping background account event", v7, 2u);
      MEMORY[0x22AA9A450](v7, -1, -1);
    }

    v8 = *(v0 + 2136);
    v9 = *(v0 + 2088);
    v10 = *(v0 + 2040);

    (*(v9 + 8))(v8, v10);
    v11 = sub_2276636A0();
    sub_226F09790();
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D50050], v11);
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_227107288()
{
  v1[377] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227107BA0, 0, 0);
  }

  else
  {
    sub_226E93170(v1[369], v1[363], &qword_27D7B8428, &qword_227675CB0);

    return MEMORY[0x282200930](v1 + 162, v1 + 247, sub_227107348, v1 + 274);
  }
}

uint64_t sub_227107348()
{
  v1[378] = v0;
  if (v0)
  {
    sub_226E97D1C(v1[363], &qword_27D7B8428, &qword_227675CB0);

    return MEMORY[0x2822009F8](sub_227107DD0, 0, 0);
  }

  else
  {
    v1[379] = v1[247];
    v1[380] = v1[248];

    v2 = v1[373];

    return MEMORY[0x282200930](v1 + 2, v2, sub_227107418, v1 + 298);
  }
}

uint64_t sub_227107418()
{
  *(v1 + 3048) = v0;
  if (v0)
  {
    sub_226E97D1C(*(v1 + 2904), &qword_27D7B8428, &qword_227675CB0);

    v2 = sub_227108000;
  }

  else
  {
    v2 = sub_2271074B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271074B4()
{
  v1 = v0[372];
  v2 = v0[371];
  v3 = v0[370];
  v4 = v0[249];
  (*(v2 + 16))(v1, v0[373], v3);
  sub_227663E80();
  (*(v2 + 8))(v1, v3);
  sub_227662740();
  v5 = *(v4 + 192);
  v6 = swift_task_alloc();
  v0[382] = v6;
  *v6 = v0;
  v6[1] = sub_2271075DC;
  v7 = v0[380];
  v8 = v0[379];
  v9 = v0[363];
  v10 = v0[351];
  v11 = v0[345];
  v12 = v0[321];
  v13 = v0[303];

  return sub_22710961C(v11, v9, v8, v7, v12, v10, v13, v5);
}

uint64_t sub_2271075DC()
{
  v2 = *v1;
  *(*v1 + 3064) = v0;

  v3 = v2[363];
  v4 = v2[321];
  v5 = v2[315];
  v6 = v2[309];
  v7 = v2[303];
  v8 = v2[297];
  v9 = v2[291];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  sub_226E97D1C(v3, &qword_27D7B8428, &qword_227675CB0);
  if (v0)
  {
    v10 = sub_227108230;
  }

  else
  {
    v10 = sub_2271077FC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2271077FC()
{
  v1 = v0[383];
  v2 = v0[345];
  __swift_project_boxed_opaque_existential_0((v0[249] + 112), *(v0[249] + 136));
  off_283AC8E98(v2, &type metadata for MetricBackgroundAccountEventStore);
  v0[384] = v1;
  v3 = v0[351];
  v4 = v0[345];
  if (v1)
  {
    (*(v0[333] + 8))(v0[345], v0[327]);
    sub_226E97D1C(v3, &qword_27D7BAB38, &unk_227679340);
    v5 = sub_227108460;
    v6 = v0[369];
    v7 = v0 + 82;
    v8 = v0 + 340;
  }

  else
  {
    v9 = v0[339];
    v10 = v0[333];
    v11 = v0[327];
    v12 = v0[285];
    v13 = v0[279];
    v14 = v0[273];
    swift_getObjectType();
    (*(v10 + 16))(v9, v4, v11);
    sub_22766A520();
    sub_2276699D0();
    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v4, v11);
    sub_226E97D1C(v3, &qword_27D7BAB38, &unk_227679340);
    v5 = sub_2271079EC;
    v6 = v0[369];
    v7 = v0 + 82;
    v8 = v0 + 358;
  }

  return MEMORY[0x282200920](v7, v6, v5, v8);
}

uint64_t sub_227107A80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227107BA0()
{
  sub_226E97D1C(*(v0 + 2808), &qword_27D7BAB38, &unk_227679340);
  v1 = *(v0 + 2952);

  return MEMORY[0x282200920](v0 + 656, v1, sub_227107C1C, v0 + 2048);
}

uint64_t sub_227107CB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227107DD0()
{
  sub_226E97D1C(*(v0 + 2808), &qword_27D7BAB38, &unk_227679340);
  v1 = *(v0 + 2952);

  return MEMORY[0x282200920](v0 + 656, v1, sub_227107E4C, v0 + 2240);
}

uint64_t sub_227107EE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227108000()
{
  sub_226E97D1C(*(v0 + 2808), &qword_27D7BAB38, &unk_227679340);
  v1 = *(v0 + 2952);

  return MEMORY[0x282200920](v0 + 656, v1, sub_22710807C, v0 + 2432);
}

uint64_t sub_227108110()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227108230()
{
  sub_226E97D1C(*(v0 + 2808), &qword_27D7BAB38, &unk_227679340);
  v1 = *(v0 + 2952);

  return MEMORY[0x282200920](v0 + 656, v1, sub_2271082AC, v0 + 2576);
}

uint64_t sub_227108340()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271084F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227108614()
{
  v1[2] = v0;
  v2 = sub_22766B390();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271086D4, 0, 0);
}

uint64_t sub_2271086D4()
{
  v1 = *(v0 + 16);
  v3 = v1[5];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v3);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_227108790;

  return MEMORY[0x2821AFC58](v3, v2);
}

uint64_t sub_227108790(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 56) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2271088E0, 0, 0);
  }
}

uint64_t sub_2271088E0()
{
  v1 = [*(v0 + 56) identifier];
  if (v1)
  {
    v2 = v1;
    sub_22766BFF0();
  }

  sub_22766A740();
  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226E8E000, v3, v4, "[MetricBackgroundAccountEventProvider] account identifier not present - skipping background account event", v5, 2u);
    MEMORY[0x22AA9A450](v5, -1, -1);
  }

  v6 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = *(v0 + 24);

  (*(v8 + 8))(v7, v9);
  v10 = sub_2276636A0();
  sub_226F09790();
  swift_allocError();
  (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D50098], v10);
  swift_willThrow();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_227108AF4(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v4 = sub_227667900();
  v2[30] = v4;
  v2[31] = *(v4 - 8);
  v2[32] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v2[33] = v5;
  v2[34] = *(v5 - 8);
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227108C84, 0, 0);
}

uint64_t sub_227108C84()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 208) + 200), *(*(v0 + 208) + 224));
  v2 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v1 + v2, v0 + 56);
  if (*(v0 + 80))
  {
    sub_226E92AB8((v0 + 56), v0 + 96);
    sub_226E91B50(v0 + 96, v0 + 136);
    v3 = swift_allocObject();
    sub_226E92AB8((v0 + 136), v3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  }

  else
  {
    sub_226F099DC();
    v4 = swift_allocError();
    *v5 = 0;
    *(swift_allocObject() + 16) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  v6 = *(v0 + 280);
  v7 = swift_task_alloc();
  *(v0 + 288) = v7;
  *(v7 + 16) = "SeymourServices/MetricBackgroundAccountEventPublisher.swift";
  *(v7 + 24) = 59;
  *(v7 + 32) = 2;
  *(v7 + 40) = 69;
  *(v7 + 48) = v6;
  v8 = swift_task_alloc();
  *(v0 + 296) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
  *v8 = v0;
  v8[1] = sub_227108EF0;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2270637E4, v7, v9);
}

uint64_t sub_227108EF0()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {

    v3 = sub_22710930C;
  }

  else
  {
    v5 = v2[34];
    v4 = v2[35];
    v6 = v2[33];

    (*(v5 + 8))(v4, v6);
    v3 = sub_227109048;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227109048()
{
  v1 = v0[32];
  v2 = v0[29];
  sub_2276678E0();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
  (*(v4 + 8))(v1, v3, v4);
  v5 = swift_task_alloc();
  v0[39] = v5;
  *(v5 + 16) = "SeymourServices/MetricBackgroundAccountEventPublisher.swift";
  *(v5 + 24) = 59;
  *(v5 + 32) = 2;
  *(v5 + 40) = 77;
  *(v5 + 48) = v2;
  v6 = swift_task_alloc();
  v0[40] = v6;
  v7 = sub_227665AD0();
  v0[41] = v7;
  *v6 = v0;
  v6[1] = sub_2271091B4;
  v8 = v0[25];

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2270637FC, v5, v7);
}

uint64_t sub_2271091B4()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {

    v3 = sub_227109488;
  }

  else
  {
    v5 = v2[28];
    v4 = v2[29];
    v6 = v2[27];

    (*(v5 + 8))(v4, v6);
    v3 = sub_2271093A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22710930C()
{
  (*(v0[34] + 8))(v0[35], v0[33]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2271093A8()
{
  (*(v0[31] + 8))(v0[32], v0[30]);
  (*(*(v0[41] - 8) + 56))(v0[25], 0, 1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227109488()
{
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  *(v0 + 344) = 4;
  sub_226F09B58();
  v1 = sub_2276660E0();
  v2 = *(v0 + 336);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 240);
  if (v1)
  {
    (*(v4 + 8))(*(v0 + 256), *(v0 + 240));

    (*(*(*(v0 + 328) - 8) + 56))(*(v0 + 200), 1, 1);
  }

  else
  {
    swift_willThrow();
    (*(v4 + 8))(v3, v5);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22710961C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 321) = a8;
  *(v9 + 64) = a7;
  *(v9 + 72) = v8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_22766B390();
  *(v9 + 80) = v10;
  *(v9 + 88) = *(v10 - 8);
  *(v9 + 96) = swift_task_alloc();
  *(v9 + 104) = swift_task_alloc();
  *(v9 + 112) = swift_task_alloc();
  *(v9 + 120) = swift_task_alloc();
  *(v9 + 128) = swift_task_alloc();
  v11 = sub_227662940();
  *(v9 + 136) = v11;
  *(v9 + 144) = *(v11 - 8);
  *(v9 + 152) = swift_task_alloc();
  v12 = sub_227662750();
  *(v9 + 160) = v12;
  *(v9 + 168) = *(v12 - 8);
  *(v9 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB38, &unk_227679340);
  *(v9 + 184) = swift_task_alloc();
  *(v9 + 192) = swift_task_alloc();
  v13 = sub_227667DA0();
  *(v9 + 200) = v13;
  *(v9 + 208) = *(v13 - 8);
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  *(v9 + 232) = v14;
  *(v9 + 240) = *(v14 - 8);
  *(v9 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  *(v9 + 256) = swift_task_alloc();
  v15 = sub_227665AD0();
  *(v9 + 264) = v15;
  *(v9 + 272) = *(v15 - 8);
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  v16 = sub_22766A8A0();
  *(v9 + 296) = v16;
  *(v9 + 304) = *(v16 - 8);
  *(v9 + 312) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271099E4, 0, 0);
}

uint64_t sub_2271099E4()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F8E0], v3);
  v5 = sub_226EC9A38(v1, v4);

  (*(v2 + 8))(v1, v3);
  if ((v5 & 1) == 0)
  {
    v9 = sub_2276636A0();
    sub_226F09790();
    swift_allocError();
    v11 = v10;
    v12 = MEMORY[0x277D50070];
LABEL_14:
    (*(*(v9 - 8) + 104))(v11, *v12, v9);
    swift_willThrow();
    goto LABEL_15;
  }

  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  v8 = *(v0 + 256);
  sub_226E93170(*(v0 + 24), v8, &qword_27D7B8428, &qword_227675CB0);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_226E97D1C(*(v0 + 256), &qword_27D7B8428, &qword_227675CB0);
    goto LABEL_10;
  }

  (*(*(v0 + 272) + 32))(*(v0 + 288), *(v0 + 256), *(v0 + 264));
  if ((sub_227665AA0() & 1) == 0)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
LABEL_10:
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    v21 = *(v0 + 184);
    sub_226E93170(*(v0 + 56), v21, &qword_27D7BAB38, &unk_227679340);
    if ((*(v20 + 48))(v21, 1, v19) == 1)
    {
      sub_226E97D1C(*(v0 + 184), &qword_27D7BAB38, &unk_227679340);
      sub_22766A740();
      v22 = sub_22766B380();
      v23 = sub_22766C8B0();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_226E8E000, v22, v23, "[MetricBackgroundAccountEventProvider] not subscribed - last background account event not found - skipping background account event", v24, 2u);
        MEMORY[0x22AA9A450](v24, -1, -1);
      }

      v26 = *(v0 + 88);
      v25 = *(v0 + 96);
      v27 = *(v0 + 80);

      (*(v26 + 8))(v25, v27);
      v9 = sub_2276636A0();
      sub_226F09790();
      swift_allocError();
      v11 = v28;
      v12 = MEMORY[0x277D500B8];
      goto LABEL_14;
    }

    v32 = *(v0 + 32);
    v31 = *(v0 + 40);
    (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 184), *(v0 + 200));
    if (sub_227667D40() == v32 && v33 == v31)
    {
    }

    else
    {
      v34 = sub_22766D190();

      if ((v34 & 1) == 0)
      {
        sub_22766A740();
        v52 = sub_22766B380();
        v59 = sub_22766C8B0();
        if (os_log_type_enabled(v52, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_226E8E000, v52, v59, "[MetricBackgroundAccountEventProvider] not subscribed - the account identifier changed - skipping background account event", v60, 2u);
          MEMORY[0x22AA9A450](v60, -1, -1);
        }

        v56 = *(v0 + 208);
        v55 = *(v0 + 216);
        v57 = *(v0 + 200);
        v58 = *(v0 + 104);
        goto LABEL_37;
      }
    }

    sub_227667D90();
    v35 = sub_227667D60();
    v37 = v36;
    if (v35 == sub_227667D60() && v37 == v38)
    {

LABEL_26:
      v41 = *(v0 + 168);
      v40 = *(v0 + 176);
      v42 = *(v0 + 160);
      sub_227667D70();
      sub_227662680();
      v44 = v43;
      (*(v41 + 8))(v40, v42);
      sub_227664880();
      if (v44 < v45)
      {
        v47 = *(v0 + 208);
        v46 = *(v0 + 216);
        v49 = *(v0 + 168);
        v48 = *(v0 + 176);
        v50 = *(v0 + 160);
        v51 = *(v0 + 64);
        v102 = *(v0 + 200);
        sub_227667D50();
        (*(v49 + 16))(v48, v51, v50);

        sub_227667D80();
        (*(v47 + 8))(v46, v102);
        goto LABEL_15;
      }

      sub_22766A740();
      v52 = sub_22766B380();
      v53 = sub_22766C8B0();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_226E8E000, v52, v53, "[MetricBackgroundAccountEventProvider] not subscribed - the cached background account event is stale - skipping background account event", v54, 2u);
        MEMORY[0x22AA9A450](v54, -1, -1);
      }

      v56 = *(v0 + 208);
      v55 = *(v0 + 216);
      v57 = *(v0 + 200);
      v58 = *(v0 + 120);
      goto LABEL_37;
    }

    v39 = sub_22766D190();

    if (v39)
    {
      goto LABEL_26;
    }

    sub_22766A740();
    v52 = sub_22766B380();
    v61 = sub_22766C8B0();
    if (os_log_type_enabled(v52, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_226E8E000, v52, v61, "[MetricBackgroundAccountEventProvider] not subscribed - last background account event kind was not subscribed - skipping background account event", v62, 2u);
      MEMORY[0x22AA9A450](v62, -1, -1);
    }

    v56 = *(v0 + 208);
    v55 = *(v0 + 216);
    v57 = *(v0 + 200);
    v58 = *(v0 + 112);
LABEL_37:
    v63 = *(v0 + 80);
    v64 = *(v0 + 88);

    (*(v64 + 8))(v58, v63);
    v65 = sub_2276636A0();
    sub_226F09790();
    swift_allocError();
    (*(*(v65 - 8) + 104))(v66, *MEMORY[0x277D500B8], v65);
    swift_willThrow();
    (*(v56 + 8))(v55, v57);
    goto LABEL_15;
  }

  v14 = *(v0 + 240);
  v13 = *(v0 + 248);
  v15 = *(v0 + 232);
  (*(v14 + 16))(v13, *(v0 + 72) + OBJC_IVAR____TtC15SeymourServices37MetricBackgroundAccountEventPublisher__disableBackgroundAccountEventIntervalCheck, v15);
  sub_227669730();
  (*(v14 + 8))(v13, v15);
  if (*(v0 + 320))
  {
    goto LABEL_51;
  }

  v16 = *(v0 + 200);
  v17 = *(v0 + 208);
  v18 = *(v0 + 192);
  sub_226E93170(*(v0 + 56), v18, &qword_27D7BAB38, &unk_227679340);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_226E97D1C(*(v0 + 192), &qword_27D7BAB38, &unk_227679340);
LABEL_51:
    v94 = *(v0 + 288);
    v95 = *(v0 + 264);
    v96 = *(v0 + 272);
    v98 = *(v0 + 168);
    v97 = *(v0 + 176);
    v99 = *(v0 + 160);
    v100 = *(v0 + 64);
    (*(v96 + 16))(*(v0 + 280), v94, v95);
    (*(v98 + 16))(v97, v100, v99);

    sub_227667D80();
    (*(v96 + 8))(v94, v95);
    goto LABEL_15;
  }

  v68 = *(v0 + 32);
  v67 = *(v0 + 40);
  (*(*(v0 + 208) + 32))(*(v0 + 224), *(v0 + 192), *(v0 + 200));
  if (sub_227667D40() == v68 && v69 == v67)
  {
  }

  else
  {
    v70 = sub_22766D190();

    if ((v70 & 1) == 0)
    {
LABEL_50:
      (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
      goto LABEL_51;
    }
  }

  v72 = *(v0 + 168);
  v71 = *(v0 + 176);
  v74 = *(v0 + 152);
  v73 = *(v0 + 160);
  v75 = *(v0 + 136);
  v76 = *(v0 + 144);
  sub_227667D70();
  sub_227662920();
  v77 = sub_227662650();
  v79 = v78;
  (*(v76 + 8))(v74, v75);
  (*(v72 + 8))(v71, v73);
  if (v79)
  {
    goto LABEL_50;
  }

  v80 = (sub_227665AB0() & 1) != 0 ? sub_227668C90() : sub_227668C80();
  if (v77 >= v80)
  {
    goto LABEL_50;
  }

  sub_22766A740();
  v81 = sub_22766B380();
  v82 = sub_22766C8B0();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_226E8E000, v81, v82, "[MetricBackgroundAccountEventProvider] subscribed - interval not expired - skipping background account event", v83, 2u);
    MEMORY[0x22AA9A450](v83, -1, -1);
  }

  v101 = *(v0 + 288);
  v84 = *(v0 + 264);
  v85 = *(v0 + 272);
  v86 = *(v0 + 224);
  v87 = *(v0 + 200);
  v88 = *(v0 + 208);
  v89 = *(v0 + 128);
  v91 = *(v0 + 80);
  v90 = *(v0 + 88);

  (*(v90 + 8))(v89, v91);
  v92 = sub_2276636A0();
  sub_226F09790();
  swift_allocError();
  (*(*(v92 - 8) + 104))(v93, *MEMORY[0x277D50060], v92);
  swift_willThrow();
  (*(v88 + 8))(v86, v87);
  (*(v85 + 8))(v101, v84);
LABEL_15:

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_22710A63C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 25);

  v1 = OBJC_IVAR____TtC15SeymourServices37MetricBackgroundAccountEventPublisher__isBackgroundAccountEventEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v3 = *(*(v2 - 8) + 8);
  v3(&v0[v1], v2);
  v3(&v0[OBJC_IVAR____TtC15SeymourServices37MetricBackgroundAccountEventPublisher__disableBackgroundAccountEventIntervalCheck], v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MetricBackgroundAccountEventPublisher(uint64_t a1)
{
  result = qword_28139D668;
  if (!qword_28139D668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22710A7A0(uint64_t a1)
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22710A864(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22710A8F8;

  return sub_227108614();
}

uint64_t sub_22710A8F8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_22710AA54, 0, 0);
  }
}

uint64_t sub_22710AA54()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 40);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_22710AA78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22710AA98, 0, 0);
}

uint64_t sub_22710AA98()
{
  v1 = v0[3];
  v2 = v1[22];
  v3 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v2);
  v4 = *(v3 + 24);

  v10 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  v6 = sub_227663FA0();
  *v5 = v0;
  v5[1] = sub_22710AC00;
  v7 = v0[2];
  v8 = v0[3];

  return (v10)(v7, sub_22710B010, v8, v6, v2, v3);
}

uint64_t sub_22710AC00()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22710AD3C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22710AD3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22710ADA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E92F34;

  return sub_227108AF4(a1);
}

uint64_t sub_22710AE3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22710A864(a1);
}

uint64_t sub_22710AED8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_22710AA78(a1, v1);
}

uint64_t sub_22710AF74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22710ADA0(a1);
}

void sub_22710B060(uint64_t a1)
{
  v1 = a1;
  v33 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22766CD20();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v40 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v35 = v40;
    if (v33)
    {
      v3 = sub_22766CCD0();
    }

    else
    {
      v3 = sub_22766CC90();
      v4 = *(v1 + 36);
    }

    v37 = v3;
    v38 = v4;
    v39 = v33 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v31 = v1 + 56;
      v30 = v1 + 64;
      v32 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v37;
        v9 = v39;
        v34 = v38;
        v10 = v1;
        sub_2274DD7C8(v37, v38, v39, v1);
        v12 = v11;
        v13 = [v12 description];
        v14 = sub_22766C000();
        v16 = v15;

        v17 = v35;
        v40 = v35;
        v18 = *(v35 + 16);
        if (v18 >= *(v35 + 24) >> 1)
        {
          sub_226F1EF90();
          v17 = v40;
        }

        *(v17 + 16) = v18 + 1;
        v19 = v17 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        v35 = v17;
        if (v33)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_22766CCF0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB50, &qword_227685560);
          v6 = sub_22766C6A0();
          sub_22766CD70();
          v6(v36, 0);
          if (v5 == v32)
          {
LABEL_32:
            sub_226EB526C(v37, v38, v39);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v20 = 1 << *(v10 + 32);
          if (v8 >= v20)
          {
            goto LABEL_36;
          }

          v21 = v8 >> 6;
          v22 = *(v31 + 8 * (v8 >> 6));
          if (((v22 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v34)
          {
            goto LABEL_38;
          }

          v23 = v22 & (-2 << (v8 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v32;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v30 + 8 * v21);
            v2 = v32;
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_226EB526C(v8, v34, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_31;
              }
            }

            sub_226EB526C(v8, v34, 0);
          }

LABEL_31:
          v29 = *(v10 + 36);
          v37 = v20;
          v38 = v29;
          v39 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_22710B3D4(uint64_t a1)
{
  v3 = sub_227663110();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_22766CD20();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v54 = MEMORY[0x277D84F90];
  sub_226F20028(0, v7 & ~(v7 >> 63), 0);
  v8 = v54;
  if (v45)
  {
    result = sub_22766CCD0();
  }

  else
  {
    result = sub_22766CC90();
    v10 = *(a1 + 36);
  }

  v51 = result;
  v52 = v10;
  v53 = v45 != 0;
  if ((v7 & 0x8000000000000000) == 0)
  {
    v35 = v1;
    v11 = 0;
    v37 = a1 + 56;
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v12 = a1;
    }

    v38 = v12;
    v39 = v44 + 32;
    v36 = a1 + 64;
    v41 = v6;
    v42 = a1;
    v40 = v7;
    while (v11 < v7)
    {
      if (__OFADD__(v11++, 1))
      {
        goto LABEL_41;
      }

      v48 = v51;
      v49 = v8;
      v47 = v52;
      v46 = v53;
      sub_2274DD7DC(v51, v52, v53, a1);
      v16 = v15;
      v17 = [v15 goalQuantity];
      if (v17)
      {
        v18 = [objc_opt_self() countUnit];
        [v17 doubleValueForUnit_];
      }

      v19 = [v16 progressQuantity];
      if (v19)
      {
        v20 = [objc_opt_self() countUnit];
        [v19 doubleValueForUnit_];
      }

      v21 = [v16 templateUniqueName];
      sub_22766C000();

      v22 = v41;
      sub_227663100();

      v8 = v49;
      v54 = v49;
      v24 = *(v49 + 16);
      v23 = *(v49 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_226F20028((v23 > 1), v24 + 1, 1);
        v8 = v54;
      }

      *(v8 + 16) = v24 + 1;
      (*(v44 + 32))(v8 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v24, v22, v43);
      a1 = v42;
      v7 = v40;
      if (v45)
      {
        result = v48;
        if (!v46)
        {
          goto LABEL_46;
        }

        if (sub_22766CCF0())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB980, &qword_2276794C0);
        v13 = sub_22766C6A0();
        sub_22766CD70();
        result = v13(v50, 0);
        if (v11 == v7)
        {
LABEL_38:
          sub_226EB526C(v51, v52, v53);
          return v8;
        }
      }

      else
      {
        result = v48;
        if (v46)
        {
          goto LABEL_47;
        }

        if ((v48 & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        v25 = 1 << *(v42 + 32);
        if (v48 >= v25)
        {
          goto LABEL_42;
        }

        v26 = v48 >> 6;
        v27 = *(v37 + 8 * (v48 >> 6));
        if (((v27 >> v48) & 1) == 0)
        {
          goto LABEL_43;
        }

        if (*(v42 + 36) != v47)
        {
          goto LABEL_44;
        }

        v28 = v27 & (-2 << (v48 & 0x3F));
        if (v28)
        {
          v25 = __clz(__rbit64(v28)) | v48 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v29 = v26 << 6;
          v30 = v26 + 1;
          v31 = (v36 + 8 * v26);
          while (v30 < (v25 + 63) >> 6)
          {
            v33 = *v31++;
            v32 = v33;
            v29 += 64;
            ++v30;
            if (v33)
            {
              result = sub_226EB526C(v48, v47, 0);
              v25 = __clz(__rbit64(v32)) + v29;
              goto LABEL_37;
            }
          }

          result = sub_226EB526C(v48, v47, 0);
        }

LABEL_37:
        v34 = *(a1 + 36);
        v51 = v25;
        v52 = v34;
        v53 = 0;
        if (v11 == v7)
        {
          goto LABEL_38;
        }
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_22710B900()
{
  v1 = v0;
  v2 = sub_227669A70();
  v45 = *(v2 - 8);
  v3 = v45;
  MEMORY[0x28223BE20](v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = *(v1 + 16);
  v44 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v46 = v10;
  v11 = v3 + 104;
  v12 = *(v3 + 104);
  v13 = v2;
  v12(v5, *MEMORY[0x277D4EB80], v2);
  v43 = v12;
  v41 = v11;
  swift_allocObject();
  v42 = v1;
  swift_weakInit();
  swift_unknownObjectRetain_n();

  sub_227669EF0();

  v14 = *(v45 + 8);
  v45 += 8;
  v39 = v14;
  v14(v5, v2);

  swift_unknownObjectRelease();
  v46 = v10;
  v12(v5, *MEMORY[0x277D4E3F8], v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v16 = sub_22710E298();
  v17 = sub_226F62680();
  v36[1] = v16;
  v37 = v17;
  v36[0] = v15;
  sub_227669ED0();

  v38 = v13;
  v18 = v39;
  v39(v5, v13);
  swift_unknownObjectRelease();
  v46 = v10;
  v43(v5, *MEMORY[0x277D4EDA0], v13);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v19 = v38;
  v18(v5, v38);
  swift_unknownObjectRelease();
  v46 = v10;
  v20 = v43;
  v43(v5, *MEMORY[0x277D4E370], v19);
  swift_allocObject();
  swift_weakInit();
  sub_2276630B0();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v39(v5, v19);
  swift_unknownObjectRelease();
  v46 = v10;
  v20(v5, *MEMORY[0x277D4E378], v19);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB40, &qword_227679440);
  sub_22710E504();
  sub_22710E588(&qword_281398F10, &qword_27D7BAB40, &qword_227679440, sub_22710E604);
  sub_227669EC0();

  v21 = v39;
  v39(v5, v19);
  swift_unknownObjectRelease();
  v46 = v10;
  v22 = v43;
  v43(v5, *MEMORY[0x277D4EA98], v19);
  swift_allocObject();
  swift_weakInit();
  sub_227667A70();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v23 = v38;
  v21(v5, v38);
  swift_unknownObjectRelease();
  v46 = v10;
  v22(v5, *MEMORY[0x277D4E588], v23);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB48, &qword_227679468);
  sub_22710E7A0();
  sub_22710E588(&qword_281398F00, &qword_27D7BAB48, &qword_227679468, sub_22710E824);
  sub_227669EC0();

  v24 = v38;
  v25 = v39;
  v39(v5, v38);
  swift_unknownObjectRelease();
  v46 = v10;
  v43(v5, *MEMORY[0x277D4EAC8], v24);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v25(v5, v24);
  swift_unknownObjectRelease();
  v46 = v10;
  v26 = v24;
  v27 = v43;
  v43(v5, *MEMORY[0x277D4E9D0], v26);
  swift_allocObject();
  v28 = v42;
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v29 = v38;
  v30 = v39;
  v39(v5, v38);
  swift_unknownObjectRelease();
  v46 = v10;
  v27(v5, *MEMORY[0x277D4EC00], v29);
  swift_allocObject();
  v31 = v28;
  swift_weakInit();
  v37 = sub_2276682A0();
  sub_227669EE0();

  v32 = v38;
  v30(v5, v38);
  swift_unknownObjectRelease();
  v46 = v10;
  v33 = v43;
  v43(v5, *MEMORY[0x277D4EB88], v32);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v30(v5, v32);
  swift_unknownObjectRelease();
  v34 = *(v31 + 40);
  swift_getObjectType();
  v46 = v34;
  v33(v5, *MEMORY[0x277D4EBA0], v32);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v30(v5, v32);
  return swift_unknownObjectRelease();
}

uint64_t sub_22710C554()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_22710C660;

    return sub_2271C60BC();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22710C660()
{

  return MEMORY[0x2822009F8](sub_226F69390, 0, 0);
}

uint64_t sub_22710C75C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_22710C77C, 0, 0);
}

uint64_t sub_22710C77C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_22710C890;

    return sub_226EB91E0();
  }

  else
  {
    **(v0 + 80) = 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_22710C890(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_22710C990, 0, 0);
}

uint64_t sub_22710C990()
{
  sub_22710B060(*(v0 + 104));
  v2 = v1;

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  **(v0 + 80) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22710CA20(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_22710CA44, 0, 0);
}

uint64_t sub_22710CA44()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_22710CB58;
    v3 = v0[11];

    return sub_226EADED0(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22710CB58()
{

  return MEMORY[0x2822009F8](sub_226F69390, 0, 0);
}

uint64_t sub_22710CC54(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v4 = a2[1];
  v3[12] = *a2;
  v3[13] = v4;
  return MEMORY[0x2822009F8](sub_22710CC7C, 0, 0);
}

uint64_t sub_22710CC7C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_22710CDD0;
    v4 = v0[12];
    v3 = v0[13];

    return sub_2271CE090(v4, v3);
  }

  else
  {
    v6 = v0[10];
    v7 = sub_2276630B0();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22710CDD0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_22710CFE8;
  }

  else
  {
    v4 = sub_22710CEE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

id sub_22710CEE4()
{
  result = [*(v0 + 120) data];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 120);
    v4 = *(v0 + 80);
    sub_227662590();

    sub_2276630A0();
    v5 = sub_2276630B0();
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22710CFE8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22710D04C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_22710D074, 0, 0);
}

uint64_t sub_22710D074()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_226FAAB58;
    v3 = *(v0 + 96);

    return sub_2271CEBC4(v3);
  }

  else
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_22710D190(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_22710D1B0, 0, 0);
}

uint64_t sub_22710D1B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_22710D304;
    v3 = v0[10];

    return sub_2271CF294(v3);
  }

  else
  {
    v5 = v0[10];
    v6 = sub_227667A70();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22710D304()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_226F618C8;
  }

  else
  {
    v2 = sub_22710D418;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22710D418()
{
  v1 = v0[10];
  v2 = sub_227667A70();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_22710D4C0(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_22710D4E8, 0, 0);
}

uint64_t sub_22710D4E8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_22710D604;
    v3 = *(v0 + 96);

    return sub_226EB6FEC(v3);
  }

  else
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_22710D604(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_22710D704, 0, 0);
}

uint64_t sub_22710D704()
{
  v1 = sub_22710B3D4(*(v0 + 112));

  v2 = sub_226F446E4(v1);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  **(v0 + 80) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22710D7A8(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v4 = a2[1];
  v3[12] = *a2;
  v3[13] = v4;
  return MEMORY[0x2822009F8](sub_22710D7D0, 0, 0);
}

uint64_t sub_22710D7D0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_22710D8F0;
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);

    return sub_2271CFC7C(v4, v3);
  }

  else
  {
    **(v0 + 80) = 2;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_22710D8F0(char a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_22710D9F0, 0, 0);
}

uint64_t sub_22710D9F0()
{
  v1 = *(v0 + 120);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  **(v0 + 80) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22710DA60(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_22710DA80, 0, 0);
}

uint64_t sub_22710DA80()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_22710DB9C;

    return sub_2271D0690();
  }

  else
  {
    v4 = v0[10];
    *v4 = 0;
    *(v4 + 8) = 256;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22710DB9C(uint64_t a1, char a2)
{
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v7 = sub_226F69344;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 112) = a1;
    v7 = sub_22710DCD4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22710DCD4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 120) & 1;
  *v1 = *(v0 + 112);
  *(v1 + 8) = v2;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22710DD54(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_22710DD74, 0, 0);
}

uint64_t sub_22710DD74()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[10];

    return sub_2271D0F70(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22710DE88(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v2[10] = a2;
  v2[11] = v3;
  v2[12] = v4;
  return MEMORY[0x2822009F8](sub_22710DEB0, 0, 0);
}

uint64_t sub_22710DEB0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_226FAA2F0;
    v4 = v0[11];
    v3 = v0[12];

    return sub_2271D164C(v4, v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22710DFC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_22710DFE4, 0, 0);
}

uint64_t sub_22710DFE4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F620FC;
    v3 = v0[10];

    return sub_2271D0F70(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22710E0F8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t sub_22710E16C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_22710C534(v0);
}

uint64_t sub_22710E1FC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22710C75C(a1, v1);
}

unint64_t sub_22710E298()
{
  result = qword_281398F70;
  if (!qword_281398F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B84E0, &qword_22767C6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F70);
  }

  return result;
}

uint64_t sub_22710E314(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22710CA20(a1, v1);
}

uint64_t sub_22710E3AC(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_22710CC54(a1, a2, v2);
}

uint64_t sub_22710E458(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_22710D04C(a1, a2, v2);
}

unint64_t sub_22710E504()
{
  result = qword_281398F18;
  if (!qword_281398F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BAB40, &qword_227679440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F18);
  }

  return result;
}

uint64_t sub_22710E588(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22710E604()
{
  result = qword_28139BD70;
  if (!qword_28139BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BD70);
  }

  return result;
}

uint64_t sub_22710E658(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_22710D190(a1, v1);
}

uint64_t sub_22710E6F4(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_22710D4C0(a1, a2, v2);
}

unint64_t sub_22710E7A0()
{
  result = qword_281398F08;
  if (!qword_281398F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BAB48, &qword_227679468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F08);
  }

  return result;
}

unint64_t sub_22710E824()
{
  result = qword_28139BD68;
  if (!qword_28139BD68)
  {
    sub_227663110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BD68);
  }

  return result;
}

uint64_t sub_22710E87C(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_22710D7A8(a1, a2, v2);
}

uint64_t sub_22710E928(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22710DA60(a1, v1);
}

uint64_t sub_22710E9C4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22710DD54(a1, v1);
}

uint64_t sub_22710EA5C(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22710DE88(a1, v1);
}

uint64_t sub_22710EAF4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22710DFC4(a1, v1);
}

id sub_22710EB8C()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_2276623E0();
  v22[0] = 0;
  v6 = [v4 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:v22];

  if (v6)
  {
    return v22[0];
  }

  v8 = v22[0];
  v9 = sub_2276622C0();

  swift_willThrow();
  sub_22766A770();

  v10 = sub_22766B380();
  v11 = sub_22766C890();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v0;
    v22[0] = v13;
    v14 = v13;
    *v12 = 136315138;
    v15 = sub_227662390();
    v17 = sub_226E97AE8(v15, v16, v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_226E8E000, v10, v11, "Failed to create library directory at path: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA9A450](v14, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v1 + 8))(v3, v21);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
  }

  v18 = sub_227664DD0();
  sub_227117ADC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51008], v18);
  return swift_willThrow();
}

char *sub_22710EEC8(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_227662750();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_2276691E0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227667700();
  if (v4)
  {
    return a1;
  }

  v16 = v15;
  v32 = v11;
  v28 = 0;
  v17 = v14;
  (*(*(a3 + 16) + 24))(v30, a2);
  PersistenceEntityName.rawValue.getter();
  sub_227662740();
  sub_226F5E0B4(v17, v16);
  v29 = v17;
  sub_2276691B0();
  v18 = *(v5 + OBJC_IVAR____TtC15SeymourServices16JournalingSystem_journalingAgents);
  v19 = sub_2276691C0();
  if (!*(v18 + 16))
  {

    v24 = v32;
    goto LABEL_8;
  }

  v21 = sub_226E92000(v19, v20);
  v23 = v22;

  v24 = v32;
  if ((v23 & 1) == 0)
  {
LABEL_8:
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    sub_226E97D1C(v30, &qword_27D7BAB80, &qword_227679570);
    sub_227111620();
    a1 = swift_allocError();
    swift_willThrow();
    sub_226EDC420(v29, v16);
    (*(v24 + 8))(v13, v10);
    return a1;
  }

  sub_226E91B50(*(v18 + 56) + 40 * v21, v30);
  sub_226E97D1C(v30, &qword_27D7BAB80, &qword_227679570);
  sub_227117ADC(&qword_27D7BAB60, MEMORY[0x277D53AB0], MEMORY[0x277D53AA8]);
  a1 = v13;
  v25 = v28;
  v26 = sub_2276683C0();
  if (!v25)
  {
    a1 = v26;
  }

  (*(v24 + 8))(v13, v10);
  sub_226EDC420(v29, v16);
  return a1;
}

uint64_t sub_22710F210(uint64_t a1, uint64_t a2)
{
  v6 = sub_2276691E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22766B390();
  v39 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR____TtC15SeymourServices16JournalingSystem_journalingAgents);
  v13 = sub_2276691C0();
  if (!*(v12 + 16))
  {

    goto LABEL_6;
  }

  v37 = a2;
  v38 = v3;
  v15 = sub_226E92000(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_6:
    sub_227111620();
    swift_allocError();
    return swift_willThrow();
  }

  sub_226E91B50(*(v12 + 56) + 40 * v15, v40);
  sub_226E92AB8(v40, v41);
  sub_22766A770();
  (*(v7 + 16))(v9, a1, v6);
  v18 = sub_22766B380();
  v19 = sub_22766C880();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = v20;
    v36 = swift_slowAlloc();
    *&v40[0] = v36;
    *v20 = 136315138;
    sub_227117ADC(&qword_27D7BAB98, MEMORY[0x277D53AB0], MEMORY[0x277D53AB8]);
    v21 = sub_22766D140();
    v23 = v22;
    (*(v7 + 8))(v9, v6);
    v24 = sub_226E97AE8(v21, v23, v40);

    v25 = v35;
    *(v35 + 1) = v24;
    _os_log_impl(&dword_226E8E000, v18, v19, "JournalingSystem::readJournal processing journal: %s", v25, 0xCu);
    v26 = v36;
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x22AA9A450](v26, -1, -1);
    MEMORY[0x22AA9A450](v25, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  (*(v39 + 8))(v11, v42);
  v28 = sub_2276691D0();
  v29 = v41[4];
  __swift_project_boxed_opaque_existential_0(v41, v41[3]);
  v30 = sub_227669190();
  v32 = v30;
  if (v28)
  {
    v33 = v31;
    (*(v29 + 8))(v30);
  }

  else
  {
    v33 = v31;
    (*(v29 + 16))(v30);
  }

  sub_226EDC420(v32, v33);
  return __swift_destroy_boxed_opaque_existential_0(v41);
}

uint64_t sub_22710F620(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_2276691E0();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v6 = sub_2276624A0();
  v3[11] = v6;
  v7 = *(v6 - 8);
  v3[12] = v7;
  v3[13] = *(v7 + 64);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB90, &unk_227679588);
  v3[16] = v8;
  v3[17] = *(v8 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v9 = sub_22766B390();
  v3[20] = v9;
  v3[21] = *(v9 - 8);
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22710F864, 0, 0);
}

uint64_t sub_22710F864()
{
  v63 = v0;
  v62[2] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() defaultManager];
  v2 = sub_2276623E0();
  v0[2] = 0;
  v3 = [v1 contentsOfDirectoryAtURL:v2 includingPropertiesForKeys:0 options:0 error:v0 + 2];

  v4 = v0[2];
  if (!v3)
  {
    v10 = v4;
    sub_2276622C0();

    swift_willThrow();

    v28 = v0[1];
LABEL_14:

    return v28();
  }

  v5 = sub_22766C2C0();
  v6 = v4;

  sub_22766A770();

  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v5 + 16);

    _os_log_impl(&dword_226E8E000, v7, v8, "Found %ld journal files.", v9, 0xCu);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[21] + 8))(v0[22], v0[20]);
  v11 = *(v5 + 16);
  if (v11)
  {
    v51 = v0[16];
    v52 = v0[17];
    v12 = v0[12];
    v13 = v0[7];
    v62[0] = MEMORY[0x277D84F90];
    sub_226F1F6E8(0, v11, 0);
    v14 = 0;
    v15 = v62[0];
    v56 = v5 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v57 = v12;
    v53 = v5;
    v49 = (v13 + 32);
    v50 = (v12 + 32);
    while (v14 < *(v5 + 16))
    {
      v59 = v15;
      (*(v57 + 16))(v0[15], v56 + *(v57 + 72) * v14, v0[11]);
      v16 = sub_2276624C0();
      v18 = v17;
      sub_226F5E0B4(v16, v17);
      sub_227117ADC(&qword_27D7BAB60, MEMORY[0x277D53AB0], MEMORY[0x277D53AA8]);
      sub_2276683D0();
      v19 = v0[11];
      v20 = v0[19];
      v21 = v0[15];
      v22 = v0[10];
      v23 = v0[6];
      sub_226EDC420(v16, v18);
      v24 = *(v51 + 48);
      (*v50)(v20, v21, v19);
      (*v49)(v20 + v24, v22, v23);
      v15 = v59;
      v62[0] = v59;
      v26 = *(v59 + 16);
      v25 = *(v59 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_226F1F6E8((v25 > 1), v26 + 1, 1);
        v15 = v62[0];
      }

      ++v14;
      v27 = v0[19];
      *(v15 + 16) = v26 + 1;
      sub_227111674(v27, v15 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v26);
      v5 = v53;
      if (v11 == v14)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  v15 = MEMORY[0x277D84F90];
LABEL_17:
  v62[0] = v15;

  sub_2271153A0(v62);

  v30 = v62[0];
  v0[23] = v62[0];
  v31 = *(v30 + 16);
  v0[24] = v31;
  if (!v31)
  {

    v28 = v0[1];
    goto LABEL_14;
  }

  v33 = v0[16];
  v32 = v0[17];
  v34 = v0[12];
  v35 = v0[7];
  v61 = v0[3];
  v0[25] = 0;
  if (!*(v30 + 16))
  {
    goto LABEL_24;
  }

  v36 = v0[18];
  v37 = v0[14];
  v38 = v0[11];
  v54 = v38;
  v55 = v37;
  v39 = v0[9];
  v58 = v0[8];
  v40 = v0[5];
  v41 = v0[6];
  sub_227115454(v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v36);
  v42 = *(v33 + 48);
  v43 = *(v35 + 32);
  v43(v39, v36 + v42, v41);
  v44 = *(v34 + 32);
  v44(v37, v36, v38);
  v45 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v46 = (v58 + *(v34 + 80) + v45) & ~*(v34 + 80);
  v47 = swift_allocObject();
  v0[26] = v47;
  *(v47 + 16) = v40;
  v43(v47 + v45, v39, v41);
  v44(v47 + v46, v55, v54);

  v60 = (v61 + *v61);
  v48 = swift_task_alloc();
  v0[27] = v48;
  *v48 = v0;
  v48[1] = sub_2271100B0;

  return v60(sub_2271154C4, v47);
}

uint64_t sub_2271100B0()
{
  *(*v1 + 224) = v0;

  if (v0)
  {

    v2 = sub_227110554;
  }

  else
  {
    v2 = sub_22711022C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22711022C()
{
  v1 = v0[25] + 1;
  if (v1 == v0[24])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[25] = v1;
    v4 = v0[23];
    if (v1 >= *(v4 + 16))
    {
      __break(1u);
    }

    v5 = v0[18];
    v6 = v0[16];
    v7 = v0[14];
    v8 = v0[11];
    v9 = v0[12];
    v21 = v8;
    v22 = v7;
    v10 = v0[9];
    v23 = v0[8];
    v11 = v0[6];
    v12 = v0[7];
    v13 = v0[5];
    v25 = v0[3];
    sub_227115454(v4 + ((*(v0[17] + 80) + 32) & ~*(v0[17] + 80)) + *(v0[17] + 72) * v1, v5);
    v14 = *(v6 + 48);
    v15 = *(v12 + 32);
    v15(v10, v5 + v14, v11);
    v16 = *(v9 + 32);
    v16(v7, v5, v8);
    v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v18 = (v23 + *(v9 + 80) + v17) & ~*(v9 + 80);
    v19 = swift_allocObject();
    v0[26] = v19;
    *(v19 + 16) = v13;
    v15(v19 + v17, v10, v11);
    v16(v19 + v18, v22, v21);

    v24 = (v25 + *v25);
    v20 = swift_task_alloc();
    v0[27] = v20;
    *v20 = v0;
    v20[1] = sub_2271100B0;

    return v24(sub_2271154C4, v19);
  }
}

uint64_t sub_227110554()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_227110638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46[1] = *MEMORY[0x277D85DE8];
  v7 = sub_2276691E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v39[-v12];
  v14 = sub_22766B390();
  v42 = *(v14 - 8);
  v43 = v14;
  MEMORY[0x28223BE20](v14);
  v44 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22710F210(a3, a1);
  if (!v3)
  {
    v16 = [objc_opt_self() defaultManager];
    v17 = sub_2276623E0();
    v45 = 0;
    v18 = [v16 removeItemAtURL:v17 error:&v45];

    if (v18)
    {
      v19 = v45;
      return;
    }

    v20 = v45;
    v4 = sub_2276622C0();

    swift_willThrow();
  }

  v45 = v4;
  v21 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {

    v22 = v44;
    sub_22766A770();
    v23 = *(v8 + 16);
    v23(v13, a3, v7);
    v23(v10, a3, v7);
    v24 = sub_22766B380();
    v25 = sub_22766C8B0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46[0] = v41;
      *v26 = 136315394;
      v27 = sub_2276691C0();
      v40 = v25;
      v28 = v27;
      v30 = v29;
      v31 = *(v8 + 8);
      v31(v13, v7);
      v32 = sub_226E97AE8(v28, v30, v46);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      sub_227117ADC(&qword_27D7BAB98, MEMORY[0x277D53AB0], MEMORY[0x277D53AB8]);
      v33 = sub_22766D140();
      v35 = v34;
      v31(v10, v7);
      v36 = sub_226E97AE8(v33, v35, v46);

      *(v26 + 14) = v36;
      _os_log_impl(&dword_226E8E000, v24, v40, "Journal %s is not a supported type. Skipping. %s", v26, 0x16u);
      v37 = v41;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v37, -1, -1);
      MEMORY[0x22AA9A450](v26, -1, -1);

      (*(v42 + 8))(v44, v43);
    }

    else
    {

      v38 = *(v8 + 8);
      v38(v10, v7);
      v38(v13, v7);
      (*(v42 + 8))(v22, v43);
    }
  }
}

uint64_t sub_227110AFC()
{
  v1 = OBJC_IVAR____TtC15SeymourServices16JournalingSystem_directory;
  v2 = sub_2276624A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JournalingSystem(uint64_t a1)
{
  result = qword_2813A31E8;
  if (!qword_2813A31E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227110C0C(uint64_t a1)
{
  result = sub_2276624A0();
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

uint64_t sub_227110CB4(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_22766B390();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227110D78, 0, 0);
}

uint64_t sub_227110D78()
{
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_227110E14;
  v3 = v0[6];
  v2 = v0[7];

  return sub_22710F620(v3, v2);
}

uint64_t sub_227110E14()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227110F50, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_227110F50(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 104);
  sub_22766A770();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 104);
    v7 = *(v1 + 80);
    v19 = *(v1 + 88);
    v8 = *(v1 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](*(v1 + 24), *(v1 + 32));
    v13 = sub_226E97AE8(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "Error reading Journal: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 80);
    v14 = *(v1 + 88);
    v16 = *(v1 + 72);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

char *sub_227111128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = sub_2276627D0();
  v20 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276624A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22710EEC8(v3, a2, a3);
  if (!v4)
  {
    v15 = result;
    v16 = v14;
    v18 = v10;
    v19 = v9;
    v17 = OBJC_IVAR____TtC15SeymourServices16JournalingSystem_directory;
    sub_2276627C0();
    sub_227662770();
    (*(v20 + 8))(v8, v21);
    sub_227662400();

    sub_2276625B0();
    sub_226EDC420(v15, v16);
    return (*(v18 + 8))(v12, v19);
  }

  return result;
}

uint64_t sub_227111340()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22711139C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E92F34;

  return sub_227110CB4(a1, a2);
}

uint64_t sub_227111444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a5;
  v12 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F5E0B4(v15, v16);
  result = sub_2276676F0();
  if (!v7)
  {
    (*(a7 + 24))(a3, a4, v19, a6, a7);
    return (*(v12 + 8))(v14, a6);
  }

  return result;
}

unint64_t sub_2271115CC()
{
  result = qword_27D7BAB78;
  if (!qword_27D7BAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BAB78);
  }

  return result;
}

unint64_t sub_227111620()
{
  result = qword_27D7BAB88;
  if (!qword_27D7BAB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BAB88);
  }

  return result;
}

uint64_t sub_227111674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB90, &unk_227679588);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_2271116E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_227111928(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACF8, &qword_227679760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_227111A80(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_227111C28(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9A0, &unk_2276795E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227111E2C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEE8, &qword_227679978);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEF0, &qword_227679980);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_227112334(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC60, &qword_2276796A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_227112574(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF60, &qword_227679A08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_2271126B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC88, &qword_2276796C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_227112D9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF20, &qword_2276799C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227112FCC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2271131EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEB0, &qword_227679930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2271132F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B92A0, &qword_2276767A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_227113420(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E38, &qword_227686050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227113560(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE78, &qword_2276798E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE80, &unk_2276798F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227113694(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE58, &qword_2276798C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE60, &qword_2276798D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2271137F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE48, &qword_2276798B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_2271138F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE30, &qword_227679898);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_227113A50(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_227113B84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE50, &qword_2276798B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_227113C9C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 5);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_22711400C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_227114318(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB038, &unk_227679B50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227114474(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB078, &qword_227679B98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB080, &qword_227679BA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2271146F4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9558, &qword_227674778);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9560, &qword_227674780);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_227114948(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB008, &qword_227679B08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_227114CA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEA0, &qword_227679918);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}