uint64_t sub_22D80ABB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22D81ABA8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039B0, &unk_22D826AE0);
  v44 = v4;
  result = sub_22D81B968();
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
    v40 = v2;
    v41 = (v6 + 16);
    v42 = v8;
    v43 = v6;
    v46 = (v6 + 32);
    v17 = result + 64;
    v50 = v5;
    v18 = v45;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48) + *(v43 + 72) * v25;
      v27 = 24 * v25;
      v48 = *(v43 + 72);
      v49 = v22;
      if (v44)
      {
        (*v46)(v18, v26, v50);
        v28 = *(v8 + 56) + v27;
        v29 = *(v28 + 8);
        v47 = *v28;
        LOBYTE(v8) = *(v28 + 16);
      }

      else
      {
        (*v41)(v18, v26, v50);
        v30 = *(v8 + 56) + v27;
        v29 = *(v30 + 8);
        v8 = *(v30 + 16);
        v47 = *v30;
        sub_22D80EBC0(v47, v29, v8);
      }

      sub_22D80EBD8(&qword_280CD28E8, MEMORY[0x277CB9500], MEMORY[0x277CB9510]);
      result = sub_22D81B1C8();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v18 = v45;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v18 = v45;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v46)(*(v10 + 48) + v48 * v19, v18, v50);
      v20 = *(v10 + 56) + 24 * v19;
      *v20 = v47;
      *(v20 + 8) = v29;
      *(v20 + 16) = v8;
      ++*(v10 + 16);
      v8 = v42;
      v15 = v49;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_22D80AFDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_22D81B968();
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
        sub_22D81A398();
        v27 = v26;
      }

      sub_22D81BBC8();
      sub_22D81B328();
      result = sub_22D81BC18();
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

