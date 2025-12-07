uint64_t sub_261CA2EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v44 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - v12;
  v14 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v43 = v10;
  result = sub_261D00524();
  v16 = result;
  if (*(v14 + 16))
  {
    v41 = v6;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = result + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(*(v14 + 48) + 8 * v28);
      v30 = *(v42 + 72);
      v31 = *(v14 + 56) + v30 * v28;
      if (v43)
      {
        sub_261CA57DC(v31, v13, v44);
      }

      else
      {
        sub_261CA5774(v31, v13, v44);
        v32 = v29;
      }

      result = sub_261D000E4();
      v33 = -1 << *(v16 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v23 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v23 + 8 * v35);
          if (v39 != -1)
          {
            v24 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v34) & ~*(v23 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v16 + 48) + 8 * v24) = v29;
      result = sub_261CA57DC(v13, *(v16 + 56) + v30 * v24, v44);
      ++*(v16 + 16);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v9 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v14 + 32);
    v9 = v41;
    if (v40 >= 64)
    {
      bzero((v14 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v40;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v9 = v16;
  return result;
}

uint64_t sub_261CA31D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDF50, &qword_261D10A70);
  v34 = v4;
  result = sub_261D00524();
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
        sub_261CFD104();
        sub_261CFD104();
      }

      sub_261D006C4();
      sub_261CFFB14();
      result = sub_261D006F4();
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

uint64_t sub_261CA3490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDF40, &qword_261D0F140);
  result = sub_261D00524();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v32 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        sub_261CFD104();
        v21 = v20;
      }

      sub_261D006C4();
      sub_261D006E4();
      if (v20)
      {
        v22 = v20;
        sub_261D00104();
      }

      result = sub_261D006F4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v32;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_261CA3744(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA7A8, &qword_261D10A40);
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v35 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDF30, &qword_261D10A48);
  v38 = v4;
  result = sub_261D00524();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
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
    v36 = (v5 + 16);
    v37 = v5;
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
      if (v38)
      {
        (*v16)(v39, v25, v40);
      }

      else
      {
        (*v36)(v39, v25, v40);
        v26 = v23;
      }

      result = sub_261D000E4();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v39, v40);
      ++*(v9 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_261CA3AAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_261D00524();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v4;
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
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      result = sub_261D000E4();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
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

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

uint64_t sub_261CA3D20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = v6;
  result = sub_261D00524();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v4;
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
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
        v24 = v22;
        sub_261CFD104();
      }

      sub_261D006C4();
      sub_261D006E4();
      if (v22)
      {
        v25 = v22;
        sub_261D00104();
      }

      result = sub_261D006F4();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
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

LABEL_35:
  *v5 = v9;
  return result;
}

uint64_t sub_261CA3FF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v45 = a3(0);
  v10 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v40 - v11;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v43 = v9;
  result = sub_261D00524();
  v14 = result;
  if (*(v12 + 16))
  {
    v40 = v5;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v10 + 16);
    v42 = v10;
    v21 = (v10 + 32);
    v22 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(*(v12 + 48) + 8 * v27);
      v29 = *(v10 + 72);
      v30 = *(v12 + 56) + v29 * v27;
      if (v43)
      {
        (*v21)(v44, v30, v45);
      }

      else
      {
        (*v41)(v44, v30, v45);
        v31 = v28;
      }

      result = sub_261D000E4();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v22 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v22 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v22 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v14 + 48) + 8 * v23) = v28;
      result = (*v21)(*(v14 + 56) + v29 * v23, v44, v45);
      ++*(v14 + 16);
      v10 = v42;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v8 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v12 + 32);
    v8 = v40;
    if (v39 >= 64)
    {
      bzero((v12 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

uint64_t sub_261CA4344(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD240, &qword_261D031B0);
  result = sub_261D00524();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        swift_unknownObjectRetain();
      }

      result = sub_261D000E4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_261CA45F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDF60, &qword_261D10A80);
  v2 = *v0;
  v3 = sub_261D00514();
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
        result = sub_261CFCDA4();
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

id sub_261CA47AC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v36 = a4;
  v7 = v4;
  v8 = a1(0);
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v32 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v4;
  v11 = sub_261D00514();
  v12 = v11;
  if (*(v10 + 16))
  {
    v33 = v7;
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, (v10 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v37 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = *(v10 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v16 << 6);
        v27 = *(*(v10 + 48) + 8 * v26);
        v28 = v34;
        v29 = *(v35 + 72) * v26;
        v30 = v36;
        sub_261CA5774(*(v10 + 56) + v29, v34, v36);
        v31 = v37;
        *(*(v37 + 48) + 8 * v26) = v27;
        sub_261CA57DC(v28, *(v31 + 56) + v29, v30);
        result = v27;
      }

      while (v21);
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v22)
      {

        v7 = v33;
        v12 = v37;
        goto LABEL_21;
      }

      v25 = *(v10 + 64 + 8 * v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

id sub_261CA49F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDF40, &qword_261D0F140);
  v2 = *v0;
  v3 = sub_261D00514();
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
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        sub_261CFD104();
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

id sub_261CA4B58()
{
  v1 = v0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA7A8, &qword_261D10A40);
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = v26 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDF30, &qword_261D10A48);
  v3 = *v0;
  v4 = sub_261D00514();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26[1] = v31 + 32;
    v26[2] = v31 + 16;
    for (i = v3; v13; v3 = i)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(v3 + 56);
      v20 = *(*(v3 + 48) + 8 * v18);
      v21 = v31;
      v22 = *(v31 + 72) * v18;
      v24 = v28;
      v23 = v29;
      (*(v31 + 16))(v28, v19 + v22, v29);
      v25 = v30;
      *(*(v30 + 48) + 8 * v18) = v20;
      (*(v21 + 32))(*(v25 + 56) + v22, v24, v23);
      result = v20;
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

        v1 = v26[0];
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

id sub_261CA4DE0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_261D00514();
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
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
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

id sub_261CA4F58(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v35 = a1(0);
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = v32 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_261D00514();
  v10 = v9;
  if (*(v8 + 16))
  {
    v32[0] = v6;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v36 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v32[1] = v37 + 32;
    v32[2] = v37 + 16;
    for (i = v8; v19; v8 = i)
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v24 = v21 | (v15 << 6);
      v25 = *(v8 + 56);
      v26 = *(*(v8 + 48) + 8 * v24);
      v27 = v37;
      v28 = *(v37 + 72) * v24;
      v30 = v34;
      v29 = v35;
      (*(v37 + 16))(v34, v25 + v28, v35);
      v31 = v36;
      *(*(v36 + 48) + 8 * v24) = v26;
      (*(v27 + 32))(*(v31 + 56) + v28, v30, v29);
      result = v26;
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32[0];
        v10 = v36;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

void *sub_261CA51C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD240, &qword_261D031B0);
  v2 = *v0;
  v3 = sub_261D00514();
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
        result = swift_unknownObjectRetain();
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

uint64_t sub_261CA5328(unint64_t a1, uint64_t a2)
{
  v14 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_261D00274())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26671CA10](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v13 = v7;
      sub_261CA2188(&v13, a2, &v12);
      if (v2)
      {

        return v6;
      }

      if (v12)
      {
        MEMORY[0x26671C310]();
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_261CFFC84();
        }

        sub_261CFFCB4();
        v6 = v14;
      }

      ++v5;
      if (v9 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_261CA5524()
{
  v1 = *(sub_261CFE724() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 64);
  v4 = v0 + ((*(v1 + 80) + 65) & ~*(v1 + 80));

  return sub_261CA2078(v2, (v0 + 24), v3, v4);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_261CFCDA4();
}

uint64_t sub_261CA55A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDEF0, &qword_261D109A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _s27SetReminderCompletedRequestVwxx(void *a1)
{

  v2 = a1[2];
}

uint64_t sub_261CA564C(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = a2[2];
  *(a1 + 16) = v3;
  sub_261CFD104();
  v4 = v3;
  return a1;
}

uint64_t *_s27SetReminderCompletedRequestVwca(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_261CFD104();

  *(a1 + 8) = *(a2 + 8);
  v4 = a1[2];
  v5 = a2[2];
  a1[2] = v5;
  v6 = v5;

  return a1;
}

uint64_t *_s27SetReminderCompletedRequestVwta(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v4 = a1[2];
  a1[2] = a2[2];

  return a1;
}

uint64_t sub_261CA5774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261CA57DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261CA5844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDEF0, &qword_261D109A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RemotePreferencesEntityRepresentation.timeZoneOverride.getter()
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v1;
}

double sub_261CA5934@<D0>(_OWORD *a2@<X8>)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_261CA598C(uint64_t *a1, void *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t RemotePreferencesEntityRepresentation.timeZoneOverride.setter(uint64_t a1, uint64_t a2)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

void (*RemotePreferencesEntityRepresentation.timeZoneOverride.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27FEDDF80);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F284;
}

uint64_t RemotePreferencesEntityRepresentation.$timeZoneOverride.getter()
{
  sub_261CFCDA4();
  v0 = sub_261CFEBF4();

  return v0;
}

uint64_t RemotePreferencesEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_261CFEA34();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = swift_allocObject();
  v10 = qword_27FEDDF80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA58, &qword_261D0B6D0);
  swift_allocObject();
  *(v9 + v10) = sub_261CFEBB4();
  v11 = *(v3 + 16);
  v11(v8, a1, v2);
  v11(v6, v8, v2);
  v12 = sub_261CFEA94();
  v13 = *(v3 + 8);
  v13(a1, v2);
  v13(v8, v2);
  return v12;
}

uint64_t RemotePreferencesEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_261CFEA34();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = qword_27FEDDF80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA58, &qword_261D0B6D0);
  swift_allocObject();
  *(v1 + v10) = sub_261CFEBB4();
  v11 = *(v4 + 16);
  v11(v9, a1, v3);
  v11(v7, v9, v3);
  v12 = sub_261CFEA94();
  v13 = *(v4 + 8);
  v13(a1, v3);
  v13(v9, v3);
  return v12;
}

uint64_t RemotePreferencesEntityRepresentation.deinit()
{
  v0 = _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();

  return v0;
}

uint64_t RemotePreferencesEntityRepresentation.__deallocating_deinit()
{
  _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemotePreferencesEntityRepresentation(uint64_t a1)
{
  result = qword_27FEDDF88;
  if (!qword_27FEDDF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id static RemindersInCalendarUtilities.defaultStore.getter()
{
  if (qword_280D21E90 != -1)
  {
    swift_once();
  }

  v1 = qword_280D21E98;

  return v1;
}

uint64_t sub_261CA5FC0()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDDF98);
  v1 = __swift_project_value_buffer(v0, qword_27FEDDF98);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261CA61E4()
{
  v20 = v0;

  if (qword_27FED9CD8 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDDF98);
  sub_261CFCDA4();
  sub_261CFCDA4();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = v0[6];
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    sub_261CFCBB4();
    sub_261B7C0F0(v4 + *(v6 + 20), v5);
    sub_261BBE328(v4, type metadata accessor for GroupEntity);
    v9 = AppEntityID.entityIdentifierString.getter();
    v11 = v10;
    sub_261BBE328(v5, type metadata accessor for AppEntityID);
    v12 = sub_261B879C8(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_261AE2000, v2, v3, "[OpenGroupAppIntent] Open Group with target groupID: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26671D560](v8, -1, -1);
    MEMORY[0x26671D560](v7, -1, -1);
  }

  v13 = v0[8];
  v14 = v0[5];
  sub_261CFCBB4();
  sub_261BBF2B0(v14);
  sub_261BBE328(v13, type metadata accessor for GroupEntity);
  v15 = [objc_opt_self() defaultWorkspace];
  if (v15)
  {
    v16 = v15;
    sub_261D00034();
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  sub_261CFC9A4();

  v17 = v0[1];

  return v17();
}

uint64_t sub_261CA64AC(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

double ListBadgeEntity.init(list:)@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_261CFD674();
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_261CFFA44();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v10 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_261CFDD84();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 emoji];
    if (v13)
    {
      v14 = v13;
      v15 = sub_261CFFA74();
      v34 = v16;
      v35 = v15;
      v17 = v16;

      v42 = 0x3A696A6F6D65;
      v43 = 0xE600000000000000;
      MEMORY[0x26671C210](v15, v17);
      v36 = v43;
      v37 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
      sub_261CFF9B4();
      sub_261CFD874();
      v38 = a2;
      v39 = a1;
      v18 = v40;
      v19 = *MEMORY[0x277CC9110];
      v20 = v41[13];
      v20(v7, v19, v40);
      sub_261CFD6C4();
      v21 = sub_261CFCB14();
      v41 = v12;
      v22 = v21;
      sub_261CFF9B4();
      sub_261CFD874();
      v23 = v18;
      a2 = v38;
      v20(v7, v19, v23);
      a1 = v39;
      sub_261CFD6C4();
      v24 = sub_261CFCB14();
      v42 = 0;
      v43 = 0;
      sub_261CFCA14();
      v42 = v35;
      v43 = v34;
      sub_261CFCA14();

      v26 = v36;
      v25 = v37;
      v27 = 0;
LABEL_6:
      *a2 = v25;
      a2[1] = v26;
      a2[2] = v22;
      a2[3] = v24;
      a2[4] = v27;
      __swift_destroy_boxed_opaque_existential_0(a1);
      return result;
    }

    v28 = [v12 emblem];
    if (v28)
    {
      v29 = v28;
      v30 = sub_261CFFA74();
      v32 = v31;
      v42 = 0x3A6D656C626D65;
      v43 = 0xE700000000000000;
      MEMORY[0x26671C210]();
      ListBadgeEntity.init(id:emblem:emoji:)(v42, v43, v30, v32, 0, 0, &v42);

      v25 = v42;
      v26 = v43;
      v22 = v44;
      v24 = v45;
      v27 = v46;
      goto LABEL_6;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  a2[4] = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

id sub_261CA695C()
{
  sub_261CFCA04();
  if (v4)
  {
    v0 = objc_allocWithZone(MEMORY[0x277D44678]);
    v1 = sub_261CFFA54();

    v2 = [v0 initWithEmoji_];
  }

  else
  {
    sub_261CFCA04();
    return 0;
  }

  return v2;
}

uint64_t OpenTagsAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v1 = sub_261CFD184();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x28223BE20](v1);
  v29 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v7 - 8);
  v26 = v25 - v8;
  v9 = sub_261CFD674();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261CFD884();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_261CFFA44();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v25[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAB8, &qword_261D03670);
  sub_261CFF9B4();
  sub_261CFD874();
  v17 = *MEMORY[0x277CC9110];
  v18 = *(v10 + 104);
  v18(v12, v17, v9);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v18(v12, v17, v9);
  v19 = v26;
  sub_261CFD6C4();
  (*(v16 + 56))(v19, 0, 1, v15);
  v34 = 0;
  v20 = sub_261CFF994();
  (*(*(v20 - 8) + 56))(v27, 1, 1, v20);
  v21 = sub_261CFC834();
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  (*(v30 + 104))(v29, *MEMORY[0x277CBA308], v31);
  v22 = sub_261CFCD24();
  v23 = v32;
  *v32 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDFC8, &qword_261D10AF0);
  v33 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v23[1] = result;
  return result;
}

uint64_t sub_261CA7024()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDDFB0);
  __swift_project_value_buffer(v6, qword_27FEDDFB0);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static OpenTagsAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9CE0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDFB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenTagsAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

void (*OpenTagsAppIntent.tags.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA3C4;
}

uint64_t OpenTagsAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  sub_261CFFD24();
  *(v2 + 40) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x2822009F8](sub_261CA76E0, v4, v3);
}

uint64_t sub_261CA76E0()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_261BB52D8;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_261C59708(v4, "OpenTagsAppIntent", 17, 2, v2, v3);
}

uint64_t sub_261CA77B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  sub_261CFFD24();
  v3[12] = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x2822009F8](sub_261CA7850, v5, v4);
}

uint64_t sub_261CA7850()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_261B2912C(0, v1, v2);
  sub_261CFC664();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[7] = v1;
  v0[8] = v2;
  v8 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_261BB5674;
  v6 = v0[9];

  return v8(v6, v0 + 7, v3, v4);
}

uint64_t static OpenTagsAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDFD0, &qword_261D10B18);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDFD8, &qword_261D10B20);
  MEMORY[0x28223BE20](v1);
  sub_261B313B4();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDFE0, &unk_261D10B50);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

unint64_t sub_261CA7B58()
{
  result = qword_27FEDDFE8;
  if (!qword_27FEDDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDFE8);
  }

  return result;
}

unint64_t sub_261CA7BB0()
{
  result = qword_27FEDDFF0;
  if (!qword_27FEDDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDFF0);
  }

  return result;
}

uint64_t sub_261CA7C3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9CE0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDFB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261CA7CE4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDFD0, &qword_261D10B18);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDFD8, &qword_261D10B20);
  MEMORY[0x28223BE20](v3);
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDFE0, &unk_261D10B50);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261CA7E78(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  sub_261CFFD24();
  *(v2 + 40) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x2822009F8](sub_261CA7F18, v4, v3);
}

uint64_t sub_261CA7F18()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_261BB5C4C;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_261C59708(v4, "OpenTagsAppIntent", 17, 2, v2, v3);
}

uint64_t sub_261CA7FF0(uint64_t a1)
{
  v2 = sub_261B313B4();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of OpenTagsAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_261CA8170()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDE008);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE008);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261CA830C()
{
  v1 = *(v0 + 40);

  sub_261CA8400(v1);
  v2 = *(v0 + 40);
  sub_261BA4168();
  sub_261CFC994();
  sub_261BBE328(v2, type metadata accessor for GroupEntity);

  v3 = *(v0 + 8);

  return v3();
}

void sub_261CA8400(uint64_t *a1@<X8>)
{
  v63 = a1;
  v66 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA708, &qword_261D03298);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v59 - v3;
  v5 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GroupEntity(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 16);
  sub_261CFCBB4();
  sub_261B7C0F0(&v11[*(v9 + 28)], v7);
  sub_261BBE328(v11, type metadata accessor for GroupEntity);
  v13 = objc_allocWithZone(MEMORY[0x277D44700]);
  v14 = sub_261CFD814();
  v15 = sub_261CFFA54();
  v16 = [v13 initWithUUID:v14 entityName:v15];

  sub_261BBE328(v7, type metadata accessor for AppEntityID);
  v64 = 0;
  v17 = [v12 fetchListWithObjectID:v16 error:&v64];

  v18 = v64;
  if (!v17)
  {
    v32 = v64;
    sub_261CFD654();

    swift_willThrow();
    return;
  }

  v19 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v20 = v18;
  v21 = [v19 initWithStore_];
  [v21 setSaveIsNoopIfNoChangedKeys_];
  v22 = [v21 updateList_];
  sub_261CFCBB4();
  if (!v65)
  {
    goto LABEL_18;
  }

  v23 = HIBYTE(v65) & 0xF;
  if ((v65 & 0x2000000000000000) == 0)
  {
    v23 = v64 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    sub_261CFD874();
    v24 = sub_261CFD884();
    (*(*(v24 - 8) + 56))(v4, 0, 1, v24);
    sub_261B3BA3C();
    v25 = sub_261D00174();
    v27 = v26;
    sub_261AE6A40(v4, &qword_27FEDA708, &qword_261D03298);

    v28 = [v22 name];
    v29 = sub_261CFFA74();
    v31 = v30;

    if (v29 == v25 && v31 == v27)
    {
    }

    else
    {
      v38 = sub_261D00614();

      if (v38)
      {
      }

      else
      {
        v39 = sub_261CFFA54();

        [v22 setName_];
      }
    }

LABEL_18:
    if (qword_27FED9CE8 != -1)
    {
      swift_once();
    }

    v40 = sub_261CFF7A4();
    __swift_project_value_buffer(v40, qword_27FEDE008);
    v41 = v17;
    v42 = v22;
    v43 = sub_261CFF784();
    v44 = sub_261CFFE84();

    v45 = os_log_type_enabled(v43, v44);
    v61 = v42;
    v62 = v41;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v59 = v47;
      v60 = swift_slowAlloc();
      v64 = v60;
      *v46 = 138543618;
      v48 = [v41 objectID];
      *(v46 + 4) = v48;
      *v47 = v48;
      *(v46 + 12) = 2082;
      v49 = [v42 changedKeys];
      v50 = v21;
      sub_261CFFD64();

      v51 = sub_261CFFD74();
      v53 = v52;

      v54 = sub_261B879C8(v51, v53, &v64);
      v21 = v50;

      *(v46 + 14) = v54;
      _os_log_impl(&dword_261AE2000, v43, v44, "[UpdateGroupIntentPerforming] Update group properties with id: %{public}@, changedKeys: %{public}s", v46, 0x16u);
      v55 = v59;
      sub_261AE6A40(v59, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v55, -1, -1);
      v56 = v60;
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x26671D560](v56, -1, -1);
      MEMORY[0x26671D560](v46, -1, -1);
    }

    v64 = 0;
    if ([v21 saveSynchronouslyWithError_])
    {
      v57 = v64;
      sub_261B857C8(v61, 0, v63);
    }

    else
    {
      v58 = v64;
      sub_261CFD654();

      swift_willThrow();
    }

    return;
  }

  if (qword_27FED9CE8 != -1)
  {
    swift_once();
  }

  v33 = sub_261CFF7A4();
  __swift_project_value_buffer(v33, qword_27FEDE008);
  v34 = sub_261CFF784();
  v35 = sub_261CFFE64();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_261AE2000, v34, v35, "[UpdateGroupIntentPerforming] Update group properties failed with error: Group name cannot be empty.", v36, 2u);
    MEMORY[0x26671D560](v36, -1, -1);
  }

  sub_261B01D70();
  swift_allocError();
  *v37 = 23;
  swift_willThrow();
}

