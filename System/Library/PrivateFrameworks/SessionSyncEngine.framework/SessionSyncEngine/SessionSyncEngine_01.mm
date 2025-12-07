unint64_t sub_2657C8374(uint64_t a1, uint64_t a2)
{
  sub_2657F28D4();
  sub_2657F24C4();
  v4 = sub_2657F2904();

  return sub_2657C9CC8(a1, a2, v4);
}

unint64_t sub_2657C83EC(uint64_t a1)
{
  v2 = sub_2657F2694();

  return sub_2657C9D80(a1, v2);
}

uint64_t sub_2657C8430(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v48 = sub_2657F22A4();
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023828, &qword_2657F41D8);
  v43 = v4;
  result = sub_2657F2794();
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
    v39 = v2;
    v40 = (v5 + 16);
    v44 = (v5 + 32);
    v16 = result + 64;
    v17 = v5;
    v41 = v5;
    v42 = v7;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v45 = (v14 - 1) & v14;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = *(v7 + 56);
      v25 = (*(v7 + 48) + 32 * v23);
      v27 = *v25;
      v26 = v25[1];
      v28 = v25[2];
      v29 = v25[3];
      v46 = *(v17 + 72);
      v30 = v24 + v46 * v23;
      if (v43)
      {
        (*v44)(v47, v30, v48);
      }

      else
      {
        (*v40)(v47, v30, v48);
      }

      sub_2657F28D4();
      sub_2657F24C4();
      sub_2657F24C4();
      result = sub_2657F2904();
      v31 = -1 << *(v9 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v16 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v16 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v16 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v9 + 48) + 32 * v18);
      *v19 = v27;
      v19[1] = v26;
      v19[2] = v28;
      v19[3] = v29;
      result = (*v44)(*(v9 + 56) + v46 * v18, v47, v48);
      ++*(v9 + 16);
      v17 = v41;
      v7 = v42;
      v14 = v45;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v45 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v7 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v11, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2657C87EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237E0, &qword_2657F4180);
  result = sub_2657F2794();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
        sub_2657CC294((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_2657CC1E4(v23, &v36);
        sub_2657B8174(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_2657F2694();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_2657CC294(v35, (*(v7 + 56) + 32 * v15));
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

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2657C8AA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_2657F22A4();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C80, &qword_2657F4198);
  v42 = v4;
  result = sub_2657F2794();
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
      }

      sub_2657F28D4();
      sub_2657F24C4();
      result = sub_2657F2904();
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

uint64_t sub_2657C8E24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_2657F2794();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
      if ((v36 & 1) == 0)
      {
      }

      sub_2657F28D4();
      sub_2657F24C4();
      result = sub_2657F2904();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_2657C90C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023800, &qword_2657F41B0);
  v34 = v4;
  result = sub_2657F2794();
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

      sub_2657F28D4();
      sub_2657F24C4();
      result = sub_2657F2904();
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

uint64_t sub_2657C936C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_2657B830C(a2, a3, a4, a5);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      sub_2657CA0DC();
      goto LABEL_7;
    }

    sub_2657B83AC(v19, a6 & 1);
    v26 = sub_2657B830C(a2, a3, a4, a5);
    if ((v20 & 1) == (v27 & 1))
    {
      v16 = v26;
      v22 = *v7;
      if (v20)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2657F2884();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v7;
  if (v20)
  {
LABEL_8:
    v23 = v22[7];
    v24 = v23 + *(*(type metadata accessor for RecordMetadata(0) - 8) + 72) * v16;

    return sub_2657B9770(a1, v24);
  }

LABEL_13:
  sub_2657C9B00(v16, a2, a3, a4, a5, a1, v22);
}

_OWORD *sub_2657C9504(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2657C83EC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2657CA328();
      goto LABEL_7;
    }

    sub_2657C87EC(v13, a3 & 1);
    v19 = sub_2657C83EC(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2657CC1E4(a2, v21);
      return sub_2657C9B9C(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_2657F2884();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_2657CC294(a1, v17);
}

uint64_t sub_2657C9650(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2657C8374(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2657CA4CC();
      goto LABEL_7;
    }

    sub_2657C8AA4(v15, a4 & 1);
    v26 = sub_2657C8374(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2657F2884();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_2657F22A4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_2657C9C18(v12, a2, a3, a1, v18);
}

uint64_t sub_2657C97E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_2657C8374(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_2657C8E24(v20, a4 & 1, a5, a6);
      v15 = sub_2657C8374(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_2657F2884();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_2657CA760(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

uint64_t sub_2657C9984(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2657C8374(a2, a3);
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
      sub_2657C90C4(v16, a4 & 1);
      v11 = sub_2657C8374(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2657F2884();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2657CA8C0();
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
}

uint64_t sub_2657C9B00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a7[6] + 32 * a1);
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v11 = a7[7];
  v12 = type metadata accessor for RecordMetadata(0);
  result = sub_2657B881C(a6, v11 + *(*(v12 - 8) + 72) * a1);
  v14 = a7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v16;
  }

  return result;
}

_OWORD *sub_2657C9B9C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_2657CC294(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_2657C9C18(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_2657F22A4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_2657C9CC8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2657F2864())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2657C9D80(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2657CC1E4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2667601C0](v9, a1);
      sub_2657CC240(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_2657C9E48()
{
  v1 = v0;
  v2 = sub_2657F22A4();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  MEMORY[0x28223BE20](v2);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023828, &qword_2657F41D8);
  v5 = *v0;
  v6 = sub_2657F2784();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v41 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v36 = v40 + 32;
    v37 = v40 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v44 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 32 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 32 * v20);
        v24 = v23[1];
        v43 = *v23;
        v25 = v23[3];
        v42 = v23[2];
        v26 = v39;
        v27 = v40;
        v28 = *(v40 + 72) * v20;
        v29 = v38;
        (*(v40 + 16))(v38, v22 + v28, v39);
        v30 = v41;
        v31 = (*(v41 + 48) + v21);
        v32 = v42;
        *v31 = v43;
        v31[1] = v24;
        v31[2] = v32;
        v31[3] = v25;
        (*(v27 + 32))(*(v30 + 56) + v28, v29, v26);

        v15 = v44;
      }

      while (v44);
    }

    v18 = v11;
    v7 = v41;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v34;
        goto LABEL_18;
      }

      v19 = *(v35 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v44 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_2657CA0DC()
{
  v1 = v0;
  v2 = type metadata accessor for RecordMetadata(0);
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023840, &unk_2657F41F0);
  v4 = *v0;
  v5 = sub_2657F2784();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 32 * v19;
        v21 = (*(v4 + 48) + 32 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[2];
        v25 = v21[3];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_2657B82A8(*(v4 + 56) + v27, v32);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        v29[2] = v24;
        v29[3] = v25;
        sub_2657B881C(v26, *(v28 + 56) + v27);

        v14 = v35;
      }

      while (v35);
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

        v1 = v30;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_2657CA328()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237E0, &qword_2657F4180);
  v2 = *v0;
  v3 = sub_2657F2784();
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
        v18 = 40 * v17;
        sub_2657CC1E4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_2657B8174(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_2657CC294(v22, (*(v4 + 56) + v17));
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

char *sub_2657CA4CC()
{
  v1 = v0;
  v35 = sub_2657F22A4();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C80, &qword_2657F4198);
  v3 = *v0;
  v4 = sub_2657F2784();
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

void *sub_2657CA760(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2657F2784();
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

void *sub_2657CA8C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023800, &qword_2657F41B0);
  v2 = *v0;
  v3 = sub_2657F2784();
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

uint64_t sub_2657CAA30(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2657C765C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2657C69E8();
      goto LABEL_16;
    }

    sub_2657C6E94(v8 + 1);
  }

  v10 = *v4;
  sub_2657F28D4();
  sub_2657F24C4();
  result = sub_2657F2904();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2657F2864();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2657F2874();
  __break(1u);
  return result;
}