uint64_t sub_22D80B278(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A08, &qword_22D826AD8);
  result = sub_22D81B968();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_22D80E4E8(v23, &v36);
        v26 = *(*(v5 + 56) + 8 * v22);
        sub_22D81A398();
      }

      result = sub_22D81B7C8();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v4 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_22D80B550(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v38 = a3;
  v39 = a4;
  v6 = sub_22D81A918();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = sub_22D81B7A8();
    v16 = v14;
    v43 = (v15 + 1) & v14;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v41 = a2 + 64;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    v44 = v19;
    do
    {
      v20 = v19 * v13;
      v21 = v16;
      v22 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v6);
      sub_22D80EBD8(&qword_27DA02650, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_22D81B1C8();
      result = (*v40)(v10, v6);
      v16 = v21;
      v24 = v23 & v21;
      if (a1 >= v43)
      {
        if (v24 >= v43 && a1 >= v24)
        {
LABEL_15:
          v17 = v22;
          if (v44 * a1 < v20 || *(a2 + 48) + v44 * a1 >= (*(a2 + 48) + v20 + v44))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v27 = *(a2 + 56);
          v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v38, v39) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v13;
          v31 = v27 + v28 * v13 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v21;
          }

          else
          {
            a1 = v13;
            v33 = v29 == v30;
            v11 = v41;
            v16 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v43 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v41;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v44;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22D80B8A8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D81B7A8() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_22D81BBC8();
      MEMORY[0x2318D2310](qword_22D826B58[v9]);
      result = sub_22D81BC18();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_22D81A8C8() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22D80BA94(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D81B7A8() + 1) & ~v5;
    do
    {
      sub_22D81BBC8();
      sub_22D81A398();
      sub_22D81B328();
      v9 = sub_22D81BC18();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22D80BC44(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D81B7A8() + 1) & ~v5;
    do
    {
      sub_22D80E4E8(*(a2 + 48) + 40 * v6, v24);
      v9 = sub_22D81B7C8();
      result = sub_22D7644A0(v24);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = v13 + 40 * v3;
          v15 = (v13 + 40 * v6);
          if (v3 != v6 || v14 >= v15 + 40)
          {
            v16 = *v15;
            v17 = v15[1];
            *(v14 + 32) = *(v15 + 4);
            *v14 = v16;
            *(v14 + 16) = v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22D80BDE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22D807780(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22D809350(v16, a4 & 1);
      v11 = sub_22D807780(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_22D81BB58();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22D80CD58();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;

  return sub_22D81A398();
}

unint64_t sub_22D80BF64(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_22D8077F8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_22D80D200(&qword_27DA03A40, &unk_22D826B48);
    result = v17;
    goto LABEL_8;
  }

  sub_22D80960C(v14, a3 & 1);
  result = sub_22D8077F8(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_22D81BB58();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

unint64_t sub_22D80C0C0(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_22D807998(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v8;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_22D80CF00();
    result = v17;
    goto LABEL_8;
  }

  sub_22D809BAC(v14, a3 & 1);
  result = sub_22D807998(v8);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_22D81BB58();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

unint64_t sub_22D80C208(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_22D807A48(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_22D80A31C(v14, a3 & 1);
      result = sub_22D807A48(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_22D81BB58();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_22D80D0A4();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_22D80C354(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_22D807A48(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_22D80D200(&qword_27DA039F0, &qword_22D826AB0);
    result = v17;
    goto LABEL_8;
  }

  sub_22D80A5B8(v14, a3 & 1);
  result = sub_22D807A48(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_22D81BB58();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22D80C4B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22D807A48(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22D80D34C();
      goto LABEL_7;
    }

    sub_22D80A84C(v13, a3 & 1);
    v24 = sub_22D807A48(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22D81BB58();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_22D81A8C8();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_22D80CB5C(v10, a2, a1, v16);
}

uint64_t sub_22D80C618(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v34 = a6;
  v35 = a7;
  v36 = a4;
  v37 = a5;
  v8 = v7;
  v12 = sub_22D81A918();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_22D8078C4(a2);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      sub_22D80D5D8(v36, v37, v34, v35);
      goto LABEL_7;
    }

    sub_22D809E78(v21, a3 & 1, v36, v37, v34, v35);
    v32 = sub_22D8078C4(a2);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v8;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v15, a2, v12);
      return sub_22D80CC08(v18, v15, a1, v24, v36, v37);
    }

LABEL_15:
    result = sub_22D81BB58();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v8;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = v24[7];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
  v27 = *(v26 - 8);
  v28 = *(v27 + 40);
  v29 = v26;
  v30 = v25 + *(v27 + 72) * v18;

  return v28(v30, a1, v29);
}

uint64_t sub_22D80C83C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22D807780(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22D80AFDC(v16, a4 & 1, &qword_27DA039E0, &unk_22D826A90);
      v11 = sub_22D807780(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22D81BB58();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_22D80DBDC(&qword_27DA039E0, &unk_22D826A90);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;

  return sub_22D81A398();
}

uint64_t sub_22D80C9D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22D80773C(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_22D80B278(v13, a3 & 1);
      v18 = sub_22D80773C(a2);
      if ((v14 & 1) != (v19 & 1))
      {
LABEL_17:
        result = sub_22D81BB58();
        __break(1u);
        return result;
      }

      v10 = v18;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_22D80DD38();
  }

  v16 = *v4;
  if ((v14 & 1) == 0)
  {
LABEL_13:
    result = sub_22D80E4E8(a2, v26);
    v16[(v10 >> 6) + 8] |= 1 << v10;
    v20 = v16[6] + 40 * v10;
    v21 = v27;
    v22 = v26[1];
    *v20 = v26[0];
    *(v20 + 16) = v22;
    *(v20 + 32) = v21;
    *(v16[7] + 8 * v10) = a1;
    v23 = v16[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      v16[2] = v25;
      return result;
    }

    goto LABEL_16;
  }

LABEL_8:
  *(v16[7] + 8 * v10) = a1;
}

uint64_t sub_22D80CB5C(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_22D81A8C8();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_22D80CC08(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_22D81A918();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a3, v15);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

unint64_t sub_22D80CD10(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_22D80CD58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039F8, &qword_22D826AB8);
  v2 = *v0;
  v3 = sub_22D81B958();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_22D81A398();
        result = sub_22D81A198();
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

id sub_22D80CF00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A30, &unk_22D826B30);
  v2 = *v0;
  v3 = sub_22D81B958();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_22D80D0A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A18, &unk_22D826B00);
  v2 = *v0;
  v3 = sub_22D81B958();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_22D81A198();
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

id sub_22D80D200(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22D81B958();
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
        result = v20;
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

void *sub_22D80D34C()
{
  v1 = v0;
  v29 = sub_22D81A8C8();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A20, &unk_22D826B10);
  v3 = *v0;
  v4 = sub_22D81B958();
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
      v18 = *(*(v3 + 48) + v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + v17) = v18;
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

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_22D80D5D8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v50 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v36 - v8;
  v45 = sub_22D81A918();
  v49 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_22D81B958();
  v12 = v11;
  if (*(v10 + 16))
  {
    result = (v11 + 64);
    v14 = (v10 + 64);
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    v36 = v7;
    v37 = v10 + 64;
    if (v12 != v10 || result >= &v14[8 * v15])
    {
      result = memmove(result, v14, 8 * v15);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v48 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = v49 + 16;
    v42 = v21;
    v39 = v49 + 32;
    v40 = v50 + 16;
    v38 = v50 + 32;
    v43 = v10;
    v23 = v44;
    v22 = v45;
    if (v20)
    {
      do
      {
        v24 = __clz(__rbit64(v20));
        v51 = (v20 - 1) & v20;
LABEL_14:
        v27 = v24 | (v16 << 6);
        v28 = v49;
        v29 = *(v49 + 72) * v27;
        (*(v49 + 16))(v23, *(v10 + 48) + v29, v22);
        v30 = v50;
        v31 = *(v50 + 72) * v27;
        v32 = v46;
        v33 = v47;
        (*(v50 + 16))(v46, *(v10 + 56) + v31, v47);
        v34 = v48;
        (*(v28 + 32))(*(v48 + 48) + v29, v23, v22);
        v35 = *(v34 + 56);
        v10 = v43;
        result = (*(v30 + 32))(v35 + v31, v32, v33);
        v21 = v42;
        v20 = v51;
      }

      while (v51);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v36;
        v12 = v48;
        goto LABEL_18;
      }

      v26 = *(v37 + 8 * v16);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v51 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v12;
  }

  return result;
}

char *sub_22D80D924()
{
  v1 = v0;
  v39 = sub_22D81ABA8();
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039B0, &unk_22D826AE0);
  v3 = *v0;
  v4 = sub_22D81B958();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v40 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    v36 = v14;
    v37 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v41;
        v20 = *(v41 + 72) * v18;
        v22 = v38;
        v21 = v39;
        (*(v41 + 16))(v38, *(v3 + 48) + v20, v39);
        v23 = 24 * v18;
        v24 = *(v3 + 56) + 24 * v18;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v24 + 16);
        v28 = v40;
        (*(v19 + 32))(*(v40 + 48) + v20, v22, v21);
        v29 = *(v28 + 56);
        v3 = v37;
        v30 = v29 + v23;
        *v30 = v25;
        *(v30 + 8) = v26;
        *(v30 + 16) = v27;
        result = sub_22D80EBC0(v25, v26, v27);
        v14 = v36;
        v13 = v42;
      }

      while (v42);
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

        v1 = v32;
        v5 = v40;
        goto LABEL_18;
      }

      v17 = *(v33 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v42 = (v17 - 1) & v17;
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

id sub_22D80DBDC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22D81B958();
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
        sub_22D81A398();
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

void *sub_22D80DD38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A08, &qword_22D826AD8);
  v2 = *v0;
  v3 = sub_22D81B958();
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
        sub_22D80E4E8(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_22D81A398();
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

uint64_t sub_22D80DECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *(a1 + 16);
  if (v18)
  {
    v3 = 0;
    for (i = (a1 + 40); ; i += 2)
    {
      if (*(i - 1))
      {
        v5 = *i;
        ObjectType = swift_getObjectType();
        v7 = *(v5 + 8);
        v8 = *(v7 + 8);
        swift_unknownObjectRetain_n();
        v9 = v8(ObjectType, v7);
        v11 = v10;
        v12 = swift_getObjectType();
        if (v9 == (*(*(a3 + 8) + 8))(v12) && v11 == v13)
        {

          swift_unknownObjectRelease_n();

          return v3;
        }

        v15 = sub_22D81BB08();

        swift_unknownObjectRelease_n();

        if (v15)
        {
          return v3;
        }
      }

      if (v18 == ++v3)
      {
        return 0;
      }
    }
  }

  return 0;
}

unint64_t sub_22D80E058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_22D81ABA8();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_22D80E1A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  result = sub_22D80DECC(*a1, a2, a3);
  v7 = result;
  if (v3)
  {
    return v7;
  }

  if (v6)
  {
    return v4[2];
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_31;
  }

  v10 = v4 + 2;
  v9 = v4[2];
  if (v8 == v9)
  {
    return v7;
  }

  v11 = 2 * result;
  while (v8 < v9)
  {
    v12 = &v4[v11];
    if (!v4[v11 + 6])
    {
      goto LABEL_17;
    }

    v29 = v4;
    v30 = v7;
    v13 = v12[7];
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 8);
    v16 = *(v15 + 8);
    swift_unknownObjectRetain_n();
    v17 = v16(ObjectType, v15);
    v19 = v18;
    v20 = swift_getObjectType();
    if (v17 == (*(*(a3 + 8) + 8))(v20) && v19 == v21)
    {

      swift_unknownObjectRelease_n();

      v4 = v29;
      v7 = v30;
      goto LABEL_9;
    }

    v23 = sub_22D81BB08();

    swift_unknownObjectRelease_n();

    v4 = v29;
    v7 = v30;
    if ((v23 & 1) == 0)
    {
LABEL_17:
      if (v8 != v7)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v7 >= *v10)
        {
          goto LABEL_28;
        }

        if (v8 >= *v10)
        {
          goto LABEL_29;
        }

        v24 = v12[6];
        v25 = v12[7];
        v31 = *&v4[2 * v7 + 4];
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_22D781C08(v4);
        }

        v26 = &v4[2 * v7];
        v26[4] = v24;
        v26[5] = v25;
        result = swift_unknownObjectRelease();
        if (v8 >= v4[2])
        {
          goto LABEL_30;
        }

        *&v4[v11 + 6] = v31;
        result = swift_unknownObjectRelease();
        *a1 = v4;
      }

      ++v7;
    }

LABEL_9:
    ++v8;
    v10 = v4 + 2;
    v9 = v4[2];
    v11 += 2;
    if (v8 == v9)
    {
      return v7;
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

unint64_t sub_22D80E410(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03948, &qword_22D826AD0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

uint64_t objectdestroyTm_5()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22D80E940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextClockDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D80E9A4(uint64_t a1)
{
  v2 = type metadata accessor for TextClockDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22D80EA34(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_40Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D80EBC4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    return sub_22D81A398();
  }

  return result;
}

uint64_t sub_22D80EBD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22D80EC4C()
{
  result = qword_27DA03A48;
  if (!qword_27DA03A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03A48);
  }

  return result;
}

unint64_t sub_22D80ECA4()
{
  result = qword_27DA03A50;
  if (!qword_27DA03A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03A50);
  }

  return result;
}

uint64_t sub_22D80ED30@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v1 - 8);
  v17 = &v16 - v2;
  v3 = sub_22D81A748();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81A958();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v8 - 8);
  v16 = sub_22D81A768();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  sub_22D81B228();
  sub_22D81A948();
  v10 = *MEMORY[0x277CC9110];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v11(v6, v10, v3);
  v12 = v17;
  sub_22D81A778();
  (*(v9 + 56))(v12, 0, 1, v16);
  v13 = v18;
  sub_22D81A2C8();
  v14 = sub_22D81A2B8();
  return (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
}

uint64_t sub_22D80F0B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22D80F0D4, 0, 0);
}

uint64_t sub_22D80F0D4()
{
  v1 = [*(v0 + 24) timersSync];
  if (!v1)
  {
    goto LABEL_19;
  }

  sub_22D7E1A14();
  v2 = sub_22D81B438();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_18:

    v1 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v3 = sub_22D81B938();
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_4:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2318D1F70](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v1 = v5;
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if ([v5 state] == 2)
    {
      break;
    }

    ++v4;
    if (v6 == v3)
    {
      goto LABEL_18;
    }
  }

  v7 = [v1 timerByUpdatingWithState_];
  if (v7)
  {
    v8 = v7;
  }

LABEL_19:
  sub_22D819FD8();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22D80F294()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81A958();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D80F454(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A68, &qword_22D826CD8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22D81A408();
  return sub_22D81A3B8();
}

uint64_t sub_22D80F52C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D744B0C;

  return sub_22D80F0B4(a1, v4);
}

