char *sub_26161E930(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB53E8, &unk_2616311B0);
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

uint64_t sub_26161EA34(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26162B3BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2615D6788(&qword_281368740, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_26162B86C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2615D6788(&qword_281368738, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_26162B88C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_26161F070(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_26161ED14(uint64_t a1)
{
  v2 = v1;
  v36 = sub_26162B3BC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB53A0, &qword_261631148);
  result = sub_26162BB1C();
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
      sub_2615D6788(&qword_281368740, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_26162B86C();
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

uint64_t sub_26161F070(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_26162B3BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
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
    sub_26161ED14(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_26161F314();
      goto LABEL_12;
    }

    sub_26161F54C(v10 + 1);
  }

  v12 = *v3;
  sub_2615D6788(&qword_281368740, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_26162B86C();
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
      sub_2615D6788(&qword_281368738, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_26162B88C();
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
  result = sub_26162BC8C();
  __break(1u);
  return result;
}

void *sub_26161F314()
{
  v1 = v0;
  v2 = sub_26162B3BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB53A0, &qword_261631148);
  v6 = *v0;
  v7 = sub_26162BB0C();
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

uint64_t sub_26161F54C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_26162B3BC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB53A0, &qword_261631148);
  v7 = sub_26162BB1C();
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
      sub_2615D6788(&qword_281368740, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_26162B86C();
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

uint64_t sub_26161F868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_26162B4FC();
  v9 = MEMORY[0x28223BE20](v8);
  v39 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v43 = &v29 - v12;
  result = MEMORY[0x28223BE20](v11);
  v42 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v40 = *(v14 + 16);
    v41 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = a1 - a3;
    v20 = v16 + v17 * (a3 - 1);
    v36 = -v17;
    v37 = (v14 + 32);
    v38 = v16;
    v30 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v34 = v19;
    v35 = a3;
    v32 = v21;
    v33 = v20;
    while (1)
    {
      v22 = v42;
      v40(v42, v21, v8);
      v23 = v43;
      sub_26162B44C();
      v24 = sub_26162B46C();
      v25 = *v18;
      (*v18)(v23, v8);
      result = v25(v22, v8);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v19 = v34 - 1;
        v20 = v33 + v30;
        v21 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v26 = *v37;
      v27 = v39;
      (*v37)(v39, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v26)(v20, v27, v8);
      v20 += v36;
      v21 += v36;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26161FADC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_26162B4FC();
  v8 = *(v51 - 8);
  v9 = MEMORY[0x28223BE20](v51);
  v49 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v48 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v54 = a1;
  v53 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v18;
    if (v18 >= 1)
    {
      v46 = -v14;
      v43 = (v8 + 8);
      v44 = (v8 + 16);
      v29 = a4 + v18;
      v50 = a4;
      v42 = a1;
      while (2)
      {
        while (1)
        {
          v40 = v28;
          v45 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v54 = a2;
              v52 = v40;
              goto LABEL_58;
            }

            v31 = a3;
            v41 = v28;
            v32 = a3 + v46;
            v33 = v29 + v46;
            v34 = v48;
            v35 = v51;
            (*v44)(v48, v29 + v46, v51);
            v36 = v49;
            sub_26162B44C();
            LODWORD(v47) = sub_26162B46C();
            v37 = *v43;
            (*v43)(v36, v35);
            v37(v34, v35);
            if (v47)
            {
              break;
            }

            v28 = v33;
            a3 = v32;
            if (v31 < v29 || v32 >= v29)
            {
              swift_arrayInitWithTakeFrontToBack();
              v30 = v50;
              a1 = v42;
            }

            else
            {
              v30 = v50;
              a1 = v42;
              if (v31 != v29)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v29 = v33;
            a2 = v45;
            if (v33 <= v30)
            {
              goto LABEL_56;
            }
          }

          a3 = v32;
          if (v31 < v45 || v32 >= v45)
          {
            break;
          }

          v38 = v50;
          v28 = v41;
          a1 = v42;
          a2 = v45 + v46;
          if (v31 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v29 <= v38)
          {
            goto LABEL_56;
          }
        }

        a2 = v45 + v46;
        swift_arrayInitWithTakeFrontToBack();
        v28 = v41;
        a1 = v42;
        if (v29 > v50)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:
    v54 = a2;
    v52 = v28;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v17;
    v52 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v8 + 16);
      v45 = a3;
      v46 = v8 + 16;
      v43 = (v8 + 8);
      v44 = v20;
      do
      {
        v50 = a4;
        v21 = v14;
        v22 = v48;
        v23 = v51;
        (v44)(v48, a2, v51);
        v24 = v49;
        sub_26162B44C();
        v25 = sub_26162B46C();
        v26 = *v43;
        (*v43)(v24, v23);
        v26(v22, v23);
        if (v25)
        {
          v14 = v21;
          if (a1 < a2 || a1 >= a2 + v21)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v21;
            v27 = v45;
            a4 = v50;
          }

          else
          {
            v27 = v45;
            a4 = v50;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v21;
          }
        }

        else
        {
          v14 = v21;
          a4 = v50 + v21;
          if (a1 < v50 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v45;
          }

          else
          {
            v27 = v45;
            if (a1 != v50)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v53 = a4;
        }

        a1 += v14;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v27);
    }
  }

LABEL_58:
  sub_2616200D8(&v54, &v53, &v52);
  return 1;
}

uint64_t sub_261620038(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2616200C4(v3);
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

uint64_t sub_2616200D8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_26162B4FC();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_2616201D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_26162BC5C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

id sub_26162021C(void *a1)
{
  v2 = v1;
  v4 = sub_26162B41C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  sub_26162B42C();
  (*(v5 + 32))(&v2[OBJC_IVAR___QLThumbnailExtension_identity], v7, v4);
  v9 = [v8 bundleIdentifier];
  v10 = sub_26162B8CC();
  v12 = v11;

  v13 = &v2[OBJC_IVAR___QLThumbnailExtension_generatorIdentifier];
  *v13 = v10;
  v13[1] = v12;
  v14 = [v8 bundleVersion];
  v15 = sub_26162B8CC();
  v17 = v16;

  v18 = &v2[OBJC_IVAR___QLThumbnailExtension_generatorVersion];
  *v18 = v15;
  v18[1] = v17;
  v19 = *MEMORY[0x277D43F18];
  sub_261618454(0, &qword_2813685E0, 0x277CCABB0);
  v20 = [v8 entitlementNamed:v19 ofClass:swift_getObjCClassFromMetadata()];
  sub_26162BABC();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v21 = v43;
    v22 = [v43 BOOLValue];
  }

  else
  {
    v22 = 0;
  }

  v2[OBJC_IVAR___QLThumbnailExtension_externalResourcesAccessAllowed] = v22;
  v23 = sub_26162B8CC();
  v25 = sub_261618824(v23, v24);

  v2[OBJC_IVAR___QLThumbnailExtension_supportsInteractiveThumbnailBadges] = v25 & 1;
  v26 = sub_26162B8CC();
  sub_2616189D8(v26, v27);
  v29 = v28;

  if (v29)
  {
    v30 = sub_26162BC5C();

    if (v30 >= 3)
    {
      v31 = 1;
    }

    else
    {
      v31 = v30;
    }
  }

  else
  {
    v31 = 1;
  }

  v2[OBJC_IVAR___QLThumbnailExtension_supportedConcurrencyLevel] = v31;
  v32 = sub_26162B8CC();
  v34 = sub_261618B8C(v32, v33);
  v36 = v35;

  v37 = v34;
  if (v36)
  {
    v37 = 0.0;
  }

  *&v2[OBJC_IVAR___QLThumbnailExtension_minimumThumbnailDimension] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5368, &qword_261631118);
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 16) = 0;
  *&v2[OBJC_IVAR___QLThumbnailExtension_queueLock] = v38;
  v39 = type metadata accessor for ThumbnailExtension(0);
  v42.receiver = v2;
  v42.super_class = v39;
  return objc_msgSendSuper2(&v42, sel_init);
}

uint64_t sub_261620560(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_261620578(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_261614DE4;

  return sub_26161A208(a1, v4, v5, v6);
}

uint64_t sub_26162062C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB53B0, &qword_261630E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26162069C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26161865C;

  return sub_2616151A4(a1, v4);
}

uint64_t sub_261620754(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261614DE4;

  return sub_2616151A4(a1, v4);
}

uint64_t sub_261620814(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

CGColorSpace *static QLIconModeRenderer.renderIcon(image:size:scale:flavor:variant:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = [a1 data];
  v13 = sub_26162B39C();
  v15 = v14;

  v16 = sub_26162B38C();
  sub_2616179D8(v13, v15);
  v17 = CGDataProviderCreateWithCFData(v16);

  if (!v17)
  {
    return 0;
  }

  v33 = a3;
  v18 = [a1 format];
  v19 = [v18 width];
  v20 = [v18 height];
  v21 = [v18 bitsPerComponent];
  v22 = [v18 bitsPerPixel];
  v23 = [v18 bytesPerRow];
  result = [v18 colorSpace];
  if (result)
  {
    v25 = result;
    v26 = CGImageCreate(v19, v20, v21, v22, v23, result, [v18 bitmapInfo], v17, 0, 0, kCGRenderingIntentDefault);

    if (v26)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5200, &qword_2616311F0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_261630C60;
      v29 = objc_opt_self();
      v30 = v26;
      *(v28 + 32) = [v29 imageWithCGImage:v30 scale:1 orientation:1.0];
      sub_261618454(0, &qword_281368628, 0x277D43EA8);
      v31 = sub_26162B94C();

      v32 = [ObjCClassFromMetadata renderIconWithImages:v31 size:a2 scale:v33 flavor:a4 variant:{a5, a6}];

      return v32;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_261620CA4(void (*a1)(CGContext *), double a2, double a3, CGFloat a4, uint64_t a5, CGContext **a6)
{
  v11 = sub_26162B9FC();
  MEMORY[0x28223BE20](v11 - 8);
  type metadata accessor for CGContext(0);
  if (a2 * a4 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a2 * a4 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = a3 * a4;
  v13 = COERCE__INT64(fabs(a3 * a4)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE__INT64(fabs(a2 * a4)) > 0x7FEFFFFFFFFFFFFFLL || v13)
  {
    goto LABEL_12;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_26162B9EC();
  v14 = sub_26162B3CC();
  if (v14)
  {
    v15 = v14;
    CGContextScaleCTM(v14, a4, a4);
    a1(v15);
    v16 = *a6;
    *a6 = v15;
  }
}

QLIconModeRenderer __swiftcall QLIconModeRenderer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_261620FA8()
{
  v1 = sub_26162B67C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 64);
  v5 = *(v0 + 56);
  v9 = v5;
  if (v10 == 1)
  {
    return v5;
  }

  sub_26162BA3C();
  v7 = sub_26162B6CC();
  sub_26162B51C();

  sub_26162B66C();
  swift_getAtKeyPath();
  sub_261620814(&v9, &qword_27FEB5530, &qword_261631390);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

uint64_t sub_26162110C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_261622AD0(0, v1, 0);
    v4 = a1 + 32;
    v2 = v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5558, &qword_2616313B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5560, &qword_2616313C0);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_261622AD0((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_261621240(uint64_t result, double a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v2 + 1;
    v4 = (result + 48);
    while (v3 != 2)
    {
      if (!--v3)
      {
        __break(1u);
        goto LABEL_11;
      }

      if (*(v4 - 2) <= a2)
      {
        v5 = *v4 <= a2;
        v4 += 2;
        if (v5)
        {
          continue;
        }
      }

      return result;
    }
  }

  else
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_2616212D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = sub_26162B63C();
  MEMORY[0x28223BE20](v57);
  v52 = (v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = sub_26162B62C();
  MEMORY[0x28223BE20](v59);
  v58 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26162B68C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5468, &qword_261631320);
  MEMORY[0x28223BE20](v10);
  v12 = (v50 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5470, &qword_261631328);
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x28223BE20](v13);
  v53 = v50 - v14;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5478, &qword_261631330);
  MEMORY[0x28223BE20](v51);
  v16 = v50 - v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5480, &qword_261631338);
  v17 = MEMORY[0x28223BE20](v61);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = v50 - v20;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5488, &qword_261631340);
  MEMORY[0x28223BE20](v60);
  v22 = (v50 - v21);
  if (*(a1 + 40))
  {
    *v12 = sub_26162B7DC();
    v12[1] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5490, &qword_261631348);
    sub_261621D5C(a1);
    v24 = sub_26162B75C();
    v50[1] = a2;
    v25 = v24;
    v26 = sub_26162B6DC();
    v27 = v12 + *(v10 + 36);
    *v27 = v25;
    v27[8] = v26;
    (*(v7 + 104))(v9, *MEMORY[0x277CE00F0], v6);
    sub_261622F94();
    v28 = v53;
    sub_26162B72C();
    (*(v7 + 8))(v9, v6);
    sub_261620814(v12, &qword_27FEB5468, &qword_261631320);
    if (*a1 > *(a1 + 8))
    {
      v29 = *a1;
    }

    else
    {
      v29 = *(a1 + 8);
    }

    v30 = sub_26162110C(&unk_2873E2078);
    sub_261621240(v30, v29);
    v32 = v31;

    v33 = round(v32);
    v34 = *(v57 + 20);
    v35 = *MEMORY[0x277CE0118];
    v36 = sub_26162B6AC();
    v37 = v52;
    (*(*(v36 - 8) + 104))(v52 + v34, v35, v36);
    *v37 = v33;
    v37[1] = v33;
    if (*(a1 + 48) == 2)
    {
      v38 = 0.0;
    }

    else
    {
      v38 = 1.0;
    }

    v39 = v58;
    sub_261623078(v37, v58, MEMORY[0x277CDFC08]);
    *(v39 + *(v59 + 20)) = v38;
    v40 = &v16[*(v51 + 36)];
    sub_261623078(v39, v40, MEMORY[0x277CDFBC8]);
    *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB54C0, &qword_261631360) + 36)) = 256;
    (*(v54 + 32))(v16, v28, v55);
    v41 = sub_26162B7DC();
    v43 = v42;
    v44 = &v19[*(v61 + 36)];
    sub_2616220C8(a1, v44);
    v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB54C8, &qword_261631368) + 36));
    *v45 = v41;
    v45[1] = v43;
    sub_261623514(v16, v19, &qword_27FEB5478, &qword_261631330);
    v46 = v56;
    sub_261623514(v19, v56, &qword_27FEB5480, &qword_261631338);
    sub_2615DDFC4(v46, v22);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB54D0, &qword_261631370);
    sub_2616230E0();
    sub_2616232A8();
    sub_26162B6BC();
    return sub_2615DE034(v46);
  }

  else
  {
    sub_2616219B4(v62);
    v48 = v63[0];
    v22[2] = v62[2];
    v22[3] = v48;
    *(v22 + 58) = *(v63 + 10);
    v49 = v62[1];
    *v22 = v62[0];
    v22[1] = v49;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB54D0, &qword_261631370);
    sub_2616230E0();
    sub_2616232A8();
    return sub_26162B6BC();
  }
}

