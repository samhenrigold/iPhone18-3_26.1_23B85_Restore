uint64_t sub_2545C79CC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_2545C7AB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = sub_2545FEE64();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606710, &qword_254600C08);
  v37 = v4;
  result = sub_2545FF694();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
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
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_2545FF824();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {
      result = sub_2545FEA14();
      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

  result = sub_2545FEA14();
LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2545C7E00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = v6;
  result = sub_2545FF694();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v4;
    v39 = v7;
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
    while (1)
    {
      if (!v14)
      {
        v20 = v10;
        while (1)
        {
          v10 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_41;
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

        if ((v40 & 1) == 0)
        {
          result = sub_2545FEA14();
          v5 = v38;
          goto LABEL_39;
        }

        v37 = 1 << *(v7 + 32);
        v5 = v38;
        if (v37 >= 64)
        {
          bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v11 = -1 << v37;
        }

        *(v7 + 16) = 0;
        goto LABEL_38;
      }

      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 16 * v22);
      v24 = (*(v7 + 56) + 24 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v41 = v23;
      v28 = *(&v23 + 1);
      if ((v40 & 1) == 0)
      {
        sub_2545D71E4(v23, *(&v23 + 1));
        sub_2545D71E4(v25, v26);
        sub_2545FE8E4();
      }

      sub_2545FF834();
      if (!v28)
      {
        break;
      }

      if (v28 == 1)
      {
        v29 = 2;
LABEL_21:
        MEMORY[0x259C12730](v29);
        goto LABEL_23;
      }

      MEMORY[0x259C12730](1);
      sub_2545FF1B4();
LABEL_23:
      result = sub_2545FF864();
      v30 = -1 << *(v9 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 16 * v17) = v41;
      v18 = (*(v9 + 56) + 24 * v17);
      *v18 = v25;
      v18[1] = v26;
      v18[2] = v27;
      ++*(v9 + 16);
      v7 = v39;
    }

    v29 = 0;
    goto LABEL_21;
  }

LABEL_38:
  result = sub_2545FEA14();
LABEL_39:
  *v5 = v9;
  return result;
}

uint64_t sub_2545C810C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6, uint64_t *a7, uint64_t *a8)
{
  v10 = v8;
  v17 = *v8;
  v18 = sub_2545C5718(a4, a5);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a6 & 1) == 0)
  {
    if (v25 < v23 || (a6 & 1) != 0)
    {
      sub_2545C7E00(v23, a6 & 1, a7, a8);
      v18 = sub_2545C5718(a4, a5);
      if ((v24 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_2545FF7D4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v26 = v18;
      sub_2545C89E8(a7, a8);
      v18 = v26;
    }
  }

  v28 = *v10;
  if (v24)
  {
    v29 = (v28[7] + 24 * v18);
    v30 = *v29;
    v31 = v29[1];
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
    sub_2545D71F8(v30, v31);
  }

  v28[(v18 >> 6) + 8] |= 1 << v18;
  v33 = (v28[6] + 16 * v18);
  *v33 = a4;
  v33[1] = a5;
  v34 = (v28[7] + 24 * v18);
  *v34 = a1;
  v34[1] = a2;
  v34[2] = a3;
  v35 = v28[2];
  v22 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v36;

  return sub_2545D71E4(a4, a5);
}

unint64_t sub_2545C82E4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2545FEB04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2545D8728(&qword_27F606780, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_2545FF0E4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_2545C84A4(uint64_t a1, uint64_t a2)
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

unint64_t sub_2545C8510(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (v12 == 1)
        {
          if (a2 == 1)
          {
            return v6;
          }
        }

        else if (a2 >= 2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_2545FF7B4() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_2545C85F4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE600000000000000;
          v8 = 0x73656E656373;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0x726F737365636361;
          v7 = 0xEB00000000736569;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE300000000000000;
            if (v8 != 7105633)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE300000000000000;
        v8 = 7105633;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x73656E656373;
      }

      else
      {
        v10 = 0x726F737365636361;
      }

      if (v9 == 1)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xEB00000000736569;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_2545FF7B4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_2545C8780()
{
  v1 = v0;
  v29 = sub_2545FEE64();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606710, &qword_254600C08);
  v3 = *v0;
  v4 = sub_2545FF684();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        result = sub_2545FEA14();
        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_2545FEA14();
LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_2545C89E8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2545FF684();
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
        v20 = 16 * v19;
        v19 *= 24;
        v21 = (*(v4 + 56) + v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[2];
        v25 = *(*(v4 + 48) + v20);
        *(*(v6 + 48) + v20) = v25;
        v26 = (*(v6 + 56) + v19);
        *v26 = v22;
        v26[1] = v23;
        v26[2] = v24;
        sub_2545D71E4(v25, *(&v25 + 1));
        sub_2545D71E4(v22, v23);
        result = sub_2545FE8E4();
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
    result = sub_2545FEA14();
    *v3 = v6;
  }

  return result;
}

uint64_t sub_2545C8B74@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_2545FEB64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2545FED04();
  v10 = a2(0);
  sub_2545FEB34();
  (*(v7 + 8))(v9, v6);
  sub_2545D8660(a1, a3, type metadata accessor for ElementID);
  return sub_2545D8660(a1, a3 + *(v10 + 24), type metadata accessor for TileElementInfo);
}

void *sub_2545C8E7C(void *result, uint64_t *a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 24 * (v17 | (v12 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      *v11 = *v18;
      v11[1] = v20;
      v11[2] = v21;
      if (v14 == v10)
      {
        sub_2545D71E4(v19, v20);
        sub_2545FE8E4();
        goto LABEL_23;
      }

      v11 += 3;
      sub_2545D71E4(v19, v20);
      sub_2545FE8E4();
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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_2545C8FFC(uint64_t *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = (*(a5 + 56) + 24 * a2);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    *result = *v8;
    result[1] = v10;
    result[2] = v11;
    sub_2545D71E4(v6, v7);
    sub_2545D71E4(v9, v10);
    sub_2545FE8E4();
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2545C90B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[55] = a2;
  v3[56] = a3;
  v3[54] = a1;
  v4 = sub_2545FEB04();
  v3[57] = v4;
  v3[58] = *(v4 - 8);
  v3[59] = swift_task_alloc();
  v5 = sub_2545FEE64();
  v3[60] = v5;
  v3[61] = *(v5 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606688, &qword_254601E20);
  v3[64] = swift_task_alloc();
  v3[65] = type metadata accessor for HomeID(0);
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v6 = sub_2545FEB64();
  v3[68] = v6;
  v3[69] = *(v6 - 8);
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v7 = sub_2545FEF84();
  v3[72] = v7;
  v3[73] = *(v7 - 8);
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606758, &unk_254601DD0);
  v3[77] = swift_task_alloc();
  v8 = sub_2545FEED4();
  v3[78] = v8;
  v3[79] = *(v8 - 8);
  v3[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  v3[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606760, &qword_254600C40);
  v3[82] = swift_task_alloc();
  v9 = sub_2545FED84();
  v3[83] = v9;
  v3[84] = *(v9 - 8);
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v10 = type metadata accessor for ElementID(0);
  v3[87] = v10;
  v3[88] = *(v10 - 8);
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = *(type metadata accessor for HomeXLTileEntity(0) - 8);
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v3[98] = sub_2545FF354();
  v3[99] = sub_2545FF344();
  type metadata accessor for IntentsService();
  v3[100] = swift_initStaticObject();
  v11 = swift_task_alloc();
  v3[101] = v11;
  *v11 = v3;
  v11[1] = sub_2545C95FC;

  return sub_2545B0448();
}

uint64_t sub_2545C95FC(uint64_t a1)
{
  v3 = *v2;
  v3[102] = a1;
  v3[103] = v1;

  v4 = sub_2545FF334();
  if (v1)
  {
    v6 = sub_2545C9E7C;
  }

  else
  {
    v3[104] = v4;
    v3[105] = v5;
    v6 = sub_2545C9770;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2545C9770()
{
  v1 = *(v0 + 816);
  if (!v1 || (v1, v2 = sub_2545B027C(), (*(v0 + 848) = v2) == 0))
  {
    sub_2545FEA14();
    v10 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  *(v0 + 856) = sub_2545FECC4();
  if (sub_2545FECA4() != 7)
  {
    *(v0 + 880) = sub_2545FEBD4();
    *(v0 + 888) = sub_2545FECE4();
    *(v0 + 896) = sub_2545FECD4();
    *(v0 + 904) = sub_2545D8728(&qword_27F6064D8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
    v14 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545CA04C, v14, v13);
  }

  v3 = sub_2545FACE8(*(v0 + 432));
  *(v0 + 864) = v3;
  *(v0 + 408) = MEMORY[0x277D84F90];
  if (!(v3 >> 62))
  {
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 872) = v7;
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

  v25 = v3;
  v26 = sub_2545FF674();
  v3 = v25;
  *(v0 + 872) = v26;
  if (!v26)
  {
LABEL_22:
    sub_2545FEA14();

    v27 = *(v0 + 440);
    if (v27)
    {
      v49 = *(v27 + 16);
      if (v49)
      {
        v3 = *(v0 + 408);
        v48 = *(v3 + 16);
        if (v48)
        {
          v28 = 0;
          v44 = *(v0 + 704);
          v45 = *(v0 + 744);
          v29 = *(v0 + 696);
          v51 = MEMORY[0x277D84F90];
          v46 = *(v0 + 440);
          v47 = *(v0 + 408);
          while (1)
          {
            if (v28 >= *(v3 + 16))
            {
              __break(1u);
LABEL_43:
              __break(1u);
              return MEMORY[0x28216EA18](v3, v8, v4, v5, v6);
            }

            v30 = (*(v45 + 80) + 32) & ~*(v45 + 80);
            v31 = v28 + 1;
            v50 = *(v45 + 72);
            sub_2545D8660(v3 + v30 + v50 * v28, *(v0 + 776), type metadata accessor for HomeXLTileEntity);
            v32 = v27 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
            v33 = *(v44 + 72);
            v34 = v49;
            while (1)
            {
              sub_2545D8660(v32, *(v0 + 736), type metadata accessor for ElementID);
              if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
              {
                break;
              }

              sub_2545D86C8(*(v0 + 736), type metadata accessor for ElementID);
LABEL_31:
              v32 += v33;
              if (!--v34)
              {
                sub_2545D86C8(*(v0 + 776), type metadata accessor for HomeXLTileEntity);
                goto LABEL_27;
              }
            }

            v35 = *(v0 + 736);
            v36 = *(v29 + 20);
            v37 = qword_254600D00[*(v35 + v36)];
            v38 = qword_254600D00[*(*(v0 + 776) + v36)];
            sub_2545D86C8(v35, type metadata accessor for ElementID);
            if (v37 != v38)
            {
              goto LABEL_31;
            }

            sub_2545D8770(*(v0 + 776), *(v0 + 768), type metadata accessor for HomeXLTileEntity);
            v39 = v51;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2545DBE44(0, *(v51 + 16) + 1, 1);
              v39 = v51;
            }

            v41 = *(v39 + 16);
            v40 = *(v39 + 24);
            if (v41 >= v40 >> 1)
            {
              sub_2545DBE44((v40 > 1), v41 + 1, 1);
              v39 = v51;
            }

            v42 = *(v0 + 768);
            *(v39 + 16) = v41 + 1;
            v51 = v39;
            sub_2545D8770(v42, v39 + v30 + v41 * v50, type metadata accessor for HomeXLTileEntity);
LABEL_27:
            v28 = v31;
            v3 = v47;
            v27 = v46;
            if (v31 == v48)
            {
              goto LABEL_41;
            }
          }
        }

        v51 = MEMORY[0x277D84F90];
LABEL_41:
        v43 = *(v0 + 848);

LABEL_10:

        v11 = *(v0 + 8);

        return v11(v51);
      }
    }

    v10 = *(v0 + 408);
LABEL_9:
    v51 = v10;
    goto LABEL_10;
  }

LABEL_6:
  v8 = *(v0 + 864);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x259C124A0](0);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    v9 = *(v8 + 32);
  }

  v15 = v9;
  *(v0 + 944) = v9;
  *(v0 + 952) = 1;
  v16 = *(v0 + 648);
  v17 = *(v0 + 456);
  v18 = *(v0 + 464);
  *(v0 + 960) = sub_2545FEC94();
  v19 = [v15 uniqueIdentifier];
  sub_2545FEAC4();

  v20 = *(v18 + 56);
  *(v0 + 968) = v20;
  *(v0 + 976) = (v18 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v20(v16, 0, 1, v17);
  LOBYTE(v16) = sub_2545FEC54();
  v21 = sub_2545FEC64();
  v23 = v22;
  v24 = swift_task_alloc();
  *(v0 + 984) = v24;
  *v24 = v0;
  v24[1] = sub_2545CA220;
  v3 = *(v0 + 656);
  v8 = *(v0 + 648);
  v4 = v16 & 1;
  v5 = v21;
  v6 = v23;

  return MEMORY[0x28216EA18](v3, v8, v4, v5, v6);
}

uint64_t sub_2545C9E7C()
{
  sub_2545FEA14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2545CA04C()
{
  sub_2545FEA14();
  v0[114] = sub_2545FEBC4();
  v1 = swift_task_alloc();
  v0[115] = v1;
  *v1 = v0;
  v1[1] = sub_2545CA0F8;
  v2 = v0[54];

  return sub_2545DD5C0(v2);
}

uint64_t sub_2545CA0F8(uint64_t a1)
{
  v3 = *v2;
  v3[116] = a1;
  v3[117] = v1;

  if (v1)
  {
    v4 = v3[105];
    v5 = v3[104];
    v6 = sub_2545CC25C;
  }

  else
  {
    sub_2545FEA14();
    v4 = v3[105];
    v5 = v3[104];
    v6 = sub_2545CBB7C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2545CA220()
{
  v1 = *v0;
  v2 = *(*v0 + 960);
  v3 = *(*v0 + 648);

  sub_2545B612C(v3, &qword_27F6064D0, &unk_2546002B0);
  v4 = *(v1 + 840);
  v5 = *(v1 + 832);

  return MEMORY[0x2822009F8](sub_2545CA38C, v5, v4);
}

uint64_t sub_2545CA38C()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {

    v4 = sub_2545B612C(v3, &qword_27F606760, &qword_254600C40);
    v9 = *(v0 + 952);
    v10 = *(v0 + 864);
    if (v9 == *(v0 + 872))
    {
      sub_2545FEA14();

      v11 = *(v0 + 440);
      v58 = v11;
      if (v11 && (v57 = *(v11 + 16)) != 0)
      {
        v4 = *(v0 + 408);
        v56 = v4[2];
        if (v56)
        {
          v12 = 0;
          v53 = *(v0 + 704);
          v54 = *(v0 + 744);
          v13 = *(v0 + 696);
          v52 = MEMORY[0x277D84F90];
          v55 = *(v0 + 408);
          while (1)
          {
            if (v12 >= v4[2])
            {
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              return MEMORY[0x28216EA18](v4, v5, v6, v7, v8);
            }

            v14 = *(v54 + 72);
            v15 = v12 + 1;
            v59 = (*(v54 + 80) + 32) & ~*(v54 + 80);
            sub_2545D8660(v4 + v59 + v14 * v12, *(v0 + 776), type metadata accessor for HomeXLTileEntity);
            v16 = v11 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
            v17 = *(v53 + 72);
            v18 = v57;
            while (1)
            {
              sub_2545D8660(v16, *(v0 + 736), type metadata accessor for ElementID);
              if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
              {
                break;
              }

              sub_2545D86C8(*(v0 + 736), type metadata accessor for ElementID);
LABEL_12:
              v16 += v17;
              if (!--v18)
              {
                sub_2545D86C8(*(v0 + 776), type metadata accessor for HomeXLTileEntity);
                goto LABEL_8;
              }
            }

            v19 = *(v0 + 736);
            v20 = *(v13 + 20);
            v21 = qword_254600D00[*(v19 + v20)];
            v22 = qword_254600D00[*(*(v0 + 776) + v20)];
            sub_2545D86C8(v19, type metadata accessor for ElementID);
            if (v21 != v22)
            {
              goto LABEL_12;
            }

            sub_2545D8770(*(v0 + 776), *(v0 + 768), type metadata accessor for HomeXLTileEntity);
            v23 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2545DBE44(0, *(v52 + 16) + 1, 1);
              v23 = v52;
            }

            v25 = *(v23 + 16);
            v24 = *(v23 + 24);
            if (v25 >= v24 >> 1)
            {
              sub_2545DBE44((v24 > 1), v25 + 1, 1);
              v23 = v52;
            }

            v26 = *(v0 + 768);
            *(v23 + 16) = v25 + 1;
            v52 = v23;
            sub_2545D8770(v26, v23 + v59 + v25 * v14, type metadata accessor for HomeXLTileEntity);
LABEL_8:
            v12 = v15;
            v4 = v55;
            v11 = v58;
            if (v15 == v56)
            {
              goto LABEL_33;
            }
          }
        }

        v52 = MEMORY[0x277D84F90];
LABEL_33:
        v49 = *(v0 + 848);

        v38 = v52;
      }

      else
      {

        v38 = *(v0 + 408);
      }

      v50 = *(v0 + 8);

      return v50(v38);
    }

    else
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x259C124A0](*(v0 + 952), *(v0 + 864));
      }

      else
      {
        if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v4 = *(v10 + 8 * v9 + 32);
      }

      v39 = v4;
      *(v0 + 944) = v4;
      *(v0 + 952) = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_38;
      }

      v40 = *(v0 + 648);
      v41 = *(v0 + 456);
      v42 = *(v0 + 464);
      *(v0 + 960) = sub_2545FEC94();
      v43 = [v39 uniqueIdentifier];
      sub_2545FEAC4();

      v44 = *(v42 + 56);
      *(v0 + 968) = v44;
      *(v0 + 976) = (v42 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v44(v40, 0, 1, v41);
      LOBYTE(v43) = sub_2545FEC54();
      v45 = sub_2545FEC64();
      v47 = v46;
      v48 = swift_task_alloc();
      *(v0 + 984) = v48;
      *v48 = v0;
      v48[1] = sub_2545CA220;
      v4 = *(v0 + 656);
      v5 = *(v0 + 648);
      v6 = v43 & 1;
      v7 = v45;
      v8 = v47;

      return MEMORY[0x28216EA18](v4, v5, v6, v7, v8);
    }
  }

  else
  {
    v27 = *(v0 + 968);
    v28 = *(v0 + 944);
    v29 = *(v0 + 648);
    v30 = *(v0 + 456);
    (*(v1 + 32))(*(v0 + 688), v3, v2);
    *(v0 + 992) = sub_2545FEC94();
    v31 = [v28 uniqueIdentifier];
    sub_2545FEAC4();

    v27(v29, 0, 1, v30);
    v32 = sub_2545FEC84();
    v34 = v33;
    v35 = swift_task_alloc();
    *(v0 + 1000) = v35;
    *v35 = v0;
    v35[1] = sub_2545CAAB8;
    v36 = *(v0 + 648);
    v37 = *(v0 + 616);

    return MEMORY[0x28216EA48](v37, v36, 1, v32, v34);
  }
}

uint64_t sub_2545CAAB8()
{
  v1 = *v0;
  v2 = *(*v0 + 992);
  v3 = *(*v0 + 648);

  sub_2545B612C(v3, &qword_27F6064D0, &unk_2546002B0);
  v4 = *(v1 + 840);
  v5 = *(v1 + 832);

  return MEMORY[0x2822009F8](sub_2545CAC24, v5, v4);
}

void *sub_2545CAC24()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    sub_2545FEEC4();
    if (v4(v3, 1, v2) != 1)
    {
      sub_2545B612C(*(v0 + 616), &qword_27F606758, &unk_254601DD0);
    }
  }

  else
  {
    (*(v1 + 32))(*(v0 + 640), v3, v2);
  }

  v5 = *(v0 + 608);
  v6 = *(v0 + 600);
  v7 = *(v0 + 584);
  v8 = *(v0 + 576);
  sub_2545FEEB4();
  sub_2545FED24();

  sub_2545FEF54();
  sub_2545D8728(&qword_27F606718, MEMORY[0x277D16BC8], MEMORY[0x277D16BD0]);
  v9 = sub_2545FF254();
  v10 = MEMORY[0x277D84F90];
  *(v0 + 416) = MEMORY[0x277D84F90];
  sub_2545DBE04(0, v9 & ~(v9 >> 63), 0);
  v11 = *(v0 + 416);
  (*(v7 + 16))(v6, v5, v8);
  result = sub_2545FF244();
  if (v9 < 0)
  {
    goto LABEL_36;
  }

  v13 = *(v0 + 360);
  if (v9)
  {
    v14 = *(v0 + 352);
    v15 = *(v14 + 16);
    v16 = v14 + 40 * v13 + 32;
    v17 = *(v0 + 360);
    while (v15 != v17)
    {
      if (v13 < 0)
      {
        goto LABEL_33;
      }

      if (v17 >= *(v14 + 16))
      {
        goto LABEL_34;
      }

      sub_2545D850C(v16, v0 + 176);
      *(v0 + 416) = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2545DBE04((v18 > 1), v19 + 1, 1);
        v11 = *(v0 + 416);
      }

      *(v11 + 16) = v19 + 1;
      result = sub_2545D8570((v0 + 176), v11 + 40 * v19 + 32);
      v16 += 40;
      ++v17;
      if (!--v9)
      {
        *(v0 + 360) = v17;
        v10 = MEMORY[0x277D84F90];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = *(v0 + 360);
LABEL_16:
  v20 = *(v0 + 352);
  v21 = *(v20 + 16);
  if (v17 != v21)
  {
    while (v17 < v21)
    {
      sub_2545D850C(v20 + 32 + 40 * v17, v0 + 216);
      *(v0 + 360) = v17 + 1;
      sub_2545D8570((v0 + 216), v0 + 256);
      *(v0 + 416) = v11;
      v33 = *(v11 + 16);
      v32 = *(v11 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2545DBE04((v32 > 1), v33 + 1, 1);
        v11 = *(v0 + 416);
      }

      *(v11 + 16) = v33 + 1;
      result = sub_2545D8570((v0 + 256), v11 + 40 * v33 + 32);
      v21 = *(v20 + 16);
      v17 = *(v0 + 360);
      if (v17 == v21)
      {
        goto LABEL_17;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

LABEL_17:
  (*(*(v0 + 584) + 8))(*(v0 + 608), *(v0 + 576));

  v22 = *(v11 + 16);
  if (v22)
  {
    *(v0 + 424) = v10;
    sub_2545DBDE4(0, v22, 0);
    v23 = *(v0 + 424);
    v24 = v11 + 32;
    do
    {
      v25 = *(v0 + 728);
      sub_2545D850C(v24, v0 + 296);
      v26 = *(v0 + 320);
      v27 = *(v0 + 328);
      __swift_project_boxed_opaque_existential_1((v0 + 296), v26);
      sub_2545F3D54(v26, v27, v25);
      __swift_destroy_boxed_opaque_existential_0((v0 + 296));
      *(v0 + 424) = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2545DBDE4((v28 > 1), v29 + 1, 1);
        v23 = *(v0 + 424);
      }

      v30 = *(v0 + 728);
      v31 = *(v0 + 704);
      *(v23 + 16) = v29 + 1;
      sub_2545D8770(v30, v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29, type metadata accessor for ElementID);
      v24 += 40;
      --v22;
    }

    while (v22);
    sub_2545FEA14();
  }

  else
  {
    sub_2545FEA14();
    v23 = MEMORY[0x277D84F90];
  }

  *(v0 + 1008) = v23;
  v34 = *(v0 + 944);
  v35 = v34;
  v36 = swift_task_alloc();
  *(v0 + 1016) = v36;
  *v36 = v0;
  v36[1] = sub_2545CB118;

  return sub_2545EA1F8(v23, v34);
}

uint64_t sub_2545CB118(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1024) = v1;

  if (v1)
  {
    v5 = *(v4 + 944);

    v6 = *(v4 + 840);
    v7 = *(v4 + 832);
    v8 = sub_2545CB954;
  }

  else
  {

    *(v4 + 1032) = a1;
    v6 = *(v4 + 840);
    v7 = *(v4 + 832);
    v8 = sub_2545CB280;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2545CB280()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 944);
  v3 = *(v0 + 688);
  v4 = *(v0 + 672);
  v52 = *(v0 + 640);
  v54 = *(v0 + 664);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  v8 = sub_2545C2F44(sub_2545D88A0, v7, v1, type metadata accessor for HomeXLTileEntity, sub_2545DBE44, type metadata accessor for HomeXLTileEntity);

  sub_2545C3480(v8, &qword_27F6067F0, &qword_254600CC0, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity);

  (*(v5 + 8))(v52, v6);
  v9 = (*(v4 + 8))(v3, v54);
  v14 = *(v0 + 952);
  v15 = *(v0 + 864);
  if (v14 == *(v0 + 872))
  {
    sub_2545FEA14();

    v16 = *(v0 + 440);
    v53 = v16;
    if (v16 && (v51 = *(v16 + 16)) != 0)
    {
      v9 = *(v0 + 408);
      v50 = v9[2];
      if (v50)
      {
        v17 = 0;
        v47 = *(v0 + 704);
        v48 = *(v0 + 744);
        v18 = *(v0 + 696);
        v46 = MEMORY[0x277D84F90];
        v49 = *(v0 + 408);
        while (1)
        {
          if (v17 >= v9[2])
          {
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            return MEMORY[0x28216EA18](v9, v10, v11, v12, v13);
          }

          v19 = *(v48 + 72);
          v20 = v17 + 1;
          v55 = (*(v48 + 80) + 32) & ~*(v48 + 80);
          sub_2545D8660(v9 + v55 + v19 * v17, *(v0 + 776), type metadata accessor for HomeXLTileEntity);
          v21 = v16 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
          v22 = *(v47 + 72);
          v23 = v51;
          while (1)
          {
            sub_2545D8660(v21, *(v0 + 736), type metadata accessor for ElementID);
            if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
            {
              break;
            }

            sub_2545D86C8(*(v0 + 736), type metadata accessor for ElementID);
LABEL_11:
            v21 += v22;
            if (!--v23)
            {
              sub_2545D86C8(*(v0 + 776), type metadata accessor for HomeXLTileEntity);
              goto LABEL_7;
            }
          }

          v24 = *(v0 + 736);
          v25 = *(v18 + 20);
          v26 = qword_254600D00[*(v24 + v25)];
          v27 = qword_254600D00[*(*(v0 + 776) + v25)];
          sub_2545D86C8(v24, type metadata accessor for ElementID);
          if (v26 != v27)
          {
            goto LABEL_11;
          }

          sub_2545D8770(*(v0 + 776), *(v0 + 768), type metadata accessor for HomeXLTileEntity);
          v28 = v46;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2545DBE44(0, *(v46 + 16) + 1, 1);
            v28 = v46;
          }

          v30 = *(v28 + 16);
          v29 = *(v28 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_2545DBE44((v29 > 1), v30 + 1, 1);
            v28 = v46;
          }

          v31 = *(v0 + 768);
          *(v28 + 16) = v30 + 1;
          v46 = v28;
          sub_2545D8770(v31, v28 + v55 + v30 * v19, type metadata accessor for HomeXLTileEntity);
LABEL_7:
          v17 = v20;
          v9 = v49;
          v16 = v53;
          if (v20 == v50)
          {
            goto LABEL_29;
          }
        }
      }

      v46 = MEMORY[0x277D84F90];
LABEL_29:
      v43 = *(v0 + 848);

      v32 = v46;
    }

    else
    {

      v32 = *(v0 + 408);
    }

    v44 = *(v0 + 8);

    return v44(v32);
  }

  else
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x259C124A0](*(v0 + 952), *(v0 + 864));
    }

    else
    {
      if (v14 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v9 = *(v15 + 8 * v14 + 32);
    }

    v33 = v9;
    *(v0 + 944) = v9;
    *(v0 + 952) = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_34;
    }

    v34 = *(v0 + 648);
    v35 = *(v0 + 456);
    v36 = *(v0 + 464);
    *(v0 + 960) = sub_2545FEC94();
    v37 = [v33 uniqueIdentifier];
    sub_2545FEAC4();

    v38 = *(v36 + 56);
    *(v0 + 968) = v38;
    *(v0 + 976) = (v36 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v38(v34, 0, 1, v35);
    LOBYTE(v37) = sub_2545FEC54();
    v39 = sub_2545FEC64();
    v41 = v40;
    v42 = swift_task_alloc();
    *(v0 + 984) = v42;
    *v42 = v0;
    v42[1] = sub_2545CA220;
    v9 = *(v0 + 656);
    v10 = *(v0 + 648);
    v11 = v37 & 1;
    v12 = v39;
    v13 = v41;

    return MEMORY[0x28216EA18](v9, v10, v11, v12, v13);
  }
}

uint64_t sub_2545CB954()
{
  v1 = v0[118];
  v2 = v0[106];
  v3 = v0[86];
  v4 = v0[84];
  v5 = v0[83];
  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[78];
  sub_2545FEA14();

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2545CBB7C()
{
  v57 = v0;
  v1 = v0[116];
  v2 = *(v1 + 16);
  v0[130] = v2;
  if (v2)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v3 = v0[54];
    v4 = sub_2545FF0A4();
    __swift_project_value_buffer(v4, qword_27F60ADD8);
    sub_2545FE8E4();
    sub_2545D8588(v3);
    v5 = sub_2545FF084();
    v6 = sub_2545FF474();

    sub_2545CE4A8(v3);
    v7 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      v54 = v10;
      *v9 = 136315394;
      v12 = *(v1 + 16);
      v13 = MEMORY[0x277D84F90];
      if (v12)
      {
        v48 = v10;
        v49 = v9;
        v50 = v6;
        v51 = v5;
        v14 = v0[116];
        v15 = v0[69];
        v16 = v0[58];
        v55 = MEMORY[0x277D84F90];
        sub_2545DBE24(0, v12, 0);
        v13 = v55;
        v17 = *(v15 + 16);
        v15 += 16;
        v18 = v14 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
        v52 = *(v15 + 56);
        v53 = v17;
        v19 = (v15 - 8);
        do
        {
          v20 = v0[70];
          v21 = v0[68];
          v53(v20, v18, v21);
          sub_2545FEB34();
          (*v19)(v20, v21);
          v55 = v13;
          v23 = *(v13 + 16);
          v22 = *(v13 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_2545DBE24((v22 > 1), v23 + 1, 1);
            v13 = v55;
          }

          v24 = v0[59];
          v25 = v0[57];
          *(v13 + 16) = v23 + 1;
          (*(v16 + 32))(v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v23, v24, v25);
          v18 += v52;
          --v12;
        }

        while (v12);
        v5 = v51;
        v8 = MEMORY[0x277D84F90];
        v6 = v50;
        v11 = v48;
        v9 = v49;
      }

      v35 = v0[54];
      v36 = MEMORY[0x259C121B0](v13, v0[57]);
      v38 = v37;

      v39 = sub_2545F0FB4(v36, v38, &v54);

      *(v9 + 4) = v39;
      *(v9 + 12) = 2080;
      if (v35)
      {
        if (v35 == 1)
        {
          v40 = 0xE300000000000000;
          v41 = 7105633;
        }

        else
        {
          v55 = 0x3A796C6E6FLL;
          v56 = 0xE500000000000000;
          sub_2545D8728(&qword_27F606768, type metadata accessor for HomeID, &protocol conformance descriptor for HomeID);
          v42 = sub_2545FF3A4();
          MEMORY[0x259C120B0](v42);

          v41 = v55;
          v40 = v56;
        }
      }

      else
      {
        v40 = 0xE700000000000000;
        v41 = 0x746E6572727563;
      }

      v43 = sub_2545F0FB4(v41, v40, &v54);

      *(v9 + 14) = v43;
      _os_log_impl(&dword_2545AB000, v5, v6, "[WidgetDataModel.orderedHomes] homes=%s using scope=%s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C12CB0](v11, -1, -1);
      MEMORY[0x259C12CB0](v9, -1, -1);
    }

    v44 = v0[69];
    v0[46] = v8;
    v0[131] = 0;
    v45 = v0[116];
    if (*(v45 + 16))
    {
      (*(v44 + 16))(v0[71], v45 + ((*(v44 + 80) + 32) & ~*(v44 + 80)), v0[68]);
      v0[132] = sub_2545FECD4();
      v47 = sub_2545FF334();

      return MEMORY[0x2822009F8](sub_2545CC440, v47, v46);
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_2545FEA14();

  if (qword_27F6063A0 != -1)
  {
LABEL_28:
    swift_once();
  }

  v26 = sub_2545FF0A4();
  __swift_project_value_buffer(v26, qword_27F60ADD8);
  v27 = sub_2545FF084();
  v28 = sub_2545FF454();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[106];
  if (v29)
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2545AB000, v27, v28, "WidgetDataModel.orderedHomes is empty", v31, 2u);
    MEMORY[0x259C12CB0](v31, -1, -1);
  }

  v32 = v0[1];
  v33 = MEMORY[0x277D84F90];

  return v32(v33);
}

uint64_t sub_2545CC25C()
{
  v1 = *(v0 + 848);
  sub_2545FEA14();
  sub_2545FEA14();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2545CC440()
{
  sub_2545FEA14();
  v0[133] = sub_2545FEBC4();
  v1 = v0[105];
  v2 = v0[104];

  return MEMORY[0x2822009F8](sub_2545CC4B4, v2, v1);
}

uint64_t sub_2545CC4B4(uint64_t a1)
{
  sub_2545FEB34();
  v1[134] = sub_2545FECD4();
  v3 = sub_2545FF334();
  v1[135] = v3;
  v1[136] = v2;

  return MEMORY[0x2822009F8](sub_2545CC558, v3, v2);
}

uint64_t sub_2545CC558()
{
  v1 = v0[81];
  v2 = v0[64];
  v3 = v0[57];
  v4 = v0[58];
  (*(v4 + 16))(v1, v0[67], v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = sub_2545FECF4();
  sub_2545C3148(v1, v5, v6, v7, v8, v2);

  sub_2545B612C(v1, &qword_27F6064D0, &unk_2546002B0);
  v9 = swift_task_alloc();
  v0[137] = v9;
  *v9 = v0;
  v9[1] = sub_2545CC6B4;
  v10 = v0[85];
  v11 = v0[64];
  v12 = MEMORY[0x277D159D8];
  v13 = MEMORY[0x277D159D0];

  return MEMORY[0x28216E6A8](v10, v11, v12, v13);
}

uint64_t sub_2545CC6B4()
{
  v2 = *v1;
  *(*v1 + 1104) = v0;

  if (v0)
  {

    v3 = *(v2 + 1088);
    v4 = *(v2 + 1080);
    v5 = sub_2545CD520;
  }

  else
  {
    v3 = *(v2 + 1088);
    v4 = *(v2 + 1080);
    v5 = sub_2545CC7E4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2545CC7E4()
{
  v1 = v0[67];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v1, type metadata accessor for HomeID);
  v2 = v0[105];
  v3 = v0[104];

  return MEMORY[0x2822009F8](sub_2545CC878, v3, v2);
}

uint64_t sub_2545CC878(uint64_t a1)
{
  v2 = v1[70];
  v3 = v1[69];
  v4 = v1[68];
  sub_2545FED04();
  v1[139] = sub_2545FEB44();
  v5 = *(v3 + 8);
  v1[140] = v5;
  v1[141] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  v1[142] = sub_2545FECD4();
  v7 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545CC970, v7, v6);
}

uint64_t sub_2545CC970()
{
  sub_2545FEA14();
  v0[143] = sub_2545FEBC4();
  v1 = v0[105];
  v2 = v0[104];

  return MEMORY[0x2822009F8](sub_2545CC9E4, v2, v1);
}

uint64_t sub_2545CC9E4(uint64_t a1)
{
  sub_2545FEB34();
  *(v1 + 1152) = sub_2545FECD4();
  v2 = swift_task_alloc();
  *(v1 + 1160) = v2;
  *v2 = v1;
  v2[1] = sub_2545CCA94;

  return MEMORY[0x28216E6C0]();
}

uint64_t sub_2545CCA94(uint64_t a1)
{
  *(*v1 + 1168) = a1;

  sub_2545FEF44();
  sub_2545D8728(&qword_27F606698, MEMORY[0x277D16AF0], MEMORY[0x277D16AF8]);
  v3 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545CCBEC, v3, v2);
}

uint64_t sub_2545CCBEC()
{
  v0[147] = sub_2545FEF24();
  sub_2545FEA14();
  v2 = sub_2545FF334();
  v0[148] = v2;
  v0[149] = v1;

  return MEMORY[0x2822009F8](sub_2545CCC94, v2, v1);
}

uint64_t sub_2545CCC94()
{
  v0[47] = v0[147];
  v0[150] = sub_2545FF344();
  v2 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545CCD28, v2, v1);
}

uint64_t sub_2545CCD28()
{
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066A0, &qword_254600BA0);
  sub_2545B4F2C(&qword_27F6066A8, &qword_27F6066A0, &qword_254600BA0, MEMORY[0x277D83988]);
  v0[151] = sub_2545FF3E4();
  v1 = v0[149];
  v2 = v0[148];

  return MEMORY[0x2822009F8](sub_2545CCDF4, v2, v1);
}