uint64_t sub_2657CABB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_2657C78BC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_2657C6B44();
      goto LABEL_22;
    }

    sub_2657C70CC(v12 + 1);
  }

  v14 = *v6;
  sub_2657F28D4();
  sub_2657F24C4();
  sub_2657F24C4();
  result = sub_2657F2904();
  v15 = v14 + 56;
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    v18 = *(v14 + 48);
    while (1)
    {
      v19 = (v18 + 32 * a5);
      v20 = v19[2];
      v21 = v19[3];
      v22 = *v19 == v11 && v19[1] == a2;
      if (v22 || (result = sub_2657F2864(), (result & 1) != 0))
      {
        if (v20 == a3 && v21 == a4)
        {
          break;
        }

        result = sub_2657F2864();
        if (result)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v17;
      if (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_2657F2874();
    __break(1u);
  }

LABEL_22:
  v24 = *v29;
  *(*v29 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = v11;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

uint64_t sub_2657CAD7C(void *a1, unint64_t a2, char a3)
{
  v40 = a1;
  v41 = type metadata accessor for RecordMetadata(0);
  v6 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  v36 = v6;
  v37 = v3;
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    sub_2657C7B40(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_2657C6CB0();
      goto LABEL_25;
    }

    sub_2657C7330(v9 + 1);
  }

  v11 = *v3;
  sub_2657F28D4();
  v12 = v40;
  v13 = *v40;
  v14 = v40[1];
  v15 = v40[2];
  v16 = v40[3];
  sub_2657F24C4();
  v42 = v16;
  v43 = v15;
  sub_2657F24C4();
  v17 = v41;
  v18 = *(v41 + 20);
  sub_2657F22A4();
  sub_2657B8264(&unk_280023C20, MEMORY[0x277CC9588]);
  v39 = v18;
  sub_2657F2464();
  v38 = *(v12 + *(v17 + 24));
  sub_2657F28F4();
  v19 = sub_2657F2904();
  v20 = v11 + 56;
  v21 = v11;
  v22 = -1 << *(v11 + 32);
  a2 = v19 & ~v22;
  if ((*(v20 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v23 = ~v22;
    v24 = *(v6 + 72);
    do
    {
      sub_2657B82A8(*(v21 + 48) + v24 * a2, v8);
      v25 = v8[2];
      v26 = v8[3];
      v27 = *v8 == v13 && v8[1] == v14;
      if (v27 || (sub_2657F2864()) && (v25 == v43 ? (v28 = v26 == v42) : (v28 = 0), (v28 || (sub_2657F2864()) && (sub_2657F2274()))
      {
        v29 = *(v8 + *(v41 + 24));
        sub_2657B8880(v8);
        if (v38 == v29)
        {
          sub_2657F2874();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_2657B8880(v8);
      }

      a2 = (a2 + 1) & v23;
    }

    while (((*(v20 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v30 = *v37;
  *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2657B881C(v40, *(v30 + 48) + *(v36 + 72) * a2);
  v32 = *(v30 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v30 + 16) = v34;
  }

  return result;
}

char *sub_2657CB07C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2657CB0BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2657CB09C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2657CB1C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2657CB0BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023960, &qword_2657F4330);
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

char *sub_2657CB1C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F0, &qword_2657F41A0);
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

unint64_t *sub_2657CB2D4(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_2657CB440(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_2657CB370(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v14 = a7(v13, a2, a3, a4, a5, a6);
    swift_bridgeObjectRelease_n();

    return v14;
  }

  return result;
}

uint64_t sub_2657CB440(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v37 = a2;
  v38 = a1;
  v6 = type metadata accessor for RecordMetadata(0);
  v46 = *(v6 - 8);
  v47 = v6;
  result = MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a4;
  v42 = 0;
  v10 = 0;
  v48 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v39 = v12;
  v40 = (a4 + 56);
  v44 = v17;
  v45 = v9;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v49 = (v16 - 1) & v16;
LABEL_12:
    v21 = v18 | (v10 << 6);
    v22 = v48[7];
    v23 = (v48[6] + 32 * v21);
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    v27 = v23[3];
    v28 = *(v46 + 72);
    v43 = v21;
    sub_2657B82A8(v22 + v28 * v21, v9);
    if (v9[*(v47 + 24)])
    {
LABEL_4:
      v9 = v45;
      result = sub_2657B8880(v45);
      v17 = v44;
      v16 = v49;
    }

    else
    {
      v29 = *(v41 + 16);
      if (v29)
      {
        v30 = v40;
        do
        {
          v32 = *(v30 - 1);
          v31 = *v30;
          v33 = *(v30 - 3) == v24 && *(v30 - 2) == v25;
          if (v33 || (sub_2657F2864() & 1) != 0)
          {
            v34 = v32 == v26 && v31 == v27;
            if (v34 || (sub_2657F2864() & 1) != 0)
            {
              goto LABEL_4;
            }
          }

          v30 += 4;
        }

        while (--v29);
      }

      v9 = v45;
      result = sub_2657B8880(v45);
      *(v38 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      v35 = __OFADD__(v42++, 1);
      v17 = v44;
      v16 = v49;
      if (v35)
      {
        __break(1u);
        return sub_2657EC868(v38, v37, v42, v48);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_2657EC868(v38, v37, v42, v48);
    }

    v20 = v39[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v49 = (v20 - 1) & v20;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2657CB6D4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_bridgeObjectRetain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_2657CB2D4(v13, v8, a1, a2);
      MEMORY[0x266760A30](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x28223BE20](v10);
  bzero(v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_2657CB440((v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_2657CB894(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a2;
  v35 = a5;
  v36 = a6;
  v33 = a1;
  v7 = type metadata accessor for RecordMetadata(0);
  v38 = *(v7 - 8);
  v39 = v7;
  result = MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v11 = 0;
  v40 = a3;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v42 = (v17 - 1) & v17;
LABEL_12:
    v22 = v19 | (v11 << 6);
    v23 = v40[7];
    v24 = (v40[6] + 32 * v22);
    v25 = *v24;
    v26 = v24[1];
    v28 = v24[2];
    v27 = v24[3];
    v29 = *(v38 + 72);
    v37 = v22;
    sub_2657B82A8(v23 + v29 * v22, v10);
    if (v10[*(v39 + 24)] == 1)
    {

      sub_2657B8880(v10);

      v17 = v42;
    }

    else
    {
      v41[0] = v25;
      v41[1] = v26;
      v41[2] = v28;
      v41[3] = v27;

      v30 = sub_2657C0EE0(v41, v35, v36);
      sub_2657B8880(v10);

      v17 = v42;
      if ((v30 & 1) == 0)
      {
        *(v33 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
          return sub_2657EC868(v33, v32, v34, v40);
        }
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      return sub_2657EC868(v33, v32, v34, v40);
    }

    v21 = v13[v11];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v42 = (v21 - 1) & v21;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2657CBAF4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a2;
  v35 = a5;
  v36 = a6;
  v33 = a1;
  v7 = type metadata accessor for RecordMetadata(0);
  v38 = *(v7 - 8);
  v39 = v7;
  result = MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v11 = 0;
  v40 = a3;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v42 = (v17 - 1) & v17;
LABEL_12:
    v22 = v19 | (v11 << 6);
    v23 = v40[7];
    v24 = (v40[6] + 32 * v22);
    v25 = *v24;
    v26 = v24[1];
    v28 = v24[2];
    v27 = v24[3];
    v29 = *(v38 + 72);
    v37 = v22;
    sub_2657B82A8(v23 + v29 * v22, v10);
    if (v10[*(v39 + 24)] == 1)
    {
      v41[0] = v25;
      v41[1] = v26;
      v41[2] = v28;
      v41[3] = v27;

      v30 = sub_2657C0EE0(v41, v35, v36);
      sub_2657B8880(v10);

      v17 = v42;
      if ((v30 & 1) == 0)
      {
        *(v33 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
          return sub_2657EC868(v33, v32, v34, v40);
        }
      }
    }

    else
    {

      sub_2657B8880(v10);

      v17 = v42;
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      return sub_2657EC868(v33, v32, v34, v40);
    }

    v21 = v13[v11];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v42 = (v21 - 1) & v21;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_2657CBD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v20[0] = a6;
  v20[1] = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 32);
  v13 = v12 & 0x3F;
  v14 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v14;
  swift_retain_n();
  v16 = swift_bridgeObjectRetain_n();
  if (v13 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v19 = swift_slowAlloc();

      v17 = sub_2657CB370(v19, v14, a1, a2, a3, a4, v20[0]);
      MEMORY[0x266760A30](v19, -1, -1);

      goto LABEL_6;
    }
  }

  v20[0] = v20;
  MEMORY[0x28223BE20](v16);
  bzero(v20 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0), v15);

  v17 = a5(v20 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0), v14, a1, a2, a3, a4);

  if (v6)
  {
    swift_willThrow();
  }

LABEL_6:

  return v17;
}

unint64_t sub_2657CBFA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023830, &qword_2657F41E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023828, &qword_2657F41D8);
    v7 = sub_2657F27A4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2657CC364(v9, v5, &qword_280023830, &qword_2657F41E0);
      result = sub_2657B830C(*v5, v5[1], v5[2], v5[3]);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] + 32 * result;
      v15 = v5[2];
      v16 = v5[3];
      *v14 = *v5;
      *(v14 + 16) = v15;
      *(v14 + 24) = v16;
      v17 = v7[7];
      v18 = sub_2657F22A4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v13, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

_OWORD *sub_2657CC294(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2657CC304(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2657CC364(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2657CC3CC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2657CC3D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023848, &qword_2657F4200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2657CC46C()
{
  sub_2657F28D4();
  MEMORY[0x266760400](0);
  return sub_2657F2904();
}

uint64_t sub_2657CC4D8(uint64_t a1)
{
  sub_2657F28D4();
  MEMORY[0x266760400](0);
  return sub_2657F2904();
}

char *sub_2657CC528(void *a1, uint64_t a2)
{
  v3 = v2;
  v124 = *MEMORY[0x277D85DE8];
  v6 = sub_2657F2414();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v118) = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  v117 = v3;
  v14 = *(v3 + OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_queue);
  *v9 = v14;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v15 = v14;
  LOBYTE(v14) = sub_2657F2434();
  (*(v7 + 8))(v9, v6);
  if ((v14 & 1) == 0)
  {
    goto LABEL_65;
  }

  sub_2657F21E4();
  swift_allocObject();
  v16 = sub_2657F21D4();
  LOBYTE(v120[0]) = v118;
  v120[1] = v10;
  v120[2] = v11;
  v120[3] = v12;
  v120[4] = v13;
  sub_2657D0F8C();
  v27 = sub_2657F21C4();
  v29 = v28;
  *&v122 = 0x6567617373656DLL;
  *(&v122 + 1) = 0xE700000000000000;
  sub_2657F26B4();
  v123 = MEMORY[0x277CC9318];
  *&v122 = v27;
  *(&v122 + 1) = v29;
  sub_2657CC294(&v122, v121);
  sub_2657BB26C(v27, v29);
  v30 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v119 = v30;
  sub_2657C9504(v121, v120, isUniquelyReferenced_nonNull_native);
  sub_2657CC240(v120);
  v32 = v119;
  v111[0] = *(v117 + OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_idsService);
  result = [v111[0] devices];
  if (result)
  {
    v34 = result;
    sub_2657D0F44(0, &qword_281446368, 0x277D186E0);
    v35 = sub_2657F2514();

    v118 = v35 & 0xFFFFFFFFFFFFFF8;
    if (v35 >> 62)
    {
      v36 = sub_2657F2774();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v111[1] = v32;
    v112 = v27;
    v113 = v29;
    v115 = v16;
    v114 = v35;
    if (v36)
    {
      v37 = 0;
      v117 = v35 & 0xC000000000000001;
      v38 = v35 + 32;
      v10 = (a2 + 56);
      v116 = MEMORY[0x277D84F90];
      while (1)
      {
        while (1)
        {
          if (v117)
          {
            v39 = MEMORY[0x266760230](v37, v114);
          }

          else
          {
            if (v37 >= *(v118 + 16))
            {
              goto LABEL_64;
            }

            v39 = *(v38 + 8 * v37);
          }

          v40 = v39;
          if (__OFADD__(v37++, 1))
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
            swift_once();
            v17 = sub_2657F2344();
            __swift_project_value_buffer(v17, qword_281446410);
            v18 = v10;
            v19 = sub_2657F2334();
            v20 = sub_2657F2574();

            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              v22 = swift_slowAlloc();
              v120[0] = v22;
              *v21 = 136446210;
              *&v122 = v10;
              v23 = v10;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023928, &qword_2657F4300);
              v24 = sub_2657F24A4();
              v26 = sub_2657B7F9C(v24, v25, v120);

              *(v21 + 4) = v26;
              _os_log_impl(&dword_2657B5000, v19, v20, "Failed to encode message: %{public}s", v21, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v22);
              MEMORY[0x266760A30](v22, -1, -1);
              MEMORY[0x266760A30](v21, -1, -1);
            }

LABEL_56:

            return v10;
          }

          v42 = [v39 uniqueIDOverride];
          if (!v42)
          {
            __break(1u);
          }

          v43 = v42;
          v44 = sub_2657F2484();
          v46 = v45;

          if (*(a2 + 16))
          {
            sub_2657F28D4();
            sub_2657F24C4();
            v47 = sub_2657F2904();
            v48 = -1 << *(a2 + 32);
            v49 = v47 & ~v48;
            if ((*&v10[(v49 >> 3) & 0xFFFFFFFFFFFFFF8] >> v49))
            {
              break;
            }
          }

LABEL_11:

LABEL_12:

          if (v37 == v36)
          {
            goto LABEL_38;
          }
        }

        v50 = ~v48;
        while (1)
        {
          v51 = (*(a2 + 48) + 16 * v49);
          v52 = *v51 == v44 && v51[1] == v46;
          if (v52 || (sub_2657F2864() & 1) != 0)
          {
            break;
          }

          v49 = (v49 + 1) & v50;
          if (((*&v10[(v49 >> 3) & 0xFFFFFFFFFFFFFF8] >> v49) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        v53 = IDSCopyIDForDevice();
        if (!v53)
        {
          goto LABEL_12;
        }

        v54 = v53;
        v55 = sub_2657F2484();
        v57 = v56;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_2657CFB70(0, *(v116 + 2) + 1, 1, v116);
        }

        v59 = *(v116 + 2);
        v58 = *(v116 + 3);
        if (v59 >= v58 >> 1)
        {
          v116 = sub_2657CFB70((v58 > 1), v59 + 1, 1, v116);
        }

        v60 = v116;
        *(v116 + 2) = v59 + 1;
        v61 = &v60[16 * v59];
        *(v61 + 4) = v55;
        *(v61 + 5) = v57;
        if (v37 == v36)
        {
          goto LABEL_38;
        }
      }
    }

    v116 = MEMORY[0x277D84F90];
LABEL_38:

    v62 = sub_2657D00E8(v116);

    if (!*(v62 + 16))
    {

      if (qword_281446408 != -1)
      {
        swift_once();
      }

      v82 = sub_2657F2344();
      __swift_project_value_buffer(v82, qword_281446410);

      v83 = sub_2657F2334();
      v84 = sub_2657F2574();

      v85 = os_log_type_enabled(v83, v84);
      v86 = v113;
      if (v85)
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v120[0] = v88;
        *v87 = 136446210;
        v89 = sub_2657F2554();
        v91 = sub_2657B7F9C(v89, v90, v120);

        *(v87 + 4) = v91;
        _os_log_impl(&dword_2657B5000, v83, v84, "Unable to find matching IDS identifier for destinations: %{public}s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v88);
        MEMORY[0x266760A30](v88, -1, -1);
        MEMORY[0x266760A30](v87, -1, -1);
      }

      sub_2657D0FE0();
      v10 = swift_allocError();
      sub_2657BB314(v112, v86);
      goto LABEL_56;
    }

    v63 = sub_2657F2444();

    sub_2657CD2D0(v62);

    v64 = sub_2657F2544();

    v65 = sub_2657F2444();
    v120[0] = 0;
    *&v122 = 0;
    v66 = [v111[0] sendMessage:v63 toDestinations:v64 priority:300 options:v65 identifier:v120 error:&v122];

    v67 = v120[0];
    if (!v66)
    {
      v92 = v122;
      v93 = v67;
      v10 = sub_2657F21F4();

      swift_willThrow();
      if (qword_281446408 != -1)
      {
        swift_once();
      }

      v94 = sub_2657F2344();
      __swift_project_value_buffer(v94, qword_281446410);
      v95 = v10;
      v96 = sub_2657F2334();
      v97 = sub_2657F2574();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v120[0] = v99;
        *v98 = 136446210;
        *&v122 = v10;
        v100 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023928, &qword_2657F4300);
        v101 = sub_2657F24A4();
        v103 = sub_2657B7F9C(v101, v102, v120);

        *(v98 + 4) = v103;
        _os_log_impl(&dword_2657B5000, v96, v97, "Failed to send message: %{public}s", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v99);
        MEMORY[0x266760A30](v99, -1, -1);
        MEMORY[0x266760A30](v98, -1, -1);
      }

      sub_2657BB314(v112, v113);

      goto LABEL_56;
    }

    v68 = qword_281446408;
    v69 = v122;
    if (!v67)
    {
      if (v68 != -1)
      {
        swift_once();
      }

      v104 = sub_2657F2344();
      __swift_project_value_buffer(v104, qword_281446410);
      v105 = sub_2657F2334();
      v106 = sub_2657F2574();
      v107 = os_log_type_enabled(v105, v106);
      v108 = v113;
      v109 = v112;
      if (v107)
      {
        v110 = swift_slowAlloc();
        *v110 = 0;
        _os_log_impl(&dword_2657B5000, v105, v106, "Failed to retrieve identifier for message", v110, 2u);
        MEMORY[0x266760A30](v110, -1, -1);
      }

      sub_2657D0FE0();
      v10 = swift_allocError();
      sub_2657BB314(v109, v108);
      goto LABEL_56;
    }

    v70 = v67;
    if (v68 != -1)
    {
      swift_once();
    }

    v71 = sub_2657F2344();
    __swift_project_value_buffer(v71, qword_281446410);
    v72 = v70;

    v73 = sub_2657F2334();
    v74 = sub_2657F2584();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v120[0] = v77;
      *v75 = 138543618;
      *(v75 + 4) = v72;
      *v76 = v67;
      *(v75 + 12) = 2082;
      v78 = v72;
      v79 = sub_2657F2554();
      v81 = sub_2657B7F9C(v79, v80, v120);

      *(v75 + 14) = v81;
      _os_log_impl(&dword_2657B5000, v73, v74, "Sent message %{public}@ to %{public}s", v75, 0x16u);
      sub_2657D1034(v76);
      MEMORY[0x266760A30](v76, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x266760A30](v77, -1, -1);
      MEMORY[0x266760A30](v75, -1, -1);
    }

    v10 = sub_2657F2494();
    sub_2657BB314(v112, v113);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2657CD2D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023940, &unk_2657F4310);
    v2 = sub_2657F26E4();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:

    swift_dynamicCast();
    result = sub_2657F2694();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v22;
    *v11 = v20;
    *(v11 + 16) = v21;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_2657CD504(unint64_t a1@<X8>)
{
  if (qword_281446408 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v3 = sub_2657F2344();
    __swift_project_value_buffer(v3, qword_281446410);
    v4 = v1;
    v5 = sub_2657F2334();
    v6 = sub_2657F2584();
    v7 = 0x279B9F000uLL;
    if (os_log_type_enabled(v5, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v39[0] = v9;
      *v8 = 136446210;
      v10 = [*&v4[OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_idsService] devices];

      if (!v10)
      {
        goto LABEL_42;
      }

      v11 = sub_2657D0F44(0, &qword_281446368, 0x277D186E0);
      v12 = sub_2657F2514();

      v13 = MEMORY[0x266760040](v12, v11);
      v15 = v14;

      v16 = sub_2657B7F9C(v13, v15, v39);

      *(v8 + 4) = v16;
      _os_log_impl(&dword_2657B5000, v5, v6, "Finding active paired device in devices: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x266760A30](v9, -1, -1);
      MEMORY[0x266760A30](v8, -1, -1);

      v7 = 0x279B9F000;
    }

    else
    {
    }

    v17 = [*&v4[OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_idsService] *(v7 + 3984)];
    if (!v17)
    {
      break;
    }

    v1 = v17;
    v37 = a1;
    sub_2657D0F44(0, &qword_281446368, 0x277D186E0);
    v18 = sub_2657F2514();

    if (v18 >> 62)
    {
      v19 = sub_2657F2774();
      if (!v19)
      {
LABEL_40:

        *v37 = 0;
        *(v37 + 8) = 0;
        *(v37 + 16) = 0;
        return;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_40;
      }
    }

    v20 = 0;
    a1 = 0x279B9F000uLL;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x266760230](v20, v18);
      }

      else
      {
        if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      v1 = v21;
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if ([v21 isLocallyPaired] && (objc_msgSend(v1, sel_isActive) & 1) != 0)
      {
        v23 = [v1 deviceType];
        if ((v23 - 2) < 3)
        {
          [v1 operatingSystemVersion];
          if (v39[0] >= 16)
          {
            goto LABEL_23;
          }
        }

        else if (v23 == 6)
        {
          [v1 operatingSystemVersion];
          if (v39[0] >= 8)
          {
LABEL_23:

            v24 = [v1 uniqueIDOverride];
            if (!v24)
            {
              goto LABEL_43;
            }

            v25 = v24;
            v26 = sub_2657F2484();
            v28 = v27;

            v29 = [v1 deviceType];
            if (v29 >= 7)
            {
              v30 = 0;
            }

            else
            {
              v30 = 0x3000101010200uLL >> (8 * v29);
            }

            v31 = [v1 deviceType];
            if ((v31 - 2) >= 3)
            {
              if (v31 != 6)
              {

                v35 = 0;
                v33 = v30;
                goto LABEL_34;
              }

              [v1 operatingSystemVersion];
              v36 = v39[0];

              v33 = v30;
              if (v36 <= 7)
              {
                goto LABEL_32;
              }

LABEL_29:
              v34 = v38;
              v35 = 256;
            }

            else
            {
              [v1 operatingSystemVersion];
              v32 = v39[0];

              v33 = v30;
              if (v32 >= 16)
              {
                goto LABEL_29;
              }

LABEL_32:
              v35 = 0;
LABEL_34:
              v34 = v38;
            }

            *v34 = v26;
            *(v34 + 8) = v28;
            *(v34 + 16) = v35 | v33;
            return;
          }
        }
      }

      ++v20;
      if (v22 == v19)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

id sub_2657CD9D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSServiceWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2657CDC18()
{
  sub_2657B9700(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2657CDC50(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = *(a3 + 1);
  v12 = *(a3 + 2);
  v14 = *(a3 + 3);
  v13 = *(a3 + 4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = a5;
    v16 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    v19[0] = v10;
    v20 = v11;
    v21 = v12;
    v22 = v14;
    v23 = v13;
    (*(v16 + 8))(a1, a2, v19, a4, v18, ObjectType, v16);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2657CDD10(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = *(a3 + 1);
  v12 = *(a3 + 2);
  v14 = *(a3 + 3);
  v13 = *(a3 + 4);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = a5;
    v15 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    v20[0] = v10;
    v21 = v11;
    v22 = v12;
    v23 = v14;
    v24 = v13;
    v17 = (*(v15 + 16))(a1, a2, v20, a4, v19, ObjectType, v15);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_2657CDDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    (*(v12 + 24))(a1, a2, a3, a4, a5, ObjectType, v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2657CDE9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 8);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v12[0] = v6;
    v12[1] = v7;
    v13 = v8;
    (*(v10 + 32))(a1, a2, v12, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

void IDSSyncService.init(service:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a2;
  v23 = a1;
  v21 = sub_2657F25B4();
  v4 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2657F2594();
  MEMORY[0x28223BE20](v7);
  v8 = sub_2657F23E4();
  MEMORY[0x28223BE20](v8 - 8);
  v20 = OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_queue;
  v9 = sub_2657D0F44(0, &qword_281446370, 0x277D85C78);
  v19[1] = "dDeviceIdentifiers";
  v19[2] = v9;
  sub_2657F23D4();
  v26 = MEMORY[0x277D84F90];
  sub_2657CEEC0(&qword_281446390, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BE0, &qword_2657F4220);
  sub_2657CEF08(&unk_2814463B0, &unk_280023BE0, &qword_2657F4220);
  sub_2657F2664();
  (*(v4 + 104))(v6, *MEMORY[0x277D85268], v21);
  v10 = sub_2657F25E4();
  *&v2[v20] = v10;
  *&v2[OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_delegates] = MEMORY[0x277D84F90];
  v11 = &v2[OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_pairedDevice];
  *(v11 + 8) = 0;
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v2[OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_pairedDeviceNotificationToken] = -1;
  v12 = type metadata accessor for IDSServiceWrapper();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = objc_allocWithZone(MEMORY[0x277D18778]);
  v15 = v10;
  v16 = sub_2657F2474();
  v17 = [v14 initWithService_];

  if (v17)
  {

    *&v13[OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_idsService] = v17;
    *&v13[OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_queue] = v15;
    v25.receiver = v13;
    v25.super_class = v12;
    *&v3[OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_idsServiceWrapper] = objc_msgSendSuper2(&v25, sel_init);
    v18 = type metadata accessor for IDSSyncService();
    v24.receiver = v3;
    v24.super_class = v18;
    *(*(objc_msgSendSuper2(&v24, sel_init) + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_idsServiceWrapper) + OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_delegate + 8) = &off_287719DF8;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id IDSSyncService.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_pairedDeviceNotificationToken;
  swift_beginAccess();
  notify_cancel(*&v0[v2]);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for IDSSyncService();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id IDSSyncService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2657CE5FC()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_pairedDevice;
  v4 = *(v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_pairedDevice);
  v3 = *(v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_pairedDevice + 8);
  v5 = *(v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_pairedDevice + 16);

  sub_2657CD504(&v35);
  v7 = v35;
  v6 = v36;
  v31 = v37;
  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v8 = sub_2657F2344();
  __swift_project_value_buffer(v8, qword_281446410);

  v9 = sub_2657F2334();
  v10 = sub_2657F2584();

  if (os_log_type_enabled(v9, v10))
  {
    v28 = v10;
    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33[0] = v29;
    *v11 = 136446466;
    v35 = v4;
    v36 = v3;
    v37 = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023900, &qword_2657F42F0);
    v12 = sub_2657F24A4();
    v30 = v4;
    v14 = v5;
    v15 = sub_2657B7F9C(v12, v13, v33);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v35 = v7;
    v36 = v6;
    v37 = v31;

    v16 = sub_2657F24A4();
    v18 = sub_2657B7F9C(v16, v17, v33);

    *(v11 + 14) = v18;
    v5 = v14;
    v4 = v30;
    _os_log_impl(&dword_2657B5000, v9, v28, "Updating paired device from %{public}s to %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266760A30](v29, -1, -1);
    MEMORY[0x266760A30](v11, -1, -1);
  }

  if (!v3)
  {
    if (!v6)
    {
    }

    goto LABEL_13;
  }

  if (!v6)
  {
LABEL_13:

    goto LABEL_14;
  }

  if (v4 == v7 && v3 == v6 || (sub_2657F2864()) && v31 == v5)
  {

    if ((((v31 & 0x100) == 0) ^ ((v5 & 0x100) >> 8)))
    {
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

LABEL_14:
  *v2 = v7;
  *(v2 + 8) = v6;
  *(v2 + 16) = v31;

  v19 = OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_delegates;
  swift_beginAccess();
  v20 = *(*(v1 + v19) + 16);
  if (v20)
  {
    v21 = ( + 40);
    v32 = v6;
    v22 = v1;
    do
    {
      v23 = *v21;
      ObjectType = swift_getObjectType();
      v33[0] = v7;
      v33[1] = v32;
      v34 = v31;
      v25 = v7;
      v26 = *(v23 + 32);
      swift_unknownObjectRetain();
      v26(v22, &protocol witness table for IDSSyncService, v33, ObjectType, v23);
      v7 = v25;
      swift_unknownObjectRelease();
      v21 += 2;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_2657CE9D4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2657CEAA0()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:sel_pairedDeviceStateChangedWithNotification_ name:*MEMORY[0x277D2BC68] object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:sel_pairedDeviceStateChangedWithNotification_ name:*MEMORY[0x277D2BC78] object:0];

  v4 = [v1 defaultCenter];
  [v4 addObserver:v0 selector:sel_pairedDeviceStateChangedWithNotification_ name:*MEMORY[0x277D2BC48] object:0];

  v5 = [v1 defaultCenter];
  [v5 addObserver:v0 selector:sel_pairedDeviceStateChangedWithNotification_ name:*MEMORY[0x277D2BC50] object:0];

  sub_2657F2484();
  v6 = *(v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_queue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = sub_2657D1120;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2657CEE08;
  v12[3] = &block_descriptor_59;
  v8 = _Block_copy(v12);

  v9 = sub_2657F24B4();

  v10 = OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_pairedDeviceNotificationToken;
  swift_beginAccess();
  notify_register_dispatch((v9 + 32), (v0 + v10), v6, v8);
  swift_endAccess();
  _Block_release(v8);
}

void sub_2657CECF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v4 = sub_2657F2344();
    __swift_project_value_buffer(v4, qword_281446410);
    v5 = sub_2657F2334();
    v6 = sub_2657F2584();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2657B5000, v5, v6, "Paired watch updated, will check for pairing change", v7, 2u);
      MEMORY[0x266760A30](v7, -1, -1);
    }

    sub_2657CE5FC();
  }
}

uint64_t sub_2657CEE08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2657CEEC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2657CEF08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2657CEF5C()
{
  v1 = sub_2657F2414();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_2657F2434();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    [*(*(v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_idsServiceWrapper) + OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_idsService) addDelegate:*(v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_idsServiceWrapper) queue:*(*(v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_idsServiceWrapper) + OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_queue)];
    sub_2657CEAA0();
    return sub_2657CE5FC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t IDSSyncService.send(message:destinations:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v9;
  v16 = *(a1 + 32);
  sub_2657F2314();
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  v11 = *(a1 + 16);
  *(v10 + 24) = *a1;
  *(v10 + 40) = v11;
  *(v10 + 56) = *(a1 + 32);
  *(v10 + 64) = a2;
  *(v10 + 72) = a3;
  *(v10 + 80) = a4;
  v12 = v4;
  sub_2657CF2DC(v15, v14);

  sub_2657BA19C(a3, a4);
  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t sub_2657CF1C0(void (*a1)(void), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(char *, uint64_t, void), uint64_t a7)
{

  sub_2657BA19C(a6, a7);

  sub_2657BA19C(a6, a7);
  v12 = sub_2657CC528(a4, a5);
  v14 = v13;
  v16 = v15;
  if (a6)
  {

    a6(v12, v14, v16 & 1);
    sub_2657BA1AC(a6, a7);
  }

  a1();
  sub_2657D1110(v12, v14, v16 & 1);
  sub_2657BA1AC(a6, a7);

  sub_2657BA1AC(a6, a7);
}

uint64_t IDSSyncService.add(delegate:)(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_queue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2657CF5C0;
  *(v7 + 24) = v6;
  v12[4] = sub_2657CF5F4;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2657CF61C;
  v12[3] = &block_descriptor_12;
  v8 = _Block_copy(v12);
  v9 = v2;
  swift_unknownObjectRetain();

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2657CF4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for IDSSyncService.WeakDelegate();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a3;
  swift_unknownObjectWeakAssign();
  v6 = OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_delegates;
  swift_beginAccess();
  v7 = *(a1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_2657CFC7C(0, v7[2] + 1, 1, v7);
    *(a1 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_2657CFC7C((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = v5;
  v11[5] = &off_287719E10;
  *(a1 + v6) = v7;
  return swift_endAccess();
}

uint64_t sub_2657CF64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v9;
  v16 = *(a1 + 32);
  sub_2657F2314();
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  v11 = *(a1 + 16);
  *(v10 + 24) = *a1;
  *(v10 + 40) = v11;
  *(v10 + 56) = *(a1 + 32);
  *(v10 + 64) = a2;
  *(v10 + 72) = a3;
  *(v10 + 80) = a4;
  v12 = v4;
  sub_2657CF2DC(v15, v14);

  sub_2657BA19C(a3, a4);
  sub_2657F2304();
  sub_2657F22F4();
}

void sub_2657CF7E0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2657F2414();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = *a1;
  v11 = a1[2];
  v53 = a1[1];
  v12 = a1[4];
  v49 = a1[3];
  v50 = v11;
  v13 = *(v3 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_queue);
  *v10 = v13;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v14 = v13;
  LOBYTE(v13) = sub_2657F2434();
  (*(v8 + 8))(v10, v7);
  if ((v13 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v15 = OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_delegates;
  swift_beginAccess();
  v16 = *(v3 + v15);
  v48 = *(v16 + 16);
  if (v48)
  {
    v44 = a2;
    v46 = a3;
    v47 = v3;

    v17 = 0;
    v18 = (v16 + 40);
    v19 = &protocol witness table for IDSSyncService;
    v20 = v51;
    v21 = v53;
    v23 = v49;
    v22 = v50;
    v24 = v12;
    v45 = v16;
    while (v17 < *(v16 + 16))
    {
      v54 = v18;
      v55 = v17;
      v27 = *(v18 - 1);
      v28 = *v18;
      ObjectType = swift_getObjectType();
      v56[0] = v20;
      v57 = v21;
      v58 = v22;
      v59 = v23;
      v60 = v24;
      v30 = v24;
      v31 = *(v28 + 16);
      swift_unknownObjectRetain();
      v32 = v47;
      v33 = v19;
      v34 = v44;
      v35 = v19;
      v36 = v30;
      v37 = v46;
      v52 = ObjectType;
      if (v31(v47, v33, v56, v44, v46, ObjectType, v28))
      {
        v25 = v51;
        v56[0] = v51;
        v23 = v49;
        v26 = v50;
        v57 = v53;
        v58 = v50;
        v59 = v49;
        v60 = v36;
        (*(v28 + 8))(v32, v35, v56, v34, v37, v52, v28);
        swift_unknownObjectRelease();
        v20 = v25;
        v21 = v53;
        v22 = v26;
        v24 = v36;
        v16 = v45;
      }

      else
      {
        v52 = v27;
        if (qword_281446408 != -1)
        {
          swift_once();
        }

        v38 = sub_2657F2344();
        __swift_project_value_buffer(v38, qword_281446410);
        v39 = sub_2657F2334();
        v40 = sub_2657F2584();
        v41 = os_log_type_enabled(v39, v40);
        v20 = v51;
        v24 = v36;
        v16 = v45;
        if (v41)
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_2657B5000, v39, v40, "Discarding message because delegate rejected it", v42, 2u);
          MEMORY[0x266760A30](v42, -1, -1);
        }

        swift_unknownObjectRelease();

        v21 = v53;
        v23 = v49;
        v22 = v50;
      }

      v19 = v35;
      v17 = v55 + 1;
      v18 = v54 + 2;
      if (v48 == v55 + 1)
      {

        return;
      }
    }

    __break(1u);
    goto LABEL_16;
  }
}

char *sub_2657CFB70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F0, &qword_2657F41A0);
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

void *sub_2657CFC7C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023968, &qword_2657F4338);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023970, &qword_2657F4340);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2657CFE00(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2657CFFDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023960, &qword_2657F4330);
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

uint64_t sub_2657D00E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266760080](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2657C5F90(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_2657D0180(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  if (a4)
  {
    v7 = a1;
    v8 = sub_2657F2474();
    a1 = v7;
  }

  else
  {
    v8 = 0;
  }

  v40 = [a1 deviceForFromID_];

  if (v40)
  {
    v9 = [v40 uniqueIDOverride];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2657F2484();
      v13 = v12;

      if (swift_unknownObjectWeakLoadStrong())
      {
        if (a2)
        {
          sub_2657F26B4();
          if (*(a2 + 16) && (v14 = sub_2657C83EC(&v41), (v15 & 1) != 0))
          {
            sub_2657B8174(*(a2 + 56) + 32 * v14, v45);
            sub_2657CC240(&v41);
            if (swift_dynamicCast())
            {
              sub_2657F21B4();
              swift_allocObject();
              sub_2657F21A4();
              sub_2657D0EF0();
              sub_2657F2194();
              v38 = v43;
              v39 = v44;
              sub_2657CF7E0(&v41, v11, v13);

              sub_2657BB314(0x6567617373656DLL, 0xE700000000000000);

              swift_unknownObjectRelease();

              sub_2657BB314(v38, v39);
              return;
            }
          }

          else
          {
            sub_2657CC240(&v41);
          }

          if (qword_281446408 != -1)
          {
            swift_once();
          }

          v31 = sub_2657F2344();
          __swift_project_value_buffer(v31, qword_281446410);
          v24 = sub_2657F2334();
          v32 = sub_2657F2574();
          if (os_log_type_enabled(v24, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&dword_2657B5000, v24, v32, "Message has no payload", v33, 2u);
            MEMORY[0x266760A30](v33, -1, -1);
          }

          swift_unknownObjectRelease();
          goto LABEL_27;
        }

        goto LABEL_39;
      }

      if (qword_281446408 != -1)
      {
        swift_once();
      }

      v34 = sub_2657F2344();
      __swift_project_value_buffer(v34, qword_281446410);
      v35 = sub_2657F2334();
      v36 = sub_2657F2574();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_2657B5000, v35, v36, "Delegate is not configured; ignoring incoming message", v37, 2u);
        MEMORY[0x266760A30](v37, -1, -1);
      }
    }

    else
    {
      if (qword_281446408 != -1)
      {
        swift_once();
      }

      v23 = sub_2657F2344();
      __swift_project_value_buffer(v23, qword_281446410);

      v24 = sub_2657F2334();
      v25 = sub_2657F2574();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v45[0] = v27;
        *v26 = 136446210;
        v41 = a3;
        v42 = a4;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023908, &qword_2657F42F8);
        v28 = sub_2657F24A4();
        v30 = sub_2657B7F9C(v28, v29, v45);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_2657B5000, v24, v25, "Received message from device with no uniqueIDOverride: %{public}s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x266760A30](v27, -1, -1);
        MEMORY[0x266760A30](v26, -1, -1);
LABEL_27:

        goto LABEL_28;
      }
    }
  }

  else
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v16 = sub_2657F2344();
    __swift_project_value_buffer(v16, qword_281446410);

    v40 = sub_2657F2334();
    v17 = sub_2657F2574();

    if (os_log_type_enabled(v40, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v45[0] = v19;
      *v18 = 136446210;
      v41 = a3;
      v42 = a4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023908, &qword_2657F42F8);
      v20 = sub_2657F24A4();
      v22 = sub_2657B7F9C(v20, v21, v45);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2657B5000, v40, v17, "Received message from unknown device: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x266760A30](v19, -1, -1);
      MEMORY[0x266760A30](v18, -1, -1);
LABEL_28:

      return;
    }
  }
}

uint64_t sub_2657D08E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2657F2414();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v12 = v11;
  LOBYTE(v11) = sub_2657F2434();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v14 = OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_delegates;
    swift_beginAccess();
    result = *(v3 + v14);
    v15 = *(result + 16);
    if (v15)
    {

      v24 = a1;
      v16 = (v23 + 40);
      v17 = a3;
      v18 = a2;
      do
      {
        v19 = *v16;
        ObjectType = swift_getObjectType();
        v21 = *(v19 + 24);
        swift_unknownObjectRetain();
        v21(v3, &protocol witness table for IDSSyncService, v24, v18, v17, ObjectType, v19);
        swift_unknownObjectRelease();
        v16 += 2;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2657D0ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (a2)
    {
      sub_2657D08E4(a1, a2, a3);

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v6 = sub_2657F2344();
    __swift_project_value_buffer(v6, qword_281446410);
    oslog = sub_2657F2334();
    v7 = sub_2657F2574();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2657B5000, oslog, v7, "Delegate is not configured; ignoring successful message send", v8, 2u);
      MEMORY[0x266760A30](v8, -1, -1);
    }
  }
}

uint64_t sub_2657D0C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2657F23B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2657F23E4();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_queue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2657CE9D4;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  sub_2657F23C4();
  v19 = MEMORY[0x277D84F90];
  sub_2657CEEC0(&qword_2814463D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C60, &qword_2657F4228);
  sub_2657CEF08(&unk_2814463C0, &unk_280023C60, &qword_2657F4228);
  sub_2657F2664();
  MEMORY[0x2667600F0](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

unint64_t sub_2657D0EF0()
{
  result = qword_280023910;
  if (!qword_280023910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023910);
  }

  return result;
}

uint64_t sub_2657D0F44(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2657D0F8C()
{
  result = qword_280023920;
  if (!qword_280023920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023920);
  }

  return result;
}

unint64_t sub_2657D0FE0()
{
  result = qword_280023930;
  if (!qword_280023930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023930);
  }

  return result;
}

uint64_t sub_2657D1034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023938, &qword_2657F4308);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_2Tm()
{

  sub_2657BB314(*(v0 + 48), *(v0 + 56));

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

void sub_2657D1110(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2657D1144()
{
  result = qword_280023978;
  if (!qword_280023978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023978);
  }

  return result;
}

uint64_t SyncMessage.AckAction.description.getter()
{
  if (*v0)
  {
    return 0x6563616C706572;
  }

  else
  {
    return 0x657461647075;
  }
}

uint64_t sub_2657D1208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657461647075 && a2 == 0xE600000000000000;
  if (v6 || (sub_2657F2864() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6563616C706572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2657F2864();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2657D12E0(uint64_t a1)
{
  v2 = sub_2657D1704();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D131C(uint64_t a1)
{
  v2 = sub_2657D1704();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2657D1364(uint64_t a1)
{
  v2 = sub_2657D1758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D13A0(uint64_t a1)
{
  v2 = sub_2657D1758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2657D13DC(uint64_t a1)
{
  v2 = sub_2657D17AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D1418(uint64_t a1)
{
  v2 = sub_2657D17AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SyncMessage.AckAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023980, &qword_2657F4400);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023988, &qword_2657F4408);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023990, &qword_2657F4410);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657D1704();
  sub_2657F2924();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_2657D1758();
    v14 = v18;
    sub_2657F2814();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_2657D17AC();
    sub_2657F2814();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_2657D1704()
{
  result = qword_280023998;
  if (!qword_280023998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023998);
  }

  return result;
}

unint64_t sub_2657D1758()
{
  result = qword_2800239A0;
  if (!qword_2800239A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800239A0);
  }

  return result;
}

unint64_t sub_2657D17AC()
{
  result = qword_2800239A8;
  if (!qword_2800239A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800239A8);
  }

  return result;
}

uint64_t SyncMessage.AckAction.hashValue.getter()
{
  v1 = *v0;
  sub_2657F28D4();
  MEMORY[0x266760400](v1);
  return sub_2657F2904();
}

uint64_t SyncMessage.AckAction.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239B0, &qword_2657F4418);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239B8, &qword_2657F4420);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239C0, &qword_2657F4428);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657D1704();
  v13 = v31;
  sub_2657F2914();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_2657F2804();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_2657F2734();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239C8, &qword_2657F4430);
    *v21 = &type metadata for SyncMessage.AckAction;
    sub_2657F27C4();
    sub_2657F2724();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_2657D1758();
    sub_2657F27B4();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_2657D17AC();
    sub_2657F27B4();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_2657D1CF8()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_2657D1D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v6 || (sub_2657F2864() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2657F2864();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2657D1E08(uint64_t a1)
{
  v2 = sub_2657D2BD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D1E44(uint64_t a1)
{
  v2 = sub_2657D2BD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2657D1E80()
{
  v1 = *v0;
  v2 = 0x657461647075;
  v3 = 7037793;
  v4 = 0x6B636F6C6E75;
  if (v1 != 3)
  {
    v4 = 0x636E79736572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6563616C706572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2657D1F08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2657D4CF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2657D1F3C(uint64_t a1)
{
  v2 = sub_2657D2AD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D1F78(uint64_t a1)
{
  v2 = sub_2657D2AD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2657D1FB4(uint64_t a1)
{
  v2 = sub_2657D2C7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D1FF0(uint64_t a1)
{
  v2 = sub_2657D2C7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2657D202C(uint64_t a1)
{
  v2 = sub_2657D2B2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D2068(uint64_t a1)
{
  v2 = sub_2657D2B2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2657D20A4(uint64_t a1)
{
  v2 = sub_2657D2B80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D20E0(uint64_t a1)
{
  v2 = sub_2657D2B80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2657D211C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465696669646F6DLL && a2 == 0xEF7364726F636552;
  if (v6 || (sub_2657F2864() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4D646574656C6564 && a2 == 0xEF61746164617465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2657F2864();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2657D2208(uint64_t a1)
{
  v2 = sub_2657D2CD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D2244(uint64_t a1)
{
  v2 = sub_2657D2CD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SyncMessage.MessageType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239D0, &qword_2657F4438);
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239D8, &qword_2657F4440);
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239E0, &qword_2657F4448);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239E8, &qword_2657F4450);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v42 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239F0, &qword_2657F4458);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239F8, &qword_2657F4460);
  v49 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = *v1;
  *&v48 = v1[1];
  *(&v48 + 1) = v17;
  v18 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657D2AD8();
  v19 = v16;
  sub_2657F2924();
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      LOBYTE(v51) = 2;
      sub_2657D2BD4();
      v22 = v45;
      sub_2657F2814();
      LOBYTE(v51) = BYTE8(v48) & 1;
      v52 = 0;
      sub_2657D2C28();
      v23 = v47;
      v24 = v50;
      sub_2657F2844();
      if (!v24)
      {
        v51 = v48;
        v52 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A28, &qword_2657F4468);
        sub_2657D38FC(&qword_280023A30, &qword_280023738, &protocol conformance descriptor for RecordMetadata, MEMORY[0x277D83948]);
        sub_2657F2844();
      }

      (*(v46 + 8))(v22, v23);
      return (*(v49 + 8))(v16, v14);
    }

    else
    {
      v29 = (v49 + 8);
      if (v48 == 0)
      {
        LOBYTE(v51) = 3;
        sub_2657D2B80();
        v30 = v34;
        sub_2657F2814();
        v32 = v35;
        v31 = v36;
      }

      else
      {
        LOBYTE(v51) = 4;
        sub_2657D2B2C();
        v30 = v37;
        sub_2657F2814();
        v32 = v38;
        v31 = v39;
      }

      (*(v32 + 8))(v30, v31);
      return (*v29)(v16, v14);
    }
  }

  else
  {
    if (v18)
    {
      LOBYTE(v51) = 1;
      sub_2657D2C7C();
      v26 = v42;
      sub_2657F2814();
      v51 = *(&v48 + 1);
      v52 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A40, &qword_2657F4470);
      sub_2657D3998(&qword_280023A48, &qword_280023A50, &protocol conformance descriptor for Record, MEMORY[0x277D83948]);
      v27 = v44;
      v28 = v50;
      sub_2657F2844();
      if (!v28)
      {
        v51 = v48;
        v52 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A28, &qword_2657F4468);
        sub_2657D38FC(&qword_280023A30, &qword_280023738, &protocol conformance descriptor for RecordMetadata, MEMORY[0x277D83948]);
        sub_2657F2844();
      }

      (*(v43 + 8))(v26, v27);
    }

    else
    {
      LOBYTE(v51) = 0;
      sub_2657D2CD0();
      sub_2657F2814();
      v51 = *(&v48 + 1);
      v52 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A40, &qword_2657F4470);
      sub_2657D3998(&qword_280023A48, &qword_280023A50, &protocol conformance descriptor for Record, MEMORY[0x277D83948]);
      v20 = v41;
      v21 = v50;
      sub_2657F2844();
      if (!v21)
      {
        v51 = v48;
        v52 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A28, &qword_2657F4468);
        sub_2657D38FC(&qword_280023A30, &qword_280023738, &protocol conformance descriptor for RecordMetadata, MEMORY[0x277D83948]);
        sub_2657F2844();
      }

      (*(v40 + 8))(v13, v20);
    }

    return (*(v49 + 8))(v19, v14);
  }
}

unint64_t sub_2657D2AD8()
{
  result = qword_280023A00;
  if (!qword_280023A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023A00);
  }

  return result;
}

unint64_t sub_2657D2B2C()
{
  result = qword_280023A08;
  if (!qword_280023A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023A08);
  }

  return result;
}

unint64_t sub_2657D2B80()
{
  result = qword_280023A10;
  if (!qword_280023A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023A10);
  }

  return result;
}

unint64_t sub_2657D2BD4()
{
  result = qword_280023A18;
  if (!qword_280023A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023A18);
  }

  return result;
}

unint64_t sub_2657D2C28()
{
  result = qword_280023A20;
  if (!qword_280023A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023A20);
  }

  return result;
}

unint64_t sub_2657D2C7C()
{
  result = qword_280023A38;
  if (!qword_280023A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023A38);
  }

  return result;
}

unint64_t sub_2657D2CD0()
{
  result = qword_280023A58;
  if (!qword_280023A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023A58);
  }

  return result;
}

uint64_t SyncMessage.MessageType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A60, &qword_2657F4478);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v66 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A68, &qword_2657F4480);
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v65 = &v50 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A70, &qword_2657F4488);
  v61 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v64 = &v50 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A78, &qword_2657F4490);
  v62 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A80, &qword_2657F4498);
  v59 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A88, &qword_2657F44A0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - v14;
  v16 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2657D2AD8();
  v17 = v67;
  sub_2657F2914();
  if (!v17)
  {
    v51 = v8;
    v52 = 0;
    v18 = v65;
    v19 = v66;
    v50 = v9;
    v20 = v64;
    v67 = v13;
    v53 = v15;
    v21 = sub_2657F2804();
    v22 = *(v21 + 16);
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 5) : (v24 = 1), v24))
    {
      v25 = sub_2657F2734();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239C8, &qword_2657F4430);
      *v27 = &type metadata for SyncMessage.MessageType;
      v28 = v53;
      sub_2657F27C4();
      sub_2657F2724();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v67 + 8))(v28, v12);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v68);
    }

    if (*(v21 + 32) > 1u)
    {
      if (v23 != 2)
      {
        if (v23 == 3)
        {
          LOBYTE(v71) = 3;
          sub_2657D2B80();
          v31 = v52;
          v30 = v53;
          sub_2657F27B4();
          if (!v31)
          {
            (*(v54 + 8))(v18, v55);
            (*(v67 + 8))(v30, v12);
            swift_unknownObjectRelease();
            v32 = 0;
            v33 = 0;
            v34 = 3;
LABEL_28:
            v39 = v63;
            goto LABEL_29;
          }
        }

        else
        {
          LOBYTE(v71) = 4;
          sub_2657D2B2C();
          v43 = v52;
          v30 = v53;
          sub_2657F27B4();
          if (!v43)
          {
            (*(v58 + 8))(v19, v60);
            (*(v67 + 8))(v30, v12);
            swift_unknownObjectRelease();
            v33 = 0;
            v34 = 3;
            v32 = 1;
            goto LABEL_28;
          }
        }

        (*(v67 + 8))(v30, v12);
        goto LABEL_9;
      }

      LOBYTE(v71) = 2;
      sub_2657D2BD4();
      v42 = v52;
      v41 = v53;
      sub_2657F27B4();
      if (v42)
      {
        (*(v67 + 8))(v41, v12);
        goto LABEL_9;
      }

      LOBYTE(v71) = 0;
      sub_2657D38A8();
      v48 = v56;
      sub_2657F27F4();
      v49 = v67;
      v66 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A28, &qword_2657F4468);
      v70 = 1;
      sub_2657D38FC(&qword_280023A98, &qword_280023748, &protocol conformance descriptor for RecordMetadata, MEMORY[0x277D83978]);
      sub_2657F27F4();
      (*(v61 + 8))(v20, v48);
      (*(v49 + 8))(v41, v12);
      swift_unknownObjectRelease();
      v33 = v71;
      v34 = 2;
      v39 = v63;
      v32 = v66;
