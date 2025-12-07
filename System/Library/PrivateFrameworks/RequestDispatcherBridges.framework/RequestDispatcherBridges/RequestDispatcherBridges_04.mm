uint64_t sub_22368C414(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22372A548();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F170, &qword_22372D7D8);
  v40 = v4;
  result = sub_22372B588();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v10;
    v39 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v39 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v37)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      sub_223691224(&unk_27D08F1B0, MEMORY[0x277D5D298], MEMORY[0x277D5D2A8]);
      result = sub_22372AF98();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v10 = v38;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_22368C7F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_22372B588();
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

      sub_22372B7A8();
      sub_22372B078();
      result = sub_22372B7C8();
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

uint64_t sub_22368CA90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v51 = a3(0);
  v10 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v11);
  v50 = &v43 - v12;
  v13 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v48 = v9;
  result = sub_22372B588();
  v15 = result;
  if (*(v13 + 16))
  {
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
    v44 = v5;
    v45 = (v10 + 16);
    v46 = v13;
    v47 = v10;
    v49 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v47 + 72);
      v34 = v29 + v33 * v28;
      if (v48)
      {
        (*v49)(v50, v34, v51);
      }

      else
      {
        (*v45)(v50, v34, v51);
      }

      sub_22372B7A8();
      sub_22372B078();
      result = sub_22372B7C8();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      result = (*v49)(*(v15 + 56) + v33 * v23, v50, v51);
      ++*(v15 + 16);
      v13 = v46;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v8 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v13 + 32);
    v8 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v8 = v15;
  return result;
}

uint64_t sub_22368CE14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_22372B588();
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

      sub_22372B7A8();
      sub_22372B078();
      result = sub_22372B7C8();
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

uint64_t sub_22368D0B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F120, &unk_22372FB50);
  v37 = v4;
  result = sub_22372B588();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_22372B7A8();
      sub_22372B078();
      result = sub_22372B7C8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22368D3B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v6);
  v39 = &v35 - v7;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EB00, &qword_22372D7D0);
  v38 = v4;
  result = sub_22372B588();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
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
    v36 = (v5 + 16);
    v37 = v5;
    v17 = (v5 + 32);
    v18 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(*(v8 + 48) + 8 * v23);
      v25 = *(v5 + 72);
      v26 = *(v8 + 56) + v25 * v23;
      if (v38)
      {
        (*v17)(v39, v26, v40);
      }

      else
      {
        (*v36)(v39, v26, v40);
      }

      result = sub_22372B798();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v10 + 48) + 8 * v19) = v24;
      result = (*v17)(*(v10 + 56) + v25 * v19, v39, v40);
      ++*(v10 + 16);
      v5 = v37;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

unint64_t sub_22368D740(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2236AF76C(a2);
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
      sub_22368BED8(v14, a3 & 1);
      result = sub_2236AF76C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_22372B708();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_22365ED00();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
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

void sub_22368D904(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_2236261A0(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_22368C7F0(v22, a4 & 1, a6, a7);
      v17 = sub_2236261A0(a2, a3);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        sub_22372B708();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v17;
      a5();
      v17 = v25;
    }
  }

  v27 = *v11;
  if (v23)
  {
    *(v27[7] + 8 * v17) = a1;

    return;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v28 = (v27[6] + 16 * v17);
  *v28 = a2;
  v28[1] = a3;
  *(v27[7] + 8 * v17) = a1;
  v29 = v27[2];
  v21 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v30;
}

void sub_22368DAA4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2236261A0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22365EEAC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22368C15C(v16, a4 & 1);
    v11 = sub_2236261A0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_22372B708();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    sub_223661514(a1, v22);
  }

  else
  {
    sub_22368E830(v11, a2, a3, a1, v21);
  }
}

void sub_22368DBF4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22372A548();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2236AF7B0(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_22365F050();
      goto LABEL_7;
    }

    sub_22368C414(v18, a3 & 1);
    v24 = sub_2236AF7B0(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_22368E89C(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_22372B708();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

void sub_22368DDE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2236261A0(a2, a3);
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
      sub_22365F5D8();
      goto LABEL_7;
    }

    sub_22368CA90(v15, a4 & 1, MEMORY[0x277D5CBA8], &unk_27D08EA80, qword_22372D730);
    v25 = sub_2236261A0(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_22372B708();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_2237287C8();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_22368E954(v12, a2, a3, a1, v18, MEMORY[0x277D5CBA8]);
}

void sub_22368DFA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2236261A0(a2, a3);
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
      sub_22365F600();
      goto LABEL_7;
    }

    sub_22368CA90(v15, a4 & 1, MEMORY[0x277D5CDA0], &unk_27D08F130, &unk_22372D750);
    v25 = sub_2236261A0(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_22372B708();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_223729D78();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_22368E954(v12, a2, a3, a1, v18, MEMORY[0x277D5CDA0]);
}

void sub_22368E180(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_2236261A0(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_22368CE14(v22, a4 & 1, a6, a7);
      v17 = sub_2236261A0(a2, a3);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        sub_22372B708();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v17;
      a5();
      v17 = v25;
    }
  }

  v27 = *v11;
  if (v23)
  {
    *(v27[7] + 8 * v17) = a1;

    return;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v28 = (v27[6] + 16 * v17);
  *v28 = a2;
  v28[1] = a3;
  *(v27[7] + 8 * v17) = a1;
  v29 = v27[2];
  v21 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v30;
}

void sub_22368E320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2236261A0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_22368D0B4(v18, a5 & 1);
      v13 = sub_2236261A0(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_22372B708();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_22365FA24();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

void sub_22368E4A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2236261A0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for RootRequestController.TRPCache(0);
      sub_223691154(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for RootRequestController.TRPCache);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22365FD20();
    goto LABEL_7;
  }

  sub_223641A5C(v15, a4 & 1, type metadata accessor for RootRequestController.TRPCache, &unk_27D08EA70, &unk_22372D720, type metadata accessor for RootRequestController.TRPCache);
  v21 = sub_2236261A0(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_22372B708();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_223641D9C(v12, a2, a3, a1, v18, type metadata accessor for RootRequestController.TRPCache, type metadata accessor for RootRequestController.TRPCache);
}

uint64_t sub_22368E674(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2236AF76C(a2);
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
      sub_22365FF78();
      goto LABEL_7;
    }

    sub_22368D3B0(v13, a3 & 1);
    v24 = sub_2236AF76C(a2);
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
    result = sub_22372B708();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_22368EA34(v10, a2, a1, v16);
}

unint64_t sub_22368E7E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

_OWORD *sub_22368E830(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_223661514(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_22368E89C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22372A548();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_22368E954(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_22368EA34(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
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

uint64_t _s24RequestDispatcherBridges21RemoteIFDispatchErrorO2eeoiySbAC_ACtFZ_0(char *a1, uint64_t a2)
{
  v105 = a1;
  v3 = sub_223727408();
  v4 = *(v3 - 8);
  v103 = v3;
  v104 = v4;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v95 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v96 = &v94 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v94 = &v94 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v102 = &v94 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v101 = &v94 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v100 = &v94 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v94 - v24;
  v26 = type metadata accessor for RemoteIFDispatchError(0);
  v28 = MEMORY[0x28223BE20](v26, v27);
  v99 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v98 = &v94 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v97 = &v94 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = &v94 - v38;
  v41 = MEMORY[0x28223BE20](v37, v40);
  v43 = &v94 - v42;
  v45 = MEMORY[0x28223BE20](v41, v44);
  v47 = &v94 - v46;
  MEMORY[0x28223BE20](v45, v48);
  v50 = &v94 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1C8, &unk_22372FBC0);
  v53 = MEMORY[0x28223BE20](v51 - 8, v52);
  v55 = &v94 - v54;
  v56 = &v94 + *(v53 + 56) - v54;
  sub_2236911BC(v105, &v94 - v54, type metadata accessor for RemoteIFDispatchError);
  v57 = a2;
  v58 = v56;
  sub_2236911BC(v57, v56, type metadata accessor for RemoteIFDispatchError);
  v105 = v55;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v60 = v100;
    v61 = v101;
    v62 = v102;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v47 = v39;
        sub_2236911BC(v105, v39, type metadata accessor for RemoteIFDispatchError);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v78 = v104;
          v79 = v62;
          v80 = v58;
          v72 = v103;
          (*(v104 + 32))(v62, v80, v103);
          v67 = sub_2237273D8();
          v73 = *(v78 + 8);
          v73(v79, v72);
          goto LABEL_24;
        }

        goto LABEL_32;
      }

      sub_2236911BC(v105, v43, type metadata accessor for RemoteIFDispatchError);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v47 = v43;
        goto LABEL_32;
      }

      v63 = v104;
      v64 = v61;
      v65 = v61;
      v66 = v103;
      (*(v104 + 32))(v65, v58, v103);
      v67 = sub_2237273D8();
      v68 = *(v63 + 8);
      v68(v64, v66);
      v68(v43, v66);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_2236911BC(v105, v50, type metadata accessor for RemoteIFDispatchError);
        if (!swift_getEnumCaseMultiPayload())
        {
          v90 = v104;
          v91 = v58;
          v92 = v103;
          (*(v104 + 32))(v25, v91, v103);
          v67 = sub_2237273D8();
          v93 = *(v90 + 8);
          v93(v25, v92);
          v93(v50, v92);
          goto LABEL_25;
        }

        v47 = v50;
        goto LABEL_32;
      }

      sub_2236911BC(v105, v47, type metadata accessor for RemoteIFDispatchError);
      v74 = v58;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_32;
      }

      v76 = v103;
      v75 = v104;
      (*(v104 + 32))(v60, v74, v103);
      v67 = sub_2237273D8();
      v77 = *(v75 + 8);
      v77(v60, v76);
      v77(v47, v76);
    }

LABEL_25:
    sub_22369126C(v105);
    return v67 & 1;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          goto LABEL_33;
        }

        goto LABEL_27;
      }

      if (swift_getEnumCaseMultiPayload() == 8)
      {
LABEL_27:
        sub_22369126C(v105);
        v67 = 1;
        return v67 & 1;
      }

LABEL_33:
      sub_223626478(v105, &qword_27D08F1C8, &unk_22372FBC0);
LABEL_34:
      v67 = 0;
      return v67 & 1;
    }

    v47 = v99;
    sub_2236911BC(v105, v99, type metadata accessor for RemoteIFDispatchError);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v69 = v104;
      v70 = *(v104 + 32);
      v71 = v95;
      goto LABEL_19;
    }

    goto LABEL_32;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v47 = v97;
    sub_2236911BC(v105, v97, type metadata accessor for RemoteIFDispatchError);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v69 = v104;
      v70 = *(v104 + 32);
      v71 = v94;
LABEL_19:
      v72 = v103;
      v70(v71, v56, v103);
      v67 = sub_2237273D8();
      v73 = *(v69 + 8);
      v73(v71, v72);
LABEL_24:
      v73(v47, v72);
      goto LABEL_25;
    }

LABEL_32:
    (*(v104 + 8))(v47, v103);
    goto LABEL_33;
  }

  v47 = v98;
  sub_2236911BC(v105, v98, type metadata accessor for RemoteIFDispatchError);
  v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EEF8, &unk_22372EE28) + 48);
  v82 = v47[v81];
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_32;
  }

  v83 = v58[v81];
  v85 = v103;
  v84 = v104;
  v86 = v96;
  (*(v104 + 32))(v96, v58, v103);
  v87 = sub_2237273D8();
  v88 = *(v84 + 8);
  v88(v86, v85);
  v88(v47, v85);
  if ((v87 & 1) == 0)
  {
    sub_22369126C(v105);
    goto LABEL_34;
  }

  sub_22369126C(v105);
  v67 = v82 ^ v83 ^ 1;
  return v67 & 1;
}

unint64_t sub_22368F33C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F100, &qword_22372FB30);
    v3 = sub_22372B598();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2236261A0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_22368F438(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA40, &qword_22372D700);
  v3 = sub_22372B598();
  v13 = *(a1 + 32);
  result = sub_2236AF76C(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_2236AF76C(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22368F55C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1E0, &qword_22372FBD8);
    v3 = sub_22372B598();
    v4 = a1 + 32;

    while (1)
    {
      sub_223634890(v4, &v13, &qword_27D08ECF0, &unk_22372FBE0);
      v5 = v13;
      v6 = v14;
      result = sub_2236261A0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2236241E8(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_22368F690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1D0, &qword_22372D7F8);
    v3 = sub_22372B598();
    v4 = a1 + 32;

    while (1)
    {
      sub_223634890(v4, &v13, &qword_27D08F1D8, &qword_22372FBD0);
      v5 = v13;
      v6 = v14;
      result = sub_2236261A0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_223661514(&v15, (v3[7] + 32 * result));
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

unint64_t sub_22368F7C0()
{
  result = qword_27D08EF58;
  if (!qword_27D08EF58)
  {
    result = swift_getWitnessTable(aM, &type metadata for RemoteIFDispatchError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08EF58);
  }

  return result;
}

unint64_t sub_22368F814()
{
  result = qword_27D08EF60;
  if (!qword_27D08EF60)
  {
    result = swift_getWitnessTable(byte_22372FA8C, &type metadata for RemoteIFDispatchError.CompanionAIIsOffCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08EF60);
  }

  return result;
}

unint64_t sub_22368F868()
{
  result = qword_27D08EF70;
  if (!qword_27D08EF70)
  {
    result = swift_getWitnessTable(byte_22372FA3C, &type metadata for RemoteIFDispatchError.ProtocolIncompatibileCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08EF70);
  }

  return result;
}

unint64_t sub_22368F8BC()
{
  result = qword_27D08EF78;
  if (!qword_27D08EF78)
  {
    result = swift_getWitnessTable(asc_22372F9EC, &type metadata for RemoteIFDispatchError.FailedToEndSessionCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08EF78);
  }

  return result;
}

unint64_t sub_22368F910()
{
  result = qword_27D08EF80;
  if (!qword_27D08EF80)
  {
    result = swift_getWitnessTable(byte_22372F99C, &type metadata for RemoteIFDispatchError.CacheRemoteDeviceStateFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08EF80);
  }

  return result;
}

unint64_t sub_22368F964()
{
  result = qword_27D08EF88;
  if (!qword_27D08EF88)
  {
    result = swift_getWitnessTable(asc_22372F94C, &type metadata for RemoteIFDispatchError.InvalidMessageCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08EF88);
  }

  return result;
}

unint64_t sub_22368F9B8()
{
  result = qword_27D08EF90;
  if (!qword_27D08EF90)
  {
    result = swift_getWitnessTable(asc_22372F8FC, &type metadata for RemoteIFDispatchError.FailedToSendMessageToSessionClientCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08EF90);
  }

  return result;
}

unint64_t sub_22368FA0C()
{
  result = qword_27D08EF98;
  if (!qword_27D08EF98)
  {
    result = swift_getWitnessTable(asc_22372F8AC, &type metadata for RemoteIFDispatchError.FailedToCreateSessionClientCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08EF98);
  }

  return result;
}

unint64_t sub_22368FA60()
{
  result = qword_27D08EFA0;
  if (!qword_27D08EFA0)
  {
    result = swift_getWitnessTable(asc_22372F85C, &type metadata for RemoteIFDispatchError.SessionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08EFA0);
  }

  return result;
}

unint64_t sub_22368FAB4()
{
  result = qword_27D08EFA8;
  if (!qword_27D08EFA8)
  {
    result = swift_getWitnessTable(byte_22372F80C, &type metadata for RemoteIFDispatchError.FailedToStartGatewayCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08EFA8);
  }

  return result;
}

double keypath_getTm@<D0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;

  return result;
}

void sub_22368FBAC(uint64_t a1)
{
  sub_22368FC2C();
  if (v1 <= 0x3F)
  {
    sub_22368FC74(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22368FC2C()
{
  if (!qword_28132B638)
  {
    v0 = sub_223727408();
    if (!v1)
    {
      atomic_store(v0, &qword_28132B638);
    }
  }
}

void sub_22368FC74(uint64_t a1)
{
  if (!qword_28132B640)
  {
    sub_223727408();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28132B640);
    }
  }
}

uint64_t getEnumTagSinglePayload for RemoteIFDispatchError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteIFDispatchError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22368FEC4()
{
  result = qword_27D08F020;
  if (!qword_27D08F020)
  {
    result = swift_getWitnessTable(byte_22372F23C, &type metadata for RemoteIFDispatchError.CompanionAIIsOffCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F020);
  }

  return result;
}

unint64_t sub_22368FF1C()
{
  result = qword_27D08F028;
  if (!qword_27D08F028)
  {
    result = swift_getWitnessTable(asc_22372F2F4, &type metadata for RemoteIFDispatchError.ProtocolIncompatibileCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F028);
  }

  return result;
}

unint64_t sub_22368FF74()
{
  result = qword_27D08F030;
  if (!qword_27D08F030)
  {
    result = swift_getWitnessTable(byte_22372F3AC, &type metadata for RemoteIFDispatchError.FailedToEndSessionCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F030);
  }

  return result;
}

unint64_t sub_22368FFCC()
{
  result = qword_27D08F038;
  if (!qword_27D08F038)
  {
    result = swift_getWitnessTable(aE, &type metadata for RemoteIFDispatchError.CacheRemoteDeviceStateFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F038);
  }

  return result;
}

unint64_t sub_223690024()
{
  result = qword_27D08F040;
  if (!qword_27D08F040)
  {
    result = swift_getWitnessTable(asc_22372F56C, &type metadata for RemoteIFDispatchError.FailedToSendMessageToSessionClientCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F040);
  }

  return result;
}

unint64_t sub_22369007C()
{
  result = qword_27D08F048;
  if (!qword_27D08F048)
  {
    result = swift_getWitnessTable(byte_22372F624, &type metadata for RemoteIFDispatchError.FailedToCreateSessionClientCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F048);
  }

  return result;
}

unint64_t sub_2236900D4()
{
  result = qword_27D08F050;
  if (!qword_27D08F050)
  {
    result = swift_getWitnessTable(byte_22372F6DC, &type metadata for RemoteIFDispatchError.SessionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F050);
  }

  return result;
}

unint64_t sub_22369012C()
{
  result = qword_27D08F058;
  if (!qword_27D08F058)
  {
    result = swift_getWitnessTable(aP, &type metadata for RemoteIFDispatchError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F058);
  }

  return result;
}

unint64_t sub_223690184()
{
  result = qword_27D08F060;
  if (!qword_27D08F060)
  {
    result = swift_getWitnessTable(byte_22372F704, &type metadata for RemoteIFDispatchError.FailedToStartGatewayCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F060);
  }

  return result;
}

unint64_t sub_2236901DC()
{
  result = qword_27D08F068;
  if (!qword_27D08F068)
  {
    result = swift_getWitnessTable(byte_22372F72C, &type metadata for RemoteIFDispatchError.FailedToStartGatewayCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F068);
  }

  return result;
}

unint64_t sub_223690234()
{
  result = qword_27D08F070;
  if (!qword_27D08F070)
  {
    result = swift_getWitnessTable(aU, &type metadata for RemoteIFDispatchError.SessionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F070);
  }

  return result;
}

unint64_t sub_22369028C()
{
  result = qword_27D08F078;
  if (!qword_27D08F078)
  {
    result = swift_getWitnessTable(aE_0, &type metadata for RemoteIFDispatchError.SessionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F078);
  }

  return result;
}

unint64_t sub_2236902E4()
{
  result = qword_27D08F080;
  if (!qword_27D08F080)
  {
    result = swift_getWitnessTable(asc_22372F594, &type metadata for RemoteIFDispatchError.FailedToCreateSessionClientCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F080);
  }

  return result;
}

unint64_t sub_22369033C()
{
  result = qword_27D08F088;
  if (!qword_27D08F088)
  {
    result = swift_getWitnessTable(byte_22372F5BC, &type metadata for RemoteIFDispatchError.FailedToCreateSessionClientCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F088);
  }

  return result;
}

unint64_t sub_223690394()
{
  result = qword_27D08F090;
  if (!qword_27D08F090)
  {
    result = swift_getWitnessTable(aZ, &type metadata for RemoteIFDispatchError.FailedToSendMessageToSessionClientCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F090);
  }

  return result;
}

unint64_t sub_2236903EC()
{
  result = qword_27D08F098;
  if (!qword_27D08F098)
  {
    result = swift_getWitnessTable(aN, &type metadata for RemoteIFDispatchError.FailedToSendMessageToSessionClientCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F098);
  }

  return result;
}

unint64_t sub_223690444()
{
  result = qword_27D08F0A0;
  if (!qword_27D08F0A0)
  {
    result = swift_getWitnessTable(byte_22372F48C, &type metadata for RemoteIFDispatchError.InvalidMessageCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F0A0);
  }

  return result;
}

unint64_t sub_22369049C()
{
  result = qword_27D08F0A8;
  if (!qword_27D08F0A8)
  {
    result = swift_getWitnessTable(asc_22372F4B4, &type metadata for RemoteIFDispatchError.InvalidMessageCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F0A8);
  }

  return result;
}

unint64_t sub_2236904F4()
{
  result = qword_27D08F0B0;
  if (!qword_27D08F0B0)
  {
    result = swift_getWitnessTable(asc_22372F3D4, &type metadata for RemoteIFDispatchError.CacheRemoteDeviceStateFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F0B0);
  }

  return result;
}

unint64_t sub_22369054C()
{
  result = qword_27D08F0B8;
  if (!qword_27D08F0B8)
  {
    result = swift_getWitnessTable(asc_22372F3FC, &type metadata for RemoteIFDispatchError.CacheRemoteDeviceStateFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F0B8);
  }

  return result;
}

unint64_t sub_2236905A4()
{
  result = qword_27D08F0C0;
  if (!qword_27D08F0C0)
  {
    result = swift_getWitnessTable(byte_22372F31C, &type metadata for RemoteIFDispatchError.FailedToEndSessionCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F0C0);
  }

  return result;
}

unint64_t sub_2236905FC()
{
  result = qword_27D08F0C8;
  if (!qword_27D08F0C8)
  {
    result = swift_getWitnessTable(byte_22372F344, &type metadata for RemoteIFDispatchError.FailedToEndSessionCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F0C8);
  }

  return result;
}

unint64_t sub_223690654()
{
  result = qword_27D08F0D0;
  if (!qword_27D08F0D0)
  {
    result = swift_getWitnessTable(asc_22372F264, &type metadata for RemoteIFDispatchError.ProtocolIncompatibileCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F0D0);
  }

  return result;
}

unint64_t sub_2236906AC()
{
  result = qword_27D08F0D8;
  if (!qword_27D08F0D8)
  {
    result = swift_getWitnessTable(aM_0, &type metadata for RemoteIFDispatchError.ProtocolIncompatibileCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F0D8);
  }

  return result;
}

unint64_t sub_223690704()
{
  result = qword_27D08F0E0;
  if (!qword_27D08F0E0)
  {
    result = swift_getWitnessTable(byte_22372F1AC, &type metadata for RemoteIFDispatchError.CompanionAIIsOffCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F0E0);
  }

  return result;
}

unint64_t sub_22369075C()
{
  result = qword_27D08F0E8;
  if (!qword_27D08F0E8)
  {
    result = swift_getWitnessTable(byte_22372F1D4, &type metadata for RemoteIFDispatchError.CompanionAIIsOffCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F0E8);
  }

  return result;
}

unint64_t sub_2236907B4()
{
  result = qword_27D08F0F0;
  if (!qword_27D08F0F0)
  {
    result = swift_getWitnessTable(aM_1, &type metadata for RemoteIFDispatchError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F0F0);
  }

  return result;
}

unint64_t sub_22369080C()
{
  result = qword_27D08F0F8;
  if (!qword_27D08F0F8)
  {
    result = swift_getWitnessTable(asc_22372F77C, &type metadata for RemoteIFDispatchError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F0F8);
  }

  return result;
}

unint64_t sub_223690860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F168, &unk_22372FB80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F170, &qword_22372D7D8);
    v8 = sub_22372B598();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_223634890(v10, v6, &qword_27D08F168, &unk_22372FB80);
      result = sub_2236AF7B0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22372A548();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_223690A48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F160, &qword_223730070);
    v3 = sub_22372B598();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2236261A0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_223690B44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F108, &qword_22372FB38);
    v3 = sub_22372B598();
    v4 = a1 + 32;

    while (1)
    {
      sub_223634890(v4, v13, &unk_27D08F110, &unk_22372FB40);
      result = sub_2236AF848(v13);
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
      result = sub_223661514(&v15, (v3[7] + 32 * result));
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

unint64_t sub_223690C80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F188, &qword_22372FB98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EB00, &qword_22372D7D0);
    v8 = sub_22372B598();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_223634890(v10, v6, &qword_27D08F188, &qword_22372FB98);
      v12 = *v6;
      result = sub_2236AF76C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