uint64_t sub_2545CCDF4()
{
  v1 = v0[66];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v1, type metadata accessor for HomeID);

  v2 = v0[105];
  v3 = v0[104];

  return MEMORY[0x2822009F8](sub_2545CCE9C, v3, v2);
}

unint64_t sub_2545CCE9C()
{
  result = *(v0 + 1208);
  v59 = *(result + 16);
  if (v59)
  {
    v2 = 0;
    v3 = *(*(v0 + 488) + 80);
    v58 = result + ((v3 + 32) & ~v3);
    v4 = MEMORY[0x277D84F98];
    v57 = *(v0 + 1208);
    while (v2 < *(result + 16))
    {
      v6 = *(v0 + 496);
      v5 = *(v0 + 504);
      v7 = *(v0 + 480);
      v8 = *(v0 + 488);
      v9 = *(v8 + 16);
      v10 = *(v8 + 72);
      v9(v5, v58 + v10 * v2, v7);
      v11 = sub_2545FEE54();
      v9(v6, v5, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 384) = v4;
      result = sub_2545C56D4(v11);
      v14 = v4[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_49;
      }

      v18 = v13;
      if (v4[3] >= v17)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = result;
          sub_2545C8780();
          result = v26;
        }
      }

      else
      {
        sub_2545C7AB4(v17, isUniquelyReferenced_nonNull_native);
        result = sub_2545C56D4(v11);
        if ((v18 & 1) != (v19 & 1))
        {

          return sub_2545FF7D4();
        }
      }

      v4 = *(v0 + 384);
      v20 = *(v0 + 496);
      v21 = *(v0 + 504);
      v22 = *(v0 + 480);
      v23 = *(v0 + 488);
      if (v18)
      {
        (*(v23 + 40))(v4[7] + result * v10, v20, *(v0 + 480));
        (*(v23 + 8))(v21, v22);
      }

      else
      {
        v4[(result >> 6) + 8] |= 1 << result;
        *(v4[6] + 8 * result) = v11;
        (*(v23 + 32))(v4[7] + result * v10, v20, v22);
        result = (*(v23 + 8))(v21, v22);
        v24 = v4[2];
        v16 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v16)
        {
          goto LABEL_51;
        }

        v4[2] = v25;
      }

      ++v2;
      result = v57;
      if (v59 == v2)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_48;
  }

LABEL_15:
  v27 = *(v0 + 600);
  v28 = *(v0 + 592);
  v29 = *(v0 + 584);
  v30 = *(v0 + 576);

  sub_2545FED24();

  sub_2545FEF54();
  sub_2545D8728(&qword_27F606718, MEMORY[0x277D16BC8], MEMORY[0x277D16BD0]);
  v31 = sub_2545FF254();
  v32 = MEMORY[0x277D84F90];
  *(v0 + 392) = MEMORY[0x277D84F90];
  sub_2545DBE04(0, v31 & ~(v31 >> 63), 0);
  v33 = *(v0 + 392);
  (*(v29 + 16))(v27, v28, v30);
  result = sub_2545FF244();
  if (v31 < 0)
  {
LABEL_52:
    __break(1u);
    return result;
  }

  v34 = *(v0 + 344);
  if (v31)
  {
    v35 = *(v0 + 336);
    v36 = *(v35 + 16);
    v37 = v35 + 40 * v34 + 32;
    v38 = *(v0 + 344);
    while (v36 != v38)
    {
      if (v34 < 0)
      {
        goto LABEL_46;
      }

      if (v38 >= *(v35 + 16))
      {
        goto LABEL_47;
      }

      sub_2545D850C(v37, v0 + 16);
      *(v0 + 392) = v33;
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_2545DBE04((v39 > 1), v40 + 1, 1);
        v33 = *(v0 + 392);
      }

      *(v33 + 16) = v40 + 1;
      result = sub_2545D8570((v0 + 16), v33 + 40 * v40 + 32);
      v37 += 40;
      ++v38;
      if (!--v31)
      {
        *(v0 + 344) = v38;
        v32 = MEMORY[0x277D84F90];
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
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

  v38 = *(v0 + 344);
LABEL_26:
  v41 = *(v0 + 336);
  v42 = *(v41 + 16);
  if (v38 != v42)
  {
    while (v38 < v42)
    {
      sub_2545D850C(v41 + 32 + 40 * v38, v0 + 56);
      *(v0 + 344) = v38 + 1;
      sub_2545D8570((v0 + 56), v0 + 96);
      *(v0 + 392) = v33;
      v54 = *(v33 + 16);
      v53 = *(v33 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_2545DBE04((v53 > 1), v54 + 1, 1);
        v33 = *(v0 + 392);
      }

      *(v33 + 16) = v54 + 1;
      result = sub_2545D8570((v0 + 96), v33 + 40 * v54 + 32);
      v42 = *(v41 + 16);
      v38 = *(v0 + 344);
      if (v38 == v42)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_50;
  }

LABEL_27:
  (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));

  v43 = *(v33 + 16);
  if (v43)
  {
    *(v0 + 400) = v32;
    sub_2545DBDE4(0, v43, 0);
    v44 = *(v0 + 400);
    v45 = v33 + 32;
    do
    {
      v46 = *(v0 + 712);
      sub_2545D850C(v45, v0 + 136);
      v47 = *(v0 + 160);
      v48 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v47);
      sub_2545F3D54(v47, v48, v46);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      *(v0 + 400) = v44;
      v50 = *(v44 + 16);
      v49 = *(v44 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_2545DBDE4((v49 > 1), v50 + 1, 1);
        v44 = *(v0 + 400);
      }

      v51 = *(v0 + 712);
      v52 = *(v0 + 704);
      *(v44 + 16) = v50 + 1;
      sub_2545D8770(v51, v44 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v50, type metadata accessor for ElementID);
      v45 += 40;
      --v43;
    }

    while (v43);
    sub_2545FEA14();
  }

  else
  {
    sub_2545FEA14();
    v44 = MEMORY[0x277D84F90];
  }

  *(v0 + 1216) = v44;
  v55 = swift_task_alloc();
  *(v0 + 1224) = v55;
  *v55 = v0;
  v55[1] = sub_2545CD7B0;
  v56 = *(v0 + 1112);

  return sub_2545EA1F8(v44, v56);
}

uint64_t sub_2545CD520()
{
  v1 = v0[67];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v1, type metadata accessor for HomeID);
  v2 = v0[105];
  v3 = v0[104];

  return MEMORY[0x2822009F8](sub_2545CD5B4, v3, v2);
}

uint64_t sub_2545CD5B4()
{
  v1 = v0[106];
  v2 = v0[71];
  v3 = v0[69];
  v4 = v0[68];
  sub_2545FEA14();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2545CD7B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1232) = v1;

  if (v1)
  {

    v5 = v4[105];
    v6 = v4[104];
    v7 = sub_2545CDF54;
  }

  else
  {
    v4[155] = a1;
    v5 = v4[105];
    v6 = v4[104];
    v7 = sub_2545CD904;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2545CD904()
{
  v1 = *(v0 + 1240);
  v44 = *(v0 + 1120);
  v2 = *(v0 + 1112);
  v47 = *(v0 + 1040);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 568);
  v6 = *(v0 + 544);
  v40 = *(v0 + 1048) + 1;
  v42 = *(v0 + 664);
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  v8 = sub_2545C2F44(sub_2545D87D8, v7, v1, type metadata accessor for HomeXLTileEntity, sub_2545DBE44, type metadata accessor for HomeXLTileEntity);

  sub_2545C3480(v8, &qword_27F6067F0, &qword_254600CC0, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity);

  v44(v5, v6);
  v9 = (*(v4 + 8))(v3, v42);
  if (v40 == v47)
  {
    v12 = *(v0 + 440);

    sub_2545FEA14();
    if (v12 && (v46 = *(v0 + 440), (v45 = *(v46 + 16)) != 0))
    {
      v9 = *(v0 + 368);
      v43 = *(v9 + 2);
      if (v43)
      {
        v13 = 0;
        v39 = *(v0 + 744);
        v14 = *(v0 + 696);
        v38 = MEMORY[0x277D84F90];
        v41 = *(v0 + 368);
        while (1)
        {
          if (v13 >= *(v9 + 2))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            return MEMORY[0x2822009F8](v9, v10, v11);
          }

          v15 = *(v0 + 704);
          v16 = (*(v39 + 80) + 32) & ~*(v39 + 80);
          v17 = v13 + 1;
          v48 = *(v39 + 72);
          sub_2545D8660(v9 + v16 + v48 * v13, *(v0 + 760), type metadata accessor for HomeXLTileEntity);
          v18 = v46 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
          v19 = *(v15 + 72);
          v20 = v45;
          while (1)
          {
            sub_2545D8660(v18, *(v0 + 720), type metadata accessor for ElementID);
            if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
            {
              break;
            }

            sub_2545D86C8(*(v0 + 720), type metadata accessor for ElementID);
LABEL_11:
            v18 += v19;
            if (!--v20)
            {
              sub_2545D86C8(*(v0 + 760), type metadata accessor for HomeXLTileEntity);
              goto LABEL_7;
            }
          }

          v21 = *(v0 + 720);
          v22 = *(v14 + 20);
          v23 = qword_254600D00[*(v21 + v22)];
          v24 = qword_254600D00[*(*(v0 + 760) + v22)];
          sub_2545D86C8(v21, type metadata accessor for ElementID);
          if (v23 != v24)
          {
            goto LABEL_11;
          }

          sub_2545D8770(*(v0 + 760), *(v0 + 752), type metadata accessor for HomeXLTileEntity);
          v25 = v38;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2545DBE44(0, *(v38 + 16) + 1, 1);
            v25 = v38;
          }

          v27 = *(v25 + 16);
          v26 = *(v25 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_2545DBE44((v26 > 1), v27 + 1, 1);
            v25 = v38;
          }

          v28 = *(v0 + 752);
          *(v25 + 16) = v27 + 1;
          v38 = v25;
          sub_2545D8770(v28, v25 + v16 + v27 * v48, type metadata accessor for HomeXLTileEntity);
LABEL_7:
          v13 = v17;
          v9 = v41;
          if (v17 == v43)
          {
            goto LABEL_25;
          }
        }
      }

      v38 = MEMORY[0x277D84F90];
LABEL_25:
      v35 = *(v0 + 848);

      v34 = v38;
    }

    else
    {

      v34 = *(v0 + 368);
    }

    v36 = *(v0 + 8);

    return v36(v34);
  }

  else
  {
    v29 = *(v0 + 1048) + 1;
    *(v0 + 1048) = v29;
    v30 = *(v0 + 928);
    if (v29 >= *(v30 + 16))
    {
      goto LABEL_30;
    }

    (*(*(v0 + 552) + 16))(*(v0 + 568), v30 + ((*(*(v0 + 552) + 80) + 32) & ~*(*(v0 + 552) + 80)) + *(*(v0 + 552) + 72) * v29, *(v0 + 544));
    *(v0 + 1056) = sub_2545FECD4();
    v31 = sub_2545FF334();
    v33 = v32;
    v9 = sub_2545CC440;
    v10 = v31;
    v11 = v33;

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_2545CDF54()
{
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[106];
  v4 = v0[85];
  v5 = v0[84];
  v6 = v0[83];
  v7 = v0[71];
  v8 = v0[68];
  sub_2545FEA14();

  v1(v7, v8);
  (*(v5 + 8))(v4, v6);

  v9 = v0[1];

  return v9();
}

unint64_t sub_2545CE174()
{
  result = qword_27F606670;
  if (!qword_27F606670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F606520, &qword_2546002E0);
    sub_2545D8728(&qword_281533130, type metadata accessor for SelectedHomeEntity, &protocol conformance descriptor for SelectedHomeEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606670);
  }

  return result;
}