uint64_t sub_261CA8BB0(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = type metadata accessor for GroupEntity(0);
  v5 = swift_task_alloc();
  v6 = *v2;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  v7 = a2[1];
  *(v3 + 48) = *a2;
  *(v3 + 64) = v7;
  sub_261CFFD24();
  *(v3 + 80) = sub_261CFFD14();
  v9 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261CA8C88, v9, v8);
}

uint64_t sub_261CA8C88()
{
  v1 = *(v0 + 32);

  sub_261CA8400(v1);
  v2 = *(v0 + 32);
  sub_261BA4168();
  sub_261CFC994();
  sub_261BBE328(v2, type metadata accessor for GroupEntity);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_261CA8D78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  UpdateSmartListAppIntent.init()(&v13);
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261CFCA04();
  LOBYTE(v13) = v13 & 1;
  sub_261CFCBC4();
  sub_261AE498C(a2, &v13);
  sub_261AE498C(&v13, &v12);
  sub_261CFC674();
  __swift_destroy_boxed_opaque_existential_0(&v13);

  *a3 = v8;
  a3[1] = v9;
  a3[2] = v10;
  return result;
}

uint64_t UpdateSmartListAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  sub_261CFFD24();
  *(v2 + 48) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 56) = v4;
  *(v2 + 64) = v3;

  return MEMORY[0x2822009F8](sub_261CA8F30, v4, v3);
}

uint64_t sub_261CA8F30()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_261C8C82C;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_261C5C3E8(v4, "UpdateSmartListAppIntent", 24, 2, v5, v2, v3);
}

uint64_t static UpdateSmartListAppIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FEDE020 = a1;
  return result;
}

uint64_t sub_261CA9150()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDE028);
  __swift_project_value_buffer(v6, qword_27FEDE028);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateSmartListAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9CF0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE028);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateSmartListAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t sub_261CA96D4(void *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateSmartListAppIntent.target.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t (*UpdateSmartListAppIntent.isHidden.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateSmartListAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v44 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  MEMORY[0x28223BE20](v1 - 8);
  v45 = v31 - v2;
  v3 = sub_261CFD184();
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  MEMORY[0x28223BE20](v3);
  v47 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v43 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v31 - v11;
  v41 = sub_261CFD674();
  v13 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_261CFD884();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_261CFFA44();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = sub_261CFD6A4();
  v37 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE040, &unk_261D10CD8);
  sub_261CFF9B4();
  v31[1] = v18;
  sub_261CFD874();
  v39 = *MEMORY[0x277CC9110];
  v22 = *(v13 + 104);
  v40 = v13 + 104;
  v42 = v22;
  v32 = v15;
  v22(v15);
  sub_261CFD6B4();
  v23 = *(v21 + 56);
  v36 = v21 + 56;
  v38 = v23;
  v23(v12, 1, 1, v20);
  v24 = sub_261CFC834();
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v25 = *(*(v24 - 8) + 56);
  v25(v46, 1, 1, v24);
  v25(v43, 1, 1, v24);
  v33 = *MEMORY[0x277CBA308];
  v26 = *(v49 + 104);
  v49 += 104;
  v34 = v26;
  v26(v47);
  sub_261B8485C();
  v27 = sub_261CFCC34();
  v28 = v44;
  *v44 = v27;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A0, &qword_261D02F70);
  sub_261CFF9B4();
  sub_261CFD874();
  v42(v32, v39, v41);
  sub_261CFD6B4();
  v38(v12, 1, 1, v37);
  LOBYTE(v51) = 2;
  v29 = sub_261CFFCE4();
  (*(*(v29 - 8) + 56))(v45, 1, 1, v29);
  v25(v46, 1, 1, v24);
  v34(v47, v33, v48);
  v28[1] = sub_261CFCD44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF68, &qword_261D08F08);
  v50 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v28[2] = result;
  return result;
}

unint64_t sub_261CAA040()
{
  result = qword_27FEDE048;
  if (!qword_27FEDE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE048);
  }

  return result;
}

uint64_t sub_261CAA118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  sub_261CFFD24();
  v4[14] = sub_261CFFD14();
  v6 = sub_261CFFCF4();
  v4[15] = v6;
  v4[16] = v5;

  return MEMORY[0x2822009F8](sub_261CAA1B4, v6, v5);
}

uint64_t sub_261CAA1B4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_261B29ED0(0, v3, v1, v2);
  sub_261CFC664();
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v0[7] = v3;
  v0[8] = v1;
  v0[9] = v2;
  v9 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_261BC2BF8;
  v7 = v0[10];

  return v9(v7, v0 + 7, v4, v5);
}

uint64_t sub_261CAA328@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9CF0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE028);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261CAA418(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  sub_261CFFD24();
  *(v2 + 48) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 56) = v4;
  *(v2 + 64) = v3;

  return MEMORY[0x2822009F8](sub_261CAA4C0, v4, v3);
}

uint64_t sub_261CAA4C0()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_261C8CF3C;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_261C5C3E8(v4, "UpdateSmartListAppIntent", 24, 2, v5, v2, v3);
}

uint64_t sub_261CAA5A8(uint64_t a1)
{
  v2 = sub_261B317F8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of UpdateSmartListIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_261CAA728()
{
  result = qword_27FEDBFC0;
  if (!qword_27FEDBFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDBF70, &qword_261D08F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBFC0);
  }

  return result;
}

uint64_t GroupEntity.init(id:name:showsCompleted:childrenLists:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v47 = a5;
  v48 = a3;
  v45 = a4;
  v46 = a2;
  v41 = a1;
  v44 = sub_261CFEC94();
  MEMORY[0x28223BE20](v44);
  v43 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD674();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFD884();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_261CFFA44();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1C8, &unk_261D10E30);
  sub_261CACB7C(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v42 = sub_261CFCA64();
  v17 = a6;
  v38 = a6;
  *a6 = v42;
  v18 = type metadata accessor for GroupEntity(0);
  v19 = v18[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v20 = sub_261CFCB24();
  *(v17 + v19) = v20;
  v39 = v18[7];
  v40 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1D0, &unk_261D10E40);
  sub_261CFF9B4();
  sub_261CFD874();
  v21 = *MEMORY[0x277CC9110];
  v22 = *(v9 + 104);
  v37[1] = v9 + 104;
  v22(v11, v21, v8);
  sub_261CFD6B4();
  v23 = MEMORY[0x2667199E0](v16, &type metadata for UpdateGroupNameAppIntent);
  v24 = v38;
  *(v38 + v39) = v23;
  v39 = v18[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1D8, &unk_261D05530);
  sub_261CFF9B4();
  sub_261CFD874();
  v22(v11, v21, v8);
  sub_261CFD6B4();
  v25 = MEMORY[0x2667199F0](v16, &type metadata for UpdateListShowsCompletedAppIntent);
  v26 = v24;
  *(v24 + v39) = v25;
  v27 = v18[9];
  *(v26 + v27) = 0;
  v28 = v41;
  sub_261B7C0F0(v41, v26 + v18[5]);
  type metadata accessor for AnyListEntityLazyImage(0);
  v29 = swift_allocObject();
  v49 = MEMORY[0x277D84F90];
  sub_261CACB7C(&qword_280D22D90, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B01D28(&qword_280D21E20, &unk_27FEDD9E0, &qword_261D014D0, MEMORY[0x277D83970]);
  sub_261D001D4();
  sub_261CFECB4();
  swift_allocObject();
  *(v29 + 128) = sub_261CFECA4();
  v30 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v31 = sub_261CFD074();
  (*(*(v31 - 8) + 56))(v29 + v30, 1, 1, v31);
  *(v29 + 105) = 0u;
  *(v29 + 80) = 0u;
  *(v29 + 96) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 121) = 3;
  *(v26 + v18[10]) = v29;
  LOBYTE(v49) = v45;
  sub_261CFD2E4();
  v33 = v46;
  v32 = v47;
  *(v26 + v27) = v47;
  v49 = v33;
  v50 = v48;
  v34 = v32;
  sub_261CFD104();
  sub_261CFCA14();
  v35 = MEMORY[0x277D84F90];
  if (v34)
  {
    v35 = v34;
  }

  v49 = v35;
  sub_261CFCA14();
  return sub_261B013AC(v28, type metadata accessor for AppEntityID);
}

uint64_t GroupEntity.name.getter()
{
  type metadata accessor for GroupEntity(0);
  sub_261CFCA04();
  return v1;
}

uint64_t GroupEntity.nameUpdatableProperty.getter()
{
  type metadata accessor for GroupEntity(0);

  return sub_261CFCDA4();
}

uint64_t GroupEntity.init(id:name:showsCompleted:lists:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v46 = a5;
  v47 = a3;
  v44 = a4;
  v45 = a2;
  v40 = a1;
  v43 = sub_261CFEC94();
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_261CFD674();
  v8 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261CFD884();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_261CFFA44();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1C8, &unk_261D10E30);
  sub_261CACB7C(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v41 = sub_261CFCA64();
  v16 = a6;
  v36 = a6;
  *a6 = v41;
  v17 = type metadata accessor for GroupEntity(0);
  v18 = v17[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v39 = sub_261CFCB24();
  *(v16 + v18) = v39;
  v37 = v17[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1D0, &unk_261D10E40);
  sub_261CFF9B4();
  sub_261CFD874();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v8 + 104);
  v35 = v8 + 104;
  v21 = v38;
  v20(v10, v19, v38);
  sub_261CFD6B4();
  v22 = MEMORY[0x2667199E0](v15, &type metadata for UpdateGroupNameAppIntent);
  v23 = v36;
  *(v36 + v37) = v22;
  v37 = v17[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1D8, &unk_261D05530);
  sub_261CFF9B4();
  sub_261CFD874();
  v20(v10, v19, v21);
  sub_261CFD6B4();
  v24 = MEMORY[0x2667199F0](v15, &type metadata for UpdateListShowsCompletedAppIntent);
  v25 = v23;
  *(v23 + v37) = v24;
  v26 = v17[9];
  *(v25 + v26) = 0;
  v27 = v40;
  sub_261B7C0F0(v40, v25 + v17[5]);
  type metadata accessor for AnyListEntityLazyImage(0);
  v28 = swift_allocObject();
  v48 = MEMORY[0x277D84F90];
  sub_261CACB7C(&qword_280D22D90, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B01D28(&qword_280D21E20, &unk_27FEDD9E0, &qword_261D014D0, MEMORY[0x277D83970]);
  sub_261D001D4();
  sub_261CFECB4();
  swift_allocObject();
  *(v28 + 128) = sub_261CFECA4();
  v29 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v30 = sub_261CFD074();
  (*(*(v30 - 8) + 56))(v28 + v29, 1, 1, v30);
  *(v28 + 105) = 0u;
  *(v28 + 80) = 0u;
  *(v28 + 96) = 0u;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *(v28 + 121) = 3;
  *(v25 + v17[10]) = v28;
  LOBYTE(v48) = v44;
  sub_261CFD2E4();
  v32 = v45;
  v31 = v46;
  *(v25 + v26) = v46;
  v48 = v32;
  v49 = v47;
  v33 = v31;
  sub_261CFD104();
  sub_261CFCA14();
  v48 = v33;
  sub_261CFCA14();
  return sub_261B013AC(v27, type metadata accessor for AppEntityID);
}

uint64_t type metadata accessor for GroupEntity(uint64_t a1)
{
  result = qword_280D22628;
  if (!qword_280D22628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GroupEntity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GroupEntity(0) + 20);

  return sub_261B7C0F0(v3, a1);
}

uint64_t GroupEntity.id.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GroupEntity(0) + 20);

  return sub_261AF92C8(a1, v3);
}

uint64_t sub_261CAB524(uint64_t *a1)
{
  type metadata accessor for GroupEntity(0);
  sub_261CFD104();
  return sub_261CFCA14();
}

void (*GroupEntity.name.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for GroupEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261AFA3C4;
}

uint64_t GroupEntity.$showsCompleted.getter()
{
  type metadata accessor for GroupEntity(0);

  return sub_261CFCDA4();
}

uint64_t GroupEntity.showsCompleted.getter()
{
  type metadata accessor for GroupEntity(0);
  sub_261CFD2D4();
  return v1;
}

uint64_t (*GroupEntity.showsCompleted.modify(void *a1))(uint64_t a1)
{
  *a1 = *(v1 + *(type metadata accessor for GroupEntity(0) + 32));
  sub_261CFD2D4();
  return sub_261AFA8A8;
}

double GroupEntity.childrenLists.getter()
{
  type metadata accessor for GroupEntity(0);

  sub_261CFD104();
  return result;
}

uint64_t GroupEntity.childrenLists.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupEntity(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_261CAB858()
{
  v25 = sub_261CFF9A4();
  v0 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_261CFFA24();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = v19 - v4;
  v5 = sub_261CFD674();
  v20 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x28223BE20](v11);
  v12 = sub_261CFD234();
  __swift_allocate_value_buffer(v12, qword_27FEDE050);
  v21 = __swift_project_value_buffer(v12, qword_27FEDE050);
  sub_261CFF9B4();
  sub_261CFD874();
  v13 = *MEMORY[0x277CC9110];
  v14 = *(v6 + 104);
  v19[1] = v6 + 104;
  v14(v8, v13, v5);
  sub_261CFD6C4();
  sub_261CFFA14();
  sub_261CFFA04();
  v16 = v24;
  v15 = v25;
  (*(v0 + 104))(v24, *MEMORY[0x277CC9BD8], v25);
  sub_261CFF9C4();
  (*(v0 + 8))(v16, v15);
  sub_261CFFA04();
  sub_261CFFA34();
  sub_261CFD874();
  v14(v8, v13, v20);
  v17 = v26;
  sub_261CFD6C4();
  (*(v22 + 56))(v17, 0, 1, v23);
  return sub_261CFD224();
}

uint64_t static GroupEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE050);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static GroupEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FED9CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE050);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static GroupEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FED9CF8 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFD234();
  __swift_project_value_buffer(v1, qword_27FEDE050);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_261CABF28@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE050);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261CABFE8(uint64_t a1)
{
  if (qword_27FED9CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE050);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t GroupEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v1 - 8);
  v19 = &v17 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v18 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = sub_261CFFA24();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_261CFD6A4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v17 - v14;
  sub_261CFFA14();
  sub_261CFFA04();
  type metadata accessor for GroupEntity(0);
  sub_261CFCA04();
  sub_261CFF9E4();

  sub_261CFFA04();
  sub_261CFD684();
  AnyListEntityLazyImage.displayRepresentationImage.getter();
  (*(v10 + 16))(v13, v15, v9);
  (*(v10 + 56))(v19, 1, 1, v9);
  sub_261BA9C98(v7, v18);
  sub_261CFD0A4();
  sub_261BBB1CC(v7);
  return (*(v10 + 8))(v15, v9);
}

double sub_261CAC3A4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 36));
  sub_261CFD104();
  return result;
}

uint64_t sub_261CAC3B4@<X0>(void *a1@<X8>)
{
  if (qword_27FED9D00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FEDE068 + 1);
  *a1 = xmmword_27FEDE068;
  a1[1] = v2;
  sub_261CFCDA4();
  return sub_261CFCDA4();
}

uint64_t static GroupEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FED9D00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FEDE068 + 1);
  *a1 = xmmword_27FEDE068;
  a1[1] = v2;
  sub_261CFCDA4();
  return sub_261CFCDA4();
}

uint64_t sub_261CAC4DC(uint64_t a1)
{
  v2 = sub_261CACB7C(&qword_280D22670, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_261CAC55C(uint64_t a1)
{
  v2 = sub_261CACB7C(&qword_280D22648, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_261CAC5D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB5F0, &qword_261D06CF0);
  swift_getKeyPath();
  *&xmmword_27FEDE068 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB5F8, &qword_261D06D20);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *(&xmmword_27FEDE068 + 1) = result;
  return result;
}

uint64_t static GroupEntity.defaultQuery.setter(__int128 *a1)
{
  v2 = *a1;
  if (qword_27FED9D00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27FEDE068 = v2;
}

uint64_t (*static GroupEntity.defaultQuery.modify(uint64_t a1))(void)
{
  if (qword_27FED9D00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_261CAC7F8()
{
  result = qword_27FEDE080;
  if (!qword_27FEDE080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDC660, &qword_261D0A860);
    sub_261CACB7C(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE080);
  }

  return result;
}

uint64_t sub_261CACB7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *initializeBufferWithCopyOfBuffer for GroupEntity(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v7 = a1;
    v8 = a3[5];
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = *(a2 + v8 + 8);
    *v9 = *(a2 + v8);
    *(v9 + 1) = v11;
    v12 = type metadata accessor for AppEntityID(0);
    v13 = *(v12 + 20);
    v14 = sub_261CFD844();
    v25 = *(*(v14 - 8) + 16);
    sub_261CFCDA4();
    sub_261CFD104();
    v25(&v9[v13], &v10[v13], v14);
    v15 = *(v12 + 24);
    v16 = &v9[v15];
    v17 = &v10[v15];
    v18 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1, v18))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v16, v17, *(*(v20 - 8) + 64));
    }

    else
    {
      v21 = sub_261CFD4E4();
      (*(*(v21 - 8) + 16))(v16, v17, v21);
      v16[*(v18 + 20)] = v17[*(v18 + 20)];
      (*(v19 + 56))(v16, 0, 1, v18);
    }

    v22 = a3[7];
    *(v7 + a3[6]) = *(a2 + a3[6]);
    *(v7 + v22) = *(a2 + v22);
    v23 = a3[9];
    *(v7 + a3[8]) = *(a2 + a3[8]);
    *(v7 + v23) = *(a2 + v23);
    *(v7 + a3[10]) = *(a2 + a3[10]);
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFD104();
  }

  sub_261CFCDA4();
  return v7;
}

uint64_t destroy for GroupEntity(void *a1, int *a2)
{

  v4 = a1 + a2[5];

  v5 = type metadata accessor for AppEntityID(0);
  v6 = *(v5 + 20);
  v7 = sub_261CFD844();
  (*(*(v7 - 8) + 8))(&v4[v6], v7);
  v8 = *(v5 + 24);
  v9 = type metadata accessor for RecurrentInstanceSpecifier(0);
  if (!(*(*(v9 - 8) + 48))(&v4[v8], 1, v9))
  {
    v10 = sub_261CFD4E4();
    (*(*(v10 - 8) + 8))(&v4[v8], v10);
  }
}

uint64_t *initializeWithCopy for GroupEntity(uint64_t *a1, uint64_t *a2, int *a3)
{
  *a1 = *a2;
  v4 = a3[5];
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = *(a2 + v4 + 8);
  *v5 = *(a2 + v4);
  *(v5 + 1) = v7;
  v8 = type metadata accessor for AppEntityID(0);
  v9 = *(v8 + 20);
  v10 = sub_261CFD844();
  v11 = *(*(v10 - 8) + 16);
  sub_261CFCDA4();
  sub_261CFD104();
  v11(&v5[v9], &v6[v9], v10);
  v12 = *(v8 + 24);
  v13 = &v5[v12];
  v14 = &v6[v12];
  v15 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v13, v14, *(*(v17 - 8) + 64));
  }

  else
  {
    v18 = sub_261CFD4E4();
    (*(*(v18 - 8) + 16))(v13, v14, v18);
    v13[*(v15 + 20)] = v14[*(v15 + 20)];
    (*(v16 + 56))(v13, 0, 1, v15);
  }

  v19 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v19) = *(a2 + v19);
  v20 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v20) = *(a2 + v20);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for GroupEntity(uint64_t *a1, uint64_t *a2, int *a3)
{
  *a1 = *a2;
  sub_261CFCDA4();

  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  *(v7 + 1) = *(a2 + v6 + 8);
  sub_261CFD104();

  v9 = type metadata accessor for AppEntityID(0);
  v10 = *(v9 + 20);
  v11 = sub_261CFD844();
  (*(*(v11 - 8) + 24))(&v7[v10], &v8[v10], v11);
  v12 = *(v9 + 24);
  v13 = &v7[v12];
  v14 = &v8[v12];
  v15 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  LODWORD(v10) = v17(v13, 1, v15);
  v18 = v17(v14, 1, v15);
  if (!v10)
  {
    if (!v18)
    {
      v22 = sub_261CFD4E4();
      (*(*(v22 - 8) + 24))(v13, v14, v22);
      v13[*(v15 + 20)] = v14[*(v15 + 20)];
      goto LABEL_7;
    }

    sub_261B013AC(v13, type metadata accessor for RecurrentInstanceSpecifier);
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_6:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v13, v14, *(*(v20 - 8) + 64));
    goto LABEL_7;
  }

  v19 = sub_261CFD4E4();
  (*(*(v19 - 8) + 16))(v13, v14, v19);
  v13[*(v15 + 20)] = v14[*(v15 + 20)];
  (*(v16 + 56))(v13, 0, 1, v15);