uint64_t sub_223690E68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000002237353E0 == a2;
  if (v3 || (sub_22372B6E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E6E6F6973736573 && a2 == 0xEF646E756F46746FLL || (sub_22372B6E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000223735400 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000223735420 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D64696C61766E69 && a2 == 0xEE00656761737365 || (sub_22372B6E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000223735450 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000223735470 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000223735490 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002237354B0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_22372B6E8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_223691154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2236911BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_223691224(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22369126C(uint64_t a1)
{
  v2 = type metadata accessor for RemoteIFDispatchError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2236912E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_223624EA4;

  return v9(a1, a2, a3);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_223691424(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22369146C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_2236914C4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, char a8, char a9, unint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  v79 = a2;
  v80 = a4;
  v21 = sub_223727408();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  result = [a1 userEphemeralId];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v27 = result;
  sub_2237273E8();

  v28 = [objc_allocWithZone(MEMORY[0x277D596D8]) init];
  if (v28)
  {
    v29 = v28;
    v74 = a3;
    v77 = v25;
    v78 = v22;
    v76 = a15;
    [v28 setIsMultiUser_];
    [v29 setNlRerunLatencyInMs_];
    sub_223692698(a6, a7, a11);
    sub_223630584(0, &qword_27D08F1E8, 0x277D59708);
    v30 = sub_22372B118();

    [v29 setUserScores_];

    [v29 setIsOutsider_];
    [v29 setIsSelectedUserPartOfMultipleHomes_];
    if (a10 >= 5)
    {
      v31 = 0;
    }

    else
    {
      v31 = dword_22372FC9C[a10];
    }

    [v29 setORCHUserIdentityClassification_];
    v38 = sub_22372A518();
    v40 = v78;
    if (*(a11 + 16))
    {
      sub_2236261A0(v38, v39);
      v42 = v41;

      v43 = v77;
      if ((v42 & 1) == 0)
      {
        v44 = 0;
        v45 = v80;
LABEL_17:
        v46 = a14;
        [v29 setSelectedSharedUserId_];

        v47 = sub_22372A518();
        v49 = v76;
        if (*(v76 + 16))
        {
          v80 = a14;
          v50 = v45;
          v51 = v43;
          v52 = v21;
          sub_2236261A0(v47, v48);
          v53 = v49;
          v55 = v54;

          if ((v55 & 1) == 0)
          {
            v56 = 0;
            v49 = v53;
            v21 = v52;
            v43 = v51;
            v45 = v50;
            v46 = v80;
            goto LABEL_23;
          }

          v56 = sub_22372AFD8();
          v49 = v53;
          v21 = v52;
          v43 = v51;
          v45 = v50;
          v46 = v80;
        }

        else
        {
          v56 = 0;
        }

LABEL_23:
        [v29 setSelectedloggableUserIdHash_];

        v57 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v58 = sub_2237273C8();
        v59 = [v57 initWithNSUUID_];

        [v29 setSelectedUserEphemeralId_];
        if (v46)
        {
          v60 = v46;
          v61 = sub_223728C28();
          if ((v62 & 1) == 0)
          {
            if (v61 > 4)
            {
              v63 = 0;
            }

            else
            {
              v63 = dword_22372FC9C[v61];
            }

            [v29 setVoiceIdClassification_];
          }

          sub_223693084(v60, v49);
          v64 = sub_22372B118();

          [v29 setVoiceIdScores_];
        }

        v65 = [objc_allocWithZone(MEMORY[0x277D596C0]) init];
        if (v65)
        {
          v66 = v65;
          [v65 setEnded_];
          v67 = v74;
          v68 = sub_2236924EC(v74, v45, v66);

          result = (*(v40 + 8))(v43, v21);
          if (v68)
          {
            return sub_223691C08(v67, v45, v75);
          }
        }

        else
        {
          if (qword_27D08E2C8 != -1)
          {
            swift_once();
          }

          v69 = sub_22372AC98();
          __swift_project_value_buffer(v69, qword_27D097070);

          v70 = sub_22372AC88();
          v71 = sub_22372B278();

          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v81 = v73;
            *v72 = 136315138;
            *(v72 + 4) = sub_223623274(v74, v45, &v81);
            _os_log_impl(&dword_223620000, v70, v71, "Instrumentation: Failed to create MUX bridge context message for request ended for : %s", v72, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v73);
            MEMORY[0x223DE8A80](v73, -1, -1);
            MEMORY[0x223DE8A80](v72, -1, -1);
          }

          return (*(v40 + 8))(v43, v21);
        }

        return result;
      }

      v44 = sub_22372AFD8();
    }

    else
    {
      v44 = 0;
      v43 = v77;
    }

    v45 = v80;

    goto LABEL_17;
  }

  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v32 = sub_22372AC98();
  __swift_project_value_buffer(v32, qword_27D097070);
  v33 = v80;

  v34 = sub_22372AC88();
  v35 = sub_22372B278();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v81 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_223623274(a3, v33, &v81);
    _os_log_impl(&dword_223620000, v34, v35, "Instrumentation: Failed to create MUXRequestEnded message for : %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x223DE8A80](v37, -1, -1);
    MEMORY[0x223DE8A80](v36, -1, -1);
  }

  return (*(v22 + 8))(v25, v21);
}

id sub_223691C08(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v91 = a1;
  v7 = sub_223727398();
  v89 = *(v7 - 8);
  v90 = v7;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v83 - v13;
  v92 = sub_223727408();
  v15 = *(v92 - 1);
  v17 = MEMORY[0x28223BE20](v92, v16);
  v88 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = v83 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = v83 - v24;
  v26 = [objc_allocWithZone(MEMORY[0x277D596C8]) init];
  if (!v26)
  {
    if (qword_27D08E2C8 == -1)
    {
LABEL_17:
      v62 = sub_22372AC98();
      __swift_project_value_buffer(v62, qword_27D097070);

      v63 = sub_22372AC88();
      v64 = sub_22372B278();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v67 = a2;
        v68 = v66;
        v93 = v66;
        *v65 = 136315138;
        *(v65 + 4) = sub_223623274(v91, v67, &v93);
        _os_log_impl(&dword_223620000, v63, v64, "Instrumentation: Failed to create MUXEphemeralToAggregationIdentifierMap message for : %s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        MEMORY[0x223DE8A80](v68, -1, -1);
        MEMORY[0x223DE8A80](v65, -1, -1);
      }

      return 0;
    }

LABEL_38:
    swift_once();
    goto LABEL_17;
  }

  v27 = v26;
  v87 = [objc_allocWithZone(MEMORY[0x277D596D0]) init];
  if (!v87)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v69 = sub_22372AC98();
    __swift_project_value_buffer(v69, qword_27D097070);

    v70 = sub_22372AC88();
    v71 = sub_22372B278();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v74 = a2;
      v75 = v73;
      v93 = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_223623274(v91, v74, &v93);
      _os_log_impl(&dword_223620000, v70, v71, "Instrumentation: Failed to create MUXEphemeralToAggregationIdentifierMapContext message for : %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      MEMORY[0x223DE8A80](v75, -1, -1);
      MEMORY[0x223DE8A80](v72, -1, -1);
    }

    return 0;
  }

  v86 = v11;
  v83[1] = v4;
  v84 = a2;
  result = [a3 userEphemeralId];
  if (!result)
  {
    __break(1u);
    goto LABEL_40;
  }

  v29 = result;
  sub_2237273E8();

  v30 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v31 = sub_2237273C8();
  v32 = [v30 initWithNSUUID_];

  v35 = *(v15 + 8);
  v33 = v15 + 8;
  v34 = v35;
  v36 = v92;
  v35(v25, v92);
  [v27 setUserEphemeralId_];

  result = [a3 userAggregationId];
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v37 = result;
  sub_2237273E8();

  v38 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v39 = sub_2237273C8();
  v40 = [v38 initWithNSUUID_];

  v85 = v33;
  v34(v22, v36);
  [v27 setUserAggregationId_];

  result = [a3 userAggregationIdEffectiveFrom];
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v41 = result;
  sub_223727378();

  sub_223727368();
  v43 = v42;
  a2 = *(v89 + 8);
  v44 = v14;
  v45 = v90;
  (a2)(v44, v90);
  v46 = v43 * 1000.0;
  v47 = v86;
  if (COERCE__INT64(fabs(v43 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v46 <= -1.0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v46 >= 1.84467441e19)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v27 setUserAggregationIdRotationTimestampMs_];
  result = [a3 userAggregationIdExpiration];
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v48 = result;
  sub_223727378();

  sub_223727368();
  v50 = v49;
  (a2)(v47, v45);
  v51 = v50 * 1000.0;
  a2 = v92;
  if (COERCE__INT64(fabs(v50 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v51 <= -1.0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v51 >= 1.84467441e19)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v27 setUserAggregationIdExpirationTimestampMs_];
  result = [a3 deviceAggregationId];
  if (result)
  {
    v52 = result;
    v53 = v88;
    sub_2237273E8();

    v54 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v55 = sub_2237273C8();
    v56 = [v54 initWithNSUUID_];

    v34(v53, a2);
    [v27 setDeviceAggregationId_];

    v57 = v87;
    [v87 setSelectedUser_];
    v58 = [objc_allocWithZone(MEMORY[0x277D596C0]) init];
    v59 = v84;
    if (v58)
    {
      v60 = v58;
      [v58 setEphemeralToAggregationIdentifierMap_];
      v61 = sub_2236924EC(v91, v59, v60);

      return v61;
    }

    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v76 = sub_22372AC98();
    __swift_project_value_buffer(v76, qword_27D097070);

    v77 = sub_22372AC88();
    v78 = sub_22372B278();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v81 = v59;
      v82 = v80;
      v93 = v80;
      *v79 = 136315138;
      *(v79 + 4) = sub_223623274(v91, v81, &v93);
      _os_log_impl(&dword_223620000, v77, v78, "Instrumentation: Failed to create MUX bridge context message for ephemeral to aggregation identifier map for : %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x223DE8A80](v82, -1, -1);
      MEMORY[0x223DE8A80](v79, -1, -1);
    }

    return 0;
  }

LABEL_43:
  __break(1u);
  return result;
}

BOOL sub_2236924EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_22372A878();
  v8 = v7;
  if (v7)
  {
    [v7 setMuxBridgeContext_];
    [*(v3 + 16) emitMessage_];
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v9 = sub_22372AC98();
    __swift_project_value_buffer(v9, qword_27D097070);

    v10 = sub_22372AC88();
    v11 = sub_22372B278();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_223623274(a1, a2, &v15);
      _os_log_impl(&dword_223620000, v10, v11, "Instrumentation: Failed to create wrapper event message for MUXBridgeContext message for : %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x223DE8A80](v13, -1, -1);
      MEMORY[0x223DE8A80](v12, -1, -1);
    }
  }

  return v8 != 0;
}

id sub_223692698(void *a1, uint64_t a2, uint64_t a3)
{
  v87 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v76 - v7;
  v9 = sub_22372A548();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = MEMORY[0x277D84F90];
  v14 = 0x27D08E000uLL;
  if (!a1)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v48 = sub_22372AC98();
    __swift_project_value_buffer(v48, qword_27D097070);
    v47 = sub_22372AC88();
    v49 = sub_22372B278();
    if (os_log_type_enabled(v47, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_223620000, v47, v49, "Unable to log voice id score card as it was not supplied.", v50, 2u);
      MEMORY[0x223DE8A80](v50, -1, -1);
    }

    v20 = MEMORY[0x277D84F90];
LABEL_30:

    sub_22369352C(a2, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_22369359C(v8);
      if (*(v14 + 712) == -1)
      {
LABEL_32:
        v51 = sub_22372AC98();
        __swift_project_value_buffer(v51, qword_27D097070);
        v52 = sub_22372AC88();
        v53 = sub_22372B278();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_223620000, v52, v53, "Unable to log unknown user score as unknown user id was not supplied.", v54, 2u);
          MEMORY[0x223DE8A80](v54, -1, -1);
        }

        return v20;
      }

LABEL_58:
      swift_once();
      goto LABEL_32;
    }

    (*(v10 + 32))(v13, v8, v9);
    v55 = [objc_allocWithZone(MEMORY[0x277D59708]) init];
    if (!v55)
    {
      if (*(v14 + 712) != -1)
      {
        swift_once();
      }

      v62 = sub_22372AC98();
      __swift_project_value_buffer(v62, qword_27D097070);
      v63 = sub_22372AC88();
      v64 = sub_22372B278();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_223620000, v63, v64, "Unable to create ORCHSchemaORCHMultiUserScore object for unknown user, hence instrumentation will have gaps.", v65, 2u);
        MEMORY[0x223DE8A80](v65, -1, -1);
      }

      (*(v10 + 8))(v13, v9);
      return v20;
    }

    v56 = v55;
    v57 = sub_22372A518();
    if (*(v87 + 16))
    {
      sub_2236261A0(v57, v58);
      v60 = v59;

      if ((v60 & 1) == 0)
      {
        v61 = 0;
        goto LABEL_47;
      }

      v61 = sub_22372AFD8();
    }

    else
    {
      v61 = 0;
    }

LABEL_47:
    [v56 setLoggableSharedUserId_];

    [v56 setScore_];
    v66 = v56;
    MEMORY[0x223DE7B50]();
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22372B148();
    }

    sub_22372B158();

    (*(v10 + 8))(v13, v9);
    return v90;
  }

  v77 = a2;
  v78 = v8;
  v79 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v10;
  v81 = v9;
  v82 = a1;
  result = [v82 spIdKnownUserScores];
  if (result)
  {
    v16 = result;
    sub_223630584(0, &qword_27D08EAE0, 0x277CCABB0);
    v17 = sub_22372AF58();

    v19 = 0;
    v20 = v17 + 64;
    v21 = 1 << *(v17 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v17 + 64);
    v24 = (v21 + 63) >> 6;
    v83 = MEMORY[0x277D84F90];
    *&v18 = 136315138;
    v84 = v18;
    v25 = v87;
    v85 = v17;
    v86 = v24;
LABEL_6:
    v26 = v19;
    while (v23)
    {
      v19 = v26;
LABEL_14:
      v27 = __clz(__rbit64(v23)) | (v19 << 6);
      v28 = (*(v17 + 48) + 16 * v27);
      v30 = *v28;
      v29 = v28[1];
      v31 = *(*(v17 + 56) + 8 * v27);
      v32 = objc_allocWithZone(MEMORY[0x277D59708]);

      v33 = v31;
      v34 = [v32 init];
      if (!v34)
      {
        v67 = v33;
        if (qword_27D08E2C8 != -1)
        {
          swift_once();
        }

        v68 = sub_22372AC98();
        __swift_project_value_buffer(v68, qword_27D097070);

        v69 = sub_22372AC88();
        v70 = sub_22372B278();

        v71 = os_log_type_enabled(v69, v70);
        v72 = v82;
        v20 = v83;
        if (v71)
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v89 = v74;
          *v73 = v84;
          v75 = sub_223623274(v30, v29, &v89);

          *(v73 + 4) = v75;
          _os_log_impl(&dword_223620000, v69, v70, "Unable to create ORCHSchemaORCHMultiUserScore object for user id : %s, hence instrumentation will have gaps. Abandoning all logging.", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v74);
          MEMORY[0x223DE8A80](v74, -1, -1);
          MEMORY[0x223DE8A80](v73, -1, -1);
        }

        else
        {
        }

        return v20;
      }

      v35 = v34;
      v23 &= v23 - 1;
      v88 = v33;
      [v34 setScore_];
      if (*(v25 + 16))
      {
        sub_2236261A0(v30, v29);
        if (v36)
        {

          v45 = sub_22372AFD8();

          [v35 setLoggableSharedUserId_];

          v46 = v35;
          MEMORY[0x223DE7B50]();
          if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22372B148();
          }

          sub_22372B158();

          v83 = v90;
          v24 = v86;
          goto LABEL_6;
        }
      }

      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v37 = sub_22372AC98();
      __swift_project_value_buffer(v37, qword_27D097070);

      v38 = sub_22372AC88();
      v39 = sub_22372B278();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v89 = v41;
        *v40 = v84;
        v42 = sub_223623274(v30, v29, &v89);

        *(v40 + 4) = v42;
        _os_log_impl(&dword_223620000, v38, v39, "Unable to find the loggable shared user id for user: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        v43 = v41;
        v17 = v85;
        MEMORY[0x223DE8A80](v43, -1, -1);
        v44 = v40;
        v25 = v87;
        MEMORY[0x223DE8A80](v44, -1, -1);
      }

      else
      {
      }

      v26 = v19;
      v24 = v86;
    }

    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v10 = v80;
        v9 = v81;
        v8 = v78;
        v13 = v79;
        v47 = v82;
        v20 = v83;
        a2 = v77;
        v14 = 0x27D08E000;
        goto LABEL_30;
      }

      v23 = *(v20 + 8 * v19);
      ++v26;
      if (v23)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

  __break(1u);
  return result;
}