unint64_t sub_2545CE230()
{
  result = qword_281532EB0;
  if (!qword_281532EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532EB0);
  }

  return result;
}

unint64_t sub_2545CE288()
{
  result = qword_281532EA8;
  if (!qword_281532EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532EA8);
  }

  return result;
}

unint64_t sub_2545CE328()
{
  result = qword_281532EB8[0];
  if (!qword_281532EB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281532EB8);
  }

  return result;
}

uint64_t sub_2545CE414(uint64_t *a1, int a2)
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

uint64_t sub_2545CE45C(uint64_t result, int a2, int a3)
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

unint64_t sub_2545CE4A8(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_2545CE4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[55] = a2;
  v3[56] = a3;
  v3[54] = a1;
  v4 = sub_2545FEB04();
  v3[57] = v4;
  v3[58] = *(v4 - 8);
  v3[59] = swift_task_alloc();
  v5 = sub_2545FEE64();
  v3[60] = v5;
  v3[61] = *(v5 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606688, &qword_254601E20);
  v3[64] = swift_task_alloc();
  v3[65] = type metadata accessor for HomeID(0);
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v6 = sub_2545FEB64();
  v3[68] = v6;
  v3[69] = *(v6 - 8);
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v7 = sub_2545FEF84();
  v3[72] = v7;
  v3[73] = *(v7 - 8);
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606758, &unk_254601DD0);
  v3[77] = swift_task_alloc();
  v8 = sub_2545FEED4();
  v3[78] = v8;
  v3[79] = *(v8 - 8);
  v3[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  v3[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606760, &qword_254600C40);
  v3[82] = swift_task_alloc();
  v9 = sub_2545FED84();
  v3[83] = v9;
  v3[84] = *(v9 - 8);
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v10 = type metadata accessor for ElementID(0);
  v3[87] = v10;
  v3[88] = *(v10 - 8);
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = *(type metadata accessor for ToggleControlEntity(0) - 8);
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v3[98] = sub_2545FF354();
  v3[99] = sub_2545FF344();
  type metadata accessor for IntentsService();
  v3[100] = swift_initStaticObject();
  v11 = swift_task_alloc();
  v3[101] = v11;
  *v11 = v3;
  v11[1] = sub_2545CEA34;

  return sub_2545B0448();
}

uint64_t sub_2545CEA34(uint64_t a1)
{
  v3 = *v2;
  v3[102] = a1;
  v3[103] = v1;

  v4 = sub_2545FF334();
  if (v1)
  {
    v6 = sub_2545D8814;
  }

  else
  {
    v3[104] = v4;
    v3[105] = v5;
    v6 = sub_2545CEBA8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2545CEBA8()
{
  v1 = *(v0 + 816);
  if (!v1 || (v1, v2 = sub_2545B027C(), (*(v0 + 848) = v2) == 0))
  {
    sub_2545FEA14();
    v10 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  *(v0 + 856) = sub_2545FECC4();
  if (sub_2545FECA4() != 7)
  {
    *(v0 + 880) = sub_2545FEBD4();
    *(v0 + 888) = sub_2545FECE4();
    *(v0 + 896) = sub_2545FECD4();
    *(v0 + 904) = sub_2545D8728(&qword_27F6064D8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
    v14 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545CF2B4, v14, v13);
  }

  v3 = sub_2545FACE8(*(v0 + 432));
  *(v0 + 864) = v3;
  *(v0 + 408) = MEMORY[0x277D84F90];
  if (!(v3 >> 62))
  {
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 872) = v7;
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

  v25 = v3;
  v26 = sub_2545FF674();
  v3 = v25;
  *(v0 + 872) = v26;
  if (!v26)
  {
LABEL_22:
    sub_2545FEA14();

    v27 = *(v0 + 440);
    if (v27)
    {
      v49 = *(v27 + 16);
      if (v49)
      {
        v3 = *(v0 + 408);
        v48 = *(v3 + 16);
        if (v48)
        {
          v28 = 0;
          v44 = *(v0 + 704);
          v45 = *(v0 + 744);
          v29 = *(v0 + 696);
          v51 = MEMORY[0x277D84F90];
          v46 = *(v0 + 440);
          v47 = *(v0 + 408);
          while (1)
          {
            if (v28 >= *(v3 + 16))
            {
              __break(1u);
LABEL_43:
              __break(1u);
              return MEMORY[0x28216EA18](v3, v8, v4, v5, v6);
            }

            v30 = (*(v45 + 80) + 32) & ~*(v45 + 80);
            v31 = v28 + 1;
            v50 = *(v45 + 72);
            sub_2545D8660(v3 + v30 + v50 * v28, *(v0 + 776), type metadata accessor for ToggleControlEntity);
            v32 = v27 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
            v33 = *(v44 + 72);
            v34 = v49;
            while (1)
            {
              sub_2545D8660(v32, *(v0 + 736), type metadata accessor for ElementID);
              if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
              {
                break;
              }

              sub_2545D86C8(*(v0 + 736), type metadata accessor for ElementID);
LABEL_31:
              v32 += v33;
              if (!--v34)
              {
                sub_2545D86C8(*(v0 + 776), type metadata accessor for ToggleControlEntity);
                goto LABEL_27;
              }
            }

            v35 = *(v0 + 736);
            v36 = *(v29 + 20);
            v37 = qword_254600D00[*(v35 + v36)];
            v38 = qword_254600D00[*(*(v0 + 776) + v36)];
            sub_2545D86C8(v35, type metadata accessor for ElementID);
            if (v37 != v38)
            {
              goto LABEL_31;
            }

            sub_2545D8770(*(v0 + 776), *(v0 + 768), type metadata accessor for ToggleControlEntity);
            v39 = v51;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2545DC21C(0, *(v51 + 16) + 1, 1);
              v39 = v51;
            }

            v41 = *(v39 + 16);
            v40 = *(v39 + 24);
            if (v41 >= v40 >> 1)
            {
              sub_2545DC21C((v40 > 1), v41 + 1, 1);
              v39 = v51;
            }

            v42 = *(v0 + 768);
            *(v39 + 16) = v41 + 1;
            v51 = v39;
            sub_2545D8770(v42, v39 + v30 + v41 * v50, type metadata accessor for ToggleControlEntity);
LABEL_27:
            v28 = v31;
            v3 = v47;
            v27 = v46;
            if (v31 == v48)
            {
              goto LABEL_41;
            }
          }
        }

        v51 = MEMORY[0x277D84F90];
LABEL_41:
        v43 = *(v0 + 848);

LABEL_10:

        v11 = *(v0 + 8);

        return v11(v51);
      }
    }

    v10 = *(v0 + 408);
LABEL_9:
    v51 = v10;
    goto LABEL_10;
  }

LABEL_6:
  v8 = *(v0 + 864);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x259C124A0](0);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    v9 = *(v8 + 32);
  }

  v15 = v9;
  *(v0 + 944) = v9;
  *(v0 + 952) = 1;
  v16 = *(v0 + 648);
  v17 = *(v0 + 456);
  v18 = *(v0 + 464);
  *(v0 + 960) = sub_2545FEC94();
  v19 = [v15 uniqueIdentifier];
  sub_2545FEAC4();

  v20 = *(v18 + 56);
  *(v0 + 968) = v20;
  *(v0 + 976) = (v18 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v20(v16, 0, 1, v17);
  LOBYTE(v16) = sub_2545FEC54();
  v21 = sub_2545FEC64();
  v23 = v22;
  v24 = swift_task_alloc();
  *(v0 + 984) = v24;
  *v24 = v0;
  v24[1] = sub_2545CF488;
  v3 = *(v0 + 656);
  v8 = *(v0 + 648);
  v4 = v16 & 1;
  v5 = v21;
  v6 = v23;

  return MEMORY[0x28216EA18](v3, v8, v4, v5, v6);
}

uint64_t sub_2545CF2B4()
{
  sub_2545FEA14();
  v0[114] = sub_2545FEBC4();
  v1 = swift_task_alloc();
  v0[115] = v1;
  *v1 = v0;
  v1[1] = sub_2545CF360;
  v2 = v0[54];

  return sub_2545DD5C0(v2);
}

uint64_t sub_2545CF360(uint64_t a1)
{
  v3 = *v2;
  v3[116] = a1;
  v3[117] = v1;

  if (v1)
  {
    v4 = v3[105];
    v5 = v3[104];
    v6 = sub_2545D88BC;
  }

  else
  {
    sub_2545FEA14();
    v4 = v3[105];
    v5 = v3[104];
    v6 = sub_2545D0BBC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2545CF488()
{
  v1 = *v0;
  v2 = *(*v0 + 960);
  v3 = *(*v0 + 648);

  sub_2545B612C(v3, &qword_27F6064D0, &unk_2546002B0);
  v4 = *(v1 + 840);
  v5 = *(v1 + 832);

  return MEMORY[0x2822009F8](sub_2545CF5F4, v5, v4);
}

uint64_t sub_2545CF5F4()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {

    v4 = sub_2545B612C(v3, &qword_27F606760, &qword_254600C40);
    v9 = *(v0 + 952);
    v10 = *(v0 + 864);
    if (v9 == *(v0 + 872))
    {
      sub_2545FEA14();

      v11 = *(v0 + 440);
      v58 = v11;
      if (v11 && (v57 = *(v11 + 16)) != 0)
      {
        v4 = *(v0 + 408);
        v56 = v4[2];
        if (v56)
        {
          v12 = 0;
          v53 = *(v0 + 704);
          v54 = *(v0 + 744);
          v13 = *(v0 + 696);
          v52 = MEMORY[0x277D84F90];
          v55 = *(v0 + 408);
          while (1)
          {
            if (v12 >= v4[2])
            {
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              return MEMORY[0x28216EA18](v4, v5, v6, v7, v8);
            }

            v14 = *(v54 + 72);
            v15 = v12 + 1;
            v59 = (*(v54 + 80) + 32) & ~*(v54 + 80);
            sub_2545D8660(v4 + v59 + v14 * v12, *(v0 + 776), type metadata accessor for ToggleControlEntity);
            v16 = v11 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
            v17 = *(v53 + 72);
            v18 = v57;
            while (1)
            {
              sub_2545D8660(v16, *(v0 + 736), type metadata accessor for ElementID);
              if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
              {
                break;
              }

              sub_2545D86C8(*(v0 + 736), type metadata accessor for ElementID);
LABEL_12:
              v16 += v17;
              if (!--v18)
              {
                sub_2545D86C8(*(v0 + 776), type metadata accessor for ToggleControlEntity);
                goto LABEL_8;
              }
            }

            v19 = *(v0 + 736);
            v20 = *(v13 + 20);
            v21 = qword_254600D00[*(v19 + v20)];
            v22 = qword_254600D00[*(*(v0 + 776) + v20)];
            sub_2545D86C8(v19, type metadata accessor for ElementID);
            if (v21 != v22)
            {
              goto LABEL_12;
            }

            sub_2545D8770(*(v0 + 776), *(v0 + 768), type metadata accessor for ToggleControlEntity);
            v23 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2545DC21C(0, *(v52 + 16) + 1, 1);
              v23 = v52;
            }

            v25 = *(v23 + 16);
            v24 = *(v23 + 24);
            if (v25 >= v24 >> 1)
            {
              sub_2545DC21C((v24 > 1), v25 + 1, 1);
              v23 = v52;
            }

            v26 = *(v0 + 768);
            *(v23 + 16) = v25 + 1;
            v52 = v23;
            sub_2545D8770(v26, v23 + v59 + v25 * v14, type metadata accessor for ToggleControlEntity);
LABEL_8:
            v12 = v15;
            v4 = v55;
            v11 = v58;
            if (v15 == v56)
            {
              goto LABEL_33;
            }
          }
        }

        v52 = MEMORY[0x277D84F90];
LABEL_33:
        v49 = *(v0 + 848);

        v38 = v52;
      }

      else
      {

        v38 = *(v0 + 408);
      }

      v50 = *(v0 + 8);

      return v50(v38);
    }

    else
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x259C124A0](*(v0 + 952), *(v0 + 864));
      }

      else
      {
        if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v4 = *(v10 + 8 * v9 + 32);
      }

      v39 = v4;
      *(v0 + 944) = v4;
      *(v0 + 952) = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_38;
      }

      v40 = *(v0 + 648);
      v41 = *(v0 + 456);
      v42 = *(v0 + 464);
      *(v0 + 960) = sub_2545FEC94();
      v43 = [v39 uniqueIdentifier];
      sub_2545FEAC4();

      v44 = *(v42 + 56);
      *(v0 + 968) = v44;
      *(v0 + 976) = (v42 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v44(v40, 0, 1, v41);
      LOBYTE(v43) = sub_2545FEC54();
      v45 = sub_2545FEC64();
      v47 = v46;
      v48 = swift_task_alloc();
      *(v0 + 984) = v48;
      *v48 = v0;
      v48[1] = sub_2545CF488;
      v4 = *(v0 + 656);
      v5 = *(v0 + 648);
      v6 = v43 & 1;
      v7 = v45;
      v8 = v47;

      return MEMORY[0x28216EA18](v4, v5, v6, v7, v8);
    }
  }

  else
  {
    v27 = *(v0 + 968);
    v28 = *(v0 + 944);
    v29 = *(v0 + 648);
    v30 = *(v0 + 456);
    (*(v1 + 32))(*(v0 + 688), v3, v2);
    *(v0 + 992) = sub_2545FEC94();
    v31 = [v28 uniqueIdentifier];
    sub_2545FEAC4();

    v27(v29, 0, 1, v30);
    v32 = sub_2545FEC84();
    v34 = v33;
    v35 = swift_task_alloc();
    *(v0 + 1000) = v35;
    *v35 = v0;
    v35[1] = sub_2545CFD20;
    v36 = *(v0 + 648);
    v37 = *(v0 + 616);

    return MEMORY[0x28216EA48](v37, v36, 1, v32, v34);
  }
}

uint64_t sub_2545CFD20()
{
  v1 = *v0;
  v2 = *(*v0 + 992);
  v3 = *(*v0 + 648);

  sub_2545B612C(v3, &qword_27F6064D0, &unk_2546002B0);
  v4 = *(v1 + 840);
  v5 = *(v1 + 832);

  return MEMORY[0x2822009F8](sub_2545CFE8C, v5, v4);
}

void *sub_2545CFE8C()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    sub_2545FEEC4();
    if (v4(v3, 1, v2) != 1)
    {
      sub_2545B612C(*(v0 + 616), &qword_27F606758, &unk_254601DD0);
    }
  }

  else
  {
    (*(v1 + 32))(*(v0 + 640), v3, v2);
  }

  v5 = *(v0 + 608);
  v6 = *(v0 + 600);
  v7 = *(v0 + 584);
  v8 = *(v0 + 576);
  sub_2545FEEB4();
  sub_2545FED24();

  sub_2545FEF54();
  sub_2545D8728(&qword_27F606718, MEMORY[0x277D16BC8], MEMORY[0x277D16BD0]);
  v9 = sub_2545FF254();
  v10 = MEMORY[0x277D84F90];
  *(v0 + 416) = MEMORY[0x277D84F90];
  sub_2545DBE04(0, v9 & ~(v9 >> 63), 0);
  v11 = *(v0 + 416);
  (*(v7 + 16))(v6, v5, v8);
  result = sub_2545FF244();
  if (v9 < 0)
  {
    goto LABEL_36;
  }

  v13 = *(v0 + 360);
  if (v9)
  {
    v14 = *(v0 + 352);
    v15 = *(v14 + 16);
    v16 = v14 + 40 * v13 + 32;
    v17 = *(v0 + 360);
    while (v15 != v17)
    {
      if (v13 < 0)
      {
        goto LABEL_33;
      }

      if (v17 >= *(v14 + 16))
      {
        goto LABEL_34;
      }

      sub_2545D850C(v16, v0 + 176);
      *(v0 + 416) = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2545DBE04((v18 > 1), v19 + 1, 1);
        v11 = *(v0 + 416);
      }

      *(v11 + 16) = v19 + 1;
      result = sub_2545D8570((v0 + 176), v11 + 40 * v19 + 32);
      v16 += 40;
      ++v17;
      if (!--v9)
      {
        *(v0 + 360) = v17;
        v10 = MEMORY[0x277D84F90];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = *(v0 + 360);
LABEL_16:
  v20 = *(v0 + 352);
  v21 = *(v20 + 16);
  if (v17 != v21)
  {
    while (v17 < v21)
    {
      sub_2545D850C(v20 + 32 + 40 * v17, v0 + 216);
      *(v0 + 360) = v17 + 1;
      sub_2545D8570((v0 + 216), v0 + 256);
      *(v0 + 416) = v11;
      v33 = *(v11 + 16);
      v32 = *(v11 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2545DBE04((v32 > 1), v33 + 1, 1);
        v11 = *(v0 + 416);
      }

      *(v11 + 16) = v33 + 1;
      result = sub_2545D8570((v0 + 256), v11 + 40 * v33 + 32);
      v21 = *(v20 + 16);
      v17 = *(v0 + 360);
      if (v17 == v21)
      {
        goto LABEL_17;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

LABEL_17:
  (*(*(v0 + 584) + 8))(*(v0 + 608), *(v0 + 576));

  v22 = *(v11 + 16);
  if (v22)
  {
    *(v0 + 424) = v10;
    sub_2545DBDE4(0, v22, 0);
    v23 = *(v0 + 424);
    v24 = v11 + 32;
    do
    {
      v25 = *(v0 + 728);
      sub_2545D850C(v24, v0 + 296);
      v26 = *(v0 + 320);
      v27 = *(v0 + 328);
      __swift_project_boxed_opaque_existential_1((v0 + 296), v26);
      sub_2545F3D54(v26, v27, v25);
      __swift_destroy_boxed_opaque_existential_0((v0 + 296));
      *(v0 + 424) = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2545DBDE4((v28 > 1), v29 + 1, 1);
        v23 = *(v0 + 424);
      }

      v30 = *(v0 + 728);
      v31 = *(v0 + 704);
      *(v23 + 16) = v29 + 1;
      sub_2545D8770(v30, v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29, type metadata accessor for ElementID);
      v24 += 40;
      --v22;
    }

    while (v22);
    sub_2545FEA14();
  }

  else
  {
    sub_2545FEA14();
    v23 = MEMORY[0x277D84F90];
  }

  *(v0 + 1008) = v23;
  v34 = *(v0 + 944);
  v35 = v34;
  v36 = swift_task_alloc();
  *(v0 + 1016) = v36;
  *v36 = v0;
  v36[1] = sub_2545D0380;

  return sub_2545EA1F8(v23, v34);
}

uint64_t sub_2545D0380(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1024) = v1;

  if (v1)
  {
    v5 = *(v4 + 944);

    v6 = *(v4 + 840);
    v7 = *(v4 + 832);
    v8 = sub_2545D88C0;
  }

  else
  {

    *(v4 + 1032) = a1;
    v6 = *(v4 + 840);
    v7 = *(v4 + 832);
    v8 = sub_2545D04E8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2545D04E8()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 944);
  v3 = *(v0 + 688);
  v4 = *(v0 + 672);
  v52 = *(v0 + 640);
  v54 = *(v0 + 664);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  v8 = sub_2545C2F44(sub_2545D8888, v7, v1, type metadata accessor for ToggleControlEntity, sub_2545DC21C, type metadata accessor for ToggleControlEntity);

  sub_2545C3480(v8, &qword_27F6067A0, &qword_254600C78, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity);

  (*(v5 + 8))(v52, v6);
  v9 = (*(v4 + 8))(v3, v54);
  v14 = *(v0 + 952);
  v15 = *(v0 + 864);
  if (v14 == *(v0 + 872))
  {
    sub_2545FEA14();

    v16 = *(v0 + 440);
    v53 = v16;
    if (v16 && (v51 = *(v16 + 16)) != 0)
    {
      v9 = *(v0 + 408);
      v50 = v9[2];
      if (v50)
      {
        v17 = 0;
        v47 = *(v0 + 704);
        v48 = *(v0 + 744);
        v18 = *(v0 + 696);
        v46 = MEMORY[0x277D84F90];
        v49 = *(v0 + 408);
        while (1)
        {
          if (v17 >= v9[2])
          {
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            return MEMORY[0x28216EA18](v9, v10, v11, v12, v13);
          }

          v19 = *(v48 + 72);
          v20 = v17 + 1;
          v55 = (*(v48 + 80) + 32) & ~*(v48 + 80);
          sub_2545D8660(v9 + v55 + v19 * v17, *(v0 + 776), type metadata accessor for ToggleControlEntity);
          v21 = v16 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
          v22 = *(v47 + 72);
          v23 = v51;
          while (1)
          {
            sub_2545D8660(v21, *(v0 + 736), type metadata accessor for ElementID);
            if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
            {
              break;
            }

            sub_2545D86C8(*(v0 + 736), type metadata accessor for ElementID);
LABEL_11:
            v21 += v22;
            if (!--v23)
            {
              sub_2545D86C8(*(v0 + 776), type metadata accessor for ToggleControlEntity);
              goto LABEL_7;
            }
          }

          v24 = *(v0 + 736);
          v25 = *(v18 + 20);
          v26 = qword_254600D00[*(v24 + v25)];
          v27 = qword_254600D00[*(*(v0 + 776) + v25)];
          sub_2545D86C8(v24, type metadata accessor for ElementID);
          if (v26 != v27)
          {
            goto LABEL_11;
          }

          sub_2545D8770(*(v0 + 776), *(v0 + 768), type metadata accessor for ToggleControlEntity);
          v28 = v46;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2545DC21C(0, *(v46 + 16) + 1, 1);
            v28 = v46;
          }

          v30 = *(v28 + 16);
          v29 = *(v28 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_2545DC21C((v29 > 1), v30 + 1, 1);
            v28 = v46;
          }

          v31 = *(v0 + 768);
          *(v28 + 16) = v30 + 1;
          v46 = v28;
          sub_2545D8770(v31, v28 + v55 + v30 * v19, type metadata accessor for ToggleControlEntity);
LABEL_7:
          v17 = v20;
          v9 = v49;
          v16 = v53;
          if (v20 == v50)
          {
            goto LABEL_29;
          }
        }
      }

      v46 = MEMORY[0x277D84F90];
LABEL_29:
      v43 = *(v0 + 848);

      v32 = v46;
    }

    else
    {

      v32 = *(v0 + 408);
    }

    v44 = *(v0 + 8);

    return v44(v32);
  }

  else
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x259C124A0](*(v0 + 952), *(v0 + 864));
    }

    else
    {
      if (v14 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v9 = *(v15 + 8 * v14 + 32);
    }

    v33 = v9;
    *(v0 + 944) = v9;
    *(v0 + 952) = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_34;
    }

    v34 = *(v0 + 648);
    v35 = *(v0 + 456);
    v36 = *(v0 + 464);
    *(v0 + 960) = sub_2545FEC94();
    v37 = [v33 uniqueIdentifier];
    sub_2545FEAC4();

    v38 = *(v36 + 56);
    *(v0 + 968) = v38;
    *(v0 + 976) = (v36 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v38(v34, 0, 1, v35);
    LOBYTE(v37) = sub_2545FEC54();
    v39 = sub_2545FEC64();
    v41 = v40;
    v42 = swift_task_alloc();
    *(v0 + 984) = v42;
    *v42 = v0;
    v42[1] = sub_2545CF488;
    v9 = *(v0 + 656);
    v10 = *(v0 + 648);
    v11 = v37 & 1;
    v12 = v39;
    v13 = v41;

    return MEMORY[0x28216EA18](v9, v10, v11, v12, v13);
  }
}