uint64_t sub_22D80F5CC(uint64_t a1)
{
  v2 = sub_22D7D1DCC();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_22D80F640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = sub_22D813AA4(a3, a4, a1, a7, a8);

    if (v15)
    {
      v16 = v15;
      a5(&v16);
    }
  }

  return result;
}

uint64_t sub_22D80F708(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 200) = v2;
  sub_22D81A398();
}

uint64_t sub_22D80F7A0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 200) = a1;
}

uint64_t AlarmsViewModel.__allocating_init(manager:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 184) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  swift_unknownObjectWeakInit();
  v6 = MEMORY[0x277D84F90];
  *(v5 + 192) = a1;
  *(v5 + 200) = v6;
  *(v5 + 184) = a3;
  swift_unknownObjectWeakAssign();
  v7 = a1;
  sub_22D811A2C();
  sub_22D811CC0();
  sub_22D811F54();
  sub_22D8121E8();

  swift_unknownObjectRelease();
  return v5;
}

uint64_t AlarmsViewModel.init(manager:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 184) = 0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  swift_unknownObjectWeakInit();
  v6 = MEMORY[0x277D84F90];
  *(v3 + 192) = a1;
  *(v3 + 200) = v6;
  *(v3 + 184) = a3;
  swift_unknownObjectWeakAssign();
  v7 = a1;
  sub_22D811A2C();
  sub_22D811CC0();
  sub_22D811F54();
  sub_22D8121E8();

  swift_unknownObjectRelease();
  return v3;
}

Swift::Void __swiftcall AlarmsViewModel.registerPublishers()()
{
  sub_22D811A2C();
  sub_22D811CC0();
  sub_22D811F54();

  sub_22D8121E8();
}

uint64_t AlarmsViewModel.deinit()
{
  AlarmsViewModel.unregisterPublishers()();
  sub_22D764440(v0 + 16, &qword_27DA01FE8, &unk_22D81F130);
  sub_22D764440(v0 + 56, &qword_27DA01FE8, &unk_22D81F130);
  sub_22D764440(v0 + 96, &qword_27DA01FE8, &unk_22D81F130);
  sub_22D764440(v0 + 136, &qword_27DA01FE8, &unk_22D81F130);
  sub_22D749D28(v0 + 176);

  return v0;
}

Swift::Void __swiftcall AlarmsViewModel.unregisterPublishers()()
{
  swift_beginAccess();
  sub_22D81247C(v0 + 16, &v3);
  if (*(&v4 + 1))
  {
    sub_22D75CCD8(&v3, v1);
    sub_22D764440(&v3, &qword_27DA01FE8, &unk_22D81F130);
    __swift_project_boxed_opaque_existential_0(v1, v2);
    sub_22D81ACB8();
    __swift_destroy_boxed_opaque_existential_0(v1);
  }

  else
  {
    sub_22D764440(&v3, &qword_27DA01FE8, &unk_22D81F130);
  }

  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  sub_22D7643D0(&v3, v0 + 16);
  swift_endAccess();
  swift_beginAccess();
  sub_22D81247C(v0 + 56, &v3);
  if (*(&v4 + 1))
  {
    sub_22D75CCD8(&v3, v1);
    sub_22D764440(&v3, &qword_27DA01FE8, &unk_22D81F130);
    __swift_project_boxed_opaque_existential_0(v1, v2);
    sub_22D81ACB8();
    __swift_destroy_boxed_opaque_existential_0(v1);
  }

  else
  {
    sub_22D764440(&v3, &qword_27DA01FE8, &unk_22D81F130);
  }

  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  sub_22D7643D0(&v3, v0 + 56);
  swift_endAccess();
  swift_beginAccess();
  sub_22D81247C(v0 + 96, &v3);
  if (*(&v4 + 1))
  {
    sub_22D75CCD8(&v3, v1);
    sub_22D764440(&v3, &qword_27DA01FE8, &unk_22D81F130);
    __swift_project_boxed_opaque_existential_0(v1, v2);
    sub_22D81ACB8();
    __swift_destroy_boxed_opaque_existential_0(v1);
  }

  else
  {
    sub_22D764440(&v3, &qword_27DA01FE8, &unk_22D81F130);
  }

  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  sub_22D7643D0(&v3, v0 + 96);
  swift_endAccess();
  swift_beginAccess();
  sub_22D81247C(v0 + 136, &v3);
  if (*(&v4 + 1))
  {
    sub_22D75CCD8(&v3, v1);
    sub_22D764440(&v3, &qword_27DA01FE8, &unk_22D81F130);
    __swift_project_boxed_opaque_existential_0(v1, v2);
    sub_22D81ACB8();
    __swift_destroy_boxed_opaque_existential_0(v1);
  }

  else
  {
    sub_22D764440(&v3, &qword_27DA01FE8, &unk_22D81F130);
  }

  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  sub_22D7643D0(&v3, v0 + 136);
  swift_endAccess();
}

uint64_t AlarmsViewModel.__deallocating_deinit()
{
  AlarmsViewModel.unregisterPublishers()();
  sub_22D764440(v0 + 16, &qword_27DA01FE8, &unk_22D81F130);
  sub_22D764440(v0 + 56, &qword_27DA01FE8, &unk_22D81F130);
  sub_22D764440(v0 + 96, &qword_27DA01FE8, &unk_22D81F130);
  sub_22D764440(v0 + 136, &qword_27DA01FE8, &unk_22D81F130);
  sub_22D749D28(v0 + 176);

  return swift_deallocClassInstance();
}

uint64_t sub_22D80FE54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_22D81B4F8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  sub_22D81A198();
  sub_22D7BD9C8(0, 0, v3, &unk_22D826CE8, v5);

  return sub_22D764440(v3, &unk_27DA01FF0, &qword_22D81FC70);
}

uint64_t sub_22D80FFA0()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A70, &qword_22D826CF8);
  *v3 = v0;
  v3[1] = sub_22D8100AC;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD00000000000002BLL, 0x800000022D82C8A0, sub_22D813C74, v2, v4);
}

uint64_t sub_22D8100AC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_22D810244;
  }

  else
  {

    v2 = sub_22D8101C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D8101C8()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_beginAccess();
  *(v2 + 200) = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_22D810244()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22D8102B0(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 56) = a1;
  return MEMORY[0x2822009F8](sub_22D8102D4, 0, 0);
}

uint64_t sub_22D8102D4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A70, &qword_22D826CF8);
  *v4 = v0;
  v4[1] = sub_22D758C18;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000002BLL, 0x800000022D82C8A0, sub_22D8125A0, v3, v5);
}

void sub_22D8103E4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A78, &unk_22D826E60);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [*(a2 + 192) alarmsIncludingSleepAlarm_];
  if (v10)
  {
    v11 = v10;
    (*(v7 + 16))(v9, a1, v6);
    v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v13 = swift_allocObject();
    (*(v7 + 32))(v13 + v12, v9, v6);
    aBlock[4] = sub_22D81364C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D78A760;
    aBlock[3] = &block_descriptor_16;
    v14 = _Block_copy(aBlock);
    v15 = v11;

    v16 = [v15 addCompletionBlock_];

    _Block_release(v14);
  }
}