void sub_223693084(uint64_t a1, uint64_t a2)
{
  v43 = MEMORY[0x277D84F90];
  v2 = sub_223728BF8();
  v3 = v2;
  v4 = 0;
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = 0x277D59000uLL;
  v39 = v2;
  while (1)
  {
    v11 = v4;
    if (!v8)
    {
      break;
    }

LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v3 + 56) + 8 * v13);
    v18 = objc_allocWithZone(*(v10 + 1800));

    v19 = [v18 init];
    if (v19)
    {
      v40 = v19;
      if (*(a2 + 16) && (sub_2236261A0(v15, v16), (v20 & 1) != 0))
      {

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (HIDWORD(v17))
        {
          goto LABEL_31;
        }

        [v40 setScore_];
        v37 = sub_22372AFD8();

        [v40 setLoggableUserIdHash_];

        v38 = v40;
        MEMORY[0x223DE7B50]();
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22372B148();
          v10 = 0x277D59000;
        }

        sub_22372B158();
      }

      else
      {
        if (qword_27D08E2C8 != -1)
        {
          swift_once();
        }

        v21 = sub_22372AC98();
        __swift_project_value_buffer(v21, qword_27D097070);

        v22 = sub_22372AC88();
        v23 = sub_22372B268();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v42 = v25;
          *v24 = 136315138;
          v26 = sub_223623274(v15, v16, &v42);

          *(v24 + 4) = v26;
          _os_log_impl(&dword_223620000, v22, v23, "Cannot find userIdHash for user id : %s,  instrumentation will have gaps.", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v25);
          v27 = v25;
          v10 = 0x277D59000;
          MEMORY[0x223DE8A80](v27, -1, -1);
          v28 = v24;
          v3 = v39;
          MEMORY[0x223DE8A80](v28, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v29 = sub_22372AC98();
      __swift_project_value_buffer(v29, qword_27D097070);

      v30 = sub_22372AC88();
      v31 = sub_22372B268();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v42 = v33;
        *v32 = 136315138;
        v34 = sub_223623274(v15, v16, &v42);

        *(v32 + 4) = v34;
        _os_log_impl(&dword_223620000, v30, v31, "Unable to create ORCHSchemaORCHMultiUserScore object for user id : %s, instrumentation will have gaps.", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        v35 = v33;
        v3 = v39;
        MEMORY[0x223DE8A80](v35, -1, -1);
        v36 = v32;
        v10 = 0x277D59000;
        MEMORY[0x223DE8A80](v36, -1, -1);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v4);
    ++v11;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_22369352C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22369359C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223693604@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1F0, &qword_22372FCB0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v13 - v4;
  sub_22372ACB8();
  v6 = sub_22372AE58();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_223626478(v5, &qword_27D08F1F0, &qword_22372FCB0);
    sub_22372ACC8();
    v8 = sub_2237279C8();
    v10 = v9;

    if (v8 == 0x505F6E6F6D6D6F63 && v10 == 0xED00006E6F737265 || (sub_22372B6E8() & 1) != 0)
    {

      sub_22372ACC8();
      sub_223693930(a1);
    }

    if (v8 == 0x445F6E6F6D6D6F63 && v10 == 0xEB00000000657461 || (sub_22372B6E8() & 1) != 0)
    {

      sub_22372ACC8();
      sub_223694214(a1);
    }

    if (v8 == 0x445F6E6F6D6D6F63 && v10 == 0xEF656D6954657461 || (sub_22372B6E8() & 1) != 0)
    {

      sub_22372ACC8();
      sub_2236948F8(a1);
    }

    if (v8 == 0xD000000000000012 && 0x80000002237354F0 == v10)
    {

LABEL_21:
      sub_22372ACC8();
      sub_223695204(a1);
    }

    v12 = sub_22372B6E8();

    if (v12)
    {
      goto LABEL_21;
    }

    return (*(v7 + 56))(a1, 1, 1, v6);
  }

  else
  {
    (*(v7 + 32))(a1, v5, v6);
    return (*(v7 + 56))(a1, 0, 1, v6);
  }
}

uint64_t sub_223693930@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1F8, &qword_22372FCB8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v65 - v5;
  v7 = sub_2237277B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F200, &qword_22372FCC0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v65 - v18;
  sub_223727888();
  sub_2237278F8();
  v20 = v74;
  v72 = v74;
  v73 = v7;
  v71 = a2;
  if (v74)
  {

    v21 = sub_223727878();
    v70 = v22;

    v23 = sub_223727868();

    if (v23)
    {
      sub_223727788();

      v24 = sub_2237279C8();
      v26 = v25;

      v66 = v6;
      v67 = v19;
      v68 = v21;
      v65 = v16;
      if (v24 == 0xD000000000000013 && 0x8000000223735530 == v26 || (sub_22372B6E8() & 1) != 0)
      {

        v27 = sub_223727868();

        if (v27)
        {
          sub_223727988();
          v29 = v28;

          v30 = objc_allocWithZone(MEMORY[0x277CD3E98]);
          if (v29)
          {
            v31 = v30;
            v32 = sub_22372AFD8();

            v30 = v31;
LABEL_12:
            v33 = [v30 initWithValue:v32 type:{1, v65, v66}];
LABEL_13:
            v34 = v33;

            goto LABEL_24;
          }
        }

        else
        {
          v30 = objc_allocWithZone(MEMORY[0x277CD3E98]);
        }

        v32 = 0;
        goto LABEL_12;
      }

      v20 = v72;
      if (v24 == 0xD000000000000012 && 0x8000000223735550 == v26)
      {

        goto LABEL_18;
      }

      v35 = sub_22372B6E8();

      if (v35)
      {
LABEL_18:

        v36 = sub_223727868();

        if (v36)
        {
          sub_223727988();
          v38 = v37;

          v39 = objc_allocWithZone(MEMORY[0x277CD3E98]);
          if (v38)
          {
            v40 = v39;
            v32 = sub_22372AFD8();

            v39 = v40;
LABEL_49:
            v33 = [v39 initWithValue:v32 type:{2, v65, v66}];
            goto LABEL_13;
          }
        }

        else
        {
          v39 = objc_allocWithZone(MEMORY[0x277CD3E98]);
        }

        v32 = 0;
        goto LABEL_49;
      }
    }

    v7 = v73;
  }

  else
  {
    v21 = 0;
    v70 = 0;
  }

  v34 = [objc_allocWithZone(MEMORY[0x277CD3E98]) initWithValue:0 type:0];
  v68 = v21;
  if (!v20)
  {
    (*(v8 + 56))(v19, 1, 1, v7);
    v69 = v34;
    goto LABEL_36;
  }

  v65 = v16;
  v66 = v6;
  v67 = v19;
LABEL_24:

  v69 = v34;
  v41 = sub_223727778();

  v43 = *(v41 + 16);
  v7 = v73;
  if (!v43)
  {
LABEL_31:

    v19 = v67;
    (*(v8 + 56))(v67, 1, 1, v7);
LABEL_35:
    v20 = v72;
    v16 = v65;
    v6 = v66;
LABEL_36:

    sub_22369539C(v20, v6);
    v47 = sub_2237272D8();
    v48 = *(v47 - 8);
    (*(v48 + 56))(v6, 0, 1, v47);
    sub_223695950(v19, v16);
    if ((*(v8 + 48))(v16, 1, v7) == 1)
    {
      sub_223626478(v16, &qword_27D08F200, &qword_22372FCC0);
      v49 = 0;
    }

    else
    {
      sub_2237277A8();
      v50 = v16;
      v49 = v51;
      (*(v8 + 8))(v50, v7);
    }

    v52 = v70;
    if ((*(v48 + 48))(v6, 1, v47) == 1)
    {
      v53 = 0;
      v54 = v69;
      if (v52)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v53 = sub_2237272C8();
      (*(v48 + 8))(v6, v47);
      v54 = v69;
      if (v52)
      {
LABEL_41:
        v55 = sub_22372AFD8();

        if (v49)
        {
LABEL_42:
          v56 = sub_22372AFD8();

LABEL_46:
          [objc_allocWithZone(MEMORY[0x277CD3E90]) initWithPersonHandle:v54 nameComponents:v53 displayName:v55 image:0 contactIdentifier:v56 customIdentifier:0];

          v57 = sub_22372AE48();
          v58 = swift_allocBox();
          v60 = v59;
          sub_22372AE38();

          sub_223626478(v19, &qword_27D08F200, &qword_22372FCC0);
          (*(*(v57 - 8) + 104))(v60, *MEMORY[0x277D729B0], v57);
          v61 = v71;
          *v71 = v58;
          v62 = *MEMORY[0x277D72A58];
          v63 = sub_22372AE58();
          v64 = *(v63 - 8);
          (*(v64 + 104))(v61, v62, v63);
          return (*(v64 + 56))(v61, 0, 1, v63);
        }

LABEL_45:
        v56 = 0;
        goto LABEL_46;
      }
    }

    v55 = 0;
    if (v49)
    {
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v44 = 0;
  while (v44 < *(v41 + 16))
  {
    (*(v8 + 16))(v11, v41 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v44, v7);
    if (sub_223727798() == 0xD00000000000001BLL && 0x8000000223735510 == v45)
    {

LABEL_34:

      v7 = v73;
      v19 = v67;
      (*(v8 + 32))(v67, v11, v73);
      (*(v8 + 56))(v19, 0, 1, v7);
      goto LABEL_35;
    }

    v46 = sub_22372B6E8();

    if (v46)
    {
      goto LABEL_34;
    }

    ++v44;
    v7 = v73;
    result = (*(v8 + 8))(v11, v73);
    if (v43 == v44)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223694214@<X0>(uint64_t *a2@<X8>)
{
  v51 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F208, &qword_22372FCC8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v45 - v4;
  v50 = sub_223727398();
  v6 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v7);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_223727478();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F210, &qword_22372FCD0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F218, &qword_22372FCD8);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v45 - v20;
  v22 = sub_223727298();
  v46 = *(v22 - 8);
  v47 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2237277F8();
  sub_2237278F8();
  v26 = v52;
  v27 = *(v10 + 56);
  v49 = v9;
  v27(v21, 1, 1, v9);
  v28 = sub_2237274A8();
  (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
  sub_223727278();
  if (v26)
  {

    v29 = sub_2237277E8();

    if (v29)
    {
      sub_223727898();
    }

    sub_223727238();

    v30 = sub_2237277D8();

    if (v30)
    {
      sub_223727898();
    }

    sub_223727248();

    v31 = sub_2237277D8();

    if (v31)
    {
      sub_223727898();
    }
  }

  else
  {
    sub_223727238();
    sub_223727248();
  }

  sub_223727218();
  sub_223727468();
  sub_223727458();
  v32 = *(v6 + 48);
  v33 = v50;
  if (v32(v5, 1, v50) == 1)
  {
    v34 = v48;
    sub_223727388();

    (*(v10 + 8))(v13, v49);
    (*(v46 + 8))(v25, v47);
    v35 = v6;
    if (v32(v5, 1, v33) != 1)
    {
      sub_223626478(v5, &qword_27D08F208, &qword_22372FCC8);
    }
  }

  else
  {

    (*(v10 + 8))(v13, v49);
    (*(v46 + 8))(v25, v47);
    v34 = v48;
    (*(v6 + 32))(v48, v5, v33);
    v35 = v6;
  }

  v36 = sub_22372AE48();
  v37 = swift_allocBox();
  v39 = v38;
  (*(v35 + 32))(v38, v34, v33);
  (*(*(v36 - 8) + 104))(v39, *MEMORY[0x277D72990], v36);
  v40 = v51;
  *v51 = v37;
  v41 = *MEMORY[0x277D72A58];
  v42 = sub_22372AE58();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v40, v41, v42);
  return (*(v43 + 56))(v40, 0, 1, v42);
}

uint64_t sub_2236948F8@<X0>(uint64_t *a2@<X8>)
{
  v74 = a2;
  v2 = sub_2237274A8();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v69 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v73 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F210, &qword_22372FCD0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v68 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F218, &qword_22372FCD8);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v68 - v19;
  v21 = sub_223727298();
  v71 = *(v21 - 8);
  v72 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2237278D8();
  sub_2237278F8();
  v25 = v75;
  v26 = sub_223727478();
  (*(*(v26 - 8) + 56))(v20, 1, 1, v26);
  v70 = *(v3 + 56);
  v70(v16, 1, 1, v2);
  sub_223727278();
  if (!v25)
  {
    sub_223727238();
    sub_223727248();
    sub_223727218();
    sub_223727228();
    sub_223727258();
    sub_223727268();
LABEL_25:

    goto LABEL_26;
  }

  v27 = sub_2237278B8();

  if (v27)
  {
    v28 = sub_2237277E8();

    if (v28)
    {
      sub_223727898();
    }
  }

  sub_223727238();

  v29 = sub_2237278B8();

  if (v29)
  {
    v30 = sub_2237277D8();

    if (v30)
    {
      sub_223727898();
    }
  }

  sub_223727248();

  v31 = sub_2237278B8();

  if (v31)
  {
    v32 = sub_2237277D8();

    if (v32)
    {
      sub_223727898();
    }
  }

  sub_223727218();

  v33 = sub_2237278C8();

  if (v33)
  {
    v34 = sub_223727808();

    if (v34)
    {
      sub_223727898();
    }
  }

  sub_223727228();

  v35 = sub_2237278C8();

  if (v35)
  {
    v36 = sub_223727818();

    if (v36)
    {
      sub_223727898();
    }
  }

  sub_223727258();

  v37 = sub_2237278C8();

  if (v37)
  {
    v38 = sub_223727828();

    if (v38)
    {
      sub_223727898();
    }
  }

  sub_223727268();

  v39 = sub_2237278C8();

  if (!v39)
  {
    goto LABEL_25;
  }

  v40 = sub_223727838();

  if (!v40)
  {
    goto LABEL_25;
  }

  sub_2237278E8();
  v42 = v41;

  if (!v42)
  {
    goto LABEL_25;
  }

LABEL_26:
  v43 = objc_allocWithZone(MEMORY[0x277CBEBB0]);
  v44 = sub_22372AFD8();

  v45 = [v43 initWithName_];

  if (v45)
  {
    v46 = v69;
    sub_223727488();

    v47 = *(v3 + 32);
    v47(v13, v46, v2);
    v48 = v13;
    v49 = v2;
    v69 = v25;
    v50 = v24;
    v51 = v2;
    v52 = v16;
    v53 = v3;
    v54 = v13;
    v55 = v70;
    v70(v48, 0, 1, v49);
    v56 = v73;
    v57 = v54;
    v3 = v53;
    v16 = v52;
    v2 = v51;
    v24 = v50;
    v47(v73, v57, v2);
    v58 = v55;
  }

  else
  {
    v58 = v70;
    v70(v13, 1, 1, v2);
    v56 = v73;
    sub_223727498();
    if ((*(v3 + 48))(v13, 1, v2) != 1)
    {
      sub_223626478(v13, &qword_27D08F210, &qword_22372FCD0);
    }
  }

  (*(v3 + 16))(v16, v56, v2);
  v58(v16, 0, 1, v2);
  sub_223727288();

  (*(v3 + 8))(v56, v2);
  v59 = sub_22372AE48();
  v60 = swift_allocBox();
  v62 = v61;
  (*(v71 + 32))(v61, v24, v72);
  (*(*(v59 - 8) + 104))(v62, *MEMORY[0x277D72958], v59);
  v63 = v74;
  *v74 = v60;
  v64 = *MEMORY[0x277D72A58];
  v65 = sub_22372AE58();
  v66 = *(v65 - 8);
  (*(v66 + 104))(v63, v64, v65);
  return (*(v66 + 56))(v63, 0, 1, v65);
}

uint64_t sub_223695204@<X0>(uint64_t *a2@<X8>)
{
  sub_223727978();
  sub_2237278F8();
  if (v14 && (, v3 = sub_223727968(), , v3) && (v4 = sub_223727998(), v6 = v5, , v6))
  {
  }

  else
  {

    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = sub_22372AE48();
  v8 = swift_allocBox();
  *v9 = v4;
  v9[1] = v6;
  (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D729B8], v7);
  *a2 = v8;
  v10 = *MEMORY[0x277D72A58];
  v11 = sub_22372AE58();
  v12 = *(v11 - 8);
  (*(v12 + 104))(a2, v10, v11);
  return (*(v12 + 56))(a2, 0, 1, v11);
}

uint64_t sub_22369539C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1F8, &qword_22372FCB8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v54 = &v43 - v5;
  v6 = sub_2237272D8();
  v56 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v55 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v8;
  if (a1)
  {

    v10 = sub_223727858();

    if (v10)
    {
      v11 = sub_223727948();
      v50 = v12;
      v51 = v11;
    }

    else
    {
      v50 = 0;
      v51 = 0;
    }

    v13 = sub_223727858();

    if (v13)
    {
      sub_223727918();
    }

    v14 = sub_223727858();

    if (v14)
    {
      v15 = sub_223727938();
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_223727858();

    if (v16)
    {
      v17 = sub_223727928();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v48 = v17;
    v49 = v19;

    v20 = sub_223727858();

    if (v20)
    {
      sub_223727958();
    }

    v21 = sub_223727858();

    v45 = v15;
    if (v21)
    {
      v22 = sub_223727908();
      v46 = v23;
      v47 = v22;
    }

    else
    {
      v46 = 0;
      v47 = 0;
    }

    v6 = v53;
  }

  else
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v45 = 0;
  }

  v24 = *(v56 + 56);
  v25 = v54;
  v50 = v56 + 56;
  v51 = v24;
  v24(v54, 1, 1, v6);
  sub_2237272B8();
  if (a1)
  {

    v26 = sub_223727848();

    if (v26)
    {
      sub_223727948();
    }

    v25 = v54;

    v27 = sub_223727848();

    if (v27)
    {
      sub_223727918();
      v49 = v28;
    }

    else
    {
      v49 = 0;
    }

    v29 = sub_223727848();

    if (v29)
    {
      v30 = sub_223727938();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v33 = sub_223727848();

    if (v33)
    {
      v34 = sub_223727928();
      v47 = v35;
      v48 = v34;
    }

    else
    {
      v47 = 0;
      v48 = 0;
    }

    v46 = v32;

    v36 = sub_223727848();

    if (v36)
    {
      sub_223727958();
    }

    v37 = sub_223727848();

    v43 = v30;
    if (v37)
    {
      v38 = sub_223727908();
      v44 = v39;
      v45 = v38;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    v6 = v53;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v47 = 0;
    v48 = 0;
    v43 = 0;
    v46 = 0;
    v49 = 0;
  }

  v41 = v55;
  v40 = v56;
  (*(v56 + 16))(v25, v55, v6);
  v51(v25, 0, 1, v6);
  sub_2237272B8();

  return (*(v40 + 8))(v41, v6);
}

uint64_t sub_223695950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F200, &qword_22372FCC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MUXBridge.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v26[0] = a1;
  v26[1] = a2;
  v9 = sub_22372AC98();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = v14 + qword_27D08F220;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v16 = qword_27D0970C0;
  v17 = sub_223727408();
  (*(*(v17 - 8) + 56))(v14 + v16, 1, 1, v17);
  v18 = (v14 + qword_27D0970C8);
  *v18 = 0;
  v18[1] = 0;
  v19 = qword_27D08F228;
  if (qword_27D08E2F0 != -1)
  {
    swift_once();
  }

  *(v14 + v19) = qword_27D0970F8;
  *(v14 + qword_27D0970D0) = 0;
  *(v14 + qword_27D0970D8) = 0;
  *(v14 + qword_27D0970E0) = 0;
  sub_223623934(a3, v28);
  sub_223623934(a6, v27);
  v20 = a3;
  v21 = qword_27D08E2C8;

  swift_unknownObjectRetain();
  v22 = a5;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v9, qword_27D097070);
  (*(v10 + 16))(v13, v23, v9);
  v24 = sub_22372A6E8();

  *(v24 + qword_27D0970E0) = AFDeviceSupportsMedoc();
  sub_223695F1C();
  sub_223696814();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v24;
}

uint64_t MUXBridge.init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v26[0] = a1;
  v26[1] = a2;
  v10 = sub_22372AC98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v6 + qword_27D08F220;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v16 = qword_27D0970C0;
  v17 = sub_223727408();
  (*(*(v17 - 8) + 56))(v6 + v16, 1, 1, v17);
  v18 = (v6 + qword_27D0970C8);
  *v18 = 0;
  v18[1] = 0;
  v19 = qword_27D08F228;
  if (qword_27D08E2F0 != -1)
  {
    swift_once();
  }

  *(v6 + v19) = qword_27D0970F8;
  *(v6 + qword_27D0970D0) = 0;
  *(v6 + qword_27D0970D8) = 0;
  *(v6 + qword_27D0970E0) = 0;
  sub_223623934(a3, v28);
  sub_223623934(a6, v27);
  v20 = a3;
  v21 = qword_27D08E2C8;

  swift_unknownObjectRetain();
  v22 = a5;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v10, qword_27D097070);
  (*(v11 + 16))(v14, v23, v10);
  v24 = sub_22372A6E8();

  *(v24 + qword_27D0970E0) = AFDeviceSupportsMedoc();
  sub_223695F1C();
  sub_223696814();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v24;
}

uint64_t sub_223695F1C()
{
  v1 = sub_22372A848();
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1, v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + qword_27D0970E0) & 1) == 0)
  {
    v7 = *(v2 + 104);
    v7(v6, *MEMORY[0x277D60070], v1);
    sub_223728BE8();
    type metadata accessor for MUXRequestProcessor(0);
    sub_22372A6D8();
    v8 = *(v2 + 8);
    v8(v6, v1);
    v7(v6, *MEMORY[0x277D60080], v1);
    sub_223728EC8();
    sub_22372A6D8();
    v8(v6, v1);
    v7(v6, *MEMORY[0x277D60090], v1);
    sub_223727E88();
    sub_22372A6D8();
    v8(v6, v1);
    v9 = *MEMORY[0x277D60098];
    v7(v6, v9, v1);
    sub_223728E48();
    sub_22372A6D8();
    v8(v6, v1);
    v7(v6, v9, v1);
    sub_223728658();
    sub_22372A6D8();
    v8(v6, v1);
    v7(v6, v9, v1);
    sub_223728668();
    sub_22372A6D8();
    v8(v6, v1);
    v7(v6, v9, v1);
    sub_223729098();
    sub_22372A6D8();
    v8(v6, v1);
    v7(v6, v9, v1);
    sub_2237282A8();
    sub_22372A6D8();
    v8(v6, v1);
    v7(v6, v9, v1);
    sub_223728C48();
    sub_22372A6D8();
    return (v8)(v6, v1);
  }

  return result;
}