uint64_t sub_2545D0BBC()
{
  v57 = v0;
  v1 = v0[116];
  v2 = *(v1 + 16);
  v0[130] = v2;
  if (v2)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v3 = v0[54];
    v4 = sub_2545FF0A4();
    __swift_project_value_buffer(v4, qword_27F60ADD8);
    sub_2545FE8E4();
    sub_2545D8588(v3);
    v5 = sub_2545FF084();
    v6 = sub_2545FF474();

    sub_2545CE4A8(v3);
    v7 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      v54 = v10;
      *v9 = 136315394;
      v12 = *(v1 + 16);
      v13 = MEMORY[0x277D84F90];
      if (v12)
      {
        v48 = v10;
        v49 = v9;
        v50 = v6;
        v51 = v5;
        v14 = v0[116];
        v15 = v0[69];
        v16 = v0[58];
        v55 = MEMORY[0x277D84F90];
        sub_2545DBE24(0, v12, 0);
        v13 = v55;
        v17 = *(v15 + 16);
        v15 += 16;
        v18 = v14 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
        v52 = *(v15 + 56);
        v53 = v17;
        v19 = (v15 - 8);
        do
        {
          v20 = v0[70];
          v21 = v0[68];
          v53(v20, v18, v21);
          sub_2545FEB34();
          (*v19)(v20, v21);
          v55 = v13;
          v23 = *(v13 + 16);
          v22 = *(v13 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_2545DBE24((v22 > 1), v23 + 1, 1);
            v13 = v55;
          }

          v24 = v0[59];
          v25 = v0[57];
          *(v13 + 16) = v23 + 1;
          (*(v16 + 32))(v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v23, v24, v25);
          v18 += v52;
          --v12;
        }

        while (v12);
        v5 = v51;
        v8 = MEMORY[0x277D84F90];
        v6 = v50;
        v11 = v48;
        v9 = v49;
      }

      v35 = v0[54];
      v36 = MEMORY[0x259C121B0](v13, v0[57]);
      v38 = v37;

      v39 = sub_2545F0FB4(v36, v38, &v54);

      *(v9 + 4) = v39;
      *(v9 + 12) = 2080;
      if (v35)
      {
        if (v35 == 1)
        {
          v40 = 0xE300000000000000;
          v41 = 7105633;
        }

        else
        {
          v55 = 0x3A796C6E6FLL;
          v56 = 0xE500000000000000;
          sub_2545D8728(&qword_27F606768, type metadata accessor for HomeID, &protocol conformance descriptor for HomeID);
          v42 = sub_2545FF3A4();
          MEMORY[0x259C120B0](v42);

          v41 = v55;
          v40 = v56;
        }
      }

      else
      {
        v40 = 0xE700000000000000;
        v41 = 0x746E6572727563;
      }

      v43 = sub_2545F0FB4(v41, v40, &v54);

      *(v9 + 14) = v43;
      _os_log_impl(&dword_2545AB000, v5, v6, "[WidgetDataModel.orderedHomes] homes=%s using scope=%s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C12CB0](v11, -1, -1);
      MEMORY[0x259C12CB0](v9, -1, -1);
    }

    v44 = v0[69];
    v0[46] = v8;
    v0[131] = 0;
    v45 = v0[116];
    if (*(v45 + 16))
    {
      (*(v44 + 16))(v0[71], v45 + ((*(v44 + 80) + 32) & ~*(v44 + 80)), v0[68]);
      v0[132] = sub_2545FECD4();
      v47 = sub_2545FF334();

      return MEMORY[0x2822009F8](sub_2545D129C, v47, v46);
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_2545FEA14();

  if (qword_27F6063A0 != -1)
  {
LABEL_28:
    swift_once();
  }

  v26 = sub_2545FF0A4();
  __swift_project_value_buffer(v26, qword_27F60ADD8);
  v27 = sub_2545FF084();
  v28 = sub_2545FF454();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[106];
  if (v29)
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2545AB000, v27, v28, "WidgetDataModel.orderedHomes is empty", v31, 2u);
    MEMORY[0x259C12CB0](v31, -1, -1);
  }

  v32 = v0[1];
  v33 = MEMORY[0x277D84F90];

  return v32(v33);
}

uint64_t sub_2545D129C()
{
  sub_2545FEA14();
  v0[133] = sub_2545FEBC4();
  v1 = v0[105];
  v2 = v0[104];

  return MEMORY[0x2822009F8](sub_2545D1310, v2, v1);
}

uint64_t sub_2545D1310(uint64_t a1)
{
  sub_2545FEB34();
  v1[134] = sub_2545FECD4();
  v3 = sub_2545FF334();
  v1[135] = v3;
  v1[136] = v2;

  return MEMORY[0x2822009F8](sub_2545D13B4, v3, v2);
}

uint64_t sub_2545D13B4()
{
  v1 = v0[81];
  v2 = v0[64];
  v3 = v0[57];
  v4 = v0[58];
  (*(v4 + 16))(v1, v0[67], v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = sub_2545FECF4();
  sub_2545C3148(v1, v5, v6, v7, v8, v2);

  sub_2545B612C(v1, &qword_27F6064D0, &unk_2546002B0);
  v9 = swift_task_alloc();
  v0[137] = v9;
  *v9 = v0;
  v9[1] = sub_2545D1510;
  v10 = v0[85];
  v11 = v0[64];
  v12 = MEMORY[0x277D159D8];
  v13 = MEMORY[0x277D159D0];

  return MEMORY[0x28216E6A8](v10, v11, v12, v13);
}

uint64_t sub_2545D1510()
{
  v2 = *v1;
  *(*v1 + 1104) = v0;

  if (v0)
  {

    v3 = *(v2 + 1088);
    v4 = *(v2 + 1080);
    v5 = sub_2545D237C;
  }

  else
  {
    v3 = *(v2 + 1088);
    v4 = *(v2 + 1080);
    v5 = sub_2545D1640;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2545D1640()
{
  v1 = v0[67];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v1, type metadata accessor for HomeID);
  v2 = v0[105];
  v3 = v0[104];

  return MEMORY[0x2822009F8](sub_2545D16D4, v3, v2);
}

uint64_t sub_2545D16D4(uint64_t a1)
{
  v2 = v1[70];
  v3 = v1[69];
  v4 = v1[68];
  sub_2545FED04();
  v1[139] = sub_2545FEB44();
  v5 = *(v3 + 8);
  v1[140] = v5;
  v1[141] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  v1[142] = sub_2545FECD4();
  v7 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545D17CC, v7, v6);
}

uint64_t sub_2545D17CC()
{
  sub_2545FEA14();
  v0[143] = sub_2545FEBC4();
  v1 = v0[105];
  v2 = v0[104];

  return MEMORY[0x2822009F8](sub_2545D1840, v2, v1);
}

uint64_t sub_2545D1840(uint64_t a1)
{
  sub_2545FEB34();
  *(v1 + 1152) = sub_2545FECD4();
  v2 = swift_task_alloc();
  *(v1 + 1160) = v2;
  *v2 = v1;
  v2[1] = sub_2545D18F0;

  return MEMORY[0x28216E6C0]();
}

uint64_t sub_2545D18F0(uint64_t a1)
{
  *(*v1 + 1168) = a1;

  sub_2545FEF44();
  sub_2545D8728(&qword_27F606698, MEMORY[0x277D16AF0], MEMORY[0x277D16AF8]);
  v3 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545D1A48, v3, v2);
}

uint64_t sub_2545D1A48()
{
  v0[147] = sub_2545FEF24();
  sub_2545FEA14();
  v2 = sub_2545FF334();
  v0[148] = v2;
  v0[149] = v1;

  return MEMORY[0x2822009F8](sub_2545D1AF0, v2, v1);
}

uint64_t sub_2545D1AF0()
{
  v0[47] = v0[147];
  v0[150] = sub_2545FF344();
  v2 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545D1B84, v2, v1);
}

uint64_t sub_2545D1B84()
{
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066A0, &qword_254600BA0);
  sub_2545B4F2C(&qword_27F6066A8, &qword_27F6066A0, &qword_254600BA0, MEMORY[0x277D83988]);
  v0[151] = sub_2545FF3E4();
  v1 = v0[149];
  v2 = v0[148];

  return MEMORY[0x2822009F8](sub_2545D1C50, v2, v1);
}

uint64_t sub_2545D1C50()
{
  v1 = v0[66];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v1, type metadata accessor for HomeID);

  v2 = v0[105];
  v3 = v0[104];

  return MEMORY[0x2822009F8](sub_2545D1CF8, v3, v2);
}

unint64_t sub_2545D1CF8()
{
  result = *(v0 + 1208);
  v59 = *(result + 16);
  if (v59)
  {
    v2 = 0;
    v3 = *(*(v0 + 488) + 80);
    v58 = result + ((v3 + 32) & ~v3);
    v4 = MEMORY[0x277D84F98];
    v57 = *(v0 + 1208);
    while (v2 < *(result + 16))
    {
      v6 = *(v0 + 496);
      v5 = *(v0 + 504);
      v7 = *(v0 + 480);
      v8 = *(v0 + 488);
      v9 = *(v8 + 16);
      v10 = *(v8 + 72);
      v9(v5, v58 + v10 * v2, v7);
      v11 = sub_2545FEE54();
      v9(v6, v5, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 384) = v4;
      result = sub_2545C56D4(v11);
      v14 = v4[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_49;
      }

      v18 = v13;
      if (v4[3] >= v17)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = result;
          sub_2545C8780();
          result = v26;
        }
      }

      else
      {
        sub_2545C7AB4(v17, isUniquelyReferenced_nonNull_native);
        result = sub_2545C56D4(v11);
        if ((v18 & 1) != (v19 & 1))
        {

          return sub_2545FF7D4();
        }
      }

      v4 = *(v0 + 384);
      v20 = *(v0 + 496);
      v21 = *(v0 + 504);
      v22 = *(v0 + 480);
      v23 = *(v0 + 488);
      if (v18)
      {
        (*(v23 + 40))(v4[7] + result * v10, v20, *(v0 + 480));
        (*(v23 + 8))(v21, v22);
      }

      else
      {
        v4[(result >> 6) + 8] |= 1 << result;
        *(v4[6] + 8 * result) = v11;
        (*(v23 + 32))(v4[7] + result * v10, v20, v22);
        result = (*(v23 + 8))(v21, v22);
        v24 = v4[2];
        v16 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v16)
        {
          goto LABEL_51;
        }

        v4[2] = v25;
      }

      ++v2;
      result = v57;
      if (v59 == v2)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_48;
  }

LABEL_15:
  v27 = *(v0 + 600);
  v28 = *(v0 + 592);
  v29 = *(v0 + 584);
  v30 = *(v0 + 576);

  sub_2545FED24();

  sub_2545FEF54();
  sub_2545D8728(&qword_27F606718, MEMORY[0x277D16BC8], MEMORY[0x277D16BD0]);
  v31 = sub_2545FF254();
  v32 = MEMORY[0x277D84F90];
  *(v0 + 392) = MEMORY[0x277D84F90];
  sub_2545DBE04(0, v31 & ~(v31 >> 63), 0);
  v33 = *(v0 + 392);
  (*(v29 + 16))(v27, v28, v30);
  result = sub_2545FF244();
  if (v31 < 0)
  {
LABEL_52:
    __break(1u);
    return result;
  }

  v34 = *(v0 + 344);
  if (v31)
  {
    v35 = *(v0 + 336);
    v36 = *(v35 + 16);
    v37 = v35 + 40 * v34 + 32;
    v38 = *(v0 + 344);
    while (v36 != v38)
    {
      if (v34 < 0)
      {
        goto LABEL_46;
      }

      if (v38 >= *(v35 + 16))
      {
        goto LABEL_47;
      }

      sub_2545D850C(v37, v0 + 16);
      *(v0 + 392) = v33;
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_2545DBE04((v39 > 1), v40 + 1, 1);
        v33 = *(v0 + 392);
      }

      *(v33 + 16) = v40 + 1;
      result = sub_2545D8570((v0 + 16), v33 + 40 * v40 + 32);
      v37 += 40;
      ++v38;
      if (!--v31)
      {
        *(v0 + 344) = v38;
        v32 = MEMORY[0x277D84F90];
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
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

  v38 = *(v0 + 344);
LABEL_26:
  v41 = *(v0 + 336);
  v42 = *(v41 + 16);
  if (v38 != v42)
  {
    while (v38 < v42)
    {
      sub_2545D850C(v41 + 32 + 40 * v38, v0 + 56);
      *(v0 + 344) = v38 + 1;
      sub_2545D8570((v0 + 56), v0 + 96);
      *(v0 + 392) = v33;
      v54 = *(v33 + 16);
      v53 = *(v33 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_2545DBE04((v53 > 1), v54 + 1, 1);
        v33 = *(v0 + 392);
      }

      *(v33 + 16) = v54 + 1;
      result = sub_2545D8570((v0 + 96), v33 + 40 * v54 + 32);
      v42 = *(v41 + 16);
      v38 = *(v0 + 344);
      if (v38 == v42)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_50;
  }

LABEL_27:
  (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));

  v43 = *(v33 + 16);
  if (v43)
  {
    *(v0 + 400) = v32;
    sub_2545DBDE4(0, v43, 0);
    v44 = *(v0 + 400);
    v45 = v33 + 32;
    do
    {
      v46 = *(v0 + 712);
      sub_2545D850C(v45, v0 + 136);
      v47 = *(v0 + 160);
      v48 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v47);
      sub_2545F3D54(v47, v48, v46);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      *(v0 + 400) = v44;
      v50 = *(v44 + 16);
      v49 = *(v44 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_2545DBDE4((v49 > 1), v50 + 1, 1);
        v44 = *(v0 + 400);
      }

      v51 = *(v0 + 712);
      v52 = *(v0 + 704);
      *(v44 + 16) = v50 + 1;
      sub_2545D8770(v51, v44 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v50, type metadata accessor for ElementID);
      v45 += 40;
      --v43;
    }

    while (v43);
    sub_2545FEA14();
  }

  else
  {
    sub_2545FEA14();
    v44 = MEMORY[0x277D84F90];
  }

  *(v0 + 1216) = v44;
  v55 = swift_task_alloc();
  *(v0 + 1224) = v55;
  *v55 = v0;
  v55[1] = sub_2545D2410;
  v56 = *(v0 + 1112);

  return sub_2545EA1F8(v44, v56);
}

uint64_t sub_2545D237C()
{
  v1 = v0[67];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v1, type metadata accessor for HomeID);
  v2 = v0[105];
  v3 = v0[104];

  return MEMORY[0x2822009F8](sub_2545D886C, v3, v2);
}

uint64_t sub_2545D2410(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1232) = v1;

  if (v1)
  {

    v5 = v4[105];
    v6 = v4[104];
    v7 = sub_2545D88B8;
  }

  else
  {
    v4[155] = a1;
    v5 = v4[105];
    v6 = v4[104];
    v7 = sub_2545D2564;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2545D2564()
{
  v1 = *(v0 + 1240);
  v44 = *(v0 + 1120);
  v2 = *(v0 + 1112);
  v47 = *(v0 + 1040);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 568);
  v6 = *(v0 + 544);
  v40 = *(v0 + 1048) + 1;
  v42 = *(v0 + 664);
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  v8 = sub_2545C2F44(sub_2545D85FC, v7, v1, type metadata accessor for ToggleControlEntity, sub_2545DC21C, type metadata accessor for ToggleControlEntity);

  sub_2545C3480(v8, &qword_27F6067A0, &qword_254600C78, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity);

  v44(v5, v6);
  v9 = (*(v4 + 8))(v3, v42);
  if (v40 == v47)
  {
    v12 = *(v0 + 440);

    sub_2545FEA14();
    if (v12 && (v46 = *(v0 + 440), (v45 = *(v46 + 16)) != 0))
    {
      v9 = *(v0 + 368);
      v43 = *(v9 + 2);
      if (v43)
      {
        v13 = 0;
        v39 = *(v0 + 744);
        v14 = *(v0 + 696);
        v38 = MEMORY[0x277D84F90];
        v41 = *(v0 + 368);
        while (1)
        {
          if (v13 >= *(v9 + 2))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            return MEMORY[0x2822009F8](v9, v10, v11);
          }

          v15 = *(v0 + 704);
          v16 = (*(v39 + 80) + 32) & ~*(v39 + 80);
          v17 = v13 + 1;
          v48 = *(v39 + 72);
          sub_2545D8660(v9 + v16 + v48 * v13, *(v0 + 760), type metadata accessor for ToggleControlEntity);
          v18 = v46 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
          v19 = *(v15 + 72);
          v20 = v45;
          while (1)
          {
            sub_2545D8660(v18, *(v0 + 720), type metadata accessor for ElementID);
            if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
            {
              break;
            }

            sub_2545D86C8(*(v0 + 720), type metadata accessor for ElementID);
LABEL_11:
            v18 += v19;
            if (!--v20)
            {
              sub_2545D86C8(*(v0 + 760), type metadata accessor for ToggleControlEntity);
              goto LABEL_7;
            }
          }

          v21 = *(v0 + 720);
          v22 = *(v14 + 20);
          v23 = qword_254600D00[*(v21 + v22)];
          v24 = qword_254600D00[*(*(v0 + 760) + v22)];
          sub_2545D86C8(v21, type metadata accessor for ElementID);
          if (v23 != v24)
          {
            goto LABEL_11;
          }

          sub_2545D8770(*(v0 + 760), *(v0 + 752), type metadata accessor for ToggleControlEntity);
          v25 = v38;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2545DC21C(0, *(v38 + 16) + 1, 1);
            v25 = v38;
          }

          v27 = *(v25 + 16);
          v26 = *(v25 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_2545DC21C((v26 > 1), v27 + 1, 1);
            v25 = v38;
          }

          v28 = *(v0 + 752);
          *(v25 + 16) = v27 + 1;
          v38 = v25;
          sub_2545D8770(v28, v25 + v16 + v27 * v48, type metadata accessor for ToggleControlEntity);
LABEL_7:
          v13 = v17;
          v9 = v41;
          if (v17 == v43)
          {
            goto LABEL_25;
          }
        }
      }

      v38 = MEMORY[0x277D84F90];
LABEL_25:
      v35 = *(v0 + 848);

      v34 = v38;
    }

    else
    {

      v34 = *(v0 + 368);
    }

    v36 = *(v0 + 8);

    return v36(v34);
  }

  else
  {
    v29 = *(v0 + 1048) + 1;
    *(v0 + 1048) = v29;
    v30 = *(v0 + 928);
    if (v29 >= *(v30 + 16))
    {
      goto LABEL_30;
    }

    (*(*(v0 + 552) + 16))(*(v0 + 568), v30 + ((*(*(v0 + 552) + 80) + 32) & ~*(*(v0 + 552) + 80)) + *(*(v0 + 552) + 72) * v29, *(v0 + 544));
    *(v0 + 1056) = sub_2545FECD4();
    v31 = sub_2545FF334();
    v33 = v32;
    v9 = sub_2545D129C;
    v10 = v31;
    v11 = v33;

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_2545D2BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[55] = a2;
  v3[56] = a3;
  v3[54] = a1;
  v4 = sub_2545FEB04();
  v3[57] = v4;
  v3[58] = *(v4 - 8);
  v3[59] = swift_task_alloc();
  v5 = sub_2545FEE64();
  v3[60] = v5;
  v3[61] = *(v5 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606688, &qword_254601E20);
  v3[64] = swift_task_alloc();
  v3[65] = type metadata accessor for HomeID(0);
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v6 = sub_2545FEB64();
  v3[68] = v6;
  v3[69] = *(v6 - 8);
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v7 = sub_2545FEF84();
  v3[72] = v7;
  v3[73] = *(v7 - 8);
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606758, &unk_254601DD0);
  v3[77] = swift_task_alloc();
  v8 = sub_2545FEED4();
  v3[78] = v8;
  v3[79] = *(v8 - 8);
  v3[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  v3[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606760, &qword_254600C40);
  v3[82] = swift_task_alloc();
  v9 = sub_2545FED84();
  v3[83] = v9;
  v3[84] = *(v9 - 8);
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v10 = type metadata accessor for ElementID(0);
  v3[87] = v10;
  v3[88] = *(v10 - 8);
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = *(type metadata accessor for HomeSingleTileEntity(0) - 8);
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v3[98] = sub_2545FF354();
  v3[99] = sub_2545FF344();
  type metadata accessor for IntentsService();
  v3[100] = swift_initStaticObject();
  v11 = swift_task_alloc();
  v3[101] = v11;
  *v11 = v3;
  v11[1] = sub_2545D30F8;

  return sub_2545B0448();
}