LABEL_29:
      *v39 = v32;
      *(v39 + 8) = v33;
      *(v39 + 16) = v34;
      return __swift_destroy_boxed_opaque_existential_1(v68);
    }

    v66 = v21;
    v35 = v67;
    if (v23)
    {
      LOBYTE(v71) = 1;
      sub_2657D2C7C();
      v44 = v52;
      v36 = v12;
      v38 = v53;
      sub_2657F27B4();
      v39 = v63;
      if (!v44)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A40, &qword_2657F4470);
        LOBYTE(v69) = 0;
        sub_2657D3998(&qword_280023AA0, &qword_280023AA8, &protocol conformance descriptor for Record, MEMORY[0x277D83978]);
        v45 = v57;
        sub_2657F27F4();
        v46 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A28, &qword_2657F4468);
        v70 = 1;
        sub_2657D38FC(&qword_280023A98, &qword_280023748, &protocol conformance descriptor for RecordMetadata, MEMORY[0x277D83978]);
        v47 = v51;
        sub_2657F27F4();
        (*(v62 + 8))(v47, v45);
        (*(v35 + 8))(v38, v36);
        swift_unknownObjectRelease();
        v33 = v69;
        v34 = 1;
        v32 = v46;
        goto LABEL_29;
      }
    }

    else
    {
      LOBYTE(v71) = 0;
      sub_2657D2CD0();
      v36 = v12;
      v37 = v52;
      v38 = v53;
      sub_2657F27B4();
      v39 = v63;
      if (!v37)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A40, &qword_2657F4470);
        LOBYTE(v69) = 0;
        sub_2657D3998(&qword_280023AA0, &qword_280023AA8, &protocol conformance descriptor for Record, MEMORY[0x277D83978]);
        v40 = v50;
        sub_2657F27F4();
        v32 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A28, &qword_2657F4468);
        v70 = 1;
        sub_2657D38FC(&qword_280023A98, &qword_280023748, &protocol conformance descriptor for RecordMetadata, MEMORY[0x277D83978]);
        sub_2657F27F4();
        (*(v59 + 8))(v11, v40);
        (*(v35 + 8))(v38, v36);
        swift_unknownObjectRelease();
        v34 = 0;
        v33 = v69;
        goto LABEL_29;
      }
    }

    (*(v35 + 8))(v38, v36);
    goto LABEL_9;
  }

  return __swift_destroy_boxed_opaque_existential_1(v68);
}