LABEL_7:
  *(a1 + a3[6]) = *(a2 + a3[6]);
  sub_261CFCDA4();

  *(a1 + a3[7]) = *(a2 + a3[7]);
  sub_261CFCDA4();

  *(a1 + a3[8]) = *(a2 + a3[8]);
  sub_261CFCDA4();

  *(a1 + a3[9]) = *(a2 + a3[9]);
  sub_261CFD104();

  *(a1 + a3[10]) = *(a2 + a3[10]);
  sub_261CFCDA4();

  return a1;
}

void *initializeWithTake for GroupEntity(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  v9 = type metadata accessor for AppEntityID(0);
  v10 = *(v9 + 20);
  v11 = sub_261CFD844();
  (*(*(v11 - 8) + 32))(&v7[v10], &v8[v10], v11);
  v12 = *(v9 + 24);
  v13 = &v7[v12];
  v14 = &v8[v12];
  v15 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v13, v14, *(*(v17 - 8) + 64));
  }

  else
  {
    v18 = sub_261CFD4E4();
    (*(*(v18 - 8) + 32))(v13, v14, v18);
    v13[*(v15 + 20)] = v14[*(v15 + 20)];
    (*(v16 + 56))(v13, 0, 1, v15);
  }

  v19 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v19) = *(a2 + v19);
  v20 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v20) = *(a2 + v20);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t *assignWithTake for GroupEntity(uint64_t *a1, uint64_t *a2, int *a3)
{
  *a1 = *a2;

  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(a2 + v6 + 8);
  *v7 = *(a2 + v6);
  *(v7 + 1) = v9;

  v10 = type metadata accessor for AppEntityID(0);
  v11 = *(v10 + 20);
  v12 = sub_261CFD844();
  (*(*(v12 - 8) + 40))(&v7[v11], &v8[v11], v12);
  v13 = *(v10 + 24);
  v14 = &v7[v13];
  v15 = &v8[v13];
  v16 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  LODWORD(v11) = v18(v14, 1, v16);
  v19 = v18(v15, 1, v16);
  if (!v11)
  {
    if (!v19)
    {
      v23 = sub_261CFD4E4();
      (*(*(v23 - 8) + 40))(v14, v15, v23);
      v14[*(v16 + 20)] = v15[*(v16 + 20)];
      goto LABEL_7;
    }

    sub_261B013AC(v14, type metadata accessor for RecurrentInstanceSpecifier);
    goto LABEL_6;
  }

  if (v19)
  {
LABEL_6:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v14, v15, *(*(v21 - 8) + 64));
    goto LABEL_7;
  }

  v20 = sub_261CFD4E4();
  (*(*(v20 - 8) + 32))(v14, v15, v20);
  v14[*(v16 + 20)] = v15[*(v16 + 20)];
  (*(v17 + 56))(v14, 0, 1, v16);
LABEL_7:
  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  *(a1 + a3[8]) = *(a2 + a3[8]);

  *(a1 + a3[9]) = *(a2 + a3[9]);

  *(a1 + a3[10]) = *(a2 + a3[10]);

  return a1;
}