uint64_t sub_2545D30F8(uint64_t a1)
{
  v3 = *v2;
  v3[102] = a1;
  v3[103] = v1;

  v4 = sub_2545FF334();
  if (v1)
  {
    v6 = sub_2545D8814;
  }

  else
  {
    v3[104] = v4;
    v3[105] = v5;
    v6 = sub_2545D326C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2545D326C()
{
  v1 = *(v0 + 816);
  if (!v1 || (v1, v2 = sub_2545B027C(), (*(v0 + 848) = v2) == 0))
  {
    sub_2545FEA14();
    v10 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  *(v0 + 856) = sub_2545FECC4();
  if (sub_2545FECA4() != 7)
  {
    *(v0 + 880) = sub_2545FEBD4();
    *(v0 + 888) = sub_2545FECE4();
    *(v0 + 896) = sub_2545FECD4();
    *(v0 + 904) = sub_2545D8728(&qword_27F6064D8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
    v14 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545D3978, v14, v13);
  }

  v3 = sub_2545FACE8(*(v0 + 432));
  *(v0 + 864) = v3;
  *(v0 + 408) = MEMORY[0x277D84F90];
  if (!(v3 >> 62))
  {
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 872) = v7;
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

  v25 = v3;
  v26 = sub_2545FF674();
  v3 = v25;
  *(v0 + 872) = v26;
  if (!v26)
  {
LABEL_22:
    sub_2545FEA14();

    v27 = *(v0 + 440);
    if (v27)
    {
      v49 = *(v27 + 16);
      if (v49)
      {
        v3 = *(v0 + 408);
        v48 = *(v3 + 16);
        if (v48)
        {
          v28 = 0;
          v44 = *(v0 + 704);
          v45 = *(v0 + 744);
          v29 = *(v0 + 696);
          v51 = MEMORY[0x277D84F90];
          v46 = *(v0 + 440);
          v47 = *(v0 + 408);
          while (1)
          {
            if (v28 >= *(v3 + 16))
            {
              __break(1u);
LABEL_43:
              __break(1u);
              return MEMORY[0x28216EA18](v3, v8, v4, v5, v6);
            }

            v30 = (*(v45 + 80) + 32) & ~*(v45 + 80);
            v31 = v28 + 1;
            v50 = *(v45 + 72);
            sub_2545D8660(v3 + v30 + v50 * v28, *(v0 + 776), type metadata accessor for HomeSingleTileEntity);
            v32 = v27 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
            v33 = *(v44 + 72);
            v34 = v49;
            while (1)
            {
              sub_2545D8660(v32, *(v0 + 736), type metadata accessor for ElementID);
              if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
              {
                break;
              }

              sub_2545D86C8(*(v0 + 736), type metadata accessor for ElementID);
LABEL_31:
              v32 += v33;
              if (!--v34)
              {
                sub_2545D86C8(*(v0 + 776), type metadata accessor for HomeSingleTileEntity);
                goto LABEL_27;
              }
            }

            v35 = *(v0 + 736);
            v36 = *(v29 + 20);
            v37 = qword_254600D00[*(v35 + v36)];
            v38 = qword_254600D00[*(*(v0 + 776) + v36)];
            sub_2545D86C8(v35, type metadata accessor for ElementID);
            if (v37 != v38)
            {
              goto LABEL_31;
            }

            sub_2545D8770(*(v0 + 776), *(v0 + 768), type metadata accessor for HomeSingleTileEntity);
            v39 = v51;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2545DC25C(0, *(v51 + 16) + 1, 1);
              v39 = v51;
            }

            v41 = *(v39 + 16);
            v40 = *(v39 + 24);
            if (v41 >= v40 >> 1)
            {
              sub_2545DC25C((v40 > 1), v41 + 1, 1);
              v39 = v51;
            }

            v42 = *(v0 + 768);
            *(v39 + 16) = v41 + 1;
            v51 = v39;
            sub_2545D8770(v42, v39 + v30 + v41 * v50, type metadata accessor for HomeSingleTileEntity);
LABEL_27:
            v28 = v31;
            v3 = v47;
            v27 = v46;
            if (v31 == v48)
            {
              goto LABEL_41;
            }
          }
        }

        v51 = MEMORY[0x277D84F90];
LABEL_41:
        v43 = *(v0 + 848);

LABEL_10:

        v11 = *(v0 + 8);

        return v11(v51);
      }
    }

    v10 = *(v0 + 408);
LABEL_9:
    v51 = v10;
    goto LABEL_10;
  }

LABEL_6:
  v8 = *(v0 + 864);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x259C124A0](0);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    v9 = *(v8 + 32);
  }

  v15 = v9;
  *(v0 + 944) = v9;
  *(v0 + 952) = 1;
  v16 = *(v0 + 648);
  v17 = *(v0 + 456);
  v18 = *(v0 + 464);
  *(v0 + 960) = sub_2545FEC94();
  v19 = [v15 uniqueIdentifier];
  sub_2545FEAC4();

  v20 = *(v18 + 56);
  *(v0 + 968) = v20;
  *(v0 + 976) = (v18 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v20(v16, 0, 1, v17);
  LOBYTE(v16) = sub_2545FEC54();
  v21 = sub_2545FEC64();
  v23 = v22;
  v24 = swift_task_alloc();
  *(v0 + 984) = v24;
  *v24 = v0;
  v24[1] = sub_2545D3B4C;
  v3 = *(v0 + 656);
  v8 = *(v0 + 648);
  v4 = v16 & 1;
  v5 = v21;
  v6 = v23;

  return MEMORY[0x28216EA18](v3, v8, v4, v5, v6);
}

uint64_t sub_2545D3978()
{
  sub_2545FEA14();
  v0[114] = sub_2545FEBC4();
  v1 = swift_task_alloc();
  v0[115] = v1;
  *v1 = v0;
  v1[1] = sub_2545D3A24;
  v2 = v0[54];

  return sub_2545DD5C0(v2);
}

uint64_t sub_2545D3A24(uint64_t a1)
{
  v3 = *v2;
  v3[116] = a1;
  v3[117] = v1;

  if (v1)
  {
    v4 = v3[105];
    v5 = v3[104];
    v6 = sub_2545D88BC;
  }

  else
  {
    sub_2545FEA14();
    v4 = v3[105];
    v5 = v3[104];
    v6 = sub_2545D5280;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2545D3B4C()
{
  v1 = *v0;
  v2 = *(*v0 + 960);
  v3 = *(*v0 + 648);

  sub_2545B612C(v3, &qword_27F6064D0, &unk_2546002B0);
  v4 = *(v1 + 840);
  v5 = *(v1 + 832);

  return MEMORY[0x2822009F8](sub_2545D3CB8, v5, v4);
}

uint64_t sub_2545D3CB8()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {

    v4 = sub_2545B612C(v3, &qword_27F606760, &qword_254600C40);
    v9 = *(v0 + 952);
    v10 = *(v0 + 864);
    if (v9 == *(v0 + 872))
    {
      sub_2545FEA14();

      v11 = *(v0 + 440);
      v58 = v11;
      if (v11 && (v57 = *(v11 + 16)) != 0)
      {
        v4 = *(v0 + 408);
        v56 = v4[2];
        if (v56)
        {
          v12 = 0;
          v53 = *(v0 + 704);
          v54 = *(v0 + 744);
          v13 = *(v0 + 696);
          v52 = MEMORY[0x277D84F90];
          v55 = *(v0 + 408);
          while (1)
          {
            if (v12 >= v4[2])
            {
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              return MEMORY[0x28216EA18](v4, v5, v6, v7, v8);
            }

            v14 = *(v54 + 72);
            v15 = v12 + 1;
            v59 = (*(v54 + 80) + 32) & ~*(v54 + 80);
            sub_2545D8660(v4 + v59 + v14 * v12, *(v0 + 776), type metadata accessor for HomeSingleTileEntity);
            v16 = v11 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
            v17 = *(v53 + 72);
            v18 = v57;
            while (1)
            {
              sub_2545D8660(v16, *(v0 + 736), type metadata accessor for ElementID);
              if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
              {
                break;
              }

              sub_2545D86C8(*(v0 + 736), type metadata accessor for ElementID);
LABEL_12:
              v16 += v17;
              if (!--v18)
              {
                sub_2545D86C8(*(v0 + 776), type metadata accessor for HomeSingleTileEntity);
                goto LABEL_8;
              }
            }

            v19 = *(v0 + 736);
            v20 = *(v13 + 20);
            v21 = qword_254600D00[*(v19 + v20)];
            v22 = qword_254600D00[*(*(v0 + 776) + v20)];
            sub_2545D86C8(v19, type metadata accessor for ElementID);
            if (v21 != v22)
            {
              goto LABEL_12;
            }

            sub_2545D8770(*(v0 + 776), *(v0 + 768), type metadata accessor for HomeSingleTileEntity);
            v23 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2545DC25C(0, *(v52 + 16) + 1, 1);
              v23 = v52;
            }

            v25 = *(v23 + 16);
            v24 = *(v23 + 24);
            if (v25 >= v24 >> 1)
            {
              sub_2545DC25C((v24 > 1), v25 + 1, 1);
              v23 = v52;
            }

            v26 = *(v0 + 768);
            *(v23 + 16) = v25 + 1;
            v52 = v23;
            sub_2545D8770(v26, v23 + v59 + v25 * v14, type metadata accessor for HomeSingleTileEntity);
LABEL_8:
            v12 = v15;
            v4 = v55;
            v11 = v58;
            if (v15 == v56)
            {
              goto LABEL_33;
            }
          }
        }

        v52 = MEMORY[0x277D84F90];
LABEL_33:
        v49 = *(v0 + 848);

        v38 = v52;
      }

      else
      {

        v38 = *(v0 + 408);
      }

      v50 = *(v0 + 8);

      return v50(v38);
    }

    else
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x259C124A0](*(v0 + 952), *(v0 + 864));
      }

      else
      {
        if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v4 = *(v10 + 8 * v9 + 32);
      }

      v39 = v4;
      *(v0 + 944) = v4;
      *(v0 + 952) = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_38;
      }

      v40 = *(v0 + 648);
      v41 = *(v0 + 456);
      v42 = *(v0 + 464);
      *(v0 + 960) = sub_2545FEC94();
      v43 = [v39 uniqueIdentifier];
      sub_2545FEAC4();

      v44 = *(v42 + 56);
      *(v0 + 968) = v44;
      *(v0 + 976) = (v42 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v44(v40, 0, 1, v41);
      LOBYTE(v43) = sub_2545FEC54();
      v45 = sub_2545FEC64();
      v47 = v46;
      v48 = swift_task_alloc();
      *(v0 + 984) = v48;
      *v48 = v0;
      v48[1] = sub_2545D3B4C;
      v4 = *(v0 + 656);
      v5 = *(v0 + 648);
      v6 = v43 & 1;
      v7 = v45;
      v8 = v47;

      return MEMORY[0x28216EA18](v4, v5, v6, v7, v8);
    }
  }

  else
  {
    v27 = *(v0 + 968);
    v28 = *(v0 + 944);
    v29 = *(v0 + 648);
    v30 = *(v0 + 456);
    (*(v1 + 32))(*(v0 + 688), v3, v2);
    *(v0 + 992) = sub_2545FEC94();
    v31 = [v28 uniqueIdentifier];
    sub_2545FEAC4();

    v27(v29, 0, 1, v30);
    v32 = sub_2545FEC84();
    v34 = v33;
    v35 = swift_task_alloc();
    *(v0 + 1000) = v35;
    *v35 = v0;
    v35[1] = sub_2545D43E4;
    v36 = *(v0 + 648);
    v37 = *(v0 + 616);

    return MEMORY[0x28216EA48](v37, v36, 1, v32, v34);
  }
}

uint64_t sub_2545D43E4()
{
  v1 = *v0;
  v2 = *(*v0 + 992);
  v3 = *(*v0 + 648);

  sub_2545B612C(v3, &qword_27F6064D0, &unk_2546002B0);
  v4 = *(v1 + 840);
  v5 = *(v1 + 832);

  return MEMORY[0x2822009F8](sub_2545D4550, v5, v4);
}

void *sub_2545D4550()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    sub_2545FEEC4();
    if (v4(v3, 1, v2) != 1)
    {
      sub_2545B612C(*(v0 + 616), &qword_27F606758, &unk_254601DD0);
    }
  }

  else
  {
    (*(v1 + 32))(*(v0 + 640), v3, v2);
  }

  v5 = *(v0 + 608);
  v6 = *(v0 + 600);
  v7 = *(v0 + 584);
  v8 = *(v0 + 576);
  sub_2545FEEB4();
  sub_2545FED24();

  sub_2545FEF54();
  sub_2545D8728(&qword_27F606718, MEMORY[0x277D16BC8], MEMORY[0x277D16BD0]);
  v9 = sub_2545FF254();
  v10 = MEMORY[0x277D84F90];
  *(v0 + 416) = MEMORY[0x277D84F90];
  sub_2545DBE04(0, v9 & ~(v9 >> 63), 0);
  v11 = *(v0 + 416);
  (*(v7 + 16))(v6, v5, v8);
  result = sub_2545FF244();
  if (v9 < 0)
  {
    goto LABEL_36;
  }

  v13 = *(v0 + 360);
  if (v9)
  {
    v14 = *(v0 + 352);
    v15 = *(v14 + 16);
    v16 = v14 + 40 * v13 + 32;
    v17 = *(v0 + 360);
    while (v15 != v17)
    {
      if (v13 < 0)
      {
        goto LABEL_33;
      }

      if (v17 >= *(v14 + 16))
      {
        goto LABEL_34;
      }

      sub_2545D850C(v16, v0 + 176);
      *(v0 + 416) = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2545DBE04((v18 > 1), v19 + 1, 1);
        v11 = *(v0 + 416);
      }

      *(v11 + 16) = v19 + 1;
      result = sub_2545D8570((v0 + 176), v11 + 40 * v19 + 32);
      v16 += 40;
      ++v17;
      if (!--v9)
      {
        *(v0 + 360) = v17;
        v10 = MEMORY[0x277D84F90];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = *(v0 + 360);
LABEL_16:
  v20 = *(v0 + 352);
  v21 = *(v20 + 16);
  if (v17 != v21)
  {
    while (v17 < v21)
    {
      sub_2545D850C(v20 + 32 + 40 * v17, v0 + 216);
      *(v0 + 360) = v17 + 1;
      sub_2545D8570((v0 + 216), v0 + 256);
      *(v0 + 416) = v11;
      v33 = *(v11 + 16);
      v32 = *(v11 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2545DBE04((v32 > 1), v33 + 1, 1);
        v11 = *(v0 + 416);
      }

      *(v11 + 16) = v33 + 1;
      result = sub_2545D8570((v0 + 256), v11 + 40 * v33 + 32);
      v21 = *(v20 + 16);
      v17 = *(v0 + 360);
      if (v17 == v21)
      {
        goto LABEL_17;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

LABEL_17:
  (*(*(v0 + 584) + 8))(*(v0 + 608), *(v0 + 576));

  v22 = *(v11 + 16);
  if (v22)
  {
    *(v0 + 424) = v10;
    sub_2545DBDE4(0, v22, 0);
    v23 = *(v0 + 424);
    v24 = v11 + 32;
    do
    {
      v25 = *(v0 + 728);
      sub_2545D850C(v24, v0 + 296);
      v26 = *(v0 + 320);
      v27 = *(v0 + 328);
      __swift_project_boxed_opaque_existential_1((v0 + 296), v26);
      sub_2545F3D54(v26, v27, v25);
      __swift_destroy_boxed_opaque_existential_0((v0 + 296));
      *(v0 + 424) = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2545DBDE4((v28 > 1), v29 + 1, 1);
        v23 = *(v0 + 424);
      }

      v30 = *(v0 + 728);
      v31 = *(v0 + 704);
      *(v23 + 16) = v29 + 1;
      sub_2545D8770(v30, v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29, type metadata accessor for ElementID);
      v24 += 40;
      --v22;
    }

    while (v22);
    sub_2545FEA14();
  }

  else
  {
    sub_2545FEA14();
    v23 = MEMORY[0x277D84F90];
  }

  *(v0 + 1008) = v23;
  v34 = *(v0 + 944);
  v35 = v34;
  v36 = swift_task_alloc();
  *(v0 + 1016) = v36;
  *v36 = v0;
  v36[1] = sub_2545D4A44;

  return sub_2545EA1F8(v23, v34);
}

uint64_t sub_2545D4A44(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1024) = v1;

  if (v1)
  {
    v5 = *(v4 + 944);

    v6 = *(v4 + 840);
    v7 = *(v4 + 832);
    v8 = sub_2545D88C0;
  }

  else
  {

    *(v4 + 1032) = a1;
    v6 = *(v4 + 840);
    v7 = *(v4 + 832);
    v8 = sub_2545D4BAC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2545D4BAC()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 944);
  v3 = *(v0 + 688);
  v4 = *(v0 + 672);
  v52 = *(v0 + 640);
  v54 = *(v0 + 664);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  v8 = sub_2545C2F44(sub_2545D8870, v7, v1, type metadata accessor for HomeSingleTileEntity, sub_2545DC25C, type metadata accessor for HomeSingleTileEntity);

  sub_2545C3480(v8, &qword_27F6066D8, &qword_254600BC8, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity);

  (*(v5 + 8))(v52, v6);
  v9 = (*(v4 + 8))(v3, v54);
  v14 = *(v0 + 952);
  v15 = *(v0 + 864);
  if (v14 == *(v0 + 872))
  {
    sub_2545FEA14();

    v16 = *(v0 + 440);
    v53 = v16;
    if (v16 && (v51 = *(v16 + 16)) != 0)
    {
      v9 = *(v0 + 408);
      v50 = v9[2];
      if (v50)
      {
        v17 = 0;
        v47 = *(v0 + 704);
        v48 = *(v0 + 744);
        v18 = *(v0 + 696);
        v46 = MEMORY[0x277D84F90];
        v49 = *(v0 + 408);
        while (1)
        {
          if (v17 >= v9[2])
          {
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            return MEMORY[0x28216EA18](v9, v10, v11, v12, v13);
          }

          v19 = *(v48 + 72);
          v20 = v17 + 1;
          v55 = (*(v48 + 80) + 32) & ~*(v48 + 80);
          sub_2545D8660(v9 + v55 + v19 * v17, *(v0 + 776), type metadata accessor for HomeSingleTileEntity);
          v21 = v16 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
          v22 = *(v47 + 72);
          v23 = v51;
          while (1)
          {
            sub_2545D8660(v21, *(v0 + 736), type metadata accessor for ElementID);
            if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
            {
              break;
            }

            sub_2545D86C8(*(v0 + 736), type metadata accessor for ElementID);
LABEL_11:
            v21 += v22;
            if (!--v23)
            {
              sub_2545D86C8(*(v0 + 776), type metadata accessor for HomeSingleTileEntity);
              goto LABEL_7;
            }
          }

          v24 = *(v0 + 736);
          v25 = *(v18 + 20);
          v26 = qword_254600D00[*(v24 + v25)];
          v27 = qword_254600D00[*(*(v0 + 776) + v25)];
          sub_2545D86C8(v24, type metadata accessor for ElementID);
          if (v26 != v27)
          {
            goto LABEL_11;
          }

          sub_2545D8770(*(v0 + 776), *(v0 + 768), type metadata accessor for HomeSingleTileEntity);
          v28 = v46;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2545DC25C(0, *(v46 + 16) + 1, 1);
            v28 = v46;
          }

          v30 = *(v28 + 16);
          v29 = *(v28 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_2545DC25C((v29 > 1), v30 + 1, 1);
            v28 = v46;
          }

          v31 = *(v0 + 768);
          *(v28 + 16) = v30 + 1;
          v46 = v28;
          sub_2545D8770(v31, v28 + v55 + v30 * v19, type metadata accessor for HomeSingleTileEntity);
LABEL_7:
          v17 = v20;
          v9 = v49;
          v16 = v53;
          if (v20 == v50)
          {
            goto LABEL_29;
          }
        }
      }

      v46 = MEMORY[0x277D84F90];
LABEL_29:
      v43 = *(v0 + 848);

      v32 = v46;
    }

    else
    {

      v32 = *(v0 + 408);
    }

    v44 = *(v0 + 8);

    return v44(v32);
  }

  else
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x259C124A0](*(v0 + 952), *(v0 + 864));
    }

    else
    {
      if (v14 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v9 = *(v15 + 8 * v14 + 32);
    }

    v33 = v9;
    *(v0 + 944) = v9;
    *(v0 + 952) = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_34;
    }

    v34 = *(v0 + 648);
    v35 = *(v0 + 456);
    v36 = *(v0 + 464);
    *(v0 + 960) = sub_2545FEC94();
    v37 = [v33 uniqueIdentifier];
    sub_2545FEAC4();

    v38 = *(v36 + 56);
    *(v0 + 968) = v38;
    *(v0 + 976) = (v36 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v38(v34, 0, 1, v35);
    LOBYTE(v37) = sub_2545FEC54();
    v39 = sub_2545FEC64();
    v41 = v40;
    v42 = swift_task_alloc();
    *(v0 + 984) = v42;
    *v42 = v0;
    v42[1] = sub_2545D3B4C;
    v9 = *(v0 + 656);
    v10 = *(v0 + 648);
    v11 = v37 & 1;
    v12 = v39;
    v13 = v41;

    return MEMORY[0x28216EA18](v9, v10, v11, v12, v13);
  }
}

uint64_t sub_2545D5280()
{
  v57 = v0;
  v1 = v0[116];
  v2 = *(v1 + 16);
  v0[130] = v2;
  if (v2)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v3 = v0[54];
    v4 = sub_2545FF0A4();
    __swift_project_value_buffer(v4, qword_27F60ADD8);
    sub_2545FE8E4();
    sub_2545D8588(v3);
    v5 = sub_2545FF084();
    v6 = sub_2545FF474();

    sub_2545CE4A8(v3);
    v7 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      v54 = v10;
      *v9 = 136315394;
      v12 = *(v1 + 16);
      v13 = MEMORY[0x277D84F90];
      if (v12)
      {
        v48 = v10;
        v49 = v9;
        v50 = v6;
        v51 = v5;
        v14 = v0[116];
        v15 = v0[69];
        v16 = v0[58];
        v55 = MEMORY[0x277D84F90];
        sub_2545DBE24(0, v12, 0);
        v13 = v55;
        v17 = *(v15 + 16);
        v15 += 16;
        v18 = v14 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
        v52 = *(v15 + 56);
        v53 = v17;
        v19 = (v15 - 8);
        do
        {
          v20 = v0[70];
          v21 = v0[68];
          v53(v20, v18, v21);
          sub_2545FEB34();
          (*v19)(v20, v21);
          v55 = v13;
          v23 = *(v13 + 16);
          v22 = *(v13 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_2545DBE24((v22 > 1), v23 + 1, 1);
            v13 = v55;
          }

          v24 = v0[59];
          v25 = v0[57];
          *(v13 + 16) = v23 + 1;
          (*(v16 + 32))(v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v23, v24, v25);
          v18 += v52;
          --v12;
        }

        while (v12);
        v5 = v51;
        v8 = MEMORY[0x277D84F90];
        v6 = v50;
        v11 = v48;
        v9 = v49;
      }

      v35 = v0[54];
      v36 = MEMORY[0x259C121B0](v13, v0[57]);
      v38 = v37;

      v39 = sub_2545F0FB4(v36, v38, &v54);

      *(v9 + 4) = v39;
      *(v9 + 12) = 2080;
      if (v35)
      {
        if (v35 == 1)
        {
          v40 = 0xE300000000000000;
          v41 = 7105633;
        }

        else
        {
          v55 = 0x3A796C6E6FLL;
          v56 = 0xE500000000000000;
          sub_2545D8728(&qword_27F606768, type metadata accessor for HomeID, &protocol conformance descriptor for HomeID);
          v42 = sub_2545FF3A4();
          MEMORY[0x259C120B0](v42);

          v41 = v55;
          v40 = v56;
        }
      }

      else
      {
        v40 = 0xE700000000000000;
        v41 = 0x746E6572727563;
      }

      v43 = sub_2545F0FB4(v41, v40, &v54);

      *(v9 + 14) = v43;
      _os_log_impl(&dword_2545AB000, v5, v6, "[WidgetDataModel.orderedHomes] homes=%s using scope=%s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C12CB0](v11, -1, -1);
      MEMORY[0x259C12CB0](v9, -1, -1);
    }

    v44 = v0[69];
    v0[46] = v8;
    v0[131] = 0;
    v45 = v0[116];
    if (*(v45 + 16))
    {
      (*(v44 + 16))(v0[71], v45 + ((*(v44 + 80) + 32) & ~*(v44 + 80)), v0[68]);
      v0[132] = sub_2545FECD4();
      v47 = sub_2545FF334();

      return MEMORY[0x2822009F8](sub_2545D5960, v47, v46);
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_2545FEA14();

  if (qword_27F6063A0 != -1)
  {
LABEL_28:
    swift_once();
  }

  v26 = sub_2545FF0A4();
  __swift_project_value_buffer(v26, qword_27F60ADD8);
  v27 = sub_2545FF084();
  v28 = sub_2545FF454();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[106];
  if (v29)
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2545AB000, v27, v28, "WidgetDataModel.orderedHomes is empty", v31, 2u);
    MEMORY[0x259C12CB0](v31, -1, -1);
  }

  v32 = v0[1];
  v33 = MEMORY[0x277D84F90];

  return v32(v33);
}

uint64_t sub_2545D5960()
{
  sub_2545FEA14();
  v0[133] = sub_2545FEBC4();
  v1 = v0[105];
  v2 = v0[104];

  return MEMORY[0x2822009F8](sub_2545D59D4, v2, v1);
}

uint64_t sub_2545D59D4(uint64_t a1)
{
  sub_2545FEB34();
  v1[134] = sub_2545FECD4();
  v3 = sub_2545FF334();
  v1[135] = v3;
  v1[136] = v2;

  return MEMORY[0x2822009F8](sub_2545D5A78, v3, v2);
}