uint64_t sub_2616219B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26162B77C();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x266706D50](0);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;
  v11 = [v9 CGImage];

  sub_261620FA8();
  sub_26162B69C();
  sub_26162B6FC();
  sub_26162B79C();
  (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
  v12 = sub_26162B78C();

  (*(v4 + 8))(v7, v3);
  if (*v1 > *(v1 + 8))
  {
    v13 = *v1;
  }

  else
  {
    v13 = *(v1 + 8);
  }

  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = sub_26162110C(&unk_2873E2078);
  sub_261621240(v16, v13);

  sub_261620FA8();
  sub_26162B7DC();
  sub_26162B56C();
  v34 = 0;
  *&v33[22] = v36;
  *&v33[6] = v35;
  *&v33[38] = v37;
  *&v21 = v12;
  *(&v21 + 1) = v14 / v15;
  *v22 = 256;
  *&v22[18] = *&v33[16];
  *&v22[2] = *v33;
  *&v22[34] = *&v33[32];
  *&v22[48] = *(&v37 + 1);
  v23[0] = v12;
  v28 = v21;
  v32 = *(&v37 + 1);
  v31 = *&v22[32];
  v30 = *&v22[16];
  v29 = *v22;
  *&v23[1] = v14 / v15;
  v24 = 256;
  *&v27[14] = *(&v37 + 1);
  *v27 = *&v33[32];
  v26 = *&v33[16];
  v25 = *v33;
  sub_261618548(&v21, &v20, &qword_27FEB54E8, &qword_261631378);
  result = sub_261620814(v23, &qword_27FEB54E8, &qword_261631378);
  v17 = v29;
  v18 = v31;
  *(a1 + 32) = v30;
  *(a1 + 48) = v18;
  *(a1 + 64) = v32;
  *a1 = v28;
  *(a1 + 16) = v17;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_261621D5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5568, &qword_2616313C8);
  MEMORY[0x28223BE20](v2);
  v4 = (v20 - v3);
  v5 = sub_26162B68C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5570, &qword_2616313D0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  if (*(a1 + 40) != 2)
  {
    goto LABEL_4;
  }

  v12 = *(a1 + 32);
  if (v12 >> 62)
  {
    if (sub_26162BBEC() < 2)
    {
      goto LABEL_4;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
LABEL_4:
    sub_2616219B4(v20);
    v13 = v21[0];
    v4[2] = v20[2];
    v4[3] = v13;
    *(v4 + 58) = *(v21 + 10);
    v14 = v20[1];
    *v4 = v20[0];
    v4[1] = v14;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB54D0, &qword_261631370);
    sub_26162357C();
    sub_2616230E0();
    return sub_26162B6BC();
  }

  v16 = swift_allocObject();
  v17 = *(a1 + 48);
  *(v16 + 48) = *(a1 + 32);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(a1 + 64);
  v18 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v18;
  (*(v6 + 104))(v8, *MEMORY[0x277CE00F0], v5);
  sub_261623648(a1, v20);
  sub_26162B7CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5588, &qword_2616313D8);
  sub_26162B7BC();
  v19 = &v11[*(v9 + 36)];
  *v19 = *(a1 + 16) / *(a1 + 24);
  *(v19 + 4) = 0;
  sub_261618548(v11, v4, &qword_27FEB5570, &qword_2616313D0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB54D0, &qword_261631370);
  sub_26162357C();
  sub_2616230E0();
  sub_26162B6BC();
  return sub_261620814(v11, &qword_27FEB5570, &qword_2616313D0);
}