unint64_t sub_2657D38A8()
{
  result = qword_280023A90;
  if (!qword_280023A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023A90);
  }

  return result;
}

uint64_t sub_2657D38FC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280023A28, &qword_2657F4468);
    sub_2657D3A34(a2, type metadata accessor for RecordMetadata, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2657D3998(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280023A40, &qword_2657F4470);
    sub_2657D3A34(a2, type metadata accessor for Record, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2657D3A34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SyncMessage.messageType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_2657D3AC0(v2, v3, v4);
}

uint64_t sub_2657D3AC0(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return v3;
    }
  }

  else
  {
  }
}

__n128 SyncMessage.init(messageType:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_2657D3B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2657F2864();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2657D3BD8(uint64_t a1)
{
  v2 = sub_2657D3DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D3C14(uint64_t a1)
{
  v2 = sub_2657D3DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SyncMessage.encode(to:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023AB0, &qword_2657F44A8);
  v3 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657D3AC0(v6, v7, v8);
  sub_2657D3DC8();
  sub_2657F2924();
  v12 = v6;
  v13 = v7;
  v14 = v8;
  sub_2657D3E1C();
  v9 = v11;
  sub_2657F2844();
  sub_2657D3E70(v12, v13, v14);
  return (*(v3 + 8))(v5, v9);
}

unint64_t sub_2657D3DC8()
{
  result = qword_280023AB8;
  if (!qword_280023AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023AB8);
  }

  return result;
}

unint64_t sub_2657D3E1C()
{
  result = qword_280023AC0;
  if (!qword_280023AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023AC0);
  }

  return result;
}