uint64_t sub_2545D5A78()
{
  v1 = v0[81];
  v2 = v0[64];
  v3 = v0[57];
  v4 = v0[58];
  (*(v4 + 16))(v1, v0[67], v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = sub_2545FECF4();
  sub_2545C3148(v1, v5, v6, v7, v8, v2);

  sub_2545B612C(v1, &qword_27F6064D0, &unk_2546002B0);
  v9 = swift_task_alloc();
  v0[137] = v9;
  *v9 = v0;
  v9[1] = sub_2545D5BD4;
  v10 = v0[85];
  v11 = v0[64];
  v12 = MEMORY[0x277D159D8];
  v13 = MEMORY[0x277D159D0];

  return MEMORY[0x28216E6A8](v10, v11, v12, v13);
}

uint64_t sub_2545D5BD4()
{
  v2 = *v1;
  *(*v1 + 1104) = v0;

  if (v0)
  {

    v3 = *(v2 + 1088);
    v4 = *(v2 + 1080);
    v5 = sub_2545D237C;
  }

  else
  {
    v3 = *(v2 + 1088);
    v4 = *(v2 + 1080);
    v5 = sub_2545D5D04;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2545D5D04()
{
  v1 = v0[67];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v1, type metadata accessor for HomeID);
  v2 = v0[105];
  v3 = v0[104];

  return MEMORY[0x2822009F8](sub_2545D5D98, v3, v2);
}

uint64_t sub_2545D5D98(uint64_t a1)
{
  v2 = v1[70];
  v3 = v1[69];
  v4 = v1[68];
  sub_2545FED04();
  v1[139] = sub_2545FEB44();
  v5 = *(v3 + 8);
  v1[140] = v5;
  v1[141] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  v1[142] = sub_2545FECD4();
  v7 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545D5E90, v7, v6);
}

uint64_t sub_2545D5E90()
{
  sub_2545FEA14();
  v0[143] = sub_2545FEBC4();
  v1 = v0[105];
  v2 = v0[104];

  return MEMORY[0x2822009F8](sub_2545D5F04, v2, v1);
}

uint64_t sub_2545D5F04(uint64_t a1)
{
  sub_2545FEB34();
  *(v1 + 1152) = sub_2545FECD4();
  v2 = swift_task_alloc();
  *(v1 + 1160) = v2;
  *v2 = v1;
  v2[1] = sub_2545D5FB4;

  return MEMORY[0x28216E6C0]();
}

uint64_t sub_2545D5FB4(uint64_t a1)
{
  *(*v1 + 1168) = a1;

  sub_2545FEF44();
  sub_2545D8728(&qword_27F606698, MEMORY[0x277D16AF0], MEMORY[0x277D16AF8]);
  v3 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545D610C, v3, v2);
}

uint64_t sub_2545D610C()
{
  v0[147] = sub_2545FEF24();
  sub_2545FEA14();
  v2 = sub_2545FF334();
  v0[148] = v2;
  v0[149] = v1;

  return MEMORY[0x2822009F8](sub_2545D61B4, v2, v1);
}

uint64_t sub_2545D61B4()
{
  v0[47] = v0[147];
  v0[150] = sub_2545FF344();
  v2 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545D6248, v2, v1);
}

uint64_t sub_2545D6248()
{
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066A0, &qword_254600BA0);
  sub_2545B4F2C(&qword_27F6066A8, &qword_27F6066A0, &qword_254600BA0, MEMORY[0x277D83988]);
  v0[151] = sub_2545FF3E4();
  v1 = v0[149];
  v2 = v0[148];

  return MEMORY[0x2822009F8](sub_2545D6314, v2, v1);
}

uint64_t sub_2545D6314()
{
  v1 = v0[66];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v1, type metadata accessor for HomeID);

  v2 = v0[105];
  v3 = v0[104];

  return MEMORY[0x2822009F8](sub_2545D63BC, v3, v2);
}

unint64_t sub_2545D63BC()
{
  result = *(v0 + 1208);
  v59 = *(result + 16);
  if (v59)
  {
    v2 = 0;
    v3 = *(*(v0 + 488) + 80);
    v58 = result + ((v3 + 32) & ~v3);
    v4 = MEMORY[0x277D84F98];
    v57 = *(v0 + 1208);
    while (v2 < *(result + 16))
    {
      v6 = *(v0 + 496);
      v5 = *(v0 + 504);
      v7 = *(v0 + 480);
      v8 = *(v0 + 488);
      v9 = *(v8 + 16);
      v10 = *(v8 + 72);
      v9(v5, v58 + v10 * v2, v7);
      v11 = sub_2545FEE54();
      v9(v6, v5, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 384) = v4;
      result = sub_2545C56D4(v11);
      v14 = v4[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_49;
      }

      v18 = v13;
      if (v4[3] >= v17)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = result;
          sub_2545C8780();
          result = v26;
        }
      }

      else
      {
        sub_2545C7AB4(v17, isUniquelyReferenced_nonNull_native);
        result = sub_2545C56D4(v11);
        if ((v18 & 1) != (v19 & 1))
        {

          return sub_2545FF7D4();
        }
      }

      v4 = *(v0 + 384);
      v20 = *(v0 + 496);
      v21 = *(v0 + 504);
      v22 = *(v0 + 480);
      v23 = *(v0 + 488);
      if (v18)
      {
        (*(v23 + 40))(v4[7] + result * v10, v20, *(v0 + 480));
        (*(v23 + 8))(v21, v22);
      }

      else
      {
        v4[(result >> 6) + 8] |= 1 << result;
        *(v4[6] + 8 * result) = v11;
        (*(v23 + 32))(v4[7] + result * v10, v20, v22);
        result = (*(v23 + 8))(v21, v22);
        v24 = v4[2];
        v16 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v16)
        {
          goto LABEL_51;
        }

        v4[2] = v25;
      }

      ++v2;
      result = v57;
      if (v59 == v2)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_48;
  }

LABEL_15:
  v27 = *(v0 + 600);
  v28 = *(v0 + 592);
  v29 = *(v0 + 584);
  v30 = *(v0 + 576);

  sub_2545FED24();

  sub_2545FEF54();
  sub_2545D8728(&qword_27F606718, MEMORY[0x277D16BC8], MEMORY[0x277D16BD0]);
  v31 = sub_2545FF254();
  v32 = MEMORY[0x277D84F90];
  *(v0 + 392) = MEMORY[0x277D84F90];
  sub_2545DBE04(0, v31 & ~(v31 >> 63), 0);
  v33 = *(v0 + 392);
  (*(v29 + 16))(v27, v28, v30);
  result = sub_2545FF244();
  if (v31 < 0)
  {
LABEL_52:
    __break(1u);
    return result;
  }

  v34 = *(v0 + 344);
  if (v31)
  {
    v35 = *(v0 + 336);
    v36 = *(v35 + 16);
    v37 = v35 + 40 * v34 + 32;
    v38 = *(v0 + 344);
    while (v36 != v38)
    {
      if (v34 < 0)
      {
        goto LABEL_46;
      }

      if (v38 >= *(v35 + 16))
      {
        goto LABEL_47;
      }

      sub_2545D850C(v37, v0 + 16);
      *(v0 + 392) = v33;
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_2545DBE04((v39 > 1), v40 + 1, 1);
        v33 = *(v0 + 392);
      }

      *(v33 + 16) = v40 + 1;
      result = sub_2545D8570((v0 + 16), v33 + 40 * v40 + 32);
      v37 += 40;
      ++v38;
      if (!--v31)
      {
        *(v0 + 344) = v38;
        v32 = MEMORY[0x277D84F90];
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
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

  v38 = *(v0 + 344);
LABEL_26:
  v41 = *(v0 + 336);
  v42 = *(v41 + 16);
  if (v38 != v42)
  {
    while (v38 < v42)
    {
      sub_2545D850C(v41 + 32 + 40 * v38, v0 + 56);
      *(v0 + 344) = v38 + 1;
      sub_2545D8570((v0 + 56), v0 + 96);
      *(v0 + 392) = v33;
      v54 = *(v33 + 16);
      v53 = *(v33 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_2545DBE04((v53 > 1), v54 + 1, 1);
        v33 = *(v0 + 392);
      }

      *(v33 + 16) = v54 + 1;
      result = sub_2545D8570((v0 + 96), v33 + 40 * v54 + 32);
      v42 = *(v41 + 16);
      v38 = *(v0 + 344);
      if (v38 == v42)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_50;
  }

LABEL_27:
  (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));

  v43 = *(v33 + 16);
  if (v43)
  {
    *(v0 + 400) = v32;
    sub_2545DBDE4(0, v43, 0);
    v44 = *(v0 + 400);
    v45 = v33 + 32;
    do
    {
      v46 = *(v0 + 712);
      sub_2545D850C(v45, v0 + 136);
      v47 = *(v0 + 160);
      v48 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v47);
      sub_2545F3D54(v47, v48, v46);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      *(v0 + 400) = v44;
      v50 = *(v44 + 16);
      v49 = *(v44 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_2545DBDE4((v49 > 1), v50 + 1, 1);
        v44 = *(v0 + 400);
      }

      v51 = *(v0 + 712);
      v52 = *(v0 + 704);
      *(v44 + 16) = v50 + 1;
      sub_2545D8770(v51, v44 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v50, type metadata accessor for ElementID);
      v45 += 40;
      --v43;
    }

    while (v43);
    sub_2545FEA14();
  }

  else
  {
    sub_2545FEA14();
    v44 = MEMORY[0x277D84F90];
  }

  *(v0 + 1216) = v44;
  v55 = swift_task_alloc();
  *(v0 + 1224) = v55;
  *v55 = v0;
  v55[1] = sub_2545D6A40;
  v56 = *(v0 + 1112);

  return sub_2545EA1F8(v44, v56);
}

uint64_t sub_2545D6A40(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1232) = v1;

  if (v1)
  {

    v5 = v4[105];
    v6 = v4[104];
    v7 = sub_2545D88B8;
  }

  else
  {
    v4[155] = a1;
    v5 = v4[105];
    v6 = v4[104];
    v7 = sub_2545D6B94;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2545D6B94()
{
  v1 = *(v0 + 1240);
  v44 = *(v0 + 1120);
  v2 = *(v0 + 1112);
  v47 = *(v0 + 1040);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 568);
  v6 = *(v0 + 544);
  v40 = *(v0 + 1048) + 1;
  v42 = *(v0 + 664);
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  v8 = sub_2545C2F44(sub_2545D8598, v7, v1, type metadata accessor for HomeSingleTileEntity, sub_2545DC25C, type metadata accessor for HomeSingleTileEntity);

  sub_2545C3480(v8, &qword_27F6066D8, &qword_254600BC8, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity);

  v44(v5, v6);
  v9 = (*(v4 + 8))(v3, v42);
  if (v40 == v47)
  {
    v12 = *(v0 + 440);

    sub_2545FEA14();
    if (v12 && (v46 = *(v0 + 440), (v45 = *(v46 + 16)) != 0))
    {
      v9 = *(v0 + 368);
      v43 = *(v9 + 2);
      if (v43)
      {
        v13 = 0;
        v39 = *(v0 + 744);
        v14 = *(v0 + 696);
        v38 = MEMORY[0x277D84F90];
        v41 = *(v0 + 368);
        while (1)
        {
          if (v13 >= *(v9 + 2))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            return MEMORY[0x2822009F8](v9, v10, v11);
          }

          v15 = *(v0 + 704);
          v16 = (*(v39 + 80) + 32) & ~*(v39 + 80);
          v17 = v13 + 1;
          v48 = *(v39 + 72);
          sub_2545D8660(v9 + v16 + v48 * v13, *(v0 + 760), type metadata accessor for HomeSingleTileEntity);
          v18 = v46 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
          v19 = *(v15 + 72);
          v20 = v45;
          while (1)
          {
            sub_2545D8660(v18, *(v0 + 720), type metadata accessor for ElementID);
            if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
            {
              break;
            }

            sub_2545D86C8(*(v0 + 720), type metadata accessor for ElementID);
LABEL_11:
            v18 += v19;
            if (!--v20)
            {
              sub_2545D86C8(*(v0 + 760), type metadata accessor for HomeSingleTileEntity);
              goto LABEL_7;
            }
          }

          v21 = *(v0 + 720);
          v22 = *(v14 + 20);
          v23 = qword_254600D00[*(v21 + v22)];
          v24 = qword_254600D00[*(*(v0 + 760) + v22)];
          sub_2545D86C8(v21, type metadata accessor for ElementID);
          if (v23 != v24)
          {
            goto LABEL_11;
          }

          sub_2545D8770(*(v0 + 760), *(v0 + 752), type metadata accessor for HomeSingleTileEntity);
          v25 = v38;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2545DC25C(0, *(v38 + 16) + 1, 1);
            v25 = v38;
          }

          v27 = *(v25 + 16);
          v26 = *(v25 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_2545DC25C((v26 > 1), v27 + 1, 1);
            v25 = v38;
          }

          v28 = *(v0 + 752);
          *(v25 + 16) = v27 + 1;
          v38 = v25;
          sub_2545D8770(v28, v25 + v16 + v27 * v48, type metadata accessor for HomeSingleTileEntity);
LABEL_7:
          v13 = v17;
          v9 = v41;
          if (v17 == v43)
          {
            goto LABEL_25;
          }
        }
      }

      v38 = MEMORY[0x277D84F90];
LABEL_25:
      v35 = *(v0 + 848);

      v34 = v38;
    }

    else
    {

      v34 = *(v0 + 368);
    }

    v36 = *(v0 + 8);

    return v36(v34);
  }

  else
  {
    v29 = *(v0 + 1048) + 1;
    *(v0 + 1048) = v29;
    v30 = *(v0 + 928);
    if (v29 >= *(v30 + 16))
    {
      goto LABEL_30;
    }

    (*(*(v0 + 552) + 16))(*(v0 + 568), v30 + ((*(*(v0 + 552) + 80) + 32) & ~*(*(v0 + 552) + 80)) + *(*(v0 + 552) + 72) * v29, *(v0 + 544));
    *(v0 + 1056) = sub_2545FECD4();
    v31 = sub_2545FF334();
    v33 = v32;
    v9 = sub_2545D5960;
    v10 = v31;
    v11 = v33;

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_2545D71E4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    return sub_2545FE8E4();
  }

  return result;
}

uint64_t sub_2545D71F8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_2545D7214(uint64_t a1)
{
  v2 = type metadata accessor for HomeID(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066C8, &qword_254600BB8);
    v10 = sub_2545FF574();
    v11 = 0;
    v12 = v10 + 56;
    v25 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v26 = v9;
    v13 = *(v3 + 72);
    while (2)
    {
      sub_2545D8660(v25 + v13 * v11, v8, type metadata accessor for HomeID);
      sub_2545FF834();
      sub_2545FEB04();
      sub_2545D8728(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_2545FF0C4();
      v15 = sub_2545FF864();
      v16 = ~(-1 << *(v10 + 32));
      for (i = v15 & v16; ; i = (i + 1) & v16)
      {
        v18 = *(v12 + 8 * (i >> 6));
        if (((1 << i) & v18) == 0)
        {
          break;
        }

        sub_2545D8660(*(v10 + 48) + i * v13, v6, type metadata accessor for HomeID);
        v19 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
        sub_2545D86C8(v6, type metadata accessor for HomeID);
        if (v19)
        {
          sub_2545D86C8(v8, type metadata accessor for HomeID);
          v14 = v26;
          goto LABEL_4;
        }
      }

      *(v12 + 8 * (i >> 6)) = (1 << i) | v18;
      result = sub_2545D8770(v8, *(v10 + 48) + i * v13, type metadata accessor for HomeID);
      v21 = *(v10 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      v14 = v26;
      if (!v22)
      {
        *(v10 + 16) = v23;
LABEL_4:
        if (++v11 == v14)
        {
          return v10;
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

uint64_t sub_2545D74D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606420, &unk_2545FFE70);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  MEMORY[0x28223BE20](v4 - 8);
  v33 = v25 - v5;
  v32 = sub_2545FEA64();
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for HomeXLTileEntity(0);
  v8 = *(v30 - 8);
  v9 = MEMORY[0x28223BE20](v30);
  v29 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606800, &qword_254600CD0);
  v35 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v14 = v25 - v13;
  v36 = a1;
  sub_2545FE8E4();
  sub_2545C5880(&v36, type metadata accessor for HomeXLTileEntity, sub_2545C8CC0, sub_2545D881C);
  v15 = v36;
  v16 = *(v36 + 16);
  if (v16)
  {
    v36 = MEMORY[0x277D84F90];
    sub_2545DBE64(0, v16, 0);
    v17 = v36;
    v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v25[0] = v15;
    v19 = v15 + v18;
    v20 = *(v8 + 72);
    v26 = (v6 + 56);
    v27 = v20;
    v25[1] = v35 + 32;
    do
    {
      sub_2545D8660(v19, v12, type metadata accessor for HomeXLTileEntity);
      sub_2545D8660(v12, v29, type metadata accessor for HomeXLTileEntity);
      type metadata accessor for TileElementInfo(0);
      sub_2545FE8E4();
      sub_2545FEA34();
      (*v26)(v33, 1, 1, v32);
      v21 = sub_2545FE884();
      (*(*(v21 - 8) + 56))(v34, 1, 1, v21);
      sub_2545D8728(&qword_281533060, type metadata accessor for HomeXLTileEntity, &protocol conformance descriptor for HomeXLTileEntity);
      sub_2545FE704();
      sub_2545D86C8(v12, type metadata accessor for HomeXLTileEntity);
      v36 = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2545DBE64((v22 > 1), v23 + 1, 1);
        v17 = v36;
      }

      *(v17 + 16) = v23 + 1;
      (*(v35 + 32))(v17 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v23, v14, v28);
      v19 += v27;
      --v16;
    }

    while (v16);
    sub_2545FEA14();
  }

  else
  {
    sub_2545FEA14();
    return MEMORY[0x277D84F90];
  }

  return v17;
}

uint64_t sub_2545D7A08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606420, &unk_2545FFE70);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  MEMORY[0x28223BE20](v4 - 8);
  v33 = v25 - v5;
  v32 = sub_2545FEA64();
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ToggleControlEntity(0);
  v8 = *(v30 - 8);
  v9 = MEMORY[0x28223BE20](v30);
  v29 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6067B0, &qword_254600C88);
  v35 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v14 = v25 - v13;
  v36 = a1;
  sub_2545FE8E4();
  sub_2545C5880(&v36, type metadata accessor for ToggleControlEntity, sub_2545C8D54, sub_2545D8834);
  v15 = v36;
  v16 = *(v36 + 16);
  if (v16)
  {
    v36 = MEMORY[0x277D84F90];
    sub_2545DC23C(0, v16, 0);
    v17 = v36;
    v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v25[0] = v15;
    v19 = v15 + v18;
    v20 = *(v8 + 72);
    v26 = (v6 + 56);
    v27 = v20;
    v25[1] = v35 + 32;
    do
    {
      sub_2545D8660(v19, v12, type metadata accessor for ToggleControlEntity);
      sub_2545D8660(v12, v29, type metadata accessor for ToggleControlEntity);
      type metadata accessor for TileElementInfo(0);
      sub_2545FE8E4();
      sub_2545FEA34();
      (*v26)(v33, 1, 1, v32);
      v21 = sub_2545FE884();
      (*(*(v21 - 8) + 56))(v34, 1, 1, v21);
      sub_2545D8728(&qword_27F606480, type metadata accessor for ToggleControlEntity, &protocol conformance descriptor for ToggleControlEntity);
      sub_2545FE704();
      sub_2545D86C8(v12, type metadata accessor for ToggleControlEntity);
      v36 = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2545DC23C((v22 > 1), v23 + 1, 1);
        v17 = v36;
      }

      *(v17 + 16) = v23 + 1;
      (*(v35 + 32))(v17 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v23, v14, v28);
      v19 += v27;
      --v16;
    }

    while (v16);
    sub_2545FEA14();
  }

  else
  {
    sub_2545FEA14();
    return MEMORY[0x277D84F90];
  }

  return v17;
}

uint64_t sub_2545D7F3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606420, &unk_2545FFE70);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  MEMORY[0x28223BE20](v4 - 8);
  v33 = v25 - v5;
  v32 = sub_2545FEA64();
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for HomeSingleTileEntity(0);
  v8 = *(v30 - 8);
  v9 = MEMORY[0x28223BE20](v30);
  v29 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066E8, &qword_254600BE0);
  v35 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v14 = v25 - v13;
  v36 = a1;
  sub_2545FE8E4();
  sub_2545C5880(&v36, type metadata accessor for HomeSingleTileEntity, sub_2545C8DE8, sub_2545D884C);
  v15 = v36;
  v16 = *(v36 + 16);
  if (v16)
  {
    v36 = MEMORY[0x277D84F90];
    sub_2545DC27C(0, v16, 0);
    v17 = v36;
    v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v25[0] = v15;
    v19 = v15 + v18;
    v20 = *(v8 + 72);
    v26 = (v6 + 56);
    v27 = v20;
    v25[1] = v35 + 32;
    do
    {
      sub_2545D8660(v19, v12, type metadata accessor for HomeSingleTileEntity);
      sub_2545D8660(v12, v29, type metadata accessor for HomeSingleTileEntity);
      type metadata accessor for TileElementInfo(0);
      sub_2545FE8E4();
      sub_2545FEA34();
      (*v26)(v33, 1, 1, v32);
      v21 = sub_2545FE884();
      (*(*(v21 - 8) + 56))(v34, 1, 1, v21);
      sub_2545D8728(&qword_281532F88, type metadata accessor for HomeSingleTileEntity, &protocol conformance descriptor for HomeSingleTileEntity);
      sub_2545FE704();
      sub_2545D86C8(v12, type metadata accessor for HomeSingleTileEntity);
      v36 = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2545DC27C((v22 > 1), v23 + 1, 1);
        v17 = v36;
      }

      *(v17 + 16) = v23 + 1;
      (*(v35 + 32))(v17 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v23, v14, v28);
      v19 += v27;
      --v16;
    }

    while (v16);
    sub_2545FEA14();
  }

  else
  {
    sub_2545FEA14();
    return MEMORY[0x277D84F90];
  }

  return v17;
}