uint64_t sub_2616220C8@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26162B74C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26162B63C();
  MEMORY[0x28223BE20](v8);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5538, &qword_261631398);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  if (*(a1 + 6) == 2)
  {
    v15 = *(v12 + 56);

    return v15(a2, 1, 1, v11);
  }

  else
  {
    if (*a1 > a1[1])
    {
      v17 = *a1;
    }

    else
    {
      v17 = a1[1];
    }

    v35 = v12;
    v18 = sub_26162110C(&unk_2873E2078);
    sub_261621240(v18, v17);
    v20 = v19;

    v21 = round(v20);
    v22 = *(v8 + 20);
    v23 = *MEMORY[0x277CE0118];
    v24 = sub_26162B6AC();
    (*(*(v24 - 8) + 104))(v10 + v22, v23, v24);
    *v10 = v21;
    v10[1] = v21;
    (*(v5 + 104))(v7, *MEMORY[0x277CE0EE0], v4);
    v25 = sub_26162B76C();
    sub_26162B55C();
    sub_261623454(v10, v14);
    v26 = *&v36 * 0.5;
    v27 = &v14[*(v11 + 68)];
    sub_261623454(v10, v27);
    *(v27 + *(sub_26162B62C() + 20)) = v26;
    v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5540, &qword_2616313A0) + 36);
    v29 = v37;
    *v28 = v36;
    *(v28 + 16) = v29;
    *(v28 + 32) = v38;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5548, &qword_2616313A8);
    *(v27 + *(v30 + 52)) = v25;
    *(v27 + *(v30 + 56)) = 256;
    v31 = sub_26162B7DC();
    v33 = v32;
    sub_2616234B8(v10);
    v34 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5550, &qword_2616313B0) + 36));
    *v34 = v31;
    v34[1] = v33;
    sub_261623514(v14, a2, &qword_27FEB5538, &qword_261631398);
    return (*(v35 + 56))(a2, 0, 1, v11);
  }
}