uint64_t sub_22D8105E0(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    if (a1)
    {
      sub_22D793E6C();
      sub_22D81B428();
    }

    sub_22D8136F0();
    swift_allocError();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A78, &unk_22D826E60);
  return sub_22D81B4A8();
}

uint64_t sub_22D8106B0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 72) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x2822009F8](sub_22D8106D8, 0, 0);
}

uint64_t sub_22D8106D8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A70, &qword_22D826CF8);
  *v4 = v0;
  v4[1] = sub_22D8107E8;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000002BLL, 0x800000022D82C8A0, sub_22D813C74, v3, v5);
}

uint64_t sub_22D8107E8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_22D810AA8;
  }

  else
  {

    v2 = sub_22D810904;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D810904()
{
  v2 = v0[2];
  if (v2 >> 62)
  {
LABEL_20:
    v3 = sub_22D81B938();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v17 = v2 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x2318D1F70](v4, v2);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            v14 = v1;
            goto LABEL_22;
          }
        }

        else
        {
          if (v4 >= *(v17 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          v5 = *(v2 + 8 * v4 + 32);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_16;
          }
        }

        v7 = v0[3];
        v18 = v0[4];
        v1 = v5;
        v8 = [v5 alarmIDString];
        v9 = sub_22D81B2C8();
        v11 = v10;

        if (v9 == v7 && v11 == v18)
        {
          goto LABEL_17;
        }

        v13 = sub_22D81BB08();

        if (v13)
        {
          goto LABEL_18;
        }

        ++v4;
      }

      while (v6 != v3);
    }
  }

  v14 = 0;
LABEL_22:
  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_22D810AA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D810B0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D810B2C, 0, 0);
}

uint64_t sub_22D810B2C()
{
  v1 = [*(v0[3] + 192) addAlarm_];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_22D7DC84C;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7DFE58, v2, v4);
}

uint64_t sub_22D810C40(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D810C60, 0, 0);
}

uint64_t sub_22D810C60()
{
  v1 = [*(v0[3] + 192) updateAlarm_];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_22D7DD5CC;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v2, v4);
}

uint64_t sub_22D810D74(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D810D94, 0, 0);
}

uint64_t sub_22D810D94()
{
  v1 = [*(v0[3] + 192) removeAlarm_];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_22D7DD5CC;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v2, v4);
}

uint64_t sub_22D810EA8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D810EC8, 0, 0);
}

uint64_t sub_22D810EC8()
{
  v1 = [*(v0 + 16) alarmIDString];
  v2 = sub_22D81B2C8();
  v4 = v3;

  *(v0 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_22D7DDA18;

  return sub_22D810F98(v2, v4);
}

uint64_t sub_22D810F98(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22D810FBC, 0, 0);
}

uint64_t sub_22D810FBC()
{
  v1 = *(v0[4] + 192);
  v2 = sub_22D81B2B8();
  v3 = [v1 snoozeAlarmWithIdentifier_];
  v0[5] = v3;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_22D7DDD28;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v4, v6);
}

uint64_t sub_22D8110E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D811108, 0, 0);
}

uint64_t sub_22D811108()
{
  v1 = [*(v0 + 16) alarmIDString];
  v2 = sub_22D81B2C8();
  v4 = v3;

  *(v0 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_22D7DE004;

  return sub_22D8111D8(v2, v4);
}

uint64_t sub_22D8111D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22D8111FC, 0, 0);
}

uint64_t sub_22D8111FC()
{
  v1 = *(v0[4] + 192);
  v2 = sub_22D81B2B8();
  v3 = [v1 dismissAlarmWithIdentifier_];
  v0[5] = v3;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_22D7DE2B0;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v4, v6);
}

uint64_t sub_22D811328(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D811348, 0, 0);
}

uint64_t sub_22D811348()
{
  v1 = [*(v0 + 16) alarmIDString];
  v2 = sub_22D81B2C8();
  v4 = v3;

  *(v0 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_22D7DE004;

  return sub_22D811418(v2, v4);
}

uint64_t sub_22D811418(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22D81143C, 0, 0);
}

uint64_t sub_22D81143C()
{
  v1 = *(v0[4] + 192);
  v2 = sub_22D81B2B8();
  v3 = [v1 dismissAlarmWithIdentifier:v2 dismissAction:6];
  v0[5] = v3;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_22D7DE2B0;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v4, v6);
}

uint64_t sub_22D81156C(uint64_t a1, int *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_22D81166C;

  return v7(a1);
}

uint64_t sub_22D81166C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22D81179C, 0, 0);
  }
}

uint64_t sub_22D81179C()
{
  v1 = [*(v0 + 16) alarmIDString];
  v2 = sub_22D81B2C8();
  v4 = v3;

  *(v0 + 40) = v4;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_22D811870;

  return sub_22D8106B0(v2, v4, 0);
}

uint64_t sub_22D811870(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22D8119C8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_22D8119C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D811A2C()
{
  v1 = sub_22D81B6C8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  swift_beginAccess();
  sub_22D81247C(v0 + 16, v20);
  v5 = v21;
  result = sub_22D764440(v20, &qword_27DA01FE8, &unk_22D81F130);
  if (!v5)
  {
    v7 = *MEMORY[0x277D29590];
    v8 = sub_22D81B2C8();
    v10 = v9;
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = objc_opt_self();
    v13 = v7;
    v14 = [v12 defaultCenter];
    v15 = v0;
    sub_22D81B6D8();

    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v8;
    v17[4] = v10;
    v17[5] = sub_22D813BC8;
    v17[6] = v11;
    sub_22D813A4C();
    sub_22D81A198();
    v18 = sub_22D81AD58();

    (*(v2 + 8))(v4, v1);
    v21 = sub_22D81ACF8();
    v22 = MEMORY[0x277CBCDA0];

    v20[0] = v18;
    swift_beginAccess();
    sub_22D7643D0(v20, v15 + 16);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22D811CC0()
{
  v1 = sub_22D81B6C8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  swift_beginAccess();
  sub_22D81247C(v0 + 56, v20);
  v5 = v21;
  result = sub_22D764440(v20, &qword_27DA01FE8, &unk_22D81F130);
  if (!v5)
  {
    v7 = *MEMORY[0x277D295B0];
    v8 = sub_22D81B2C8();
    v10 = v9;
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = objc_opt_self();
    v13 = v7;
    v14 = [v12 defaultCenter];
    v15 = v0;
    sub_22D81B6D8();

    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v8;
    v17[4] = v10;
    v17[5] = sub_22D813BC0;
    v17[6] = v11;
    sub_22D813A4C();
    sub_22D81A198();
    v18 = sub_22D81AD58();

    (*(v2 + 8))(v4, v1);
    v21 = sub_22D81ACF8();
    v22 = MEMORY[0x277CBCDA0];

    v20[0] = v18;
    swift_beginAccess();
    sub_22D7643D0(v20, v15 + 56);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22D811F54()
{
  v1 = sub_22D81B6C8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  swift_beginAccess();
  sub_22D81247C(v0 + 96, v20);
  v5 = v21;
  result = sub_22D764440(v20, &qword_27DA01FE8, &unk_22D81F130);
  if (!v5)
  {
    v7 = *MEMORY[0x277D29588];
    v8 = sub_22D81B2C8();
    v10 = v9;
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = objc_opt_self();
    v13 = v7;
    v14 = [v12 defaultCenter];
    v15 = v0;
    sub_22D81B6D8();

    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v8;
    v17[4] = v10;
    v17[5] = sub_22D813BB8;
    v17[6] = v11;
    sub_22D813A4C();
    sub_22D81A198();
    v18 = sub_22D81AD58();

    (*(v2 + 8))(v4, v1);
    v21 = sub_22D81ACF8();
    v22 = MEMORY[0x277CBCDA0];

    v20[0] = v18;
    swift_beginAccess();
    sub_22D7643D0(v20, v15 + 96);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22D8121E8()
{
  v1 = sub_22D81B6C8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  swift_beginAccess();
  sub_22D81247C(v0 + 136, v20);
  v5 = v21;
  result = sub_22D764440(v20, &qword_27DA01FE8, &unk_22D81F130);
  if (!v5)
  {
    v7 = *MEMORY[0x277D295A8];
    v8 = sub_22D81B2C8();
    v10 = v9;
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = objc_opt_self();
    v13 = v7;
    v14 = [v12 defaultCenter];
    v15 = v0;
    sub_22D81B6D8();

    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v8;
    v17[4] = v10;
    v17[5] = sub_22D813A40;
    v17[6] = v11;
    sub_22D813A4C();
    sub_22D81A198();
    v18 = sub_22D81AD58();

    (*(v2 + 8))(v4, v1);
    v21 = sub_22D81ACF8();
    v22 = MEMORY[0x277CBCDA0];

    v20[0] = v18;
    swift_beginAccess();
    sub_22D7643D0(v20, v15 + 136);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22D81247C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE8, &unk_22D81F130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D8124EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B0C;

  return sub_22D80FF80(a1, v4, v5, v6);
}

uint64_t dispatch thunk of AlarmsViewModel.fetchAlarmsFromServer(includingSleepAlarm:)(uint64_t a1)
{
  v6 = (*(*v1 + 304) + **(*v1 + 304));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22D812850;

  return v6(a1);
}

uint64_t sub_22D812850(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of AlarmsViewModel.getAlarm(_:includingSleepAlarm:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 312) + **(*v3 + 312));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22D813C6C;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of AlarmsViewModel.createAlarm(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 320) + **(*v1 + 320));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22D744B0C;

  return v6(a1);
}

uint64_t dispatch thunk of AlarmsViewModel.updateAlarm(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 328) + **(*v1 + 328));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22D744B08;

  return v6(a1);
}

uint64_t dispatch thunk of AlarmsViewModel.deleteAlarm(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 336) + **(*v1 + 336));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22D744B08;

  return v6(a1);
}

uint64_t dispatch thunk of AlarmsViewModel.snoozeAlarm(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 344) + **(*v1 + 344));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22D744B08;

  return v6(a1);
}