uint64_t sub_223696360(void *a1, uint64_t a2)
{
  v4 = sub_223729F08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277D5CF40], v4);
  v9 = qword_27D097100;
  swift_beginAccess();
  (*(v5 + 40))(a2 + v9, v8, v4);
  swift_endAccess();
  return sub_2236AD404(a1);
}

void sub_223696508(void *a1)
{
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_27D097070);
  v3 = a1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_223620000, v4, v5, "MUXBridge received message: %@", v6, 0xCu);
    sub_223626478(v7, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  sub_2236A7190();
}

uint64_t sub_223696814()
{
  v0 = sub_22372A848();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223727F18();
  sub_22372A938();
  sub_223728478();
  sub_22372A938();
  sub_223728038();
  sub_22372A938();
  sub_223729328();
  sub_22372A938();
  sub_22369BF4C();
  sub_22372A968();
  v5 = *MEMORY[0x277D60070];
  v6 = *(v1 + 104);
  v6(v4, v5, v0);
  sub_223728528();
  type metadata accessor for MUXRequestProcessor(0);
  sub_22372A6D8();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v6(v4, v5, v0);
  sub_223729338();
  sub_22372A6D8();
  v7(v4, v0);
  v6(v4, v5, v0);
  sub_223728928();
  sub_22372A6D8();
  v7(v4, v0);
  v8 = *MEMORY[0x277D60098];
  v6(v4, v8, v0);
  sub_223729698();
  sub_22372A6D8();
  v7(v4, v0);
  v6(v4, v8, v0);
  sub_2237294D8();
  sub_22372A6D8();
  v7(v4, v0);
  v6(v4, v8, v0);
  sub_223728DA8();
  sub_22372A6D8();
  v7(v4, v0);
  v6(v4, v8, v0);
  sub_223729978();
  sub_22372A6D8();
  v7(v4, v0);
  v6(v4, v8, v0);
  sub_2237298D8();
  sub_22372A6D8();
  return (v7)(v4, v0);
}

uint64_t sub_223696E28(void *a1, uint64_t a2, unsigned int *a3)
{
  v6 = sub_223729F08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 104))(v10, *a3, v6);
  v11 = qword_27D097100;
  swift_beginAccess();
  (*(v7 + 40))(a2 + v11, v10, v6);
  swift_endAccess();
  v12 = type metadata accessor for MUXNonSpeechUserSelector();
  v13 = swift_allocObject();
  v18 = v12;
  v19 = &off_2836C59A8;
  *&v17 = v13;
  v14 = qword_27D097108;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((a2 + v14));
  sub_2236241E8(&v17, a2 + v14);
  swift_endAccess();
  return sub_2236AD404(a1);
}

uint64_t sub_223697170(void *a1)
{
  v2 = v1;
  v4 = sub_22372A548();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_223727408();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v31 - v14;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v16 = sub_22372AC98();
  __swift_project_value_buffer(v16, qword_27D097070);
  v17 = a1;
  v18 = sub_22372AC88();
  v19 = sub_22372B268();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = v4;
    v21 = v20;
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v17;
    *v22 = v17;
    v23 = v17;
    _os_log_impl(&dword_223620000, v18, v19, "MUXBridge received message: %@", v21, 0xCu);
    sub_223626478(v22, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v22, -1, -1);
    v24 = v21;
    v4 = v31;
    MEMORY[0x223DE8A80](v24, -1, -1);
  }

  sub_223729D58();
  (*(v8 + 56))(v15, 0, 1, v7);
  v25 = qword_27D0970C0;
  swift_beginAccess();
  sub_2236719F4(v15, v2 + v25, &unk_27D08E530, &unk_22372CB10);
  swift_endAccess();
  sub_22372A978();
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  sub_223729D58();
  sub_22372A4E8();
  (*(v8 + 8))(v11, v7);
  v26 = qword_27D08F220;
  swift_beginAccess();
  sub_2236719F4(v34, v2 + v26, &qword_27D08F650, qword_2237317C0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  sub_223729D58();
  v27 = v32;
  sub_223728468();
  type metadata accessor for MUXSessionContext(0);
  v28 = swift_allocObject();
  v29 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_requestIdToRequestContext;
  *(v28 + v29) = sub_22362654C(MEMORY[0x277D84F90]);
  (*(v8 + 32))(v28 + OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_sessionId, v11, v7);
  (*(v33 + 32))(v28 + OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_sessionUserId, v27, v4);
  *(v2 + qword_27D0970D8) = v28;
}

void sub_2236975E0(void *a1)
{
  v2 = v1;
  v4 = sub_223727408();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v66 = &v61[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F238, qword_22372FCF8);
  MEMORY[0x28223BE20](v70, v8);
  v10 = &v61[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v64 = &v61[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13, v15);
  v71 = &v61[-v17];
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v61[-v20];
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v61[-v23];
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v25 = sub_22372AC98();
  v26 = __swift_project_value_buffer(v25, qword_27D097070);
  v27 = a1;
  v67 = v26;
  v28 = sub_22372AC88();
  v29 = sub_22372B268();

  v30 = os_log_type_enabled(v28, v29);
  v69 = v5;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v27;
    *v32 = v27;
    v33 = v27;
    _os_log_impl(&dword_223620000, v28, v29, "MUXBridge received message: %@", v31, 0xCu);
    sub_223626478(v32, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v32, -1, -1);
    v34 = v31;
    v5 = v69;
    MEMORY[0x223DE8A80](v34, -1, -1);
  }

  v35 = qword_27D0970C0;
  swift_beginAccess();
  v65 = v2;
  v63 = v35;
  sub_223634890(v2 + v35, v24, &unk_27D08E530, &unk_22372CB10);
  v68 = v27;
  sub_223729D58();
  v36 = *(v5 + 56);
  v36(v21, 0, 1, v4);
  v37 = v4;
  v38 = *(v70 + 48);
  sub_223634890(v24, v10, &unk_27D08E530, &unk_22372CB10);
  sub_223634890(v21, &v10[v38], &unk_27D08E530, &unk_22372CB10);
  v39 = *(v5 + 48);
  if (v39(v10, 1, v37) == 1)
  {
    v70 = v36;
    sub_223626478(v21, &unk_27D08E530, &unk_22372CB10);
    sub_223626478(v24, &unk_27D08E530, &unk_22372CB10);
    v40 = v39(&v10[v38], 1, v37);
    v41 = v37;
    if (v40 == 1)
    {
      sub_223626478(v10, &unk_27D08E530, &unk_22372CB10);
LABEL_15:
      v56 = v64;
      (v70)(v64, 1, 1, v41);
      v57 = v65;
      v58 = v63;
      swift_beginAccess();
      sub_2236719F4(v56, v57 + v58, &unk_27D08E530, &unk_22372CB10);
      swift_endAccess();
      v73 = 0;
      memset(v72, 0, sizeof(v72));
      v59 = qword_27D08F220;
      swift_beginAccess();
      sub_2236719F4(v72, v57 + v59, &qword_27D08F650, qword_2237317C0);
      swift_endAccess();
      *(v57 + qword_27D0970D8) = 0;

      v60 = (v57 + qword_27D0970C8);
      *v60 = 0;
      v60[1] = 0;

      return;
    }

    goto LABEL_10;
  }

  sub_223634890(v10, v71, &unk_27D08E530, &unk_22372CB10);
  if (v39(&v10[v38], 1, v37) == 1)
  {
    sub_223626478(v21, &unk_27D08E530, &unk_22372CB10);
    sub_223626478(v24, &unk_27D08E530, &unk_22372CB10);
    (*(v5 + 8))(v71, v37);
    v41 = v37;
LABEL_10:
    sub_223626478(v10, &unk_27D08F238, qword_22372FCF8);
    v42 = v68;
    goto LABEL_11;
  }

  v70 = v36;
  v53 = v66;
  (*(v5 + 32))(v66, &v10[v38], v37);
  sub_22369BFA4(&qword_28132B608, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v54 = v71;
  v62 = sub_22372AFC8();
  v55 = *(v5 + 8);
  v55(v53, v37);
  sub_223626478(v21, &unk_27D08E530, &unk_22372CB10);
  sub_223626478(v24, &unk_27D08E530, &unk_22372CB10);
  v55(v54, v37);
  sub_223626478(v10, &unk_27D08E530, &unk_22372CB10);
  v41 = v37;
  v42 = v68;
  if (v62)
  {
    goto LABEL_15;
  }

LABEL_11:
  v43 = v42;
  v44 = sub_22372AC88();
  v45 = sub_22372B278();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v72[0] = v47;
    *v46 = 136315138;
    v48 = v66;
    sub_223729D58();
    sub_22369BFA4(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v49 = sub_22372B6B8();
    v51 = v50;
    (*(v69 + 8))(v48, v41);
    v52 = sub_223623274(v49, v51, v72);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_223620000, v44, v45, "SessionId: %s is not the current session, ignoring", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x223DE8A80](v47, -1, -1);
    MEMORY[0x223DE8A80](v46, -1, -1);
  }
}

void sub_223697DEC(void *a1)
{
  v2 = v1;
  v117 = sub_223727408();
  v4 = *(v117 - 8);
  MEMORY[0x28223BE20](v117, v5);
  v108 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F238, qword_22372FCF8);
  MEMORY[0x28223BE20](v112, v7);
  v9 = &v103 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v11 = MEMORY[0x28223BE20](v106, v10);
  v105 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v107 = &v103 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v103 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v103 - v21;
  v111 = sub_22372A548();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v23);
  v109 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E40 != -1)
  {
    swift_once();
  }

  v116 = v22;
  v114 = sub_22372AC98();
  __swift_project_value_buffer(v114, qword_28132B650);
  v25 = a1;
  v26 = sub_22372AC88();
  v27 = sub_22372B268();

  v28 = os_log_type_enabled(v26, v27);
  v115 = v4;
  v118 = v2;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    aBlock[0] = v113;
    *v29 = 136315650;
    v30 = sub_223729308();
    v32 = sub_223623274(v30, v31, aBlock);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    v33 = v109;
    sub_223729318();
    sub_22369BFA4(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
    v34 = v111;
    v35 = sub_22372B6B8();
    v37 = v36;
    (*(v110 + 8))(v33, v34);
    v38 = sub_223623274(v35, v37, aBlock);

    *(v29 + 14) = v38;
    *(v29 + 22) = 2080;
    v4 = v115;
    v39 = sub_2237292F8();
    v41 = sub_223623274(v39, v40, aBlock);

    *(v29 + 24) = v41;
    _os_log_impl(&dword_223620000, v26, v27, "Received InitiateMUXStateRollbackMessage, rollbackRequestId: %s, userId: %s, originalRequestId: %s", v29, 0x20u);
    v42 = v113;
    swift_arrayDestroy();
    v2 = v118;
    MEMORY[0x223DE8A80](v42, -1, -1);
    MEMORY[0x223DE8A80](v29, -1, -1);
  }

  v43 = qword_27D0970C0;
  swift_beginAccess();
  v104 = v43;
  v44 = v116;
  sub_223634890(v2 + v43, v116, &unk_27D08E530, &unk_22372CB10);
  v113 = v25;
  sub_223729D58();
  v45 = v117;
  (*(v4 + 56))(v19, 0, 1, v117);
  v46 = *(v112 + 48);
  sub_223634890(v44, v9, &unk_27D08E530, &unk_22372CB10);
  sub_223634890(v19, &v9[v46], &unk_27D08E530, &unk_22372CB10);
  v47 = *(v4 + 48);
  if (v47(v9, 1, v45) == 1)
  {
    sub_223626478(v19, &unk_27D08E530, &unk_22372CB10);
    sub_223626478(v44, &unk_27D08E530, &unk_22372CB10);
    v48 = v47(&v9[v46], 1, v45);
    v49 = v118;
    if (v48 == 1)
    {
      sub_223626478(v9, &unk_27D08E530, &unk_22372CB10);
      v50 = v113;
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v51 = v107;
  sub_223634890(v9, v107, &unk_27D08E530, &unk_22372CB10);
  if (v47(&v9[v46], 1, v45) == 1)
  {
    sub_223626478(v19, &unk_27D08E530, &unk_22372CB10);
    sub_223626478(v116, &unk_27D08E530, &unk_22372CB10);
    (*(v4 + 8))(v51, v45);
    v49 = v118;
LABEL_10:
    sub_223626478(v9, &unk_27D08F238, qword_22372FCF8);
    v50 = v113;
LABEL_11:
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v114, qword_27D097070);
    v52 = v50;

    v53 = sub_22372AC88();
    v54 = sub_22372B278();

    if (!os_log_type_enabled(v53, v54))
    {
      goto LABEL_16;
    }

    v55 = swift_slowAlloc();
    v56 = v49;
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v55 = 136315394;
    v58 = v108;
    sub_223729D58();
    sub_22369BFA4(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v59 = v117;
    v60 = sub_22372B6B8();
    v62 = v61;
    (*(v115 + 8))(v58, v59);
    v63 = sub_223623274(v60, v62, aBlock);

    *(v55 + 4) = v63;
    *(v55 + 12) = 2080;
    sub_223634890(v56 + v104, v105, &unk_27D08E530, &unk_22372CB10);
    v64 = sub_22372B038();
    v66 = sub_223623274(v64, v65, aBlock);

    *(v55 + 14) = v66;
    _os_log_impl(&dword_223620000, v53, v54, "Received InitiateMUXStateRollbackMessage with sessionId: %s where as currentSessionId: %s. Ignoring the message.", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v57, -1, -1);
    v67 = v55;
    goto LABEL_15;
  }

  v68 = v108;
  (*(v4 + 32))(v108, &v9[v46], v45);
  sub_22369BFA4(&qword_28132B608, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v69 = v4;
  v70 = v45;
  v71 = sub_22372AFC8();
  v72 = *(v69 + 8);
  v72(v68, v70);
  sub_223626478(v19, &unk_27D08E530, &unk_22372CB10);
  sub_223626478(v116, &unk_27D08E530, &unk_22372CB10);
  v72(v51, v70);
  sub_223626478(v9, &unk_27D08E530, &unk_22372CB10);
  v49 = v118;
  v50 = v113;
  if ((v71 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_18:
  v73 = sub_223729308();
  v75 = v74;
  v76 = v109;
  sub_223729318();
  v77 = sub_223699018(v73, v75, v76);

  (*(v110 + 8))(v76, v111);
  if (!v77)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v114, qword_27D097070);
    v53 = sub_22372AC88();
    v95 = sub_22372B278();
    if (!os_log_type_enabled(v53, v95))
    {
      goto LABEL_16;
    }

    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&dword_223620000, v53, v95, "Could not make RunNLXRequest. Cannot trigger StartLocalRequest", v96, 2u);
    v67 = v96;
LABEL_15:
    MEMORY[0x223DE8A80](v67, -1, -1);
LABEL_16:

    return;
  }

  v78 = [objc_allocWithZone(MEMORY[0x277D47940]) init];
  v79 = v108;
  sub_2237273F8();
  sub_2237273B8();
  (*(v115 + 8))(v79, v117);
  v80 = sub_22372AFD8();

  [v78 setAceId_];

  [v78 setRefId_];
  v81 = v77;
  v82 = [v78 aceId];

  [v81 setRefId_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB48, qword_2237329D0);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_22372FCE0;
  *(v83 + 32) = v81;
  v84 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F280, &qword_22372FD98);
  v85 = sub_22372B118();

  [v78 setClientBoundCommands_];

  v86 = qword_27D08F220;
  swift_beginAccess();
  sub_223634890(v49 + v86, &v123, &qword_27D08F650, qword_2237317C0);
  if (v124)
  {
    sub_2236241E8(&v123, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v120);
    sub_223729308();
    sub_22372A4A8();

    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v114, qword_27D097070);
    v87 = v50;
    v88 = sub_22372AC88();
    v89 = sub_22372B268();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&v123 = v91;
      *v90 = 136315138;
      v92 = sub_223729308();
      v94 = sub_223623274(v92, v93, &v123);

      *(v90 + 4) = v94;
      _os_log_impl(&dword_223620000, v88, v89, "SessionState rolled back to requestId: %s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      MEMORY[0x223DE8A80](v91, -1, -1);
      MEMORY[0x223DE8A80](v90, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  }

  else
  {
    sub_223626478(&v123, &qword_27D08F650, qword_2237317C0);
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v114, qword_27D097070);
    v97 = sub_22372AC88();
    v98 = sub_22372B278();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_223620000, v97, v98, "No SessionState found. Could not rollback.", v99, 2u);
      MEMORY[0x223DE8A80](v99, -1, -1);
    }
  }

  v100 = [objc_allocWithZone(MEMORY[0x277CEF378]) init];
  [v100 setStartLocalRequest_];
  [v100 setActivationEvent_];
  [v100 setOptions_];
  v101 = sub_22372A948();
  if ([v101 respondsToSelector_])
  {
    v121 = sub_223698DD0;
    v122 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2236C3F44;
    v120 = &block_descriptor_1;
    v102 = _Block_copy(aBlock);

    [v101 submitExternalActivationRequest:v100 completion:v102];
    _Block_release(v102);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_223698DD0(char a1, void *a2)
{
  if (a1)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v2 = sub_22372AC98();
    __swift_project_value_buffer(v2, qword_27D097070);
    oslog = sub_22372AC88();
    v3 = sub_22372B268();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_223620000, oslog, v3, "Successfully submitted external activation request", v4, 2u);
      MEMORY[0x223DE8A80](v4, -1, -1);
    }
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v6 = sub_22372AC98();
    __swift_project_value_buffer(v6, qword_27D097070);
    v7 = a2;
    oslog = sub_22372AC88();
    v8 = sub_22372B278();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F990, &unk_22372FDA0);
      v11 = sub_22372B398();
      v13 = sub_223623274(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_223620000, oslog, v8, "Error while submitting external activation request: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x223DE8A80](v10, -1, -1);
      MEMORY[0x223DE8A80](v9, -1, -1);

      return;
    }
  }
}

id sub_223699018(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_22372A548();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_223727408();
  v14 = MEMORY[0x28223BE20](v12, v13);
  v17 = v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + qword_27D0970D8);
  if (!v18)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v46 = sub_22372AC98();
    __swift_project_value_buffer(v46, qword_27D097070);
    v47 = sub_22372AC88();
    v48 = sub_22372B278();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_223620000, v47, v48, "Could not find MUXSessionContext. Cannot make RunNLXRequest command", v49, 2u);
      MEMORY[0x223DE8A80](v49, -1, -1);
    }

    return 0;
  }

  v79 = v15;
  v80 = v14;
  v19 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_requestIdToRequestContext;
  swift_beginAccess();
  v20 = *(v18 + v19);
  v21 = *(v20 + 16);

  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = sub_2236261A0(a1, a2);
  if ((v23 & 1) == 0)
  {

LABEL_18:
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v50 = sub_22372AC98();
    __swift_project_value_buffer(v50, qword_27D097070);

    v51 = sub_22372AC88();
    v52 = sub_22372B278();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v82[0] = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_223623274(a1, a2, v82);
      _os_log_impl(&dword_223620000, v51, v52, "Could not find MUXRequestContext for requestId: %s. Cannot make RunNLXRequest command", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x223DE8A80](v54, -1, -1);
      MEMORY[0x223DE8A80](v53, -1, -1);
    }

    goto LABEL_22;
  }

  v78 = a3;
  v24 = *(*(v20 + 56) + 8 * v22);

  v25 = v24[5];
  if (!v25)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v55 = sub_22372AC98();
    __swift_project_value_buffer(v55, qword_27D097070);
    v51 = sub_22372AC88();
    v56 = sub_22372B278();
    if (os_log_type_enabled(v51, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_223620000, v51, v56, "Could not find selected topLevelCandidateId. Cannot make RunNLXRequest command", v57, 2u);
      MEMORY[0x223DE8A80](v57, -1, -1);
    }

    goto LABEL_22;
  }

  v77 = v24[4];
  swift_beginAccess();
  v76[1] = v24;
  v26 = v24[7];
  v27 = *(v26 + 16);

  if (!v27)
  {
    goto LABEL_30;
  }

  v28 = sub_2236261A0(v77, v25);
  if ((v29 & 1) == 0)
  {

    goto LABEL_30;
  }

  v30 = *(*(v26 + 56) + 8 * v28);

  v76[0] = v76;
  MEMORY[0x28223BE20](v31, v32);
  v76[-2] = v78;
  v33 = sub_223685A30(sub_2236853B0, &v76[-4], v30);

  if (!v33)
  {
LABEL_30:
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v58 = sub_22372AC98();
    __swift_project_value_buffer(v58, qword_27D097070);
    (*(v8 + 16))(v11, v78, v7);

    v59 = sub_22372AC88();
    v60 = sub_22372B278();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v81 = v62;
      *v61 = 136315394;
      v63 = sub_223623274(v77, v25, &v81);

      *(v61 + 4) = v63;
      *(v61 + 12) = 2080;
      sub_22369BFA4(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
      v64 = sub_22372B6B8();
      v66 = v65;
      (*(v8 + 8))(v11, v7);
      v67 = sub_223623274(v64, v66, &v81);

      *(v61 + 14) = v67;
      _os_log_impl(&dword_223620000, v59, v60, "Could not find MUXCandidateContext for selectedTopLevelCandidateId: %s and userId: %s. Cannot make RunNLXRequest command", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v62, -1, -1);
      MEMORY[0x223DE8A80](v61, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    return 0;
  }

  type metadata accessor for MUXSpeechResultCandidateContext(0);
  v34 = swift_dynamicCastClass();
  if (!v34)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v68 = sub_22372AC98();
    __swift_project_value_buffer(v68, qword_27D097070);

    v69 = sub_22372AC88();
    v70 = sub_22372B278();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v81 = v72;
      *v71 = 136315138;
      *(v71 + 4) = sub_223623274(a1, a2, &v81);
      _os_log_impl(&dword_223620000, v69, v70, "RunNLXRequest operates on Speech Based RCs. Request Id: %s will fail.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x223DE8A80](v72, -1, -1);
      MEMORY[0x223DE8A80](v71, -1, -1);
    }

    return 0;
  }

  v35 = *(v34 + OBJC_IVAR____TtC24RequestDispatcherBridges31MUXSpeechResultCandidateContext_speechPackage);

  v36 = [v35 recognition];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 aceRecognition];
    if (v38)
    {
      v39 = v38;
      v40 = [objc_allocWithZone(MEMORY[0x277D47698]) init];
      sub_2237273F8();
      sub_2237273B8();
      (*(v79 + 8))(v17, v80);
      v41 = sub_22372AFD8();

      [v40 setAceId_];

      sub_22372A518();
      v42 = sub_22372AFD8();

      [v40 setUserId_];

      [v40 setAsrOutput_];
      [v37 processedAudioDuration];
      v44 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      [v40 setProcessedAudioDuration_];

      return v40;
    }
  }

  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v73 = sub_22372AC98();
  __swift_project_value_buffer(v73, qword_27D097070);
  v51 = sub_22372AC88();
  v74 = sub_22372B278();
  if (os_log_type_enabled(v51, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_223620000, v51, v74, "Could not find any ASR output on the selected RC context. Cannot make RunNLXRequest command", v75, 2u);
    MEMORY[0x223DE8A80](v75, -1, -1);
  }