void sub_2616224AC(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v7 = sub_26162B74C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26162B61C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 > a4)
  {
    v16 = a3;
  }

  else
  {
    v16 = a4;
  }

  v17 = *(a2 + 32);
  v33 = v17 & 0xC000000000000001;
  v34 = a2;
  v32 = v13;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x266706D50](1, v17);
  }

  else
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_14;
    }

    v18 = *(v17 + 40);
  }

  v19 = v18;
  v20 = v16 * 0.29296875;
  v21 = [v18 CGImage];

  sub_261620FA8();
  sub_26162B69C();
  LOWORD(v30) = 256;
  v29 = 0.0;
  sub_26162B6FC();
  sub_26162B79C();
  sub_26162B7EC();
  sub_26162B5DC();

  sub_26162B6EC();
  (*(v8 + 104))(v10, *MEMORY[0x277CE0EE0], v7);
  sub_26162B60C();
  (*(v8 + 8))(v10, v7);
  sub_26162B5FC();
  sub_261623680(v35);
  v22 = (*(v12 + 8))(v15, v32);
  MEMORY[0x28223BE20](v22);
  *(&v31 - 4) = a3 - v20;
  *(&v31 - 3) = 0;
  v29 = v20;
  v30 = v20;
  sub_26162B5CC();
  if (v33)
  {
    v23 = MEMORY[0x266706D50](0, v17);
LABEL_11:
    v24 = v23;
    v25 = [v23 CGImage];

    sub_261620FA8();
    sub_26162B69C();
    LOWORD(v30) = 256;
    v29 = 0.0;
    sub_26162B6FC();
    sub_26162B79C();
    sub_26162B5EC();

    type metadata accessor for QLIconModeRenderer(v26);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v28 = [objc_opt_self() bundleForClass_];
    sub_26162B7AC();
    sub_26162B5EC();

    return;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v17 + 32);
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
}