uint64_t sub_261CAD974(uint64_t a1)
{
  result = type metadata accessor for AppEntityID(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void SmartListType.init(remSmartListType:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_261CFFA74();
  v6 = v5;
  if (v4 == sub_261CFFA74() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_261D00614();

  if (v9)
  {

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v11 = sub_261CFFA74();
  v13 = v12;
  if (v11 == sub_261CFFA74() && v13 == v14)
  {

    v10 = 1;
  }

  else
  {
    v16 = sub_261D00614();

    if (v16)
    {

      v10 = 1;
    }

    else
    {
      v17 = sub_261CFFA74();
      v19 = v18;
      if (v17 == sub_261CFFA74() && v19 == v20)
      {

        v10 = 2;
      }

      else
      {
        v21 = sub_261D00614();

        if (v21)
        {

          v10 = 2;
        }

        else
        {
          v22 = sub_261CFFA74();
          v24 = v23;
          if (v22 == sub_261CFFA74() && v24 == v25)
          {

            v10 = 3;
          }

          else
          {
            v26 = sub_261D00614();

            if (v26)
            {

              v10 = 3;
            }

            else
            {
              v27 = sub_261CFFA74();
              v29 = v28;
              if (v27 == sub_261CFFA74() && v29 == v30)
              {

                v10 = 4;
              }

              else
              {
                v31 = sub_261D00614();

                if (v31)
                {

                  v10 = 4;
                }

                else
                {
                  v32 = sub_261CFFA74();
                  v34 = v33;
                  if (v32 == sub_261CFFA74() && v34 == v35)
                  {

                    v10 = 5;
                  }

                  else
                  {
                    v36 = sub_261D00614();

                    if (v36)
                    {
                      v10 = 5;
                    }

                    else
                    {
                      v10 = 6;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_9:
  *a2 = v10;
}

uint64_t sub_261CADDC8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_261D004A4();

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE150, &qword_261D11170);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_261B37CA4(a1);
    if (v5)
    {
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

uint64_t sub_261CADE84(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_261D004A4();

    if (v3)
    {
      sub_261CFDD24();
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_261B37CA4(a1);
    if (v5)
    {
      return sub_261CFCDA4();
    }
  }

  return 0;
}

void *sub_261CADF48(void *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = a1;
    v7 = sub_261D004A4();

    if (v7)
    {
      sub_261B05020(0, a3, a4);
      swift_dynamicCast();
      return v14;
    }
  }

  else if (*(a2 + 16))
  {
    v10 = sub_261B37CA4(a1);
    if (v11)
    {
      v12 = *(*(a2 + 56) + 8 * v10);
      v13 = v12;
      return v12;
    }
  }

  return 0;
}

uint64_t sub_261CAE02C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v47 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA598, &qword_261D05740);
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = (v41 - v8);
  v48 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = sub_261D00274();
  }

  else
  {
    v10 = *(a1 + 16);
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v62 = MEMORY[0x277D84F90];
  sub_261B39DFC(0, v10 & ~(v10 >> 63), 0);
  v11 = v62;
  if (v48)
  {
    result = sub_261D00414();
  }

  else
  {
    result = sub_261D001E4();
    v13 = *(a1 + 36);
  }

  v59 = result;
  v60 = v13;
  v61 = v48 != 0;
  if ((v10 & 0x8000000000000000) == 0)
  {
    v41[0] = v1;
    v14 = 0;
    v15 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v15 = a1;
    }

    v41[1] = v15;
    v16 = &unk_279AFB000;
    v43 = v9;
    v44 = a1;
    v42 = v10;
    while (v14 < v10)
    {
      if (__OFADD__(v14, 1))
      {
        goto LABEL_29;
      }

      v51 = v14 + 1;
      v52 = v14;
      v56 = v11;
      v49 = v59;
      v50 = v60;
      v55 = v61;
      sub_261CB66A8(v59, v60, v61, a1);
      v27 = v26;
      *v9 = [v26 objectID];
      v28 = type metadata accessor for RecurrentInstanceSpecifier(0);
      (*(*(v28 - 8) + 56))(v57, 1, 1, v28);
      v54 = [v27 v16[84]];
      v29 = [v27 list];
      v53 = [v29 v16[84]];

      v30 = sub_261CFFDF4();
      v31 = [v27 parentReminder];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 v16[84]];
      }

      else
      {
        v33 = 0;
      }

      v34 = v47;
      v35 = *(v46 + 48);
      v36 = v57;
      sub_261AFB668(v57, v47, &qword_27FEDA108, &unk_261D020C0);
      v9 = v43;
      sub_261C7EDC4(v54, v53, v30, v33, 0, v34, (v43 + v35));
      sub_261AE6A40(v36, &qword_27FEDA108, &unk_261D020C0);

      v11 = v56;
      v62 = v56;
      v38 = *(v56 + 16);
      v37 = *(v56 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_261B39DFC((v37 > 1), v38 + 1, 1);
        v11 = v62;
      }

      *(v11 + 16) = v38 + 1;
      result = sub_261BB4448(v9, v11 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v38, &qword_27FEDA598, &qword_261D05740);
      a1 = v44;
      if (v48)
      {
        if (!v55)
        {
          goto LABEL_31;
        }

        v39 = sub_261D00444();
        v10 = v42;
        if (v39)
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB250, &qword_261D05748);
        v40 = sub_261CFF924();
        sub_261D004D4();
        result = v40(v58, 0);
      }

      else
      {
        v18 = v49;
        v17 = v50;
        v19 = v55;
        sub_261CB6544(v49, v50, v55, v44);
        v21 = v20;
        v23 = v22;
        v25 = v24;
        result = sub_261B91FE4(v18, v17, v19);
        v59 = v21;
        v60 = v23;
        v61 = v25 & 1;
        v10 = v42;
      }

      v16 = &unk_279AFB000;
      v14 = v52 + 1;
      if (v51 == v10)
      {
        sub_261B91FE4(v59, v60, v61);
        return v11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_261CAE55C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDE0A0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE0A0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261CAE6C8()
{
  *(v0 + 56) = *(v0 + 104);
  *(v0 + 72) = *(v0 + 120);
  v1 = sub_261CFE5B4();
  v2 = sub_261CFE494();
  v3 = MEMORY[0x277D45E18];
  *(v0 + 40) = v1;
  *(v0 + 48) = v3;
  *(v0 + 16) = v2;
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_261BF42C4;
  v5 = *(v0 + 88);

  return sub_261CAE7A4(v5, v0 + 56, v0 + 16);
}

uint64_t sub_261CAE7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  *(v4 + 152) = a3;
  *(v4 + 160) = v5;
  *(v4 + 144) = a1;
  *(v4 + 168) = *v5;
  v7 = sub_261CFC9D4();
  *(v4 + 176) = v7;
  *(v4 + 184) = *(v7 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = *(type metadata accessor for ReminderEntity(0) - 8);
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  v8 = sub_261CFD754();
  *(v4 + 224) = v8;
  *(v4 + 232) = *(v8 - 8);
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA238, &qword_261D02480);
  *(v4 + 256) = v9;
  *(v4 + 264) = *(v9 - 8);
  *(v4 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  v10 = type metadata accessor for ListEntity(0);
  *(v4 + 296) = v10;
  *(v4 + 304) = *(v10 - 8);
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = type metadata accessor for AppEntityID(0);
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = type metadata accessor for SectionEntityID(0);
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  v11 = type metadata accessor for SectionEntity(0);
  *(v4 + 360) = v11;
  *(v4 + 368) = *(v11 - 8);
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 416) = *a2;
  *(v4 + 432) = *(a2 + 16);

  return MEMORY[0x2822009F8](sub_261CAEBD0, 0, 0);
}

uint64_t sub_261CAEBD0()
{
  v78 = v0;
  v77[5] = *MEMORY[0x277D85DE8];
  sub_261CFCBB4();
  sub_261B9DCEC(*(v0 + 104));
  v2 = v1;
  v4 = v3;

  v5 = sub_261B9BAD4(3, v2, v4);
  *(v0 + 440) = v5;
  v71 = v5;
  v9 = *(v0 + 400);
  v8 = *(v0 + 408);
  v11 = *(v0 + 360);
  v10 = *(v0 + 368);

  sub_261CFCBB4();
  v12 = *(v0 + 592);
  sub_261CFCBB4();
  sub_261AFB668(v8, v9, &qword_27FEDA1E0, &unk_261D02300);
  v13 = *(v10 + 48);
  *(v0 + 448) = v13;
  *(v0 + 456) = (v10 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v14 = v13(v9, 1, v11);
  if (v14 == 1)
  {
    sub_261AE6A40(*(v0 + 400), &qword_27FEDA1E0, &unk_261D02300);
    *(v0 + 593) = v12;
    v15 = swift_task_alloc();
    *(v0 + 568) = v15;
    *v15 = v0;
    v15[1] = sub_261CB074C;
    v16 = *(v0 + 152);

    return sub_261CB44B0(v71, (v0 + 593), v16);
  }

  v17 = *(v0 + 384);
  v19 = *(v0 + 352);
  v18 = *(v0 + 360);
  sub_261CB6838(*(v0 + 400), v17, type metadata accessor for SectionEntity);
  v20 = *(v18 + 24);
  sub_261CB6900(v17 + v20, v19, type metadata accessor for SectionEntityID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_261CB68A0(v19, type metadata accessor for SectionEntityID);
  if (EnumCaseMultiPayload == 1)
  {
    v22 = *(v0 + 280);
    v23 = *(v0 + 160);
    v24 = *(v0 + 168);
    v72[0] = v12;
    sub_261CFD104();
    sub_261CFCA04();
    v77[3] = v24;
    v77[4] = &protocol witness table for REMStoreIntentPerformer;
    v77[0] = v23;
    sub_261CFCDA4();
    sub_261BC2DE4(v71, v72, v22, 1, v77, v73);
    v25 = v73[0];
    v26 = v73[1];
    *(v0 + 520) = v73[0];
    *(v0 + 528) = v26;
    v27 = v74;
    *(v0 + 536) = v74;
    v28 = v75;
    v29 = v76;
    *(v0 + 544) = v76;
    *(v0 + 16) = v25;
    *(v0 + 24) = v26;
    *(v0 + 32) = v27;
    *(v0 + 40) = v28;
    *(v0 + 48) = v29;
    v30 = swift_task_alloc();
    *(v0 + 552) = v30;
    *v30 = v0;
    v30[1] = sub_261CB0128;
    v31 = *(v0 + 272);
    v32 = *(v0 + 152);

    return sub_261B88E6C(v31, v0 + 16, v32);
  }

  v33 = *(v0 + 344);
  v34 = *(v0 + 328);
  v35 = *(v0 + 304);
  v70 = *(v0 + 296);
  v36 = *(v0 + 288);
  sub_261CB6900(v17 + v20, v33, type metadata accessor for SectionEntityID);
  sub_261CB6838(v33, v34, type metadata accessor for AppEntityID);
  v37 = objc_allocWithZone(MEMORY[0x277D44700]);
  v38 = sub_261CFD814();
  v39 = sub_261CFFA54();
  v40 = [v37 initWithUUID:v38 entityName:v39];
  *(v0 + 464) = v40;

  sub_261CB68A0(v34, type metadata accessor for AppEntityID);
  sub_261CFCA04();
  if ((*(v35 + 48))(v36, 1, v70) == 1)
  {
    v41 = *(v0 + 288);

    sub_261AE6A40(v41, &unk_27FEDE0C0, &unk_261D02500);
    if (qword_27FED9D08 != -1)
    {
      swift_once();
    }

    v42 = sub_261CFF7A4();
    __swift_project_value_buffer(v42, qword_27FEDE0A0);
    v43 = sub_261CFF784();
    v44 = sub_261CFFE64();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_261AE2000, v43, v44, "[MoveRemindersToSectionIntentPerforming] Section entity has no parent list.", v45, 2u);
      MEMORY[0x26671D560](v45, -1, -1);
    }

    v46 = *(v0 + 408);
    v47 = *(v0 + 384);

    sub_261B01D70();
    swift_allocError();
    *v48 = 20;
    swift_willThrow();

    sub_261AE6A40(v46, &qword_27FEDA1E0, &unk_261D02300);
    v49 = v47;
    goto LABEL_29;
  }

  v50 = *(v0 + 312);
  v51 = *(v0 + 296);
  v52 = *(v0 + 160);
  sub_261CB6838(*(v0 + 288), v50, type metadata accessor for ListEntity);
  v53 = *(v52 + 16);
  if (*(v50 + *(v51 + 84)))
  {
    *(v0 + 128) = 0;
    v54 = [v53 fetchSmartListSectionWithObjectID:v40 error:v0 + 128];
    *(v0 + 496) = v54;
    v55 = *(v0 + 128);
    if (v54)
    {
      v56 = v54;
      *(v0 + 594) = v12;
      v57 = v55;
      v58 = swift_task_alloc();
      *(v0 + 504) = v58;
      *v58 = v0;
      v58[1] = sub_261CAFB38;
      v59 = *(v0 + 312);
      v60 = *(v0 + 152);

      return sub_261CB2404(v71, v56, v59, (v0 + 594), v60);
    }

LABEL_28:
    v66 = *(v0 + 408);
    v67 = *(v0 + 384);
    v68 = *(v0 + 312);
    v69 = v55;

    sub_261CFD654();

    swift_willThrow();
    sub_261CB68A0(v68, type metadata accessor for ListEntity);
    sub_261AE6A40(v66, &qword_27FEDA1E0, &unk_261D02300);
    v49 = v67;
LABEL_29:
    sub_261CB68A0(v49, type metadata accessor for SectionEntity);

    v6 = *(v0 + 8);

    return v6();
  }

  *(v0 + 136) = 0;
  v61 = [v53 fetchListSectionWithObjectID:v40 error:v0 + 136];
  *(v0 + 472) = v61;
  v55 = *(v0 + 136);
  if (!v61)
  {
    goto LABEL_28;
  }

  v62 = v61;
  *(v0 + 595) = v12;
  v63 = v55;
  v64 = swift_task_alloc();
  *(v0 + 480) = v64;
  *v64 = v0;
  v64[1] = sub_261CAF54C;
  v65 = *(v0 + 152);

  return sub_261CB13F4(v71, v62, (v0 + 595), v65);
}

uint64_t sub_261CAF54C(uint64_t a1)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v3[61] = v1;

  if (v1)
  {

    v4 = sub_261CB0CF0;
  }

  else
  {
    v4 = sub_261CAF6A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261CAF6A4()
{
  v1 = *(v0 + 464);

  v32 = *(v0 + 64);
  v2 = *(v0 + 384);
  sub_261CB68A0(*(v0 + 312), type metadata accessor for ListEntity);
  sub_261CB68A0(v2, type metadata accessor for SectionEntity);
  v3 = *(v0 + 440);
  if (*(v3 + 16))
  {
    v4 = *(v0 + 248);
    v6 = *(v0 + 208);
    v5 = *(v0 + 216);
    v7 = *(*(v0 + 200) + 80);
    sub_261CB6900(v3 + ((v7 + 32) & ~v7), v6, type metadata accessor for ReminderEntity);

    sub_261CB6838(v6, v5, type metadata accessor for ReminderEntity);
    sub_261BBF818(0, v4);
    v8 = type metadata accessor for ReminderEntity;
    v9 = v5;
LABEL_8:
    sub_261CB68A0(v9, v8);
    goto LABEL_9;
  }

  v10 = *(v0 + 448);
  v11 = *(v0 + 408);
  v12 = *(v0 + 392);
  v13 = *(v0 + 360);

  sub_261AFB668(v11, v12, &qword_27FEDA1E0, &unk_261D02300);
  v14 = v10(v12, 1, v13);
  v15 = *(v0 + 392);
  if (v14 != 1)
  {
    v20 = *(v0 + 376);
    v21 = *(v0 + 248);
    sub_261CB6838(v15, v20, type metadata accessor for SectionEntity);
    sub_261BBEA50(0, v21);
    v8 = type metadata accessor for SectionEntity;
    v9 = v20;
    goto LABEL_8;
  }

  sub_261AE6A40(v15, &qword_27FEDA1E0, &unk_261D02300);
  if (qword_27FED9A10 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 248);
  v17 = *(v0 + 224);
  v18 = *(v0 + 232);
  v19 = __swift_project_value_buffer(v17, qword_27FEDB8A8);
  (*(v18 + 16))(v16, v19, v17);
LABEL_9:
  v30 = *(v0 + 408);
  v29 = *(v0 + 248);
  v31 = *(v0 + 240);
  v23 = *(v0 + 224);
  v22 = *(v0 + 232);
  v24 = *(v0 + 184);
  v25 = *(v0 + 192);
  v26 = *(v0 + 176);
  *(v0 + 112) = v32;
  (*(v22 + 16))(v31);
  sub_261CFC9E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261B8E674(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
  sub_261CFC974();
  (*(v24 + 8))(v25, v26);

  (*(v22 + 8))(v29, v23);
  sub_261AE6A40(v30, &qword_27FEDA1E0, &unk_261D02300);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_261CAFB38(uint64_t a1)
{
  v3 = *v2;
  v3[10] = v2;
  v3[11] = a1;
  v3[12] = v1;
  v3[64] = v1;

  if (v1)
  {

    v4 = sub_261CB0EC4;
  }

  else
  {
    v4 = sub_261CAFC90;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261CAFC90()
{
  v1 = *(v0 + 496);

  v32 = *(v0 + 88);
  v2 = *(v0 + 384);
  sub_261CB68A0(*(v0 + 312), type metadata accessor for ListEntity);
  sub_261CB68A0(v2, type metadata accessor for SectionEntity);
  v3 = *(v0 + 440);
  if (*(v3 + 16))
  {
    v4 = *(v0 + 248);
    v6 = *(v0 + 208);
    v5 = *(v0 + 216);
    v7 = *(*(v0 + 200) + 80);
    sub_261CB6900(v3 + ((v7 + 32) & ~v7), v6, type metadata accessor for ReminderEntity);

    sub_261CB6838(v6, v5, type metadata accessor for ReminderEntity);
    sub_261BBF818(0, v4);
    v8 = type metadata accessor for ReminderEntity;
    v9 = v5;
LABEL_8:
    sub_261CB68A0(v9, v8);
    goto LABEL_9;
  }

  v10 = *(v0 + 448);
  v11 = *(v0 + 408);
  v12 = *(v0 + 392);
  v13 = *(v0 + 360);

  sub_261AFB668(v11, v12, &qword_27FEDA1E0, &unk_261D02300);
  v14 = v10(v12, 1, v13);
  v15 = *(v0 + 392);
  if (v14 != 1)
  {
    v20 = *(v0 + 376);
    v21 = *(v0 + 248);
    sub_261CB6838(v15, v20, type metadata accessor for SectionEntity);
    sub_261BBEA50(0, v21);
    v8 = type metadata accessor for SectionEntity;
    v9 = v20;
    goto LABEL_8;
  }

  sub_261AE6A40(v15, &qword_27FEDA1E0, &unk_261D02300);
  if (qword_27FED9A10 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 248);
  v17 = *(v0 + 224);
  v18 = *(v0 + 232);
  v19 = __swift_project_value_buffer(v17, qword_27FEDB8A8);
  (*(v18 + 16))(v16, v19, v17);
LABEL_9:
  v30 = *(v0 + 408);
  v29 = *(v0 + 248);
  v31 = *(v0 + 240);
  v23 = *(v0 + 224);
  v22 = *(v0 + 232);
  v24 = *(v0 + 184);
  v25 = *(v0 + 192);
  v26 = *(v0 + 176);
  *(v0 + 112) = v32;
  (*(v22 + 16))(v31);
  sub_261CFC9E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261B8E674(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
  sub_261CFC974();
  (*(v24 + 8))(v25, v26);

  (*(v22 + 8))(v29, v23);
  sub_261AE6A40(v30, &qword_27FEDA1E0, &unk_261D02300);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_261CB0128()
{
  *(*v1 + 560) = v0;

  if (v0)
  {

    v2 = sub_261CB109C;
  }

  else
  {
    v2 = sub_261CB0278;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261CB0278()
{
  v1 = v0[48];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  sub_261CFD0D4();
  (*(v3 + 8))(v2, v4);
  v5 = v0[15];

  sub_261CB68A0(v1, type metadata accessor for SectionEntity);
  v6 = v0[55];
  if (*(v6 + 16))
  {
    v7 = v0[31];
    v9 = v0[26];
    v8 = v0[27];
    v10 = *(v0[25] + 80);
    sub_261CB6900(v6 + ((v10 + 32) & ~v10), v9, type metadata accessor for ReminderEntity);

    sub_261CB6838(v9, v8, type metadata accessor for ReminderEntity);
    sub_261BBF818(0, v7);
    v11 = type metadata accessor for ReminderEntity;
    v12 = v8;
LABEL_8:
    sub_261CB68A0(v12, v11);
    goto LABEL_9;
  }

  v13 = v0[56];
  v14 = v0[51];
  v15 = v0[49];
  v16 = v0[45];

  sub_261AFB668(v14, v15, &qword_27FEDA1E0, &unk_261D02300);
  v17 = v13(v15, 1, v16);
  v18 = v0[49];
  if (v17 != 1)
  {
    v23 = v0[47];
    v24 = v0[31];
    sub_261CB6838(v18, v23, type metadata accessor for SectionEntity);
    sub_261BBEA50(0, v24);
    v11 = type metadata accessor for SectionEntity;
    v12 = v23;
    goto LABEL_8;
  }

  sub_261AE6A40(v18, &qword_27FEDA1E0, &unk_261D02300);
  if (qword_27FED9A10 != -1)
  {
    swift_once();
  }

  v19 = v0[31];
  v20 = v0[28];
  v21 = v0[29];
  v22 = __swift_project_value_buffer(v20, qword_27FEDB8A8);
  (*(v21 + 16))(v19, v22, v20);
LABEL_9:
  if (v5)
  {
    v25 = v5;
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v34 = v0[51];
  v33 = v0[31];
  v35 = v0[30];
  v27 = v0[28];
  v26 = v0[29];
  v29 = v0[23];
  v28 = v0[24];
  v30 = v0[22];
  v0[14] = v25;
  (*(v26 + 16))(v35);
  sub_261CFC9E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261B8E674(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
  sub_261CFC974();
  (*(v29 + 8))(v28, v30);

  (*(v26 + 8))(v33, v27);
  sub_261AE6A40(v34, &qword_27FEDA1E0, &unk_261D02300);

  v31 = v0[1];

  return v31();
}

uint64_t sub_261CB074C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 576) = v1;

  if (v1)
  {

    v5 = sub_261CB1270;
  }

  else
  {
    *(v4 + 584) = a1;
    v5 = sub_261CB08A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261CB08A4()
{
  v30 = v0[73];
  v1 = v0[55];
  if (*(v1 + 16))
  {
    v2 = v0[31];
    v4 = v0[26];
    v3 = v0[27];
    v5 = *(v0[25] + 80);
    sub_261CB6900(v1 + ((v5 + 32) & ~v5), v4, type metadata accessor for ReminderEntity);

    sub_261CB6838(v4, v3, type metadata accessor for ReminderEntity);
    sub_261BBF818(0, v2);
    v6 = type metadata accessor for ReminderEntity;
    v7 = v3;
LABEL_8:
    sub_261CB68A0(v7, v6);
    goto LABEL_9;
  }

  v8 = v0[56];
  v9 = v0[51];
  v10 = v0[49];
  v11 = v0[45];

  sub_261AFB668(v9, v10, &qword_27FEDA1E0, &unk_261D02300);
  v12 = v8(v10, 1, v11);
  v13 = v0[49];
  if (v12 != 1)
  {
    v18 = v0[47];
    v19 = v0[31];
    sub_261CB6838(v13, v18, type metadata accessor for SectionEntity);
    sub_261BBEA50(0, v19);
    v6 = type metadata accessor for SectionEntity;
    v7 = v18;
    goto LABEL_8;
  }

  sub_261AE6A40(v13, &qword_27FEDA1E0, &unk_261D02300);
  if (qword_27FED9A10 != -1)
  {
    swift_once();
  }

  v14 = v0[31];
  v15 = v0[28];
  v16 = v0[29];
  v17 = __swift_project_value_buffer(v15, qword_27FEDB8A8);
  (*(v16 + 16))(v14, v17, v15);
LABEL_9:
  v28 = v0[51];
  v27 = v0[31];
  v29 = v0[30];
  v21 = v0[28];
  v20 = v0[29];
  v22 = v0[23];
  v23 = v0[24];
  v24 = v0[22];
  v0[14] = v30;
  (*(v20 + 16))(v29);
  sub_261CFC9E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261B8E674(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
  sub_261CFC974();
  (*(v22 + 8))(v23, v24);

  (*(v20 + 8))(v27, v21);
  sub_261AE6A40(v28, &qword_27FEDA1E0, &unk_261D02300);

  v25 = v0[1];

  return v25();
}

uint64_t sub_261CB0CF0()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 408);
  v3 = *(v0 + 384);
  v4 = *(v0 + 312);

  sub_261CB68A0(v4, type metadata accessor for ListEntity);
  sub_261AE6A40(v2, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CB68A0(v3, type metadata accessor for SectionEntity);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_261CB0EC4()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 408);
  v3 = *(v0 + 384);
  v4 = *(v0 + 312);

  sub_261CB68A0(v4, type metadata accessor for ListEntity);
  sub_261AE6A40(v2, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CB68A0(v3, type metadata accessor for SectionEntity);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_261CB109C()
{
  v1 = v0[48];
  sub_261AE6A40(v0[51], &qword_27FEDA1E0, &unk_261D02300);
  sub_261CB68A0(v1, type metadata accessor for SectionEntity);

  v2 = v0[1];

  return v2();
}

uint64_t sub_261CB1270()
{
  sub_261AE6A40(*(v0 + 408), &qword_27FEDA1E0, &unk_261D02300);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261CB13F4(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = v4;
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0F0, &qword_261D05718);
  *(v5 + 128) = v7;
  *(v5 + 136) = *(v7 - 8);
  *(v5 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB240, &qword_261D05720);
  *(v5 + 152) = swift_task_alloc();
  v8 = sub_261CFDBE4();
  *(v5 + 160) = v8;
  *(v5 + 168) = *(v8 - 8);
  *(v5 + 176) = swift_task_alloc();
  v9 = type metadata accessor for ReminderEntity(0);
  *(v5 + 184) = v9;
  *(v5 + 192) = *(v9 - 8);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 272) = *a3;

  return MEMORY[0x2822009F8](sub_261CB1610, 0, 0);
}

uint64_t sub_261CB1610()
{
  v60 = v0;
  v1 = v0;
  v2 = *(v0 + 80);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = *(v1 + 192);
    v59[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      v8 = *(v1 + 208);
      sub_261CB6900(v6, v8, type metadata accessor for ReminderEntity);
      type metadata accessor for AppEntityID(0);
      v9 = objc_allocWithZone(MEMORY[0x277D44700]);
      v10 = sub_261CFD814();
      v11 = sub_261CFFA54();
      [v9 initWithUUID:v10 entityName:v11];

      sub_261CB68A0(v8, type metadata accessor for ReminderEntity);
      sub_261D00374();
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      v6 += v7;
      --v3;
    }

    while (v3);
    v4 = v59[0];
  }

  *(v1 + 56) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE100, &qword_261D05750);
  sub_261BF8D24();
  sub_261B3B918();
  v12 = sub_261CFFC34();

  if (qword_27FED9D08 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v13 = v1;
    v14 = *(v1 + 88);
    v15 = sub_261CFF7A4();
    __swift_project_value_buffer(v15, qword_27FEDE0A0);
    sub_261CFD104();
    v16 = v14;
    v17 = sub_261CFF784();
    v18 = sub_261CFFE84();

    v58 = v12;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v1 + 272);
      v20 = *(v1 + 88);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v59[0] = v23;
      *v21 = 136446722;
      v24 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v25 = MEMORY[0x26671C340](v12, v24);
      v27 = sub_261B879C8(v25, v26, v59);

      *(v21 + 4) = v27;
      v12 = v58;
      *(v21 + 12) = 2114;
      v28 = [v20 objectID];
      *(v21 + 14) = v28;
      *v22 = v28;
      *(v21 + 22) = 2082;
      if (v19)
      {
        v29 = 0x6D6F74746F62;
      }

      else
      {
        v29 = 7368564;
      }

      if (v19)
      {
        v30 = 0xE600000000000000;
      }

      else
      {
        v30 = 0xE300000000000000;
      }

      v31 = sub_261B879C8(v29, v30, v59);

      *(v21 + 24) = v31;
      _os_log_impl(&dword_261AE2000, v17, v18, "[MoveRemindersToSectionAppIntent] Move reminders to list section {reminderIDs: %{public}s, targetSection: %{public}@, insertPosition: %{public}s", v21, 0x20u);
      sub_261AE6A40(v22, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v22, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v23, -1, -1);
      MEMORY[0x26671D560](v21, -1, -1);
    }

    v32 = v13;
    v57 = sub_261CFC0B8(v12);
    v33 = MEMORY[0x277D84F90];
    v59[0] = MEMORY[0x277D84F90];
    v1 = v12 & 0xFFFFFFFFFFFFFF8;
    v34 = v12 >> 62 ? sub_261D00274() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13[27] = v33;
    v35 = v57;
    if (!v34)
    {
      break;
    }

    v36 = 0;
    v37 = v12 & 0xC000000000000001;
    while (1)
    {
      if (v37)
      {
        v38 = MEMORY[0x26671CA10](v36, v12);
      }

      else
      {
        if (v36 >= *(v1 + 16))
        {
          goto LABEL_41;
        }

        v38 = *(v12 + 8 * v36 + 32);
      }

      v12 = v38;
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if ((v57 & 0xC000000000000001) != 0)
      {
        v40 = sub_261D004A4();
        if (!v40)
        {
          goto LABEL_18;
        }

        v13[9] = v40;
        sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
        swift_dynamicCast();
        v41 = v13[8];

        if (!v41)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (!*(v35 + 16) || (v42 = sub_261B37CA4(v38), v35 = v57, (v43 & 1) == 0))
        {
LABEL_18:

LABEL_19:
          v12 = v58;
          if (v39 == v34)
          {
            goto LABEL_37;
          }

          goto LABEL_20;
        }

        v44 = *(*(v57 + 56) + 8 * v42);

        if (!v44)
        {
          goto LABEL_19;
        }
      }

      MEMORY[0x26671C310]();
      v12 = v58;
      if (*((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_261CFFC84();
        v12 = v58;
      }

      sub_261CFFCB4();
      v13[27] = v59[0];
      v35 = v57;
      if (v39 == v34)
      {
        goto LABEL_37;
      }

LABEL_20:
      ++v36;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

LABEL_37:
  v46 = v13[21];
  v45 = v13[22];
  v48 = v13[19];
  v47 = v13[20];
  v50 = v13[12];
  v49 = v13[13];

  v51 = *(v49 + 16);
  v32[28] = v51;
  (*(v46 + 104))(v45, *MEMORY[0x277D45C20], v47);
  sub_261AE498C(v50, (v32 + 2));
  v52 = sub_261CFE474();
  (*(*(v52 - 8) + 56))(v48, 1, 1, v52);
  v32[29] = sub_261CFFD24();
  v53 = v51;
  v32[30] = sub_261CFFD14();
  v55 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261CB1D5C, v55, v54);
}

uint64_t sub_261CB1D5C()
{

  objc_allocWithZone(sub_261CFE424());
  *(v0 + 248) = sub_261CFE414();

  return MEMORY[0x2822009F8](sub_261CB1E08, 0, 0);
}

uint64_t sub_261CB1E08()
{
  if (*(v0 + 272))
  {
    v1 = MEMORY[0x277D45DB0];
  }

  else
  {
    v1 = MEMORY[0x277D45DB8];
  }

  (*(*(v0 + 136) + 104))(*(v0 + 144), *v1, *(v0 + 128));
  *(v0 + 256) = sub_261CFFD14();
  v3 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261CB1ECC, v3, v2);
}

uint64_t sub_261CB1ECC()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  v0[33] = sub_261CFE3F4();

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_261CB1F88, 0, 0);
}

void *sub_261CB1F88()
{
  v1 = v0;
  v2 = *(v0 + 264);
  if ((*(v0 + 272) & 1) == 0)
  {
    v2 = sub_261B48FBC(*(v0 + 264));
  }

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_24:
    v27 = v1[31];

    v6 = MEMORY[0x277D84F90];
LABEL_25:

    v28 = v1[1];

    return v28(v6);
  }

LABEL_23:
  v3 = sub_261D00274();
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_5:
  v37 = MEMORY[0x277D84F90];
  result = sub_261B39DB8(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v31 = v1[24];
    v32 = v3;
    v33 = v2;
    v34 = v2 & 0xC000000000000001;
    v6 = v37;
    v29 = v2 & 0xFFFFFFFFFFFFFF8;
    v30 = v1;
    v7 = &unk_279AFB000;
    while (1)
    {
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (v34)
      {
        v8 = MEMORY[0x26671CA10](v5, v2);
      }

      else
      {
        if (v5 >= *(v29 + 16))
        {
          goto LABEL_22;
        }

        v8 = *(v2 + 8 * v5 + 32);
      }

      v9 = v8;
      v10 = v1[15];
      v11 = type metadata accessor for RecurrentInstanceSpecifier(0);
      (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
      v12 = [v9 listChangeItem];
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = [v12 v7[84]];

      if (!v14)
      {
        break;
      }

      v35 = v1[25];
      v36 = v5 + 1;
      v15 = v7;
      v17 = v1[14];
      v16 = v1[15];
      v18 = [v9 v15 + 3960];
      v19 = [v9 accountCapabilities];
      sub_261AFB668(v16, v17, &qword_27FEDA108, &unk_261D020C0);
      sub_261C7EDC4(v18, v14, v19, 0, 0, v17, v35);

      sub_261AE6A40(v16, &qword_27FEDA108, &unk_261D020C0);
      v21 = *(v37 + 16);
      v20 = *(v37 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_261B39DB8((v20 > 1), v21 + 1, 1);
      }

      v1 = v30;
      v22 = v30[25];
      *(v37 + 16) = v21 + 1;
      sub_261CB6838(v22, v37 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v21, type metadata accessor for ReminderEntity);
      ++v5;
      v2 = v33;
      v7 = &unk_279AFB000;
      if (v36 == v32)
      {

        goto LABEL_25;
      }
    }

    v23 = v1[31];
    v24 = v1[15];

    sub_261B01D70();
    swift_allocError();
    *v25 = 11;
    swift_willThrow();

    sub_261AE6A40(v24, &qword_27FEDA108, &unk_261D020C0);

    v26 = v1[1];

    return v26();
  }

  return result;
}

uint64_t sub_261CB2404(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v7 = v5;
  *(v6 + 152) = a5;
  *(v6 + 160) = v7;
  *(v6 + 136) = a2;
  *(v6 + 144) = a3;
  *(v6 + 128) = a1;
  *(v6 + 168) = *v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  *(v6 + 176) = swift_task_alloc();
  v9 = sub_261CFFF44();
  *(v6 + 184) = v9;
  *(v6 + 192) = *(v9 - 8);
  *(v6 + 200) = swift_task_alloc();
  v10 = sub_261CFF204();
  *(v6 + 208) = v10;
  *(v6 + 216) = *(v10 - 8);
  *(v6 + 224) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0F0, &qword_261D05718);
  *(v6 + 232) = v11;
  *(v6 + 240) = *(v11 - 8);
  *(v6 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB240, &qword_261D05720);
  *(v6 + 256) = swift_task_alloc();
  v12 = sub_261CFDBE4();
  *(v6 + 264) = v12;
  *(v6 + 272) = *(v12 - 8);
  *(v6 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB248, &qword_261D05728);
  *(v6 + 288) = swift_task_alloc();
  v13 = sub_261CFE814();
  *(v6 + 296) = v13;
  *(v6 + 304) = *(v13 - 8);
  *(v6 + 312) = swift_task_alloc();
  v14 = type metadata accessor for ReminderEntity(0);
  *(v6 + 320) = v14;
  *(v6 + 328) = *(v14 - 8);
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA238, &qword_261D02480);
  *(v6 + 360) = v15;
  *(v6 + 368) = *(v15 - 8);
  *(v6 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 512) = *a4;

  return MEMORY[0x2822009F8](sub_261CB2838, 0, 0);
}

uint64_t sub_261CB2838()
{
  v22 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 128);
  v20 = *(v0 + 512);
  sub_261CB6900(v4, v1, type metadata accessor for ListEntity);
  v6 = type metadata accessor for ListEntity(0);
  (*(*(v6 - 8) + 56))(v1, 0, 1, v6);
  v21[3] = v3;
  v21[4] = &protocol witness table for REMStoreIntentPerformer;
  v21[0] = v2;
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261BC2DE4(v5, &v20, v1, 0, v21, v16);
  v7 = v16[0];
  v8 = v16[1];
  *(v0 + 392) = v16[0];
  *(v0 + 400) = v8;
  v9 = v17;
  v10 = v18;
  v11 = v19;
  *(v0 + 408) = v17;
  *(v0 + 416) = v11;
  *(v0 + 16) = v7;
  *(v0 + 24) = v8;
  *(v0 + 32) = v9;
  *(v0 + 40) = v10;
  *(v0 + 48) = v11;
  v12 = swift_task_alloc();
  *(v0 + 424) = v12;
  *v12 = v0;
  v12[1] = sub_261CB29C0;
  v13 = *(v0 + 376);
  v14 = *(v0 + 152);

  return sub_261B88E6C(v13, v0 + 16, v14);
}

uint64_t sub_261CB29C0()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_261CB437C;
  }

  else
  {
    v2 = sub_261CB2AD4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261CB2AD4()
{
  v117 = v0;
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  sub_261CFD0D4();
  (*(v2 + 8))(v1, v3);
  v4 = v0[12];
  v0[55] = v4;
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = *(v6 + 16);
  v115 = v0;
  if (v7)
  {
    v8 = v0[41];
    v116[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    v9 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      v11 = v0[44];
      sub_261CB6900(v9, v11, type metadata accessor for ReminderEntity);
      type metadata accessor for AppEntityID(0);
      v12 = objc_allocWithZone(MEMORY[0x277D44700]);
      v13 = sub_261CFD814();
      v14 = sub_261CFFA54();
      v0 = v115;
      [v12 initWithUUID:v13 entityName:v14];

      sub_261CB68A0(v11, type metadata accessor for ReminderEntity);
      sub_261D00374();
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      v9 += v10;
      --v7;
    }

    while (v7);
    v5 = v116[0];
  }

  v0[13] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE100, &qword_261D05750);
  sub_261BF8D24();
  sub_261B3B918();
  v15 = sub_261CFFC34();
  v0[56] = v15;

  if (qword_27FED9D08 == -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    swift_once();
LABEL_9:
    v16 = v0[17];
    v17 = sub_261CFF7A4();
    __swift_project_value_buffer(v17, qword_27FEDE0A0);
    sub_261CFD104();
    v18 = v16;
    v19 = sub_261CFF784();
    v20 = sub_261CFFE84();

    if (os_log_type_enabled(v19, v20))
    {
      v111 = *(v0 + 512);
      v21 = v0[17];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v116[0] = v24;
      *v22 = 136446722;
      v25 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v26 = MEMORY[0x26671C340](v15, v25);
      v28 = sub_261B879C8(v26, v27, v116);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2114;
      v29 = [v21 objectID];
      *(v22 + 14) = v29;
      *v23 = v29;
      *(v22 + 22) = 2082;
      if (v111)
      {
        v30 = 0x6D6F74746F62;
      }

      else
      {
        v30 = 7368564;
      }

      if (v111)
      {
        v31 = 0xE600000000000000;
      }

      else
      {
        v31 = 0xE300000000000000;
      }

      v32 = sub_261B879C8(v30, v31, v116);

      *(v22 + 24) = v32;
      _os_log_impl(&dword_261AE2000, v19, v20, "[MoveRemindersToSectionAppIntent] Move reminders to smart-list section {reminderIDs: %{public}s, targetSection: %{public}@, insertPosition: %{public}s", v22, 0x20u);
      sub_261AE6A40(v23, &unk_27FEDA730, &unk_261D035C0);
      v0 = v115;
      MEMORY[0x26671D560](v23, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v24, -1, -1);
      MEMORY[0x26671D560](v22, -1, -1);
    }

    v33 = v0[54];
    v34 = v0[36];
    v35 = [v0[17] smartList];
    sub_261B8D450(v34);
    if (v33)
    {

      v36 = v0[1];

      return v36();
    }

    v38 = v0[37];
    v39 = v0[38];
    v40 = v0[36];

    if ((*(v39 + 48))(v40, 1, v38) == 1)
    {
      v41 = v0[17];
      sub_261AE6A40(v0[36], &qword_27FEDB248, &qword_261D05728);
      sub_261CFD104();
      v42 = v41;
      v43 = sub_261CFF784();
      v44 = sub_261CFFE64();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = v0[17];
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v116[0] = v48;
        *v46 = 136446466;
        v49 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
        v50 = MEMORY[0x26671C340](v15, v49);
        v52 = sub_261B879C8(v50, v51, v116);

        *(v46 + 4) = v52;
        v0 = v115;
        *(v46 + 12) = 2114;
        v53 = [v45 objectID];
        *(v46 + 14) = v53;
        *v47 = v53;
        _os_log_impl(&dword_261AE2000, v43, v44, "[MoveRemindersToSectionAppIntent] Cannot move reminders to smart list section within list without a paramsForREMManualOrdering {reminderIDs: %{public}s, targetSection: %{public}@", v46, 0x16u);
        sub_261AE6A40(v47, &unk_27FEDA730, &unk_261D035C0);
        MEMORY[0x26671D560](v47, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x26671D560](v48, -1, -1);
        MEMORY[0x26671D560](v46, -1, -1);
      }

      v54 = sub_261CFC0B8(v0[56]);

      v56 = sub_261CAE02C(v54);

      if (*(v56 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE120, &qword_261D05738);
        v57 = sub_261D00544();
      }

      else
      {
        v57 = MEMORY[0x277D84F98];
      }

      v116[0] = v57;
      v79 = sub_261CFD104();
      sub_261CB5FD4(v79, 1, v116);
      v80 = v0[55];

      if (v80)
      {
        v81 = v80;
      }

      else
      {
        v81 = MEMORY[0x277D84F90];
      }

      v114 = v116[0];
      v82 = *(v81 + 16);
      if (v82)
      {
        v83 = v0[41];
        if (v0[55])
        {
          v84 = v0[55];
        }

        else
        {
          v84 = MEMORY[0x277D84F90];
        }

        v85 = MEMORY[0x277D84F90];
        type metadata accessor for AppEntityID(0);
        v108 = (*(v83 + 80) + 32) & ~*(v83 + 80);
        v86 = v84 + v108;
        v110 = (v83 + 56);
        v87 = (v83 + 48);
        v113 = v85;
        v88 = *(v83 + 72);
        v109 = v88;
        do
        {
          sub_261CB6900(v86, v0[43], type metadata accessor for ReminderEntity);
          v89 = objc_allocWithZone(MEMORY[0x277D44700]);
          v90 = sub_261CFD814();
          v91 = sub_261CFFA54();
          v92 = [v89 initWithUUID:v90 entityName:v91];

          if (*(v114 + 16) && (v93 = sub_261B37CA4(v92), (v94 & 1) != 0))
          {
            v0 = v115;
            sub_261CB6900(*(v114 + 56) + v93 * v88, v115[22], type metadata accessor for ReminderEntity);
            v95 = 0;
          }

          else
          {
            v95 = 1;
            v0 = v115;
          }

          v96 = v0[43];
          v97 = v0[40];
          v98 = v0[22];

          (*v110)(v98, v95, 1, v97);
          sub_261CB68A0(v96, type metadata accessor for ReminderEntity);
          if ((*v87)(v98, 1, v97) == 1)
          {
            sub_261AE6A40(v0[22], &unk_27FEDE110, &unk_261D035B0);
            v88 = v109;
          }

          else
          {
            sub_261CB6838(v0[22], v0[42], type metadata accessor for ReminderEntity);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v99 = v113;
            }

            else
            {
              v99 = sub_261B41560(0, v113[2] + 1, 1, v113);
            }

            v101 = v99[2];
            v100 = v99[3];
            if (v101 >= v100 >> 1)
            {
              v99 = sub_261B41560((v100 > 1), v101 + 1, 1, v99);
            }

            v102 = v0[42];
            v99[2] = v101 + 1;
            v113 = v99;
            v103 = v99 + v108 + v101 * v109;
            v88 = v109;
            sub_261CB6838(v102, v103, type metadata accessor for ReminderEntity);
          }

          v86 += v88;
          --v82;
        }

        while (v82);

        v104 = v113;
      }

      else
      {
        v104 = MEMORY[0x277D84F90];
      }

      v105 = v0[1];

      return v105(v104);
    }

    (*(v0[38] + 32))(v0[39], v0[36], v0[37]);
    v55 = sub_261CFC0B8(v15);
    v0[57] = 0;
    v112 = v55;
    v58 = MEMORY[0x277D84F90];
    v116[0] = MEMORY[0x277D84F90];
    if (v15 >> 62)
    {
      v106 = MEMORY[0x277D84F90];
      v107 = sub_261D00274();
      v58 = v106;
      v59 = v107;
    }

    else
    {
      v59 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0[58] = v58;
    v0 = v112;
    if (!v59)
    {
      break;
    }

    v60 = 0;
    while ((v15 & 0xC000000000000001) != 0)
    {
      v61 = MEMORY[0x26671CA10](v60, v15);
LABEL_34:
      v62 = v61;
      if (__OFADD__(v60, 1))
      {
        __break(1u);
        goto LABEL_80;
      }

      if ((v112 & 0xC000000000000001) != 0)
      {
        v63 = sub_261D004A4();
        if (!v63)
        {
          goto LABEL_45;
        }

        v115[15] = v63;
        sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
        swift_dynamicCast();
        v64 = v115[14];

        if (v64)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (!v0[2] || (v65 = sub_261B37CA4(v61), (v66 & 1) == 0))
        {
LABEL_45:

          goto LABEL_46;
        }

        v67 = *(v0[7] + 8 * v65);

        if (v67)
        {
LABEL_42:
          MEMORY[0x26671C310]();
          if (*((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_261CFFC84();
            v0 = v112;
          }

          sub_261CFFCB4();
          v115[58] = v116[0];
        }
      }

LABEL_46:
      if (v60 + 1 == v59)
      {
        goto LABEL_49;
      }

      ++v60;
    }

    if (v60 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v61 = *(v15 + 8 * v60 + 32);
      goto LABEL_34;
    }

LABEL_80:
    __break(1u);
  }

LABEL_49:
  v69 = v115[34];
  v68 = v115[35];
  v71 = v115[32];
  v70 = v115[33];
  v72 = v115[19];
  v73 = v115[20];

  v74 = *(v73 + 16);
  v115[59] = v74;
  (*(v69 + 104))(v68, *MEMORY[0x277D45C20], v70);
  sub_261AE498C(v72, (v115 + 7));
  v75 = sub_261CFE474();
  (*(*(v75 - 8) + 56))(v71, 1, 1, v75);
  v115[60] = sub_261CFFD24();
  v76 = v74;
  v115[61] = sub_261CFFD14();
  v78 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261CB3A30, v78, v77);
}

uint64_t sub_261CB3A30()
{

  objc_allocWithZone(sub_261CFE424());
  *(v0 + 496) = sub_261CFE414();

  return MEMORY[0x2822009F8](sub_261CB3ADC, 0, 0);
}

uint64_t sub_261CB3ADC()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 136);
  if (*(v0 + 512))
  {
    v5 = MEMORY[0x277D45DB0];
  }

  else
  {
    v5 = MEMORY[0x277D45DB8];
  }

  (*(*(v0 + 240) + 104))(*(v0 + 248), *v5, *(v0 + 232));
  v6 = [v4 smartList];
  v7 = [v6 sortingStyle];

  sub_261CFFEA4();
  (*(v2 + 104))(v1, *MEMORY[0x277D45EC8], v3);
  *(v0 + 504) = sub_261CFFD14();
  v9 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261CB3C30, v9, v8);
}

uint64_t sub_261CB3C30()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v10 = v0[29];
  v4 = v0[27];
  v9 = v0[26];
  v5 = v0[24];
  v6 = v0[25];
  v8 = v0[23];

  sub_261CFE3E4();

  (*(v5 + 8))(v6, v8);
  (*(v4 + 8))(v3, v9);
  (*(v2 + 8))(v1, v10);

  return MEMORY[0x2822009F8](sub_261CB3D58, 0, 0);
}

uint64_t sub_261CB3D58()
{
  v41 = v0;
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 456);
  v5 = sub_261CFC0B8(*(v0 + 448));
  if (v4)
  {

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {

    v8 = sub_261CAE02C(v5);

    if (*(v8 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE120, &qword_261D05738);
      v9 = sub_261D00544();
    }

    else
    {
      v9 = MEMORY[0x277D84F98];
    }

    v40 = v9;
    v10 = sub_261CFD104();
    sub_261CB5FD4(v10, 1, &v40);
    v11 = *(v0 + 440);

    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v14 = v40;
    v15 = *(v13 + 16);
    v38 = v40;
    if (v15)
    {
      v16 = *(v0 + 328);
      v17 = MEMORY[0x277D84F90];
      if (*(v0 + 440))
      {
        v12 = *(v0 + 440);
      }

      type metadata accessor for AppEntityID(0);
      v35 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v18 = v12 + v35;
      v37 = (v16 + 56);
      v19 = *(v16 + 72);
      v36 = (v16 + 48);
      v39 = v17;
      do
      {
        sub_261CB6900(v18, *(v0 + 344), type metadata accessor for ReminderEntity);
        v20 = objc_allocWithZone(MEMORY[0x277D44700]);
        v21 = sub_261CFD814();
        v22 = sub_261CFFA54();
        v23 = [v20 initWithUUID:v21 entityName:v22];

        if (*(v14 + 16) && (v24 = sub_261B37CA4(v23), (v25 & 1) != 0))
        {
          sub_261CB6900(*(v14 + 56) + v24 * v19, *(v0 + 176), type metadata accessor for ReminderEntity);
          v26 = 0;
        }

        else
        {
          v26 = 1;
        }

        v27 = *(v0 + 344);
        v28 = *(v0 + 320);
        v29 = *(v0 + 176);

        (*v37)(v29, v26, 1, v28);
        sub_261CB68A0(v27, type metadata accessor for ReminderEntity);
        if ((*v36)(v29, 1, v28) == 1)
        {
          sub_261AE6A40(*(v0 + 176), &unk_27FEDE110, &unk_261D035B0);
        }

        else
        {
          sub_261CB6838(*(v0 + 176), *(v0 + 336), type metadata accessor for ReminderEntity);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v30 = v39;
          }

          else
          {
            v30 = sub_261B41560(0, v39[2] + 1, 1, v39);
          }

          v32 = v30[2];
          v31 = v30[3];
          if (v32 >= v31 >> 1)
          {
            v30 = sub_261B41560((v31 > 1), v32 + 1, 1, v30);
          }

          v33 = *(v0 + 336);
          v30[2] = v32 + 1;
          v39 = v30;
          sub_261CB6838(v33, v30 + v35 + v32 * v19, type metadata accessor for ReminderEntity);
        }

        v18 += v19;
        --v15;
        v14 = v38;
      }

      while (v15);

      v12 = v39;
    }

    else
    {
    }

    v34 = *(v0 + 8);

    return v34(v12);
  }
}

uint64_t sub_261CB437C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261CB44B0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = v3;
  *(v4 + 160) = a3;
  *(v4 + 168) = v5;
  *(v4 + 152) = a1;
  *(v4 + 176) = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  *(v4 + 184) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA598, &qword_261D05740);
  *(v4 + 192) = v7;
  *(v4 + 200) = *(v7 - 8);
  *(v4 + 208) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA238, &qword_261D02480);
  *(v4 + 216) = v8;
  *(v4 + 224) = *(v8 - 8);
  *(v4 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = type metadata accessor for AppEntityID(0);
  *(v4 + 256) = swift_task_alloc();
  v9 = type metadata accessor for ListEntity(0);
  *(v4 + 264) = v9;
  *(v4 + 272) = *(v9 - 8);
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  v10 = type metadata accessor for ReminderEntity(0);
  *(v4 + 304) = v10;
  *(v4 + 312) = *(v10 - 8);
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE140, &qword_261D03188);
  *(v4 + 344) = v11;
  *(v4 + 352) = *(v11 - 8);
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 472) = *a2;

  return MEMORY[0x2822009F8](sub_261CB480C, 0, 0);
}

uint64_t sub_261CB480C()
{
  v109 = v0;
  v1 = v0;
  v2 = *(v0 + 152);
  v3 = *(v2 + 16);
  *(v1 + 368) = v3;
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v102 = *(v1 + 352);
    v5 = *(v1 + 312);
    v96 = *(v1 + 264);
    *v108 = MEMORY[0x277D84F90];
    sub_261B39E3C(0, v3, 0);
    v6 = *v108;
    v7 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v94 = v1;
    v95 = *(v5 + 72);
    do
    {
      v105 = v6;
      v8 = *(v1 + 360);
      v9 = *(v1 + 336);
      v10 = *(v1 + 296);
      v11 = *(v1 + 256);
      sub_261CB6900(v7, v9, type metadata accessor for ReminderEntity);
      sub_261CFCA04();
      sub_261CB6900(v10 + *(v96 + 20), v11, type metadata accessor for AppEntityID);
      sub_261CB68A0(v10, type metadata accessor for ListEntity);
      v12 = objc_allocWithZone(MEMORY[0x277D44700]);
      v13 = sub_261CFD814();
      v14 = sub_261CFFA54();
      v15 = [v12 initWithUUID:v13 entityName:v14];

      v6 = v105;
      sub_261CB68A0(v11, type metadata accessor for AppEntityID);
      *v8 = v15;
      sub_261CFCA04();
      sub_261CB68A0(v9, type metadata accessor for ReminderEntity);
      *v108 = v105;
      v17 = *(v105 + 16);
      v16 = *(v105 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_261B39E3C((v16 > 1), v17 + 1, 1);
        v6 = *v108;
      }

      v1 = v94;
      v18 = *(v94 + 360);
      *(v6 + 16) = v17 + 1;
      sub_261BB4448(v18, v6 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v17, &unk_27FEDE140, &qword_261D03188);
      v7 += v95;
      --v3;
    }

    while (v3);
    v4 = MEMORY[0x277D84F90];
    if (*(v6 + 16))
    {
      goto LABEL_7;
    }

LABEL_9:
    v19 = MEMORY[0x277D84F98];
    goto LABEL_10;
  }

  v6 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDF08, &qword_261D10A28);
  v19 = sub_261D00544();
LABEL_10:
  *v108 = v19;
  sub_261CB6968(v6, 1, v108);

  *(v1 + 376) = *v108;
  v20 = sub_261CFD104();
  v21 = sub_261CB6E48(v20);
  *(v1 + 384) = v21;

  v23 = 0;
  *(v1 + 136) = v4;
  v24 = *(v21 + 32);
  *(v1 + 473) = v24;
  v25 = 1 << v24;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & v21[8];
  while (v27)
  {
    v28 = *(v1 + 384);
LABEL_20:
    *(v1 + 392) = v27;
    *(v1 + 400) = v23;
    v30 = *(v1 + 376);
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v32 = (v23 << 9) | (8 * v31);
    v33 = *(*(v28 + 48) + v32);
    *(v1 + 408) = v33;
    v34 = *(*(v28 + 56) + v32);
    *(v1 + 416) = v34;
    if (*(v30 + 16))
    {
      v35 = v33;
      swift_bridgeObjectRetain_n();
      v36 = v35;
      v37 = sub_261B37CA4(v36);
      if (v38)
      {
        v77 = *(v1 + 376);
        v78 = *(v1 + 472);
        v80 = *(v1 + 280);
        v79 = *(v1 + 288);
        v81 = *(v1 + 272);
        v107 = *(v1 + 264);
        v82 = *(v1 + 240);
        v83 = v1;
        v84 = *(v1 + 176);
        v85 = *(v83 + 168);
        sub_261CB6900(*(v77 + 56) + *(v81 + 72) * v37, v80, type metadata accessor for ListEntity);
        sub_261CB6838(v80, v79, type metadata accessor for ListEntity);
        v108[0] = v78;
        sub_261CB6900(v79, v82, type metadata accessor for ListEntity);
        (*(v81 + 56))(v82, 0, 1, v107);
        *(v83 + 80) = v84;
        *(v83 + 88) = &protocol witness table for REMStoreIntentPerformer;
        *(v83 + 56) = v85;
        sub_261CFCDA4();
        sub_261BC2DE4(v34, v108, v82, 1, (v83 + 56), (v83 + 16));
        v86 = *(v83 + 16);
        v87 = *(v83 + 24);
        *(v83 + 424) = v86;
        *(v83 + 432) = v87;
        v88 = *(v83 + 32);
        v89 = *(v83 + 40);
        v90 = *(v83 + 48);
        *(v83 + 440) = v88;
        *(v83 + 448) = v90;
        *(v83 + 96) = v86;
        *(v83 + 104) = v87;
        *(v83 + 112) = v88;
        *(v83 + 120) = v89;
        *(v83 + 128) = v90;
        v91 = swift_task_alloc();
        *(v83 + 456) = v91;
        *v91 = v83;
        v91[1] = sub_261CB539C;
        v92 = *(v83 + 232);
        v93 = *(v83 + 160);

        return sub_261B88E6C(v92, v83 + 96, v93);
      }

      result = swift_bridgeObjectRelease_n();
    }
  }

  while (1)
  {
    v29 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      return result;
    }

    v28 = *(v1 + 384);
    if (v29 >= (((1 << *(v1 + 473)) + 63) >> 6))
    {
      break;
    }

    v27 = *(v28 + 8 * v29 + 64);
    ++v23;
    if (v27)
    {
      v23 = v29;
      goto LABEL_20;
    }
  }

  v39 = *(v1 + 136);
  v40 = *(v39 + 16);
  v41 = MEMORY[0x277D84F90];
  if (v40)
  {
    v42 = *(v1 + 312);
    v100 = *(v1 + 192);
    v103 = *(v1 + 200);
    *v108 = MEMORY[0x277D84F90];
    sub_261B39DFC(0, v40, 0);
    v41 = *v108;
    v43 = v39 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v98 = *(v42 + 72);
    do
    {
      v44 = *(v1 + 208);
      sub_261CB6900(v43, v44 + *(v100 + 48), type metadata accessor for ReminderEntity);
      v45 = objc_allocWithZone(MEMORY[0x277D44700]);
      v46 = sub_261CFD814();
      v47 = sub_261CFFA54();
      v48 = [v45 initWithUUID:v46 entityName:v47];

      *v44 = v48;
      *v108 = v41;
      v50 = *(v41 + 16);
      v49 = *(v41 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_261B39DFC((v49 > 1), v50 + 1, 1);
        v41 = *v108;
      }

      v51 = *(v1 + 208);
      *(v41 + 16) = v50 + 1;
      sub_261BB4448(v51, v41 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v50, &qword_27FEDA598, &qword_261D05740);
      v43 += v98;
      --v40;
    }

    while (v40);
  }

  if (*(v41 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE120, &qword_261D05738);
    v52 = sub_261D00544();
  }

  else
  {
    v52 = MEMORY[0x277D84F98];
  }

  *v108 = v52;
  v53 = sub_261CFD104();
  sub_261CB5FD4(v53, 1, v108);
  v54 = *(v1 + 368);

  v55 = *v108;
  if (v54)
  {
    v56 = 0;
    v57 = *(v1 + 312);
    v97 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v58 = *(v1 + 152) + v97;
    v59 = *(v57 + 72);
    v99 = (v57 + 48);
    v101 = (v57 + 56);
    v104 = *v108;
    v106 = MEMORY[0x277D84F90];
    do
    {
      sub_261CB6900(v58, *(v1 + 328), type metadata accessor for ReminderEntity);
      v60 = objc_allocWithZone(MEMORY[0x277D44700]);
      v61 = sub_261CFD814();
      v62 = sub_261CFFA54();
      v63 = [v60 initWithUUID:v61 entityName:v62];

      if (*(v55 + 16) && (v64 = sub_261B37CA4(v63), (v65 & 1) != 0))
      {
        sub_261CB6900(*(v55 + 56) + v64 * v59, *(v1 + 184), type metadata accessor for ReminderEntity);
        v66 = 0;
      }

      else
      {
        v66 = 1;
      }

      v67 = *(v1 + 328);
      v68 = *(v1 + 304);
      v69 = v1;
      v70 = *(v1 + 184);

      (*v101)(v70, v66, 1, v68);
      sub_261CB68A0(v67, type metadata accessor for ReminderEntity);
      if ((*v99)(v70, 1, v68) == 1)
      {
        sub_261AE6A40(*(v69 + 184), &unk_27FEDE110, &unk_261D035B0);
        v1 = v69;
        v55 = v104;
      }

      else
      {
        sub_261CB6838(*(v69 + 184), *(v69 + 320), type metadata accessor for ReminderEntity);
        v1 = v69;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v55 = v104;
          v71 = v106;
        }

        else
        {
          v71 = sub_261B41560(0, v106[2] + 1, 1, v106);
          v55 = v104;
        }

        v73 = v71[2];
        v72 = v71[3];
        if (v73 >= v72 >> 1)
        {
          v71 = sub_261B41560((v72 > 1), v73 + 1, 1, v71);
        }

        v74 = *(v1 + 320);
        v71[2] = v73 + 1;
        v106 = v71;
        sub_261CB6838(v74, v71 + v97 + v73 * v59, type metadata accessor for ReminderEntity);
      }

      ++v56;
      v58 += v59;
    }

    while (v56 != *(v1 + 368));

    v75 = v106;
  }

  else
  {

    v75 = MEMORY[0x277D84F90];
  }

  v76 = *(v1 + 8);

  return v76(v75);
}