uint64_t dispatch thunk of AlarmsViewModel.snoozeAlarm(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 352) + **(*v2 + 352));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22D744B08;

  return v8(a1, a2);
}

uint64_t dispatch thunk of AlarmsViewModel.dismissAlarm(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 360) + **(*v1 + 360));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22D744B08;

  return v6(a1);
}

uint64_t dispatch thunk of AlarmsViewModel.dismissAlarm(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 368) + **(*v2 + 368));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22D744B08;

  return v8(a1, a2);
}

uint64_t dispatch thunk of AlarmsViewModel.dismissSnoozedAlarm(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 376) + **(*v1 + 376));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22D744B08;

  return v6(a1);
}

uint64_t dispatch thunk of AlarmsViewModel.dismissSnoozedAlarm(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 384) + **(*v2 + 384));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22D744B08;

  return v8(a1, a2);
}

uint64_t dispatch thunk of AlarmsViewModel.performAndReturnAlarm(_:operation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 392) + **(*v3 + 392));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22D813C6C;

  return v10(a1, a2, a3);
}

uint64_t sub_22D81364C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A78, &unk_22D826E60);

  return sub_22D8105E0(a1, a2);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

unint64_t sub_22D8136F0()
{
  result = qword_27DA03A80;
  if (!qword_27DA03A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03A80);
  }

  return result;
}

uint64_t sub_22D813744(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 184);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v2, ObjectType, v6);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_22D8137E8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 184);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(v2, ObjectType, v6);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_22D81388C(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 >> 62)
  {
    if (!sub_22D81B938())
    {
      return;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x2318D1F70](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v6 = Strong, v7 = swift_unknownObjectWeakLoadStrong(), v8 = *(v6 + 184), , v7))
  {
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(v4, ObjectType, v8);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_22D81399C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 184);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 32))(v2, ObjectType, v6);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unint64_t sub_22D813A4C()
{
  result = qword_280CD2980;
  if (!qword_280CD2980)
  {
    sub_22D81B6C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2980);
  }

  return result;
}

uint64_t sub_22D813AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = sub_22D81A618();
  if (v9)
  {
    v10 = v9;
    *&v15[0] = a1;
    *(&v15[0] + 1) = a2;
    sub_22D81A398();
    sub_22D81B7E8();
    if (*(v10 + 16))
    {
      v11 = sub_22D80773C(v14);
      if (v12)
      {
        sub_22D7507C0(*(v10 + 56) + 32 * v11, v15);
        sub_22D7644A0(v14);

        goto LABEL_7;
      }
    }

    sub_22D7644A0(v14);
  }

  memset(v15, 0, sizeof(v15));
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02030, qword_22D81F298);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (swift_dynamicCast())
  {
    return v14[0];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22D813C18()
{
  result = qword_27DA03A88;
  if (!qword_27DA03A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03A88);
  }

  return result;
}

uint64_t SerialTaskQueue.__allocating_init()()
{
  v0 = swift_allocObject();
  SerialTaskQueue.init()();
  return v0;
}

uint64_t SerialTaskQueue.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v1 - 8);
  v31 = &v28 - v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A90, &qword_22D826F38);
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A98, &qword_22D826F40);
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v30);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03AA0, &unk_22D826F48);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v32 = v0;
  swift_defaultActor_initialize();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  v18 = *(v17 - 8);
  (*(v18 + 56))(v16, 1, 1, v17);
  v34 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03AA8, &qword_22D826F58);
  (*(v3 + 104))(v5, *MEMORY[0x277D85778], v33);
  sub_22D81B588();
  sub_22D8141F8(v16, v14);
  result = (*(v18 + 48))(v14, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v20 = v32;
    (*(v18 + 32))(v32 + OBJC_IVAR____TtC18MobileTimerSupport15SerialTaskQueue__streamContinuation, v14, v17);
    v21 = sub_22D81B4F8();
    v22 = v31;
    (*(*(v21 - 8) + 56))(v31, 1, 1, v21);
    v24 = v29;
    v23 = v30;
    (*(v6 + 16))(v29, v10, v30);
    v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    (*(v6 + 32))(v26 + v25, v24, v23);
    v27 = sub_22D75D890(0, 0, v22, &unk_22D826F68, v26);
    (*(v6 + 8))(v10, v23);
    *(v20 + OBJC_IVAR____TtC18MobileTimerSupport15SerialTaskQueue__task) = v27;
    sub_22D8144FC(v16);
    return v20;
  }

  return result;
}

uint64_t sub_22D814124(uint64_t a1, uint64_t a2)
{
  sub_22D8144FC(a2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_22D8141F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03AA0, &unk_22D826F48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D814268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03AB0, qword_22D826FF0);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D814334, 0, 0);
}

uint64_t sub_22D814334()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A98, &qword_22D826F40);
  sub_22D81B558();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_22D7437E0;
  v2 = *(v0 + 40);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v2);
}

uint64_t sub_22D814400(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A98, &qword_22D826F40) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B0C;

  return sub_22D814268(a1, v6, v7, v1 + v5);
}

uint64_t sub_22D8144FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03AA0, &unk_22D826F48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SerialTaskQueue.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC18MobileTimerSupport15SerialTaskQueue__streamContinuation;
  (*(v3 + 16))(&v9 - v4, v1 + OBJC_IVAR____TtC18MobileTimerSupport15SerialTaskQueue__streamContinuation, v2);
  sub_22D81B538();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v7((v1 + v6), v2);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t SerialTaskQueue.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC18MobileTimerSupport15SerialTaskQueue__streamContinuation;
  (*(v3 + 16))(&v9 - v4, v1 + OBJC_IVAR____TtC18MobileTimerSupport15SerialTaskQueue__streamContinuation, v2);
  sub_22D81B538();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v7((v1 + v6), v2);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_22D8147C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[0] = &unk_22D825430;
  v10[1] = v8;
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();
  return (*(v5 + 8))(v7, v4);
}