void sub_261622984(uint64_t *a1, __n128 a2, double a3, double a4, double a5)
{
  type metadata accessor for QLIconModeRenderer(a1);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_26162B7AC();
  sub_26162B5EC();
}

uint64_t sub_261622A64@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(v2 + 48);
  v9[2] = *(v2 + 32);
  v9[3] = v4;
  v10 = *(v2 + 64);
  v5 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v5;
  *a2 = sub_26162B7DC();
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5460, &qword_261631318);
  return sub_2616212D0(v9, a2 + *(v7 + 44));
}

char *sub_261622AD0(char *a1, int64_t a2, char a3)
{
  result = sub_26161E930(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t _sSo18QLIconModeRendererC27QuickLookThumbnailingDaemonE10renderIcon6images4size5scale6flavor7variantSo011QLTRenderedI0CSgSaySo15QLPlatformImageCG_So6CGSizeV12CoreGraphics7CGFloatVs5Int32VSo021QLThumbnailGenerationI7VariantVtFZ_0(uint64_t a1, int a2, uint64_t a3, double a4, double a5, double a6)
{
  result = swift_getKeyPath();
  v12 = result;
  v30 = 0;
  if ((a1 & 0xC000000000000001) != 0)
  {

    v14 = MEMORY[0x266706D50](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = *(a1 + 32);

    v14 = v13;
  }

  v15 = v14;
  v16 = [v14 CGImage];

  Width = CGImageGetWidth(v16);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x266706D50](0, a1);
  }

  else
  {
    v18 = *(a1 + 32);
  }

  v19 = v18;
  v20 = [v18 CGImage];

  Height = CGImageGetHeight(v20);
  *v25 = a4;
  *&v25[1] = a5;
  *&v25[2] = Width;
  *&v25[3] = Height;
  v25[4] = a1;
  v26 = a2;
  v27 = a3;
  v28 = v12;
  v29 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5458, &qword_261631228);
  swift_allocObject();
  MEMORY[0x2667067A0](v25);
  LOBYTE(v25[0]) = 0;
  LOBYTE(v23) = 0;
  sub_26162B57C();
  v22 = sub_26162B58C();
  v24 = 0;
  MEMORY[0x28223BE20](v22);
  sub_26162B59C();

  return 0;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_261622ECC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261622F14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261622F94()
{
  result = qword_27FEB5498;
  if (!qword_27FEB5498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEB5468, &qword_261631320);
    sub_2616236F4(&qword_27FEB54A0, &qword_27FEB54A8, &qword_261631350, MEMORY[0x277CE11A8]);
    sub_2616236F4(&qword_27FEB54B0, &qword_27FEB54B8, &qword_261631358, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB5498);
  }

  return result;
}