uint64_t sub_261CB539C()
{
  *(*v1 + 464) = v0;

  if (v0)
  {

    v2 = sub_261CB5DB0;
  }

  else
  {
    v2 = sub_261CB54C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261CB54C4()
{
  v84 = v0;
  v1 = *(v0 + 408);
  v80 = *(v0 + 288);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);
  sub_261CFD0D4();
  (*(v3 + 8))(v2, v4);
  if (*(v0 + 144))
  {
    v5 = *(v0 + 144);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  sub_261BBB890(v5);

  result = sub_261CB68A0(v80, type metadata accessor for ListEntity);
  v7 = *(v0 + 464);
  v8 = *(v0 + 400);
  v9 = (*(v0 + 392) - 1) & *(v0 + 392);
  while (v9)
  {
    v10 = *(v0 + 384);
LABEL_11:
    *(v0 + 392) = v9;
    *(v0 + 400) = v8;
    v12 = *(v0 + 376);
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = (v8 << 9) | (8 * v13);
    v15 = *(*(v10 + 48) + v14);
    *(v0 + 408) = v15;
    v16 = *(*(v10 + 56) + v14);
    *(v0 + 416) = v16;
    if (*(v12 + 16))
    {
      v17 = v15;
      swift_bridgeObjectRetain_n();
      v18 = v17;
      v19 = sub_261B37CA4(v18);
      if (v20)
      {
        v58 = *(v0 + 472);
        v60 = *(v0 + 280);
        v59 = *(v0 + 288);
        v61 = *(v0 + 264);
        v62 = *(v0 + 272);
        v63 = *(v0 + 240);
        v64 = *(v0 + 168);
        v82 = *(v0 + 176);
        sub_261CB6900(*(*(v0 + 376) + 56) + *(v62 + 72) * v19, v60, type metadata accessor for ListEntity);
        sub_261CB6838(v60, v59, type metadata accessor for ListEntity);
        v83[0] = v58;
        sub_261CB6900(v59, v63, type metadata accessor for ListEntity);
        (*(v62 + 56))(v63, 0, 1, v61);
        *(v0 + 80) = v82;
        *(v0 + 88) = &protocol witness table for REMStoreIntentPerformer;
        *(v0 + 56) = v64;
        sub_261CFCDA4();
        sub_261BC2DE4(v16, v83, v63, 1, (v0 + 56), (v0 + 16));
        v65 = *(v0 + 16);
        v66 = *(v0 + 24);
        *(v0 + 424) = v65;
        *(v0 + 432) = v66;
        v67 = *(v0 + 32);
        v68 = *(v0 + 40);
        v69 = *(v0 + 48);
        *(v0 + 440) = v67;
        *(v0 + 448) = v69;
        *(v0 + 96) = v65;
        *(v0 + 104) = v66;
        *(v0 + 112) = v67;
        *(v0 + 120) = v68;
        *(v0 + 128) = v69;
        v70 = swift_task_alloc();
        *(v0 + 456) = v70;
        *v70 = v0;
        v70[1] = sub_261CB539C;
        v71 = *(v0 + 232);
        v72 = *(v0 + 160);

        return sub_261B88E6C(v71, v0 + 96, v72);
      }

      result = swift_bridgeObjectRelease_n();
    }
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    v10 = *(v0 + 384);
    if (v11 >= (((1 << *(v0 + 473)) + 63) >> 6))
    {
      break;
    }

    v9 = *(v10 + 8 * v11 + 64);
    ++v8;
    if (v9)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  v21 = *(v0 + 136);
  v22 = *(v21 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v24 = *(v0 + 312);
    v76 = *(v0 + 192);
    v78 = *(v0 + 200);
    *v83 = MEMORY[0x277D84F90];
    sub_261B39DFC(0, v22, 0);
    v23 = *v83;
    v25 = v21 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v74 = *(v24 + 72);
    do
    {
      v26 = *(v0 + 208);
      sub_261CB6900(v25, v26 + *(v76 + 48), type metadata accessor for ReminderEntity);
      v27 = objc_allocWithZone(MEMORY[0x277D44700]);
      v28 = sub_261CFD814();
      v29 = sub_261CFFA54();
      v30 = [v27 initWithUUID:v28 entityName:v29];

      *v26 = v30;
      *v83 = v23;
      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_261B39DFC((v31 > 1), v32 + 1, 1);
        v23 = *v83;
      }

      v33 = *(v0 + 208);
      *(v23 + 16) = v32 + 1;
      sub_261BB4448(v33, v23 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v32, &qword_27FEDA598, &qword_261D05740);
      v25 += v74;
      --v22;
    }

    while (v22);
  }

  if (*(v23 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE120, &qword_261D05738);
    v34 = sub_261D00544();
  }

  else
  {
    v34 = MEMORY[0x277D84F98];
  }

  *v83 = v34;
  v35 = sub_261CFD104();
  sub_261CB5FD4(v35, 1, v83);
  if (v7)
  {

    return swift_unexpectedError();
  }

  else
  {
    v36 = *(v0 + 368);

    v37 = *v83;
    if (v36)
    {
      v38 = 0;
      v39 = *(v0 + 312);
      v73 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v40 = *(v0 + 152) + v73;
      v41 = *(v39 + 72);
      v75 = (v39 + 48);
      v77 = (v39 + 56);
      v79 = *v83;
      v81 = MEMORY[0x277D84F90];
      do
      {
        sub_261CB6900(v40, *(v0 + 328), type metadata accessor for ReminderEntity);
        v42 = objc_allocWithZone(MEMORY[0x277D44700]);
        v43 = sub_261CFD814();
        v44 = sub_261CFFA54();
        v45 = [v42 initWithUUID:v43 entityName:v44];

        if (*(v37 + 16) && (v46 = sub_261B37CA4(v45), (v47 & 1) != 0))
        {
          sub_261CB6900(*(v37 + 56) + v46 * v41, *(v0 + 184), type metadata accessor for ReminderEntity);
          v48 = 0;
        }

        else
        {
          v48 = 1;
        }

        v49 = *(v0 + 328);
        v50 = *(v0 + 304);
        v51 = *(v0 + 184);

        (*v77)(v51, v48, 1, v50);
        sub_261CB68A0(v49, type metadata accessor for ReminderEntity);
        if ((*v75)(v51, 1, v50) == 1)
        {
          sub_261AE6A40(*(v0 + 184), &unk_27FEDE110, &unk_261D035B0);
          v37 = v79;
        }

        else
        {
          sub_261CB6838(*(v0 + 184), *(v0 + 320), type metadata accessor for ReminderEntity);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v37 = v79;
            v52 = v81;
          }

          else
          {
            v52 = sub_261B41560(0, v81[2] + 1, 1, v81);
            v37 = v79;
          }

          v54 = v52[2];
          v53 = v52[3];
          if (v54 >= v53 >> 1)
          {
            v52 = sub_261B41560((v53 > 1), v54 + 1, 1, v52);
          }

          v55 = *(v0 + 320);
          v52[2] = v54 + 1;
          v81 = v52;
          sub_261CB6838(v55, v52 + v73 + v54 * v41, type metadata accessor for ReminderEntity);
        }

        ++v38;
        v40 += v41;
      }

      while (v38 != *(v0 + 368));

      v56 = v81;
    }

    else
    {

      v56 = MEMORY[0x277D84F90];
    }

    v57 = *(v0 + 8);

    return v57(v56);
  }
}

uint64_t sub_261CB5DB0()
{
  v1 = v0[51];
  v2 = v0[36];

  sub_261CB68A0(v2, type metadata accessor for ListEntity);

  v3 = v0[1];

  return v3();
}

uint64_t sub_261CB5F28(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

void sub_261CB5FD4(unint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for ReminderEntity(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA598, &qword_261D05740);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = (&v49 - v14);
  v54 = *(a1 + 16);
  if (!v54)
  {
    goto LABEL_22;
  }

  v51 = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v53 = *(v13 + 72);
  v55 = a1;
  v50 = v17;
  sub_261AFB668(a1 + v17, &v49 - v14, &qword_27FEDA598, &qword_261D05740);
  v59 = *v15;
  v18 = v59;
  v52 = v16;
  sub_261CB6838(v15 + v16, v10, type metadata accessor for ReminderEntity);
  v19 = *a3;
  v20 = sub_261B37CA4(v18);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_261CA2BDC(v25, a2 & 1);
    v20 = sub_261B37CA4(v18);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      sub_261D00654();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v20;
  sub_261CA4754();
  v20 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v58 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE130, &qword_261D0A028);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_261CB68A0(v10, type metadata accessor for ReminderEntity);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v31 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  *(v31[6] + 8 * v20) = v18;
  v32 = *(v8 + 72);
  sub_261CB6838(v10, v31[7] + v32 * v20, type metadata accessor for ReminderEntity);
  v33 = v31[2];
  v24 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (!v24)
  {
    v31[2] = v34;
    v35 = v55;
    if (v54 == 1)
    {
LABEL_22:

      return;
    }

    v36 = v55 + v53 + v50;
    v37 = 1;
    while (v37 < *(v35 + 16))
    {
      sub_261AFB668(v36, v15, &qword_27FEDA598, &qword_261D05740);
      v59 = *v15;
      v18 = v59;
      sub_261CB6838(v15 + v52, v10, type metadata accessor for ReminderEntity);
      v38 = *a3;
      v39 = sub_261B37CA4(v18);
      v41 = v38[2];
      v42 = (v40 & 1) == 0;
      v24 = __OFADD__(v41, v42);
      v43 = v41 + v42;
      if (v24)
      {
        goto LABEL_23;
      }

      v44 = v40;
      if (v38[3] < v43)
      {
        sub_261CA2BDC(v43, 1);
        v39 = sub_261B37CA4(v18);
        if ((v44 & 1) != (v45 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v44)
      {
        goto LABEL_9;
      }

      v46 = *a3;
      *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
      *(v46[6] + 8 * v39) = v18;
      sub_261CB6838(v10, v46[7] + v32 * v39, type metadata accessor for ReminderEntity);
      v47 = v46[2];
      v24 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v37;
      v46[2] = v48;
      v36 += v53;
      v35 = v55;
      if (v54 == v37)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_261D00334();
  MEMORY[0x26671C210](0xD00000000000001BLL, 0x8000000261D1DD20);
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  sub_261D00404();
  MEMORY[0x26671C210](39, 0xE100000000000000);
  sub_261D004E4();
  __break(1u);
}

void sub_261CB6544(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_261D00454() == *(a4 + 36))
    {
      sub_261D00464();
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      swift_dynamicCast();
      sub_261B37CA4(v6);
      v5 = v4;

      if (v5)
      {
        sub_261D00434();
        sub_261D00484();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_261D00204();
}

void sub_261CB66A8(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_261D00494();
      sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_261D00454() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_261D00464();
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  swift_dynamicCast();
  v5 = sub_261B37CA4(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 56) + 8 * a1);

  v9 = v8;
}

uint64_t sub_261CB6838(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261CB68A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261CB6900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261CB6968(uint64_t a1, char a2, void *a3)
{
  v6 = type metadata accessor for ListEntity(0);
  v54 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE140, &qword_261D03188);
  result = MEMORY[0x28223BE20](v12);
  v16 = (&v49 - v15);
  if (*(a1 + 16))
  {
    v50 = *(a1 + 16);
    v51 = a1;
    v17 = *(result + 48);
    v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v53 = *(v14 + 72);
    v49 = v18;
    sub_261AFB668(a1 + v18, &v49 - v15, &unk_27FEDE140, &qword_261D03188);
    v19 = *v16;
    v52 = v17;
    sub_261CB6838(v16 + v17, v11, type metadata accessor for ListEntity);
    v20 = *a3;
    v22 = sub_261B37CA4(v19);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      sub_261CA2E78(v25, a2 & 1);
      v27 = sub_261B37CA4(v19);
      if ((v26 & 1) != (v28 & 1))
      {
LABEL_26:
        sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
        result = sub_261D00654();
        __break(1u);
        return result;
      }

      v22 = v27;
      v29 = *a3;
      if ((v26 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_9:
      v30 = *(v54 + 72) * v22;
      sub_261CB6900(v29[7] + v30, v9, type metadata accessor for ListEntity);
      sub_261CB68A0(v11, type metadata accessor for ListEntity);

      result = sub_261CB7318(v9, v29[7] + v30);
LABEL_13:
      v34 = v50 - 1;
      if (v50 == 1)
      {
        return result;
      }

      v35 = v51 + v53 + v49;
      while (1)
      {
        sub_261AFB668(v35, v16, &unk_27FEDE140, &qword_261D03188);
        v37 = *v16;
        sub_261CB6838(v16 + v52, v11, type metadata accessor for ListEntity);
        v38 = *a3;
        v39 = sub_261B37CA4(v37);
        v41 = v38[2];
        v42 = (v40 & 1) == 0;
        v32 = __OFADD__(v41, v42);
        v43 = v41 + v42;
        if (v32)
        {
          goto LABEL_24;
        }

        v44 = v40;
        if (v38[3] < v43)
        {
          sub_261CA2E78(v43, 1);
          v39 = sub_261B37CA4(v37);
          if ((v44 & 1) != (v45 & 1))
          {
            goto LABEL_26;
          }
        }

        v46 = *a3;
        if (v44)
        {
          v36 = *(v54 + 72) * v39;
          sub_261CB6900(v46[7] + v36, v9, type metadata accessor for ListEntity);
          sub_261CB68A0(v11, type metadata accessor for ListEntity);

          result = sub_261CB7318(v9, v46[7] + v36);
        }

        else
        {
          v46[(v39 >> 6) + 8] |= 1 << v39;
          *(v46[6] + 8 * v39) = v37;
          result = sub_261CB6838(v11, v46[7] + *(v54 + 72) * v39, type metadata accessor for ListEntity);
          v47 = v46[2];
          v32 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v32)
          {
            goto LABEL_25;
          }

          v46[2] = v48;
        }

        v35 += v53;
        if (!--v34)
        {
          return result;
        }
      }
    }

    if (a2)
    {
      v29 = *a3;
      if (v21)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_261CA4780();
      v29 = *a3;
      if (v26)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v29[(v22 >> 6) + 8] |= 1 << v22;
    *(v29[6] + 8 * v22) = v19;
    result = sub_261CB6838(v11, v29[7] + *(v54 + 72) * v22, type metadata accessor for ListEntity);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v29[2] = v33;
    goto LABEL_13;
  }

  return result;
}

void *sub_261CB6E48(uint64_t a1)
{
  v2 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v2);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v49);
  v48 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ReminderEntity(0);
  v5 = MEMORY[0x28223BE20](v47);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v40 - v8;
  v9 = MEMORY[0x277D84F98];
  v52 = MEMORY[0x277D84F98];
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v9;
  }

  v42 = *(v7 + 80);
  v11 = *(v7 + 72);
  v44 = (v42 + 32) & ~v42;
  v12 = a1 + v44;
  v41 = xmmword_261D03450;
  v43 = v2;
  while (1)
  {
    v50 = v10;
    sub_261CB6900(v12, v51, type metadata accessor for ReminderEntity);
    v14 = v48;
    sub_261CFCA04();
    v15 = v46;
    sub_261CB6900(v14 + *(v49 + 20), v46, type metadata accessor for AppEntityID);
    sub_261CB68A0(v14, type metadata accessor for ListEntity);
    v16 = v2;
    v17 = objc_allocWithZone(MEMORY[0x277D44700]);
    v18 = sub_261CFD814();
    v19 = sub_261CFFA54();
    v20 = [v17 initWithUUID:v18 entityName:v19];

    sub_261CB68A0(v15, type metadata accessor for AppEntityID);
    v22 = sub_261B37CA4(v20);
    v23 = v9[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v9[3] < v25)
    {
      sub_261CA2C08(v25, 1);
      v9 = v52;
      v27 = sub_261B37CA4(v20);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_19;
      }

      v22 = v27;
    }

    if (v26)
    {

      v29 = v9[7];
      sub_261CB6838(v51, v45, type metadata accessor for ReminderEntity);
      v30 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_261B41560(0, v30[2] + 1, 1, v30);
        *(v29 + 8 * v22) = v30;
      }

      v33 = v30[2];
      v32 = v30[3];
      if (v33 >= v32 >> 1)
      {
        v30 = sub_261B41560((v32 > 1), v33 + 1, 1, v30);
        *(v29 + 8 * v22) = v30;
      }

      v13 = v50;
      v30[2] = v33 + 1;
      sub_261CB6838(v45, v30 + v44 + v33 * v11, type metadata accessor for ReminderEntity);
      v2 = v43;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA670, &qword_261D03228);
      v34 = v44;
      v35 = swift_allocObject();
      *(v35 + 16) = v41;
      sub_261CB6838(v51, v35 + v34, type metadata accessor for ReminderEntity);
      v9[(v22 >> 6) + 8] |= 1 << v22;
      *(v9[6] + 8 * v22) = v20;
      *(v9[7] + 8 * v22) = v35;
      v36 = v9[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_18;
      }

      v9[2] = v38;
      v2 = v16;
      v13 = v50;
    }

    v12 += v11;
    v10 = v13 - 1;
    if (!v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  result = sub_261D00654();
  __break(1u);
  return result;
}

uint64_t sub_261CB7318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListEntity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_261CB737C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDE158);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE158);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261CB7F84()
{
  v339 = v0;
  v1 = v0;
  v338 = *MEMORY[0x277D85DE8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA670, &qword_261D03228);
  v2 = swift_allocObject();
  v331 = xmmword_261D03450;
  *(v2 + 16) = xmmword_261D03450;
  sub_261CFCBB4();
  v3 = sub_261B9A654(v2, 1);
  v5 = v4;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v334 = v1;
  v6 = sub_261B9BFF4(3, v3, v5);

  v7 = sub_261CFC488(v6);
  if (qword_27FED9D10 != -1)
  {
    goto LABEL_165;
  }

  while (1)
  {
    v8 = sub_261CFF7A4();
    __swift_project_value_buffer(v8, qword_27FEDE158);
    sub_261B4E63C((v1 + 16), (v1 + 240));
    v9 = sub_261CFF784();
    v10 = sub_261CFFE84();
    sub_261B4E674((v1 + 16));
    v328 = v6;
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v334[153];
      v12 = v334[150];
      v13 = v334[149];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v335 = v15;
      *v14 = 136446210;
      sub_261CFCBB4();
      sub_261B7C0F0(v11 + *(v12 + 40), v13);
      v16 = v11;
      v1 = v334;
      sub_261CBBB3C(v16, type metadata accessor for ReminderEntity);
      v17 = AppEntityID.entityIdentifierString.getter();
      v19 = v18;
      v20 = v13;
      v6 = v328;
      sub_261CBBB3C(v20, type metadata accessor for AppEntityID);
      v21 = sub_261B879C8(v17, v19, &v335);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_261AE2000, v9, v10, "[UpdateReminderIntentPerforming] Update reminder with id: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x26671D560](v15, -1, -1);
      MEMORY[0x26671D560](v14, -1, -1);
    }

    v22 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v22 setSaveIsNoopIfNoChangedKeys_];
    v23 = [v6 parentReminder];
    if (v23)
    {
      v24 = v23;
      v25 = [v22 updateReminder_];
    }

    else
    {
      v25 = 0;
    }

    v323 = v25;
    if (!v7)
    {
      break;
    }

    *&v335 = MEMORY[0x277D84F90];
    v1 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      v26 = sub_261D00274();
    }

    else
    {
      v26 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = (v7 & 0xC000000000000001);
    sub_261CFD104();
    v27 = 0;
    v330 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v26 == v27)
      {

        v1 = v334;
        v6 = v328;
        goto LABEL_23;
      }

      if (v6)
      {
        v28 = MEMORY[0x26671CA10](v27, v7);
      }

      else
      {
        if (v27 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_162;
        }

        v28 = *(v7 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v31 = [v22 updateReminder_];

      ++v27;
      if (v31)
      {
        MEMORY[0x26671C310]();
        if (*((v335 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v335 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_261CFFC84();
        }

        sub_261CFFCB4();
        v330 = v335;
        v27 = v30;
      }
    }

    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    swift_once();
  }

  v330 = MEMORY[0x277D84F90];
LABEL_23:
  v32 = *(v1 + 1176);
  v33 = *(v1 + 1168);
  v34 = *(v1 + 1160);
  sub_261CFE144();
  v337 = 0;
  v335 = 0u;
  v336 = 0u;
  v35 = v6;
  v324 = v22;
  v329 = sub_261CFE134();
  sub_261CFCBD4();
  sub_261CFCB94();

  v36 = (*(v33 + 88))(v32, v34);
  v37 = *MEMORY[0x277CB9EB8];
  v38 = *(v1 + 1176);
  v39 = *(v1 + 1168);
  v40 = *(v1 + 1160);
  if (v36 == *MEMORY[0x277CB9EB8])
  {
    (*(v39 + 96))(*(v1 + 1176), v40);
    v41 = v38[1];
    if (v41)
    {
      v42 = *v38;
      v43 = HIBYTE(v41) & 0xF;
      if ((v41 & 0x2000000000000000) == 0)
      {
        v43 = v42 & 0xFFFFFFFFFFFFLL;
      }

      if (v43)
      {
        v44 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v45 = sub_261CFFA54();

        v46 = [v44 initWithString_];

        sub_261CFE0D4();
      }

      else
      {
      }
    }
  }

  else
  {
    (*(v39 + 8))(*(v1 + 1176), v40);
  }

  v47 = *(v1 + 1152);
  v48 = *(v1 + 1136);
  v49 = *(v1 + 1128);
  sub_261CFCBD4();
  sub_261CFCB94();

  v333 = v37;
  if ((*(v48 + 88))(v47, v49) == v37)
  {
    v50 = *(v1 + 1144);
    v51 = *(v1 + 1136);
    v52 = *(v1 + 1128);
    (*(v51 + 16))(v50, *(v1 + 1152), v52);
    (*(v51 + 96))(v50, v52);
    if (*v50 != 2)
    {
      sub_261CFE114();
    }
  }

  v53 = *(v1 + 1152);
  v54 = *(v1 + 1136);
  v55 = *(v1 + 1128);
  v56 = *(v1 + 1096);
  v57 = *(v1 + 1088);
  v58 = *(v1 + 1080);

  (*(v54 + 8))(v53, v55);
  sub_261CFCBD4();
  sub_261CFCB94();

  v326 = v35;
  if ((*(v57 + 88))(v56, v58) == v37)
  {
    v59 = *(v1 + 1112);
    v60 = *(v1 + 1104);
    v61 = *(v1 + 1096);
    (*(*(v1 + 1088) + 96))(v61, *(v1 + 1080));
    if ((*(v59 + 48))(v61, 1, v60) == 1)
    {
      sub_261AE6A40(*(v1 + 1096), &unk_27FEDE0C0, &unk_261D02500);
    }

    else
    {
      v62 = *(v1 + 1120);
      v63 = *(v1 + 1072);
      v64 = *(v1 + 1064);
      v65 = *(v1 + 1056);
      sub_261B01E2C(*(v1 + 1096), v62);
      v66 = objc_allocWithZone(MEMORY[0x277D44700]);
      v67 = sub_261CFD814();
      v68 = sub_261CFFA54();
      v69 = [v66 initWithUUID:v67 entityName:v68];

      (*(v64 + 104))(v63, *MEMORY[0x277D45C50], v65);
      sub_261CFD104();
      v70 = sub_261CFE0E4();

      v1 = v334;
      (*(v64 + 8))(v63, v65);
      sub_261CBBB3C(v62, type metadata accessor for ListEntity);
    }
  }

  else
  {
    (*(*(v1 + 1088) + 8))(*(v1 + 1096), *(v1 + 1080));
  }

  v71 = *(v1 + 1048);
  v72 = *(v1 + 1032);
  v73 = *(v1 + 1024);
  v74 = *(v1 + 1016);
  v75 = *(v1 + 992);
  v76 = v1;
  v77 = *(v1 + 984);
  v78 = v76[122];
  v79 = v76[121];
  sub_261CFCBD4();
  sub_261CFCB94();

  sub_261CFCBD4();
  sub_261CFCB94();

  v80 = *(v79 + 48);
  (*(v72 + 32))(v78, v71, v73);
  (*(v75 + 32))(v78 + v80, v74, v77);
  v81 = (*(v72 + 88))(v78, v73);
  v82 = v333;
  if (v81 == v333)
  {
    v83 = v76[130];
    v84 = v76[129];
    v85 = v76[128];
    (*(v84 + 16))(v83, v76[122], v85);
    (*(v84 + 96))(v83, v85);
    v86 = sub_261CFD4E4();
    v87 = *(v86 - 8);
    v1 = v76;
    if ((*(v87 + 48))(v83, 1, v86) == 1)
    {
      v88 = v76[129];
      v89 = v76[128];
      v90 = v76[124];
      v91 = *(v1 + 984);
      v92 = *(v1 + 976);
      v93 = v334[119];
      (*(v87 + 56))(v93, 1, 1, v86);
      sub_261CFE094();
      v94 = v93;
      v1 = v334;
      sub_261AE6A40(v94, &qword_27FEDA160, &qword_261D02220);
      sub_261CFE0A4();
      (*(v90 + 8))(v78 + v80, v91);
      v95 = v92;
      v82 = v333;
      (*(v88 + 8))(v95, v89);
      v7 = v329;
      v6 = v326;
      goto LABEL_60;
    }

    v111 = (*(v76[124] + 88))(v78 + v80, v76[123]);
    if (v111 == v333)
    {
      v112 = v76[125];
      v113 = v76[124];
      v114 = v76[123];
      (*(v113 + 16))(v112, v78 + v80, v114);
      (*(v113 + 96))(v112, v114);
      v115 = *(v112 + 8);
      v116 = v76[130];
      v117 = v76[129];
      v321 = v76[128];
      if (!v115)
      {
        v140 = v76[124];
        v141 = *(v1 + 984);
        v142 = *(v1 + 976);
        v143 = *(v1 + 952);
        sub_261B02380(v116, v143);
        v7 = v329;
        sub_261CFE094();
        sub_261CFE0A4();
        sub_261AE6A40(v143, &qword_27FEDA160, &qword_261D02220);
        (*(v140 + 8))(v78 + v80, v141);
        (*(v117 + 8))(v142, v321);
        goto LABEL_56;
      }

      v118 = v76[125];
      v315 = v76[124];
      v317 = v76[123];
      v319 = v76[129];
      v320 = v76[122];
      v119 = v76[119];
      v120 = v118[2];
      v121 = v118[3];
      v122 = *v118;
      sub_261B02380(v116, v119);
      sub_261CFE094();
      *&v335 = v122;
      *(&v335 + 1) = v115;
      *&v336 = v120;
      *(&v336 + 1) = v121;
      v123 = sub_261CF8274();
      sub_261CFE0A4();

      v1 = v334;
      v124 = v121;
      v7 = v329;
      sub_261B49F50(v122, v115, v120, v124);
      sub_261AE6A40(v119, &qword_27FEDA160, &qword_261D02220);
      (*(v315 + 8))(v78 + v80, v317);
      v110 = v319;
      goto LABEL_49;
    }

    if (v111 == *MEMORY[0x277CB9EC0])
    {
      v125 = v76[130];
      v126 = v76[129];
      v127 = *(v1 + 1024);
      v128 = *(v1 + 992);
      v129 = *(v1 + 984);
      v130 = *(v1 + 976);
      v131 = v334[119];
      sub_261B02380(v125, v131);
      v7 = v329;
      sub_261CFE094();
      v132 = v131;
      v1 = v334;
      sub_261AE6A40(v132, &qword_27FEDA160, &qword_261D02220);
      (*(v128 + 8))(v78 + v80, v129);
      v133 = v130;
      v82 = v333;
      (*(v126 + 8))(v133, v127);
      v6 = v326;
      goto LABEL_60;
    }

    v134 = v76 + 130;
    v6 = v326;
    v7 = v329;
  }

  else
  {
    v1 = v76;
    v6 = v326;
    v7 = v329;
    if (v81 != *MEMORY[0x277CB9EC0] || (*(v76[124] + 88))(v78 + v80, v76[123]) != v333)
    {
      goto LABEL_59;
    }

    v96 = v76[126];
    v97 = v76[124];
    v98 = v76[123];
    (*(v97 + 16))(v96, v78 + v80, v98);
    (*(v97 + 96))(v96, v98);
    v99 = v96[1];
    if (!v99)
    {
      v135 = v334[129];
      v136 = v334[128];
      v137 = v334[124];
      v138 = v334[123];
      v139 = v334[122];
      sub_261CFE0A4();
      (*(v137 + 8))(v78 + v80, v138);
      (*(v135 + 8))(v139, v136);
      v1 = v334;
      goto LABEL_56;
    }

    v100 = *v96;
    v101 = v96[2];
    v102 = v96[3];
    v103 = sub_261CFDF94();
    v104 = [v103 dueDateComponents];

    if (v104)
    {
      v105 = v334[124];
      v316 = v334[129];
      v318 = v334[123];
      v320 = v334[122];
      v321 = v334[128];
      v106 = v334[120];
      sub_261CFD484();

      v107 = sub_261CFD4E4();
      (*(*(v107 - 8) + 56))(v106, 0, 1, v107);
      sub_261AE6A40(v106, &qword_27FEDA160, &qword_261D02220);
      *&v335 = v100;
      *(&v335 + 1) = v99;
      *&v336 = v101;
      *(&v336 + 1) = v102;
      v108 = sub_261CF8274();
      sub_261CFE0A4();
      v109 = v100;
      v1 = v334;
      sub_261B49F50(v109, v99, v101, v102);

      v7 = v329;
      (*(v105 + 8))(v78 + v80, v318);
      v110 = v316;
LABEL_49:
      (*(v110 + 8))(v320, v321);
LABEL_56:
      v6 = v326;
      v82 = v333;
      goto LABEL_60;
    }

    v134 = v334 + 120;
    v144 = v334[120];
    v145 = v100;
    v1 = v334;
    sub_261B49F50(v145, v99, v101, v102);
    v146 = sub_261CFD4E4();
    (*(*(v146 - 8) + 56))(v144, 1, 1, v146);
    v6 = v326;
    v82 = v333;
  }

  sub_261AE6A40(*v134, &qword_27FEDA160, &qword_261D02220);
LABEL_59:
  sub_261AE6A40(*(v1 + 976), &qword_27FEDE1B0, &qword_261D111C0);
LABEL_60:
  v147 = *(v1 + 944);
  v148 = *(v1 + 928);
  v149 = *(v1 + 920);
  sub_261CFCBD4();
  sub_261CFCB94();

  if ((*(v148 + 88))(v147, v149) == v82)
  {
    v150 = *(v1 + 936);
    v151 = *(v1 + 928);
    v152 = *(v1 + 920);
    v153 = *(v1 + 896);
    v154 = *(v1 + 888);
    (*(v151 + 16))(v150, *(v1 + 944), v152);
    (*(v151 + 96))(v150, v152);
    if ((*(v153 + 48))(v150, 1, v154) == 1)
    {
      sub_261CFE084();
    }

    else
    {
      v155 = *(v1 + 912);
      v156 = *(v1 + 904);
      v157 = *(v1 + 896);
      v158 = *(v1 + 888);
      (*(v157 + 32))(v155, *(v1 + 936), v158);
      sub_261B05020(0, &qword_27FEDA9E0, 0x277D44740);
      (*(v157 + 16))(v156, v155, v158);
      v159 = REMRecurrenceRule.init(fromRule:)(v156);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA628, &qword_261D031E8);
      sub_261CFE304();
      *(swift_allocObject() + 16) = v331;
      v160 = v159;
      sub_261CFE2F4();
      sub_261CFE084();

      v82 = v333;
      (*(v157 + 8))(v155, v158);
    }
  }

  v161 = *(v1 + 880);
  v162 = *(v1 + 864);
  v163 = *(v1 + 856);
  (*(*(v1 + 928) + 8))(*(v1 + 944), *(v1 + 920));
  sub_261CFCBD4();
  sub_261CFCB94();

  if ((*(v162 + 88))(v161, v163) == v82)
  {
    v164 = *(v1 + 872);
    v165 = *(v1 + 864);
    v166 = *(v1 + 856);
    (*(v165 + 16))(v164, *(v1 + 880), v166);
    (*(v165 + 96))(v164, v166);
    v167 = *v164;
    if (*v164)
    {
      v169 = v164[1];
      v168 = v164[2];
      sub_261B05020(0, &qword_27FEDA9C0, 0x277D44580);
      *&v335 = v167;
      *(&v335 + 1) = v169;
      *&v336 = v168;
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261B53114(&v335);
      if (v170)
      {
        v171 = v170;
        v172 = v170;
        MEMORY[0x26671A740](v171);
        v173 = v169;
        v7 = v329;
        sub_261B49728(v167, v173, v168);
      }

      else
      {
        sub_261B05020(0, &qword_27FEDA9C8, 0x277D44590);
        *&v335 = v167;
        *(&v335 + 1) = v169;
        *&v336 = v168;
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261CFCDA4();
        v172 = sub_261B535B8(&v335);
        MEMORY[0x26671A730]();
        v174 = v169;
        v7 = v329;
        sub_261B49728(v167, v174, v168);
      }
    }

    else
    {
      MEMORY[0x26671A730](0);
      MEMORY[0x26671A740](0);
    }

    v82 = v333;
  }

  v175 = *(v1 + 848);
  v176 = *(v1 + 832);
  v177 = *(v1 + 824);
  (*(*(v1 + 864) + 8))(*(v1 + 880), *(v1 + 856));
  sub_261CFCBD4();
  sub_261CFCB94();

  if ((*(v176 + 88))(v175, v177) == v82)
  {
    v178 = *(v1 + 840);
    v179 = *(v1 + 832);
    v180 = *(v1 + 824);
    v181 = *(v1 + 792);
    v182 = *(v1 + 784);
    (*(v179 + 16))(v178, *(v1 + 848), v180);
    (*(v179 + 96))(v178, v180);
    if ((*(v181 + 48))(v178, 1, v182) == 1)
    {
      sub_261CFE054();
    }

    else
    {
      v183 = *(v1 + 816);
      v184 = *(v1 + 808);
      v185 = *(v1 + 792);
      v186 = *(v1 + 784);
      (*(v185 + 32))(v183, *(v1 + 840), v186);
      sub_261B05020(0, &qword_27FEDB0D0, 0x277D445D8);
      (*(v185 + 16))(v184, v183, v186);
      v187 = sub_261C7D36C(v184);
      sub_261CFE054();

      (*(v185 + 8))(v183, v186);
    }
  }

  v188 = *(v1 + 792);
  v189 = *(v1 + 784);
  v190 = *(v1 + 776);
  (*(*(v1 + 832) + 8))(*(v1 + 848), *(v1 + 824));
  sub_261CFCBB4();
  if ((*(v188 + 48))(v190, 1, v189) == 1)
  {
    sub_261AE6A40(*(v1 + 776), &unk_27FEDB0B0, &unk_261D035D0);
LABEL_89:
    sub_261CFE004();
    goto LABEL_90;
  }

  (*(*(v1 + 792) + 32))(*(v1 + 800), *(v1 + 776), *(v1 + 784));
  v191 = [v6 list];
  v192 = [v191 sharees];
  if (!v192)
  {
    goto LABEL_87;
  }

  v193 = v192;
  sub_261B05020(0, &qword_27FEDA9D0, 0x277D447E8);
  v194 = sub_261CFFC64();

  if (![v191 isShared])
  {

LABEL_87:

LABEL_88:
    (*(*(v1 + 792) + 8))(*(v1 + 800), *(v1 + 784));
    goto LABEL_89;
  }

  v195 = *(v1 + 800);
  v196 = swift_task_alloc();
  *(v196 + 16) = v195;
  v197 = sub_261B49450(sub_261B49774, v196, v194);

  if (!v197)
  {
    v82 = v333;
    goto LABEL_88;
  }

  if (*(v1 + 224))
  {
    v198 = *(v1 + 760);
    v199 = *(v1 + 752);
    v200 = *(v1 + 744);
    sub_261CFD7F4();
    if ((*(v198 + 48))(v200, 1, v199) != 1)
    {
      v322 = *(v1 + 800);
      v302 = *(v1 + 792);
      *&v331 = *(v1 + 784);
      v303 = v334[96];
      v304 = v334[95];
      v305 = v334[94];
      (*(v304 + 32))(v303, v334[93], v305);
      v306 = objc_opt_self();
      v307 = sub_261CFD814();
      v308 = [v306 objectIDWithUUID_];

      v309 = [v197 &selRef_canBeIncludedInGroup];
      v310 = v308;
      v6 = v326;
      sub_261CFDFA4();

      v311 = v303;
      v1 = v334;
      (*(v304 + 8))(v311, v305);
      v7 = v329;
      (*(v302 + 8))(v322, v331);
      goto LABEL_160;
    }

    sub_261AE6A40(*(v1 + 744), &qword_27FEDA988, &unk_261D03480);
  }

  v201 = *(v1 + 800);
  v202 = *(v1 + 792);
  v203 = *(v1 + 784);
  v204 = [v197 objectID];
  sub_261CFDFA4();

  v1 = v334;
  (*(v202 + 8))(v201, v203);
LABEL_160:
  v82 = v333;
LABEL_90:
  v205 = *(v1 + 736);
  v206 = *(v1 + 720);
  v207 = *(v1 + 712);
  sub_261CFCBD4();
  sub_261CFCB94();

  if ((*(v206 + 88))(v205, v207) == v82)
  {
    v208 = *(v1 + 728);
    v209 = *(v1 + 720);
    v210 = *(v1 + 712);
    v211 = *(v1 + 688);
    v212 = *(v1 + 680);
    (*(v209 + 16))(v208, *(v1 + 736), v210);
    (*(v209 + 96))(v208, v210);
    if ((*(v211 + 48))(v208, 1, v212) == 1)
    {
      sub_261CFE0C4();
    }

    else
    {
      v213 = *(v1 + 704);
      v214 = *(v1 + 696);
      v215 = *(v1 + 688);
      v216 = *(v1 + 680);
      (*(v215 + 32))(v213, *(v1 + 728), v216);
      sub_261B05020(0, &qword_27FEDE1F0, 0x277CCA898);
      (*(v215 + 16))(v214, v213, v216);
      v217 = sub_261CFFF94();
      sub_261CFE0C4();

      v82 = v333;
      (*(v215 + 8))(v213, v216);
    }
  }

  v218 = *(v1 + 672);
  v219 = *(v1 + 656);
  v220 = *(v1 + 648);
  (*(*(v1 + 720) + 8))(*(v1 + 736), *(v1 + 712));
  sub_261CFCBD4();
  sub_261CFCB94();

  if ((*(v219 + 88))(v218, v220) == v82)
  {
    v221 = *(v1 + 664);
    v222 = *(v1 + 656);
    v223 = *(v1 + 648);
    (*(v222 + 16))(v221, *(v1 + 672), v223);
    (*(v222 + 96))(v221, v223);
    v224 = *v221;
    if (*v221)
    {
      v225 = *(v1 + 640);
      if (*(v224 + 16))
      {
        v226 = sub_261CFD754();
        v227 = *(v226 - 8);
        (*(v227 + 16))(v225, v224 + ((*(v227 + 80) + 32) & ~*(v227 + 80)), v226);

        (*(v227 + 56))(v225, 0, 1, v226);
      }

      else
      {

        v228 = sub_261CFD754();
        (*(*(v228 - 8) + 56))(v225, 1, 1, v228);
      }

      v229 = *(v1 + 640);
      sub_261CFE0B4();
      sub_261AE6A40(v229, &qword_27FEDB238, &unk_261D056F0);
    }
  }

  v230 = *(v1 + 632);
  v231 = *(v1 + 616);
  v232 = *(v1 + 608);
  (*(*(v1 + 656) + 8))(*(v1 + 672), *(v1 + 648));
  sub_261CFCBD4();
  sub_261CFCB94();

  if ((*(v231 + 88))(v230, v232) == v82)
  {
    v233 = *(v1 + 624);
    v234 = *(v1 + 616);
    v235 = *(v1 + 608);
    (*(v234 + 16))(v233, *(v1 + 632), v235);
    (*(v234 + 96))(v233, v235);
    if (*v233 <= 2u)
    {
      sub_261CFE124();
    }
  }

  v236 = *(v1 + 600);
  v237 = *(v1 + 584);
  v238 = *(v1 + 576);
  (*(*(v1 + 616) + 8))(*(v1 + 632), *(v1 + 608));
  sub_261CFCBD4();
  sub_261CFCB94();

  if ((*(v237 + 88))(v236, v238) == v82)
  {
    v239 = *(v1 + 592);
    v240 = *(v1 + 584);
    v241 = *(v1 + 576);
    (*(v240 + 16))(v239, *(v1 + 600), v241);
    (*(v240 + 96))(v239, v241);
    v242 = *v239;
    if (v242 < 4)
    {
      sub_261CFE044();
    }
  }

  v243 = *(v1 + 568);
  v244 = *(v1 + 552);
  v245 = *(v1 + 544);
  (*(*(v1 + 584) + 8))(*(v1 + 600), *(v1 + 576));
  sub_261CFCBD4();
  sub_261CFCB94();

  if ((*(v244 + 88))(v243, v245) == v82)
  {
    v246 = *(v1 + 560);
    v247 = *(v1 + 552);
    v248 = *(v1 + 544);
    (*(v247 + 16))(v246, *(v1 + 568), v248);
    (*(v247 + 96))(v246, v248);
    v249 = *v246;
    if (v249)
    {
      v250 = sub_261B49EB8(v249);

      v251 = [v6 hashtags];
      sub_261B05020(0, &qword_27FEDD488, 0x277D44648);
      sub_261C8680C();
      v252 = sub_261CFFD64();

      *(v1 + 496) = v252;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE1E0, &qword_261D111F0);
      sub_261CBBAD8();
      v253 = sub_261CFFC24();

      if (*(v250 + 16) <= *(v253 + 16) >> 3)
      {
        *&v335 = v253;
        sub_261CFD104();
        sub_261CBB954(v250);
        v254 = v335;
      }

      else
      {
        sub_261CFD104();
        v254 = sub_261B55F8C(v250, v253);
      }

      if (*(v253 + 16) <= *(v250 + 16) >> 3)
      {
        *&v335 = v250;
        sub_261CBB954(v253);

        v255 = v335;
      }

      else
      {
        v255 = sub_261B55F8C(v253, v250);
      }

      v256 = 0;
      v257 = -1;
      v258 = -1 << *(v254 + 32);
      if (-v258 < 64)
      {
        v257 = ~(-1 << -v258);
      }

      v1 = v257 & *(v254 + 56);
      v259 = (63 - v258) >> 6;
      if (v1)
      {
        goto LABEL_122;
      }

      while (1)
      {
        v260 = v256 + 1;
        if (__OFADD__(v256, 1))
        {
          goto LABEL_163;
        }

        if (v260 >= v259)
        {
          break;
        }

        v1 = *(v254 + 56 + 8 * v260);
        ++v256;
        if (v1)
        {
          v256 = v260;
          do
          {
LABEL_122:
            v1 &= v1 - 1;
            sub_261CFD104();
            sub_261CFE0F4();
          }

          while (v1);
          continue;
        }
      }

      v261 = 0;
      v262 = -1;
      v263 = -1 << *(v255 + 32);
      if (-v263 < 64)
      {
        v262 = ~(-1 << -v263);
      }

      v264 = v262 & *(v255 + 56);
      v265 = (63 - v263) >> 6;
      v1 = v334;
      if (v264)
      {
        goto LABEL_132;
      }

      while (1)
      {
        v266 = v261 + 1;
        if (__OFADD__(v261, 1))
        {
          goto LABEL_164;
        }

        if (v266 >= v265)
        {
          break;
        }

        v264 = *(v255 + 56 + 8 * v266);
        ++v261;
        if (v264)
        {
          v261 = v266;
          do
          {
LABEL_132:
            v264 &= v264 - 1;
            sub_261CFD104();
            sub_261CFE0F4();
          }

          while (v264);
          continue;
        }
      }
    }
  }

  (*(*(v1 + 552) + 8))(*(v1 + 568), *(v1 + 544));
  v267 = v6;
  sub_261CFCDA4();
  v268 = sub_261CFF784();
  v269 = sub_261CFFE84();

  if (os_log_type_enabled(v268, v269))
  {
    v270 = swift_slowAlloc();
    v271 = swift_slowAlloc();
    v272 = swift_slowAlloc();
    *&v335 = v272;
    *v270 = 138543618;
    v273 = [v267 objectID];
    *(v270 + 4) = v273;
    *v271 = v273;
    *(v270 + 12) = 2082;
    v274 = sub_261CFDF94();
    v275 = [v274 changedKeys];

    sub_261CFFD64();
    v276 = sub_261CFFD74();
    v278 = v277;

    v279 = sub_261B879C8(v276, v278, &v335);

    *(v270 + 14) = v279;
    _os_log_impl(&dword_261AE2000, v268, v269, "[UpdateReminderIntentPerforming] Saving updated reminder with id: %{public}@, changedKeys: %{public}s", v270, 0x16u);
    sub_261AE6A40(v271, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v271, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v272);
    v280 = v272;
    v1 = v334;
    MEMORY[0x26671D560](v280, -1, -1);
    MEMORY[0x26671D560](v270, -1, -1);
  }

  *(v1 + 488) = 0;
  v281 = [v324 saveSynchronouslyWithError_];
  v282 = *(v1 + 488);
  if (!v281)
  {
    v291 = v282;

    sub_261CFD654();

    swift_willThrow();

LABEL_144:

    v294 = v334[1];
    goto LABEL_145;
  }

  v283 = *(v1 + 536);
  v284 = v282;
  v285 = sub_261CFDF94();
  v286 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v286 - 8) + 56))(v283, 1, 1, v286);
  v287 = v323;
  v288 = [v285 listChangeItem];
  if (!v288 || (v289 = v288, v290 = [v288 storage], v289, !v290))
  {
    v292 = v334[67];

    sub_261B01D70();
    swift_allocError();
    *v293 = 11;
    swift_willThrow();

    sub_261AE6A40(v292, &qword_27FEDA108, &unk_261D020C0);
    goto LABEL_144;
  }

  v332 = [v285 storage];
  v327 = [v285 accountCapabilities];
  if (v323)
  {
    v325 = [v287 storage];
  }

  else
  {
    v325 = 0;
  }

  if (v330 >> 62)
  {
    v296 = sub_261D00274();
    if (v296)
    {
      goto LABEL_151;
    }
  }

  else
  {
    v296 = *((v330 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v296)
    {
LABEL_151:
      *&v335 = MEMORY[0x277D84F90];
      sub_261D003A4();
      if (v296 < 0)
      {
        __break(1u);
      }

      v297 = 0;
      do
      {
        if ((v330 & 0xC000000000000001) != 0)
        {
          v298 = MEMORY[0x26671CA10](v297, v330);
        }

        else
        {
          v298 = *(v330 + 8 * v297 + 32);
        }

        v299 = v298;
        ++v297;
        v300 = [v298 storage];

        sub_261D00374();
        sub_261D003B4();
        sub_261D003C4();
        sub_261D00384();
      }

      while (v296 != v297);

      v301 = v335;
      goto LABEL_169;
    }
  }

  v301 = MEMORY[0x277D84F90];
LABEL_169:
  v312 = v334[152];
  v313 = v334[67];
  v314 = v334[66];
  sub_261AE7A78(v313, v314);
  sub_261C7EDC4(v332, v290, v327, v325, v301, v314, v312);

  sub_261AE6A40(v313, &qword_27FEDA108, &unk_261D020C0);
  sub_261CBBA80();
  sub_261CFC994();

  sub_261CBBB3C(v312, type metadata accessor for ReminderEntity);

  v294 = v334[1];
LABEL_145:

  return v294();
}