uint64_t type metadata accessor for SerialTaskQueue(uint64_t a1)
{
  result = qword_280CD20A0;
  if (!qword_280CD20A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22D81498C(uint64_t a1)
{
  sub_22D814AA8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22D814AA8(uint64_t a1)
{
  if (!qword_280CD1550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA03AA8, &qword_22D826F58);
    v1 = sub_22D81B548();
    if (!v2)
    {
      atomic_store(v1, &qword_280CD1550);
    }
  }
}

uint64_t sub_22D814B7C()
{

  return v0;
}

uint64_t sub_22D814BAC()
{
  sub_22D814B7C();

  return swift_deallocClassInstance();
}

uint64_t sub_22D814BF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_22D81A748();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22D81A958();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_22D81A768();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  sub_22D81B228();
  sub_22D81A948();
  (*(v4 + 104))(v6, *MEMORY[0x277CC9110], v3);
  sub_22D81A778();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_22D81A488();
}

uint64_t sub_22D814EB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C67676F74;
  }

  else
  {
    v3 = 1852994932;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C67676F74;
  }

  else
  {
    v5 = 1852994932;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22D81BB08();
  }

  return v8 & 1;
}

unint64_t sub_22D814F58()
{
  result = qword_27DA03AB8;
  if (!qword_27DA03AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03AB8);
  }

  return result;
}

uint64_t sub_22D814FAC()
{
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D815024(uint64_t a1)
{
  sub_22D81B328();
}

uint64_t sub_22D815088(uint64_t a1)
{
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D8150FC@<X0>(char *a2@<X8>)
{
  v3 = sub_22D81B998();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_22D81515C(uint64_t *a1@<X8>)
{
  v2 = 1852994932;
  if (*v1)
  {
    v2 = 0x656C67676F74;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_22D815194()
{
  result = qword_27DA03AC0;
  if (!qword_27DA03AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03AC0);
  }

  return result;
}

unint64_t sub_22D8151EC()
{
  result = qword_27DA03AC8;
  if (!qword_27DA03AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03AC8);
  }

  return result;
}

unint64_t sub_22D815244()
{
  result = qword_27DA03AD0;
  if (!qword_27DA03AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03AD0);
  }

  return result;
}

unint64_t sub_22D81529C()
{
  result = qword_27DA03AD8;
  if (!qword_27DA03AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03AD8);
  }

  return result;
}

unint64_t sub_22D8152F0()
{
  result = qword_27DA03AE0;
  if (!qword_27DA03AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03AE0);
  }

  return result;
}

unint64_t sub_22D815344()
{
  result = qword_27DA03AE8;
  if (!qword_27DA03AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03AE8);
  }

  return result;
}

unint64_t sub_22D81539C()
{
  result = qword_27DA03AF0;
  if (!qword_27DA03AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03AF0);
  }

  return result;
}

unint64_t sub_22D815444()
{
  result = qword_27DA03AF8;
  if (!qword_27DA03AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03AF8);
  }

  return result;
}

uint64_t sub_22D815498(uint64_t a1)
{
  v2 = sub_22D815444();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_22D8154E8()
{
  result = qword_27DA03B00;
  if (!qword_27DA03B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03B00);
  }

  return result;
}

unint64_t sub_22D815540()
{
  result = qword_27DA03B08;
  if (!qword_27DA03B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03B08);
  }

  return result;
}

unint64_t sub_22D815598()
{
  result = qword_27DA03B10;
  if (!qword_27DA03B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03B10);
  }

  return result;
}

uint64_t sub_22D8155F0(uint64_t a1)
{
  v2 = sub_22D81539C();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_22D815694()
{
  result = qword_27DA03B28;
  if (!qword_27DA03B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03B28);
  }

  return result;
}

unint64_t sub_22D8156EC()
{
  result = qword_27DA03B30;
  if (!qword_27DA03B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03B30);
  }

  return result;
}

uint64_t sub_22D815790@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v1 - 8);
  v17 = &v16 - v2;
  v3 = sub_22D81A748();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81A958();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v8 - 8);
  v16 = sub_22D81A768();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  sub_22D81B228();
  sub_22D81A948();
  v10 = *MEMORY[0x277CC9110];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v11(v6, v10, v3);
  v12 = v17;
  sub_22D81A778();
  (*(v9 + 56))(v12, 0, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C40, &qword_22D81F780);
  *(swift_allocObject() + 16) = xmmword_22D821040;
  sub_22D81A738();
  sub_22D81A738();
  v13 = v18;
  sub_22D81A2C8();
  v14 = sub_22D81A2B8();
  return (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
}

uint64_t sub_22D815BD0@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03B98, &qword_22D8274E8);
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v20 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v24 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BA0, &qword_22D8274F0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v19 = &v19 - v11;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BA8, &qword_22D8274F8);
  sub_22D817FB8();
  sub_22D815344();
  sub_22D7548B0(&qword_27DA03BB0, &qword_27DA03BA8, &qword_22D8274F8, MEMORY[0x277CBA490]);
  sub_22D81A548();
  v21 = sub_22D7548B0(&qword_27DA03BB8, &qword_27DA03BA0, &qword_22D8274F0, MEMORY[0x277CBA488]);
  sub_22D81A4C8();
  v12 = *(v7 + 8);
  v22 = v7 + 8;
  v23 = v12;
  v12(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BC0, &qword_22D827500);
  sub_22D7548B0(&qword_27DA03BC8, &qword_27DA03BC0, &qword_22D827500, MEMORY[0x277CBA2C0]);
  v13 = v20;
  sub_22D81A598();
  sub_22D7548B0(&qword_27DA03BD0, &qword_27DA03B98, &qword_22D8274E8, MEMORY[0x277CBA4C8]);
  v14 = v24;
  v15 = v25;
  sub_22D81A4C8();
  v16 = *(v26 + 8);
  v16(v13, v15);
  v17 = v19;
  sub_22D81A4B8();
  v16(v14, v15);
  return v23(v17, v6);
}

uint64_t sub_22D815FE0@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v1 = sub_22D81A4A8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BA8, &qword_22D8274F8);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  swift_getKeyPath();
  (*(v2 + 104))(v4, *MEMORY[0x277CBA468], v1);
  v16 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BC0, &qword_22D827500);
  sub_22D817FB8();
  sub_22D7548B0(&qword_27DA03BC8, &qword_27DA03BC0, &qword_22D827500, MEMORY[0x277CBA2C0]);
  sub_22D7548B0(&qword_27DA03BF8, &qword_27DA01E48, &qword_22D81E9B8, MEMORY[0x277CB9F10]);
  sub_22D81A558();
  v12 = sub_22D7548B0(&qword_27DA03BB0, &qword_27DA03BA8, &qword_22D8274F8, MEMORY[0x277CBA490]);
  MEMORY[0x2318D0B50](v9, &type metadata for ToggleAlarmIntent, v5, v12);
  v13 = *(v6 + 8);
  v13(v9, v5);
  MEMORY[0x2318D0B40](v11, &type metadata for ToggleAlarmIntent, v5, v12);
  return (v13)(v11, v5);
}

uint64_t sub_22D81633C@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[0] = a3;
  v16[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BD8, &qword_22D827508);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BE0, &qword_22D827510);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BC0, &qword_22D827500);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  sub_22D817FB8();
  sub_22D81A3F8();
  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BE8, &qword_22D827518);
  sub_22D81A3D8();

  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BF0, &qword_22D827548);
  sub_22D81A3D8();

  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C00, &unk_22D827578);
  sub_22D81A3D8();

  sub_22D81A3E8();
  sub_22D81A418();
  sub_22D81A3B8();
  v13 = sub_22D7548B0(&qword_27DA03BC8, &qword_27DA03BC0, &qword_22D827500, MEMORY[0x277CBA2C0]);
  MEMORY[0x2318D0B50](v10, &type metadata for ToggleAlarmIntent, v6, v13);
  v14 = *(v7 + 8);
  v14(v10, v6);
  MEMORY[0x2318D0B40](v12, &type metadata for ToggleAlarmIntent, v6, v13);
  return (v14)(v12, v6);
}