unint64_t sub_2545D8470()
{
  result = qword_27F6066B8;
  if (!qword_27F6066B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6066B8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2545D850C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2545D8570(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_2545D8588(unint64_t result)
{
  if (result >= 2)
  {
    return sub_2545FE8E4();
  }

  return result;
}

uint64_t sub_2545D8660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2545D86C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2545D8728(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2545D8770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SelectedHomeEntityQuery.suggestedEntities()(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v1[3] = swift_task_alloc();
  v2 = sub_2545FEFF4();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545D89C4, 0, 0);
}

uint64_t sub_2545D89C4()
{
  if (qword_27F6063A8 != -1)
  {
    swift_once();
  }

  v1 = sub_2545FF024();
  v2 = __swift_project_value_buffer(v1, qword_27F60ADF0);
  sub_2545FEFE4();
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_2545D8AD8;
  v4 = *(v0 + 48);

  return sub_2545DC334("SelectedHomeEntityQuery.homeEntities", 36, 2, v4, v2);
}

uint64_t sub_2545D8AD8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_2545DC330;
  }

  else
  {
    v7 = sub_2545D8C4C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2545D8C4C()
{
  v16 = v0;
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = sub_2545FF0A4();
  __swift_project_value_buffer(v1, qword_27F60ADD8);
  sub_2545FE8E4();
  v2 = sub_2545FF084();
  v3 = sub_2545FF474();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = type metadata accessor for SelectedHomeEntity(0);
    v8 = MEMORY[0x259C121B0](v4, v7);
    v10 = sub_2545F0FB4(v8, v9, &v15);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_2545AB000, v2, v3, "SelectedHomeEntityQuery.suggestedEntities() returned %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x259C12CB0](v6, -1, -1);
    MEMORY[0x259C12CB0](v5, -1, -1);
  }

  v11 = v0[3];
  v12 = sub_2545FEA64();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  type metadata accessor for SelectedHomeEntity(0);
  sub_2545DC29C(&qword_281533128, type metadata accessor for SelectedHomeEntity, &protocol conformance descriptor for SelectedHomeEntity);
  sub_2545DC29C(&qword_281533130, type metadata accessor for SelectedHomeEntity, &protocol conformance descriptor for SelectedHomeEntity);
  sub_2545FE824();

  v13 = v0[1];

  return v13();
}

uint64_t SelectedHomeEntityQuery.entities(for:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for HomeID(0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for SelectedHomeEntity(0);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v4 = sub_2545FEFF4();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545D905C, 0, 0);
}

uint64_t sub_2545D905C()
{
  if (qword_27F6063A8 != -1)
  {
    swift_once();
  }

  v1 = sub_2545FF024();
  v2 = __swift_project_value_buffer(v1, qword_27F60ADF0);
  sub_2545FEFE4();
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_2545D9170;
  v4 = *(v0 + 96);

  return sub_2545DC334("SelectedHomeEntityQuery.homeEntities", 36, 2, v4, v2);
}

uint64_t sub_2545D9170(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_2545D96E4;
  }

  else
  {
    v7 = sub_2545D92E4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2545D92E4()
{
  v36 = v0;
  v1 = v0[14];
  v33 = *(v1 + 16);
  if (v33)
  {
    v2 = 0;
    v3 = v0[4];
    v31 = v0[2];
    v32 = v0[7];
    v34 = MEMORY[0x277D84F90];
    while (v2 < *(v1 + 16))
    {
      v4 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v5 = *(v32 + 72);
      v6 = v2 + 1;
      sub_2545DBCD8(v0[14] + v4 + v5 * v2, v0[9], type metadata accessor for SelectedHomeEntity);
      v7 = 0;
      v8 = *(v31 + 16);
      do
      {
        if (v8 == v7)
        {
          sub_2545DBEA4(v0[9], type metadata accessor for SelectedHomeEntity);
          goto LABEL_4;
        }

        v9 = v0[5];
        sub_2545DBCD8(v0[2] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7++, v9, type metadata accessor for HomeID);
        v10 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
        sub_2545DBEA4(v9, type metadata accessor for HomeID);
      }

      while ((v10 & 1) == 0);
      sub_2545DBD40(v0[9], v0[8]);
      v11 = v34;
      v35 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2545DBE84(0, *(v34 + 16) + 1, 1);
        v11 = v35;
      }

      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2545DBE84((v12 > 1), v13 + 1, 1);
        v11 = v35;
      }

      v14 = v0[8];
      *(v11 + 16) = v13 + 1;
      v34 = v11;
      sub_2545DBD40(v14, v11 + v4 + v13 * v5);
LABEL_4:
      v2 = v6;
      if (v6 == v33)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_17;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_16:

  if (qword_27F6063A0 != -1)
  {
    goto LABEL_23;
  }

LABEL_17:
  v15 = sub_2545FF0A4();
  __swift_project_value_buffer(v15, qword_27F60ADD8);
  sub_2545FE8E4();
  sub_2545FE8F4();
  v16 = sub_2545FF084();
  v17 = sub_2545FF474();

  sub_2545FEA14();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v0[6];
    v20 = v0[2];
    v19 = v0[3];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v35 = v22;
    *v21 = 136315394;
    v23 = MEMORY[0x259C121B0](v20, v19);
    v25 = sub_2545F0FB4(v23, v24, &v35);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = MEMORY[0x259C121B0](v34, v18);
    v28 = sub_2545F0FB4(v26, v27, &v35);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_2545AB000, v16, v17, "SelectedHomeEntityQuery.entities(for: %s) returned %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C12CB0](v22, -1, -1);
    MEMORY[0x259C12CB0](v21, -1, -1);
  }

  v29 = v0[1];

  return v29(v34);
}

uint64_t sub_2545D96E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SelectedHomeEntityQuery.results()()
{
  v1 = sub_2545FEFF4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545D982C, 0, 0);
}

uint64_t sub_2545D982C()
{
  if (qword_27F6063A8 != -1)
  {
    swift_once();
  }

  v1 = sub_2545FF024();
  v2 = __swift_project_value_buffer(v1, qword_27F60ADF0);
  sub_2545FEFE4();
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_2545D9940;
  v4 = *(v0 + 32);

  return sub_2545DC334("SelectedHomeEntityQuery.homeEntities", 36, 2, v4, v2);
}

uint64_t sub_2545D9940(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_2545D9C64;
  }

  else
  {
    v7 = sub_2545D9AB4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2545D9AB4()
{
  v15 = v0;
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = sub_2545FF0A4();
  __swift_project_value_buffer(v1, qword_27F60ADD8);
  sub_2545FE8E4();
  v2 = sub_2545FF084();
  v3 = sub_2545FF474();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 48);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = type metadata accessor for SelectedHomeEntity(0);
    v8 = MEMORY[0x259C121B0](v4, v7);
    v10 = sub_2545F0FB4(v8, v9, &v14);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_2545AB000, v2, v3, "SelectedHomeEntityQuery.results() returned %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x259C12CB0](v6, -1, -1);
    MEMORY[0x259C12CB0](v5, -1, -1);
  }

  v11 = *(v0 + 8);
  v12 = *(v0 + 48);

  return v11(v12);
}

uint64_t sub_2545D9C64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SelectedHomeEntityQuery.defaultResult()(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for SelectedHomeEntity(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  type metadata accessor for IntentsService();
  swift_initStaticObject();
  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v1;
  v3[1] = sub_2545D9E1C;

  return sub_2545B0448();
}

uint64_t sub_2545D9E1C(void *a1)
{
  v4 = *v2;
  v4[10] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2545DA484, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v4[11] = v5;
    *v5 = v4;
    v5[1] = sub_2545D9FA4;
    v6 = v4[3];

    return static SelectedHomeEntity.selectedHome.getter(v6);
  }
}

uint64_t sub_2545D9FA4()
{

  return MEMORY[0x2822009F8](sub_2545DA0A0, 0, 0);
}

uint64_t sub_2545DA0A0()
{
  v22 = v0;
  v1 = v0[3];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    sub_2545B612C(v1, &qword_27F606520, &qword_2546002E0);
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v2 = sub_2545FF0A4();
    __swift_project_value_buffer(v2, qword_27F60ADD8);
    v3 = sub_2545FF084();
    v4 = sub_2545FF454();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2545AB000, v3, v4, "SelectedHomeEntityQuery.defaultResult() returned empty", v5, 2u);
      MEMORY[0x259C12CB0](v5, -1, -1);
    }

    v6 = 1;
  }

  else
  {
    sub_2545DBD40(v1, v0[8]);
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v7 = v0[7];
    v8 = v0[8];
    v9 = sub_2545FF0A4();
    __swift_project_value_buffer(v9, qword_27F60ADD8);
    sub_2545DBCD8(v8, v7, type metadata accessor for SelectedHomeEntity);
    v10 = sub_2545FF084();
    v11 = sub_2545FF474();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[7];
    if (v12)
    {
      v14 = v0[6];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[0] = v16;
      *v15 = 136315138;
      sub_2545DBCD8(v13, v14, type metadata accessor for SelectedHomeEntity);
      sub_2545FF594();

      v21[1] = 0xD000000000000013;
      v21[2] = 0x8000000254603AC0;
      v17 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
      MEMORY[0x259C120B0](v17);

      MEMORY[0x259C120B0](41, 0xE100000000000000);
      sub_2545DBEA4(v14, type metadata accessor for SelectedHomeEntity);
      sub_2545DBEA4(v13, type metadata accessor for SelectedHomeEntity);
      v18 = sub_2545F0FB4(0xD000000000000013, 0x8000000254603AC0, v21);

      *(v15 + 4) = v18;
      _os_log_impl(&dword_2545AB000, v10, v11, "SelectedHomeEntityQuery.defaultResult() returned %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x259C12CB0](v16, -1, -1);
      MEMORY[0x259C12CB0](v15, -1, -1);
    }

    else
    {

      sub_2545DBEA4(v13, type metadata accessor for SelectedHomeEntity);
    }

    sub_2545DBD40(v0[8], v0[2]);
    v6 = 0;
  }

  (*(v0[5] + 56))(v0[2], v6, 1, v0[4]);

  v19 = v0[1];

  return v19();
}

uint64_t sub_2545DA484()
{
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_2545FF0A4();
  __swift_project_value_buffer(v2, qword_27F60ADD8);
  v3 = v1;
  v4 = sub_2545FF084();
  v5 = sub_2545FF454();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2545AB000, v4, v5, "SelectedHomeEntityQuery.defaultResult() threw error %@", v8, 0xCu);
    sub_2545B612C(v9, &qword_27F606658, &qword_254600D70);
    MEMORY[0x259C12CB0](v9, -1, -1);
    MEMORY[0x259C12CB0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 56))(v0[2], 1, 1, v0[4]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_2545DA670(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_2545FEB64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for SelectedHomeEntity(0);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545DA7A4, 0, 0);
}

uint64_t sub_2545DA7A4()
{
  sub_2545FECC4();
  if (sub_2545FECA4() == 7)
  {
    type metadata accessor for IntentsService();
    v0[18] = swift_initStaticObject();
    sub_2545FF354();
    v0[19] = sub_2545FF344();
    v1 = sub_2545FF334();
    v3 = v2;
    v4 = sub_2545DAE10;
  }

  else
  {
    v0[12] = sub_2545FEBD4();
    sub_2545FECE4();
    v0[13] = sub_2545FECD4();
    sub_2545DC29C(&qword_27F6064D8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
    v1 = sub_2545FF334();
    v3 = v5;
    v4 = sub_2545DA8E8;
  }

  return MEMORY[0x2822009F8](v4, v1, v3);
}

uint64_t sub_2545DA8E8()
{
  sub_2545FEA14();
  *(v0 + 112) = sub_2545FEBC4();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_2545DA98C;

  return MEMORY[0x28216E6B8]();
}

uint64_t sub_2545DA98C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_2545DB2B0;
  }

  else
  {
    v4 = sub_2545DAAA0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2545DAAA0()
{
  v40 = v0;
  v1 = *(v0 + 128);
  sub_2545FEA14();
  v2 = *(v1 + 16);
  v3 = *(v0 + 128);
  if (v2)
  {
    v36 = *(v0 + 64);
    v37 = *(v0 + 72);
    v4 = *(v0 + 40);
    v39 = MEMORY[0x277D84F90];
    sub_2545DBE84(0, v2, 0);
    v5 = v39;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v3 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v34 = *(v4 + 56);
    v35 = v6;
    v32 = v0;
    v33 = (v4 - 8);
    do
    {
      v38 = v2;
      v8 = *(v0 + 88);
      v9 = *(v0 + 48);
      v10 = *(v0 + 56);
      v11 = *(v0 + 32);
      v35(v10, v7, v11);
      v35(v9, v10, v11);
      sub_2545FEB34();
      v12 = v5;
      v13 = sub_2545FEB54();
      v15 = v14;
      v16 = *v33;
      (*v33)(v9, v11);
      v16(v10, v11);
      v17 = (v8 + *(v36 + 20));
      *v17 = v13;
      v17[1] = v15;
      v5 = v12;
      v39 = v12;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2545DBE84((v18 > 1), v19 + 1, 1);
        v5 = v39;
      }

      v0 = v32;
      v20 = *(v32 + 88);
      *(v5 + 16) = v19 + 1;
      sub_2545DBD40(v20, v5 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v19);
      v7 += v34;
      --v2;
    }

    while (v38 != 1);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v21 = sub_2545FF0A4();
  __swift_project_value_buffer(v21, qword_27F60ADD8);
  sub_2545FE8E4();
  v22 = sub_2545FF084();
  v23 = sub_2545FF474();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 64);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v39 = v26;
    *v25 = 136315138;
    v27 = MEMORY[0x259C121B0](v5, v24);
    v29 = sub_2545F0FB4(v27, v28, &v39);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_2545AB000, v22, v23, "SelectedHomeEntityQuery.homeEntities() returned %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x259C12CB0](v26, -1, -1);
    MEMORY[0x259C12CB0](v25, -1, -1);
  }

  **(v0 + 24) = v5;

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_2545DAE10()
{
  sub_2545FEA14();
  *(v0 + 160) = sub_2545B027C();

  return MEMORY[0x2822009F8](sub_2545DAE80, 0, 0);
}

void *sub_2545DAE80()
{
  v38 = v0;
  v1 = *(v0 + 160);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = [*(v0 + 160) homes];
    sub_2545DC2E4();
    v4 = sub_2545FF2B4();

    *(v0 + 16) = v4;
    sub_2545FF424();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606848, &qword_254600F20);
    sub_2545B4F2C(&qword_27F606850, &qword_27F606848, &qword_254600F20, MEMORY[0x277D83988]);
    v5 = sub_2545FF3D4();

    if (!(v5 >> 62))
    {
      goto LABEL_3;
    }

LABEL_14:
    v6 = sub_2545FF674();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_15:

    v11 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v5 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_14;
  }

LABEL_3:
  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v37 = v2;
  result = sub_2545DBE84(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  v9 = *(v0 + 72);
  v10 = v5;
  v34 = v5 & 0xC000000000000001;
  v35 = *(v0 + 64);
  v11 = v37;
  v36 = v5;
  do
  {
    if (v34)
    {
      v12 = MEMORY[0x259C124A0](v8);
    }

    else
    {
      v12 = *(v10 + 8 * v8 + 32);
    }

    v13 = v12;
    v14 = *(v0 + 80);
    v15 = [v12 uniqueIdentifier];
    sub_2545FEAC4();

    v16 = [v13 name];
    v17 = sub_2545FF174();
    v19 = v18;

    v20 = (v14 + *(v35 + 20));
    *v20 = v17;
    v20[1] = v19;
    v37 = v11;
    v22 = *(v11 + 16);
    v21 = *(v11 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_2545DBE84((v21 > 1), v22 + 1, 1);
      v11 = v37;
    }

    v23 = *(v0 + 80);
    ++v8;
    *(v11 + 16) = v22 + 1;
    sub_2545DBD40(v23, v11 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22);
    v10 = v36;
  }

  while (v6 != v8);

LABEL_16:
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v24 = sub_2545FF0A4();
  __swift_project_value_buffer(v24, qword_27F60ADD8);
  sub_2545FE8E4();
  v25 = sub_2545FF084();
  v26 = sub_2545FF474();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 64);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136315138;
    v30 = MEMORY[0x259C121B0](v11, v27);
    v32 = sub_2545F0FB4(v30, v31, &v37);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_2545AB000, v25, v26, "SelectedHomeEntityQuery.homeEntities() returned %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x259C12CB0](v29, -1, -1);
    MEMORY[0x259C12CB0](v28, -1, -1);
  }

  **(v0 + 24) = v11;

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_2545DB2B0()
{
  sub_2545FEA14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2545DB348(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545D88C4;

  return SelectedHomeEntityQuery.entities(for:)(a1);
}

uint64_t sub_2545DB3DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545D880C;

  return SelectedHomeEntityQuery.suggestedEntities()(a1);
}

uint64_t sub_2545DB474(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_2545DC0E4();
  *v5 = v2;
  v5[1] = sub_2545D880C;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_2545DB528(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545AF6A0;

  return SelectedHomeEntityQuery.defaultResult()(a1);
}

uint64_t SelectedHomeEntityQuery.allEntities()(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v1[3] = swift_task_alloc();
  v2 = sub_2545FEFF4();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545DB6B8, 0, 0);
}

uint64_t sub_2545DB6B8()
{
  if (qword_27F6063A8 != -1)
  {
    swift_once();
  }

  v1 = sub_2545FF024();
  v2 = __swift_project_value_buffer(v1, qword_27F60ADF0);
  sub_2545FEFE4();
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_2545DB7CC;
  v4 = *(v0 + 48);

  return sub_2545DC334("SelectedHomeEntityQuery.homeEntities", 36, 2, v4, v2);
}

uint64_t sub_2545DB7CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_2545DBBCC;
  }

  else
  {
    v7 = sub_2545DB940;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2545DB940()
{
  v16 = v0;
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = sub_2545FF0A4();
  __swift_project_value_buffer(v1, qword_27F60ADD8);
  sub_2545FE8E4();
  v2 = sub_2545FF084();
  v3 = sub_2545FF474();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = type metadata accessor for SelectedHomeEntity(0);
    v8 = MEMORY[0x259C121B0](v4, v7);
    v10 = sub_2545F0FB4(v8, v9, &v15);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_2545AB000, v2, v3, "SelectedHomeEntityQuery.allEntities() returned %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x259C12CB0](v6, -1, -1);
    MEMORY[0x259C12CB0](v5, -1, -1);
  }

  v11 = v0[3];
  v12 = sub_2545FEA64();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  type metadata accessor for SelectedHomeEntity(0);
  sub_2545DC29C(&qword_281533128, type metadata accessor for SelectedHomeEntity, &protocol conformance descriptor for SelectedHomeEntity);
  sub_2545DC29C(&qword_281533130, type metadata accessor for SelectedHomeEntity, &protocol conformance descriptor for SelectedHomeEntity);
  sub_2545FE824();

  v13 = v0[1];

  return v13();
}

uint64_t sub_2545DBBCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2545DBC3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545AF6A0;

  return SelectedHomeEntityQuery.allEntities()(a1);
}

uint64_t sub_2545DBCD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2545DBD40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectedHomeEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_2545DBDA4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2545C4E3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2545DBDC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2545C4E64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2545DBDE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2545C4E8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2545DBE04(void *a1, int64_t a2, char a3)
{
  result = sub_2545C4EB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2545DBE24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2545C4FFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2545DBE44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2545C5024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2545DBE64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2545C504C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2545DBE84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2545C5070(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2545DBEA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2545DBF08()
{
  result = qword_281533148;
  if (!qword_281533148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281533148);
  }

  return result;
}

unint64_t sub_2545DBF60()
{
  result = qword_281533140;
  if (!qword_281533140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281533140);
  }

  return result;
}

unint64_t sub_2545DC000()
{
  result = qword_281533150;
  if (!qword_281533150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281533150);
  }

  return result;
}