LABEL_22:

  return 0;
}

uint64_t sub_223699B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v145 = a8;
  v147 = a7;
  v162 = a5;
  v148 = a4;
  v146 = a3;
  v161 = a2;
  v155 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v149 = v142 - v12;
  v13 = sub_223727408();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v158 = v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v150 = v142 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v153 = v142 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F238, qword_22372FCF8);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23, v25);
  v27 = v142 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v30 = MEMORY[0x28223BE20](v28 - 8, v29);
  v152 = v142 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v154 = v142 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = v142 - v36;
  v38 = qword_27D0970C0;
  swift_beginAccess();
  v39 = *(v14 + 16);
  v157 = v14 + 16;
  v156 = v39;
  v39(v37, v162, v13);
  (*(v14 + 56))(v37, 0, 1, v13);
  v40 = *(v24 + 56);
  v159 = v9;
  v151 = v38;
  sub_223634890(v9 + v38, v27, &unk_27D08E530, &unk_22372CB10);
  sub_223634890(v37, &v27[v40], &unk_27D08E530, &unk_22372CB10);
  v160 = v14;
  v41 = *(v14 + 48);
  if (v41(v27, 1, v13) == 1)
  {
    sub_223626478(v37, &unk_27D08E530, &unk_22372CB10);
    v42 = v41(&v27[v40], 1, v13);
    v43 = v161;
    if (v42 == 1)
    {
      sub_223626478(v27, &unk_27D08E530, &unk_22372CB10);
      v44 = v159;
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v45 = v154;
  sub_223634890(v27, v154, &unk_27D08E530, &unk_22372CB10);
  if (v41(&v27[v40], 1, v13) == 1)
  {
    sub_223626478(v37, &unk_27D08E530, &unk_22372CB10);
    (*(v160 + 8))(v45, v13);
LABEL_6:
    sub_223626478(v27, &unk_27D08F238, qword_22372FCF8);
    v44 = v159;
    v9 = v158;
LABEL_7:
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v46 = sub_22372AC98();
    __swift_project_value_buffer(v46, qword_27D097070);
    v156(v9, v162, v13);

    v47 = sub_22372AC88();
    v48 = sub_22372B278();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = v44;
      v50 = v13;
      v51 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v167 = v162;
      *v51 = 136315650;
      v52 = v49 + v151;
      v53 = v152;
      sub_223634890(v52, v152, &unk_27D08E530, &unk_22372CB10);
      if (v41(v53, 1, v13))
      {
        sub_223626478(v53, &unk_27D08E530, &unk_22372CB10);
        v54 = 0xE300000000000000;
        v55 = 7104878;
        v56 = v160;
      }

      else
      {
        v101 = v153;
        v156(v153, v53, v13);
        sub_223626478(v53, &unk_27D08E530, &unk_22372CB10);
        v102 = sub_2237273B8();
        v54 = v103;
        v56 = v160;
        (*(v160 + 8))(v101, v50);
        v55 = v102;
      }

      v104 = sub_223623274(v55, v54, &v167);

      *(v51 + 4) = v104;
      v9 = 2080;
      *(v51 + 12) = 2080;
      sub_22369BFA4(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v105 = v158;
      v106 = sub_22372B6B8();
      v108 = v107;
      (*(v56 + 8))(v105, v50);
      v109 = sub_223623274(v106, v108, &v167);

      *(v51 + 14) = v109;
      *(v51 + 22) = 2080;
      *(v51 + 24) = sub_223623274(v155, v161, &v167);
      _os_log_impl(&dword_223620000, v47, v48, "Request does not belong to current session id: %s, request session id: %s for request id: %s", v51, 0x20u);
      v110 = v162;
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v110, -1, -1);
      MEMORY[0x223DE8A80](v51, -1, -1);
    }

    else
    {

      (*(v160 + 8))(v9, v13);
    }

    v97 = sub_22372AA68();
    sub_22369BFA4(&qword_27D08F248, MEMORY[0x277D600E8], MEMORY[0x277D600F0]);
    swift_allocError();
    v99 = v111;
    v100 = MEMORY[0x277D600D8];
    goto LABEL_28;
  }

  v57 = v160;
  v58 = v153;
  (*(v160 + 32))(v153, &v27[v40], v13);
  sub_22369BFA4(&qword_28132B608, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  LODWORD(v144) = sub_22372AFC8();
  v59 = *(v57 + 8);
  v59(v58, v13);
  sub_223626478(v37, &unk_27D08E530, &unk_22372CB10);
  v59(v45, v13);
  sub_223626478(v27, &unk_27D08E530, &unk_22372CB10);
  v43 = v161;
  v44 = v159;
  v9 = v158;
  if ((v144 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_14:
  v60 = *(v44 + qword_27D0970D0);
  if (!v60)
  {
LABEL_20:
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v93 = sub_22372AC98();
    __swift_project_value_buffer(v93, qword_27D097070);

    v94 = sub_22372AC88();
    v95 = sub_22372B278();

    if (os_log_type_enabled(v94, v95))
    {
      v9 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v167 = v96;
      *v9 = 136315138;
      *(v9 + 4) = sub_223623274(v155, v43, &v167);
      _os_log_impl(&dword_223620000, v94, v95, "MultiUserContextMessage has not arrived before the start of request : %s, unpredictable behavior can be expected", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v96);
      MEMORY[0x223DE8A80](v96, -1, -1);
      MEMORY[0x223DE8A80](v9, -1, -1);
    }

    v97 = sub_22372AA68();
    sub_22369BFA4(&qword_27D08F248, MEMORY[0x277D600E8], MEMORY[0x277D600F0]);
    swift_allocError();
    v99 = v98;
    v100 = MEMORY[0x277D600C8];
LABEL_28:
    (*(*(v97 - 8) + 104))(v99, *v100, v97);
    swift_willThrow();
    return v9;
  }

  v61 = *(v44 + qword_27D0970D8);
  if (v61)
  {
    v62 = qword_27D08F220;
    swift_beginAccess();
    sub_223634890(v44 + v62, &v165, &qword_27D08F650, qword_2237317C0);
    if (v166)
    {
      sub_2236241E8(&v165, &v167);
      v143 = v13;
      v156(v150, v162, v13);
      v63 = *(v44 + qword_27D0970C8 + 8);
      v154 = *(v44 + qword_27D0970C8);
      v144 = (v44 + qword_27D0970C8);
      v152 = v63;

      v64 = v60;

      v142[3] = sub_22372A988();
      v142[2] = v65;
      sub_22372A958();
      v142[1] = sub_22372A948();
      sub_223623934(&v167, v164);
      v158 = *(v44 + qword_27D08F228);
      LODWORD(v162) = *(v44 + qword_27D0970E0);
      type metadata accessor for MUXRequestProcessor(0);
      v9 = swift_allocObject();
      v66 = qword_27D097100;
      v67 = *MEMORY[0x277D5CF40];
      v68 = sub_223729F08();
      (*(*(v68 - 8) + 104))(v9 + v66, v67, v68);
      v69 = qword_27D097118;
      v70 = sub_223729EE8();
      (*(*(v70 - 8) + 56))(v9 + v69, 1, 1, v70);
      v71 = qword_27D097138;
      v72 = sub_22372A548();
      (*(*(v72 - 8) + 56))(v9 + v71, 1, 1, v72);
      *(v9 + qword_27D097140) = v64;
      v73 = qword_27D097128;
      *(v9 + qword_27D097128) = v61;
      type metadata accessor for MUXRequestContext();
      swift_allocObject();
      v74 = v155;
      v43 = sub_22362A78C(v155, v43);
      v142[0] = qword_27D097110;
      *(v9 + qword_27D097110) = v43;
      v75 = v61;
      v76 = *(v9 + v73);
      v77 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_requestIdToRequestContext;
      swift_beginAccess();
      v78 = v64;
      v151 = v75;
      swift_retain_n();
      v79 = v78;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v168 = *(v76 + v77);
      *(v76 + v77) = 0x8000000000000000;
      sub_22368D88C(v43, v74, v161, isUniquelyReferenced_nonNull_native);
      *(v76 + v77) = v168;
      swift_endAccess();

      sub_223623934(v164, v9 + qword_27D097120);
      v81 = (v9 + qword_27D097130);
      v82 = v152;
      *v81 = v154;
      v81[1] = v82;
      sub_223727F08();
      v83 = v149;
      sub_22372A9D8();

      swift_beginAccess();
      sub_22369BBB4(v83, v9 + v71);
      swift_endAccess();
      v84 = type metadata accessor for MUXUserSelector();
      v85 = swift_allocObject();
      type metadata accessor for MUXNLParseUtils();
      v86 = swift_allocObject();
      v87 = (v9 + qword_27D097108);
      v87[3] = v84;
      v87[4] = &off_2836C5AC8;
      *v87 = v85;
      *(v9 + qword_27D097148) = v158;
      *(v85 + 16) = v86;
      *(v9 + qword_27D097150) = v162;

      v162 = v79;
      v88 = sub_223727F08();
      v89 = v88;
      v90 = *(v88 + 16);
      if (v90)
      {
        v91 = sub_22369BA88(*(v88 + 16), 0);
        v92 = sub_22369BC24(v163, v91 + 4, v90, v89);
        sub_223685A24(v163[0]);
        if (v92 != v90)
        {
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
      }

      v126 = v143;
      v127 = sub_223727EF8();
      v128 = sub_22372AA58();

      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v129 = sub_22372AC98();
      __swift_project_value_buffer(v129, qword_27D097070);
      v130 = v128;
      v131 = sub_22372AC88();
      v132 = sub_22372B268();

      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        *v133 = 138412802;
        *(v133 + 4) = v130;
        *v134 = v128;
        *(v133 + 12) = 1024;
        *(v133 + 14) = v127 & 1;
        *(v133 + 18) = 1024;
        v135 = v130;
        *(v133 + 20) = AFIsATV();
        _os_log_impl(&dword_223620000, v131, v132, "MUXRequestProcessor init: Generated default voice id score card : %@ when RMV=%{BOOL}d, isATV=%{BOOL}d.", v133, 0x18u);
        sub_223626478(v134, &unk_27D08F250, &unk_22372D1D0);
        v126 = v143;
        MEMORY[0x223DE8A80](v134, -1, -1);
        v136 = v133;
        v83 = v149;
        MEMORY[0x223DE8A80](v136, -1, -1);
      }

      sub_2236B3B58(v128);

      v137 = v150;
      v156(v153, v150, v126);
      sub_223623934(&v165, v163);
      v138 = v161;

      v139 = v155;
      v9 = sub_22372A718();
      v140 = v162;

      sub_223626478(v83, &unk_27D08E990, &qword_22372FCF0);
      __swift_destroy_boxed_opaque_existential_1Tm(v164);
      __swift_destroy_boxed_opaque_existential_1Tm(&v165);
      (*(v160 + 8))(v137, v143);
      v141 = v144;
      *v144 = v139;
      v141[1] = v138;

      sub_22369B2C8(v139, v138);

      __swift_destroy_boxed_opaque_existential_1Tm(&v167);
    }

    else
    {
      v120 = v60;

      sub_223626478(&v165, &qword_27D08F650, qword_2237317C0);
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v121 = sub_22372AC98();
      __swift_project_value_buffer(v121, qword_27D097070);
      v122 = sub_22372AC88();
      v9 = sub_22372B278();
      if (os_log_type_enabled(v122, v9))
      {
        v123 = swift_slowAlloc();
        *v123 = 0;
        _os_log_impl(&dword_223620000, v122, v9, "Unable to find SessionState to pass to MUXProcessor.", v123, 2u);
        MEMORY[0x223DE8A80](v123, -1, -1);
      }

      v124 = sub_22372AA68();
      sub_22369BFA4(&qword_27D08F248, MEMORY[0x277D600E8], MEMORY[0x277D600F0]);
      swift_allocError();
      (*(*(v124 - 8) + 104))(v125, *MEMORY[0x277D600D0], v124);
      swift_willThrow();
    }
  }

  else
  {
    v113 = qword_27D08E2C8;
    v114 = v60;
    if (v113 != -1)
    {
      swift_once();
    }

    v115 = sub_22372AC98();
    __swift_project_value_buffer(v115, qword_27D097070);
    v116 = sub_22372AC88();
    v9 = sub_22372B278();
    if (os_log_type_enabled(v116, v9))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&dword_223620000, v116, v9, "SessionContext not available while creating RequestProcessor. Did we not receive SessionStartedMessage yet?", v117, 2u);
      MEMORY[0x223DE8A80](v117, -1, -1);
    }

    v118 = sub_22372AA68();
    sub_22369BFA4(&qword_27D08F248, MEMORY[0x277D600E8], MEMORY[0x277D600F0]);
    swift_allocError();
    (*(*(v118 - 8) + 104))(v119, *MEMORY[0x277D600E0], v118);
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_22369B138(void *a1)
{
  v2 = v1;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_27D097070);
  v5 = a1;
  v6 = sub_22372AC88();
  v7 = sub_22372B268();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_223620000, v6, v7, "MUXBridge received message: %@", v8, 0xCu);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v11 = *(v2 + qword_27D0970D0);
  *(v2 + qword_27D0970D0) = v5;
  v5;

  result = AFIsInternalInstall();
  if (result)
  {

    return sub_22372AA38();
  }

  return result;
}

void sub_22369B2C8(uint64_t a1, unint64_t a2)
{
  v5 = qword_27D08F220;
  swift_beginAccess();
  sub_223634890(v2 + v5, &v16, &qword_27D08F650, qword_2237317C0);
  if (v17)
  {
    sub_2236241E8(&v16, v18);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    sub_22372A498();
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v6 = sub_22372AC98();
    __swift_project_value_buffer(v6, qword_27D097070);

    v7 = sub_22372AC88();
    v8 = sub_22372B268();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v16 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_223623274(a1, a2, &v16);
      _os_log_impl(&dword_223620000, v7, v8, "Took a snapshot of SessionState for requestId: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x223DE8A80](v10, -1, -1);
      MEMORY[0x223DE8A80](v9, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  else
  {
    sub_223626478(&v16, &qword_27D08F650, qword_2237317C0);
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v11 = sub_22372AC98();
    __swift_project_value_buffer(v11, qword_27D097070);

    v12 = sub_22372AC88();
    v13 = sub_22372B278();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_223623274(a1, a2, v18);
      _os_log_impl(&dword_223620000, v12, v13, "No SessionState instance found. Cannot take snapshot for requestId: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x223DE8A80](v15, -1, -1);
      MEMORY[0x223DE8A80](v14, -1, -1);
    }
  }
}

uint64_t sub_22369B5B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v8 = sub_22372AC98();
  __swift_project_value_buffer(v8, qword_27D097070);
  v9 = a1;
  v10 = sub_22372AC88();
  v11 = sub_22372B268();

  if (os_log_type_enabled(v10, v11))
  {
    v23 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    v14 = [v9 refId];
    if (v14)
    {
      v15 = v14;
      v16 = sub_22372AFE8();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v19 = sub_223623274(v16, v18, &v24);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_223620000, v10, v11, "Received SARDRunNLXRequest for requestId:%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DE8A80](v13, -1, -1);
    MEMORY[0x223DE8A80](v12, -1, -1);

    a3 = v23;
  }

  else
  {
  }

  v20 = sub_22369BF4C();
  v21 = type metadata accessor for MUXRequestProcessor(0);

  return MEMORY[0x2821C53B0](v9, a2, a3, a4, sub_22369B7D0, 0, v20, v21);
}

uint64_t sub_22369B840()
{
  sub_223626478(v0 + qword_27D08F220, &qword_27D08F650, qword_2237317C0);
  sub_223626478(v0 + qword_27D0970C0, &unk_27D08E530, &unk_22372CB10);
}

uint64_t MUXBridge.deinit()
{
  v0 = sub_22372A6F8();
  sub_223626478(v0 + qword_27D08F220, &qword_27D08F650, qword_2237317C0);
  sub_223626478(v0 + qword_27D0970C0, &unk_27D08E530, &unk_22372CB10);

  return v0;
}

uint64_t MUXBridge.__deallocating_deinit()
{
  v0 = sub_22372A6F8();
  v1 = qword_27D08F220;

  sub_223626478(v2 + v1, &qword_27D08F650, qword_2237317C0);
  sub_223626478(v0 + qword_27D0970C0, &unk_27D08E530, &unk_22372CB10);

  return swift_deallocClassInstance();
}

void *sub_22369BA88(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB48, qword_2237329D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_22369BB10(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_22369BB84@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22369BBB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *sub_22369BC24(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_24:
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
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
        goto LABEL_27;
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
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for MUXBridge(uint64_t a1)
{
  result = qword_27D08F260;
  if (!qword_27D08F260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22369BDC4(uint64_t a1)
{
  sub_22369BEEC(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_22369BEEC(uint64_t a1)
{
  if (!qword_28132B5F0)
  {
    sub_223727408();
    v1 = sub_22372B3A8();
    if (!v2)
    {
      atomic_store(v1, &qword_28132B5F0);
    }
  }
}

unint64_t sub_22369BF4C()
{
  result = qword_27D08F270;
  if (!qword_27D08F270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D08F270);
  }

  return result;
}

uint64_t sub_22369BFA4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for RemoteEventSubscription(uint64_t a1)
{
  result = qword_27D08F290;
  if (!qword_27D08F290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22369C14C(uint64_t a1)
{
  sub_22369C208(319, &qword_27D08F2A0, MEMORY[0x277D858D8]);
  if (v1 <= 0x3F)
  {
    sub_22369C208(319, &qword_27D08F2A8, MEMORY[0x277D858B0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22369C208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_223727E38();
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08EAD0, &qword_22372CA80);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_22369C290()
{
  result = qword_27D08F2B0;
  if (!qword_27D08F2B0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08F2B8, &qword_22372FE00);
    result = swift_getWitnessTable(MEMORY[0x277D858D0], v3, v0, v1);
    atomic_store(result, &qword_27D08F2B0);
  }

  return result;
}

uint64_t sub_22369C2F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F288, qword_22372FDB0);
  sub_22372B238();

  return sub_22369C3C4(v0);
}

unint64_t sub_22369C344(uint64_t a1)
{
  result = sub_22369C36C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22369C36C()
{
  result = qword_27D08F2C0;
  if (!qword_27D08F2C0)
  {
    v3 = type metadata accessor for RemoteEventSubscription(255);
    result = swift_getWitnessTable(aY, v3, v0, v1);
    atomic_store(result, &qword_27D08F2C0);
  }

  return result;
}

uint64_t sub_22369C3C4(uint64_t a1)
{
  v2 = type metadata accessor for RemoteEventSubscription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22369C420()
{
  type metadata accessor for MUXBridgeInstrumentationUtil();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() sharedStream];
  sub_22372A8A8();
  swift_allocObject();
  result = sub_22372A898();
  *(v0 + 24) = result;
  qword_27D0970F8 = v0;
  return result;
}

void sub_22369C49C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D596E0]) init];
  if (v3)
  {
    v20 = v3;
    [v3 setExists:1];
    v4 = [objc_allocWithZone(MEMORY[0x277D596C0]) init];
    if (v4)
    {
      v5 = v4;
      [v4 setStartedOrChanged:v20];
      v6 = v2;
      v7 = sub_22372A878();
      if (v7)
      {
        v8 = v7;
        [v7 setMuxBridgeContext:v5];
        [*(v6 + 16) emitMessage_];

        v9 = v8;
        goto LABEL_20;
      }

      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v16 = sub_22372AC98();
      __swift_project_value_buffer(v16, qword_27D097070);
      v17 = sub_22372AC88();
      v18 = sub_22372B278();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_223620000, v17, v18, "Instrumentation: Failed to create wrapper event message for start request.", v19, 2u);
        MEMORY[0x223DE8A80](v19, -1, -1);
      }
    }

    else
    {
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v13 = sub_22372AC98();
      __swift_project_value_buffer(v13, qword_27D097070);
      v5 = sub_22372AC88();
      v14 = sub_22372B278();
      if (os_log_type_enabled(v5, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_223620000, v5, v14, "Instrumentation: Failed to create MUX bridge context message for start request.", v15, 2u);
        MEMORY[0x223DE8A80](v15, -1, -1);
      }
    }
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_22372AC98();
    __swift_project_value_buffer(v10, qword_27D097070);
    v20 = sub_22372AC88();
    v11 = sub_22372B278();
    if (os_log_type_enabled(v20, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_223620000, v20, v11, "Instrumentation: Failed to create MUXRequestStarted message.", v12, 2u);
      MEMORY[0x223DE8A80](v12, -1, -1);
    }
  }

  v9 = v20;
LABEL_20:
}

void sub_22369C7C8(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v99 = sub_223727398();
  v94 = *(v99 - 8);
  v10 = MEMORY[0x28223BE20](v99, v9);
  v92 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v93 = &v89 - v13;
  v14 = sub_223727408();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v91 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v95 = &v89 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v89 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v89 - v27;
  v96 = a1;
  v29 = [a1 userEphemeralId];
  if (!v29)
  {
    __break(1u);
    goto LABEL_35;
  }

  v30 = v29;
  sub_2237273E8();

  v31 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v32 = sub_2237273C8();
  v33 = [v31 initWithNSUUID_];

  v34 = *(v15 + 8);
  v98 = v14;
  v34(v28, v14);
  [a2 setSelectedUserEphemeralId_];

  v97 = a4;
  if (sub_22369D030(a4, a5, a2, v35, v36, v37, v38, v39, v89))
  {
    v40 = [objc_allocWithZone(MEMORY[0x277D596C8]) init];
    if (!v40)
    {
      if (qword_27D08E2C8 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }

    v41 = v40;
    v42 = [objc_allocWithZone(MEMORY[0x277D596D0]) init];
    if (v42)
    {
      v89 = v42;
      v90 = a5;
      v43 = v96;
      v44 = [v96 userEphemeralId];
      if (v44)
      {
        v45 = v44;
        sub_2237273E8();

        a5 = 0x277D5A000uLL;
        v46 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v47 = sub_2237273C8();
        v48 = [v46 initWithNSUUID_];

        v49 = v98;
        v34(v25, v98);
        [v41 setUserEphemeralId_];

        v50 = [v43 userAggregationId];
        if (v50)
        {
          v51 = v50;
          v52 = v43;
          v53 = v95;
          sub_2237273E8();

          v54 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v55 = sub_2237273C8();
          v56 = [v54 initWithNSUUID_];

          v34(v53, v49);
          [v41 setUserAggregationId_];

          v57 = [v52 userAggregationIdEffectiveFrom];
          if (v57)
          {
            v58 = v57;
            v59 = v93;
            sub_223727378();

            sub_223727368();
            v61 = v60;
            v62 = v94 + 8;
            v63 = *(v94 + 8);
            v63(v59, v99);
            v64 = v61 * 1000.0;
            v65 = v90;
            if (COERCE__INT64(fabs(v61 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else if (v64 > -1.0)
            {
              if (v64 < 1.84467441e19)
              {
                a5 = v62;
                [v41 setUserAggregationIdRotationTimestampMs_];
                v66 = [v52 userAggregationIdExpiration];
                if (v66)
                {
                  v67 = v66;
                  v68 = v92;
                  sub_223727378();

                  sub_223727368();
                  v70 = v69;
                  v63(v68, v99);
                  v71 = v70 * 1000.0;
                  if (COERCE__INT64(fabs(v70 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                  {
                    v72 = v97;
                    if (v71 > -1.0)
                    {
                      if (v71 < 1.84467441e19)
                      {
                        [v41 setUserAggregationIdExpirationTimestampMs_];
                        v73 = [v52 deviceAggregationId];
                        if (v73)
                        {
                          v74 = v73;
                          v75 = v91;
                          sub_2237273E8();

                          v76 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                          v77 = sub_2237273C8();
                          v78 = [v76 initWithNSUUID_];

                          v34(v75, v98);
                          [v41 setDeviceAggregationId_];

                          v79 = v89;
                          [v89 setSelectedUser:v41];
                          sub_22369D044(v72, v65, v79);

LABEL_20:
                          return;
                        }

                        goto LABEL_39;
                      }

                      goto LABEL_32;
                    }

LABEL_31:
                    __break(1u);
LABEL_32:
                    __break(1u);
LABEL_33:
                    swift_once();
LABEL_18:
                    v80 = sub_22372AC98();
                    __swift_project_value_buffer(v80, qword_27D097070);

                    v79 = sub_22372AC88();
                    v81 = sub_22372B278();

                    if (os_log_type_enabled(v79, v81))
                    {
                      v82 = swift_slowAlloc();
                      v83 = swift_slowAlloc();
                      v100 = v83;
                      *v82 = 136315138;
                      *(v82 + 4) = sub_223623274(v97, a5, &v100);
                      _os_log_impl(&dword_223620000, v79, v81, "Instrumentation: Failed to create MUXEphemeralToAggregationIdentifierMap message for : %s", v82, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1Tm(v83);
                      MEMORY[0x223DE8A80](v83, -1, -1);
                      MEMORY[0x223DE8A80](v82, -1, -1);
                    }

                    goto LABEL_20;
                  }

LABEL_30:
                  __break(1u);
                  goto LABEL_31;
                }

LABEL_38:
                __break(1u);
LABEL_39:
                __break(1u);
                return;
              }

LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            __break(1u);
            goto LABEL_29;
          }

LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v84 = sub_22372AC98();
    __swift_project_value_buffer(v84, qword_27D097070);

    v85 = sub_22372AC88();
    v86 = sub_22372B278();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v100 = v88;
      *v87 = 136315138;
      *(v87 + 4) = sub_223623274(v97, a5, &v100);
      _os_log_impl(&dword_223620000, v85, v86, "Instrumentation: Failed to create MUXEphemeralToAggregationIdentifierMapContext message for : %s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v88);
      MEMORY[0x223DE8A80](v88, -1, -1);
      MEMORY[0x223DE8A80](v87, -1, -1);
    }
  }
}

BOOL sub_22369D058(uint64_t a1, unint64_t a2, uint64_t a3, SEL *a4, const char *a5, ...)
{
  v10 = [objc_allocWithZone(MEMORY[0x277D596C0]) init];
  if (v10)
  {
    v11 = v10;
    [v10 *a4];
    v12 = sub_2236924EC(a1, a2, v11);

    return v12;
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v14 = sub_22372AC98();
    __swift_project_value_buffer(v14, qword_27D097070);

    v15 = sub_22372AC88();
    v16 = sub_22372B278();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_223623274(a1, a2, &v19);
      _os_log_impl(&dword_223620000, v15, v16, a5, v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x223DE8A80](v18, -1, -1);
      MEMORY[0x223DE8A80](v17, -1, -1);
    }

    return 0;
  }
}

void sub_22369D240(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, Class *a5, char a6, SEL *a7, const char *a8, ...)
{
  v13 = [objc_allocWithZone(*a5) init];
  if (!v13)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_27D097070);

    v26 = sub_22372AC88();
    v17 = sub_22372B278();

    if (os_log_type_enabled(v26, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_223623274(a1, a2, &v27);
      _os_log_impl(&dword_223620000, v26, v17, a8, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x223DE8A80](v19, -1, -1);
      MEMORY[0x223DE8A80](v18, -1, -1);
LABEL_12:

      return;
    }

LABEL_14:
    v15 = v26;
    goto LABEL_15;
  }

  v26 = v13;
  [v13 setExists:1];
  v14 = sub_22372A878();
  if (!v14)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v20 = sub_22372AC98();
    __swift_project_value_buffer(v20, qword_27D097070);

    v21 = sub_22372AC88();
    v22 = sub_22372B278();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_223623274(a1, a2, &v27);
      _os_log_impl(&dword_223620000, v21, v22, "Instrumentation: Failed to create wrapper event message for end request for : %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x223DE8A80](v24, -1, -1);
      MEMORY[0x223DE8A80](v23, -1, -1);

      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v25 = v14;
  [v14 *a7];
  [*(v8 + 16) emitMessage_];

  v15 = v25;
LABEL_15:
}

uint64_t sub_22369D578()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_22369D5DC(void *a1, uint64_t a2, uint64_t a3)
{
  v86 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v76 - v7;
  v9 = sub_22372A548();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x277D84F90];
  v14 = 0x27D08E000uLL;
  if (!a1)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v48 = sub_22372AC98();
    __swift_project_value_buffer(v48, qword_27D097070);
    v47 = sub_22372AC88();
    v49 = sub_22372B278();
    if (os_log_type_enabled(v47, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_223620000, v47, v49, "Unable to log voice id score card as it was not supplied.", v50, 2u);
      MEMORY[0x223DE8A80](v50, -1, -1);
    }

    v20 = MEMORY[0x277D84F90];
LABEL_30:

    sub_22369352C(a2, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_22369359C(v8);
      if (*(v14 + 712) == -1)
      {
LABEL_32:
        v51 = sub_22372AC98();
        __swift_project_value_buffer(v51, qword_27D097070);
        v52 = sub_22372AC88();
        v53 = sub_22372B278();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_223620000, v52, v53, "Unable to log unknown user score as unknown user id was not supplied.", v54, 2u);
          MEMORY[0x223DE8A80](v54, -1, -1);
        }

        return v20;
      }

LABEL_58:
      swift_once();
      goto LABEL_32;
    }

    (*(v10 + 32))(v13, v8, v9);
    v55 = [objc_allocWithZone(MEMORY[0x277D59708]) init];
    if (!v55)
    {
      if (*(v14 + 712) != -1)
      {
        swift_once();
      }

      v62 = sub_22372AC98();
      __swift_project_value_buffer(v62, qword_27D097070);
      v63 = sub_22372AC88();
      v64 = sub_22372B278();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_223620000, v63, v64, "Unable to create ORCHSchemaORCHMultiUserScore object for unknown user, hence instrumentation will have gaps.", v65, 2u);
        MEMORY[0x223DE8A80](v65, -1, -1);
      }

      (*(v10 + 8))(v13, v9);
      return v20;
    }

    v56 = v55;
    v57 = sub_22372A518();
    if (*(v86 + 16))
    {
      sub_2236261A0(v57, v58);
      v60 = v59;

      if ((v60 & 1) == 0)
      {
        v61 = 0;
        goto LABEL_47;
      }

      v61 = sub_22372AFD8();
    }

    else
    {
      v61 = 0;
    }

LABEL_47:
    [v56 setLoggableSharedUserId_];

    [v56 setScore_];
    v66 = v56;
    MEMORY[0x223DE7B50]();
    if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22372B148();
    }

    sub_22372B158();

    (*(v10 + 8))(v13, v9);
    return v89;
  }

  v76 = a2;
  v77 = v8;
  v78 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v10;
  v80 = v9;
  v81 = a1;
  result = [v81 spIdKnownUserScores];
  if (result)
  {
    v16 = result;
    sub_223685980();
    v17 = sub_22372AF58();

    v19 = 0;
    v20 = v17 + 64;
    v21 = 1 << *(v17 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v17 + 64);
    v24 = (v21 + 63) >> 6;
    v82 = MEMORY[0x277D84F90];
    *&v18 = 136315138;
    v84 = v18;
    v25 = v86;
    v85 = v24;
    v83 = v17;
LABEL_6:
    v26 = v19;
    while (v23)
    {
      v19 = v26;
LABEL_14:
      v27 = __clz(__rbit64(v23)) | (v19 << 6);
      v28 = (*(v17 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(*(v17 + 56) + 8 * v27);
      v32 = objc_allocWithZone(MEMORY[0x277D59708]);

      v33 = v31;
      v34 = [v32 init];
      if (!v34)
      {
        v67 = v33;
        if (qword_27D08E2C8 != -1)
        {
          swift_once();
        }

        v68 = sub_22372AC98();
        __swift_project_value_buffer(v68, qword_27D097070);

        v69 = sub_22372AC88();
        v70 = sub_22372B278();

        v71 = os_log_type_enabled(v69, v70);
        v72 = v81;
        v20 = v82;
        if (v71)
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v88 = v74;
          *v73 = v84;
          v75 = sub_223623274(v29, v30, &v88);

          *(v73 + 4) = v75;
          _os_log_impl(&dword_223620000, v69, v70, "Unable to create ORCHSchemaORCHMultiUserScore object for user id : %s, hence instrumentation will have gaps. Abandoning all logging.", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v74);
          MEMORY[0x223DE8A80](v74, -1, -1);
          MEMORY[0x223DE8A80](v73, -1, -1);
        }

        else
        {
        }

        return v20;
      }

      v35 = v34;
      v23 &= v23 - 1;
      v87 = v33;
      [v34 setScore_];
      if (*(v25 + 16))
      {
        sub_2236261A0(v29, v30);
        if (v36)
        {

          v45 = sub_22372AFD8();

          [v35 setLoggableSharedUserId_];

          v46 = v35;
          MEMORY[0x223DE7B50]();
          if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22372B148();
          }

          sub_22372B158();

          v82 = v89;
          v24 = v85;
          goto LABEL_6;
        }
      }

      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v37 = sub_22372AC98();
      __swift_project_value_buffer(v37, qword_27D097070);

      v38 = sub_22372AC88();
      v39 = sub_22372B278();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v88 = v41;
        *v40 = v84;
        v42 = sub_223623274(v29, v30, &v88);

        *(v40 + 4) = v42;
        _os_log_impl(&dword_223620000, v38, v39, "Unable to find the loggable shared user id for user: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        v43 = v41;
        v17 = v83;
        MEMORY[0x223DE8A80](v43, -1, -1);
        v44 = v40;
        v25 = v86;
        MEMORY[0x223DE8A80](v44, -1, -1);
      }

      else
      {
      }

      v26 = v19;
      v24 = v85;
    }

    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v10 = v79;
        v9 = v80;
        v8 = v77;
        v13 = v78;
        v47 = v81;
        v20 = v82;
        a2 = v76;
        v14 = 0x27D08E000;
        goto LABEL_30;
      }

      v23 = *(v20 + 8 * v19);
      ++v26;
      if (v23)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

  __break(1u);
  return result;
}

uint64_t sub_22369DFB0()
{
  v0 = MEMORY[0x223DE4210]();
  v1 = v0;
  if (v0 >> 62)
  {
LABEL_29:
    v2 = sub_22372B558();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_30:

    return 0;
  }

  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_30;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223DE7ED0](v3, v1);
      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    sub_2237278A8();

    if (v16)
    {
      break;
    }

    sub_22369E7F4(v15);
LABEL_5:
    ++v3;
    if (v4 == v2)
    {
      goto LABEL_30;
    }
  }

  sub_223661514(v15, v17);
  sub_2236227C8(v17, v15);
  sub_2237279B8();
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
LABEL_20:

    goto LABEL_5;
  }

  sub_2237279A8();

  if (!v15[0])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    goto LABEL_19;
  }

  v5 = sub_223727878();
  if (!v6)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v17);

LABEL_19:

    goto LABEL_20;
  }

  v7 = v6;
  v8 = v5;

  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v9 = sub_22372AC98();
  __swift_project_value_buffer(v9, qword_27D097070);

  v10 = sub_22372AC88();
  v11 = sub_22372B268();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_223623274(v8, v7, v15);
    _os_log_impl(&dword_223620000, v10, v11, "Found name: %s in USO Graph.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DE8A80](v13, -1, -1);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v8;
}

uint64_t sub_22369E308(uint64_t a1)
{
  v34 = sub_2237275F8();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v2);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_223727698();
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v6);
  v32 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_223727668();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = *(a1 + 16);
  if (v27[0])
  {
    v13 = 0;
    v14 = *(sub_223727618() - 8);
    v27[2] = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v27[1] = *(v14 + 72);
    v35 = (v9 + 8);
    v29 = (v37 + 8);
    v30 = (v5 + 8);
    v31 = v9;
    while (1)
    {
      v28 = v13;
      v15 = sub_223727608();
      v16 = v15;
      v37 = *(v15 + 16);
      if (v37)
      {
        break;
      }

LABEL_3:
      v13 = v28 + 1;

      if (v13 == v27[0])
      {
        goto LABEL_12;
      }
    }

    v17 = 0;
    v36 = v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    while (v17 < *(v16 + 16))
    {
      (*(v9 + 16))(v12, v36 + *(v9 + 72) * v17, v8);
      if (sub_223727648())
      {
        v18 = v32;
        sub_223727658();
        sub_223727688();
        (*v30)(v18, v33);
        sub_223727768();
        (*v29)(v4, v34);

        v19 = sub_22369DFB0();
        v21 = v20;

        (*v35)(v12, v8);
        v9 = v31;
        if (v21)
        {

          return v19;
        }
      }

      else
      {
        (*v35)(v12, v8);
      }

      if (v37 == ++v17)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  if (qword_27D08E2C8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v22 = sub_22372AC98();
  __swift_project_value_buffer(v22, qword_27D097070);
  v23 = sub_22372AC88();
  v24 = sub_22372B268();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_223620000, v23, v24, "No identity was found in given list of NLXUserParse(s).", v25, 2u);
    MEMORY[0x223DE8A80](v25, -1, -1);
  }

  return 0;
}

uint64_t sub_22369E7F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F750, &qword_22372C960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22369E85C(void *a1@<X0>, void *a2@<X2>, void *a3@<X3>, void (*a4)(char *, char *, uint64_t)@<X4>, void *a5@<X5>, void *a6@<X6>, char a7@<W7>, char *a8@<X8>, uint64_t a9, void *a10)
{
  v59 = a6;
  v60 = a8;
  v54 = a4;
  v55 = a5;
  v53 = a2;
  v58 = a10;
  v56 = a3;
  v57 = a9;
  v12 = sub_22372A548();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22372A3C8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v24 = MEMORY[0x28223BE20](v22 - 8, v23);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v53 - v28;
  if (a7)
  {
    if (a1)
    {
      v30 = qword_27D08E2C8;
      v56 = a1;
      if (v30 != -1)
      {
        swift_once();
      }

      v31 = sub_22372AC98();
      __swift_project_value_buffer(v31, qword_27D097070);
      v32 = sub_22372AC88();
      v33 = sub_22372B268();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_223620000, v32, v33, "MUX: Picking user based on given VoiceIDScoreCard", v34, 2u);
        MEMORY[0x223DE8A80](v34, -1, -1);
      }

      sub_223721204(v56, v59, v57, v58, v60);
      v35 = v56;
    }

    else
    {
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v48 = sub_22372AC98();
      __swift_project_value_buffer(v48, qword_27D097070);
      v49 = sub_22372AC88();
      v50 = sub_22372B268();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_223620000, v49, v50, "MUX: Pre NL User Selection: Non Speech: Since RMV is set, picking user from previous request.", v51, 2u);
        MEMORY[0x223DE8A80](v51, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(v53, v53[3]);
      (*(v18 + 104))(v21, *MEMORY[0x277D5D1C0], v17);
      sub_22372A478();
      (*(v18 + 8))(v21, v17);
      if (v62)
      {
        v52 = swift_dynamicCast();
        (*(v13 + 56))(v29, v52 ^ 1u, 1, v12);
      }

      else
      {
        sub_223626478(v61, &unk_27D08F750, &qword_22372C960);
        (*(v13 + 56))(v29, 1, 1, v12);
      }

      sub_223721974(v29, v54, v55, v59, v56, v60);
      sub_223626478(v29, &unk_27D08E990, &qword_22372FCF0);
    }
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v36 = sub_22372AC98();
    __swift_project_value_buffer(v36, qword_27D097070);
    v37 = sub_22372AC88();
    v38 = sub_22372B288();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_223620000, v37, v38, "MUX: RMV not set. Defaulting to unknown user.", v39, 2u);
      MEMORY[0x223DE8A80](v39, -1, -1);
    }

    v40 = sub_22372A418();
    sub_22369352C(v59, v26);
    if ((*(v13 + 48))(v26, 1, v12) == 1)
    {
      sub_223626478(v26, &unk_27D08E990, &qword_22372FCF0);
      v41 = sub_22372AC88();
      v42 = sub_22372B278();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_223620000, v41, v42, "MUX: unknownUserId was not found, defaulting to nil.", v43, 2u);
        MEMORY[0x223DE8A80](v43, -1, -1);
      }

      v44 = type metadata accessor for MUXUserAttributes(0);
      (*(*(v44 - 8) + 56))(v60, 1, 1, v44);
    }

    else
    {
      v45 = *(v13 + 32);
      v45(v16, v26, v12);
      v46 = v60;
      v45(v60, v16, v12);
      v47 = type metadata accessor for MUXUserAttributes(0);
      *&v46[v47[5]] = 0;
      *&v46[v47[6]] = 0;
      *&v46[v47[8]] = v40;
      v46[v47[7]] = 1;
      v46[v47[9]] = 0;
      v46[v47[10]] = 0;
      (*(*(v47 - 1) + 56))(v46, 0, 1, v47);
    }
  }
}