uint64_t sub_2657D3E70(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return v3;
    }
  }

  else
  {
  }
}

uint64_t SyncMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023AC8, &qword_2657F44B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657D3DC8();
  sub_2657F2914();
  if (!v2)
  {
    sub_2657D4040();
    sub_2657F27F4();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2657D4040()
{
  result = qword_280023AD0;
  if (!qword_280023AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023AD0);
  }

  return result;
}

unint64_t sub_2657D4098()
{
  result = qword_280023AD8;
  if (!qword_280023AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023AD8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17SessionSyncEngine0B7MessageV0D4TypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2657D416C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2657D41B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_2657D41F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SyncMessage.MessageType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncMessage.MessageType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2657D4404()
{
  result = qword_280023AE0;
  if (!qword_280023AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023AE0);
  }

  return result;
}

unint64_t sub_2657D445C()
{
  result = qword_280023AE8;
  if (!qword_280023AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023AE8);
  }

  return result;
}

unint64_t sub_2657D44B4()
{
  result = qword_280023AF0;
  if (!qword_280023AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023AF0);
  }

  return result;
}

unint64_t sub_2657D450C()
{
  result = qword_280023AF8;
  if (!qword_280023AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023AF8);
  }

  return result;
}

unint64_t sub_2657D4564()
{
  result = qword_280023B00;
  if (!qword_280023B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B00);
  }

  return result;
}

unint64_t sub_2657D45BC()
{
  result = qword_280023B08;
  if (!qword_280023B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B08);
  }

  return result;
}

unint64_t sub_2657D4614()
{
  result = qword_280023B10;
  if (!qword_280023B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B10);
  }

  return result;
}

unint64_t sub_2657D466C()
{
  result = qword_280023B18;
  if (!qword_280023B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B18);
  }

  return result;
}

unint64_t sub_2657D46C4()
{
  result = qword_280023B20;
  if (!qword_280023B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B20);
  }

  return result;
}

unint64_t sub_2657D471C()
{
  result = qword_280023B28;
  if (!qword_280023B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B28);
  }

  return result;
}

unint64_t sub_2657D4774()
{
  result = qword_280023B30;
  if (!qword_280023B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B30);
  }

  return result;
}

unint64_t sub_2657D47CC()
{
  result = qword_280023B38;
  if (!qword_280023B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B38);
  }

  return result;
}

unint64_t sub_2657D4824()
{
  result = qword_280023B40;
  if (!qword_280023B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B40);
  }

  return result;
}

unint64_t sub_2657D487C()
{
  result = qword_280023B48;
  if (!qword_280023B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B48);
  }

  return result;
}

unint64_t sub_2657D48D4()
{
  result = qword_280023B50;
  if (!qword_280023B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B50);
  }

  return result;
}

unint64_t sub_2657D492C()
{
  result = qword_280023B58;
  if (!qword_280023B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B58);
  }

  return result;
}

unint64_t sub_2657D4984()
{
  result = qword_280023B60;
  if (!qword_280023B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B60);
  }

  return result;
}

unint64_t sub_2657D49DC()
{
  result = qword_280023B68;
  if (!qword_280023B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B68);
  }

  return result;
}

unint64_t sub_2657D4A34()
{
  result = qword_280023B70;
  if (!qword_280023B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B70);
  }

  return result;
}

unint64_t sub_2657D4A8C()
{
  result = qword_280023B78;
  if (!qword_280023B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B78);
  }

  return result;
}

unint64_t sub_2657D4AE4()
{
  result = qword_280023B80;
  if (!qword_280023B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B80);
  }

  return result;
}

unint64_t sub_2657D4B3C()
{
  result = qword_280023B88;
  if (!qword_280023B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B88);
  }

  return result;
}

unint64_t sub_2657D4B94()
{
  result = qword_280023B90;
  if (!qword_280023B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B90);
  }

  return result;
}

unint64_t sub_2657D4BEC()
{
  result = qword_280023B98;
  if (!qword_280023B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B98);
  }

  return result;
}

unint64_t sub_2657D4C44()
{
  result = qword_280023BA0;
  if (!qword_280023BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023BA0);
  }

  return result;
}

unint64_t sub_2657D4C9C()
{
  result = qword_280023BA8;
  if (!qword_280023BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023BA8);
  }

  return result;
}

uint64_t sub_2657D4CF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657461647075 && a2 == 0xE600000000000000;
  if (v4 || (sub_2657F2864() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6563616C706572 && a2 == 0xE700000000000000 || (sub_2657F2864() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7037793 && a2 == 0xE300000000000000 || (sub_2657F2864() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B636F6C6E75 && a2 == 0xE600000000000000 || (sub_2657F2864() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x636E79736572 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_2657F2864();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_2657D4EB0()
{
  v1 = v0;
  v12 = sub_2657F25B4();
  v2 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2657F2594();
  MEMORY[0x28223BE20](v5);
  v6 = sub_2657F23E4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2657D5310();
  v11[1] = "edSinceBoot";
  v11[2] = v7;
  sub_2657F23D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2657D535C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BE0, &qword_2657F4220);
  sub_2657D53B4(&unk_2814463B0, &unk_280023BE0, &qword_2657F4220, MEMORY[0x277D83970]);
  sub_2657F2664();
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v12);
  *(v0 + 16) = sub_2657F25E4();
  LOBYTE(aBlock[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BB0, &qword_2657F5148);
  swift_allocObject();
  *(v0 + 24) = sub_2657F2364();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 32) = MKBDeviceUnlockedSinceBoot() == 1;
  v8 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2657B67E0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2657B6768;
  aBlock[3] = &block_descriptor_0;
  v9 = _Block_copy(aBlock);

  v10 = MKBEventsRegister();
  _Block_release(v9);
  if (v10)
  {
    *(v1 + 40) = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2657D51EC()
{
  MKBEventsUnregister();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2657D5280()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BB0, &qword_2657F5148);
  sub_2657D53B4(&qword_2814463D8, &unk_280023BB0, &qword_2657F5148, MEMORY[0x277CBCE48]);
  return sub_2657F2374();
}

unint64_t sub_2657D5310()
{
  result = qword_281446370;
  if (!qword_281446370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281446370);
  }

  return result;
}

unint64_t sub_2657D535C()
{
  result = qword_281446390;
  if (!qword_281446390)
  {
    sub_2657F2594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281446390);
  }

  return result;
}

uint64_t sub_2657D53B4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2657D5414(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_2657C5F90(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2657D5518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordMetadata(0);
  v21 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  result = MEMORY[0x28223BE20](v8);
  v13 = &v21 - v12;
  v14 = 0;
  v22 = a2;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  for (i = (v15 + 63) >> 6; v17; result = sub_2657EF854(v10, type metadata accessor for RecordMetadata))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_2657EF7EC(*(a1 + 48) + *(v21 + 72) * (v20 | (v19 << 6)), v13, type metadata accessor for RecordMetadata);
    sub_2657F03E8(v13, v7, type metadata accessor for RecordMetadata);
    sub_2657C62B8(v10, v7);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 56 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t SyncEngine.Role.hashValue.getter()
{
  v1 = *v0;
  sub_2657F28D4();
  MEMORY[0x266760400](v1);
  return sub_2657F2904();
}

uint64_t sub_2657D579C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v12[0] = v4;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v10 = (*(v8 + 8))(a1, v12, ObjectType, v8);
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_2657D584C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 16))(a1, a2, ObjectType, v6);
    swift_unknownObjectRelease();
    return v8 & 1;
  }

  return result;
}

uint64_t sub_2657D58C4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v11[0] = v4;
    v11[1] = v5;
    v11[2] = v6;
    v11[3] = v7;
    (*(v9 + 24))(a1, v11, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2657D5958(uint64_t a1)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 32))(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_2657D59D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 40))(a1, a2, a3, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = a2 + *(type metadata accessor for Record(0) + 20);
    v9 = *v10;
    sub_2657BB26C(*v10, *(v10 + 8));
  }

  return v9;
}

uint64_t sub_2657D5A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 48))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2657D5B88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_2657F06A4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_2657BA19C(v1, v2);
  return sub_2657D5D90(v4, v3);
}

uint64_t (*sub_2657D5C18())()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC0, &qword_2657F5190);
  sub_2657F25C4();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_2657D5D68;
}

uint64_t sub_2657D5CD0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 272);
  v4 = *(a1 + 280);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2657F07A4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_2657BA19C(v3, v4);
}

uint64_t sub_2657D5D90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 120);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657D5F10;
  *(v8 + 24) = v7;
  v11[4] = sub_2657D5F14;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2657CF61C;
  v11[3] = &block_descriptor_1;
  v9 = _Block_copy(v11);

  sub_2657BA19C(a1, a2);

  dispatch_sync(v6, v9);
  sub_2657BA1AC(a1, a2);
  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*sub_2657D5F34(uint64_t **a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[8] = v1;
  v3[9] = *(v1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC0, &qword_2657F5190);
  sub_2657F25C4();
  v5 = *v4;
  if (*v4)
  {
    v6 = v4[1];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_2657F06A4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v4[6] = v8;
  v4[7] = v7;
  return sub_2657D6038;
}

void sub_2657D6038(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v6 = *(*a1 + 56);
  if ((a2 & 1) == 0)
  {
    v11 = swift_allocObject();
    v11[2] = v5;
    v11[3] = v3;
    v11[4] = v6;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2657F0680;
    *(v12 + 24) = v11;
    v2[4] = sub_2657F06A0;
    v2[5] = v12;
    *v2 = MEMORY[0x277D85DD0];
    v2[1] = 1107296256;
    v2[2] = sub_2657CF61C;
    v2[3] = &block_descriptor_29;
    v13 = _Block_copy(v2);

    sub_2657BA19C(v3, v6);

    dispatch_sync(v4, v13);
    sub_2657BA1AC(v3, v6);
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657F0680;
  *(v8 + 24) = v7;
  v2[4] = sub_2657F06A0;
  v2[5] = v8;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_2657CF61C;
  v2[3] = &block_descriptor_18;
  v9 = _Block_copy(v2);
  sub_2657BA19C(v3, v6);

  sub_2657BA19C(v3, v6);

  dispatch_sync(v4, v9);
  sub_2657BA1AC(v3, v6);
  _Block_release(v9);
  v10 = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2657BA1AC(v2[6], v2[7]);
LABEL_5:

  free(v2);
}

uint64_t sub_2657D6314()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 272);
  v5 = *(v2 + 280);
  *(v2 + 272) = v1;
  *(v2 + 280) = v3;
  sub_2657BA19C(v1, v3);

  return sub_2657BA1AC(v4, v5);
}

uint64_t sub_2657D635C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_2657F069C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_2657BA19C(v1, v2);
  return sub_2657D6540(v4, v3);
}

uint64_t (*sub_2657D63EC())()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC8, &qword_2657F5198);
  sub_2657F25C4();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_2657D653C;
}

uint64_t sub_2657D64A4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 256);
  v4 = *(a1 + 264);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2657F05F8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_2657BA19C(v3, v4);
}

uint64_t sub_2657D6540(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 120);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657D66C0;
  *(v8 + 24) = v7;
  v11[4] = sub_2657F06A0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2657CF61C;
  v11[3] = &block_descriptor_46;
  v9 = _Block_copy(v11);

  sub_2657BA19C(a1, a2);

  dispatch_sync(v6, v9);
  sub_2657BA1AC(a1, a2);
  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void (*sub_2657D66C4(uint64_t **a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[8] = v1;
  v3[9] = *(v1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC8, &qword_2657F5198);
  sub_2657F25C4();
  v5 = *v4;
  if (*v4)
  {
    v6 = v4[1];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_2657F069C;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v4[6] = v8;
  v4[7] = v7;
  return sub_2657D67C8;
}

void sub_2657D67C8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v6 = *(*a1 + 56);
  if ((a2 & 1) == 0)
  {
    v11 = swift_allocObject();
    v11[2] = v5;
    v11[3] = v3;
    v11[4] = v6;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2657F0684;
    *(v12 + 24) = v11;
    v2[4] = sub_2657F06A0;
    v2[5] = v12;
    *v2 = MEMORY[0x277D85DD0];
    v2[1] = 1107296256;
    v2[2] = sub_2657CF61C;
    v2[3] = &block_descriptor_69;
    v13 = _Block_copy(v2);

    sub_2657BA19C(v3, v6);

    dispatch_sync(v4, v13);
    sub_2657BA1AC(v3, v6);
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657F0684;
  *(v8 + 24) = v7;
  v2[4] = sub_2657F06A0;
  v2[5] = v8;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_2657CF61C;
  v2[3] = &block_descriptor_58;
  v9 = _Block_copy(v2);
  sub_2657BA19C(v3, v6);

  sub_2657BA19C(v3, v6);

  dispatch_sync(v4, v9);
  sub_2657BA1AC(v3, v6);
  _Block_release(v9);
  v10 = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2657BA1AC(v2[6], v2[7]);
LABEL_5:

  free(v2);
}

uint64_t sub_2657D6AA4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 256);
  v5 = *(v2 + 264);
  *(v2 + 256) = v1;
  *(v2 + 264) = v3;
  sub_2657BA19C(v1, v3);

  return sub_2657BA1AC(v4, v5);
}

uint64_t sub_2657D6AEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_2657F06A4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_2657BA19C(v1, v2);
  return sub_2657D6CCC(v4, v3);
}

uint64_t (*sub_2657D6B7C())()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC0, &qword_2657F5190);
  sub_2657F25C4();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_2657F06A4;
}

uint64_t sub_2657D6C34@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 288);
  v4 = *(a1 + 296);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2657F07A4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_2657BA19C(v3, v4);
}

uint64_t sub_2657D6CCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 120);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657D6E4C;
  *(v8 + 24) = v7;
  v11[4] = sub_2657F06A0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2657CF61C;
  v11[3] = &block_descriptor_87;
  v9 = _Block_copy(v11);

  sub_2657BA19C(a1, a2);

  dispatch_sync(v6, v9);
  sub_2657BA1AC(a1, a2);
  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void (*sub_2657D6E50(uint64_t **a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[8] = v1;
  v3[9] = *(v1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC0, &qword_2657F5190);
  sub_2657F25C4();
  v5 = *v4;
  if (*v4)
  {
    v6 = v4[1];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_2657F06A4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v4[6] = v8;
  v4[7] = v7;
  return sub_2657D6F54;
}

void sub_2657D6F54(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v6 = *(*a1 + 56);
  if ((a2 & 1) == 0)
  {
    v11 = swift_allocObject();
    v11[2] = v5;
    v11[3] = v3;
    v11[4] = v6;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2657F0688;
    *(v12 + 24) = v11;
    v2[4] = sub_2657F06A0;
    v2[5] = v12;
    *v2 = MEMORY[0x277D85DD0];
    v2[1] = 1107296256;
    v2[2] = sub_2657CF61C;
    v2[3] = &block_descriptor_111;
    v13 = _Block_copy(v2);

    sub_2657BA19C(v3, v6);

    dispatch_sync(v4, v13);
    sub_2657BA1AC(v3, v6);
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657F0688;
  *(v8 + 24) = v7;
  v2[4] = sub_2657F06A0;
  v2[5] = v8;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_2657CF61C;
  v2[3] = &block_descriptor_100;
  v9 = _Block_copy(v2);
  sub_2657BA19C(v3, v6);

  sub_2657BA19C(v3, v6);

  dispatch_sync(v4, v9);
  sub_2657BA1AC(v3, v6);
  _Block_release(v9);
  v10 = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2657BA1AC(v2[6], v2[7]);
LABEL_5:

  free(v2);
}

uint64_t sub_2657D7230()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 288);
  v5 = *(v2 + 296);
  *(v2 + 288) = v1;
  *(v2 + 296) = v3;
  sub_2657BA19C(v1, v3);

  return sub_2657BA1AC(v4, v5);
}

uint64_t sub_2657D7278(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_2657F06A4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_2657BA19C(v1, v2);
  return sub_2657D7458(v4, v3);
}

uint64_t (*sub_2657D7308())()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC0, &qword_2657F5190);
  sub_2657F25C4();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_2657F06A4;
}