uint64_t sub_22D8166BC@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BD8, &qword_22D827508);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BE0, &qword_22D827510);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BC0, &qword_22D827500);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_22D817FB8();
  sub_22D81A3F8();
  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BE8, &qword_22D827518);
  sub_22D81A3D8();

  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03BF0, &qword_22D827548);
  sub_22D81A3D8();

  sub_22D81A3E8();
  sub_22D81A418();
  sub_22D81A3B8();
  v10 = sub_22D7548B0(&qword_27DA03BC8, &qword_27DA03BC0, &qword_22D827500, MEMORY[0x277CBA2C0]);
  MEMORY[0x2318D0B50](v7, &type metadata for ToggleAlarmIntent, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x2318D0B40](v9, &type metadata for ToggleAlarmIntent, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_22D8169E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C10, &unk_22D827470);
  v4[13] = swift_task_alloc();
  sub_22D81B288();
  v4[14] = swift_task_alloc();
  v5 = sub_22D819F78();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_22D81A748();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  sub_22D81A958();
  v4[21] = swift_task_alloc();
  sub_22D81B2A8();
  v4[22] = swift_task_alloc();
  v7 = sub_22D81A768();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v8 = sub_22D81A918();
  v4[27] = v8;
  v4[28] = *(v8 - 8);
  v4[29] = swift_task_alloc();
  v9 = type metadata accessor for AlarmEntity(0);
  v4[30] = v9;
  v4[31] = *(v9 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D816CF4, 0, 0);
}