void sub_22369EF30(void *a1@<X3>, void *a2@<X5>, void *a3@<X6>, void *a4@<X7>, char *a5@<X8>, void *a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, void *a11)
{
  v59 = a2;
  v60 = a5;
  v58 = a11;
  v56 = a4;
  v57 = a10;
  v55 = a7;
  v53 = a3;
  v54 = a6;
  v12 = sub_22372A548();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22372A3C8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v24 = MEMORY[0x28223BE20](v22 - 8, v23);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v53 - v28;
  if (a9)
  {
    if (a1)
    {
      v30 = qword_27D08E2C8;
      v56 = a1;
      if (v30 != -1)
      {
        swift_once();
      }

      v31 = sub_22372AC98();
      __swift_project_value_buffer(v31, qword_27D097070);
      v32 = sub_22372AC88();
      v33 = sub_22372B268();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_223620000, v32, v33, "MUX: Picking user based on given VoiceIDScoreCard", v34, 2u);
        MEMORY[0x223DE8A80](v34, -1, -1);
      }

      sub_223721204(v56, v59, v57, v58, v60);
      v35 = v56;
    }

    else
    {
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v48 = sub_22372AC98();
      __swift_project_value_buffer(v48, qword_27D097070);
      v49 = sub_22372AC88();
      v50 = sub_22372B268();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_223620000, v49, v50, "MUX: Pre NL User Selection: Non Speech: Since RMV is set, picking user from previous request.", v51, 2u);
        MEMORY[0x223DE8A80](v51, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(v53, v53[3]);
      (*(v18 + 104))(v21, *MEMORY[0x277D5D1C0], v17);
      sub_22372A478();
      (*(v18 + 8))(v21, v17);
      if (v62)
      {
        v52 = swift_dynamicCast();
        (*(v13 + 56))(v29, v52 ^ 1u, 1, v12);
      }

      else
      {
        sub_223626478(v61, &unk_27D08F750, &qword_22372C960);
        (*(v13 + 56))(v29, 1, 1, v12);
      }

      sub_223721974(v29, v56, v54, v59, v55, v60);
      sub_223626478(v29, &unk_27D08E990, &qword_22372FCF0);
    }
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v36 = sub_22372AC98();
    __swift_project_value_buffer(v36, qword_27D097070);
    v37 = sub_22372AC88();
    v38 = sub_22372B288();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_223620000, v37, v38, "MUX: RMV not set. Defaulting to unknown user.", v39, 2u);
      MEMORY[0x223DE8A80](v39, -1, -1);
    }

    v40 = sub_22372A418();
    sub_22369352C(v59, v26);
    if ((*(v13 + 48))(v26, 1, v12) == 1)
    {
      sub_223626478(v26, &unk_27D08E990, &qword_22372FCF0);
      v41 = sub_22372AC88();
      v42 = sub_22372B278();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_223620000, v41, v42, "MUX: unknownUserId was not found, defaulting to nil.", v43, 2u);
        MEMORY[0x223DE8A80](v43, -1, -1);
      }

      v44 = type metadata accessor for MUXUserAttributes(0);
      (*(*(v44 - 8) + 56))(v60, 1, 1, v44);
    }

    else
    {
      v45 = *(v13 + 32);
      v45(v16, v26, v12);
      v46 = v60;
      v45(v60, v16, v12);
      v47 = type metadata accessor for MUXUserAttributes(0);
      *&v46[v47[5]] = 0;
      *&v46[v47[6]] = 0;
      *&v46[v47[8]] = v40;
      v46[v47[7]] = 1;
      v46[v47[9]] = 0;
      v46[v47[10]] = 0;
      (*(*(v47 - 1) + 56))(v46, 0, 1, v47);
    }
  }
}