uint64_t sub_2657D73C0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 304);
  v4 = *(a1 + 312);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2657F07A4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_2657BA19C(v3, v4);
}

uint64_t sub_2657D7458(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 120);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657D75D8;
  *(v8 + 24) = v7;
  v11[4] = sub_2657F06A0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2657CF61C;
  v11[3] = &block_descriptor_129;
  v9 = _Block_copy(v11);

  sub_2657BA19C(a1, a2);

  dispatch_sync(v6, v9);
  sub_2657BA1AC(a1, a2);
  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void (*sub_2657D75DC(uint64_t **a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[8] = v1;
  v3[9] = *(v1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC0, &qword_2657F5190);
  sub_2657F25C4();
  v5 = *v4;
  if (*v4)
  {
    v6 = v4[1];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_2657F06A4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v4[6] = v8;
  v4[7] = v7;
  return sub_2657D76E0;
}

void sub_2657D76E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v6 = *(*a1 + 56);
  if ((a2 & 1) == 0)
  {
    v11 = swift_allocObject();
    v11[2] = v5;
    v11[3] = v3;
    v11[4] = v6;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2657F068C;
    *(v12 + 24) = v11;
    v2[4] = sub_2657F06A0;
    v2[5] = v12;
    *v2 = MEMORY[0x277D85DD0];
    v2[1] = 1107296256;
    v2[2] = sub_2657CF61C;
    v2[3] = &block_descriptor_153;
    v13 = _Block_copy(v2);

    sub_2657BA19C(v3, v6);

    dispatch_sync(v4, v13);
    sub_2657BA1AC(v3, v6);
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657F068C;
  *(v8 + 24) = v7;
  v2[4] = sub_2657F06A0;
  v2[5] = v8;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_2657CF61C;
  v2[3] = &block_descriptor_142;
  v9 = _Block_copy(v2);
  sub_2657BA19C(v3, v6);

  sub_2657BA19C(v3, v6);

  dispatch_sync(v4, v9);
  sub_2657BA1AC(v3, v6);
  _Block_release(v9);
  v10 = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2657BA1AC(v2[6], v2[7]);
LABEL_5:

  free(v2);
}

uint64_t sub_2657D79BC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 304);
  v5 = *(v2 + 312);
  *(v2 + 304) = v1;
  *(v2 + 312) = v3;
  sub_2657BA19C(v1, v3);

  return sub_2657BA1AC(v4, v5);
}

double sub_2657D7A04@<D0>(uint64_t *a1@<X3>, uint64_t *a2@<X4>, _OWORD *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_2657F25C4();
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t sub_2657D7A6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_2657F06A4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_2657BA19C(v1, v2);
  return sub_2657D7C4C(v4, v3);
}

uint64_t (*sub_2657D7AFC())()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC0, &qword_2657F5190);
  sub_2657F25C4();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_2657F06A4;
}

uint64_t sub_2657D7BB4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 320);
  v4 = *(a1 + 328);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2657CF5F4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_2657BA19C(v3, v4);
}

uint64_t sub_2657D7C4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 120);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657D7DCC;
  *(v8 + 24) = v7;
  v11[4] = sub_2657F06A0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2657CF61C;
  v11[3] = &block_descriptor_171;
  v9 = _Block_copy(v11);

  sub_2657BA19C(a1, a2);

  dispatch_sync(v6, v9);
  sub_2657BA1AC(a1, a2);
  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void (*sub_2657D7DD0(uint64_t **a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[8] = v1;
  v3[9] = *(v1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC0, &qword_2657F5190);
  sub_2657F25C4();
  v5 = *v4;
  if (*v4)
  {
    v6 = v4[1];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_2657F06A4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v4[6] = v8;
  v4[7] = v7;
  return sub_2657D7ED4;
}

void sub_2657D7ED4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v6 = *(*a1 + 56);
  if ((a2 & 1) == 0)
  {
    v11 = swift_allocObject();
    v11[2] = v5;
    v11[3] = v3;
    v11[4] = v6;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2657F0690;
    *(v12 + 24) = v11;
    v2[4] = sub_2657F06A0;
    v2[5] = v12;
    *v2 = MEMORY[0x277D85DD0];
    v2[1] = 1107296256;
    v2[2] = sub_2657CF61C;
    v2[3] = &block_descriptor_195;
    v13 = _Block_copy(v2);

    sub_2657BA19C(v3, v6);

    dispatch_sync(v4, v13);
    sub_2657BA1AC(v3, v6);
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657F0690;
  *(v8 + 24) = v7;
  v2[4] = sub_2657F06A0;
  v2[5] = v8;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_2657CF61C;
  v2[3] = &block_descriptor_184;
  v9 = _Block_copy(v2);
  sub_2657BA19C(v3, v6);

  sub_2657BA19C(v3, v6);

  dispatch_sync(v4, v9);
  sub_2657BA1AC(v3, v6);
  _Block_release(v9);
  v10 = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2657BA1AC(v2[6], v2[7]);
LABEL_5:

  free(v2);
}

uint64_t objectdestroy_2Tm_0()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2657D81F8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 320);
  v5 = *(v2 + 328);
  *(v2 + 320) = v1;
  *(v2 + 328) = v3;
  sub_2657BA19C(v1, v3);

  return sub_2657BA1AC(v4, v5);
}

uint64_t sub_2657D82B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*(*a1 + 216) + 16);

  os_unfair_lock_lock(v4);
  v6 = *(v3 + 224);
  v5 = *(v3 + 232);
  LOWORD(v3) = *(v3 + 240);

  os_unfair_lock_unlock(v4);

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_2657D8324(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *(*(*a2 + 216) + 16);

  os_unfair_lock_lock(v6);
  *(v5 + 224) = v3;
  *(v5 + 232) = v2;
  *(v5 + 240) = v4;

  os_unfair_lock_unlock(v6);
}

uint64_t sub_2657D83A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 216) + 16);

  os_unfair_lock_lock(v3);
  v4 = *(v1 + 232);
  v5 = *(v1 + 240);
  *a1 = *(v1 + 224);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;

  os_unfair_lock_unlock(v3);
}

uint64_t SyncEngine.__allocating_init(syncService:metadataStore:keybag:retryTimer:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v43 = a2;
  v44 = a6;
  v51 = a5;
  v47 = a4;
  v48 = a3;
  v42 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BD0, &qword_2657F51A0);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BD8, &unk_2657F51A8);
  v11 = *(v10 - 8);
  v49 = v10;
  v50 = v11;
  MEMORY[0x28223BE20](v10);
  v46 = v38 - v12;
  v40 = sub_2657F25B4();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2657F2594();
  MEMORY[0x28223BE20](v15);
  v16 = sub_2657F23E4();
  MEMORY[0x28223BE20](v16 - 8);
  sub_2657BF854(a3, v57);
  sub_2657BF854(a4, v54);
  type metadata accessor for SyncEngine();
  v17 = swift_allocObject();
  v41 = sub_2657D0F44(0, &qword_281446370, 0x277D85C78);
  v38[1] = "ictionary=}12";
  sub_2657F23D4();
  v53 = MEMORY[0x277D84F90];
  sub_2657EF918(&qword_281446390, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BE0, &qword_2657F4220);
  sub_2657D53B4(&unk_2814463B0, &unk_280023BE0, &qword_2657F4220, MEMORY[0x277D83970]);
  sub_2657F2664();
  (*(v39 + 104))(v14, *MEMORY[0x277D85268], v40);
  *(v17 + 120) = sub_2657F25E4();
  v18 = MEMORY[0x277D84F98];
  *(v17 + 144) = MEMORY[0x277D84F98];
  *(v17 + 152) = 0;
  *(v17 + 168) = v18;
  *(v17 + 176) = v18;
  *(v17 + 184) = MEMORY[0x277D84FA0];
  type metadata accessor for UnfairLock();
  *(v17 + 200) = 0;
  *(v17 + 208) = 0;
  *(v17 + 192) = 0;
  v19 = swift_allocObject();
  v20 = swift_slowAlloc();
  *(v19 + 16) = v20;
  *v20 = 0;
  *(v17 + 224) = 0;
  *(v17 + 232) = 0;
  *(v17 + 216) = v19;
  *(v17 + 240) = 0;
  *(v17 + 256) = 0u;
  *(v17 + 272) = 0u;
  *(v17 + 288) = 0u;
  *(v17 + 304) = 0u;
  *(v17 + 320) = 0u;
  v21 = v43;
  *(v17 + 24) = v42;
  *(v17 + 32) = v21;
  sub_2657BF854(v57, v17 + 40);
  sub_2657BF854(v54, v17 + 80);
  v22 = v44;
  *(v17 + 128) = v51;
  *(v17 + 136) = v22;
  *(v17 + 16) = 0;
  *(v17 + 160) = 86400;
  *(v17 + 200) = 0;
  *(v17 + 208) = 0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  *(v17 + 248) = 3;
  v23 = v55;
  v24 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v25 = (*(v24 + 24))(v23, v24);
  v52 = *(v17 + 120);
  v26 = v52;
  v53 = v25;
  v27 = sub_2657F25A4();
  v28 = v45;
  (*(*(v27 - 8) + 56))(v45, 1, 1, v27);
  v29 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BF0, &qword_2657F51B8);
  sub_2657D53B4(&unk_2814463E8, &unk_280023BF0, &qword_2657F51B8, MEMORY[0x277CBCD90]);
  sub_2657EF098();
  v30 = v46;
  sub_2657F2384();
  sub_2657CC304(v28, &qword_280023BD0, &qword_2657F51A0);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_2657EF100;
  *(v31 + 24) = v17;
  sub_2657D53B4(&unk_2814463F8, &qword_280023BD8, &unk_2657F51A8, MEMORY[0x277CBCD60]);

  v32 = v49;
  v33 = sub_2657F2394();

  (*(v50 + 8))(v30, v32);
  *(v17 + 192) = v33;

  v53 = 3;
  sub_2657EE73C(&v53);
  ObjectType = swift_getObjectType();
  v35 = *(v21 + 8);

  v35(v36, &protocol witness table for SyncEngine, ObjectType, v21);

  __swift_destroy_boxed_opaque_existential_1(v57);
  __swift_destroy_boxed_opaque_existential_1(v54);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return v17;
}

uint64_t SyncEngine.__allocating_init(syncService:metadataStore:keybag:retryTimer:role:syncState:inflightExpirationTime:localDeviceIdentifier:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v64 = a4;
  v65 = a5;
  v66 = a3;
  v63 = a1;
  v57 = a11;
  v58 = a6;
  v56 = a10;
  v54 = a2;
  v55 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BD0, &qword_2657F51A0);
  MEMORY[0x28223BE20](v13 - 8);
  v59 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BD8, &unk_2657F51A8);
  v16 = *(v15 - 8);
  v61 = v15;
  v62 = v16;
  MEMORY[0x28223BE20](v15);
  v60 = &v48 - v17;
  v18 = sub_2657F25B4();
  v49 = *(v18 - 8);
  v50 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2657F2594();
  MEMORY[0x28223BE20](v21);
  v22 = sub_2657F23E4();
  MEMORY[0x28223BE20](v22 - 8);
  v23 = swift_allocObject();
  v51 = *a7;
  v53 = *a8;
  v52 = sub_2657D0F44(0, &qword_281446370, 0x277D85C78);
  v48 = "ictionary=}12";
  sub_2657F23D4();
  v68 = MEMORY[0x277D84F90];
  sub_2657EF918(&qword_281446390, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BE0, &qword_2657F4220);
  sub_2657D53B4(&unk_2814463B0, &unk_280023BE0, &qword_2657F4220, MEMORY[0x277D83970]);
  sub_2657F2664();
  (*(v49 + 104))(v20, *MEMORY[0x277D85268], v50);
  *(v23 + 120) = sub_2657F25E4();
  v24 = MEMORY[0x277D84F98];
  *(v23 + 144) = MEMORY[0x277D84F98];
  *(v23 + 152) = 0;
  *(v23 + 168) = v24;
  *(v23 + 176) = v24;
  *(v23 + 184) = MEMORY[0x277D84FA0];
  type metadata accessor for UnfairLock();
  *(v23 + 200) = 0;
  *(v23 + 208) = 0;
  *(v23 + 192) = 0;
  v25 = swift_allocObject();
  v26 = swift_slowAlloc();
  *(v25 + 16) = v26;
  *v26 = 0;
  *(v23 + 224) = 0;
  *(v23 + 232) = 0;
  *(v23 + 216) = v25;
  *(v23 + 240) = 0;
  *(v23 + 256) = 0u;
  *(v23 + 272) = 0u;
  *(v23 + 288) = 0u;
  *(v23 + 304) = 0u;
  *(v23 + 320) = 0u;
  v27 = v54;
  *(v23 + 24) = v63;
  *(v23 + 32) = v27;
  sub_2657BF854(v66, v23 + 40);
  v28 = v64;
  sub_2657BF854(v64, v23 + 80);
  v29 = v58;
  *(v23 + 128) = v65;
  *(v23 + 136) = v29;
  *(v23 + 16) = v51;
  v30 = v56;
  *(v23 + 160) = v55;
  v31 = v57;
  *(v23 + 200) = v30;
  *(v23 + 208) = v31;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v32 = v53;
  *(v23 + 248) = v53;
  v33 = v28[3];
  v34 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v33);
  v35 = (*(v34 + 24))(v33, v34);
  v67 = *(v23 + 120);
  v36 = v67;
  v68 = v35;
  v37 = sub_2657F25A4();
  v38 = v59;
  (*(*(v37 - 8) + 56))(v59, 1, 1, v37);
  v39 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BF0, &qword_2657F51B8);
  sub_2657D53B4(&unk_2814463E8, &unk_280023BF0, &qword_2657F51B8, MEMORY[0x277CBCD90]);
  sub_2657EF098();
  v40 = v60;
  sub_2657F2384();
  sub_2657CC304(v38, &qword_280023BD0, &qword_2657F51A0);

  v41 = swift_allocObject();
  *(v41 + 16) = sub_2657F0704;
  *(v41 + 24) = v23;
  sub_2657D53B4(&unk_2814463F8, &qword_280023BD8, &unk_2657F51A8, MEMORY[0x277CBCD60]);

  v42 = v61;
  v43 = sub_2657F2394();

  (*(v62 + 8))(v40, v42);
  *(v23 + 192) = v43;

  v68 = v32;
  sub_2657EE73C(&v68);
  ObjectType = swift_getObjectType();
  v45 = *(v27 + 8);

  v45(v46, &protocol witness table for SyncEngine, ObjectType, v27);

  __swift_destroy_boxed_opaque_existential_1(v66);
  __swift_destroy_boxed_opaque_existential_1(v64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v23;
}