uint64_t sub_261623078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2616230E0()
{
  result = qword_27FEB54D8;
  if (!qword_27FEB54D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEB54D0, &qword_261631370);
    sub_261623198();
    sub_2616236F4(&qword_27FEB5500, &qword_27FEB5508, &qword_261631388, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB54D8);
  }

  return result;
}

unint64_t sub_261623198()
{
  result = qword_27FEB54E0;
  if (!qword_27FEB54E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEB54E8, &qword_261631378);
    sub_261623224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB54E0);
  }

  return result;
}

unint64_t sub_261623224()
{
  result = qword_27FEB54F0;
  if (!qword_27FEB54F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEB54F8, &qword_261631380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB54F0);
  }

  return result;
}

unint64_t sub_2616232A8()
{
  result = qword_27FEB5510;
  if (!qword_27FEB5510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEB5480, &qword_261631338);
    sub_261623360();
    sub_2616236F4(&qword_27FEB5528, &qword_27FEB54C8, &qword_261631368, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB5510);
  }

  return result;
}

unint64_t sub_261623360()
{
  result = qword_27FEB5518;
  if (!qword_27FEB5518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEB5478, &qword_261631330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEB5468, &qword_261631320);
    sub_261622F94();
    swift_getOpaqueTypeConformance2();
    sub_2616236F4(&qword_27FEB5520, &qword_27FEB54C0, &qword_261631360, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB5518);
  }

  return result;
}

uint64_t sub_261623454(uint64_t a1, uint64_t a2)
{
  v4 = sub_26162B63C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2616234B8(uint64_t a1)
{
  v2 = sub_26162B63C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261623514(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_26162357C()
{
  result = qword_27FEB5578;
  if (!qword_27FEB5578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEB5570, &qword_2616313D0);
    sub_2616236F4(&qword_27FEB5580, &qword_27FEB5588, &qword_2616313D8, MEMORY[0x277CE10D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB5578);
  }

  return result;
}

double sub_261623634(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2616236F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void traceSQL_cold_1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 tracingPrefix];
  OUTLINED_FUNCTION_3();
  v8 = 2080;
  v9 = a3;
  _os_log_debug_impl(&dword_2615D3000, v5, OS_LOG_TYPE_DEBUG, "SQL %@ %s", v7, 0x16u);
}

void _UIGraphicsBeginImageContextWithOptions_cold_1()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  __48__QLExtensionHostContextThumbnailOperation_main__block_invoke_cold_1(v1);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}