uint64_t sub_22369F68C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000014;
      v4 = 0x80000002237342E0;
    }

    else
    {
      v3 = 0x657A696C616E6966;
      v4 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x616974696E496C6ELL;
    }

    else
    {
      v3 = 0xD000000000000018;
    }

    if (v2)
    {
      v4 = 0xEB00000000646574;
    }

    else
    {
      v4 = 0x80000002237342B0;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x80000002237342E0;
      if (v3 != 0xD000000000000014)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE900000000000064;
      if (v3 != 0x657A696C616E6966)
      {
LABEL_26:
        v7 = sub_22372B6E8();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x616974696E496C6ELL;
    }

    else
    {
      v5 = 0xD000000000000018;
    }

    if (a2)
    {
      v6 = 0xEB00000000646574;
    }

    else
    {
      v6 = 0x80000002237342B0;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_22369F7FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6E69766965636572;
    }

    else
    {
      v3 = 0x696C616974696E69;
    }

    if (v2)
    {
      v4 = 0xED00007350525467;
    }

    else
    {
      v4 = 0xEB0000000064657ALL;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x8000000223734360;
    v3 = 0xD00000000000001FLL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6C616E6946707274;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 3)
    {
      v4 = 0xEC00000064657A69;
    }

    else
    {
      v4 = 0x8000000223734390;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6E69766965636572;
    }

    else
    {
      v9 = 0x696C616974696E69;
    }

    if (a2)
    {
      v8 = 0xED00007350525467;
    }

    else
    {
      v8 = 0xEB0000000064657ALL;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x6C616E6946707274;
    v6 = 0x8000000223734390;
    if (a2 == 3)
    {
      v6 = 0xEC00000064657A69;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v7 = 0xD00000000000001FLL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x8000000223734360;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = sub_22372B6E8();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_22369F9C4(void *a1)
{
  v3 = sub_223729F08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277D5CF40], v3);
  v8 = qword_27D097100;
  swift_beginAccess();
  (*(v4 + 40))(v1 + v8, v7, v3);
  swift_endAccess();
  return sub_2236AD404(a1);
}

uint64_t sub_22369FAFC(void *a1, unsigned int *a2)
{
  v5 = sub_223729F08();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v6 + 104))(v9, *a2, v5);
  v10 = qword_27D097100;
  swift_beginAccess();
  (*(v6 + 40))(v2 + v10, v9, v5);
  swift_endAccess();
  v11 = type metadata accessor for MUXNonSpeechUserSelector();
  v12 = swift_allocObject();
  v17 = v11;
  v18 = &off_2836C59A8;
  *&v16 = v12;
  v13 = qword_27D097108;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + v13));
  sub_223661568(&v16, v2 + v13);
  swift_endAccess();
  return sub_2236AD404(a1);
}

uint64_t sub_22369FC84(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v31[-v6];
  v8 = sub_223729F08();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v13 = sub_22372AC98();
  __swift_project_value_buffer(v13, qword_27D097070);
  v14 = a1;
  v15 = sub_22372AC88();
  v16 = sub_22372B268();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_223620000, v15, v16, "MUXRequestProcessor received message: %@", v17, 0xCu);
    sub_223626478(v18, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v18, -1, -1);
    MEMORY[0x223DE8A80](v17, -1, -1);
  }

  (*(v9 + 104))(v12, *MEMORY[0x277D5CF40], v8);
  v20 = qword_27D097100;
  swift_beginAccess();
  (*(v9 + 40))(v2 + v20, v12, v8);
  swift_endAccess();
  v21 = type metadata accessor for MUXUserSelector();
  v22 = swift_allocObject();
  type metadata accessor for MUXNLParseUtils();
  *(v22 + 16) = swift_allocObject();
  v33 = v21;
  v34 = &off_2836C5AC8;
  *&v32 = v22;
  v23 = qword_27D097108;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + v23));
  sub_223661568(&v32, v2 + v23);
  swift_endAccess();
  v24 = sub_223728E58();
  v25 = sub_223729EE8();
  v26 = *(v25 - 8);
  v27 = (v26 + 56);
  if (v24)
  {
    v28 = MEMORY[0x277D5CE98];
  }

  else
  {
    v28 = MEMORY[0x277D5CE90];
  }

  (*(v26 + 104))(v7, *v28, v25);
  (*v27)(v7, 0, 1, v25);
  v29 = qword_27D097118;
  swift_beginAccess();
  sub_2236719F4(v7, v2 + v29, &unk_27D08F6F0, &qword_223732CD0);
  return swift_endAccess();
}

void sub_2236A0050(void *a1)
{
  v2 = v1;
  v180 = sub_22372A548();
  v181 = *(v180 - 8);
  v5 = MEMORY[0x28223BE20](v180, v4);
  v176 = v167 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v179 = v167 - v8;
  v190 = sub_22372A298();
  v189 = *(v190 - 8);
  MEMORY[0x28223BE20](v190, v9);
  v188 = v167 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v178 = v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v187 = v167 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v192 = v167 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE90, &unk_22372FF60);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v186 = v167 - v22;
  v191 = type metadata accessor for MUXUserAttributes(0);
  v185 = *(v191 - 8);
  v24 = MEMORY[0x28223BE20](v191, v23);
  v175 = v167 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v177 = v167 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v31 = v167 - v30;
  v32 = sub_223729F08();
  v33 = *(v32 - 8);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v183 = v167 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v40 = v167 - v39;
  MEMORY[0x28223BE20](v38, v41);
  v43 = v167 - v42;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v184 = v31;
  v44 = sub_22372AC98();
  v45 = __swift_project_value_buffer(v44, qword_27D097070);
  v46 = a1;
  v193 = v45;
  v47 = sub_22372AC88();
  v48 = sub_22372B268();
  v194 = v46;

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    v51 = v194;
    *(v49 + 4) = v194;
    *v50 = v51;
    v52 = v51;
    _os_log_impl(&dword_223620000, v47, v48, "MUXProcessor received MultiUserAsrResultCandidateMessage: %@", v49, 0xCu);
    sub_223626478(v50, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v50, -1, -1);
    MEMORY[0x223DE8A80](v49, -1, -1);
  }

  v53 = qword_27D097100;
  swift_beginAccess();
  v54 = *(v33 + 16);
  v195 = v2;
  v182 = v54;
  v54(v43, v2 + v53, v32);
  (*(v33 + 104))(v40, *MEMORY[0x277D5CF40], v32);
  sub_2236B12D0(&qword_28132B538, MEMORY[0x277D5CF58], MEMORY[0x277D5CF68]);
  sub_22372B0F8();
  sub_22372B0F8();
  if (v199[0] == v197 && v199[1] == v198)
  {
    v55 = 1;
  }

  else
  {
    v55 = sub_22372B6E8();
  }

  v56 = *(v33 + 8);
  v56(v40, v32);
  v56(v43, v32);

  if ((v55 & 1) == 0)
  {
    v83 = v194;
    v84 = v195;

    v85 = sub_22372AC88();
    v86 = sub_22372B278();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v193 = v85;
      v89 = v88;
      v194 = swift_slowAlloc();
      v199[0] = v194;
      *v87 = 138412546;
      *(v87 + 4) = v83;
      *v89 = v83;
      *(v87 + 12) = 2080;
      v90 = v84 + v53;
      v91 = v183;
      v182(v183, v90, v32);
      v92 = v83;
      v93 = v86;
      v94 = sub_223729EF8();
      v96 = v95;
      v56(v91, v32);
      v97 = sub_223623274(v94, v96, v199);

      *(v87 + 14) = v97;
      v98 = v193;
      _os_log_impl(&dword_223620000, v193, v93, "%@ is not supported for this requestType: %s", v87, 0x16u);
      sub_223626478(v89, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v89, -1, -1);
      v99 = v194;
      __swift_destroy_boxed_opaque_existential_1Tm(v194);
      MEMORY[0x223DE8A80](v99, -1, -1);
      MEMORY[0x223DE8A80](v87, -1, -1);
    }

    else
    {
    }

    return;
  }

  v57 = v194;
  v58 = v195;
  sub_2236AD180(v194);
  v59 = *(v58 + qword_27D097110);
  v60 = *(v59 + 72);
  if (v60 || (v61 = sub_223728E28(), v62 = *(v59 + 72), *(v59 + 72) = v61, v62, (v60 = *(v59 + 72)) != 0))
  {
    v169 = v60;
    v63 = qword_27D097108;
    swift_beginAccess();
    sub_223623934(v58 + v63, v199);
    v64 = v201;
    v174 = v200;
    v182 = __swift_project_boxed_opaque_existential_1(v199, v200);
    v65 = qword_27D097118;
    swift_beginAccess();
    sub_223634890(v195 + v65, v192, &unk_27D08F6F0, &qword_223732CD0);
    v173 = qword_27D097120;
    v66 = *(v195 + qword_27D097128);
    v67 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_requestIdToRequestContext;
    swift_beginAccess();
    v170 = *(v66 + v67);
    v68 = *(v195 + qword_27D097130 + 8);
    v172 = *(v195 + qword_27D097130);
    v171 = v68;
    v69 = qword_27D097138;
    swift_beginAccess();
    v167[0] = v69;
    v70 = v187;
    sub_223634890(v195 + v69, v187, &unk_27D08E990, &qword_22372FCF0);
    v183 = v60;

    LOBYTE(v66) = sub_223727EF8();
    v71 = v189;
    v72 = v188;
    v73 = v190;
    (*(v189 + 104))(v188, *MEMORY[0x277D5D0D0], v190);
    v74 = *(v59 + 80);
    v75 = *(v64 + 8);
    v76 = v74;
    v167[1] = v59;
    v168 = v76;
    v166 = v74;
    v77 = v186;
    v78 = v192;
    v75(v169, v192, v195 + v173, v170, v172, v171, v70, v66 & 1, v72, v166, v174, v64);

    (*(v71 + 8))(v72, v73);
    sub_223626478(v70, &unk_27D08E990, &qword_22372FCF0);
    sub_223626478(v78, &unk_27D08F6F0, &qword_223732CD0);
    v79 = v191;
    if ((*(v185 + 48))(v77, 1, v191) == 1)
    {
      sub_223626478(v77, &qword_27D08EE90, &unk_22372FF60);
      __swift_destroy_boxed_opaque_existential_1Tm(v199);
      v80 = sub_22372AC88();
      v81 = sub_22372B278();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_223620000, v80, v81, "Something went wrong during user selection. Was unable to select a user.", v82, 2u);
        MEMORY[0x223DE8A80](v82, -1, -1);
      }

      return;
    }

    v100 = v184;
    sub_2236852F0(v77, v184);
    __swift_destroy_boxed_opaque_existential_1Tm(v199);
    v101 = sub_2237290A8();
    v103 = sub_2236B473C(v101, v102, v100);

    if (v103)
    {
      v104 = *(v100 + v79[6]);
      swift_retain_n();
      sub_2236B138C(v104);
      sub_2236B1508(*(v100 + v79[5]));
      sub_2236B1684(*(v100 + v79[8]));
      sub_2236B1800(*(v100 + v79[7]));
      sub_2236B197C(*(v100 + v79[9]));
      sub_2236B1AF8(*(v100 + v79[10]));
    }

    else
    {
      v129 = v177;
      sub_22368509C(v100, v177);
      v130 = sub_22372AC88();
      v131 = sub_22372B278();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v199[0] = v133;
        *v132 = 136315138;
        sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
        v134 = v180;
        v135 = sub_22372B6B8();
        v137 = v136;
        sub_223685354(v129);
        v138 = sub_223623274(v135, v137, v199);

        *(v132 + 4) = v138;
        _os_log_impl(&dword_223620000, v130, v131, "selectPreNLUser: Could not find ResultCandidateContext for selectedUserId: %s. Trying to use unknown user's RC.", v132, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v133);
        v139 = v195;
        MEMORY[0x223DE8A80](v133, -1, -1);
        MEMORY[0x223DE8A80](v132, -1, -1);

        v140 = v179;
      }

      else
      {

        sub_223685354(v129);
        v134 = v180;
        v140 = v179;
        v139 = v195;
      }

      v154 = v178;
      sub_223634890(v139 + v167[0], v178, &unk_27D08E990, &qword_22372FCF0);
      v155 = v181;
      if ((*(v181 + 48))(v154, 1, v134) == 1)
      {
        sub_223626478(v154, &unk_27D08E990, &qword_22372FCF0);
        v147 = sub_22372AC88();
        v156 = sub_22372B278();
        if (os_log_type_enabled(v147, v156))
        {
          v157 = swift_slowAlloc();
          *v157 = 0;
          _os_log_impl(&dword_223620000, v147, v156, "selectPreNLUser: sharedUserId of unknown user is nil. Will not post ASR output. Request will time out.", v157, 2u);
          MEMORY[0x223DE8A80](v157, -1, -1);

          goto LABEL_36;
        }

LABEL_41:
        goto LABEL_45;
      }

      v158 = v134;
      (*(v155 + 32))(v140, v154, v134);
      v159 = sub_2237290A8();
      v161 = v155;
      v103 = sub_2236B473C(v159, v160, v140);

      if (!v103)
      {
        v163 = sub_22372AC88();
        v164 = sub_22372B278();
        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          *v165 = 0;
          _os_log_impl(&dword_223620000, v163, v164, "selectPreNLUser: Could not find rcContext for unknown user. Will not post ASR output. Request will time out.", v165, 2u);
          MEMORY[0x223DE8A80](v165, -1, -1);
        }

        (*(v181 + 8))(v140, v158);
        goto LABEL_45;
      }

      swift_retain_n();
      sub_2236B138C(-1);
      sub_2236B1508(0);
      v162 = sub_22372A418();
      sub_2236B1684(v162);
      sub_2236B1800(1);
      sub_2236B197C(0);
      sub_2236B1AF8(0);

      (*(v161 + 8))(v140, v158);
    }

    type metadata accessor for MUXSpeechResultCandidateContext(0);
    v105 = swift_dynamicCastClass();
    if (v105)
    {
      v106 = v105;
      v107 = sub_2237290A8();
      sub_2236B477C(v107, v108, v106);

      v109 = sub_22372AC88();
      v110 = sub_22372B268();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        v196 = v194;
        *v111 = 136315650;
        v112 = *(v106 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId);
        v113 = *(v106 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId + 8);

        v114 = sub_223623274(v112, v113, &v196);

        *(v111 + 4) = v114;
        *(v111 + 12) = 2080;
        v115 = *(v106 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId);
        v116 = *(v106 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8);

        v117 = sub_223623274(v115, v116, &v196);

        *(v111 + 14) = v117;
        *(v111 + 22) = 2080;
        v118 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
        swift_beginAccess();
        v119 = v175;
        sub_22368509C(v103 + v118, v175);
        v120 = v181;
        v121 = v176;
        v122 = v119;
        v123 = v180;
        (*(v181 + 32))(v176, v122, v180);
        sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
        v124 = sub_22372B6B8();
        v126 = v125;
        (*(v120 + 8))(v121, v123);
        v127 = sub_223623274(v124, v126, &v196);
        v100 = v184;

        *(v111 + 24) = v127;
        _os_log_impl(&dword_223620000, v109, v110, "(selectPreNLUser: For ASR RC Id: %s and RC ID: %s), user: %s was chosen for running NL.", v111, 0x20u);
        v128 = v194;
        swift_arrayDestroy();
        MEMORY[0x223DE8A80](v128, -1, -1);
        MEMORY[0x223DE8A80](v111, -1, -1);
      }

      sub_2236AD6C8(v106);

      goto LABEL_45;
    }

    v147 = sub_22372AC88();
    v148 = sub_22372B278();

    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v199[0] = v150;
      *v149 = 136315138;
      v151 = *(v103 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId);
      v152 = *(v103 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8);

      v153 = sub_223623274(v151, v152, v199);

      *(v149 + 4) = v153;
      _os_log_impl(&dword_223620000, v147, v148, "selectPreNLUser: Found non speech ResultCandidateContext id : %s in a Speech request.", v149, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v150);
      MEMORY[0x223DE8A80](v150, -1, -1);
      MEMORY[0x223DE8A80](v149, -1, -1);

LABEL_36:

LABEL_45:
      sub_223685354(v100);
      return;
    }

    goto LABEL_41;
  }

  v141 = v57;
  v142 = sub_22372AC88();
  v143 = sub_22372B278();

  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    *v144 = 138412290;
    v146 = sub_223728E28();
    *(v144 + 4) = v146;
    *v145 = v146;
    _os_log_impl(&dword_223620000, v142, v143, "Somehow the voice ID score card in request context was not populated, even though we just stored one: %@", v144, 0xCu);
    sub_223626478(v145, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v145, -1, -1);
    MEMORY[0x223DE8A80](v144, -1, -1);
  }
}