void sub_261CBADF4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  v4 = sub_261CFFA74();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_261CBAE5C(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

id sub_261CBAF08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB78, &unk_261D099C0);
  v2 = *v0;
  v3 = sub_261D002E4();
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

void sub_261CBB058()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB70, &unk_261D05AA0);
  v2 = *v0;
  v3 = sub_261D002E4();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        sub_261CFD104();
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

uint64_t sub_261CBB1B4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    sub_261CFD104();
    v5 = a1;
    v6 = sub_261D002B4();

    if (v6)
    {
      v7 = sub_261CBB488(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  v10 = sub_261D000E4();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_261D000F4();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_261CBAF08();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_261CBB5F0(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_261CBB34C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_261D006C4();
  sub_261CFFB14();
  v6 = sub_261D006F4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_261D00614() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_261CBB058();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_261CBB790(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_261CBB488(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_261D00274();
  v5 = swift_unknownObjectRetain();
  v6 = sub_261B558DC(v5, v4);
  v15 = v6;
  sub_261CFCDA4();
  v7 = sub_261D000E4();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_261D000F4();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_261CBB5F0(v9);
  result = sub_261D000F4();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_261CBB5F0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_261CFCDA4();
    v8 = sub_261D001F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_261D000E4();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_261CBB790(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_261CFCDA4();
    v8 = sub_261D001F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_261D006C4();
        sub_261CFD104();
        sub_261CFFB14();
        v10 = sub_261D006F4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_261CBB954(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;
    sub_261CFD104();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_261CFD104();
        sub_261CBB34C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

unint64_t sub_261CBBA80()
{
  result = qword_280D22350;
  if (!qword_280D22350)
  {
    type metadata accessor for ReminderEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22350);
  }

  return result;
}

unint64_t sub_261CBBAD8()
{
  result = qword_27FEDE1E8;
  if (!qword_27FEDE1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDE1E0, &qword_261D111F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE1E8);
  }

  return result;
}

uint64_t sub_261CBBB3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261CBBB9C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDE1F8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE1F8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261CBC038()
{
  v95 = v0;
  v94 = *MEMORY[0x277D85DE8];

  sub_261CFCBB4();
  v1 = *(v0 + 48);
  if (v1)
  {
    *(v0 + 136) = *(v0 + 40);
    v2 = *(v0 + 392);
    v3 = *(v0 + 272);
    v4 = *(v0 + 280);
    *(v0 + 144) = v1;
    sub_261CFD874();
    (*(v4 + 56))(v2, 0, 1, v3);
    sub_261B3BA3C();
    v5 = sub_261D00174();
    v7 = v6;
    sub_261AE6A40(v2, &qword_27FEDA708, &qword_261D03298);
LABEL_3:

    goto LABEL_9;
  }

  sub_261CFCBB4();
  if (*(v0 + 56) || *(v0 + 64) != 0xE000000000000000)
  {
    v8 = sub_261D00614();

    if ((v8 & 1) == 0)
    {
      v54 = *(v0 + 392);
      v55 = *(v0 + 272);
      v56 = *(v0 + 280);
      sub_261CFCBB4();
      v57 = *(v0 + 80);
      *(v0 + 88) = *(v0 + 72);
      *(v0 + 96) = v57;
      sub_261CFD874();
      (*(v56 + 56))(v54, 0, 1, v55);
      sub_261B3BA3C();
      v5 = sub_261D00174();
      v7 = v58;
      sub_261AE6A40(v54, &qword_27FEDA708, &qword_261D03298);
      goto LABEL_3;
    }
  }

  else
  {
  }

  v5 = sub_261CFE294();
  v7 = v9;
LABEL_9:
  v90 = v5;
  if (qword_27FED9D18 != -1)
  {
    swift_once();
  }

  v10 = sub_261CFF7A4();
  __swift_project_value_buffer(v10, qword_27FEDE1F8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v11 = sub_261CFF784();
  v12 = sub_261CFFE84();

  if (os_log_type_enabled(v11, v12))
  {
    v87 = *(v0 + 416);
    v88 = *(v0 + 400);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v92 = v14;
    *v13 = 136315138;
    v93[0] = v88;
    v93[1] = v87;
    v15 = sub_261CBCFE8();
    v17 = sub_261B879C8(v15, v16, &v92);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_261AE2000, v11, v12, "[CreateSectionIntentPerforming] Creating section with %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26671D560](v14, -1, -1);
    MEMORY[0x26671D560](v13, -1, -1);
  }

  v18 = *(v0 + 384);
  v19 = *(v0 + 344);
  v20 = *(v0 + 192);
  sub_261CFCBB4();
  v21 = *(v18 + *(v19 + 84));
  v22 = *(v20 + 16);
  type metadata accessor for AppEntityID(0);
  v23 = objc_allocWithZone(MEMORY[0x277D44700]);
  v24 = sub_261CFD814();
  v25 = sub_261CFFA54();
  v26 = [v23 initWithUUID:v24 entityName:v25];

  if (v21)
  {
    *(v0 + 152) = 0;
    v27 = [v22 fetchCustomSmartListWithObjectID:v26 error:v0 + 152];

    v28 = *(v0 + 152);
    if (v27)
    {
      v29 = 1;
      goto LABEL_18;
    }

LABEL_19:
    v36 = v28;

    sub_261CFD654();

    swift_willThrow();
    goto LABEL_26;
  }

  *(v0 + 176) = 0;
  v27 = [v22 fetchListWithObjectID:v26 error:v0 + 176];

  v28 = *(v0 + 176);
  if (!v27)
  {
    goto LABEL_19;
  }

  v29 = 0;
LABEL_18:
  v30 = *(v0 + 336);
  v31 = MEMORY[0x277D447D8];
  v32 = v28;
  v33 = objc_allocWithZone(v31);
  v34 = v27;
  v35 = [v33 initWithStore_];
  sub_261CBD204(v27, v35, v29, v30);
  sub_261CBD544(v27, v29);
  *(v0 + 160) = 0;
  v37 = [v35 saveSynchronouslyWithError_];
  v38 = *(v0 + 160);
  if (v37)
  {
    sub_261CBD5B4(*(v0 + 336), *(v0 + 328), type metadata accessor for SectionEntityID);
    sub_261CBD558(v27, v29);
    v39 = v38;
    v40 = *(v0 + 376);
    v74 = v7;
    v70 = v29;
    v66 = v35;
    if (v29)
    {
      sub_261B750A0(v34, 0, v40);
    }

    else
    {
      sub_261B73240(v34, v40);
    }

    v77 = *(v0 + 384);
    v80 = *(v0 + 376);
    v71 = *(v0 + 368);
    v84 = *(v0 + 360);
    v68 = *(v0 + 352);
    v69 = *(v0 + 344);
    v76 = *(v0 + 336);
    v59 = *(v0 + 320);
    v81 = *(v0 + 328);
    v60 = *(v0 + 312);
    v89 = *(v0 + 304);
    v61 = *(v0 + 256);
    v62 = *(v0 + 264);
    v86 = *(v0 + 248);
    v82 = *(v0 + 240);
    v83 = *(v0 + 232);
    v72 = *(v0 + 224);
    v75 = *(v0 + 216);
    v73 = *(v0 + 208);
    v85 = *(v0 + 200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
    *v59 = sub_261CFCB24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
    sub_261CBD56C(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
    v59[1] = sub_261CFCA64();
    v67 = v60[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2D0, &qword_261D096E8);
    sub_261CFF9B4();
    sub_261CFD874();
    v78 = *MEMORY[0x277CC9110];
    v79 = *(v61 + 104);
    v79(v62);
    sub_261CFD6B4();
    *(v59 + v67) = MEMORY[0x2667199E0](v89, &type metadata for UpdateSectionDisplayNameAppIntent);
    v64 = v60[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8D0, &qword_261D137D0);
    sub_261CFF9B4();
    sub_261CFD874();
    (v79)(v62, v78, v86);
    sub_261CFD6B4();
    *(v59 + v64) = MEMORY[0x2667199F0](v89, &type metadata for UpdateSectionIsCollapsedAppIntent);
    v65 = v60[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCFD0, &qword_261D0D0D8);
    sub_261CFF9B4();
    sub_261CFD874();
    (v79)(v62, v78, v86);
    sub_261CFD6C4();
    *(v59 + v65) = sub_261CFCA54();
    v63 = v60[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
    sub_261CFF9B4();
    sub_261CFD874();
    (v79)(v62, v78, v86);
    sub_261CFD6C4();
    sub_261CBD56C(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
    *(v59 + v63) = sub_261CFCA54();
    sub_261CBD5B4(v81, v59 + v60[6], type metadata accessor for SectionEntityID);
    sub_261CBD5B4(v80, v82, type metadata accessor for ListEntity);
    (*(v68 + 56))(v82, 0, 1, v69);
    sub_261B425D4(v82, v83);
    sub_261CFCA14();
    sub_261AE6A40(v82, &unk_27FEDE0C0, &unk_261D02500);
    *(v0 + 104) = v90;
    *(v0 + 112) = v74;
    sub_261CFD104();
    sub_261CFD2E4();
    *(v0 + 440) = 0;
    sub_261CFD2E4();
    *(v0 + 120) = v90;
    *(v0 + 128) = v74;
    sub_261CFCA14();
    sub_261CBD5B4(v80, v71, type metadata accessor for ListEntity);
    sub_261CBD5B4(v71, v84, type metadata accessor for ListEntity);
    sub_261CFCA14();
    sub_261CBD61C(v71, type metadata accessor for ListEntity);
    sub_261CBD61C(v80, type metadata accessor for ListEntity);
    sub_261CBD61C(v81, type metadata accessor for SectionEntityID);
    sub_261BBEA50(2u, v85);
    sub_261CFC9E4();
    sub_261CBD56C(&qword_280D224D0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
    sub_261CBD56C(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
    sub_261CFC974();

    sub_261CBD544(v27, v70);
    (*(v75 + 8))(v72, v73);
    sub_261CBD61C(v76, type metadata accessor for SectionEntityID);
    sub_261CBD61C(v59, type metadata accessor for SectionEntity);
    sub_261CBD61C(v77, type metadata accessor for ListEntity);

    v52 = *(v0 + 8);
    goto LABEL_27;
  }

  v41 = v38;

  v42 = sub_261CFD654();

  swift_willThrow();
  v43 = v42;
  v44 = sub_261CFF784();
  v45 = sub_261CFFE64();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *&v93[0] = v91;
    *v46 = 136315138;
    swift_getErrorValue();
    v47 = sub_261D00674();
    v49 = sub_261B879C8(v47, v48, v93);

    *(v46 + 4) = v49;
    _os_log_impl(&dword_261AE2000, v44, v45, "[CreateSectionIntentPerforming] Create section failed with save error: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x26671D560](v91, -1, -1);
    MEMORY[0x26671D560](v46, -1, -1);
  }

  v50 = *(v0 + 336);
  sub_261B01D70();
  swift_allocError();
  *v51 = 19;
  swift_willThrow();

  sub_261CBD544(v27, v29);
  sub_261CBD61C(v50, type metadata accessor for SectionEntityID);
LABEL_26:
  sub_261CBD61C(*(v0 + 384), type metadata accessor for ListEntity);

  v52 = *(v0 + 8);
LABEL_27:

  return v52();
}