void *SyncEngine.init(syncService:metadataStore:keybag:retryTimer:role:syncState:inflightExpirationTime:localDeviceIdentifier:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = sub_2657EE9C4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_2657D9254()
{
  v1 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  (*(v1 + 16))(ObjectType, v1);
  sub_2657F2314();

  sub_2657F2304();
  sub_2657F22F4();
}

Swift::Void __swiftcall SyncEngine.validate()()
{
  sub_2657F2314();

  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t SyncEngine.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_2657BA1AC(*(v0 + 256), *(v0 + 264));
  sub_2657BA1AC(*(v0 + 272), *(v0 + 280));
  sub_2657BA1AC(*(v0 + 288), *(v0 + 296));
  sub_2657BA1AC(*(v0 + 304), *(v0 + 312));
  sub_2657BA1AC(*(v0 + 320), *(v0 + 328));
  return v0;
}

uint64_t SyncEngine.__deallocating_deinit()
{
  SyncEngine.deinit();

  return MEMORY[0x2821FE8D8](v0, 336, 7);
}

Swift::Void __swiftcall SyncEngine.setHasPaired(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v4 = v1[8];
  v5 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v4);
  (*(v5 + 144))(countAndFlagsBits, object, v4, v5);
}

uint64_t SyncEngine.localDeviceIdentifier.getter()
{
  if (*(v0 + 208))
  {
    v1 = *(v0 + 200);
  }

  else
  {
    v2 = IDSCopyLocalDeviceUniqueID();
    if (v2)
    {
      v3 = v2;
      v1 = sub_2657F2484();
    }

    else
    {
      v1 = 0xD000000000000017;
    }
  }

  return v1;
}

Swift::Void __swiftcall SyncEngine.addRecordIDs(toSave:toDelete:)(Swift::OpaquePointer toSave, Swift::OpaquePointer toDelete)
{
  sub_2657F2314();
  v5 = swift_allocObject();
  v5[2]._rawValue = v2;
  v5[3]._rawValue = toSave._rawValue;
  v5[4]._rawValue = toDelete._rawValue;

  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t SyncEngine.set(dataSource:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2657F2314();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  swift_unknownObjectRetain();

  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t sub_2657D9730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v38 = a3;
  v34 = a2;
  v8 = sub_2657F2414();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + 120);
  *v11 = v12;
  v13 = *MEMORY[0x277D85200];
  v36 = *(v9 + 104);
  v36(v11, v13, v8);
  v35 = v12;
  LOBYTE(v12) = sub_2657F2434();
  v14 = *(v9 + 8);
  result = v14(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (!a1)
  {
LABEL_7:
    swift_beginAccess();

    sub_2657C1814(0, v38, a4);
    return swift_endAccess();
  }

  swift_beginAccess();
  v16 = a1;
  v17 = *(*(v5 + 144) + 16);
  v37 = v16;
  swift_unknownObjectRetain();
  if (v17)
  {

    sub_2657C8374(v38, a4);
    if (v18)
    {

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        swift_unknownObjectRelease();
        sub_2657F2764();
        __break(1u);
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  type metadata accessor for SyncEngine.WeakSource();
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v20 + 24) = v34;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v5 + 144);
  *(v5 + 144) = 0x8000000000000000;
  sub_2657C9984(v20, v38, a4, isUniquelyReferenced_nonNull_native);

  *(v5 + 144) = v39;
  swift_endAccess();
  v23 = v35;
  v22 = v36;
  *v11 = v35;
  v22(v11, v13, v8);
  v24 = v23;
  LOBYTE(v23) = sub_2657F2434();
  result = v14(v11, v8);
  if ((v23 & 1) == 0)
  {
    goto LABEL_18;
  }

  v25 = *(v5 + 136);
  ObjectType = swift_getObjectType();
  (*(v25 + 24))(ObjectType, v25);
  v27 = *(*(v5 + 216) + 16);

  os_unfair_lock_lock(v27);
  v28 = *(v5 + 224);
  v29 = *(v5 + 232);

  os_unfair_lock_unlock(v27);

  if (v29)
  {
  }

  else
  {
    v28 = 0;
  }

  v30 = *(*(v5 + 216) + 16);

  os_unfair_lock_lock(v30);
  v31 = *(v5 + 232);
  v32 = *(v5 + 241);

  os_unfair_lock_unlock(v30);

  v33 = v32 & 1;
  if (!v31)
  {
    v33 = 2;
  }

  v40[0] = v33;
  sub_2657B8A48(v28, v29, v40);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall SyncEngine.set(syncEnabled:)(Swift::Bool syncEnabled)
{
  v2 = v1;
  v4 = *(v1 + 120);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = syncEnabled;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2657EF170;
  *(v6 + 24) = v5;
  v8[4] = sub_2657F06A0;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2657CF61C;
  v8[3] = &block_descriptor_224;
  v7 = _Block_copy(v8);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

void sub_2657D9CB0(int a1)
{
  v3 = v1;
  LODWORD(v4) = a1;
  v5 = sub_2657F2414();
  v10 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v3 + 120);
  *v7 = v8;
  (*(v10 + 104))(v7, *MEMORY[0x277D85200], v5);
  v9 = v8;
  LOBYTE(v8) = sub_2657F2434();
  v11 = *(v10 + 8);
  LOBYTE(v10) = v10 + 8;
  v11(v7, v5);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_7;
  }

  v12 = *(v3 + 248);
  if (v12)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    LODWORD(v10) = *(v3 + 16);
  }

  v2 = 0x281446000uLL;
  if (v10 != 1)
  {
    goto LABEL_17;
  }

  if (qword_281446408 != -1)
  {
    goto LABEL_42;
  }

LABEL_7:
  v13 = sub_2657F2344();
  __swift_project_value_buffer(v13, qword_281446410);

  v14 = sub_2657F2334();
  v15 = sub_2657F2584();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v46 = v17;
    *v16 = 136381187;
    if (*(v3 + 208))
    {
      v18 = *(v3 + 200);
      v19 = *(v3 + 208);
    }

    else
    {
      v20 = IDSCopyLocalDeviceUniqueID();
      if (v20)
      {
        HIDWORD(v45) = v4;
        v4 = v20;
        v18 = sub_2657F2484();
        v19 = v21;

        LODWORD(v4) = HIDWORD(v45);
      }

      else
      {
        v18 = 0xD000000000000017;
        v19 = 0x80000002657F8510;
      }
    }

    v22 = sub_2657B7F9C(v18, v19, &v46);

    *(v16 + 4) = v22;
    *(v16 + 12) = 1026;
    *(v16 + 14) = 0;
    *(v16 + 18) = 1026;
    *(v16 + 20) = 1;
    _os_log_impl(&dword_2657B5000, v14, v15, "(%{private}s) Sync engine supported state has changed from %{BOOL,public}d to %{BOOL,public}d", v16, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x266760A30](v17, -1, -1);
    MEMORY[0x266760A30](v16, -1, -1);

    v2 = 0x281446000uLL;
    v12 = *(v3 + 248);
    if ((v12 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {

    v12 = *(v3 + 248);
    if ((v12 & 1) == 0)
    {
LABEL_16:
      v12 |= 1uLL;
      *(v3 + 248) = v12;
    }
  }

LABEL_17:
  if (((v12 >> 1) & 1) == (v4 & 1))
  {
    if ((v10 & 1) == 0)
    {
      return;
    }

    goto LABEL_35;
  }

  if (*(v2 + 1032) != -1)
  {
    swift_once();
  }

  v23 = sub_2657F2344();
  __swift_project_value_buffer(v23, qword_281446410);

  v24 = sub_2657F2334();
  v25 = sub_2657F2584();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v12 & 2;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v46 = v28;
    *v27 = 136381187;
    if (*(v3 + 208))
    {
      v29 = *(v3 + 200);
      v30 = *(v3 + 208);
    }

    else
    {
      v31 = IDSCopyLocalDeviceUniqueID();
      if (v31)
      {
        HIDWORD(v45) = v4;
        v4 = v31;
        v29 = sub_2657F2484();
        v30 = v32;

        LOBYTE(v4) = BYTE4(v45);
      }

      else
      {
        v29 = 0xD000000000000017;
        v30 = 0x80000002657F8510;
      }
    }

    v33 = sub_2657B7F9C(v29, v30, &v46);

    *(v27 + 4) = v33;
    *(v27 + 12) = 1026;
    *(v27 + 14) = v26 >> 1;
    *(v27 + 18) = 1026;
    *(v27 + 20) = v4 & 1;
    _os_log_impl(&dword_2657B5000, v24, v25, "(%{private}s) Sync engine enabled state has changed from %{BOOL,public}d to %{BOOL,public}d", v27, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x266760A30](v28, -1, -1);
    MEMORY[0x266760A30](v27, -1, -1);
  }

  v34 = *(v3 + 248);
  if (v4)
  {
    if ((v34 & 2) != 0)
    {
      goto LABEL_35;
    }

    v35 = v34 | 2;
  }

  else
  {
    if ((v34 & 2) == 0)
    {
      goto LABEL_35;
    }

    v35 = v34 & 0xFFFFFFFFFFFFFFFDLL;
  }

  *(v3 + 248) = v35;
LABEL_35:
  sub_2657DA250();
  v36 = *(*(v3 + 216) + 16);

  os_unfair_lock_lock(v36);
  v38 = *(v3 + 224);
  v37 = *(v3 + 232);
  v39 = *(v3 + 240);

  os_unfair_lock_unlock(v36);

  if (v37)
  {
    v40 = HIBYTE(v39) & 1;
    v41 = *(v3 + 64);
    v42 = *(v3 + 72);
    __swift_project_boxed_opaque_existential_1((v3 + 40), v41);
    v43 = *(v42 + 136);

    v44 = v43(v38, v37, v41, v42);

    LOBYTE(v46) = v40;

    if (v44)
    {
      sub_2657B8A48(v38, v37, &v46);
    }

    else
    {
      sub_2657E4628(v38, v37, &v46);
    }

    swift_bridgeObjectRelease_n();
  }
}

void sub_2657DA250()
{
  v1 = v0;
  v2 = sub_2657F22A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2657F2414();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + 120);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v11 = v10;
  LOBYTE(v10) = sub_2657F2434();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_7;
  }

  sub_2657E4CAC();
  sub_2657E4F94();
  if ((~*(v1 + 248) & 3) != 0)
  {
    return;
  }

  v12 = *(*(v1 + 216) + 16);

  os_unfair_lock_lock(v12);
  v13 = *(v1 + 232);

  os_unfair_lock_unlock(v12);

  if (!v13)
  {
    return;
  }

  v14 = *(v1 + 104);
  v15 = *(v1 + 112);
  __swift_project_boxed_opaque_existential_1((v1 + 80), v14);
  if (((*(v15 + 16))(v14, v15) & 1) == 0)
  {
    return;
  }

  v16 = *(v1 + 64);
  v17 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v1 + 40), v16);
  sub_2657F2284();
  v18 = (*(v17 + 112))(v5, v16, v17);
  (*(v3 + 8))(v5, v2);
  if (v18)
  {
    return;
  }

  if (qword_281446408 != -1)
  {
    goto LABEL_22;
  }

LABEL_7:
  v19 = sub_2657F2344();
  __swift_project_value_buffer(v19, qword_281446410);

  v20 = sub_2657F2334();
  v21 = sub_2657F2584();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v39 = v23;
    *v22 = 136380675;
    if (*(v1 + 208))
    {
      v24 = *(v1 + 200);
      v25 = *(v1 + 208);
    }

    else
    {
      v26 = IDSCopyLocalDeviceUniqueID();
      if (v26)
      {
        v27 = v26;
        v24 = sub_2657F2484();
        v25 = v28;
      }

      else
      {
        v25 = 0x80000002657F8510;
        v24 = 0xD000000000000017;
      }
    }

    v29 = sub_2657B7F9C(v24, v25, &v39);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_2657B5000, v20, v21, "(%{private}s) Metadata store is invalid; purging and syncing", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x266760A30](v23, -1, -1);
    MEMORY[0x266760A30](v22, -1, -1);
  }

  v30 = *(v1 + 64);
  v31 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v1 + 40), v30);
  (*(v31 + 80))(v30, v31);
  v32 = *(*(v1 + 216) + 16);

  os_unfair_lock_lock(v32);
  v33 = *(v1 + 224);
  v34 = *(v1 + 232);

  os_unfair_lock_unlock(v32);

  if (v34)
  {
  }

  else
  {
    v33 = 0;
  }

  v35 = *(*(v1 + 216) + 16);

  os_unfair_lock_lock(v35);
  v36 = *(v1 + 232);
  v37 = *(v1 + 241);

  os_unfair_lock_unlock(v35);

  v38 = v37 & 1;
  if (!v36)
  {
    v38 = 2;
  }

  v40 = v38;
  sub_2657B8A48(v33, v34, &v40);
}