unint64_t sub_2545DC0E4()
{
  result = qword_27F606838;
  if (!qword_27F606838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606838);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SelectedHomeEntityQuery(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SelectedHomeEntityQuery(_WORD *result, int a2, int a3)
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

void *sub_2545DC21C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2545C5098(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2545DC23C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2545C50C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2545DC25C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2545C50E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2545DC27C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2545C52E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2545DC29C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2545DC2E4()
{
  result = qword_27F606840;
  if (!qword_27F606840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F606840);
  }

  return result;
}

uint64_t sub_2545DC334(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  *(v5 + 144) = a3;
  *(v5 + 40) = a1;
  v6 = sub_2545FF034();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  v7 = sub_2545FEFF4();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545DC464, 0, 0);
}

uint64_t sub_2545DC464()
{
  v1 = sub_2545FF014();
  v2 = sub_2545FF494();
  result = sub_2545FF4C4();
  if (result)
  {
    v4 = *(v0 + 40);
    if ((*(v0 + 144) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = sub_2545FEFD4();
        _os_signpost_emit_with_name_impl(&dword_2545AB000, v1, v2, v6, v4, "", v5, 2u);
        MEMORY[0x259C12CB0](v5, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 32);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  (*(*(v0 + 96) + 16))(*(v0 + 112), *(v0 + 48), *(v0 + 88));
  sub_2545FF064();
  swift_allocObject();
  *(v0 + 120) = sub_2545FF054();
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_2545DC618;

  return sub_2545DA670(v0 + 16);
}

uint64_t sub_2545DC618()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2545DC938;
  }

  else
  {
    v2 = sub_2545DC72C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2545DC72C()
{
  v1 = sub_2545FF014();
  sub_2545FF044();
  v2 = sub_2545FF484();
  result = sub_2545FF4C4();
  if (result)
  {
    v4 = *(v0 + 40);
    if ((*(v0 + 144) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v6 = *(v0 + 72);
        v5 = *(v0 + 80);
        v7 = *(v0 + 64);
        sub_2545FE8F4();
        sub_2545FF074();
        sub_2545FEA14();
        if ((*(v6 + 88))(v5, v7) == *MEMORY[0x277D85B00])
        {
          v8 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
          v8 = "";
        }

        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = sub_2545FEFD4();
        _os_signpost_emit_with_name_impl(&dword_2545AB000, v1, v2, v10, v4, v8, v9, 2u);
        MEMORY[0x259C12CB0](v9, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 88);
  sub_2545FEA14();

  (*(v12 + 8))(v11, v13);
  v14 = *(v0 + 16);

  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t sub_2545DC938()
{
  sub_2545FEA14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t OSSignposter.withInterval<A>(_:id:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 160) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_2545FF034();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  v10 = sub_2545FEFF4();
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545DCAF8, 0, 0);
}

uint64_t sub_2545DCAF8()
{
  v1 = sub_2545FF014();
  v2 = sub_2545FF494();
  result = sub_2545FF4C4();
  if (result)
  {
    v4 = *(v0 + 40);
    if ((*(v0 + 160) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = sub_2545FEFD4();
        _os_signpost_emit_with_name_impl(&dword_2545AB000, v1, v2, v6, v4, "", v5, 2u);
        MEMORY[0x259C12CB0](v5, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v7 = *(v0 + 56);
  (*(*(v0 + 112) + 16))(*(v0 + 128), *(v0 + 48), *(v0 + 104));
  sub_2545FF064();
  swift_allocObject();
  *(v0 + 136) = sub_2545FF054();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_2545DCD08;
  v9 = *(v0 + 32);

  return v10(v9);
}

uint64_t sub_2545DCD08()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_2545DD020;
  }

  else
  {
    v2 = sub_2545DCE1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2545DCE1C()
{
  v1 = sub_2545FF014();
  sub_2545FF044();
  v2 = sub_2545FF484();
  result = sub_2545FF4C4();
  if (result)
  {
    v4 = *(v0 + 40);
    if ((*(v0 + 160) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v6 = *(v0 + 88);
        v5 = *(v0 + 96);
        v7 = *(v0 + 80);
        sub_2545FE8F4();
        sub_2545FF074();
        sub_2545FEA14();
        if ((*(v6 + 88))(v5, v7) == *MEMORY[0x277D85B00])
        {
          v8 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
          v8 = "";
        }

        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = sub_2545FEFD4();
        _os_signpost_emit_with_name_impl(&dword_2545AB000, v1, v2, v10, v4, v8, v9, 2u);
        MEMORY[0x259C12CB0](v9, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);
  v13 = *(v0 + 104);
  sub_2545FEA14();

  (*(v12 + 8))(v11, v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2545DD020()
{
  sub_2545FEA14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2545DD0AC()
{
  v0 = sub_2545FF0A4();
  __swift_allocate_value_buffer(v0, qword_27F60ADD8);
  __swift_project_value_buffer(v0, qword_27F60ADD8);
  return sub_2545FF094();
}

uint64_t sub_2545DD134()
{
  v0 = sub_2545FF0A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2545FF024();
  __swift_allocate_value_buffer(v4, qword_27F60ADF0);
  __swift_project_value_buffer(v4, qword_27F60ADF0);
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F60ADD8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_2545FF004();
}

uint64_t Set.init(set:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2545DD4C0();
  sub_2545DD50C();
  sub_2545FF264();
  sub_2545FF314();
  swift_getWitnessTable();
  v4 = sub_2545FF3B4();

  return v4;
}

uint64_t sub_2545DD34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2545DD564(v7, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return (*(v6 + 56))(a3, 1, 1, a2);
  }

  (*(v6 + 8))(v9, a2);
  sub_2545DD564(a1, v12);
  v10 = swift_dynamicCast();
  return (*(v6 + 56))(a3, v10 ^ 1u, 1, a2);
}

unint64_t sub_2545DD4C0()
{
  result = qword_27F606858;
  if (!qword_27F606858)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F606858);
  }

  return result;
}

unint64_t sub_2545DD50C()
{
  result = qword_27F606860;
  if (!qword_27F606860)
  {
    sub_2545DD4C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606860);
  }

  return result;
}

uint64_t sub_2545DD564(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2545DD5C0(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = *(type metadata accessor for HomeID(0) - 8);
  *(v1 + 32) = swift_task_alloc();
  *(v1 + 40) = swift_task_alloc();
  v3 = sub_2545FEB64();
  *(v1 + 48) = v3;
  *(v1 + 56) = *(v3 - 8);
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606868, &qword_254600F40);
  *(v1 + 88) = v4;
  v5 = *(v4 - 8);
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = sub_2545FECE4();
  *(v1 + 120) = sub_2545FECD4();
  if (a1)
  {
    v6 = swift_task_alloc();
    if (a1 == 1)
    {
      *(v1 + 184) = v6;
      *v6 = v1;
      v7 = sub_2545DE1A8;
    }

    else
    {
      *(v1 + 128) = v6;
      *v6 = v1;
      v7 = sub_2545DD894;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606870, &qword_254600F48);
    *(v1 + 208) = *(v5 + 80);
    *(v1 + 152) = swift_allocObject();
    v6 = swift_task_alloc();
    *(v1 + 160) = v6;
    *v6 = v1;
    v7 = sub_2545DDA24;
  }

  v6[1] = v7;

  return MEMORY[0x28216E6B8]();
}

uint64_t sub_2545DD894(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  sub_2545DE6D4(&qword_27F6064D8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
  v5 = sub_2545FF334();
  if (v1)
  {
    v6 = sub_2545DE554;
  }

  else
  {
    v6 = sub_2545DDE40;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2545DDA24(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  sub_2545DE6D4(&qword_27F6064D8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
  v5 = sub_2545FF334();
  if (v1)
  {
    v6 = sub_2545DE458;
  }

  else
  {
    v6 = sub_2545DDBB4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2545DDBB4()
{
  v1 = *(v0 + 168);
  sub_2545FEA14();
  if (*(v1 + 16))
  {
    (*(*(v0 + 56) + 16))(*(v0 + 152) + ((*(v0 + 208) + 32) & ~*(v0 + 208)), *(v0 + 168) + ((*(*(v0 + 56) + 80) + 32) & ~*(*(v0 + 56) + 80)), *(v0 + 48));
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v0 + 152);
  v4 = *(v0 + 208);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);

  v9 = (v4 + 32) & ~v4;
  (*(v8 + 56))(v3 + v9, v2, 1, v7);
  sub_2545DE7DC(v3 + v9, v5);
  sub_2545DE84C(v5, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2545DE8BC(*(v0 + 96));
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    v11 = *(*(v0 + 56) + 32);
    v11(*(v0 + 80), *(v0 + 96), *(v0 + 48));
    v10 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_2545C46DC(0, *(v10 + 2) + 1, 1, v10);
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_2545C46DC((v12 > 1), v13 + 1, 1, v10);
    }

    v14 = *(v0 + 80);
    v15 = *(v0 + 48);
    v16 = *(v0 + 56);
    *(v10 + 2) = v13 + 1;
    v11(&v10[((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v13], v14, v15);
  }

  v17 = *(v0 + 152);
  v18 = (*(v0 + 208) + 32) & ~*(v0 + 208);
  swift_setDeallocating();
  sub_2545DE8BC(v17 + v18);
  swift_deallocClassInstance();

  v19 = *(v0 + 8);

  return v19(v10);
}

uint64_t sub_2545DDE40()
{
  v1 = v0[17];
  result = sub_2545FEA14();
  v29 = *(v1 + 16);
  v30 = v1;
  if (v29)
  {
    v3 = 0;
    v4 = v0[7];
    v5 = v0[2];
    v6 = v5 + 56;
    v26 = v0[3];
    v27 = (v4 + 32);
    v28 = MEMORY[0x277D84F90];
    while (v3 < *(v30 + 16))
    {
      v32 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v31 = *(v4 + 72);
      (*(v4 + 16))(v0[9], v0[17] + v32 + v31 * v3, v0[6]);
      sub_2545FEB34();
      if (*(v5 + 16) && (sub_2545FF834(), sub_2545FEB04(), sub_2545DE6D4(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), sub_2545FF0C4(), v9 = sub_2545FF864(), v10 = -1 << *(v5 + 32), v11 = v9 & ~v10, ((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
      {
        v12 = ~v10;
        v13 = *(v26 + 72);
        while (1)
        {
          v14 = v0[4];
          sub_2545DE71C(*(v5 + 48) + v11 * v13, v14);
          v15 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
          sub_2545DE780(v14);
          if (v15)
          {
            break;
          }

          v11 = (v11 + 1) & v12;
          if (((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v17 = v0[8];
        v16 = v0[9];
        v18 = v0[6];
        sub_2545DE780(v0[5]);
        v19 = *v27;
        (*v27)(v17, v16, v18);
        v20 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2545DBDA4(0, *(v28 + 16) + 1, 1);
          v20 = v28;
        }

        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_2545DBDA4((v21 > 1), v22 + 1, 1);
          v20 = v28;
        }

        v23 = v0[8];
        v24 = v0[6];
        *(v20 + 16) = v22 + 1;
        v28 = v20;
        result = v19(v20 + v32 + v22 * v31, v23, v24);
      }

      else
      {
LABEL_3:
        v7 = v0[9];
        v8 = v0[6];
        sub_2545DE780(v0[5]);
        result = (*(v4 + 8))(v7, v8);
      }

      if (++v3 == v29)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
LABEL_18:

    v25 = v0[1];

    return v25(v28);
  }

  return result;
}

uint64_t sub_2545DE1A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    sub_2545DE6D4(&qword_27F6064D8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
    v5 = sub_2545FF334();
    v7 = v6;
    v8 = sub_2545DE614;
  }

  else
  {
    *(v4 + 200) = a1;
    sub_2545DE6D4(&qword_27F6064D8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
    v5 = sub_2545FF334();
    v7 = v9;
    v8 = sub_2545DE390;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_2545DE390()
{
  sub_2545FEA14();
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2545DE458()
{
  sub_2545FEA14();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2545DE554()
{
  sub_2545FEA14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2545DE614()
{
  sub_2545FEA14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2545DE6D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2545DE71C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2545DE780(uint64_t a1)
{
  v2 = type metadata accessor for HomeID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2545DE7DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606868, &qword_254600F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2545DE84C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606868, &qword_254600F40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2545DE8BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606868, &qword_254600F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2545DE924()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606568, &qword_254600340);
  swift_getKeyPath();
  swift_getKeyPath();
  result = sub_2545FE974();
  qword_27F606878 = result;
  return result;
}

uint64_t static HomeXLTileEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F6063B0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F606878;

  return sub_2545FE8F4();
}

uint64_t sub_2545DE9F8()
{
  v0 = sub_2545FE9A4();
  __swift_allocate_value_buffer(v0, qword_27F606880);
  __swift_project_value_buffer(v0, qword_27F606880);
  return sub_2545FE994();
}

uint64_t static HomeXLTileEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F6063B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606880);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for HomeXLTileEntity(uint64_t a1)
{
  result = qword_281533020;
  if (!qword_281533020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeXLTileEntity.item.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HomeXLTileEntity(0) + 24);

  return sub_2545DEC60(a1, v3);
}

uint64_t sub_2545DEC60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TileElementInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HomeXLTileEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606420, &unk_2545FFE70);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_2545FEA64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = sub_2545FF134();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2545FF124();
  sub_2545FF114();
  type metadata accessor for HomeXLTileEntity(0);
  type metadata accessor for TileElementInfo(0);
  sub_2545FF104();
  sub_2545FF114();
  sub_2545FEA54();
  (*(v5 + 56))(v3, 1, 1, v4);
  sub_2545FE8E4();
  sub_2545FE874();
  return sub_2545FE894();
}

uint64_t static HomeXLTileEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ElementID(0);
  if (qword_2546012D0[*(a1 + *(v4 + 20))] != qword_2546012D0[*(a2 + *(v4 + 20))])
  {
    return 0;
  }

  v5 = type metadata accessor for HomeXLTileEntity(0);
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);

  return _s17HomeWidgetIntents15TileElementInfoV2eeoiySbAC_ACtFZ_0(a1 + v6, a2 + v6);
}

uint64_t HomeXLTileEntity.hash(into:)(uint64_t a1)
{
  sub_2545FEB04();
  sub_2545DFADC(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v3 = type metadata accessor for ElementID(0);
  MEMORY[0x259C12730](qword_2546012D0[*(v1 + *(v3 + 20))]);
  type metadata accessor for HomeXLTileEntity(0);
  sub_2545FF0C4();
  return TileElementInfo.hash(into:)(a1);
}

uint64_t HomeXLTileEntity.hashValue.getter()
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545DFADC(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v1 = type metadata accessor for ElementID(0);
  MEMORY[0x259C12730](qword_2546012D0[*(v0 + *(v1 + 20))]);
  type metadata accessor for HomeXLTileEntity(0);
  sub_2545FF0C4();
  TileElementInfo.hash(into:)(v3);
  return sub_2545FF864();
}

uint64_t sub_2545DF1F0@<X0>(void *a1@<X8>)
{
  if (qword_27F6063B0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F606878;

  return sub_2545FE8F4();
}

uint64_t sub_2545DF260()
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545DFADC(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v1 = type metadata accessor for ElementID(0);
  MEMORY[0x259C12730](qword_2546012D0[*(v0 + *(v1 + 20))]);
  sub_2545FF0C4();
  TileElementInfo.hash(into:)(v3);
  return sub_2545FF864();
}

uint64_t sub_2545DF350(uint64_t a1)
{
  sub_2545FEB04();
  sub_2545DFADC(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v3 = type metadata accessor for ElementID(0);
  MEMORY[0x259C12730](qword_2546012D0[*(v1 + *(v3 + 20))]);
  sub_2545FF0C4();
  return TileElementInfo.hash(into:)(a1);
}

uint64_t sub_2545DF428(uint64_t a1)
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545DFADC(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v2 = type metadata accessor for ElementID(0);
  MEMORY[0x259C12730](qword_2546012D0[*(v1 + *(v2 + 20))]);
  sub_2545FF0C4();
  TileElementInfo.hash(into:)(v4);
  return sub_2545FF864();
}

uint64_t sub_2545DF514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ElementID(0);
  if (qword_2546012D0[*(a1 + *(v6 + 20))] != qword_2546012D0[*(a2 + *(v6 + 20))] || (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);

  return _s17HomeWidgetIntents15TileElementInfoV2eeoiySbAC_ACtFZ_0(a1 + v7, a2 + v7);
}

uint64_t sub_2545DF5BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F6063B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606880);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2545DF664(uint64_t a1)
{
  v2 = sub_2545DFADC(&qword_27F606678, type metadata accessor for HomeXLTileEntity, &protocol conformance descriptor for HomeXLTileEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2545DF6E4(uint64_t a1)
{
  v2 = sub_2545DFADC(&qword_281533040, type metadata accessor for HomeXLTileEntity, &protocol conformance descriptor for HomeXLTileEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t static HomeXLTileEntity.create(id:homeID:item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2545AEB50(a1, a4, type metadata accessor for ElementID);
  v7 = type metadata accessor for HomeXLTileEntity(0);
  sub_2545AEB50(a2, a4 + *(v7 + 20), type metadata accessor for HomeID);
  return sub_2545AEB50(a3, a4 + *(v7 + 24), type metadata accessor for TileElementInfo);
}

unint64_t sub_2545DF9D8()
{
  result = qword_27F6068A0;
  if (!qword_27F6068A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F6068A8, &qword_254601100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6068A0);
  }

  return result;
}

uint64_t sub_2545DFA84(uint64_t a1)
{
  result = sub_2545DFADC(&qword_27F606678, type metadata accessor for HomeXLTileEntity, &protocol conformance descriptor for HomeXLTileEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2545DFADC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static HomeSingleTileConfigurationIntent.attributionBundleIdentifier.getter()
{
  swift_beginAccess();
  v0 = *aComAppleHome_1;
  sub_2545FE8E4();
  return v0;
}

uint64_t static HomeSingleTileConfigurationIntent.attributionBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aComAppleHome_1 = a1;
  *&aComAppleHome_1[8] = a2;
}

uint64_t sub_2545DFCAC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aComAppleHome_1 = v2;
  *&aComAppleHome_1[8] = v1;
  sub_2545FE8E4();
}

uint64_t sub_2545DFD10()
{
  v0 = sub_2545FEA44();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2545FEB24();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2545FF154();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2545FEA64();
  __swift_allocate_value_buffer(v6, qword_27F6068C0);
  __swift_project_value_buffer(v6, qword_27F6068C0);
  sub_2545FF0F4();
  sub_2545FEB14();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_2545FEA74();
}

uint64_t sub_2545DFF38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2545FEA44();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2545FEB24();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2545FF154();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2545FEA64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2545FE7D4();
  __swift_allocate_value_buffer(v10, qword_27F6068D8);
  __swift_project_value_buffer(v10, qword_27F6068D8);
  sub_2545FF0F4();
  sub_2545FEB14();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2545FEA74();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2545FE7E4();
}

uint64_t HomeSingleTileConfigurationIntent.init(home:item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v60 = a2;
  v58 = a1;
  v65 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v59 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = v41 - v6;
  v64 = sub_2545FE914();
  v66 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v55 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606528, &qword_2546002E8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v63 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v56 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v61 = v41 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  MEMORY[0x28223BE20](v16 - 8);
  v54 = v41 - v17;
  v52 = sub_2545FEA44();
  v18 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2545FEB24();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2545FF154();
  MEMORY[0x28223BE20](v24 - 8);
  v25 = sub_2545FEA64();
  v46 = v25;
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606550, &qword_254600330);
  sub_2545FF0F4();
  v50 = &qword_2546012D0[6];
  v41[2] = v23;
  sub_2545FEB14();
  v49 = *MEMORY[0x277CC9110];
  v27 = *(v18 + 104);
  v51 = v18 + 104;
  v53 = v27;
  v44 = v20;
  v27(v20);
  sub_2545FEA74();
  v28 = *(v26 + 56);
  v45 = v26 + 56;
  v47 = v28;
  v29 = v54;
  v28(v54, 1, 1, v25);
  v30 = type metadata accessor for SelectedHomeEntity(0);
  (*(*(v30 - 8) + 56))(v61, 1, 1, v30);
  v31 = sub_2545FE734();
  v32 = *(*(v31 - 8) + 56);
  v32(v62, 1, 1, v31);
  v32(v63, 1, 1, v31);
  v42 = *MEMORY[0x277CBA308];
  v33 = *(v66 + 104);
  v66 += 104;
  v43 = v33;
  v34 = v55;
  v33(v55);
  sub_2545E0CEC(&qword_27F606558, type metadata accessor for SelectedHomeEntity, &protocol conformance descriptor for SelectedHomeEntity);
  v48 = sub_2545FE794();
  *v65 = v48;
  v41[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F8, &qword_254601338);
  sub_2545FF0F4();
  sub_2545FEB14();
  v53(v44, v49, v52);
  sub_2545FEA74();
  v47(v29, 1, 1, v46);
  v35 = type metadata accessor for HomeSingleTileEntity(0);
  v36 = v57;
  (*(*(v35 - 8) + 56))(v57, 1, 1, v35);
  v32(v62, 1, 1, v31);
  v32(v63, 1, 1, v31);
  v43(v34, v42, v64);
  sub_2545E0CEC(&qword_27F606900, type metadata accessor for HomeSingleTileEntity, &protocol conformance descriptor for HomeSingleTileEntity);
  v65[1] = sub_2545FE794();
  v37 = v58;
  v38 = v61;
  sub_2545B60C4(v58, v61, &qword_27F606520, &qword_2546002E0);
  sub_2545B60C4(v38, v56, &qword_27F606520, &qword_2546002E0);
  sub_2545FE764();
  sub_2545B612C(v38, &qword_27F606520, &qword_2546002E0);
  v39 = v60;
  sub_2545B60C4(v60, v36, &qword_27F6068F0, &unk_254601310);
  sub_2545B60C4(v36, v59, &qword_27F6068F0, &unk_254601310);
  sub_2545FE764();
  sub_2545B612C(v39, &qword_27F6068F0, &unk_254601310);
  sub_2545B612C(v37, &qword_27F606520, &qword_2546002E0);
  return sub_2545B612C(v36, &qword_27F6068F0, &unk_254601310);
}

uint64_t HomeSingleTileConfigurationIntent.home.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2545B60C4(a1, &v5 - v3, &qword_27F606520, &qword_2546002E0);
  sub_2545FE764();
  return sub_2545B612C(a1, &qword_27F606520, &qword_2546002E0);
}

uint64_t HomeSingleTileConfigurationIntent.item.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2545B60C4(a1, &v5 - v3, &qword_27F6068F0, &unk_254601310);
  sub_2545FE764();
  return sub_2545B612C(a1, &qword_27F6068F0, &unk_254601310);
}

uint64_t sub_2545E0CEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double HomeSingleTileConfigurationIntent.init()@<D0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for SelectedHomeEntity(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = type metadata accessor for HomeSingleTileEntity(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  HomeSingleTileConfigurationIntent.init(home:item:)(v7, v4, &v11);
  result = *&v11;
  *a1 = v11;
  return result;
}

uint64_t (*HomeSingleTileConfigurationIntent.home.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2545FE744();
  return sub_2545B32E8;
}

uint64_t sub_2545E0F74(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_2545B60C4(a1, &v10 - v7, &qword_27F6068F0, &unk_254601310);
  sub_2545B60C4(v8, v6, &qword_27F6068F0, &unk_254601310);
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE764();
  sub_2545B612C(v8, &qword_27F6068F0, &unk_254601310);
  sub_2545FEA14();
  return sub_2545FEA14();
}

uint64_t (*HomeSingleTileConfigurationIntent.item.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2545FE744();
  return sub_2545B4F74;
}

uint64_t static HomeSingleTileConfigurationIntent.parameterSummary.getter()
{
  v0 = sub_2545FE9D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, *MEMORY[0x277CBA3E8], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606908, &qword_254601368);
  sub_2545E1578();
  sub_2545B4F2C(&qword_27F606910, &qword_27F606908, &qword_254601368, MEMORY[0x277CBA2C0]);
  sub_2545B4F2C(&qword_27F6065D8, &qword_27F606550, &qword_254600330, MEMORY[0x277CB9F10]);
  return sub_2545FEA14();
}

uint64_t sub_2545E1304()
{
  swift_getKeyPath();
  sub_2545E1578();
  v0 = sub_2545FE8F4();
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6065D0, &qword_2546005A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2546005D0;
  *(v1 + 32) = v0;
  sub_2545FE8F4();
  v2 = sub_2545FE8E4();

  sub_2545FEA14();
  return v2;
}

uint64_t sub_2545E13D8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606908, &qword_254601368);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2545E1578();
  sub_2545FE904();
  v8 = sub_2545B4F2C(&qword_27F606910, &qword_27F606908, &qword_254601368, MEMORY[0x277CBA2C0]);
  MEMORY[0x259C11820](v5, &type metadata for HomeSingleTileConfigurationIntent, v1, v8);
  v9 = *(v2 + 8);
  v9(v5, v1);
  MEMORY[0x259C11810](v7, &type metadata for HomeSingleTileConfigurationIntent, v1, v8);
  return (v9)(v7, v1);
}

unint64_t sub_2545E1578()
{
  result = qword_281532E68;
  if (!qword_281532E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532E68);
  }

  return result;
}

uint64_t sub_2545E15CC()
{
  swift_getKeyPath();
  sub_2545E1578();
  v0 = sub_2545FE8F4();
  sub_2545FEA14();
  swift_getKeyPath();
  sub_2545FE8F4();
  v1 = sub_2545FE8F4();
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6065D0, &qword_2546005A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2546002D0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_2545FE8F4();
  v3 = sub_2545FE8E4();

  sub_2545FEA14();
  sub_2545FEA14();
  return v3;
}

uint64_t sub_2545E16C0()
{
  swift_beginAccess();
  v0 = *aComAppleHome_1;
  sub_2545FE8E4();
  return v0;
}

uint64_t sub_2545E1714@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F6063C0 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FEA64();
  v3 = __swift_project_value_buffer(v2, qword_27F6068C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2545E17BC()
{
  v0 = sub_2545FE9D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, *MEMORY[0x277CBA3E8], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606908, &qword_254601368);
  sub_2545B4F2C(&qword_27F606910, &qword_27F606908, &qword_254601368, MEMORY[0x277CBA2C0]);
  sub_2545B4F2C(&qword_27F6065D8, &qword_27F606550, &qword_254600330, MEMORY[0x277CB9F10]);
  return sub_2545FEA14();
}

uint64_t sub_2545E197C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_2545E24FC();
  *v4 = v2;
  v4[1] = sub_2545B45FC;

  return MEMORY[0x28210C3E0](a2, v5);
}

double sub_2545E1A28@<D0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for SelectedHomeEntity(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = type metadata accessor for HomeSingleTileEntity(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  HomeSingleTileConfigurationIntent.init(home:item:)(v7, v4, &v11);
  result = *&v11;
  *a1 = v11;
  return result;
}

uint64_t sub_2545E1B88(uint64_t a1)
{
  v2 = sub_2545E1578();

  return MEMORY[0x28210B538](a1, v2);
}

double HomeSingleTileConfigurationIntent.init(item:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for HomeSingleTileEntity(0);
  sub_2545E1D90(a1 + *(v10 + 20), v9, type metadata accessor for HomeID);
  v11 = type metadata accessor for SelectedHomeEntity(0);
  v12 = &v9[*(v11 + 20)];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  sub_2545E1D90(a1, v6, type metadata accessor for HomeSingleTileEntity);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  HomeSingleTileConfigurationIntent.init(home:item:)(v9, v6, &v14);
  sub_2545E1DF8(a1);
  result = *&v14;
  *a2 = v14;
  return result;
}

uint64_t sub_2545E1D90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2545E1DF8(uint64_t a1)
{
  v2 = type metadata accessor for HomeSingleTileEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double HomeSingleTileConfigurationIntent.init(home:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = [a1 uniqueIdentifier];
  sub_2545FEAC4();

  v11 = [a1 name];
  v12 = sub_2545FF174();
  v14 = v13;

  v15 = type metadata accessor for SelectedHomeEntity(0);
  v16 = &v9[*(v15 + 20)];
  *v16 = v12;
  v16[1] = v14;
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  v17 = type metadata accessor for HomeSingleTileEntity(0);
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  HomeSingleTileConfigurationIntent.init(home:item:)(v9, v6, &v19);

  result = *&v19;
  *a2 = v19;
  return result;
}

double HomeSingleTileConfigurationIntent.init(home:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  sub_2545FEB34();
  v10 = sub_2545FEB54();
  v12 = v11;
  v13 = type metadata accessor for SelectedHomeEntity(0);
  v14 = &v9[*(v13 + 20)];
  *v14 = v10;
  v14[1] = v12;
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  v15 = type metadata accessor for HomeSingleTileEntity(0);
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  HomeSingleTileConfigurationIntent.init(home:item:)(v9, v6, &v18);
  v16 = sub_2545FEB64();
  (*(*(v16 - 8) + 8))(a1, v16);
  result = *&v18;
  *a2 = v18;
  return result;
}

uint64_t static HomeSingleTileConfigurationIntent.defaultIntent.getter(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545E22D0, 0, 0);
}