uint64_t sub_22D816CF4()
{
  if (qword_27DA019E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);
  v5 = qword_27DA0D378;
  *(v0 + 272) = qword_27DA0D378;
  sub_22D81A0B8();
  v6 = *(v3 + 16);
  *(v0 + 280) = v6;
  *(v0 + 288) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v4);
  sub_22D750754(v1);
  sub_22D81A8D8();
  v7 = *(v3 + 8);
  *(v0 + 296) = v7;
  *(v0 + 304) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v4);
  v8 = sub_22D81B2B8();

  v9 = [v5 alarmWithIDString_];

  if (!v9)
  {
    __break(1u);
    return MEMORY[0x2822008A0](v10, v11, v12, v13, v14, v15, v16, v17);
  }

  [v9 mutableCopy];

  sub_22D81B758();
  swift_unknownObjectRelease();
  sub_22D819C18();
  if (swift_dynamicCast())
  {
    v18 = *(v0 + 48);
    *(v0 + 312) = v18;
    sub_22D81A0B8();
    if (*(v0 + 344))
    {
      v19 = [v18 isEnabled] ^ 1;
    }

    else
    {
      sub_22D81A0B8();
      v19 = *(v0 + 345);
    }

    [v18 setEnabled_];
    v28 = swift_task_alloc();
    *(v0 + 320) = v28;
    *(v28 + 16) = v5;
    *(v28 + 24) = v18;
    v29 = swift_task_alloc();
    *(v0 + 328) = v29;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03B78, &qword_22D8274A0);
    *v29 = v0;
    v29[1] = sub_22D817180;
    v15 = sub_22D819C64;
    v13 = 0x286D726F66726570;
    v10 = v0 + 56;
    v11 = 0;
    v12 = 0;
    v14 = 0xE900000000000029;
    v16 = v28;

    return MEMORY[0x2822008A0](v10, v11, v12, v13, v14, v15, v16, v17);
  }

  v20 = *(v0 + 152);
  v21 = *(v0 + 160);
  v22 = *(v0 + 136);
  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = *(v0 + 104);
  v30 = *(v0 + 120);
  (*(*(v0 + 248) + 56))(v25, 1, 1, *(v0 + 240));
  sub_22D81B228();
  sub_22D81A948();
  (*(v20 + 104))(v21, *MEMORY[0x277CC9110], v23);
  sub_22D81A778();
  sub_22D819F88();
  sub_22D754560();
  sub_22D819FB8();
  (*(v24 + 8))(v22, v30);
  sub_22D75463C(v25);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_22D817180()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_22D817820;
  }

  else
  {

    v3 = sub_22D8172A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D8172A8()
{
  v1 = v0[37];
  v2 = v0[35];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[29];
  v6 = v0[27];
  sub_22D81A0B8();
  v2(v5, v4, v6);
  sub_22D750754(v4);
  sub_22D81A8D8();
  v1(v5, v6);
  v7 = sub_22D81B2B8();

  v8 = [v3 alarmWithIDString_];

  if (v8)
  {
    v9 = v0[32];
    v10 = v0[19];
    v11 = v8;
    sub_22D78B5EC(v11, v9);
    [v11 isEnabled];
    v12 = v0[20];
    sub_22D81B228();
    sub_22D81A948();
    v30 = *(v10 + 104);
    v31 = *MEMORY[0x277CC9110];
    v30(v12);
    v34 = v0[39];
    v25 = v0[32];
    v28 = v0[31];
    v29 = v0[30];
    v19 = v0[26];
    v36 = v0[24];
    v24 = v0[23];
    v20 = v0[20];
    v26 = v0[18];
    v32 = v0[16];
    v33 = v0[15];
    v21 = v0[13];
    v27 = v0[17];
    sub_22D81A778();
    sub_22D81B278();
    sub_22D81B268();
    sub_22D78D2FC();
    sub_22D81B248();

    sub_22D81B268();
    sub_22D81B258();
    sub_22D81B268();
    sub_22D81B298();
    sub_22D81A948();
    (v30)(v20, v31, v26);
    sub_22D81A778();
    sub_22D819F88();
    sub_22D76D5B4(v25, v21);
    (*(v28 + 56))(v21, 0, 1, v29);
    sub_22D754560();
    sub_22D819FB8();

    sub_22D75463C(v21);
    (*(v32 + 8))(v27, v33);
    (*(v36 + 8))(v19, v24);
    sub_22D750754(v25);
  }

  else
  {
    v13 = v0[19];
    v14 = v0[20];
    v15 = v0[17];
    v16 = v0[18];
    v17 = v0[16];
    v35 = v0[15];
    v37 = v0[39];
    v18 = v0[13];
    (*(v0[31] + 56))(v18, 1, 1, v0[30]);
    sub_22D81B228();
    sub_22D81A948();
    (*(v13 + 104))(v14, *MEMORY[0x277CC9110], v16);
    sub_22D81A778();
    sub_22D819F88();
    sub_22D754560();
    sub_22D819FB8();

    (*(v17 + 8))(v15, v35);
    sub_22D75463C(v18);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_22D817820()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_22D817928(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03B80, &unk_22D8274A8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [a2 updateAlarm_];
  if (v10)
  {
    v11 = v10;
    (*(v7 + 16))(v9, a1, v6);
    v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v13 = swift_allocObject();
    (*(v7 + 32))(v13 + v12, v9, v6);
    aBlock[4] = sub_22D819C6C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D78A760;
    aBlock[3] = &block_descriptor_17;
    v14 = _Block_copy(aBlock);

    v15 = [v11 addCompletionBlock_];
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D817B18(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03B80, &unk_22D8274A8);
  return sub_22D81B4B8();
}

uint64_t sub_22D817B68()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81A958();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D817D28(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03B88, &qword_22D8274E0);
  v5 = sub_22D7548B0(&qword_27DA03B90, &qword_27DA03B88, &qword_22D8274E0, MEMORY[0x277CBA4A8]);

  return MEMORY[0x28210C568](KeyPath, sub_22D815BD0, 0, v4, a2, v5);
}

uint64_t sub_22D817DF4(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B0C;

  return sub_22D8169E8(a1, v4, v5, v6);
}

uint64_t sub_22D817EA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22D819170();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_22D817ED4(uint64_t a1)
{
  v2 = sub_22D817FB8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_22D817F10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22D817F58(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_22D817FB8()
{
  result = qword_27DA03B60;
  if (!qword_27DA03B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03B60);
  }

  return result;
}

unint64_t sub_22D81800C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D90, &qword_22D8275D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C38, &qword_22D8275D8);
    v7 = sub_22D81B978();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_22D81A198();
    while (1)
    {
      sub_22D7640C4(v9, v5, &qword_27DA01D90, &qword_22D8275D0);
      v11 = *v5;
      result = sub_22D807684(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_22D81A348();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22D8181F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C48, &unk_22D8275F0);
    v3 = sub_22D81B978();
    v4 = a1 + 32;
    sub_22D81A198();
    while (1)
    {
      sub_22D7640C4(v4, v13, &qword_27DA025B0, &unk_22D821020);
      result = sub_22D80773C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_22D819D10(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22D818330(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027F8, &qword_22D8275C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C30, &qword_22D8275C8);
    v7 = sub_22D81B978();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_22D81A198();
    while (1)
    {
      sub_22D7640C4(v9, v5, &qword_27DA027F8, &qword_22D8275C0);
      v11 = *v5;
      result = sub_22D807880(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_22D81A348();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22D818518(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03120, qword_22D823380);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C28, &qword_22D8275B8);
    v7 = sub_22D81B978();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_22D81A198();
    while (1)
    {
      sub_22D7640C4(v9, v5, &qword_27DA03120, qword_22D823380);
      v11 = *v5;
      result = sub_22D807B9C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_22D81A348();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22D818700(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C40, &unk_22D8275E0);
    v3 = sub_22D81B978();
    v4 = a1 + 32;
    sub_22D81A198();
    while (1)
    {
      sub_22D7640C4(v4, &v13, &qword_27DA03388, &qword_22D824CC0);
      v5 = v13;
      v6 = v14;
      result = sub_22D807780(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22D819D10(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22D818830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03488, &qword_22D8275A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C20, &unk_22D8275A8);
    v7 = sub_22D81B978();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_22D81A198();
    while (1)
    {
      sub_22D7640C4(v9, v5, &qword_27DA03488, &qword_22D8275A0);
      v11 = *v5;
      result = sub_22D807D50(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_22D81A348();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22D818A18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C10, &qword_22D827590);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C18, &qword_22D827598);
    v7 = sub_22D81B978();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_22D81A198();
    while (1)
    {
      sub_22D7640C4(v9, v5, &qword_27DA03C10, &qword_22D827590);
      v11 = *v5;
      result = sub_22D807E04(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_22D81A348();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22D818C00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D80, &qword_22D823370);
  MEMORY[0x28223BE20](v0 - 8);
  v35 = &v23 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v23 - v3;
  v37 = sub_22D81A748();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81A958();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v8 - 8);
  v36 = sub_22D81A768();
  v39 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C08, &qword_22D827588);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03C10, &qword_22D827590);
  v38 = v9;
  v10 = *(v9 - 8);
  v33 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v28 = v12;
  *(v12 + 16) = xmmword_22D821040;
  v13 = v12 + v11;
  v29 = *(v9 + 48);
  *(v12 + v11) = 0;
  sub_22D81B228();
  sub_22D81A948();
  v30 = *MEMORY[0x277CC9110];
  v14 = *(v4 + 104);
  v31 = v4 + 104;
  v32 = v14;
  v25 = v6;
  v14(v6);
  sub_22D81A778();
  v15 = *(v39 + 56);
  v39 += 56;
  v26 = v15;
  v16 = v34;
  v15(v34, 1, 1, v36);
  v17 = sub_22D81A328();
  v24 = *(*(v17 - 8) + 56);
  v18 = v35;
  v24(v35, 1, 1, v17);
  v27 = v13;
  v19 = v18;
  sub_22D81A338();
  v20 = (v13 + v33);
  v33 = *(v38 + 48);
  *v20 = 1;
  sub_22D81B228();
  sub_22D81A948();
  v32(v25, v30, v37);
  sub_22D81A778();
  v26(v16, 1, 1, v36);
  v24(v19, 1, 1, v17);
  sub_22D81A338();
  v21 = sub_22D818A18(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v21;
}

uint64_t sub_22D819170()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C10, &unk_22D827470);
  MEMORY[0x28223BE20](v0 - 8);
  v47 = &v43 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E08, &qword_22D81E978);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v43 - v3;
  v65 = sub_22D81A428();
  v69 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v67 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C08, &unk_22D81E0C0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v54 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v9 - 8);
  v68 = &v43 - v10;
  v11 = sub_22D81A748();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_22D81A958();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_22D81A768();
  v60 = v17;
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v66 = &v43 - v22;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03B68, &unk_22D827480);
  sub_22D81B228();
  sub_22D81A948();
  v62 = *MEMORY[0x277CC9110];
  v23 = *(v12 + 104);
  v48 = v11;
  v23(v14);
  v49 = v23;
  v50 = v12 + 104;
  sub_22D81A778();
  v24 = *(v18 + 56);
  v59 = v18 + 56;
  v61 = v24;
  v24(v68, 1, 1, v17);
  v71[0] = 0;
  sub_22D81B228();
  v64 = type metadata accessor for MTAppIntentsManager();
  *v14 = v64;
  v63 = *MEMORY[0x277CC9120];
  v23(v14);
  sub_22D81A948();
  v51 = v21;
  sub_22D81A778();
  v25 = v52;
  sub_22D819F88();
  v26 = sub_22D819F78();
  v53 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v55 = v28;
  v56 = v27 + 56;
  v28(v25, 0, 1, v26);
  v28(v54, 1, 1, v26);
  v58 = *MEMORY[0x277CBA308];
  v29 = *(v69 + 104);
  v69 += 104;
  v57 = v29;
  v30 = v65;
  v29(v67);
  sub_22D815444();
  v31 = v68;
  v45 = sub_22D81A0F8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E48, &qword_22D81E9B8);
  sub_22D81B228();
  sub_22D81A948();
  v32 = v48;
  v33 = v49;
  (v49)(v14, v62, v48);
  sub_22D81A778();
  v61(v31, 1, 1, v60);
  v70[0] = 1;
  v34 = sub_22D81B488();
  (*(*(v34 - 8) + 56))(v46, 1, 1, v34);
  sub_22D81B228();
  *v14 = v64;
  (v33)(v14, v63, v32);
  sub_22D81A948();
  sub_22D81A778();
  v35 = v52;
  sub_22D819F88();
  v55(v35, 0, 1, v53);
  v57(v67, v58, v30);
  v36 = v68;
  v46 = sub_22D81A148();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C20, &qword_22D827490);
  sub_22D81B228();
  sub_22D81A948();
  v37 = v48;
  v38 = v49;
  (v49)(v14, v62, v48);
  sub_22D81A778();
  v61(v36, 1, 1, v60);
  v39 = type metadata accessor for AlarmEntity(0);
  (*(*(v39 - 8) + 56))(v47, 1, 1, v39);
  sub_22D81B228();
  *v14 = v64;
  (v38)(v14, v63, v37);
  sub_22D81A948();
  sub_22D81A778();
  sub_22D819F88();
  v40 = v53;
  v41 = v55;
  v55(v35, 0, 1, v53);
  v41(v54, 1, 1, v40);
  v57(v67, v58, v65);
  sub_22D757BB4(&qword_27DA01C28, &unk_22D8212F8);
  sub_22D81A108();
  return v45;
}

unint64_t sub_22D819C18()
{
  result = qword_27DA03B70;
  if (!qword_27DA03B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA03B70);
  }

  return result;
}

uint64_t sub_22D819C6C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03B80, &unk_22D8274A8);

  return sub_22D817B18(a1);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

_OWORD *sub_22D819D10(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}