void sub_2236A15FC(void *a1)
{
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_27D097070);
  v3 = a1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_223620000, v4, v5, "MUXProcessor received UserIdentificationMessage: %@", v6, 0xCu);
    sub_223626478(v7, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  v9 = sub_223728C08();
  if (v9)
  {
    oslog = v9;
    sub_2236B3B58(v9);
  }

  else
  {
    v10 = v3;
    oslog = sub_22372AC88();
    v11 = sub_22372B278();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v10;
      *v13 = v10;
      v14 = v10;
      _os_log_impl(&dword_223620000, oslog, v11, "Received User Identification message without voice ID score card: %@. This might be expected in the future, but for now this is unexpected.", v12, 0xCu);
      sub_223626478(v13, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v13, -1, -1);
      MEMORY[0x223DE8A80](v12, -1, -1);
    }
  }
}

void sub_2236A184C(void *a1)
{
  v2 = v1;
  v157 = sub_22372A548();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157, v4);
  v160 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_22372A298();
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167, v6);
  v165 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v164 = &v149 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v169 = &v149 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE90, &unk_22372FF60);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v163 = &v149 - v16;
  v168 = type metadata accessor for MUXUserAttributes(0);
  v162 = *(v168 - 1);
  MEMORY[0x28223BE20](v168, v17);
  v161 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_223729F08();
  v173 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v159 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v149 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v149 - v28;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v30 = sub_22372AC98();
  v31 = __swift_project_value_buffer(v30, qword_27D097070);
  v32 = a1;
  v170 = v31;
  v33 = sub_22372AC88();
  v34 = sub_22372B268();

  v35 = os_log_type_enabled(v33, v34);
  v172 = v2;
  v171 = v32;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v176[0] = v37;
    *v36 = 136315138;
    v38 = sub_2237290A8();
    v40 = sub_223623274(v38, v39, v176);

    *(v36 + 4) = v40;
    v41 = v172;
    _os_log_impl(&dword_223620000, v33, v34, "Handling MUXTextBasedResultCandidateMessage with rcId: %s.", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x223DE8A80](v37, -1, -1);
    v42 = v36;
    v2 = v41;
    MEMORY[0x223DE8A80](v42, -1, -1);
  }

  v43 = qword_27D097100;
  swift_beginAccess();
  v44 = v173;
  v158 = v173[2];
  v158(v29, v2 + v43, v19);
  (v44[13])(v26, *MEMORY[0x277D5CF28], v19);
  sub_2236B12D0(&qword_28132B538, MEMORY[0x277D5CF58], MEMORY[0x277D5CF68]);
  sub_22372B0F8();
  sub_22372B0F8();
  if (v176[0] == v174 && v176[1] == v175)
  {
    v45 = 1;
  }

  else
  {
    v45 = sub_22372B6E8();
  }

  v47 = v173 + 1;
  v46 = v173[1];
  v46(v26, v19);
  v173 = v47;
  v46(v29, v19);

  if (v45)
  {
    v48 = v172;
    v49 = *(v172 + qword_27D097110);
    if (!*(v49 + 72))
    {
      v50 = sub_223729678();
      sub_2236B3B58(v50);

      v48 = v172;
    }

    v51 = qword_27D097108;
    swift_beginAccess();
    sub_223623934(v48 + v51, v176);
    v52 = v178;
    v159 = v177;
    v173 = __swift_project_boxed_opaque_existential_1(v176, v177);
    v152 = *(v49 + 72);
    v53 = v152;
    v54 = qword_27D097118;
    swift_beginAccess();
    sub_223634890(v48 + v54, v169, &unk_27D08F6F0, &qword_223732CD0);
    v158 = qword_27D097120;
    v55 = *(v48 + qword_27D097128);
    v56 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_requestIdToRequestContext;
    swift_beginAccess();
    v151 = *(v55 + v56);
    v57 = *(v48 + qword_27D097130 + 8);
    v155 = *(v48 + qword_27D097130);
    v154 = v57;
    v58 = qword_27D097138;
    swift_beginAccess();
    v59 = v164;
    sub_223634890(v48 + v58, v164, &unk_27D08E990, &qword_22372FCF0);
    v153 = v53;

    LOBYTE(v58) = sub_223727EF8();
    v60 = v166;
    v61 = v165;
    v62 = v167;
    (*(v166 + 104))(v165, *MEMORY[0x277D5D0D0], v167);
    v149 = v49;
    v63 = *(v49 + 80);
    v64 = *(v52 + 8);
    v150 = v63;
    v65 = v158 + v48;
    v148 = v63;
    v66 = v163;
    v67 = v169;
    v64(v152, v169, v65, v151, v155, v154, v59, v58 & 1, v61, v148, v159, v52);

    (*(v60 + 8))(v61, v62);
    sub_223626478(v59, &unk_27D08E990, &qword_22372FCF0);
    sub_223626478(v67, &unk_27D08F6F0, &qword_223732CD0);
    if ((*(v162 + 48))(v66, 1, v168) == 1)
    {
      sub_223626478(v66, &qword_27D08EE90, &unk_22372FF60);
      __swift_destroy_boxed_opaque_existential_1Tm(v176);
      v68 = v171;
      v69 = sub_22372AC88();
      v70 = sub_22372B278();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v176[0] = v72;
        *v71 = 136315138;
        v73 = sub_2237290A8();
        v75 = sub_223623274(v73, v74, v176);

        *(v71 + 4) = v75;
        _os_log_impl(&dword_223620000, v69, v70, "Pre NL user selection failed for text request: %s. This request will fail.", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        MEMORY[0x223DE8A80](v72, -1, -1);
        MEMORY[0x223DE8A80](v71, -1, -1);
      }
    }

    else
    {
      v91 = v161;
      sub_2236852F0(v66, v161);
      v92 = __swift_destroy_boxed_opaque_existential_1Tm(v176);
      MEMORY[0x28223BE20](v92, v93);
      v94 = v171;
      v95 = objc_allocWithZone(sub_2237293C8());
      v96 = sub_223729348();
      if (v96)
      {
        v97 = v96;
        v98 = sub_2237290A8();
        v173 = v97;
        v99 = v98;
        v101 = v100;
        v102 = sub_2237290A8();
        v104 = v103;
        v105 = sub_223729688();
        v107 = v106;
        v108 = v168;
        v109 = v168[5];
        LODWORD(v171) = *(v91 + v168[6]);
        v167 = *(v91 + v109);
        LODWORD(v169) = *(v91 + v168[8]);
        v110 = v156;
        v111 = v157;
        (*(v156 + 16))(v160, v91, v157);
        type metadata accessor for MUXTextBasedResultCandidateContext(0);
        v112 = swift_allocObject();
        v113 = (v112 + OBJC_IVAR____TtC24RequestDispatcherBridges34MUXTextBasedResultCandidateContext_utterance);
        *v113 = v105;
        v113[1] = v107;
        v114 = (v112 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId);
        *v114 = v99;
        v114[1] = v101;
        v115 = (v112 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId);
        *v115 = v102;
        v115[1] = v104;
        *(v112 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses) = 0;
        v116 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode;
        v117 = sub_223727678();
        (*(*(v117 - 8) + 56))(v112 + v116, 1, 1, v117);
        v118 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult;
        v119 = sub_223727758();
        (*(*(v119 - 8) + 56))(v112 + v118, 1, 1, v119);
        v120 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState;
        *(v112 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 0;
        *(v112 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback) = 0;
        *(v112 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending) = 0;
        *(v112 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_isMitigated) = 0;
        v121 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
        v122 = sub_22372AEE8();
        (*(*(v122 - 8) + 56))(v112 + v121, 1, 1, v122);
        v123 = v112 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs;
        *v123 = 0;
        *(v123 + 8) = 1;
        v124 = v112 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
        (*(v110 + 32))(v112 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute, v160, v111);
        *(v124 + v108[5]) = v167;
        *(v124 + v108[6]) = v171;
        *(v124 + v108[8]) = v169;
        *(v124 + v108[7]) = 0;
        *(v124 + v108[9]) = 2;
        *(v124 + v108[10]) = 2;
        v125 = (v112 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
        *v125 = v99;
        v125[1] = v101;
        v126 = v173;
        v127 = (v112 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        *v127 = v102;
        v127[1] = v104;

        sub_2236B4024(v128);
        sub_2236B1FA4(1u);
        *(v112 + v120) = 1;

        v129 = v126;
        v130 = sub_22372AC88();
        v131 = sub_22372B268();

        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          *v132 = 138412290;
          *(v132 + 4) = v129;
          *v133 = v126;
          v134 = v129;
          _os_log_impl(&dword_223620000, v130, v131, "Posting TextBasedResultCandidateMessage: %@", v132, 0xCu);
          sub_223626478(v133, &unk_27D08F250, &unk_22372D1D0);
          MEMORY[0x223DE8A80](v133, -1, -1);
          MEMORY[0x223DE8A80](v132, -1, -1);
        }

        sub_22372A758();
        __swift_project_boxed_opaque_existential_1(v176, v177);
        sub_223729D88();

        __swift_destroy_boxed_opaque_existential_1Tm(v176);
        v135 = v161;
      }

      else
      {
        v136 = v94;
        v137 = sub_22372AC88();
        v138 = sub_22372B278();

        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v176[0] = v140;
          *v139 = 136315394;
          v141 = sub_223729D38();
          v143 = sub_223623274(v141, v142, v176);

          *(v139 + 4) = v143;
          *(v139 + 12) = 2080;
          v144 = sub_2237290A8();
          v146 = sub_223623274(v144, v145, v176);

          *(v139 + 14) = v146;
          _os_log_impl(&dword_223620000, v137, v138, "Failed to create TextBasedResultCandidateMessage for request Id: %s for rc id : %s", v139, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v140, -1, -1);
          v147 = v139;
          v91 = v161;
          MEMORY[0x223DE8A80](v147, -1, -1);
        }

        v135 = v91;
      }

      sub_223685354(v135);
    }
  }

  else
  {
    v76 = v171;
    v77 = v172;

    v78 = sub_22372AC88();
    v79 = sub_22372B278();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v170 = v81;
      v171 = swift_slowAlloc();
      v176[0] = v171;
      *v80 = 138412546;
      *(v80 + 4) = v76;
      *v81 = v76;
      *(v80 + 12) = 2080;
      v82 = v77 + v43;
      v83 = v159;
      v158(v159, v82, v19);
      v84 = v76;
      v85 = sub_223729EF8();
      v87 = v86;
      v46(v83, v19);
      v88 = sub_223623274(v85, v87, v176);

      *(v80 + 14) = v88;
      _os_log_impl(&dword_223620000, v78, v79, "%@ is not supported for current requestType: %s", v80, 0x16u);
      v89 = v170;
      sub_223626478(v170, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v89, -1, -1);
      v90 = v171;
      __swift_destroy_boxed_opaque_existential_1Tm(v171);
      MEMORY[0x223DE8A80](v90, -1, -1);
      MEMORY[0x223DE8A80](v80, -1, -1);
    }
  }
}

uint64_t sub_2236A2A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v23 - v14;
  v16 = *MEMORY[0x277D5CDE0];
  v17 = sub_223729DE8();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v15, v16, v17);
  (*(v18 + 56))(v15, 0, 1, v17);
  sub_223729378();
  sub_223729D98();
  sub_223729368();
  sub_223729D58();
  v19 = sub_223727408();
  (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
  sub_2237293A8();
  sub_223729D38();
  sub_223729398();
  sub_2237290A8();
  sub_223729358();
  sub_223729688();
  sub_2237293B8();
  v20 = sub_22372A548();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v7, a3, v20);
  (*(v21 + 56))(v7, 0, 1, v20);
  return sub_223729388();
}

void sub_2236A2CF8(void *a1)
{
  v159 = sub_22372A548();
  v155 = *(v159 - 8);
  MEMORY[0x28223BE20](v159, v2);
  v158 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_22372A298();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166, v4);
  v164 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v163 = &v148 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v169 = (&v148 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE90, &unk_22372FF60);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v148 - v14;
  v167 = type metadata accessor for MUXUserAttributes(0);
  v161 = *(v167 - 1);
  MEMORY[0x28223BE20](v167, v16);
  v18 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_223729F08();
  v172 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v157 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v148 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v148 - v28;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v30 = sub_22372AC98();
  v31 = __swift_project_value_buffer(v30, qword_27D097070);
  v32 = a1;
  v170 = v31;
  v33 = sub_22372AC88();
  v34 = sub_22372B268();

  v35 = os_log_type_enabled(v33, v34);
  v160 = v18;
  v162 = v15;
  v168 = v32;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v175[0] = v37;
    *v36 = 136315138;
    v38 = sub_2237290A8();
    v40 = sub_223623274(v38, v39, v175);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_223620000, v33, v34, "Handling MUXDirectActionResultCandidateMessage with rcId: %s.", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x223DE8A80](v37, -1, -1);
    MEMORY[0x223DE8A80](v36, -1, -1);
  }

  v41 = qword_27D097100;
  v42 = v171;
  swift_beginAccess();
  v43 = v172;
  v156 = v172[2];
  v156(v29, v42 + v41, v19);
  (v43[13])(v26, *MEMORY[0x277D5CF08], v19);
  sub_2236B12D0(&qword_28132B538, MEMORY[0x277D5CF58], MEMORY[0x277D5CF68]);
  sub_22372B0F8();
  sub_22372B0F8();
  if (v175[0] == v173 && v175[1] == v174)
  {
    v44 = 1;
  }

  else
  {
    v44 = sub_22372B6E8();
  }

  v46 = v172 + 1;
  v45 = v172[1];
  v45(v26, v19);
  v172 = v46;
  v45(v29, v19);

  if (v44)
  {
    v47 = qword_27D097108;
    v48 = v171;
    swift_beginAccess();
    sub_223623934(v48 + v47, v175);
    v49 = v177;
    v157 = v176;
    v172 = __swift_project_boxed_opaque_existential_1(v175, v176);
    v50 = *(v48 + qword_27D097110);
    v151 = *(v50 + 72);
    v51 = v151;
    v52 = qword_27D097118;
    swift_beginAccess();
    sub_223634890(v48 + v52, v169, &unk_27D08F6F0, &qword_223732CD0);
    v156 = qword_27D097120;
    v53 = *(v48 + qword_27D097128);
    v54 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_requestIdToRequestContext;
    swift_beginAccess();
    v150 = *(v53 + v54);
    v55 = *(v48 + qword_27D097130 + 8);
    v154 = *(v48 + qword_27D097130);
    v153 = v55;
    v56 = qword_27D097138;
    swift_beginAccess();
    v57 = v163;
    sub_223634890(v48 + v56, v163, &unk_27D08E990, &qword_22372FCF0);
    v152 = v51;

    LOBYTE(v56) = sub_223727EF8();
    v58 = v165;
    v59 = v164;
    v60 = v166;
    (*(v165 + 104))(v164, *MEMORY[0x277D5D0D0], v166);
    v148 = v50;
    v61 = *(v50 + 80);
    v62 = v49;
    v63 = *(v49 + 8);
    v149 = v61;
    v64 = v156 + v48;
    v147 = v61;
    v65 = v162;
    v66 = v169;
    v63(v151, v169, v64, v150, v154, v153, v57, v56 & 1, v59, v147, v157, v62);

    (*(v58 + 8))(v59, v60);
    sub_223626478(v57, &unk_27D08E990, &qword_22372FCF0);
    sub_223626478(v66, &unk_27D08F6F0, &qword_223732CD0);
    if ((*(v161 + 48))(v65, 1, v167) == 1)
    {
      sub_223626478(v65, &qword_27D08EE90, &unk_22372FF60);
      __swift_destroy_boxed_opaque_existential_1Tm(v175);
      v67 = v168;
      v68 = sub_22372AC88();
      v69 = sub_22372B278();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v175[0] = v71;
        *v70 = 136315138;
        v72 = sub_2237290A8();
        v74 = sub_223623274(v72, v73, v175);

        *(v70 + 4) = v74;
        _os_log_impl(&dword_223620000, v68, v69, "Pre NL user selection failed for direct action request: %s. This request will fail.", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        MEMORY[0x223DE8A80](v71, -1, -1);
        MEMORY[0x223DE8A80](v70, -1, -1);
      }
    }

    else
    {
      v90 = v160;
      sub_2236852F0(v65, v160);
      v91 = __swift_destroy_boxed_opaque_existential_1Tm(v175);
      MEMORY[0x28223BE20](v91, v92);
      v93 = v168;
      v94 = objc_allocWithZone(sub_223729668());
      v95 = sub_2237295D8();
      if (v95)
      {
        v96 = v95;
        v97 = sub_2237290A8();
        v99 = v98;
        v100 = sub_2237290A8();
        v102 = v101;
        v103 = sub_223729958();
        v172 = v96;
        v104 = v103;
        v106 = v105;
        v107 = sub_223729968();
        v108 = v167;
        v109 = v167[5];
        LODWORD(v169) = *(v90 + v167[6]);
        v166 = *(v90 + v109);
        LODWORD(v168) = *(v90 + v167[8]);
        v110 = v155;
        (*(v155 + 16))(v158, v90, v159);
        type metadata accessor for MUXDirectActionResultCandidateContext(0);
        v111 = swift_allocObject();
        v112 = (v111 + OBJC_IVAR____TtC24RequestDispatcherBridges37MUXDirectActionResultCandidateContext_directAction);
        *v112 = v104;
        v112[1] = v106;
        *(v111 + OBJC_IVAR____TtC24RequestDispatcherBridges37MUXDirectActionResultCandidateContext_requestExecutionParameters) = v107;
        v113 = (v111 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId);
        *v113 = v97;
        v113[1] = v99;
        v114 = (v111 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId);
        *v114 = v100;
        v114[1] = v102;
        *(v111 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses) = 0;
        v115 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode;
        v116 = sub_223727678();
        (*(*(v116 - 8) + 56))(v111 + v115, 1, 1, v116);
        v117 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult;
        v118 = sub_223727758();
        (*(*(v118 - 8) + 56))(v111 + v117, 1, 1, v118);
        v119 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState;
        *(v111 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 0;
        *(v111 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback) = 0;
        *(v111 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending) = 0;
        *(v111 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_isMitigated) = 0;
        v120 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
        v121 = sub_22372AEE8();
        (*(*(v121 - 8) + 56))(v111 + v120, 1, 1, v121);
        v122 = v111 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs;
        *v122 = 0;
        *(v122 + 8) = 1;
        v123 = v111 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
        (*(v110 + 32))(v111 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute, v158, v159);
        *(v123 + v108[5]) = v166;
        *(v123 + v108[6]) = v169;
        *(v123 + v108[8]) = v168;
        *(v123 + v108[7]) = 0;
        *(v123 + v108[9]) = 2;
        *(v123 + v108[10]) = 2;
        v124 = (v111 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
        *v124 = v97;
        v124[1] = v99;
        v125 = (v111 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        *v125 = v100;
        v125[1] = v102;

        sub_2236B4024(v126);
        sub_2236B1FA4(1u);
        *(v111 + v119) = 1;
        v127 = v172;

        v128 = v127;
        v129 = sub_22372AC88();
        v130 = sub_22372B268();

        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          *v131 = 138412290;
          *(v131 + 4) = v128;
          *v132 = v127;
          v133 = v128;
          _os_log_impl(&dword_223620000, v129, v130, "Posting DirectActionResultCandidateMessage: %@", v131, 0xCu);
          sub_223626478(v132, &unk_27D08F250, &unk_22372D1D0);
          MEMORY[0x223DE8A80](v132, -1, -1);
          MEMORY[0x223DE8A80](v131, -1, -1);
        }

        sub_22372A758();
        __swift_project_boxed_opaque_existential_1(v175, v176);
        sub_223729D88();

        __swift_destroy_boxed_opaque_existential_1Tm(v175);
        v134 = v160;
      }

      else
      {
        v135 = v93;
        v136 = sub_22372AC88();
        v137 = sub_22372B278();

        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v175[0] = v139;
          *v138 = 136315394;
          v140 = sub_223729D38();
          v142 = sub_223623274(v140, v141, v175);

          *(v138 + 4) = v142;
          *(v138 + 12) = 2080;
          v143 = sub_2237290A8();
          v145 = sub_223623274(v143, v144, v175);

          *(v138 + 14) = v145;
          _os_log_impl(&dword_223620000, v136, v137, "Failed to create DirectActionResultCandidateMessage for request Id: %s for rc id : %s", v138, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v139, -1, -1);
          v146 = v138;
          v90 = v160;
          MEMORY[0x223DE8A80](v146, -1, -1);
        }

        v134 = v90;
      }

      sub_223685354(v134);
    }
  }

  else
  {
    v75 = v168;
    v76 = v171;

    v77 = sub_22372AC88();
    v78 = sub_22372B278();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v169 = v80;
      v170 = swift_slowAlloc();
      v175[0] = v170;
      *v79 = 138412546;
      *(v79 + 4) = v75;
      *v80 = v75;
      *(v79 + 12) = 2080;
      v81 = v76 + v41;
      v82 = v157;
      v156(v157, v81, v19);
      v83 = v75;
      v84 = sub_223729EF8();
      v86 = v85;
      v45(v82, v19);
      v87 = sub_223623274(v84, v86, v175);

      *(v79 + 14) = v87;
      _os_log_impl(&dword_223620000, v77, v78, "%@ is not supported for current requestType: %s", v79, 0x16u);
      v88 = v169;
      sub_223626478(v169, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v88, -1, -1);
      v89 = v170;
      __swift_destroy_boxed_opaque_existential_1Tm(v170);
      MEMORY[0x223DE8A80](v89, -1, -1);
      MEMORY[0x223DE8A80](v79, -1, -1);
    }
  }
}