Swift::Void __swiftcall SyncEngine.sync()()
{
  sub_2657F2314();

  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t sub_2657DA7BC()
{
  v1 = sub_2657F2414();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 120);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_2657F2434();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v8 = *(*(v0 + 216) + 16);

    os_unfair_lock_lock(v8);
    v10 = *(v0 + 224);
    v9 = *(v0 + 232);

    os_unfair_lock_unlock(v8);

    if (v9)
    {
    }

    else
    {
      v10 = 0;
    }

    v11 = *(*(v0 + 216) + 16);

    os_unfair_lock_lock(v11);
    v12 = *(v0 + 232);
    v13 = *(v0 + 241);

    os_unfair_lock_unlock(v11);

    v14 = v13 & 1;
    if (!v12)
    {
      v14 = 2;
    }

    v16 = v14;
    sub_2657B8A48(v10, v9, &v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2657DA98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  sub_2657F2314();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  swift_unknownObjectRetain();

  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t sub_2657DAA7C(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2657F06A8;
  *(v6 + 24) = v5;
  v9[4] = sub_2657F06A0;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2657CF61C;
  v9[3] = &block_descriptor_373;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2657DABD8()
{
  sub_2657F2314();

  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t sub_2657DAC68()
{
  sub_2657F2314();

  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t sub_2657DACF4()
{
  v1 = *(*v0 + 32);
  ObjectType = swift_getObjectType();
  (*(v1 + 16))(ObjectType, v1);
  sub_2657F2314();

  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t SyncEngine.syncService(_:didReceiveMessage:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(a3 + 16);
  v21[0] = *a3;
  v21[1] = v12;
  v22 = *(a3 + 32);
  v13 = *(v6 + 120);
  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  v15 = *(a3 + 16);
  *(v14 + 40) = *a3;
  *(v14 + 56) = v15;
  *(v14 + 72) = *(a3 + 32);
  *(v14 + 80) = a4;
  *(v14 + 88) = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2657EF1D8;
  *(v16 + 24) = v14;
  aBlock[4] = sub_2657F06A0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2657CF61C;
  aBlock[3] = &block_descriptor_234;
  v17 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_2657CF2DC(v21, v19);

  dispatch_sync(v13, v17);
  _Block_release(v17);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  return result;
}

uint64_t SyncEngine._queue_syncService(_:shouldAcceptIncomingMessage:from:)(uint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5)
{
  v80 = a4;
  v9 = sub_2657F2414();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a3;
  v14 = a3[1];
  v81 = a3[2];
  v15 = a3[4];
  v79 = a3[3];
  v16 = *(v5 + 120);
  *v12 = v16;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v17 = v16;
  LOBYTE(v16) = sub_2657F2434();
  (*(v10 + 8))(v12, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  if (*(v5 + 24) != a1 || (v14 != 0x69676E45636E7953 || v81 != 0xEA0000000000656ELL) && (sub_2657F2864() & 1) == 0)
  {
    return 0;
  }

  v19 = *(*(v5 + 216) + 16);

  os_unfair_lock_lock(v19);
  v21 = *(v5 + 224);
  v20 = *(v5 + 232);
  v22 = *(v5 + 240);

  os_unfair_lock_unlock(v19);

  if (!v20)
  {
    return 0;
  }

  v23 = *(v5 + 104);
  v24 = *(v5 + 112);
  v12 = v5;
  __swift_project_boxed_opaque_existential_1((v5 + 80), v23);
  if (((*(v24 + 16))(v23, v24) & 1) == 0)
  {

    if (qword_281446408 == -1)
    {
LABEL_16:
      v26 = sub_2657F2344();
      __swift_project_value_buffer(v26, qword_281446410);

      v27 = sub_2657F2334();
      v28 = sub_2657F2574();

      if (!os_log_type_enabled(v27, v28))
      {
LABEL_49:

        return 0;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v82 = v30;
      *v29 = 136380675;
      if (v12[26])
      {
        v31 = v12[25];
        v32 = v12[26];
      }

      else
      {
        v38 = IDSCopyLocalDeviceUniqueID();
        if (v38)
        {
          v39 = v38;
          v31 = sub_2657F2484();
          v32 = v40;
        }

        else
        {
          v31 = 0xD000000000000017;
          v32 = 0x80000002657F8510;
        }
      }

      v61 = sub_2657B7F9C(v31, v32, &v82);

      *(v29 + 4) = v61;
      _os_log_impl(&dword_2657B5000, v27, v28, "(%{private}s) Rejecting incoming message because keybag is locked", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      v62 = v30;
LABEL_48:
      MEMORY[0x266760A30](v62, -1, -1);
      MEMORY[0x266760A30](v29, -1, -1);
      goto LABEL_49;
    }

LABEL_62:
    swift_once();
    goto LABEL_16;
  }

  if ((~*(v5 + 248) & 3) != 0)
  {

    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v33 = sub_2657F2344();
    __swift_project_value_buffer(v33, qword_281446410);

    v27 = sub_2657F2334();
    v34 = sub_2657F2574();

    if (!os_log_type_enabled(v27, v34))
    {
      goto LABEL_49;
    }

    v29 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v84 = v35;
    *v29 = 136380931;
    if (*(v5 + 208))
    {
      v36 = *(v5 + 200);
      v37 = *(v5 + 208);
    }

    else
    {
      v58 = IDSCopyLocalDeviceUniqueID();
      if (v58)
      {
        v59 = v58;
        v36 = sub_2657F2484();
        v37 = v60;
      }

      else
      {
        v37 = 0x80000002657F8510;
        v36 = 0xD000000000000017;
      }
    }

    v63 = sub_2657B7F9C(v36, v37, &v84);

    *(v29 + 4) = v63;
    *(v29 + 12) = 2082;
    v64 = *(v5 + 248);
    v82 = 0;
    v83 = 0xE000000000000000;
    if (v64)
    {
      MEMORY[0x26675FFF0](0xD000000000000010, 0x80000002657F8030);
    }

    if ((v64 & 2) != 0)
    {
      MEMORY[0x26675FFF0](0xD000000000000012, 0x80000002657F8010);
    }

    v65 = sub_2657B7F9C(v82, v83, &v84);

    *(v29 + 14) = v65;
    _os_log_impl(&dword_2657B5000, v27, v34, "(%{private}s) Rejecting incoming message because the sync engine is disabled: %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    v62 = v35;
    goto LABEL_48;
  }

  v78 = v22;
  v25 = a5;
  if ((v21 != v80 || v20 != a5) && (sub_2657F2864() & 1) == 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v52 = sub_2657F2344();
    __swift_project_value_buffer(v52, qword_281446410);

    v45 = sub_2657F2334();
    v53 = sub_2657F2574();

    if (os_log_type_enabled(v45, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v82 = v55;
      *v54 = 136381187;
      if (v12[26])
      {
        v56 = v12[25];
        v57 = v12[26];
      }

      else
      {
        v81 = 0;
        v69 = IDSCopyLocalDeviceUniqueID();
        if (v69)
        {
          v70 = v69;
          v56 = sub_2657F2484();
          v57 = v71;
        }

        else
        {
          v56 = 0xD000000000000017;
          v57 = 0x80000002657F8510;
        }
      }

      v75 = sub_2657B7F9C(v56, v57, &v82);

      *(v54 + 4) = v75;
      *(v54 + 12) = 2082;
      *(v54 + 14) = sub_2657B7F9C(v80, v25, &v82);
      *(v54 + 22) = 2082;
      v76 = sub_2657B7F9C(v21, v20, &v82);

      *(v54 + 24) = v76;
      _os_log_impl(&dword_2657B5000, v45, v53, "(%{private}s) Rejecting message; not from active device: deviceIdentifier=%{public}s; pairedDevice=%{public}s", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266760A30](v55, -1, -1);
      v74 = v54;
LABEL_59:
      MEMORY[0x266760A30](v74, -1, -1);
      goto LABEL_60;
    }

LABEL_60:

    return 0;
  }

  if (!v13)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v41 = sub_2657F2344();
    __swift_project_value_buffer(v41, qword_281446410);

    v42 = v79;
    v43 = v15;
    sub_2657BB26C(v79, v15);

    sub_2657BB26C(v42, v15);

    v44 = v5;
    v45 = sub_2657F2334();
    v46 = sub_2657F2574();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v82 = v48;
      *v47 = 136381187;
      v49 = *(v44 + 208);
      v80 = v48;
      if (v49)
      {
        v50 = *(v44 + 200);
        v51 = v49;
      }

      else
      {
        v66 = IDSCopyLocalDeviceUniqueID();
        if (v66)
        {
          v67 = v66;
          v50 = sub_2657F2484();
          v51 = v68;
        }

        else
        {
          v50 = 0xD000000000000017;
          v51 = 0x80000002657F8510;
        }

        v42 = v79;
      }

      v72 = sub_2657B7F9C(v50, v51, &v82);

      *(v47 + 4) = v72;
      *(v47 + 12) = 2050;

      sub_2657BB314(v42, v43);
      *(v47 + 14) = 0;

      sub_2657BB314(v42, v43);
      *(v47 + 22) = 2050;

      *(v47 + 24) = (v78 >> 8) & 1;

      _os_log_impl(&dword_2657B5000, v45, v46, "(%{private}s) Rejecting message; version number not supported: versionNumber=%{public}ld; currentVersionNumber=%{public}ld", v47, 0x20u);
      v73 = v80;
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x266760A30](v73, -1, -1);
      v74 = v47;
      goto LABEL_59;
    }

    sub_2657BB314(v42, v15);

    sub_2657BB314(v42, v15);
    goto LABEL_60;
  }

  return 1;
}

uint64_t SyncEngine.syncService(_:didSendWithRequestIdentifier:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = *(v5 + 120);
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  v13[7] = a5;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2657EF23C;
  *(v14 + 24) = v13;
  v18[4] = sub_2657F06A0;
  v18[5] = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_2657CF61C;
  v18[3] = &block_descriptor_244;
  v15 = _Block_copy(v18);

  swift_unknownObjectRetain();

  v16 = a5;

  dispatch_sync(v12, v15);
  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

void sub_2657DBB84(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, void *a5)
{
  v114 = a4;
  v115 = a5;
  v113 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F8, &qword_2657F41A8);
  MEMORY[0x28223BE20](v7 - 8);
  v112 = &v110 - v8;
  v9 = sub_2657F2414();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v5 + 120);
  *v12 = v13;
  v14 = *MEMORY[0x277D85200];
  v15 = *(v10 + 104);
  (v15)(v12, v14, v9);
  v111 = v13;
  v16 = sub_2657F2434();
  v17 = *(v10 + 8);
  v17(v12, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_70;
  }

  v16 = v5;
  if (*(v5 + 24) != a1)
  {
    if (qword_281446408 == -1)
    {
LABEL_4:
      v18 = sub_2657F2344();
      __swift_project_value_buffer(v18, qword_281446410);

      v19 = sub_2657F2334();
      v20 = sub_2657F2574();

      if (!os_log_type_enabled(v19, v20))
      {
LABEL_41:

        return;
      }

      v21 = v16;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v117[0] = v23;
      *v22 = 136380675;
      v24 = *(v21 + 208);
      if (v24)
      {
        v25 = *(v21 + 200);
        v26 = v24;
      }

      else
      {
        v42 = IDSCopyLocalDeviceUniqueID();
        if (v42)
        {
          v43 = v42;
          v25 = sub_2657F2484();
          v26 = v44;
        }

        else
        {
          v25 = 0xD000000000000017;
          v26 = 0x80000002657F8510;
        }
      }

      v54 = sub_2657B7F9C(v25, v26, v117);

      *(v22 + 4) = v54;
      v55 = "(%{private}s) Ignoring message send callback as it is from an unknown sync service";
      goto LABEL_39;
    }

LABEL_70:
    swift_once();
    goto LABEL_4;
  }

  if ((~*(v5 + 248) & 3) != 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v37 = sub_2657F2344();
    __swift_project_value_buffer(v37, qword_281446410);

    v19 = sub_2657F2334();
    v20 = sub_2657F2574();

    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_41;
    }

    v38 = v16;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v117[0] = v23;
    *v22 = 136380675;
    v39 = *(v38 + 208);
    if (v39)
    {
      v40 = *(v38 + 200);
      v41 = v39;
    }

    else
    {
      v56 = IDSCopyLocalDeviceUniqueID();
      if (v56)
      {
        v57 = v56;
        v40 = sub_2657F2484();
        v41 = v58;
      }

      else
      {
        v40 = 0xD000000000000017;
        v41 = 0x80000002657F8510;
      }
    }

    v68 = sub_2657B7F9C(v40, v41, v117);

    *(v22 + 4) = v68;
    v55 = "(%{private}s) Ignoring message send callback as the sync engine is disabled";
LABEL_39:
    _os_log_impl(&dword_2657B5000, v19, v20, v55, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x266760A30](v23, -1, -1);
    v69 = v22;
LABEL_40:
    MEMORY[0x266760A30](v69, -1, -1);
    goto LABEL_41;
  }

  v27 = v115;
  if (v115)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v28 = sub_2657F2344();
    __swift_project_value_buffer(v28, qword_281446410);

    v29 = v27;
    v19 = sub_2657F2334();
    v30 = v16;
    v31 = sub_2657F2574();

    if (!os_log_type_enabled(v19, v31))
    {
      goto LABEL_41;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v117[0] = v33;
    *v32 = 136380931;
    v34 = *(v30 + 208);
    if (v34)
    {
      v35 = *(v30 + 200);
      v36 = v34;
    }

    else
    {
      v59 = IDSCopyLocalDeviceUniqueID();
      if (v59)
      {
        v60 = v59;
        v35 = sub_2657F2484();
        v36 = v61;
      }

      else
      {
        v35 = 0xD000000000000017;
        v36 = 0x80000002657F8510;
      }
    }

    v85 = sub_2657B7F9C(v35, v36, v117);

    *(v32 + 4) = v85;
    *(v32 + 12) = 2082;
    v116[0] = v115;
    v86 = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C98, qword_2657F5398);
    v87 = sub_2657F24A4();
    v89 = sub_2657B7F9C(v87, v88, v117);

    *(v32 + 14) = v89;
    _os_log_impl(&dword_2657B5000, v19, v31, "(%{private}s) Error in didSendWithRequestIdentifier sending record modifications: %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    v90 = v33;
    goto LABEL_53;
  }

  swift_beginAccess();
  v45 = *(v5 + 168);
  v46 = v114;
  if (!*(v45 + 16))
  {
LABEL_32:
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v62 = sub_2657F2344();
    __swift_project_value_buffer(v62, qword_281446410);

    v19 = sub_2657F2334();
    v63 = sub_2657F2574();

    if (!os_log_type_enabled(v19, v63))
    {
      goto LABEL_41;
    }

    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v116[0] = v65;
    *v64 = 136380931;
    if (*(v16 + 208))
    {
      v66 = *(v16 + 200);
      v67 = *(v16 + 208);
    }

    else
    {
      v82 = IDSCopyLocalDeviceUniqueID();
      if (v82)
      {
        v83 = v82;
        v66 = sub_2657F2484();
        v67 = v84;
      }

      else
      {
        v66 = 0xD000000000000017;
        v67 = 0x80000002657F8510;
      }
    }

    v94 = sub_2657B7F9C(v66, v67, v116);

    *(v64 + 4) = v94;
    *(v64 + 12) = 2082;
    *(v64 + 14) = sub_2657B7F9C(v113, v114, v116);
    _os_log_impl(&dword_2657B5000, v19, v63, "(%{private}s) Ignoring message send callback as we have no metadata for the request identifier: %{public}s", v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266760A30](v65, -1, -1);
    v69 = v64;
    goto LABEL_40;
  }

  v47 = sub_2657C8374(v113, v46);
  if ((v48 & 1) == 0)
  {

    goto LABEL_32;
  }

  v49 = *(*(v45 + 56) + 8 * v47);

  v50 = *(v16 + 184);
  v51 = v49[2];
  v52 = *(v50 + 16);
  v115 = v49;
  if (v51 <= v52 >> 3)
  {
    v116[0] = v50;

    sub_2657ECF6C(v49);
    v53 = v116[0];
  }

  else
  {

    v53 = sub_2657ED164(v49, v50);
  }

  *(v16 + 184) = v53;

  swift_beginAccess();
  v70 = v114;

  sub_2657C14F4(0, v113, v70);
  swift_endAccess();
  v71 = sub_2657F22A4();
  (*(*(v71 - 8) + 56))(v112, 1, 1, v71);
  swift_beginAccess();

  sub_2657C163C(v112, v113, v70);
  swift_endAccess();
  v72 = v111;
  *v12 = v111;
  (v15)(v12, v14, v9);
  v73 = v72;
  LOBYTE(v72) = sub_2657F2434();
  v17(v12, v9);
  if (v72)
  {
    sub_2657E4F94();
    sub_2657EA2F0();
    v15 = v115;
    if (qword_281446408 == -1)
    {
      goto LABEL_45;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_45:
  v74 = sub_2657F2344();
  v75 = __swift_project_value_buffer(v74, qword_281446410);
  swift_retain_n();

  v114 = v75;
  v76 = sub_2657F2334();
  v77 = sub_2657F2584();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = v16;
    v79 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v116[0] = v113;
    *v79 = 136381187;
    if (v78[26])
    {
      v80 = v78[25];
      v81 = v78[26];
    }

    else
    {
      v91 = IDSCopyLocalDeviceUniqueID();
      if (v91)
      {
        v92 = v91;
        v80 = sub_2657F2484();
        v81 = v93;
      }

      else
      {
        v80 = 0xD000000000000017;
        v81 = 0x80000002657F8510;
      }
    }

    v95 = sub_2657B7F9C(v80, v81, v116);

    *(v79 + 4) = v95;
    *(v79 + 12) = 2050;
    v96 = v15[2];

    *(v79 + 14) = v96;

    *(v79 + 22) = 2050;
    v97 = *(v78[23] + 16);

    *(v79 + 24) = v97;

    _os_log_impl(&dword_2657B5000, v76, v77, "(%{private}s) Removed %{public}ld records; %{public}ld remaining", v79, 0x20u);
    v98 = v113;
    __swift_destroy_boxed_opaque_existential_1(v113);
    MEMORY[0x266760A30](v98, -1, -1);
    MEMORY[0x266760A30](v79, -1, -1);

    v16 = v78;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  swift_retain_n();
  v19 = sub_2657F2334();
  v99 = v16;
  v100 = sub_2657F2584();
  if (os_log_type_enabled(v19, v100))
  {
    v32 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v116[0] = v101;
    *v32 = 136380931;
    if (v99[26])
    {
      v102 = v99[25];
      v103 = v99[26];
    }

    else
    {
      v104 = v99;
      v105 = IDSCopyLocalDeviceUniqueID();
      if (v105)
      {
        v106 = v105;
        v102 = sub_2657F2484();
        v103 = v107;
      }

      else
      {
        v102 = 0xD000000000000017;
        v103 = 0x80000002657F8510;
      }

      v99 = v104;
    }

    v108 = sub_2657B7F9C(v102, v103, v116);

    *(v32 + 4) = v108;
    *(v32 + 12) = 2050;
    v109 = *(v99[21] + 16);

    *(v32 + 14) = v109;

    _os_log_impl(&dword_2657B5000, v19, v100, "(%{private}s) %{public}ld outstanding request identifiers", v32, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v101);
    v90 = v101;
LABEL_53:
    MEMORY[0x266760A30](v90, -1, -1);
    v69 = v32;
    goto LABEL_40;
  }
}