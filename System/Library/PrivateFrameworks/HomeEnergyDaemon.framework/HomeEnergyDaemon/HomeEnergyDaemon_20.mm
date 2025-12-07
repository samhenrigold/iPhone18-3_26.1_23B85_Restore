uint64_t sub_22B33BD94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB088, &unk_22B3678D0);
  v34 = v4;
  result = sub_22B3612AC();
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

      sub_22B36149C();
      sub_22B3608FC();
      result = sub_22B3614DC();
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

uint64_t sub_22B33C03C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC40, &unk_22B367380);
  v33 = v4;
  result = sub_22B3612AC();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_22B172454(v24, v34);
      }

      else
      {
        sub_22B170C58(v24, v34);
      }

      sub_22B36149C();
      sub_22B3608FC();
      result = sub_22B3614DC();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_22B172454(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_22B33C2F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22B35DE9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0C0, &qword_22B367920);
  v43 = v4;
  result = sub_22B3612AC();
  v10 = result;
  if (*(v8 + 16))
  {
    v48 = v5;
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
    v39 = v2;
    v40 = (v6 + 16);
    v41 = v8;
    v42 = v6;
    v45 = (v6 + 32);
    v17 = result + 64;
    v18 = v44;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48) + *(v42 + 72) * v25;
      v46 = *(v42 + 72);
      v47 = v22;
      if (v43)
      {
        (*v45)(v18, v26, v48);
        v27 = (*(v8 + 56) + 16 * v25);
        v29 = *v27;
        v28 = v27[1];
      }

      else
      {
        (*v40)(v18, v26, v48);
        v30 = (*(v8 + 56) + 16 * v25);
        v29 = *v30;
        v28 = v30[1];
        sub_22B144B30(*v30, v28);
      }

      sub_22B342F58(&qword_27D8BA348, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_22B36071C();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v18 = v44;
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
      v18 = v44;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v10 + 48) + v46 * v19, v18, v48);
      v20 = (*(v10 + 56) + 16 * v19);
      *v20 = v29;
      v20[1] = v28;
      ++*(v10 + 16);
      v8 = v41;
      v15 = v47;
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

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v39;
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

uint64_t sub_22B33C6DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22B35DE9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA360, &unk_22B364030);
  v39 = v4;
  result = sub_22B3612AC();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v19 = v6;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v41 = *(v19 + 72);
      v26 = v25 + v41 * v24;
      if (v39)
      {
        (*v40)(v42, v26, v43);
      }

      else
      {
        (*v37)(v42, v26, v43);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_22B342F58(&qword_27D8BA348, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_22B36071C();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v40)(*(v11 + 48) + v41 * v20, v42, v43);
      *(*(v11 + 56) + 8 * v20) = v27;
      ++*(v11 + 16);
      v19 = v38;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_22B33CAA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0A8, &unk_22B3678F8);
  v37 = v4;
  result = sub_22B3612AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = *v24;
      v38 = v24[1];
      v39 = *v22;
      v26 = v24[2];
      if ((v37 & 1) == 0)
      {
      }

      sub_22B36149C();
      sub_22B3608FC();
      result = sub_22B3614DC();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v39;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v25;
      v17[1] = v38;
      v17[2] = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22B33CD78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0D8, &qword_22B367938);
  result = sub_22B3612AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      result = sub_22B36148C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
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

uint64_t sub_22B33CFDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22B35DE9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v44 - v9;
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod(0);
  v53 = *(Events - 8);
  v54 = Events;
  MEMORY[0x28223BE20](Events);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0B0, &qword_22B367908);
  v55 = v4;
  result = sub_22B3612AC();
  v15 = result;
  if (*(v13 + 16))
  {
    v52 = v5;
    v45 = v2;
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
    v50 = (v6 + 48);
    v47 = (v6 + 32);
    v46 = (v6 + 8);
    v22 = result + 64;
    v48 = v13;
    v51 = result;
    v23 = v54;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v26 = (v20 - 1) & v20;
LABEL_15:
      v29 = v25 | (v16 << 6);
      v30 = *(v13 + 48);
      v58 = *(v53 + 72);
      v59 = v26;
      v31 = v30 + v58 * v29;
      if (v55)
      {
        sub_22B343008(v31, v12, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        v57 = *(*(v13 + 56) + 8 * v29);
      }

      else
      {
        sub_22B342FA0(v31, v12, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        v57 = *(*(v13 + 56) + 8 * v29);
      }

      sub_22B36149C();
      sub_22B3608FC();
      sub_22B3608FC();
      sub_22B342F58(&qword_27D8BA348, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      v32 = v52;
      sub_22B36072C();
      v33 = v56;
      sub_22B170BE0(&v12[*(v23 + 28)], v56, &qword_27D8BA340, &qword_22B363FB0);
      if ((*v50)(v33, 1, v32) == 1)
      {
        sub_22B3614BC();
      }

      else
      {
        v34 = v49;
        (*v47)(v49, v56, v32);
        sub_22B3614BC();
        sub_22B36072C();
        v35 = v34;
        v13 = v48;
        (*v46)(v35, v32);
      }

      result = sub_22B3614DC();
      v15 = v51;
      v36 = -1 << *(v51 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v22 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v22 + 8 * v38);
          if (v42 != -1)
          {
            v24 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v37) & ~*(v22 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_22B343008(v12, v15[6] + v58 * v24, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      *(v15[7] + 8 * v24) = v57;
      ++v15[2];
      v20 = v59;
    }

    v27 = v16;
    while (1)
    {
      v16 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v16 >= v21)
      {
        break;
      }

      v28 = v17[v16];
      ++v27;
      if (v28)
      {
        v25 = __clz(__rbit64(v28));
        v26 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v55 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_37;
    }

    v43 = 1 << *(v13 + 32);
    v3 = v45;
    if (v43 >= 64)
    {
      bzero(v17, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v43;
    }

    *(v13 + 16) = 0;
  }

LABEL_37:
  *v3 = v15;
  return result;
}

uint64_t sub_22B33D598(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22B35DF1C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0A0, &qword_22B3678F0);
  v40 = v4;
  result = sub_22B3612AC();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_22B342F58(&unk_27D8BA320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22B36071C();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_22B33D958(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v48 = sub_22B35DE9C();
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAEA0, &unk_22B367400);
  v43 = v4;
  result = sub_22B3612AC();
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

      sub_22B36149C();
      sub_22B3608FC();
      sub_22B3608FC();
      result = sub_22B3614DC();
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

uint64_t sub_22B33DD14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SessionKey(0);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE90, &qword_22B3673F0);
  v43 = v4;
  result = sub_22B3612AC();
  v10 = result;
  if (*(v8 + 16))
  {
    v39 = v2;
    v40 = v8;
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
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48);
      v46 = *(v41 + 72);
      v47 = v22;
      v27 = v26 + v46 * v25;
      if (v43)
      {
        sub_22B343008(v27, v7, type metadata accessor for SessionKey);
      }

      else
      {
        sub_22B342FA0(v27, v7, type metadata accessor for SessionKey);
      }

      v28 = (*(v8 + 56) + 2 * v25);
      v29 = v28[1];
      v44 = *v28;
      v45 = v29;
      sub_22B36149C();
      sub_22B35DF1C();
      sub_22B342F58(&unk_27D8BA320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22B36072C();
      sub_22B36072C();
      sub_22B3608FC();
      sub_22B3608FC();
      sub_22B3608FC();
      sub_22B36072C();
      result = sub_22B3614DC();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v8 = v40;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v8 = v40;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_22B343008(v7, *(v10 + 48) + v46 * v18, type metadata accessor for SessionKey);
      v19 = (*(v10 + 56) + 2 * v18);
      v20 = v45;
      *v19 = v44;
      v19[1] = v20;
      ++*(v10 + 16);
      v15 = v47;
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

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_22B33E160(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB090, &qword_22B3678E0);
  v35 = v4;
  result = sub_22B3612AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_22B36149C();
      sub_22B3608FC();
      result = sub_22B3614DC();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22B33E404(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE0, &unk_22B3673C0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - v6;
  v7 = sub_22B35DE9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE68, &qword_22B3673B8);
  v43 = v4;
  result = sub_22B3612AC();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
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
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_22B3229C4(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_22B170BE0(v29 + v28 * v24, v47, &qword_27D8BAAE0, &unk_22B3673C0);
      }

      sub_22B342F58(&qword_27D8BA348, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_22B36071C();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_22B3229C4(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
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

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_22B33E880(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0D0, &qword_22B367930);
  result = sub_22B3612AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      result = sub_22B36148C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_33;
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
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_22B33EAE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_22B35F00C();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B35DE9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0C8, &qword_22B367928);
  v47 = v4;
  result = sub_22B3612AC();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_22B342F58(&qword_27D8BA348, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_22B36071C();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

void sub_22B33EF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_22B33B28C(a3, a4);
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
      sub_22B33BAD0(v18, a5 & 1);
      v13 = sub_22B33B28C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_22B3613BC();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_22B340F90();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void sub_22B33F11C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B33B28C(a2, a3);
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
      sub_22B33BD94(v16, a4 & 1);
      v11 = sub_22B33B28C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22B3613BC();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_22B34111C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
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
}

void sub_22B33F298(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B33B28C(a2, a3);
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
      sub_22B34128C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22B33C03C(v16, a4 & 1);
    v11 = sub_22B33B28C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_22B3613BC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    sub_22B172454(a1, v22);
  }

  else
  {
    sub_22B33FD48(v11, a2, a3, a1, v21);
  }
}

void sub_22B33F3E8(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod(0);
  MEMORY[0x28223BE20](Events);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_22B33B460(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_22B341C14();
      goto LABEL_7;
    }

    sub_22B33CFDC(v16, a3 & 1);
    v20 = sub_22B33B460(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      v13 = v20;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_22B342FA0(a2, v10, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      sub_22B33FDB4(v13, v10, a1, v19);
      return;
    }

LABEL_15:
    sub_22B3613BC();
    __break(1u);
    return;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_22B33F58C(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22B35DF1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_22B33B6BC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_22B341E60();
    goto LABEL_7;
  }

  sub_22B33D598(result, a3 & 1);
  result = sub_22B33B6BC(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_22B3613BC();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_22B33FE68(v14, v11, a1 & 1, v20);
}

uint64_t sub_22B33F72C(__int16 a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SessionKey(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_22B33B830(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 2 * v13);
      *v20 = a1 & 1;
      v20[1] = HIBYTE(a1) & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v18 >= result && (a3 & 1) == 0)
  {
    result = sub_22B342364();
    goto LABEL_7;
  }

  sub_22B33DD14(result, a3 & 1);
  result = sub_22B33B830(a2);
  if ((v17 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_22B3613BC();
    __break(1u);
    return result;
  }

  v13 = result;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22B342FA0(a2, v10, type metadata accessor for SessionKey);
  return sub_22B33FF20(v13, v10, a1 & 0x101, v19);
}

void sub_22B33F8B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B33B28C(a2, a3);
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
      sub_22B33E160(v16, a4 & 1);
      v11 = sub_22B33B28C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22B3613BC();
        __break(1u);
_objc_release_x1:
        MEMORY[0x2821F96F8]();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_22B3425C0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
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
}

uint64_t sub_22B33FA2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22B35DE9C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_22B33B348(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_22B34272C();
      goto LABEL_7;
    }

    sub_22B33E404(v17, a3 & 1);
    v24 = sub_22B33B348(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_22B33FFE4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_22B3613BC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE0, &unk_22B3673C0) - 8) + 72) * v14;

  return sub_22B342EE8(a1, v22);
}

unint64_t sub_22B33FC20(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_22B33B41C(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_22B342A48();
    result = v17;
    goto LABEL_8;
  }

  sub_22B33E880(v14, a2 & 1);
  result = sub_22B33B41C(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a1;
    *(v19[7] + 8 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_22B3613BC();
  __break(1u);
  return result;
}

_OWORD *sub_22B33FD48(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22B172454(a4, (a5[7] + 32 * a1));
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

uint64_t sub_22B33FDB4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod(0);
  result = sub_22B343008(a2, v8 + *(*(Events - 8) + 72) * a1, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
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

uint64_t sub_22B33FE68(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22B35DF1C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
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

uint64_t sub_22B33FF20(unint64_t a1, uint64_t a2, __int16 a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for SessionKey(0);
  result = sub_22B343008(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for SessionKey);
  v11 = (a4[7] + 2 * a1);
  *v11 = a3 & 1;
  v11[1] = HIBYTE(a3) & 1;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_22B33FFE4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22B35DE9C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE0, &unk_22B3673C0);
  result = sub_22B3229C4(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_22B3400CC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22B35DE9C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_22B35F00C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_22B3401C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22B2F2694(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23188EA20](v9, a1);
      sub_22B1B0560(v9);
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

unint64_t sub_22B340288(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22B36134C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22B340340(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22B360FBC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22B340414(uint64_t a1, uint64_t a2)
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

unint64_t sub_22B340480(uint64_t *a1, uint64_t a2)
{
  v5 = sub_22B35DE9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA730, &unk_22B367910);
  MEMORY[0x28223BE20](v48);
  v12 = &v36 - v11;
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod(0);
  MEMORY[0x28223BE20](Events);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v2 + 64;
  v17 = -1 << *(v2 + 32);
  v18 = a2 & ~v17;
  if (((*(v2 + 64 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
    return v18;
  }

  v46 = v2;
  v47 = v5;
  v19 = ~v17;
  v20 = v6;
  v21 = *a1;
  v22 = a1[1];
  v43 = v2 + 64;
  v44 = (v20 + 48);
  v36 = (v20 + 32);
  v39 = (v20 + 8);
  v40 = v10;
  v49 = *(v13 + 72);
  v23 = Events;
  v45 = ~v17;
  v42 = v21;
  while (1)
  {
    sub_22B342FA0(*(v2 + 48) + v49 * v18, v15, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    v25 = *v15 == v21 && v15[1] == v22;
    if (!v25 && (sub_22B36134C() & 1) == 0)
    {
      goto LABEL_5;
    }

    v26 = v15[2] == a1[2] && v15[3] == a1[3];
    if (!v26 && (sub_22B36134C() & 1) == 0 || (sub_22B35DE4C() & 1) == 0)
    {
      goto LABEL_5;
    }

    v27 = *(v23 + 28);
    v28 = *(v48 + 48);
    sub_22B170BE0(v15 + v27, v12, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B170BE0(a1 + v27, &v12[v28], &qword_27D8BA340, &qword_22B363FB0);
    v29 = *v44;
    v30 = v47;
    if ((*v44)(v12, 1, v47) == 1)
    {
      break;
    }

    v31 = v40;
    sub_22B170BE0(v12, v40, &qword_27D8BA340, &qword_22B363FB0);
    if (v29(&v12[v28], 1, v30) == 1)
    {
      (*v39)(v31, v30);
      v19 = v45;
      v2 = v46;
      v23 = Events;
      goto LABEL_4;
    }

    v32 = &v12[v28];
    v33 = v37;
    (*v36)(v37, v32, v30);
    sub_22B342F58(&qword_27D8BA430, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v38 = sub_22B36078C();
    v34 = *v39;
    (*v39)(v33, v30);
    v34(v31, v30);
    sub_22B123284(v12, &qword_27D8BA340, &qword_22B363FB0);
    v19 = v45;
    v2 = v46;
    v16 = v43;
    v23 = Events;
    v21 = v42;
    if (v38)
    {
      goto LABEL_24;
    }

LABEL_5:
    sub_22B343070(v15, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    v18 = (v18 + 1) & v19;
    if (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return v18;
    }
  }

  v24 = v29(&v12[v28], 1, v30);
  v19 = v45;
  v2 = v46;
  if (v24 != 1)
  {
LABEL_4:
    sub_22B123284(v12, &qword_27D8BA730, &unk_22B367910);
    v21 = v42;
    v16 = v43;
    goto LABEL_5;
  }

  sub_22B123284(v12, &qword_27D8BA340, &qword_22B363FB0);
LABEL_24:
  sub_22B343070(v15, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
  return v18;
}

unint64_t sub_22B3409B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_22B342F58(v24, v25, v26);
      v20 = sub_22B36078C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_22B340B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_22B36134C() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_22B36134C() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_22B340C58(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SessionKey(0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    while (1)
    {
      sub_22B342FA0(*(v2 + 48) + v12 * v10, v8, type metadata accessor for SessionKey);
      if (sub_22B35DEEC() & 1) != 0 && (sub_22B35DEEC())
      {
        v13 = v5[6];
        v14 = *&v8[v13];
        v15 = *&v8[v13 + 8];
        v16 = (a1 + v13);
        v17 = v14 == *v16 && v15 == v16[1];
        if (v17 || (sub_22B36134C() & 1) != 0)
        {
          v18 = v5[7];
          v19 = *&v8[v18];
          v20 = *&v8[v18 + 8];
          v21 = (a1 + v18);
          v22 = v19 == *v21 && v20 == v21[1];
          if (v22 || (sub_22B36134C() & 1) != 0)
          {
            v23 = v5[8];
            v24 = *&v8[v23];
            v25 = *&v8[v23 + 8];
            v26 = (a1 + v23);
            v27 = v24 == *v26 && v25 == v26[1];
            if (v27 || (sub_22B36134C()) && (sub_22B35DEEC())
            {
              break;
            }
          }
        }
      }

      sub_22B343070(v8, type metadata accessor for SessionKey);
      v10 = (v10 + 1) & v11;
      if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    sub_22B343070(v8, type metadata accessor for SessionKey);
  }

  return v10;
}

unint64_t sub_22B340E8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_22B36084C();
      v8 = v7;
      if (v6 == sub_22B36084C() && v8 == v9)
      {
        break;
      }

      v11 = sub_22B36134C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

id sub_22B340F90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB098, &qword_22B3678E8);
  v2 = *v0;
  v3 = sub_22B36129C();
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = *(&v22 + 1);
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

void *sub_22B34111C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB088, &unk_22B3678D0);
  v2 = *v0;
  v3 = sub_22B36129C();
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

void sub_22B34128C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC40, &unk_22B367380);
  v2 = *v0;
  v3 = sub_22B36129C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_22B170C58(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22B172454(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

char *sub_22B341430()
{
  v1 = v0;
  v2 = sub_22B35DE9C();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0C0, &qword_22B367920);
  v5 = *v0;
  v6 = sub_22B36129C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v40 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v36 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v38;
        v22 = v39;
        v23 = *(v39 + 72) * v20;
        v24 = v37;
        (*(v39 + 16))(v37, *(v5 + 48) + v23, v38);
        v25 = *(v5 + 56);
        v26 = 16 * v20;
        v27 = (v25 + 16 * v20);
        v28 = *v27;
        v29 = v27[1];
        v30 = v40;
        (*(v22 + 32))(*(v40 + 48) + v23, v24, v21);
        v31 = (*(v30 + 56) + v26);
        v5 = v36;
        *v31 = v28;
        v31[1] = v29;
        result = sub_22B144B30(v28, v29);
        v15 = v41;
      }

      while (v41);
    }

    v18 = v11;
    v7 = v40;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
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

void *sub_22B3416BC()
{
  v1 = v0;
  v29 = sub_22B35DE9C();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA360, &unk_22B364030);
  v3 = *v0;
  v4 = sub_22B36129C();
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
    for (i = v31 + 32; v12; *(*(v23 + 56) + 8 * v17) = v22)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v31;
      v19 = *(v31 + 72) * v17;
      v20 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 48) + v19, v29);
      v22 = *(*(v3 + 56) + 8 * v17);
      v23 = v30;
      result = (*(v18 + 32))(*(v30 + 48) + v19, v20, v21);
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

void sub_22B341930()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0A8, &unk_22B3678F8);
  v2 = *v0;
  v3 = sub_22B36129C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v24 = *v22;
        v23 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v24;
        v27[1] = v23;
        v27[2] = v25;
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
}

void *sub_22B341AC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0D8, &qword_22B367938);
  v2 = *v0;
  v3 = sub_22B36129C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_22B341C14()
{
  v1 = v0;
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod(0);
  v28 = *(Events - 8);
  MEMORY[0x28223BE20](Events - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0B0, &qword_22B367908);
  v4 = *v0;
  v5 = sub_22B36129C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
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
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v27;
        v21 = *(v28 + 72) * v19;
        sub_22B342FA0(*(v4 + 48) + v21, v27, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = v29;
        sub_22B343008(v20, *(v29 + 48) + v21, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        *(*(v23 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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
}

char *sub_22B341E60()
{
  v1 = v0;
  v31 = sub_22B35DF1C();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0A0, &qword_22B3678F0);
  v3 = *v0;
  v4 = sub_22B36129C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

void sub_22B3420D0()
{
  v1 = v0;
  v2 = sub_22B35DE9C();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  MEMORY[0x28223BE20](v2);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAEA0, &unk_22B367400);
  v5 = *v0;
  v6 = sub_22B36129C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
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
}

char *sub_22B342364()
{
  v1 = v0;
  v2 = type metadata accessor for SessionKey(0);
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE90, &qword_22B3673F0);
  v4 = *v0;
  v5 = sub_22B36129C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
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
        v32 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v30 + 72) * v19;
        sub_22B342FA0(*(v4 + 48) + v21, v29, type metadata accessor for SessionKey);
        v19 *= 2;
        v22 = (*(v4 + 56) + v19);
        v23 = *v22;
        v24 = v22[1];
        v25 = v31;
        result = sub_22B343008(v20, *(v31 + 48) + v21, type metadata accessor for SessionKey);
        v26 = (*(v25 + 56) + v19);
        *v26 = v23;
        v26[1] = v24;
        v14 = v32;
      }

      while (v32);
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

        v1 = v27;
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v32 = (v18 - 1) & v18;
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

id sub_22B3425C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB090, &qword_22B3678E0);
  v2 = *v0;
  v3 = sub_22B36129C();
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

        result = v20;
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

char *sub_22B34272C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE0, &unk_22B3673C0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - v3;
  v34 = sub_22B35DE9C();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE68, &qword_22B3673B8);
  v5 = *v0;
  v6 = sub_22B36129C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_22B170BE0(*(v5 + 56) + v26, v35, &qword_27D8BAAE0, &unk_22B3673C0);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_22B3229C4(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
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

void *sub_22B342A48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0D0, &qword_22B367930);
  v2 = *v0;
  v3 = sub_22B36129C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_22B342B94()
{
  v1 = v0;
  v41 = sub_22B35F00C();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22B35DE9C();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0C8, &qword_22B367928);
  v4 = *v0;
  v5 = sub_22B36129C();
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
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
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

uint64_t sub_22B342EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE0, &unk_22B3673C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B342F58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B342FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B343008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B343070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t defaultLogger(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (*a1)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v4 = sub_22B36052C();
      v5 = v4;
      v6 = qword_28140BD10;
    }

    else
    {
      if (qword_281409380 != -1)
      {
        swift_once();
      }

      v4 = sub_22B36052C();
      v5 = v4;
      v6 = qword_28140BCB8;
    }
  }

  else if (v3 == 2)
  {
    if (qword_27D8B9FC8 != -1)
    {
      swift_once();
    }

    v4 = sub_22B36052C();
    v5 = v4;
    v6 = qword_27D8BB1D8;
  }

  else if (v3 == 3)
  {
    if (qword_27D8B9FD0 != -1)
    {
      swift_once();
    }

    v4 = sub_22B36052C();
    v5 = v4;
    v6 = qword_27D8BB1F0;
  }

  else
  {
    if (qword_281408CF0 != -1)
    {
      swift_once();
    }

    v4 = sub_22B36052C();
    v5 = v4;
    v6 = qword_28140BC68;
  }

  v7 = __swift_project_value_buffer(v4, v6);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a2, v7, v5);
}

uint64_t ekSignposter()@<X0>(uint64_t a1@<X8>)
{
  if (qword_281408E08 != -1)
  {
    swift_once();
  }

  v2 = sub_22B3604AC();
  v3 = __swift_project_value_buffer(v2, qword_28140BC88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id defaultLog()()
{
  if (qword_281409388 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BCD0;

  return v1;
}

uint64_t sub_22B3433D4()
{
  sub_22B343DD8();
  result = sub_22B360FEC();
  qword_28140BCD0 = result;
  return result;
}

uint64_t sub_22B3434E0()
{
  v0 = sub_22B3604AC();
  __swift_allocate_value_buffer(v0, qword_28140BC88);
  __swift_project_value_buffer(v0, qword_28140BC88);
  return sub_22B36049C();
}

uint64_t Logging.description.getter()
{
  v1 = *v0;
  v2 = 0x6E6F6D656144;
  v3 = 0x7254796772656E45;
  v4 = 0x7246746E65696C43;
  if (v1 != 3)
  {
    v4 = 0x636974796C616E41;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0x646572616853;
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

HomeEnergyDaemon::Logging_optional __swiftcall Logging.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22B34362C()
{
  v1 = *v0;
  v2 = 0x6E6F6D656144;
  v3 = 0x7254796772656E45;
  v4 = 0x7246746E65696C43;
  if (v1 != 3)
  {
    v4 = 0x636974796C616E41;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0x646572616853;
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

void setDefaultLog(_:)(void *a1)
{
  if (qword_281409388 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v3 = qword_28140BCD0;
  qword_28140BCD0 = a1;
  v1 = a1;
}

uint64_t sub_22B343814(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = sub_22B36052C();
  v7 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  (*(*(v6 - 8) + 24))(v7, a1, v6);
  return swift_endAccess();
}

Swift::Void __swiftcall setProcessName(_:)(Swift::String a1)
{
  xmmword_27D8BB0E0 = a1;
}

Swift::String_optional __swiftcall processName()()
{
  v0 = xmmword_27D8BB0E0;

  v2 = (v0 >> 64);
  v1 = v0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_22B343970(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22B36052C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_22B36051C();
}

Swift::Void __swiftcall logMilestone(tag:description:)(Swift::String tag, Swift::String description)
{
  object = description._object;
  countAndFlagsBits = description._countAndFlagsBits;
  v4 = tag._object;
  v5 = tag._countAndFlagsBits;
  v6 = sub_22B36052C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D8B9FE0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_27D8BB208);
  (*(v7 + 16))(v9, v10, v6);

  v11 = sub_22B36050C();
  v12 = sub_22B360D0C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v16 = countAndFlagsBits;
    v14 = v13;
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_22B1A7B20(v5, v4, &v17);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_22B1A7B20(v16, object, &v17);
    _os_log_impl(&dword_22B116000, v11, v12, "(%s) %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
}

unint64_t sub_22B343C34()
{
  result = qword_27D8BB0F0;
  if (!qword_27D8BB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BB0F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Logging(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Logging(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22B343DD8()
{
  result = qword_281409268;
  if (!qword_281409268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281409268);
  }

  return result;
}

uint64_t sub_22B343E24(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22B36052C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B343F08, v1, 0);
}

uint64_t sub_22B343F08()
{
  v29 = v0;
  v1 = [*__swift_project_boxed_opaque_existential_1(*(v0 + 40) *(*(v0 + 40) + 24))];
  v2 = sub_22B36084C();
  v4 = v3;

  *(v0 + 104) = v2;
  *(v0 + 112) = v4;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 96);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = __swift_project_value_buffer(v7, qword_28140BD10);
  *(v0 + 120) = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  *(v0 + 128) = v9;
  *(v0 + 136) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v7);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 96);
  v14 = *(v0 + 64);
  v27 = *(v0 + 56);
  if (v12)
  {
    v25 = v2;
    v15 = swift_slowAlloc();
    v26 = v13;
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22B1A7B20(v25, v4, &v28);
    _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] Successfully launched the task associated with identifier %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23188F650](v16, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);

    v17 = *(v14 + 8);
    v17(v26, v27);
  }

  else
  {

    v17 = *(v14 + 8);
    v17(v13, v27);
  }

  *(v0 + 144) = v17;
  v9(*(v0 + 88), v8, *(v0 + 56));
  v18 = sub_22B36050C();
  v19 = sub_22B360D1C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22B116000, v18, v19, "[BackgroundTask] Execute AMI Refresh", v20, 2u);
    MEMORY[0x23188F650](v20, -1, -1);
  }

  v21 = *(v0 + 88);
  v22 = *(v0 + 56);

  v17(v21, v22);
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v23 = swift_task_alloc();
  *(v0 + 152) = v23;
  *v23 = v0;
  v23[1] = sub_22B34425C;

  return sub_22B335200();
}

uint64_t sub_22B34425C(char a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_22B344374, v2, 0);
}

uint64_t sub_22B344374()
{
  if (*(v0 + 168) == 1)
  {
    if (qword_28140A0B8 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    *(v0 + 160) = v1;
    *v1 = v0;
    v1[1] = sub_22B34459C;

    return sub_22B2E11D4(1);
  }

  else
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 120);
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);

    v3(v5, v4, v6);
    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 144);
    v11 = *(v0 + 72);
    v12 = *(v0 + 56);
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22B116000, v7, v8, "[BackgroundTask] Manatee not enabled. Skip AMI refresh", v13, 2u);
      MEMORY[0x23188F650](v13, -1, -1);
    }

    v10(v11, v12);
    [*__swift_project_boxed_opaque_existential_1(*(v0 + 40) *(*(v0 + 40) + 24))];

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_22B34459C()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_22B3446AC, v1, 0);
}

uint64_t sub_22B3446AC()
{
  v17 = v0;
  (*(v0 + 128))(*(v0 + 80), *(v0 + 120), *(v0 + 56));

  v1 = sub_22B36050C();
  v2 = sub_22B360CFC();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 144);
  v5 = *(v0 + 112);
  if (v3)
  {
    v6 = *(v0 + 104);
    v15 = *(v0 + 80);
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = sub_22B1A7B20(v6, v5, &v16);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_22B116000, v1, v2, "[BackgroundTask] Marking task associated with identifier %{public}s complete", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23188F650](v9, -1, -1);
    MEMORY[0x23188F650](v8, -1, -1);

    v11 = v15;
  }

  else
  {
    v12 = *(v0 + 80);
    v7 = *(v0 + 56);

    v11 = v12;
  }

  v4(v11, v7);
  [*__swift_project_boxed_opaque_existential_1(*(v0 + 40) *(*(v0 + 40) + 24))];

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22B3448A4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v4 = sub_22B36052C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B344974, a2, 0);
}

uint64_t sub_22B344974()
{
  v21 = v0;
  v1 = [*__swift_project_boxed_opaque_existential_1(*(v0 + 40) *(*(v0 + 40) + 24))];
  v2 = sub_22B36084C();
  v4 = v3;

  *(v0 + 88) = v2;
  *(v0 + 96) = v4;
  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = __swift_project_value_buffer(v6, qword_28140BD10);
  *(v0 + 104) = v8;
  swift_beginAccess();
  v9 = *(v7 + 16);
  *(v0 + 112) = v9;
  *(v0 + 120) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v6);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 80);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22B1A7B20(v2, v4, &v20);
    _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] Successfully launched the task associated with identifier %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  v18 = *(v15 + 8);
  v18(v13, v14);
  *(v0 + 128) = v18;

  return MEMORY[0x2822009F8](sub_22B344BA0, 0, 0);
}

uint64_t sub_22B344BA0()
{
  if (qword_281408968 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_22B344C64;

  return sub_22B193520();
}

uint64_t sub_22B344C64()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_22B344D74, v1, 0);
}

uint64_t sub_22B344D74()
{
  v17 = v0;
  (*(v0 + 112))(*(v0 + 72), *(v0 + 104), *(v0 + 56));

  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 128);
  v5 = *(v0 + 96);
  if (v3)
  {
    v6 = *(v0 + 88);
    v15 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = sub_22B1A7B20(v6, v5, &v16);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_22B116000, v1, v2, "[BackgroundTask] Successfully finished launching the task associated with identifier %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23188F650](v9, -1, -1);
    MEMORY[0x23188F650](v8, -1, -1);

    v11 = v15;
  }

  else
  {
    v12 = *(v0 + 72);
    v7 = *(v0 + 56);

    v11 = v12;
  }

  v4(v11, v7);
  [*__swift_project_boxed_opaque_existential_1(*(v0 + 40) *(*(v0 + 40) + 24))];

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22B344F58()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B344FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v6 = sub_22B36052C();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B345088, a2, 0);
}

uint64_t sub_22B345088()
{
  v24 = v0;
  v1 = [*__swift_project_boxed_opaque_existential_1(*(v0 + 40) *(*(v0 + 40) + 24))];
  v2 = sub_22B36084C();
  v4 = v3;

  *(v0 + 104) = v2;
  *(v0 + 112) = v4;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = __swift_project_value_buffer(v6, qword_28140BD10);
  *(v0 + 120) = v8;
  swift_beginAccess();
  v9 = *(v7 + 16);
  *(v0 + 128) = v9;
  *(v0 + 136) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v6);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 96);
  v14 = *(v0 + 72);
  v15 = *(v0 + 80);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22B1A7B20(v2, v4, &v23);
    _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] Successfully launched the task associated with identifier %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  v18 = *(v15 + 8);
  v18(v13, v14);
  *(v0 + 144) = v18;
  v19 = swift_task_alloc();
  *(v0 + 152) = v19;
  *v19 = v0;
  v19[1] = sub_22B3452E8;
  v21 = *(v0 + 56);
  v20 = *(v0 + 64);

  return sub_22B12ACA0(v21, v20);
}

uint64_t sub_22B3452E8()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_22B3453F8, v1, 0);
}

uint64_t sub_22B3453F8()
{
  v17 = v0;
  (*(v0 + 128))(*(v0 + 88), *(v0 + 120), *(v0 + 72));

  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 144);
  v5 = *(v0 + 112);
  if (v3)
  {
    v6 = *(v0 + 104);
    v15 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = sub_22B1A7B20(v6, v5, &v16);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_22B116000, v1, v2, "[BackgroundTask] Successfully finished launching the task associated with identifier %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23188F650](v9, -1, -1);
    MEMORY[0x23188F650](v8, -1, -1);

    v11 = v15;
  }

  else
  {
    v12 = *(v0 + 88);
    v7 = *(v0 + 72);

    v11 = v12;
  }

  v4(v11, v7);
  [*__swift_project_boxed_opaque_existential_1(*(v0 + 40) *(*(v0 + 40) + 24))];

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22B3455DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v7 = sub_22B36052C();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B3456B4, a2, 0);
}

uint64_t sub_22B3456B4()
{
  v25 = v0;
  v1 = [*__swift_project_boxed_opaque_existential_1(*(v0 + 40) *(*(v0 + 40) + 24))];
  v2 = sub_22B36084C();
  v4 = v3;

  *(v0 + 112) = v2;
  *(v0 + 120) = v4;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 104);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = __swift_project_value_buffer(v6, qword_28140BD10);
  *(v0 + 128) = v8;
  swift_beginAccess();
  v9 = *(v7 + 16);
  *(v0 + 136) = v9;
  *(v0 + 144) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v6);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 104);
  v14 = *(v0 + 80);
  v15 = *(v0 + 88);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22B1A7B20(v2, v4, &v24);
    _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] Successfully launched the task associated with identifier %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  v18 = *(v15 + 8);
  v18(v13, v14);
  *(v0 + 152) = v18;
  v19 = swift_task_alloc();
  *(v0 + 160) = v19;
  *v19 = v0;
  v19[1] = sub_22B345918;
  v20 = *(v0 + 64);
  v21 = *(v0 + 72);
  v22 = *(v0 + 56);

  return sub_22B15F0A8(v22, v20, v21);
}

uint64_t sub_22B345918()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_22B345A28, v1, 0);
}

uint64_t sub_22B345A28()
{
  v17 = v0;
  (*(v0 + 136))(*(v0 + 96), *(v0 + 128), *(v0 + 80));

  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 152);
  v5 = *(v0 + 120);
  if (v3)
  {
    v6 = *(v0 + 112);
    v15 = *(v0 + 96);
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = sub_22B1A7B20(v6, v5, &v16);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_22B116000, v1, v2, "[BackgroundTask] Successfully finished launching the task associated with identifier %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23188F650](v9, -1, -1);
    MEMORY[0x23188F650](v8, -1, -1);

    v11 = v15;
  }

  else
  {
    v12 = *(v0 + 96);
    v7 = *(v0 + 80);

    v11 = v12;
  }

  v4(v11, v7);
  [*__swift_project_boxed_opaque_existential_1(*(v0 + 40) *(*(v0 + 40) + 24))];

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22B345C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v7 = sub_22B36052C();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B345D30, a2, 0);
}

uint64_t sub_22B345D30()
{
  v25 = v0;
  v24[1] = *MEMORY[0x277D85DE8];
  v1 = [*__swift_project_boxed_opaque_existential_1(*(v0 + 48) *(*(v0 + 48) + 24))];
  v2 = sub_22B36084C();
  v4 = v3;

  *(v0 + 136) = v2;
  *(v0 + 144) = v4;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 128);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = __swift_project_value_buffer(v6, qword_28140BD10);
  *(v0 + 152) = v8;
  swift_beginAccess();
  v9 = *(v7 + 16);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v6);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 128);
  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22B1A7B20(v2, v4, v24);
    _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] Successfully launched the task associated with identifier %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  v18 = *(v15 + 8);
  v18(v13, v14);
  *(v0 + 176) = v18;
  v19 = swift_task_alloc();
  *(v0 + 184) = v19;
  *v19 = v0;
  v19[1] = sub_22B345FC0;
  v20 = *(v0 + 72);
  v21 = *(v0 + 80);
  v22 = *(v0 + 64);

  return sub_22B15F740(v22, v20, v21);
}

uint64_t sub_22B345FC0(char a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_22B346104, v2, 0);
}

uint64_t sub_22B346104()
{
  v56 = v0;
  v55[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 88);
  if (*(v0 + 192) == 1)
  {
    v1(*(v0 + 120), v2, v3);

    v4 = sub_22B36050C();
    v5 = sub_22B360D2C();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 176);
    v8 = *(v0 + 144);
    if (v6)
    {
      v9 = *(v0 + 136);
      v52 = *(v0 + 120);
      v10 = *(v0 + 88);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v55[0] = v12;
      *v11 = 136446210;
      v13 = sub_22B1A7B20(v9, v8, v55);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_22B116000, v4, v5, "[BackgroundTask] Successfully finished launching the task associated with identifier %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x23188F650](v12, -1, -1);
      MEMORY[0x23188F650](v11, -1, -1);

      v14 = v52;
    }

    else
    {
      v25 = *(v0 + 120);
      v10 = *(v0 + 88);

      v14 = v25;
    }

    v7(v14, v10);
    [*__swift_project_boxed_opaque_existential_1(*(v0 + 48) *(*(v0 + 48) + 24))];
  }

  else
  {
    v1(*(v0 + 112), v2, v3);

    v15 = sub_22B36050C();
    v16 = sub_22B360D1C();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 176);
    if (v17)
    {
      v20 = *(v0 + 136);
      v19 = *(v0 + 144);
      v53 = *(v0 + 112);
      v21 = *(v0 + 88);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v55[0] = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_22B1A7B20(v20, v19, v55);
      _os_log_impl(&dword_22B116000, v15, v16, "[BackgroundTask] Task associated with identifier %{public}s did not complete. Set retry.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23188F650](v23, -1, -1);
      MEMORY[0x23188F650](v22, -1, -1);

      v24 = v53;
    }

    else
    {
      v26 = *(v0 + 112);
      v21 = *(v0 + 88);

      v24 = v26;
    }

    v18(v24, v21);
    v27 = *__swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
    *(v0 + 40) = 0;
    v28 = [v27 setTaskExpiredWithRetryAfter:v0 + 40 error:0.0];
    v29 = *(v0 + 40);
    if (v28)
    {
      v30 = v29;
    }

    else
    {
      v31 = *(v0 + 160);
      v32 = *(v0 + 152);
      v33 = *(v0 + 104);
      v34 = *(v0 + 88);
      v35 = v29;
      v36 = sub_22B35DB9C();

      swift_willThrow();
      v31(v33, v32, v34);

      v37 = sub_22B36050C();
      v38 = sub_22B360D2C();

      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 176);
      v41 = *(v0 + 144);
      if (v39)
      {
        v54 = *(v0 + 176);
        v42 = *(v0 + 136);
        v51 = *(v0 + 104);
        v43 = *(v0 + 88);
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v55[0] = v45;
        *v44 = 136446210;
        v46 = sub_22B1A7B20(v42, v41, v55);

        *(v44 + 4) = v46;
        _os_log_impl(&dword_22B116000, v37, v38, "[BackgroundTask] Task associated with identifier %{public}s could not be retried. Set as completed", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x23188F650](v45, -1, -1);
        MEMORY[0x23188F650](v44, -1, -1);

        v54(v51, v43);
      }

      else
      {
        v47 = *(v0 + 104);
        v48 = *(v0 + 88);

        v40(v47, v48);
      }

      [*__swift_project_boxed_opaque_existential_1(*(v0 + 48) *(*(v0 + 48) + 24))];
    }
  }

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_22B346628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v7 = sub_22B36052C();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B34674C, a2, 0);
}

uint64_t sub_22B34674C()
{
  v25 = v0;
  v24[1] = *MEMORY[0x277D85DE8];
  v1 = [*__swift_project_boxed_opaque_existential_1(*(v0 + 48) *(*(v0 + 48) + 24))];
  v2 = sub_22B36084C();
  v4 = v3;

  *(v0 + 136) = v2;
  *(v0 + 144) = v4;
  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 128);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = __swift_project_value_buffer(v6, qword_28140BD10);
  *(v0 + 152) = v8;
  swift_beginAccess();
  v9 = *(v7 + 16);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v6);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 128);
  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22B1A7B20(v2, v4, v24);
    _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] Successfully launched the task associated with identifier %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  v18 = *(v15 + 8);
  v18(v13, v14);
  *(v0 + 176) = v18;
  v19 = swift_task_alloc();
  *(v0 + 184) = v19;
  *v19 = v0;
  v19[1] = sub_22B3469DC;
  v20 = *(v0 + 72);
  v21 = *(v0 + 80);
  v22 = *(v0 + 64);

  return sub_22B21D774(v22, v20, v21);
}

uint64_t sub_22B3469DC(char a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_22B347A24, v2, 0);
}

uint64_t sub_22B346B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v5 = sub_22B36052C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B346C40, a2, 0);
}

uint64_t sub_22B346C40()
{
  v23 = v0;
  v22[1] = *MEMORY[0x277D85DE8];
  v1 = [*__swift_project_boxed_opaque_existential_1(*(v0 + 48) *(*(v0 + 48) + 24))];
  v2 = sub_22B36084C();
  v4 = v3;

  *(v0 + 120) = v2;
  *(v0 + 128) = v4;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 112);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = __swift_project_value_buffer(v6, qword_28140BD10);
  *(v0 + 136) = v8;
  swift_beginAccess();
  v9 = *(v7 + 16);
  *(v0 + 144) = v9;
  *(v0 + 152) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v6);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 112);
  v14 = *(v0 + 72);
  v15 = *(v0 + 80);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22B1A7B20(v2, v4, v22);
    _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] Successfully launched the task associated with identifier %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  v18 = *(v15 + 8);
  v18(v13, v14);
  *(v0 + 160) = v18;
  v19 = swift_task_alloc();
  *(v0 + 168) = v19;
  *v19 = v0;
  v19[1] = sub_22B346ECC;
  v20 = *(v0 + 64);

  return sub_22B21E5F0(v20);
}

uint64_t sub_22B346ECC(char a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_22B347A98, v2, 0);
}

uint64_t sub_22B347010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v5 = sub_22B36052C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B347130, a2, 0);
}

uint64_t sub_22B347130()
{
  v23 = v0;
  v22[1] = *MEMORY[0x277D85DE8];
  v1 = [*__swift_project_boxed_opaque_existential_1(*(v0 + 48) *(*(v0 + 48) + 24))];
  v2 = sub_22B36084C();
  v4 = v3;

  *(v0 + 120) = v2;
  *(v0 + 128) = v4;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 112);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = __swift_project_value_buffer(v6, qword_28140BD10);
  *(v0 + 136) = v8;
  swift_beginAccess();
  v9 = *(v7 + 16);
  *(v0 + 144) = v9;
  *(v0 + 152) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v6);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 112);
  v14 = *(v0 + 72);
  v15 = *(v0 + 80);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22B1A7B20(v2, v4, v22);
    _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] Successfully launched the task associated with identifier %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  v18 = *(v15 + 8);
  v18(v13, v14);
  *(v0 + 160) = v18;
  v19 = swift_task_alloc();
  *(v0 + 168) = v19;
  *v19 = v0;
  v19[1] = sub_22B3473BC;
  v20 = *(v0 + 64);

  return sub_22B21F494(v20);
}

uint64_t sub_22B3473BC(char a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_22B347500, v2, 0);
}

uint64_t sub_22B347500()
{
  v56 = v0;
  v55[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 144);
  v2 = *(v0 + 136);
  v3 = *(v0 + 72);
  if (*(v0 + 176) == 1)
  {
    v1(*(v0 + 104), v2, v3);

    v4 = sub_22B36050C();
    v5 = sub_22B360D2C();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    if (v6)
    {
      v9 = *(v0 + 120);
      v52 = *(v0 + 104);
      v10 = *(v0 + 72);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v55[0] = v12;
      *v11 = 136446210;
      v13 = sub_22B1A7B20(v9, v8, v55);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_22B116000, v4, v5, "[BackgroundTask] Successfully finished launching the task associated with identifier %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x23188F650](v12, -1, -1);
      MEMORY[0x23188F650](v11, -1, -1);

      v14 = v52;
    }

    else
    {
      v25 = *(v0 + 104);
      v10 = *(v0 + 72);

      v14 = v25;
    }

    v7(v14, v10);
    [*__swift_project_boxed_opaque_existential_1(*(v0 + 48) *(*(v0 + 48) + 24))];
  }

  else
  {
    v1(*(v0 + 96), v2, v3);

    v15 = sub_22B36050C();
    v16 = sub_22B360D1C();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 160);
    if (v17)
    {
      v20 = *(v0 + 120);
      v19 = *(v0 + 128);
      v53 = *(v0 + 96);
      v21 = *(v0 + 72);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v55[0] = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_22B1A7B20(v20, v19, v55);
      _os_log_impl(&dword_22B116000, v15, v16, "[BackgroundTask] Task associated with identifier %{public}s did not complete. Set retry.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23188F650](v23, -1, -1);
      MEMORY[0x23188F650](v22, -1, -1);

      v24 = v53;
    }

    else
    {
      v26 = *(v0 + 96);
      v21 = *(v0 + 72);

      v24 = v26;
    }

    v18(v24, v21);
    v27 = *__swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
    *(v0 + 40) = 0;
    v28 = [v27 setTaskExpiredWithRetryAfter:v0 + 40 error:0.0];
    v29 = *(v0 + 40);
    if (v28)
    {
      v30 = v29;
    }

    else
    {
      v31 = *(v0 + 144);
      v32 = *(v0 + 136);
      v33 = *(v0 + 88);
      v34 = *(v0 + 72);
      v35 = v29;
      v36 = sub_22B35DB9C();

      swift_willThrow();
      v31(v33, v32, v34);

      v37 = sub_22B36050C();
      v38 = sub_22B360D2C();

      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 160);
      v41 = *(v0 + 128);
      if (v39)
      {
        v54 = *(v0 + 160);
        v42 = *(v0 + 120);
        v51 = *(v0 + 88);
        v43 = *(v0 + 72);
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v55[0] = v45;
        *v44 = 136446210;
        v46 = sub_22B1A7B20(v42, v41, v55);

        *(v44 + 4) = v46;
        _os_log_impl(&dword_22B116000, v37, v38, "[BackgroundTask] Task associated with identifier %{public}s could not be retried. Set as completed", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x23188F650](v45, -1, -1);
        MEMORY[0x23188F650](v44, -1, -1);

        v54(v51, v43);
      }

      else
      {
        v47 = *(v0 + 88);
        v48 = *(v0 + 72);

        v40(v47, v48);
      }

      [*__swift_project_boxed_opaque_existential_1(*(v0 + 48) *(*(v0 + 48) + 24))];
    }
  }

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_22B347A24()
{

  return sub_22B346104();
}

uint64_t sub_22B347A98()
{

  return sub_22B347500();
}

uint64_t sub_22B347B88(void *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5)
{
  v33[1] = a5;
  v34 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v33 - v9;
  v11 = sub_22B36052C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_28140A0C8;
  v16 = a1;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_28140BD10);
  swift_beginAccess();
  (*(v12 + 16))(v14, v17, v11);

  v18 = sub_22B36050C();
  v19 = sub_22B360CFC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v33[0] = v16;
    v22 = v10;
    v23 = a2;
    v24 = v21;
    aBlock[0] = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_22B1A7B20(v23, a3, aBlock);
    _os_log_impl(&dword_22B116000, v18, v19, "[BackgroundTask] Beginning execution of task associated with identifier %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v25 = v24;
    a2 = v23;
    v10 = v22;
    v16 = v33[0];
    MEMORY[0x23188F650](v25, -1, -1);
    MEMORY[0x23188F650](v20, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v36 = &type metadata for BackgroundSystemTask;
  v37 = &off_283EFC950;
  aBlock[0] = v16;
  v26 = v34(aBlock);
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  v27 = swift_allocObject();
  v27[2] = a2;
  v27[3] = a3;
  v27[4] = v26;
  v37 = sub_22B349D14;
  v38 = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B118A6C;
  v36 = &block_descriptor_8;
  v28 = a2;
  v29 = _Block_copy(aBlock);

  [v16 setExpirationHandler_];
  _Block_release(v29);

  v30 = sub_22B360B6C();
  (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v26;
  v31[5] = v28;
  v31[6] = a3;

  sub_22B123DF0(0, 0, v10, &unk_22B367B78, v31);
}

uint64_t sub_22B347FCC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_22B36052C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, v5);

  v10 = sub_22B36050C();
  v11 = sub_22B360CFC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_22B1A7B20(a1, a2, &v15);
    _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] System scheduler is expiring the task run associated with identifier %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  return sub_22B360BDC();
}

uint64_t sub_22B348218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v8 = sub_22B36052C();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[16] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  *v9 = v6;
  v9[1] = sub_22B348350;
  v11 = MEMORY[0x277D84950];
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v6 + 8, a4, v12, v10, v11);
}

uint64_t sub_22B348350()
{

  return MEMORY[0x2822009F8](sub_22B34844C, 0, 0);
}

uint64_t sub_22B34844C()
{
  v34 = v0;
  v1 = *(v0 + 64);
  if (*(v0 + 72))
  {
    if (qword_28140A0C8[0] != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v4 = *(v0 + 96);
    v5 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v2, v5, v4);

    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);
    if (v8)
    {
      v32 = *(v0 + 112);
      v13 = *(v0 + 80);
      v12 = *(v0 + 88);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v33 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_22B1A7B20(v13, v12, &v33);
      _os_log_impl(&dword_22B116000, v6, v7, "[BackgroundTask] Execution of task associated with identifier %{public}s failed", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x23188F650](v15, -1, -1);
      MEMORY[0x23188F650](v14, -1, -1);
      sub_22B1CD010(v1, 1);

      (*(v9 + 8))(v32, v11);
    }

    else
    {
      sub_22B1CD010(v1, 1);

      (*(v9 + 8))(v10, v11);
    }
  }

  else
  {
    if (qword_28140A0C8[0] != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 120);
    v17 = *(v0 + 96);
    v18 = *(v0 + 104);
    v19 = __swift_project_value_buffer(v17, qword_28140BD10);
    swift_beginAccess();
    (*(v18 + 16))(v16, v19, v17);

    v20 = sub_22B36050C();
    v21 = sub_22B360CFC();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 120);
    v24 = *(v0 + 96);
    v25 = *(v0 + 104);
    if (v22)
    {
      v27 = *(v0 + 80);
      v26 = *(v0 + 88);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_22B1A7B20(v27, v26, &v33);
      _os_log_impl(&dword_22B116000, v20, v21, "[BackgroundTask] Finished execution of task associated with identifier %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x23188F650](v29, -1, -1);
      MEMORY[0x23188F650](v28, -1, -1);
    }

    (*(v25 + 8))(v23, v24);
  }

  v30 = *(v0 + 8);

  return v30();
}

void sub_22B3487E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_22B348848(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B3605FC();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x28223BE20](v8);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22B36052C();
  v63 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v55 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v52 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v10, qword_28140BD10);
  swift_beginAccess();
  v59 = *(v63 + 16);
  v60 = v20;
  v59(v19, v20, v10);

  v21 = sub_22B36050C();
  v22 = sub_22B360CFC();

  v23 = os_log_type_enabled(v21, v22);
  v62 = a1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v53 = v10;
    v25 = a3;
    v26 = a4;
    v27 = v24;
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_22B1A7B20(v62, a2, aBlock);
    _os_log_impl(&dword_22B116000, v21, v22, "[BackgroundTask] Setting up to register launch handler associated with identifier %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v29 = v28;
    a1 = v62;
    MEMORY[0x23188F650](v29, -1, -1);
    v30 = v27;
    a4 = v26;
    a3 = v25;
    v10 = v53;
    v31 = v63;
    MEMORY[0x23188F650](v30, -1, -1);

    v32 = v31;
  }

  else
  {

    v32 = v63;
  }

  v61 = *(v32 + 8);
  v61(v19, v10);
  v33 = swift_allocObject();
  v33[2] = a1;
  v33[3] = a2;
  v33[4] = a3;
  v33[5] = a4;
  v59(v16, v60, v10);
  swift_bridgeObjectRetain_n();

  v34 = sub_22B36050C();
  v35 = sub_22B360CFC();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136446210;
    *(v36 + 4) = sub_22B1A7B20(v62, a2, aBlock);
    _os_log_impl(&dword_22B116000, v34, v35, "[BackgroundTask] Attempting to register launch handler associated with identifier %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x23188F650](v37, -1, -1);
    MEMORY[0x23188F650](v36, -1, -1);
  }

  v61(v16, v10);
  v38 = [objc_opt_self() sharedScheduler];
  v39 = sub_22B36081C();
  sub_22B11870C();
  v41 = v56;
  v40 = v57;
  v42 = v58;
  (*(v57 + 104))(v56, *MEMORY[0x277D851A8], v58);
  v43 = sub_22B360DDC();
  (*(v40 + 8))(v41, v42);
  aBlock[4] = sub_22B349D08;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B3487E0;
  aBlock[3] = &block_descriptor_32;
  v44 = _Block_copy(aBlock);

  LODWORD(v40) = [v38 registerForTaskWithIdentifier:v39 usingQueue:v43 launchHandler:v44];
  _Block_release(v44);

  if (!v40)
  {
    v45 = v55;
    v59(v55, v60, v10);

    v46 = sub_22B36050C();
    v47 = sub_22B360CFC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock[0] = v49;
      *v48 = 136446210;
      *(v48 + 4) = sub_22B1A7B20(v62, a2, aBlock);
      v50 = "[BackgroundTask] Failed to register launch handler associated with identifier %{public}s";
      goto LABEL_13;
    }

LABEL_14:

    return (v61)(v45, v10);
  }

  v45 = v54;
  v59(v54, v60, v10);

  v46 = sub_22B36050C();
  v47 = sub_22B360CFC();

  if (!os_log_type_enabled(v46, v47))
  {
    goto LABEL_14;
  }

  v48 = swift_slowAlloc();
  v49 = swift_slowAlloc();
  aBlock[0] = v49;
  *v48 = 136446210;
  *(v48 + 4) = sub_22B1A7B20(v62, a2, aBlock);
  v50 = "[BackgroundTask] Successfully registered launch handler associated with identifier %{public}s";
LABEL_13:
  _os_log_impl(&dword_22B116000, v46, v47, v50, v48, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v49);
  MEMORY[0x23188F650](v49, -1, -1);
  MEMORY[0x23188F650](v48, -1, -1);

  return (v61)(v45, v10);
}

void sub_22B348FC8(void *a1, int a2, int a3)
{
  v98 = a2;
  LODWORD(v99) = a3;
  v105[4] = *MEMORY[0x277D85DE8];
  v101 = sub_22B36052C();
  v104 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v93 - v7;
  MEMORY[0x28223BE20](v9);
  v102 = &v93 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v93 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v93 - v15;
  v17 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = *v17;
  v19 = v17[1];
  v20 = objc_opt_self();

  v21 = [v20 sharedScheduler];
  v100 = v18;
  v103 = v19;
  v22 = sub_22B36081C();
  v23 = [v21 taskRequestForIdentifier_];

  if (v23)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v24 = v101;
    v25 = __swift_project_value_buffer(v101, qword_28140BD10);
    swift_beginAccess();
    v26 = v104;
    (*(v104 + 16))(v102, v25, v24);
    v27 = v103;

    v28 = sub_22B36050C();
    v29 = sub_22B360D1C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v105[0] = v31;
      *v30 = 136446210;
      v32 = sub_22B1A7B20(v100, v27, v105);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_22B116000, v28, v29, "[BackgroundTask] Declining to submit task request associated with identifier\n%{public}s because another request is already scheduled, but not yet completed", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x23188F650](v31, -1, -1);
      MEMORY[0x23188F650](v30, -1, -1);
    }

    else
    {
    }

    (*(v26 + 8))(v102, v24);
    goto LABEL_19;
  }

  v94 = v8;
  v95 = v13;
  v93 = v5;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v33 = v101;
  v34 = __swift_project_value_buffer(v101, qword_28140BD10);
  swift_beginAccess();
  v35 = v104;
  v36 = *(v104 + 16);
  v37 = v16;
  v102 = v34;
  v96 = v36;
  v97 = v104 + 16;
  v36(v16, v34, v33);
  v38 = v103;

  v39 = sub_22B36050C();
  v40 = sub_22B360CFC();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v105[0] = v42;
    *v41 = 136446210;
    *(v41 + 4) = sub_22B1A7B20(v100, v38, v105);
    _os_log_impl(&dword_22B116000, v39, v40, "[BackgroundTask] Attempting to submit task request associated with identifier\n%{public}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    v43 = v42;
    v33 = v101;
    MEMORY[0x23188F650](v43, -1, -1);
    MEMORY[0x23188F650](v41, -1, -1);
  }

  v44 = *(v35 + 8);
  v44(v37, v33);
  v45 = [v20 sharedScheduler];
  v46 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v47 = v46[2];
  v48 = *(v46 + 24);
  v49 = objc_allocWithZone(MEMORY[0x277CF07C8]);
  v50 = sub_22B36081C();
  v51 = [v49 initWithIdentifier_];

  v52 = v51;
  [v52 setRequiresNetworkConnectivity_];
  v53 = v99;
  [v52 setRequiresExternalPower_];
  v54 = sub_22B36081C();
  [v52 setGroupName_];

  [v52 setGroupConcurrencyLimit_];
  if (v98)
  {
    [v52 setShouldWakeDevice_];
    [v52 setRequiresExternalPower_];
  }

  [v52 setResources_];
  [v52 setRequiresBuddyComplete_];
  v55 = 5.0;
  if ((v48 & 1) == 0)
  {
    [v52 setPriority_];
    [v52 setScheduleAfter_];
    v55 = v47 + 5.0;
  }

  [v52 setTrySchedulingBefore_];

  v105[0] = 0;
  v56 = [v45 submitTaskRequest:v52 error:v105];

  v57 = v105[0];
  if (v56)
  {
    v58 = v95;
    v96(v95, v102, v33);
    v59 = v103;

    v60 = v57;
    v61 = sub_22B36050C();
    v62 = sub_22B360CFC();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v105[0] = v64;
      *v63 = 136446210;
      v65 = sub_22B1A7B20(v100, v59, v105);

      *(v63 + 4) = v65;
      _os_log_impl(&dword_22B116000, v61, v62, "[BackgroundTask] Successfully submitted task request associated with identifier\n%{public}s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x23188F650](v64, -1, -1);
      MEMORY[0x23188F650](v63, -1, -1);

      v66 = v95;
    }

    else
    {

      v66 = v58;
    }

    v44(v66, v33);
  }

  else
  {
    v68 = v105[0];
    v69 = sub_22B35DB9C();

    swift_willThrow();
    type metadata accessor for Code(0);
    v105[0] = 5;
    v70 = v69;
    sub_22B349B68();
    LOBYTE(v68) = sub_22B35DA9C();

    if (v68)
    {

      v71 = v94;
      v96(v94, v102, v33);
      v72 = v103;

      v73 = sub_22B36050C();
      v74 = sub_22B360CFC();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v105[0] = v76;
        *v75 = 136446210;
        v77 = v44;
        v78 = sub_22B1A7B20(v100, v72, v105);

        *(v75 + 4) = v78;
        _os_log_impl(&dword_22B116000, v73, v74, "[BackgroundTask] Attempted to submit request for\n%{public}s even though another request was already pending", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x23188F650](v76, -1, -1);
        MEMORY[0x23188F650](v75, -1, -1);

        v77(v94, v33);
      }

      else
      {

        v44(v71, v33);
      }

LABEL_19:
      sub_22B349BC0();
      swift_allocError();
      *v67 = 1;
      swift_willThrow();
      return;
    }

    v99 = v44;
    v79 = v93;
    v96(v93, v102, v33);
    v80 = v103;

    v81 = v69;
    v82 = sub_22B36050C();
    v83 = sub_22B360D1C();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v105[0] = v86;
      *v84 = 136446466;
      v87 = sub_22B1A7B20(v100, v80, v105);

      *(v84 + 4) = v87;
      *(v84 + 12) = 2114;
      v88 = v69;
      v89 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 14) = v89;
      *v85 = v89;
      _os_log_impl(&dword_22B116000, v82, v83, "[BackgroundTask] Received unknown error while attempting to submit task request\nassociated with identifier %{public}s: %{public}@", v84, 0x16u);
      sub_22B12F10C(v85);
      MEMORY[0x23188F650](v85, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v86);
      MEMORY[0x23188F650](v86, -1, -1);
      MEMORY[0x23188F650](v84, -1, -1);

      v90 = v79;
      v91 = v101;
    }

    else
    {

      v90 = v79;
      v91 = v33;
    }

    v99(v90, v91);
    sub_22B349BC0();
    swift_allocError();
    *v92 = 0;
    swift_willThrow();
  }
}

unint64_t sub_22B349B68()
{
  result = qword_27D8BA108;
  if (!qword_27D8BA108)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA108);
  }

  return result;
}

unint64_t sub_22B349BC0()
{
  result = qword_27D8BB0F8;
  if (!qword_27D8BB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BB0F8);
  }

  return result;
}

id sub_22B349C14(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() sharedScheduler];
  v3 = sub_22B36081C();
  v7[0] = 0;
  v4 = [v2 cancelTaskRequestWithIdentifier:v3 error:v7];

  if (v4)
  {
    return v7[0];
  }

  v6 = v7[0];
  sub_22B35DB9C();

  return swift_willThrow();
}

uint64_t sub_22B349D20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B119A60;

  return sub_22B348218(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_22B349DFC()
{
  result = qword_27D8BB100;
  if (!qword_27D8BB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BB100);
  }

  return result;
}

void __swiftcall HomeEnergyNotificationContext.init(title:body:tapURL:homeID:seriesNotifications:)(HomeEnergyDaemon::HomeEnergyNotificationContext *__return_ptr retstr, Swift::String title, Swift::String body, Swift::String_optional tapURL, Swift::String_optional homeID, Swift::Bool seriesNotifications)
{
  retstr->title = title;
  retstr->body = body;
  retstr->tapURL = tapURL;
  retstr->homeID = homeID;
  retstr->seriesNotifications = seriesNotifications;
}

unint64_t sub_22B349E74()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[5];
  v6 = v0[7];
  v14 = v0[4];
  v15 = v0[6];
  v16 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634C0;
  *(inited + 32) = 0x656C746974;
  v8 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = v8;
  *(inited + 80) = 2036625250;
  *(inited + 120) = v8;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v4;
  *(inited + 104) = v3;

  v9 = sub_22B321AAC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAD00, &qword_22B3656C0);
  swift_arrayDestroy();
  if (v5)
  {
    v19 = v8;
    *&v18 = v14;
    *(&v18 + 1) = v5;
    sub_22B172454(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F298(v17, 0x4C5255706174, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (v6)
  {
    v19 = v8;
    *&v18 = v15;
    *(&v18 + 1) = v6;
    sub_22B172454(&v18, v17);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F298(v17, 0x4449656D6F68, 0xE600000000000000, v11);
  }

  v19 = MEMORY[0x277D839B0];
  LOBYTE(v18) = v16;
  sub_22B172454(&v18, v17);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B33F298(v17, 0xD000000000000012, 0x800000022B36A9D0, v12);
  return v9;
}

uint64_t HomeEnergyNotificationStatus.description.getter(uint64_t a1)
{
  result = 0xD000000000000025;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0xD00000000000003ALL;
    }

    if (a1 == 3)
    {
      return 0xD000000000000037;
    }

    goto LABEL_10;
  }

  if (a1 && a1 != 1)
  {
LABEL_10:
    result = sub_22B36138C();
    __break(1u);
  }

  return result;
}

unint64_t sub_22B34A160@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22B34A19C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_22B34A19C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_22B34A1B0()
{
  result = qword_27D8BB108;
  if (!qword_27D8BB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BB108);
  }

  return result;
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

uint64_t sub_22B34A238(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_22B34A280(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22B34A2E4(char a1)
{
  *(v2 + 152) = v1;
  *(v2 + 176) = a1;
  return MEMORY[0x2822009F8](sub_22B34A308, 0, 0);
}

uint64_t sub_22B34A308(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  *(v1 + 144) = MEMORY[0x277D84F98];
  if (sub_22B35EEBC())
  {
    v3 = swift_task_alloc();
    *(v1 + 160) = v3;
    *v3 = v1;
    v3[1] = sub_22B34A4B8;

    return sub_22B34F920();
  }

  else
  {
    *(v1 + 40) = MEMORY[0x277D839B0];
    *(v1 + 16) = 0;
    sub_22B172454((v1 + 16), (v1 + 48));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F298((v1 + 48), 0x737574617473, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    *(v1 + 144) = v2;
    *(v1 + 104) = MEMORY[0x277D837D0];
    *(v1 + 80) = 0xD000000000000019;
    *(v1 + 88) = 0x800000022B36F130;
    sub_22B172454((v1 + 80), (v1 + 112));
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F298((v1 + 112), 0x654D737574617473, 0xED00006567617373, v6);
    v7 = *(v1 + 8);

    return v7(v2);
  }
}

uint64_t sub_22B34A4B8(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_22B34A5B8, 0, 0);
}

uint64_t sub_22B34A5B8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 176);
  v4 = MEMORY[0x23188EEB0]();
  sub_22B34AD44(v2, (v0 + 144), v1, v3);

  objc_autoreleasePoolPop(v4);
  v5 = *(v0 + 144);
  v6 = *(v0 + 8);

  return v6(v5);
}

void sub_22B34A690(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v5 = a2;
  v6 = MEMORY[0x277D84F98];
  v27 = MEMORY[0x277D84F98];
  if (a1)
  {
    v8 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 56);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    if (v11)
    {
      while (1)
      {
        v14 = v13;
LABEL_9:
        v15 = (*(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v11)))));
        v17 = *v15;
        v16 = v15[1];

        v3 = MEMORY[0x23188EEB0](v18);
        sub_22B34A8B4(v17, v16, &v27);
        if (v4)
        {
          break;
        }

        v4 = 0;
        v11 &= v11 - 1;

        objc_autoreleasePoolPop(v3);
        v13 = v14;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v12)
        {

          v6 = v27;
          v5 = a2;
          goto LABEL_13;
        }

        v11 = *(v8 + 8 * v14);
        ++v13;
        if (v11)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    objc_autoreleasePoolPop(v3);
    __break(1u);
  }

  else
  {
LABEL_13:
    v19 = [objc_opt_self() standardUserDefaults];
    v20 = [v19 dictionaryRepresentation];

    v21 = sub_22B3606EC();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB030, &unk_22B367700);
    *&v25 = v21;
    sub_22B172454(&v25, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F298(v24, 0xD000000000000010, 0x800000022B36F1A0, isUniquelyReferenced_nonNull_native);
    *v5 = v6;
  }
}

void sub_22B34A8B4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v35[4] = a3;
  v6 = sub_22B36052C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_22B36081C();
  v15 = [v13 initWithSuiteName_];

  if (v15)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v32 = a1;
    v16 = __swift_project_value_buffer(v6, qword_28140BD10);
    swift_beginAccess();
    (*(v7 + 16))(v12, v16, v6);

    v17 = sub_22B36050C();
    v18 = sub_22B360CFC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v3;
      v34[0] = v20;
      v21 = v20;
      *v19 = 136315138;
      v31 = v6;
      v22 = v32;
      *(v19 + 4) = sub_22B1A7B20(v32, a2, v34);
      _os_log_impl(&dword_22B116000, v17, v18, "Reading %s defaults", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x23188F650](v21, -1, -1);
      MEMORY[0x23188F650](v19, -1, -1);

      (*(v7 + 8))(v12, v31);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
      v22 = v32;
    }

    v29 = [v15 dictionaryRepresentation];
    v30 = sub_22B3606EC();

    v34[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB030, &unk_22B367700);
    v34[0] = v30;
    sub_22B2AC464(v34, v22, a2);
  }

  else
  {
    v23 = a1;
    v33 = v3;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v6, qword_28140BD10);
    swift_beginAccess();
    (*(v7 + 16))(v9, v24, v6);

    v25 = sub_22B36050C();
    v26 = sub_22B360D1C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_22B1A7B20(v23, a2, v35);
      _os_log_impl(&dword_22B116000, v25, v26, "Error reading %s defaults", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x23188F650](v28, -1, -1);
      MEMORY[0x23188F650](v27, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

void sub_22B34AD44(uint64_t a1, id *a2, void *a3, char a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v8 = sub_22B36052C();
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x28223BE20](v8);
  v56 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v54 - v11;
  v55 = sub_22B35DC4C();
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v58 = &v54 - v15;
  v16 = sub_22B310CC8(&unk_283EF8180);
  v17 = MEMORY[0x277D837D0];
  v18 = swift_arrayDestroy();
  v19 = MEMORY[0x23188EEB0](v18);
  sub_22B34A690(v16, v62);
  if (v4)
  {
    objc_autoreleasePoolPop(v19);
    __break(1u);

    __break(1u);

    *a2 = v62[0];

    __break(1u);
    objc_autoreleasePoolPop(a2);
    __break(1u);
  }

  else
  {

    objc_autoreleasePoolPop(v19);
    v20 = v62[0];
    v21 = *a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62[0] = v21;
    sub_22B350FE8(a3, sub_22B34F44C, 0, isUniquelyReferenced_nonNull_native, v62);

    *a2 = v62[0];

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v62[0] = *a2;
    *a2 = 0x8000000000000000;
    sub_22B350FE8(v20, sub_22B34F44C, 0, v23, v62);

    *a2 = v62[0];

    v63 = MEMORY[0x277D839B0];
    LOBYTE(v62[0]) = 1;
    sub_22B2AC464(v62, 0x737574617473, 0xE600000000000000);
    v63 = v17;
    v62[0] = 0xD000000000000029;
    v62[1] = 0x800000022B36F150;
    sub_22B2AC464(v62, 0x654D737574617473, 0xED00006567617373);
    if (a4)
    {
      v24 = objc_opt_self();

      v25 = sub_22B3606CC();

      v62[0] = 0;
      v26 = [v24 dataWithPropertyList:v25 format:200 options:0 error:v62];

      v27 = v62[0];
      if (v26)
      {
        v28 = sub_22B35DCDC();
        v30 = v29;

        v31 = MEMORY[0x23188EEB0]();
        v32 = v58;
        sub_22B34CE74(0xD000000000000015, 1, v58);

        objc_autoreleasePoolPop(v31);
        sub_22B35DBEC();
        v33 = v55;
        (*(v57 + 40))(v32, v13, v55);
        sub_22B35DCEC();
        v56 = v30;
        v44 = v59;
        v43 = v60;
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v43, qword_28140BD10);
        swift_beginAccess();
        v45 = v54;
        (*(v44 + 16))();
        v46 = sub_22B36050C();
        v47 = sub_22B360CFC();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = v33;
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v61 = v50;
          *v49 = 136315138;
          swift_beginAccess();
          sub_22B351918(&unk_28140B4A0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v51 = sub_22B36131C();
          v53 = sub_22B1A7B20(v51, v52, &v61);

          *(v49 + 4) = v53;
          _os_log_impl(&dword_22B116000, v46, v47, "Wrote diagnostics to file %s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          MEMORY[0x23188F650](v50, -1, -1);
          MEMORY[0x23188F650](v49, -1, -1);
          sub_22B12F174(v28, v56);

          (*(v59 + 8))(v54, v60);
          (*(v57 + 8))(v58, v48);
        }

        else
        {
          sub_22B12F174(v28, v56);

          (*(v44 + 8))(v45, v43);
          (*(v57 + 8))(v58, v33);
        }
      }

      else
      {
        v34 = v27;

        v35 = sub_22B35DB9C();

        swift_willThrow();
        v37 = v59;
        v36 = v60;
        v38 = v56;
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v39 = __swift_project_value_buffer(v36, qword_28140BD10);
        swift_beginAccess();
        (*(v37 + 16))(v38, v39, v36);
        v40 = sub_22B36050C();
        v41 = sub_22B360D1C();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_22B116000, v40, v41, "Failed to save diagnostics to file", v42, 2u);
          MEMORY[0x23188F650](v42, -1, -1);
        }

        (*(v37 + 8))(v38, v36);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_22B34B61C(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v80 = a3;
  v82[3] = *MEMORY[0x277D85DE8];
  v6 = sub_22B35DC4C();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = &v66 - v10;
  v11 = sub_22B36052C();
  v75 = *(v11 - 8);
  v76 = v11;
  MEMORY[0x28223BE20](v11);
  v70 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = &v66 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - v16;
  v18 = objc_opt_self();
  v19 = [v18 defaultManager];
  v20 = sub_22B36081C();
  v21 = [v19 fileExistsAtPath_];

  if (v21)
  {
    v22 = [v18 defaultManager];
    type metadata accessor for FileAttributeKey(0);
    sub_22B351918(&qword_2814092D8, type metadata accessor for FileAttributeKey, &unk_22B3630A4);
    v23 = sub_22B3606CC();
    v24 = sub_22B36081C();
    v82[0] = 0;
    v25 = [v22 setAttributes:v23 ofItemAtPath:v24 error:v82];

    if (!v25)
    {
      v72 = a1;
      v73 = a2;
      a1 = v75;
      v45 = v82[0];
      v24 = sub_22B35DB9C();

      swift_willThrow();
      if (qword_28140A0C8 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }

    v26 = v82[0];
  }

  else
  {
    v70 = v18;
    v72 = a1;
    v73 = a2;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v27 = v76;
    v28 = __swift_project_value_buffer(v76, qword_28140BD10);
    swift_beginAccess();
    v29 = v75;
    v30 = *(v75 + 16);
    v68 = v75 + 16;
    v69 = v28;
    v67 = v30;
    v30(v17, v28, v27);
    v31 = v73;

    v32 = sub_22B36050C();
    v33 = sub_22B360D0C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v81 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_22B1A7B20(v72, v31, &v81);
      _os_log_impl(&dword_22B116000, v32, v33, "createDirectory %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x23188F650](v35, -1, -1);
      MEMORY[0x23188F650](v34, -1, -1);
    }

    v36 = *(v29 + 8);
    v36(v17, v27);
    a1 = v80;
    v37 = [v70 defaultManager];
    v38 = sub_22B36081C();
    type metadata accessor for FileAttributeKey(0);
    sub_22B351918(&qword_2814092D8, type metadata accessor for FileAttributeKey, &unk_22B3630A4);
    v24 = sub_22B3606CC();
    v81 = 0;
    v39 = [v37 createDirectoryAtPath:v38 withIntermediateDirectories:1 attributes:v24 error:&v81];

    if (!v39)
    {
      v56 = v81;
      v57 = sub_22B35DB9C();

      swift_willThrow();
      v67(v71, v69, v76);

      v58 = v57;
      v59 = sub_22B36050C();
      v60 = sub_22B360D1C();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v81 = v63;
        *v61 = 136380931;
        *(v61 + 4) = sub_22B1A7B20(v72, v73, &v81);
        *(v61 + 12) = 2114;
        v64 = v57;
        v65 = _swift_stdlib_bridgeErrorToNSError();
        *(v61 + 14) = v65;
        *v62 = v65;
        _os_log_impl(&dword_22B116000, v59, v60, "    Failed to create directory\n    %{private}s. Error = %{public}@", v61, 0x16u);
        sub_22B123284(v62, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v62, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x23188F650](v63, -1, -1);
        MEMORY[0x23188F650](v61, -1, -1);
      }

      v36(v71, v76);
      exit(1);
    }

    v40 = v81;
    v8 = v74;
  }

  v41 = sub_22B35DBBC();
  v42 = MEMORY[0x23188EEB0](v41);
  v43 = v77;
  sub_22B34BF68();
  if (v43)
  {
    objc_autoreleasePoolPop(v42);
    __break(1u);
LABEL_20:
    swift_once();
LABEL_13:
    v46 = v76;
    v47 = __swift_project_value_buffer(v76, qword_28140BD10);
    swift_beginAccess();
    (*(a1 + 16))(v70, v47, v46);

    v48 = v24;
    v49 = sub_22B36050C();
    v50 = sub_22B360D1C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v81 = v53;
      *v51 = 136380931;
      *(v51 + 4) = sub_22B1A7B20(v72, v73, &v81);
      *(v51 + 12) = 2114;
      v54 = v24;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 14) = v55;
      *v52 = v55;
      _os_log_impl(&dword_22B116000, v49, v50, "Failed to set attributes to directory\n%{private}s. Error = %{public}@", v51, 0x16u);
      sub_22B123284(v52, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x23188F650](v53, -1, -1);
      MEMORY[0x23188F650](v51, -1, -1);
    }

    (*(a1 + 8))(v70, v76);
    exit(1);
  }

  objc_autoreleasePoolPop(v42);
  return (*(v78 + 8))(v8, v79);
}

uint64_t sub_22B34BF68()
{
  v23 = sub_22B36052C();
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = sub_22B35DA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35DA7C();
  sub_22B35DA6C();
  sub_22B35DBCC();
  if (v0)
  {
    (*(v8 + 8))(v10, v7);
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v11 = v23;
    v12 = __swift_project_value_buffer(v23, qword_28140BD10);
    swift_beginAccess();
    (*(v1 + 16))(v3, v12, v11);
    v13 = sub_22B36050C();
    v14 = sub_22B360D1C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22B116000, v13, v14, "Failed to set skip backup for URL", v15, 2u);
      MEMORY[0x23188F650](v15, -1, -1);
    }

    return (*(v1 + 8))(v3, v11);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v17 = v23;
    v18 = __swift_project_value_buffer(v23, qword_28140BD10);
    swift_beginAccess();
    (*(v1 + 16))(v6, v18, v17);
    v19 = sub_22B36050C();
    v20 = sub_22B360D0C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22B116000, v19, v20, "Set skip backup for URL", v21, 2u);
      MEMORY[0x23188F650](v21, -1, -1);

      (*(v1 + 8))(v6, v23);
    }

    else
    {

      (*(v1 + 8))(v6, v17);
    }

    return (*(v8 + 8))(v10, v7);
  }
}

void sub_22B34C348(__n128 a1)
{
  v1 = sub_22B35DC4C();
  v2 = *(v1 - 8);
  v44 = v1;
  v45 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_28140BD10);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_22B36050C();
  v14 = sub_22B360D0C();
  if (os_log_type_enabled(v13, v14))
  {
    v43 = v4;
    v15 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v47 = v42;
    *v15 = 136315138;
    v16 = MEMORY[0x23188EEB0]();
    v17 = v46;
    sub_22B34C7C8(v7);
    v46 = v17;
    v18 = v16;
    if (v17)
    {
      goto LABEL_10;
    }

    objc_autoreleasePoolPop(v16);
    v19 = sub_22B35DC1C();
    v21 = v20;
    v22 = v7;
    v23 = v44;
    (*(v45 + 8))(v22, v44);
    v24 = sub_22B1A7B20(v19, v21, &v47);

    *(v15 + 4) = v24;
    _os_log_impl(&dword_22B116000, v13, v14, "initializeProtectedStorePaths %s", v15, 0xCu);
    v25 = v42;
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x23188F650](v25, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);

    v26 = (*(v9 + 8))(v11, v8);
    v4 = v43;
  }

  else
  {

    v26 = (*(v9 + 8))(v11, v8);
    v23 = v44;
  }

  v27 = MEMORY[0x23188EEB0](v26);
  v28 = v46;
  sub_22B34C7C8(v4);
  if (!v28)
  {
    objc_autoreleasePoolPop(v27);
    v29 = sub_22B35DC1C();
    v31 = v30;
    (*(v45 + 8))(v4, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB110, &qword_22B367E08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B3634B0;
    v33 = *MEMORY[0x277CCA180];
    *(inited + 32) = *MEMORY[0x277CCA180];
    v34 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v35 = v33;
    v36 = [v34 initWithShort_];
    *(inited + 64) = sub_22B351960();
    *(inited + 40) = v36;
    v37 = sub_22B321984(inited);
    swift_setDeallocating();
    v38 = sub_22B123284(inited + 32, &qword_27D8BAE48, &unk_22B367E10);
    v39 = MEMORY[0x23188EEB0](v38);
    sub_22B34B61C(v29, v31, v37, v40);

    objc_autoreleasePoolPop(v39);
    return;
  }

  objc_autoreleasePoolPop(v27);
  __break(1u);
  v18 = v8;
LABEL_10:
  objc_autoreleasePoolPop(v18);
  __break(1u);
}

void sub_22B34C7C8(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_22B35DBAC();
  v46 = *(v1 - 8);
  v47 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45 - v5;
  v7 = sub_22B35DC4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v50 = sub_22B36052C();
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v51 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v18 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v19 = sub_22B360A5C();

  if (!*(v19 + 16))
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v40 = v50;
    v41 = __swift_project_value_buffer(v50, qword_28140BD10);
    swift_beginAccess();
    (*(v53 + 16))(v17, v41, v40);
    v42 = sub_22B36050C();
    v43 = sub_22B360D1C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22B116000, v42, v43, "Can't get the library directory", v44, 2u);
      MEMORY[0x23188F650](v44, -1, -1);
    }

    (*(v53 + 8))(v17, v50);
    exit(1);
  }

  (*(v8 + 56))(v6, 1, 1, v7);
  (*(v46 + 104))(v3, *MEMORY[0x277CC91D8], v47);
  swift_bridgeObjectRetain_n();
  sub_22B35DC3C();
  sub_22B35DBFC();
  v47 = v8;
  v21 = v8 + 8;
  v20 = *(v8 + 8);
  v22 = v20(v10, v7);
  v23 = MEMORY[0x23188EEB0](v22);
  v24 = v48;
  sub_22B34BF68();
  if (v24)
  {
    objc_autoreleasePoolPop(v23);
    __break(1u);
  }

  else
  {
    v25 = v7;
    v46 = 0;
    v48 = v20;

    objc_autoreleasePoolPop(v23);
    v26 = v50;
    v27 = v51;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v26, qword_28140BD10);
    swift_beginAccess();
    v29 = v53;
    (*(v53 + 16))(v27, v28, v26);
    v30 = sub_22B36050C();
    v31 = sub_22B360D0C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v45 = v21;
      v34 = v33;
      v52[0] = v33;
      *v32 = 136315138;
      swift_beginAccess();
      sub_22B351918(&unk_28140B4A0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v35 = sub_22B36131C();
      v37 = v25;
      v38 = sub_22B1A7B20(v35, v36, v52);

      *(v32 + 4) = v38;
      v25 = v37;
      _os_log_impl(&dword_22B116000, v30, v31, "defaultStorageDirectory is %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x23188F650](v34, -1, -1);
      MEMORY[0x23188F650](v32, -1, -1);

      (*(v53 + 8))(v51, v26);
    }

    else
    {

      (*(v29 + 8))(v27, v26);
    }

    v39 = v47;
    swift_beginAccess();
    (*(v39 + 16))(v49, v13, v25);
    v48(v13, v25);
  }
}

void sub_22B34CE74(void *a1@<X0>, int a4@<W3>, uint64_t a5@<X8>)
{
  v56 = a4;
  v62 = *MEMORY[0x277D85DE8];
  v58 = sub_22B35DC4C();
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v55 - v12;
  MEMORY[0x28223BE20](v14);
  v59 = v55 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v55 - v18;
  v20 = MEMORY[0x23188EEB0](v17);
  sub_22B34C7C8(v19);
  if (v6)
  {
    objc_autoreleasePoolPop(v20);
    __break(1u);
    objc_autoreleasePoolPop(v19);
    __break(1u);
    objc_autoreleasePoolPop(a1);
    __break(1u);
  }

  else
  {
    objc_autoreleasePoolPop(v20);
    v57 = v19;
    v21 = sub_22B35DBEC();
    v22 = MEMORY[0x23188EEB0](v21);
    sub_22B34BF68();
    v55[1] = a5;
    objc_autoreleasePoolPop(v22);
    v23 = objc_opt_self();
    v24 = [v23 defaultManager];
    v61 = 0;
    v25 = [v24 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v61];

    v26 = v60;
    v27 = v61;
    v28 = MEMORY[0x277CCA180];
    if (v25)
    {
      sub_22B35DC0C();
      v29 = v27;

      sub_22B35DBEC();
      v30 = v10;
      v31 = v58;
      v55[0] = *(v26 + 8);
      (v55[0])(v30, v58);
      (*(v26 + 32))(v59, v13, v31);
      v32 = [v23 defaultManager];
      v33 = sub_22B35DBDC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB110, &qword_22B367E08);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22B3634B0;
      v35 = *v28;
      *(inited + 32) = *v28;
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 40) = 511;
      v36 = v35;
      sub_22B321984(inited);
      swift_setDeallocating();
      sub_22B123284(inited + 32, &qword_27D8BAE48, &unk_22B367E10);
      type metadata accessor for FileAttributeKey(0);
      sub_22B351918(&qword_2814092D8, type metadata accessor for FileAttributeKey, &unk_22B3630A4);
      v37 = sub_22B3606CC();

      v61 = 0;
      v38 = [v32 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:v37 error:&v61];

      if (v38)
      {
        v39 = v61;
      }

      else
      {
        v42 = v61;
        v43 = sub_22B35DB9C();

        swift_willThrow();
      }

      (v55[0])(v59, v31);
      v26 = v60;
    }

    else
    {
      v40 = v61;
      v41 = sub_22B35DB9C();

      swift_willThrow();
      v31 = v58;
    }

    v44 = MEMORY[0x277D83B88];
    if (v56)
    {
      v45 = sub_22B35DC1C();
      v47 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB110, &qword_22B367E08);
      v48 = swift_initStackObject();
      *(v48 + 16) = xmmword_22B3634B0;
      v49 = *v28;
      *(v48 + 32) = *v28;
      *(v48 + 64) = v44;
      *(v48 + 40) = 448;
      v50 = v49;
      v51 = sub_22B321984(v48);
      swift_setDeallocating();
      v52 = sub_22B123284(v48 + 32, &qword_27D8BAE48, &unk_22B367E10);
      v53 = MEMORY[0x23188EEB0](v52);
      sub_22B34B61C(v45, v47, v51, v54);

      objc_autoreleasePoolPop(v53);
    }

    (*(v26 + 8))(v57, v31);
  }
}

void sub_22B34D440()
{
  v30[3] = *MEMORY[0x277D85DE8];
  v1 = sub_22B36052C();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = sub_22B35DC4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v12 = MEMORY[0x23188EEB0]();
  sub_22B34C7C8(v10);
  if (v0)
  {
    objc_autoreleasePoolPop(v12);
    __break(1u);
  }

  else
  {
    objc_autoreleasePoolPop(v12);
    v13 = sub_22B35DBDC();
    (*(v8 + 8))(v10, v7);
    v30[0] = 0;
    v14 = [v11 removeItemAtURL:v13 error:v30];

    if (v14)
    {
      v15 = qword_28140A0C8;
      v16 = v30[0];
      v17 = v28;
      if (v15 != -1)
      {
        swift_once();
      }

      v18 = v29;
      v19 = __swift_project_value_buffer(v29, qword_28140BD10);
      swift_beginAccess();
      (*(v17 + 16))(v6, v19, v18);
      v20 = sub_22B36050C();
      v21 = sub_22B360D1C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_22B116000, v20, v21, "Deleted all local data", v22, 2u);
        MEMORY[0x23188F650](v22, -1, -1);
      }
    }

    else
    {
      v23 = v30[0];
      v24 = sub_22B35DB9C();

      swift_willThrow();
      v17 = v28;
      v18 = v29;
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v25 = __swift_project_value_buffer(v18, qword_28140BD10);
      swift_beginAccess();
      (*(v17 + 16))(v3, v25, v18);
      v20 = sub_22B36050C();
      v26 = sub_22B360D1C();
      if (os_log_type_enabled(v20, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_22B116000, v20, v26, "Failed to purge data", v27, 2u);
        MEMORY[0x23188F650](v27, -1, -1);
      }

      v6 = v3;
    }

    (*(v17 + 8))(v6, v18);
  }
}

void sub_22B34D88C()
{
  v105 = *MEMORY[0x277D85DE8];
  v95 = sub_22B35DBAC();
  *&v90 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v89 = &v78 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  MEMORY[0x28223BE20](v2 - 8);
  v92 = (&v78 - v3);
  v4 = sub_22B35DC4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v88 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_22B36052C();
  v91 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = &v78 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v78 - v12;
  v85 = objc_opt_self();
  v14 = [v85 standardUserDefaults];
  v15 = sub_22B36081C();
  v16 = [v14 objectForKey_];

  if (v16)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
  }

  v104[0] = v102;
  v104[1] = v103;
  if (*(&v103 + 1))
  {
    if (swift_dynamicCast() && (v96 & 1) != 0)
    {
      return;
    }
  }

  else
  {
    sub_22B123284(v104, &unk_27D8BA950, &qword_22B364940);
  }

  v17 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v18 = sub_22B360A5C();

  if (v18[2])
  {
    v79 = v8;
    v87 = v0;
    v19 = v18[5];
    v82 = v18[4];
    v81 = v19;

    v84 = *(v5 + 56);
    v86 = 1;
    v20 = v4;
    v84(v92, 1, 1, v4);
    v83 = *MEMORY[0x277CC91D8];
    *&v90 = *(v90 + 104);
    v21 = v89;
    (v90)(v89);

    v22 = v88;
    sub_22B35DC3C();
    v23 = sub_22B35DC1C();
    v25 = v24;
    v80 = *(v5 + 8);
    v80(v22, v20);
    *&v104[0] = 0xD000000000000021;
    *(&v104[0] + 1) = 0x800000022B36EFF0;
    *&v102 = v23;
    *(&v102 + 1) = v25;
    *&v102 = sub_22B3609EC();
    *(&v102 + 1) = v26;
    sub_22B36093C();
    v97[0] = v102;
    v27 = v20;
    v84(v92, 1, 1, v20);
    (v90)(v21, v83, v95);
    v28 = v97 + 8;
    sub_22B35DC3C();
    v29 = sub_22B35DC1C();
    v31 = v30;
    v80(v22, v27);
    *&v104[0] = 0xD00000000000002BLL;
    *(&v104[0] + 1) = 0x800000022B36F020;
    *&v102 = v29;
    *(&v102 + 1) = v31;
    *&v102 = sub_22B3609EC();
    *(&v102 + 1) = v32;
    sub_22B36093C();
    v97[1] = v102;
    v98 = 0xD00000000000003CLL;
    v99 = 0x800000022B36F050;
    v100 = 0xD000000000000046;
    v101 = 0x800000022B36F090;
    v33 = objc_opt_self();
    v34 = 0;
    v92 = (v91 + 16);
    v91 += 8;
    v35 = &selRef_initWithShareURLs_invitationTokensByShareURL_;
    *&v36 = 136315138;
    v90 = v36;
    v78 = v97 + 8;
LABEL_11:
    if (v34 <= 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = v34;
    }

    v95 = -v37;
    v38 = &v28[16 * v34++];
    do
    {
      if (v95 + v34 == 1)
      {
        __break(1u);
LABEL_42:
        swift_arrayDestroy();
        return;
      }

      v40 = *(v38 - 1);
      v39 = *v38;

      v41 = [v33 v35[72]];
      v42 = sub_22B36081C();
      v43 = [v41 fileExistsAtPath_];

      if (v43)
      {
        v44 = v35[72];
        v45 = v33;
        v46 = [v33 v44];
        v47 = sub_22B36081C();
        v96 = 0;
        v48 = [v46 removeItemAtPath:v47 error:&v96];

        if (!v48)
        {
          v59 = v96;
          v60 = sub_22B35DB9C();

          swift_willThrow();
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v61 = v94;
          v62 = __swift_project_value_buffer(v94, qword_28140BD10);
          swift_beginAccess();
          v63 = v79;
          (*v92)(v79, v62, v61);

          v64 = sub_22B36050C();
          v65 = sub_22B360D1C();

          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v95 = v60;
            v68 = v67;
            v96 = v67;
            *v66 = v90;
            v69 = sub_22B1A7B20(v40, v39, &v96);

            *(v66 + 4) = v69;
            _os_log_impl(&dword_22B116000, v64, v65, "Failed to delete path %s for migration", v66, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v68);
            MEMORY[0x23188F650](v68, -1, -1);
            MEMORY[0x23188F650](v66, -1, -1);

            (*v91)(v63, v94);
          }

          else
          {

            (*v91)(v63, v61);
          }

          v33 = v45;
          v87 = 0;
          v86 = 0;
          v28 = v78;
          v35 = &selRef_initWithShareURLs_invitationTokensByShareURL_;
          if (v34 == 4)
          {
            goto LABEL_42;
          }

          goto LABEL_11;
        }

        v49 = qword_28140A0C8;
        v50 = v96;
        if (v49 != -1)
        {
          swift_once();
        }

        v51 = v94;
        v52 = __swift_project_value_buffer(v94, qword_28140BD10);
        swift_beginAccess();
        v53 = v93;
        (*v92)(v93, v52, v51);

        v54 = sub_22B36050C();
        v55 = sub_22B360D1C();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v96 = v57;
          *v56 = v90;
          v58 = sub_22B1A7B20(v40, v39, &v96);

          *(v56 + 4) = v58;
          _os_log_impl(&dword_22B116000, v54, v55, "Deleted the path %s for migration", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v57);
          MEMORY[0x23188F650](v57, -1, -1);
          MEMORY[0x23188F650](v56, -1, -1);

          (*v91)(v93, v94);
        }

        else
        {

          (*v91)(v53, v51);
        }

        v33 = v45;
        v35 = &selRef_initWithShareURLs_invitationTokensByShareURL_;
      }

      else
      {
      }

      ++v34;
      v38 += 2;
    }

    while (v34 != 5);
    swift_arrayDestroy();
    if (v86)
    {
      v70 = [v85 standardUserDefaults];
      v71 = sub_22B36081C();
      [v70 setBool:1 forKey:v71];
    }
  }

  else
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v72 = v94;
    v73 = __swift_project_value_buffer(v94, qword_28140BD10);
    swift_beginAccess();
    v74 = v91;
    (*(v91 + 16))(v13, v73, v72);
    v75 = sub_22B36050C();
    v76 = sub_22B360D1C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_22B116000, v75, v76, "Can't get the library directory", v77, 2u);
      MEMORY[0x23188F650](v77, -1, -1);
    }

    (*(v74 + 8))(v13, v72);
  }
}

uint64_t sub_22B34E638(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B36052C();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = objc_allocWithZone(MEMORY[0x277CFA320]);
  v11 = sub_22B36081C();
  v12 = sub_22B36081C();
  v13 = [v10 initWithExtensionBundleIdentifier:v11 kind:v12];

  v31 = a1;
  v14 = sub_22B36081C();
  v15 = [v13 reloadTimelineWithReason_];

  if (v15)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v16 = v4;
    v17 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    v18 = v32;
    (*(v32 + 16))(v9, v17, v16);

    v19 = sub_22B36050C();
    v20 = sub_22B360D1C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_22B1A7B20(v31, a2, &v33);
      _os_log_impl(&dword_22B116000, v19, v20, "Failed to refresh Home's EnergyForecastWidget: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x23188F650](v22, -1, -1);
      MEMORY[0x23188F650](v21, -1, -1);
    }

    return (*(v18 + 8))(v9, v16);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v24 = v4;
    v25 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    v26 = v32;
    (*(v32 + 16))(v6, v25, v24);

    v27 = sub_22B36050C();
    v28 = sub_22B360CFC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_22B1A7B20(v31, a2, &v33);
      _os_log_impl(&dword_22B116000, v27, v28, "Reload timeline for Home's EnergyForecastWidget: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23188F650](v30, -1, -1);
      MEMORY[0x23188F650](v29, -1, -1);
    }

    return (*(v26 + 8))(v6, v24);
  }
}

uint64_t sub_22B34EA8C(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B36052C();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = objc_allocWithZone(MEMORY[0x277CFA320]);
  v11 = sub_22B36081C();
  v12 = sub_22B36081C();
  v13 = [v10 initWithExtensionBundleIdentifier:v11 kind:v12];

  v31 = a1;
  v14 = sub_22B36081C();
  v15 = [v13 reloadTimelineWithReason_];

  if (v15)
  {

    if (qword_28140A0C8[0] != -1)
    {
      swift_once();
    }

    v16 = v4;
    v17 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    v18 = v32;
    (*(v32 + 16))(v9, v17, v16);

    v19 = sub_22B36050C();
    v20 = sub_22B360D1C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_22B1A7B20(v31, a2, &v33);
      _os_log_impl(&dword_22B116000, v19, v20, "Failed to refresh Home's HistoricalUsageWidget: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x23188F650](v22, -1, -1);
      MEMORY[0x23188F650](v21, -1, -1);
    }

    return (*(v18 + 8))(v9, v16);
  }

  else
  {
    if (qword_28140A0C8[0] != -1)
    {
      swift_once();
    }

    v24 = v4;
    v25 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    v26 = v32;
    (*(v32 + 16))(v6, v25, v24);

    v27 = sub_22B36050C();
    v28 = sub_22B360CFC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_22B1A7B20(v31, a2, &v33);
      _os_log_impl(&dword_22B116000, v27, v28, "Reload timeline for Home's HistoricalUsageWidget: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23188F650](v30, -1, -1);
      MEMORY[0x23188F650](v29, -1, -1);
    }

    return (*(v26 + 8))(v6, v24);
  }
}

uint64_t sub_22B34EEE0(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B36052C();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = objc_allocWithZone(MEMORY[0x277CFA320]);
  v11 = sub_22B36081C();
  v12 = sub_22B36081C();
  v13 = [v10 initWithExtensionBundleIdentifier:v11 kind:v12];

  v31 = a1;
  v14 = sub_22B36081C();
  v15 = [v13 reloadTimelineWithReason_];

  if (v15)
  {

    if (qword_28140A0C8[0] != -1)
    {
      swift_once();
    }

    v16 = v4;
    v17 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    v18 = v32;
    (*(v32 + 16))(v9, v17, v16);

    v19 = sub_22B36050C();
    v20 = sub_22B360D1C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_22B1A7B20(v31, a2, &v33);
      _os_log_impl(&dword_22B116000, v19, v20, "Failed to refresh Home's UtilityRateInfoWidget: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x23188F650](v22, -1, -1);
      MEMORY[0x23188F650](v21, -1, -1);
    }

    return (*(v18 + 8))(v9, v16);
  }

  else
  {
    if (qword_28140A0C8[0] != -1)
    {
      swift_once();
    }

    v24 = v4;
    v25 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    v26 = v32;
    (*(v32 + 16))(v6, v25, v24);

    v27 = sub_22B36050C();
    v28 = sub_22B360CFC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_22B1A7B20(v31, a2, &v33);
      _os_log_impl(&dword_22B116000, v27, v28, "Reload timeline for Home's UtilityRateInfoWidget: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23188F650](v30, -1, -1);
      MEMORY[0x23188F650](v29, -1, -1);
    }

    return (*(v26 + 8))(v6, v24);
  }
}

void sub_22B34F334()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22B36081C();
  v2 = [v0 initWithSuiteName_];

  qword_28140BCA0 = v2;
}

uint64_t sub_22B34F3A4(uint64_t a1, unint64_t a2)
{
  sub_22B144B30(a1, a2);
  sub_22B34F498(a1, a2);
  v4 = sub_22B3608EC();

  return v4;
}

uint64_t sub_22B34F410@<X0>(uint64_t *a3@<X8>)
{
  result = sub_22B3608EC();
  *a3 = result;
  a3[1] = v5;
  return result;
}

double sub_22B34F44C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_22B170C58((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

void sub_22B34F498(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B35DCFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_12:
      sub_22B12F174(a1, a2);
      return;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      if (v9)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      sub_22B1A7F60(v9, 0);
      v12 = sub_22B35DC8C();
      sub_22B12F174(a1, a2);
      v13 = *(v5 + 8);
      v5 += 8;
      v13(v7, v4);
      if (v12 == v9)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v14 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v9 = v14;
      if (!v14)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_22B34F614(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_22B3608EC();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_22B3608EC();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_22B35D91C();
  if (a1)
  {
    a1 = sub_22B35D94C();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_22B35D91C() || !__OFSUB__(v5, sub_22B35D94C()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_22B35D93C();
  return sub_22B3608EC();
}

void sub_22B34F7C0(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22B170C58(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_22B172454(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_22B123284(v20, &qword_27D8BB118, &qword_22B367E38);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22B34F920()
{
  v1 = type metadata accessor for CDEnergyGuidanceCache(0);
  v0[155] = v1;
  v0[156] = *(v1 - 8);
  v0[157] = swift_task_alloc();
  v2 = sub_22B36052C();
  v0[158] = v2;
  v0[159] = *(v2 - 8);
  v0[160] = swift_task_alloc();
  v3 = sub_22B35E20C();
  v0[161] = v3;
  v0[162] = *(v3 - 8);
  v0[163] = swift_task_alloc();
  v0[164] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA240, &qword_22B3636E8);
  v0[165] = swift_task_alloc();
  v0[166] = swift_task_alloc();
  v0[167] = swift_task_alloc();
  v0[168] = *(type metadata accessor for CDEnergyWindowNotifications(0) - 8);
  v0[169] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B34FB40, 0, 0);
}

uint64_t sub_22B34FB40()
{
  if (qword_28140AF70 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDB8;
  *(v0 + 1360) = qword_28140BDB8;

  return MEMORY[0x2822009F8](sub_22B34FBD8, v1, 0);
}

uint64_t sub_22B34FBD8()
{
  *(v0 + 1368) = sub_22B1802B0();

  return MEMORY[0x2822009F8](sub_22B34FC44, 0, 0);
}

uint64_t sub_22B34FC44()
{
  v1 = *(v0 + 1368);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F98];
  if (v2)
  {
    v4 = *(v0 + 1344);
    v5 = *(v0 + 1352);
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D837D0];
    v40 = *(v4 + 72);
    while (1)
    {
      v9 = *(v0 + 1352);
      sub_22B180AC8(v6, v9);
      v10 = *v9;
      v11 = *(v5 + 8);
      *(v0 + 120) = v8;
      *(v0 + 96) = v10;
      *(v0 + 104) = v11;
      sub_22B172454((v0 + 96), (v0 + 1056));

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22B33F298((v0 + 1056), 0x444964697267, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
      v13 = *(v5 + 16);
      v14 = MEMORY[0x277D839B0];
      *(v0 + 1016) = MEMORY[0x277D839B0];
      *(v0 + 992) = v13;
      sub_22B172454((v0 + 992), (v0 + 1152));
      v15 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B33F298((v0 + 1152), 0xD000000000000012, 0x800000022B36B110, v15);
      v16 = *(v5 + 17);
      *(v0 + 184) = v14;
      *(v0 + 160) = v16;
      sub_22B172454((v0 + 160), (v0 + 192));
      v17 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B33F298((v0 + 192), 0x6863746170736964, 0xEA00000000006465, v17);
      v18 = *(v5 + 24);
      v19 = *(v5 + 32);
      *(v0 + 248) = v8;
      *(v0 + 224) = v18;
      *(v0 + 232) = v19;
      sub_22B172454((v0 + 224), (v0 + 256));

      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B33F298((v0 + 256), 0x656C746974, 0xE500000000000000, v20);
      v21 = *(v5 + 40);
      v22 = *(v5 + 48);
      *(v0 + 312) = v8;
      *(v0 + 288) = v21;
      *(v0 + 296) = v22;
      sub_22B172454((v0 + 288), (v0 + 320));

      v23 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B33F298((v0 + 320), 2036625250, 0xE400000000000000, v23);
      v41 = v3;
      v24 = *(v5 + 64);
      if (v24)
      {
        v25 = *(v5 + 56);
        *(v0 + 376) = v8;
        *(v0 + 352) = v25;
        *(v0 + 360) = v24;
        sub_22B172454((v0 + 352), (v0 + 736));

        v26 = swift_isUniquelyReferenced_nonNull_native();
        sub_22B33F298((v0 + 736), 0x4C5255706174, 0xE600000000000000, v26);
        v41 = v3;
        v27 = *(v5 + 80);
        if (!v27)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_22B2E641C(0x4C5255706174, 0xE600000000000000, (v0 + 384));
        sub_22B123284(v0 + 384, &unk_27D8BA950, &qword_22B364940);
        v27 = *(v5 + 80);
        if (!v27)
        {
LABEL_7:
          sub_22B2E641C(0x4449656D6F68, 0xE600000000000000, (v0 + 448));
          sub_22B123284(v0 + 448, &unk_27D8BA950, &qword_22B364940);
          v30 = v41;
          goto LABEL_8;
        }
      }

      v28 = *(v5 + 72);
      *(v0 + 440) = v8;
      *(v0 + 416) = v28;
      *(v0 + 424) = v27;
      sub_22B172454((v0 + 416), (v0 + 1024));

      v29 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B33F298((v0 + 1024), 0x4449656D6F68, 0xE600000000000000, v29);
      v30 = v41;
LABEL_8:
      v31 = *(v5 + 88);
      *(v0 + 504) = MEMORY[0x277D839B0];
      *(v0 + 480) = v31;
      sub_22B172454((v0 + 480), (v0 + 512));
      v32 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B33F298((v0 + 512), 0xD000000000000013, 0x800000022B36F1C0, v32);
      *(v0 + 568) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB030, &unk_22B367700);
      *(v0 + 544) = v30;
      sub_22B172454((v0 + 544), (v0 + 576));
      v33 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B33F298((v0 + 576), 0x747865746E6F63, 0xE700000000000000, v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_22B32CF60(0, v7[2] + 1, 1, v7);
      }

      v35 = v7[2];
      v34 = v7[3];
      if (v35 >= v34 >> 1)
      {
        v7 = sub_22B32CF60((v34 > 1), v35 + 1, 1, v7);
      }

      sub_22B351A10(*(v0 + 1352), type metadata accessor for CDEnergyWindowNotifications);
      v7[2] = v35 + 1;
      v7[v35 + 4] = v3;
      v6 += v40;
      if (!--v2)
      {

        goto LABEL_15;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_15:
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB120, &qword_22B367E40);
  *(v0 + 1376) = v36;
  *(v0 + 632) = v36;
  *(v0 + 608) = v7;
  sub_22B172454((v0 + 608), (v0 + 640));
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B33F298((v0 + 640), 0xD000000000000015, 0x800000022B36F1E0, v37);
  *(v0 + 1384) = v3;
  if (qword_28140B068 != -1)
  {
    swift_once();
  }

  v38 = qword_28140BDC0;
  *(v0 + 1392) = qword_28140BDC0;

  return MEMORY[0x2822009F8](sub_22B350204, v38, 0);
}

uint64_t sub_22B350204()
{
  *(v0 + 1400) = sub_22B211B68();

  return MEMORY[0x2822009F8](sub_22B350270, 0, 0);
}

uint64_t sub_22B350270()
{
  v1 = *(v0 + 1400);
  v2 = *(v1 + 16);
  *(v0 + 1408) = v2;
  if (v2)
  {
    v3 = *(type metadata accessor for CDEnergyGuidanceTracker(0) - 8);
    v4 = *(v3 + 80);
    *(v0 + 1488) = v4;
    v5 = MEMORY[0x277D17EE8];
    *(v0 + 1416) = *(v3 + 72);
    *(v0 + 1492) = *v5;
    *(v0 + 1440) = MEMORY[0x277D84F90];
    v6 = (v1 + ((v4 + 32) & ~v4));
    *(v0 + 1424) = 0u;
    v7 = *v6;
    *(v0 + 1448) = *v6;
    v8 = v6[1];
    *(v0 + 1456) = v8;
    *(v0 + 696) = MEMORY[0x277D837D0];
    *(v0 + 672) = v7;
    *(v0 + 680) = v8;
    sub_22B172454((v0 + 672), (v0 + 704));

    v9 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F298((v0 + 704), 0x444964697267, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    *(v0 + 1464) = v9;
    if (qword_28140B168 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 1492);
    v12 = *(v0 + 1304);
    v13 = *(v0 + 1296);
    v14 = *(v0 + 1288);
    v15 = qword_28140BDC8;
    *(v0 + 1472) = qword_28140BDC8;
    (*(v13 + 104))(v12, v11, v14);
    *(v0 + 1496) = sub_22B35E1FC();
    (*(v13 + 8))(v12, v14);

    return MEMORY[0x2822009F8](sub_22B350588, v15, 0);
  }

  else
  {
    v16 = *(v0 + 1384);
    v17 = *(v0 + 1376);

    *(v0 + 856) = v17;
    *(v0 + 832) = MEMORY[0x277D84F90];
    sub_22B172454((v0 + 832), (v0 + 864));
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F298((v0 + 864), 0x676E696B63617274, 0xEC00000061746144, v18);

    v19 = *(v0 + 8);

    return v19(v16);
  }
}

uint64_t sub_22B350588()
{
  v30 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1280);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1264);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 1496);
    v8 = *(v0 + 1456);
    v9 = *(v0 + 1448);
    v27 = *(v0 + 1280);
    v10 = *(v0 + 1272);
    v11 = *(v0 + 1264);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136381187;
    *(v12 + 4) = sub_22B1A7B20(v9, v8, &v29);
    *(v12 + 12) = 512;
    *(v12 + 14) = v7;
    *(v12 + 16) = 1024;
    *(v12 + 18) = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Get cached guidance entry from cache for %{private}s %hd hasUtility: %{BOOL}d", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);

    (*(v10 + 8))(v27, v11);
  }

  else
  {
    v14 = *(v0 + 1280);
    v15 = *(v0 + 1272);
    v16 = *(v0 + 1264);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(*(v0 + 1472) + 112);
  if (v17)
  {
    v18 = *(v0 + 1496);
    v19 = *(v0 + 1456);
    v20 = *(v0 + 1448);
    v28 = *(v0 + 1424);
    v21 = *(v0 + 1328);
    (*(*(v0 + 1248) + 56))(v21, 1, 1, *(v0 + 1240));
    v22 = *(v17 + 48);
    v23 = swift_task_alloc();
    *(v23 + 16) = v17;
    *(v23 + 24) = v20;
    *(v23 + 32) = v19;
    *(v23 + 40) = v18;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0xE000000000000000;
    *(v23 + 64) = 0;
    *(v23 + 72) = 0xE000000000000000;
    *(v23 + 80) = 0;
    *(v23 + 88) = 0xE000000000000000;
    *(v23 + 96) = 2;
    *(v23 + 104) = v21;

    v24 = v22;
    v25 = v28;
    sub_22B360E7C();

    sub_22B123284(v21, &qword_27D8BA240, &qword_22B3636E8);
  }

  else
  {
    (*(*(v0 + 1248) + 56))(*(v0 + 1336), 1, 1, *(v0 + 1240));
    v25 = *(v0 + 1424);
  }

  *(v0 + 1480) = v25;

  return MEMORY[0x2822009F8](sub_22B3508E4, 0, 0);
}

uint64_t sub_22B3508E4()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1240);
  sub_22B12F208(*(v0 + 1336), v1);
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = MEMORY[0x277D837D0];
  v6 = MEMORY[0x277D84F98];
  if (v4 == 1)
  {
    sub_22B123284(*(v0 + 1320), &qword_27D8BA240, &qword_22B3636E8);
    v7 = *(v0 + 1480);
    v8 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v7 = *(v0 + 1480);
  v9 = *(v0 + 1256);
  sub_22B3519AC(*(v0 + 1320), v9);
  v10 = v9[3];
  v11 = v9[4];
  *(v0 + 920) = v5;
  *(v0 + 896) = v10;
  *(v0 + 904) = v11;
  sub_22B172454((v0 + 896), (v0 + 928));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22B33F298((v0 + 928), 0x444964697267, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v13 = *v9;
  v14 = v9[1];
  v15 = sub_22B34F614(v13, v14);
  if (!v16)
  {
    *(v0 + 1224) = v13;
    *(v0 + 1232) = v14;
    sub_22B144B30(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB128, &qword_22B367E48);
    if (swift_dynamicCast())
    {
      sub_22B11A02C((v0 + 56), v0 + 16);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      if (sub_22B3612DC())
      {
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        sub_22B3612CC();
        v17 = *(v0 + 1208);
        v18 = *(v0 + 1216);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v16 = v18;
        v15 = v17;
        v5 = MEMORY[0x277D837D0];
        goto LABEL_10;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v5 = MEMORY[0x277D837D0];
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      sub_22B123284(v0 + 56, &qword_27D8BB130, qword_22B367E50);
    }

    v15 = sub_22B34F3A4(v13, v14);
  }

LABEL_10:
  v19 = *(v0 + 1256);
  v20 = *(v0 + 1240);
  *(v0 + 984) = v5;
  *(v0 + 960) = v15;
  *(v0 + 968) = v16;
  sub_22B172454((v0 + 960), (v0 + 1088));
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B33F298((v0 + 1088), 0x65636E6164697567, 0xE800000000000000, v21);
  v22 = *(v20 + 32);
  v23 = sub_22B35DE9C();
  *(v0 + 1144) = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1120));
  (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v19 + v22, v23);
  sub_22B172454((v0 + 1120), (v0 + 128));
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B33F298((v0 + 128), 0x6954747265736E69, 0xEA0000000000656DLL, v25);
  v8 = sub_22B32CF60(0, 1, 1, MEMORY[0x277D84F90]);
  v27 = v8[2];
  v26 = v8[3];
  if (v27 >= v26 >> 1)
  {
    v8 = sub_22B32CF60((v26 > 1), v27 + 1, 1, v8);
  }

  sub_22B351A10(*(v0 + 1256), type metadata accessor for CDEnergyGuidanceCache);
  v8[2] = v27 + 1;
  v8[v27 + 4] = v6;
LABEL_13:
  v28 = *(v0 + 1464);
  *(v0 + 792) = *(v0 + 1376);
  *(v0 + 768) = v8;
  sub_22B172454((v0 + 768), (v0 + 800));
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B33F298((v0 + 800), 0xD000000000000015, 0x800000022B36F200, v29);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v0 + 1440);
  if ((v30 & 1) == 0)
  {
    v31 = sub_22B32CF60(0, v31[2] + 1, 1, *(v0 + 1440));
  }

  v33 = v31[2];
  v32 = v31[3];
  if (v33 >= v32 >> 1)
  {
    v31 = sub_22B32CF60((v32 > 1), v33 + 1, 1, v31);
  }

  v34 = *(v0 + 1408);
  v35 = *(v0 + 1432) + 1;
  sub_22B123284(*(v0 + 1336), &qword_27D8BA240, &qword_22B3636E8);
  v31[2] = v33 + 1;
  v31[v33 + 4] = v28;
  if (v35 == v34)
  {
    v36 = *(v0 + 1384);
    v37 = *(v0 + 1376);

    *(v0 + 856) = v37;
    *(v0 + 832) = v31;
    sub_22B172454((v0 + 832), (v0 + 864));
    v38 = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F298((v0 + 864), 0x676E696B63617274, 0xEC00000061746144, v38);

    v39 = *(v0 + 8);

    return v39(v36);
  }

  else
  {
    v41 = *(v0 + 1432) + 1;
    *(v0 + 1440) = v31;
    *(v0 + 1432) = v41;
    *(v0 + 1424) = v7;
    v42 = (*(v0 + 1400) + ((*(v0 + 1488) + 32) & ~*(v0 + 1488)) + *(v0 + 1416) * v41);
    v43 = *v42;
    *(v0 + 1448) = *v42;
    v44 = v42[1];
    *(v0 + 1456) = v44;
    *(v0 + 696) = MEMORY[0x277D837D0];
    *(v0 + 672) = v43;
    *(v0 + 680) = v44;
    sub_22B172454((v0 + 672), (v0 + 704));

    v45 = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F298((v0 + 704), 0x444964697267, 0xE600000000000000, v45);
    *(v0 + 1464) = v6;
    if (qword_28140B168 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 1492);
    v47 = *(v0 + 1304);
    v48 = *(v0 + 1296);
    v49 = *(v0 + 1288);
    v50 = qword_28140BDC8;
    *(v0 + 1472) = qword_28140BDC8;
    (*(v48 + 104))(v47, v46, v49);
    *(v0 + 1496) = sub_22B35E1FC();
    (*(v48 + 8))(v47, v49);

    return MEMORY[0x2822009F8](sub_22B350588, v50, 0);
  }
}

unint64_t sub_22B350FE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_22B34F7C0(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_22B172454(v44, v42);
  v14 = *a5;
  result = sub_22B33B28C(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_22B33C03C(v20, a4 & 1);
    result = sub_22B33B28C(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_22B3613BC();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_22B34128C();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_22B172454(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_22B172454(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_22B34F7C0(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_22B172454(v44, v42);
        v32 = *a5;
        result = sub_22B33B28C(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_22B33C03C(v36, 1);
          result = sub_22B33B28C(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v31);
          sub_22B172454(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_22B172454(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_22B34F7C0(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_22B1A20B8(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22B3512F8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22B36052C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B3513B8, 0, 0);
}

uint64_t sub_22B3513B8()
{
  v20 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360CFC();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B36F0E0, &v19);
    _os_log_impl(&dword_22B116000, v5, v6, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  v13 = (*(v9 + 8))(v8, v10);
  v15 = v0[5];
  v14 = v0[6];
  v16 = MEMORY[0x23188EEB0](v13);
  sub_22B34E638(v15, v14);
  objc_autoreleasePoolPop(v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_22B3515E8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22B36052C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B3516A8, 0, 0);
}

uint64_t sub_22B3516A8()
{
  v23 = v0;
  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360CFC();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(0xD00000000000002DLL, 0x800000022B36EF50, &v22);
    _os_log_impl(&dword_22B116000, v5, v6, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  v13 = (*(v9 + 8))(v8, v10);
  v14 = v0[5];
  v15 = v0[6];
  v16 = MEMORY[0x23188EEB0](v13);
  sub_22B34EA8C(v14, v15);
  objc_autoreleasePoolPop(v16);
  v18 = v0[5];
  v17 = v0[6];
  v19 = MEMORY[0x23188EEB0]();
  sub_22B34EEE0(v18, v17);
  objc_autoreleasePoolPop(v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_22B351918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22B351960()
{
  result = qword_281409278;
  if (!qword_281409278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281409278);
  }

  return result;
}

uint64_t sub_22B3519AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDEnergyGuidanceCache(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B351A10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_22B351AAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_22B351AF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22B351B48()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_serialNumber_obj();

    if (v2)
    {
      v3 = sub_22B36084C();
      v5 = v4;

      qword_27D8BB220 = v3;
      *algn_27D8BB228 = v5;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22B351BE4(uint64_t a1)
{
  v2[36] = a1;
  v3 = sub_22B36052C();
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v2[41] = swift_task_alloc();
  v4 = sub_22B35E32C();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v5 = sub_22B35DE9C();
  v2[45] = v5;
  v2[46] = *(v5 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B351DAC, v1, 0);
}

uint64_t sub_22B351DAC()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_22B36081C();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    v4 = sub_22B36081C();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
    }

    *(v0 + 16) = v58;
    *(v0 + 32) = v59;
    if (*(v0 + 40))
    {
      if (swift_dynamicCast() && (*(v0 + 398) & 1) != 0)
      {
        v6 = *(v0 + 376);
        v7 = *(v0 + 360);
        v8 = *(v0 + 368);
        v10 = *(v0 + 344);
        v9 = *(v0 + 352);
        v11 = *(v0 + 328);
        v56 = *(v0 + 336);
        v57 = *(v0 + 384);
        sub_22B35DE6C();
        sub_22B35F62C();
        sub_22B35DDCC();
        v12 = *(v8 + 8);
        v12(v6, v7);
        v13 = MEMORY[0x277D17F98];
LABEL_57:
        (*(v10 + 104))(v9, *v13, v56);
        (*(v8 + 56))(v11, 1, 1, v7);
        sub_22B35E2FC();

        sub_22B123284(v11, &qword_27D8BA340, &qword_22B363FB0);
        (*(v10 + 8))(v9, v56);
        v12(v57, v7);
        goto LABEL_69;
      }
    }

    else
    {
      sub_22B123284(v0 + 16, &unk_27D8BA950, &qword_22B364940);
    }

    v14 = sub_22B36081C();
    v15 = [v3 objectForKey_];

    if (v15)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
    }

    *(v0 + 48) = v58;
    *(v0 + 64) = v59;
    if (*(v0 + 72))
    {
      if (swift_dynamicCast() && (*(v0 + 397) & 1) != 0)
      {
        v16 = *(v0 + 376);
        v7 = *(v0 + 360);
        v8 = *(v0 + 368);
        v10 = *(v0 + 344);
        v9 = *(v0 + 352);
        v11 = *(v0 + 328);
        v56 = *(v0 + 336);
        v57 = *(v0 + 384);
        sub_22B35DE6C();
        sub_22B35F62C();
        sub_22B35DDCC();
        v12 = *(v8 + 8);
        v12(v16, v7);
        v13 = MEMORY[0x277D17F90];
        goto LABEL_57;
      }
    }

    else
    {
      sub_22B123284(v0 + 48, &unk_27D8BA950, &qword_22B364940);
    }

    v17 = sub_22B36081C();
    v18 = [v3 objectForKey_];

    if (v18)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
    }

    *(v0 + 80) = v58;
    *(v0 + 96) = v59;
    if (*(v0 + 104))
    {
      if (swift_dynamicCast() && (*(v0 + 396) & 1) != 0)
      {
        v19 = *(v0 + 376);
        v7 = *(v0 + 360);
        v8 = *(v0 + 368);
        v10 = *(v0 + 344);
        v9 = *(v0 + 352);
        v11 = *(v0 + 328);
        v56 = *(v0 + 336);
        v57 = *(v0 + 384);
        sub_22B35DE6C();
        sub_22B35F62C();
        sub_22B35DDCC();
        v12 = *(v8 + 8);
        v12(v19, v7);
        v13 = MEMORY[0x277D17FA0];
        goto LABEL_57;
      }
    }

    else
    {
      sub_22B123284(v0 + 80, &unk_27D8BA950, &qword_22B364940);
    }

    v20 = sub_22B36081C();
    v21 = [v3 objectForKey_];

    if (v21)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
    }

    *(v0 + 112) = v58;
    *(v0 + 128) = v59;
    if (*(v0 + 136))
    {
      if (swift_dynamicCast() && (*(v0 + 395) & 1) != 0)
      {
        v22 = *(v0 + 376);
        v7 = *(v0 + 360);
        v8 = *(v0 + 368);
        v10 = *(v0 + 344);
        v9 = *(v0 + 352);
        v11 = *(v0 + 328);
        v56 = *(v0 + 336);
        v57 = *(v0 + 384);
        sub_22B35DE6C();
        sub_22B35F62C();
        sub_22B35DDCC();
        v12 = *(v8 + 8);
        v12(v22, v7);
        v13 = MEMORY[0x277D17F70];
        goto LABEL_57;
      }
    }

    else
    {
      sub_22B123284(v0 + 112, &unk_27D8BA950, &qword_22B364940);
    }

    v23 = sub_22B36081C();
    v24 = [v3 objectForKey_];

    if (v24)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
    }

    *(v0 + 144) = v58;
    *(v0 + 160) = v59;
    if (*(v0 + 168))
    {
      if (swift_dynamicCast() && (*(v0 + 394) & 1) != 0)
      {
        v25 = *(v0 + 376);
        v7 = *(v0 + 360);
        v8 = *(v0 + 368);
        v10 = *(v0 + 344);
        v9 = *(v0 + 352);
        v11 = *(v0 + 328);
        v56 = *(v0 + 336);
        v57 = *(v0 + 384);
        sub_22B35DE6C();
        sub_22B35F62C();
        sub_22B35DDCC();
        v12 = *(v8 + 8);
        v12(v25, v7);
        v13 = MEMORY[0x277D17F78];
        goto LABEL_57;
      }
    }

    else
    {
      sub_22B123284(v0 + 144, &unk_27D8BA950, &qword_22B364940);
    }

    v26 = sub_22B36081C();
    v27 = [v3 objectForKey_];

    if (v27)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
    }

    *(v0 + 176) = v58;
    *(v0 + 192) = v59;
    if (*(v0 + 200))
    {
      if (swift_dynamicCast() && (*(v0 + 393) & 1) != 0)
      {
        v28 = *(v0 + 376);
        v7 = *(v0 + 360);
        v8 = *(v0 + 368);
        v10 = *(v0 + 344);
        v9 = *(v0 + 352);
        v11 = *(v0 + 328);
        v56 = *(v0 + 336);
        v57 = *(v0 + 384);
        sub_22B35DE6C();
        sub_22B35F62C();
        sub_22B35DDCC();
        v12 = *(v8 + 8);
        v12(v28, v7);
        v13 = MEMORY[0x277D17F80];
        goto LABEL_57;
      }
    }

    else
    {
      sub_22B123284(v0 + 176, &unk_27D8BA950, &qword_22B364940);
    }

    v29 = sub_22B36081C();
    v30 = [v3 objectForKey_];

    if (v30)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
    }

    *(v0 + 208) = v58;
    *(v0 + 224) = v59;
    if (*(v0 + 232))
    {
      if (swift_dynamicCast() && (*(v0 + 392) & 1) != 0)
      {
        v31 = *(v0 + 376);
        v7 = *(v0 + 360);
        v8 = *(v0 + 368);
        v10 = *(v0 + 344);
        v9 = *(v0 + 352);
        v11 = *(v0 + 328);
        v56 = *(v0 + 336);
        v57 = *(v0 + 384);
        sub_22B35DE6C();
        sub_22B35F62C();
        sub_22B35DDCC();
        v12 = *(v8 + 8);
        v12(v31, v7);
        v13 = MEMORY[0x277D17F88];
        goto LABEL_57;
      }
    }

    else
    {
      sub_22B123284(v0 + 208, &unk_27D8BA950, &qword_22B364940);
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 320);
    v33 = *(v0 + 296);
    v34 = *(v0 + 304);
    v35 = __swift_project_value_buffer(v33, qword_28140BD10);
    swift_beginAccess();
    (*(v34 + 16))(v32, v35, v33);
    v36 = sub_22B36050C();
    v37 = sub_22B360CFC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22B116000, v36, v37, "Did not find entry in com.apple.Home defaults", v38, 2u);
      MEMORY[0x23188F650](v38, -1, -1);
    }

    v39 = *(v0 + 320);
    v40 = *(v0 + 296);
    v41 = *(v0 + 304);

    (*(v41 + 8))(v39, v40);
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v43 = *(v0 + 304);
  v42 = *(v0 + 312);
  v44 = *(v0 + 296);
  v45 = __swift_project_value_buffer(v44, qword_28140BD10);
  swift_beginAccess();
  (*(v43 + 16))(v42, v45, v44);
  v46 = sub_22B36050C();
  v47 = sub_22B360CFC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_22B116000, v46, v47, "Did not find com.apple.Home defaults", v48, 2u);
    MEMORY[0x23188F650](v48, -1, -1);
  }

  v50 = *(v0 + 304);
  v49 = *(v0 + 312);
  v52 = *(v0 + 288);
  v51 = *(v0 + 296);

  (*(v50 + 8))(v49, v51);
  v53 = sub_22B35E33C();
  (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
LABEL_69:

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_22B3528FC(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = *v1;
  v3 = sub_22B35DE9C();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  sub_22B36089C();
  v2[17] = swift_task_alloc();
  v4 = sub_22B35DBAC();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  v2[21] = swift_task_alloc();
  v5 = sub_22B35DC4C();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v6 = sub_22B36052C();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B352B80, v1, 0);
}

uint64_t sub_22B352B80()
{
  v69 = v0;
  v1 = *(*(v0 + 96) + 136);
  v2 = sub_22B36081C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
  }

  v4 = v68;
  *(v0 + 16) = v67;
  *(v0 + 32) = v4;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v5 = *(v0 + 72);
      v6 = *(v0 + 80);
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 240);
      v9 = *(v0 + 200);
      v8 = *(v0 + 208);
      v10 = __swift_project_value_buffer(v9, qword_28140BD10);
      swift_beginAccess();
      v65 = *(v8 + 16);
      v65(v7, v10, v9);
      v11 = sub_22B36050C();
      v12 = sub_22B360D2C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_22B116000, v11, v12, "Skip fetch from server. Use mock data instead", v13, 2u);
        MEMORY[0x23188F650](v13, -1, -1);
      }

      v14 = *(v0 + 240);
      v15 = *(v0 + 200);
      v16 = *(v0 + 208);

      v17 = *(v16 + 8);
      v17(v14, v15);
      v18 = [objc_opt_self() defaultManager];
      v19 = sub_22B36081C();
      LODWORD(v14) = [v18 fileExistsAtPath_];

      v64 = v10;
      if (v14)
      {
        v61 = v18;
        v20 = *(v0 + 184);
        v22 = *(v0 + 152);
        v21 = *(v0 + 160);
        v23 = *(v0 + 144);
        (*(v20 + 56))(*(v0 + 168), 1, 1, *(v0 + 176));
        (*(v22 + 104))(v21, *MEMORY[0x277CC91D8], v23);

        sub_22B35DC3C();
        sub_22B36088C();
        v24 = sub_22B36079C();
        v51 = *(v0 + 128);
        v52 = *(v0 + 88);
        v53 = v24;
        (*(v20 + 8))(*(v0 + 192), *(v0 + 176));
        sub_22B35DE6C();
        sub_22B353D54(v53, v51, v52);
        (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

        goto LABEL_21;
      }

      v65(*(v0 + 224), v10, *(v0 + 200));
      v25 = v18;
      v26 = sub_22B36050C();
      v27 = sub_22B360D1C();
      v62 = v25;

      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 224);
      v30 = *(v0 + 200);
      v60 = v5;
      if (v28)
      {
        v63 = v17;
        v31 = swift_slowAlloc();
        v59 = v29;
        v32 = swift_slowAlloc();
        *&v67 = v32;
        *v31 = 136315138;
        v33 = [v25 currentDirectoryPath];
        v58 = v30;
        v34 = sub_22B36084C();
        v35 = v6;
        v37 = v36;

        v38 = sub_22B1A7B20(v34, v37, &v67);
        v6 = v35;

        *(v31 + 4) = v38;
        _os_log_impl(&dword_22B116000, v26, v27, "%s.", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x23188F650](v32, -1, -1);
        v39 = v31;
        v17 = v63;
        MEMORY[0x23188F650](v39, -1, -1);

        v41 = v58;
        v40 = v59;
      }

      else
      {

        v40 = v29;
        v41 = v30;
      }

      v17(v40, v41);
      v65(*(v0 + 216), v64, *(v0 + 200));

      v42 = sub_22B36050C();
      v43 = sub_22B360D1C();

      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v0 + 216);
      v46 = *(v0 + 200);
      if (v44)
      {
        v66 = *(v0 + 216);
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *&v67 = v48;
        *v47 = 136315138;
        v49 = sub_22B1A7B20(v60, v6, &v67);

        *(v47 + 4) = v49;
        _os_log_impl(&dword_22B116000, v42, v43, "Mock data file %s not found.", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x23188F650](v48, -1, -1);
        MEMORY[0x23188F650](v47, -1, -1);

        v50 = v66;
      }

      else
      {

        v50 = v45;
      }

      v17(v50, v46);
    }
  }

  else
  {
    sub_22B123284(v0 + 16, &unk_27D8BA950, &qword_22B364940);
  }

  v54 = *(v0 + 88);
  v55 = sub_22B35E33C();
  (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
LABEL_21:

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_22B35346C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_22B35E32C();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = sub_22B35DE9C();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B3535CC, v1, 0);
}

uint64_t sub_22B3535CC()
{
  v1 = *(*(v0 + 56) + 136);
  v2 = sub_22B36081C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  *(v0 + 16) = v20;
  *(v0 + 32) = v21;
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  if (*(v0 + 40))
  {
    v7 = swift_dynamicCast();
    v8 = *(v5 + 56);
    v8(v6, v7 ^ 1u, 1, v4);
    if ((*(v5 + 48))(v6, 1, v4) != 1)
    {
      v10 = *(v0 + 112);
      v9 = *(v0 + 120);
      v11 = *(v0 + 104);
      v12 = *(v0 + 80);
      v13 = *(v0 + 88);
      v14 = *(v0 + 64);
      v15 = *(v0 + 72);
      (*(v10 + 32))(v9, *(v0 + 96), v11);
      (*(v15 + 104))(v12, *MEMORY[0x277D17FA8], v14);
      (*(v10 + 16))(v13, v9, v11);
      v8(v13, 0, 1, v11);
      sub_22B35E38C();
      sub_22B35E39C();

      sub_22B123284(v13, &qword_27D8BA340, &qword_22B363FB0);
      (*(v15 + 8))(v12, v14);
      (*(v10 + 8))(v9, v11);
      goto LABEL_9;
    }
  }

  else
  {
    sub_22B123284(v0 + 16, &unk_27D8BA950, &qword_22B364940);
    (*(v5 + 56))(v6, 1, 1, v4);
  }

  v16 = *(v0 + 48);
  sub_22B123284(*(v0 + 96), &qword_27D8BA340, &qword_22B363FB0);
  v17 = sub_22B35E33C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
LABEL_9:

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_22B35390C@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_22B36052C();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B35F5AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22B35E29C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a3, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x277D17F48])
  {
    (*(v9 + 104))(v11, *MEMORY[0x277D073F8], v8);
LABEL_10:
    sub_22B35F5FC();
    return (*(v9 + 8))(v11, v8);
  }

  v18 = a4;
  if (v17 == *MEMORY[0x277D17F40])
  {
    v19 = MEMORY[0x277D073F0];
LABEL_9:
    (*(v9 + 104))(v11, *v19, v8);
    goto LABEL_10;
  }

  if (v17 == *MEMORY[0x277D17F58])
  {
    v19 = MEMORY[0x277D07400];
    goto LABEL_9;
  }

  if (v17 == *MEMORY[0x277D17F50])
  {
    v19 = MEMORY[0x277D073E8];
    goto LABEL_9;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v21 = v29;
  v22 = __swift_project_value_buffer(v29, qword_28140BD10);
  swift_beginAccess();
  v23 = v28;
  (*(v28 + 16))(v30, v22, v21);
  v24 = sub_22B36050C();
  v25 = sub_22B360D1C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_22B116000, v24, v25, "Unable to determine correct interval for mock data", v26, 2u);
    MEMORY[0x23188F650](v26, -1, -1);
  }

  (*(v23 + 8))(v30, v21);
  v27 = sub_22B35DE9C();
  (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_22B353D54@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a3;
  v138 = a1;
  v116 = a4;
  v4 = sub_22B36052C();
  v136 = *(v4 - 1);
  v137 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v121 = &v100 - v8;
  v103 = sub_22B35E21C();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v117 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_22B35E20C();
  v113 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v115 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_22B35E32C();
  v112 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v114 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB138, &qword_22B367F48);
  MEMORY[0x28223BE20](v12 - 8);
  v107 = &v100 - v13;
  v110 = sub_22B35E29C();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v15 - 8);
  v123 = &v100 - v16;
  v124 = sub_22B35DE9C();
  v131 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v130 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v106 = &v100 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  MEMORY[0x28223BE20](v20 - 8);
  v119 = &v100 - v21;
  v22 = sub_22B35E0BC();
  v128 = *(v22 - 8);
  v129 = v22;
  MEMORY[0x28223BE20](v22);
  v105 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v122 = &v100 - v25;
  v26 = sub_22B35DF9C();
  v118 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_22B35E04C();
  v134 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v120 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v104 = &v100 - v31;
  MEMORY[0x28223BE20](v32);
  v133 = &v100 - v33;
  v34 = sub_22B35E2CC();
  v127 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v36 = &v100 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22B36089C();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v100 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B36088C();
  v41 = sub_22B36085C();
  v42 = v40;
  v44 = v43;
  (*(v38 + 8))(v42, v37);
  if (v44 >> 60 == 15)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v45 = v137;
    v46 = __swift_project_value_buffer(v137, qword_28140BD10);
    swift_beginAccess();
    v47 = v136;
    (*(v136 + 16))(v6, v46, v45);
    v48 = sub_22B36050C();
    v49 = sub_22B360D1C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_22B116000, v48, v49, "Failed to extract data from JSON", v50, 2u);
      MEMORY[0x23188F650](v50, -1, -1);
    }

    (*(v47 + 8))(v6, v45);
    sub_22B134CDC();
    swift_allocError();
    *v51 = 18;
    return swift_willThrow();
  }

  else
  {
    sub_22B35D7FC();
    swift_allocObject();
    sub_22B35D7EC();
    sub_22B354F10(&qword_27D8BB140, MEMORY[0x277D17F60], MEMORY[0x277D17F68]);
    v53 = v135;
    sub_22B35D7DC();
    if (v53)
    {
      sub_22B11EDC0(v41, v44);
    }

    else
    {
      v54 = v36;
      v100 = v41;
      v135 = v44;
      v138 = v34;

      v55 = v118;
      (*(v118 + 104))(v28, *MEMORY[0x277CC9830], v26);
      v56 = v133;
      sub_22B35DFAC();
      (*(v55 + 8))(v28, v26);
      sub_22B35E27C();
      v57 = v119;
      sub_22B35E05C();

      v59 = v128;
      v58 = v129;
      v60 = (*(v128 + 48))(v57, 1, v129);
      v101 = v54;
      if (v60 == 1)
      {
        sub_22B123284(v57, &unk_27D8BA080, &unk_22B364280);
        v61 = v134;
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v62 = v137;
        v63 = __swift_project_value_buffer(v137, qword_28140BD10);
        swift_beginAccess();
        v64 = v136;
        (*(v136 + 16))(v121, v63, v62);
        v65 = sub_22B36050C();
        v66 = sub_22B360D1C();
        v67 = os_log_type_enabled(v65, v66);
        v68 = v132;
        v69 = v100;
        if (v67)
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_22B116000, v65, v66, "Failed to extract timezone from JSON", v70, 2u);
          MEMORY[0x23188F650](v70, -1, -1);
        }

        (*(v64 + 8))(v121, v62);
        sub_22B134CDC();
        swift_allocError();
        *v71 = 18;
        swift_willThrow();
        sub_22B11EDC0(v69, v135);
        (*(v61 + 8))(v56, v68);
        return (*(v127 + 8))(v101, v138);
      }

      else
      {
        v72 = v122;
        (*(v59 + 32))(v122, v57, v58);
        (*(v59 + 16))(v105, v72, v58);
        sub_22B35E01C();
        sub_22B35E2AC();
        v73 = v56;
        v74 = v134;
        v121 = *(v134 + 16);
        v75 = v104;
        v76 = v132;
        (v121)(v104, v73, v132);
        sub_22B35E2BC();
        v77 = v106;
        sub_22B35DE6C();
        v136 = sub_22B35E2EC();

        v78 = *(v131 + 8);
        v131 += 8;
        v137 = v78;
        v78(v77, v124);
        v79 = v133;
        v80 = v76;
        v81 = *(v74 + 8);
        v134 = v74 + 8;
        v81(v75, v80);
        sub_22B35F52C();
        (v121)(v120, v79, v80);
        v82 = v107;
        sub_22B35E28C();
        v83 = v109;
        v84 = *(v109 + 48);
        v85 = v110;
        v86 = v81;
        if (v84(v82, 1, v110) == 1)
        {
          v87 = v108;
          (*(v83 + 104))(v108, *MEMORY[0x277D17F40], v85);
          v88 = v84(v82, 1, v85);
          v89 = v83;
          v90 = v114;
          if (v88 != 1)
          {
            sub_22B123284(v82, &qword_27D8BB138, &qword_22B367F48);
          }
        }

        else
        {
          v87 = v108;
          (*(v83 + 32))(v108, v82, v85);
          v89 = v83;
          v90 = v114;
        }

        type metadata accessor for HomeEnergyForecastCache();
        v91 = v120;
        sub_22B35390C(v87, v123);
        (*(v89 + 8))(v87, v85);
        v92 = v91;
        v93 = v132;
        v121 = v86;
        (v86)(v92, v132);
        v94 = v112 + 104;
        (*(v112 + 104))(v90, *MEMORY[0x277D17FA8], v125);
        sub_22B35E2BC();
        v95 = v113 + 104;
        v96 = v90;
        v97 = v115;
        (*(v113 + 104))(v115, *MEMORY[0x277D17EE8], v126);
        v98 = v123;
        sub_22B35E11C();

        sub_22B11EDC0(v100, v135);
        (*(v95 - 96))(v97, v126);
        (*(v94 - 96))(v96, v125);
        sub_22B123284(v98, &qword_27D8BA340, &qword_22B363FB0);
        v137(v130, v124);
        (*(v128 + 8))(v122, v129);
        (v121)(v133, v93);
        (*(v127 + 8))(v101, v138);
        v99 = sub_22B35E33C();
        return (*(*(v99 - 8) + 56))(v116, 0, 1, v99);
      }
    }
  }
}

uint64_t sub_22B354F10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B354F58()
{
  v0 = sub_22B35F6FC();
  __swift_allocate_value_buffer(v0, qword_27D8BB230);
  __swift_project_value_buffer(v0, qword_27D8BB230);
  sub_22B354FE8();
  return sub_22B3614EC();
}

unint64_t sub_22B354FE8()
{
  result = qword_27D8BA898;
  if (!qword_27D8BA898)
  {
    sub_22B35F6FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA898);
  }

  return result;
}

void sub_22B35506C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_22B36109C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    v6 = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_22B36109C();
  v5 = __OFADD__(v13, v3);
  v6 = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_22B356064(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_22B356104(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_22B3551B4(unint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_22B36109C();
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

  v17 = sub_22B36109C();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_22B356064(result, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_22B24FEE0(&v34, (v3 + 8 * v13 + 32), v14, v8);
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
    result = sub_22B1A20B8(v34);
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
    if (!sub_22B36125C())
    {
      goto LABEL_11;
    }

    sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= (v37 + 1))
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
    result = sub_22B360A7C();
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

      if (sub_22B36125C())
      {
        sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
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

  if (v24 <= (v8 + 1))
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

void sub_22B35553C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

char *sub_22B355680(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B3558B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22B3556A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B355E88(a1, a2, a3, *v3, &qword_27D8BAF78, &qword_22B367610, type metadata accessor for CDEnergyGuidanceTracker);
  *v3 = result;
  return result;
}

char *sub_22B3556E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B3559C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22B355704(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B355B6C(a1, a2, a3, *v3, &qword_27D8BB168, &qword_22B367FF8, &qword_27D8BA358, qword_22B368000);
  *v3 = result;
  return result;
}

void *sub_22B355744(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B355E88(a1, a2, a3, *v3, &qword_27D8BAFA8, &qword_22B367FE0, MEMORY[0x277D17FC8]);
  *v3 = result;
  return result;
}

void *sub_22B355788(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B355E88(a1, a2, a3, *v3, &qword_27D8BA738, &unk_22B3659D0, type metadata accessor for CDTOUPeak);
  *v3 = result;
  return result;
}

void *sub_22B3557CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B355E88(a1, a2, a3, *v3, &qword_27D8BAFB8, &qword_22B367658, MEMORY[0x277D17F18]);
  *v3 = result;
  return result;
}

void *sub_22B355810(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B355E88(a1, a2, a3, *v3, &qword_27D8BA250, &unk_22B367FC0, MEMORY[0x277D17568]);
  *v3 = result;
  return result;
}

void *sub_22B355854(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B355D54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22B355874(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B355E88(a1, a2, a3, *v3, &qword_27D8BAF50, &qword_22B3675D0, _s17PreparedBlockDataVMa);
  *v3 = result;
  return result;
}

char *sub_22B3558B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
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

char *sub_22B3559C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF40, &unk_22B3675B8);
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

void *sub_22B355B6C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_22B355D54(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB160, &qword_22B367FE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5E0, &unk_22B365590);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B355E88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_22B356064(uint64_t a1, char a2)
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

  sub_22B36109C();
LABEL_9:
  result = sub_22B3611AC();
  *v2 = result;
  return result;
}

uint64_t sub_22B356104(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22B36109C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22B36109C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22B357624();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA858, &qword_22B365EF8);
            v9 = sub_22B338A54(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22B128014(0, &qword_281408590, 0x277CBE448);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_22B356294(uint64_t a1, uint64_t a2)
{
  sub_22B35F67C();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v5 = sub_22B35DEDC();
  [v4 setHomeIdentifier_];

  v6 = _s17PreparedBlockDataVMa(0);
  v7 = sub_22B35DEDC();
  [v4 setSiteIdentifier_];

  v8 = sub_22B36081C();
  [v4 setSourceIdentifier_];

  v9 = sub_22B36081C();
  [v4 setDeviceIdentifier_];

  v10 = sub_22B35DEDC();
  [v4 setSessionIdentifier_];

  v11 = sub_22B36081C();
  [v4 setLoadType_];

  [v4 setBlockIndex_];
  [v4 setIsConsumptionBlock_];
  v12 = sub_22B35DDDC();
  [v4 setSessionStart_];

  v13 = sub_22B35DDDC();
  [v4 setSessionEnd_];

  v14 = sub_22B35DDDC();
  [v4 setBlockStart_];

  v15 = sub_22B35DDDC();
  [v4 setBlockEnd_];

  v16 = sub_22B35DCCC();
  [v4 setBlockData_];

  [v4 setVersion_];
  return v4;
}

void sub_22B3564FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v137 = a2;
  v154 = sub_22B35DE9C();
  v5 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v153 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_22B35E85C();
  v7 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v158 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_22B35E81C();
  v9 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v156 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB148, &unk_22B367FB0);
  MEMORY[0x28223BE20](v162);
  v12 = (&v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v136 = &v130 - v14;
  MEMORY[0x28223BE20](v15);
  v150 = (&v130 - v16);
  MEMORY[0x28223BE20](v17);
  v148 = &v130 - v18;
  v155 = _s17PreparedBlockDataVMa(0);
  v160 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v131 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v135 = &v130 - v21;
  MEMORY[0x28223BE20](v22);
  v147 = (&v130 - v23);
  v24 = MEMORY[0x277D84F90];
  v175 = MEMORY[0x277D84F90];
  v25 = sub_22B35E5BC();
  v26 = *(v25 + 16);
  v161 = a1;
  v152 = v12;
  v134 = v5;
  v133 = v7;
  v132 = v9;
  if (v26)
  {
    v174 = v24;
    v149 = v25;
    v151 = v26;
    sub_22B355874(0, v26, 0);
    v27 = v149;
    v172 = v174;
    v28 = *(v149 + 16);
    v29 = 0;
    v145 = sub_22B35E66C();
    v30 = *(v145 - 8);
    v143 = (v27 + ((*(v30 + 80) + 32) & ~*(v30 + 80)));
    v142 = (v30 + 16);
    v144 = v30;
    v141 = (v30 + 32);
    v140 = (v9 + 8);
    v139 = (v7 + 8);
    v138 = (v5 + 8);
    if (v28 >= v151)
    {
      v31 = v151;
    }

    else
    {
      v31 = v28;
    }

    v146 = v31;
    v32 = v150;
    while (v146 != v29)
    {
      if (v29 >= *(v27 + 16))
      {
        goto LABEL_37;
      }

      v33 = v162;
      v34 = *(v162 + 48);
      v35 = v144;
      v36 = v148;
      v37 = v145;
      (*(v144 + 2))(&v148[v34], &v143[*(v144 + 9) * v29], v145);
      *v32 = v29;
      (*(v35 + 4))(v32 + *(v33 + 48), &v36[v34], v37);
      sub_22B35DB0C();
      swift_allocObject();
      v38 = sub_22B35DAFC();
      sub_22B35DADC();
      sub_22B357440();
      v39 = sub_22B35DAEC();
      if (v3)
      {

        sub_22B357498(v32);

        return;
      }

      v41 = v39;
      v170 = v38;
      v171 = v40;
      v173 = 0;
      v42 = v155;
      v43 = v156;
      sub_22B35E60C();
      v165 = sub_22B35E42C();
      v44 = *v140;
      v45 = v157;
      (*v140)(v43, v157);
      sub_22B35E65C();
      sub_22B35E42C();
      v44(v43, v45);
      v46 = v147;
      sub_22B35E56C();
      sub_22B35E57C();
      v47 = sub_22B35E5AC();
      v169 = v48;
      v49 = sub_22B35E58C();
      v167 = v50;
      v168 = v49;
      sub_22B35E5CC();
      v51 = v158;
      sub_22B35E68C();
      v52 = sub_22B35E84C();
      v166 = v53;
      (*v139)(v51, v159);
      if (v29 == 0x80000000)
      {
        goto LABEL_38;
      }

      v164 = v52;
      v54 = sub_22B35E69C();
      MEMORY[0x23188BFA0](v54);
      v55 = v153;
      sub_22B35E69C();
      sub_22B35DDCC();
      v163 = v41;
      v56 = *v138;
      v165 = v29;
      v57 = v47;
      v58 = v154;
      v59 = v56(v55, v154);
      MEMORY[0x23188BFA0](v59);
      sub_22B35DDCC();

      v56(v55, v58);
      v60 = (v46 + v42[6]);
      *v60 = v57;
      v61 = v168;
      v60[1] = v169;
      v62 = (v46 + v42[7]);
      v63 = v167;
      *v62 = v61;
      v62[1] = v63;
      v64 = (v46 + v42[9]);
      v65 = v165;
      v66 = v166;
      *v64 = v164;
      v64[1] = v66;
      *(v46 + v42[10]) = v65;
      *(v46 + v42[11]) = 1;
      v67 = (v46 + v42[16]);
      v68 = v171;
      *v67 = v163;
      v67[1] = v68;
      v32 = v150;
      sub_22B357498(v150);
      v69 = v172;
      v174 = v172;
      v71 = *(v172 + 16);
      v70 = *(v172 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_22B355874((v70 > 1), v71 + 1, 1);
        v69 = v174;
      }

      v29 = v65 + 1;
      *(v69 + 16) = v71 + 1;
      v72 = (*(v160 + 80) + 32) & ~*(v160 + 80);
      v172 = v69;
      sub_22B357500(v46, v69 + v72 + *(v160 + 72) * v71);
      v3 = v173;
      v12 = v152;
      v27 = v149;
      if (v151 == v29)
      {

        v73 = v172;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v73 = MEMORY[0x277D84F90];
LABEL_16:
  sub_22B35553C(v73, sub_22B32DA78, _s17PreparedBlockDataVMa);
  v74 = sub_22B35E59C();
  v75 = *(v74 + 16);
  v76 = v137;
  v77 = v134;
  v78 = v133;
  v79 = v132;
  if (v75)
  {
    v174 = MEMORY[0x277D84F90];
    v150 = v74;
    v151 = v75;
    sub_22B355874(0, v75, 0);
    v80 = v150;
    v172 = v174;
    v81 = v150[2];
    v82 = 0;
    v148 = sub_22B35E66C();
    v83 = *(v148 - 1);
    v146 = v80 + ((v83[80] + 32) & ~v83[80]);
    v145 = (v83 + 16);
    v147 = v83;
    v144 = v83 + 32;
    v143 = (v79 + 8);
    v142 = (v78 + 8);
    v141 = (v77 + 8);
    if (v81 >= v151)
    {
      v84 = v151;
    }

    else
    {
      v84 = v81;
    }

    v149 = v84;
    while (v149 != v82)
    {
      if (v82 >= *(v80 + 16))
      {
        goto LABEL_40;
      }

      v85 = v162;
      v86 = *(v162 + 48);
      v87 = v147;
      v88 = v136;
      v89 = v148;
      v147[2](&v136[v86], (v146 + v147[9] * v82), v148);
      *v12 = v82;
      v87[4](v12 + *(v85 + 48), &v88[v86], v89);
      sub_22B35DB0C();
      swift_allocObject();
      v90 = sub_22B35DAFC();
      sub_22B35DADC();
      sub_22B357440();
      v91 = sub_22B35DAEC();
      if (v3)
      {

        sub_22B357498(v12);

        return;
      }

      v169 = v90;
      v170 = v92;
      v171 = v91;
      v173 = 0;
      v93 = v155;
      v94 = v156;
      sub_22B35E60C();
      v164 = sub_22B35E42C();
      v95 = *v143;
      v96 = v157;
      (*v143)(v94, v157);
      sub_22B35E65C();
      sub_22B35E42C();
      v95(v94, v96);
      v97 = v135;
      sub_22B35E56C();
      sub_22B35E57C();
      v98 = sub_22B35E5AC();
      v168 = v99;
      v100 = sub_22B35E58C();
      v166 = v101;
      v167 = v100;
      sub_22B35E5CC();
      v102 = v158;
      sub_22B35E68C();
      v103 = sub_22B35E84C();
      v165 = v104;
      (*v142)(v102, v159);
      if (v82 == 0x80000000)
      {
        goto LABEL_41;
      }

      v164 = v103;
      v105 = sub_22B35E69C();
      MEMORY[0x23188BFA0](v105);
      v106 = v153;
      sub_22B35E69C();
      sub_22B35DDCC();
      v107 = *v141;
      v163 = v98;
      v108 = v154;
      v109 = v107(v106, v154);
      MEMORY[0x23188BFA0](v109);
      sub_22B35DDCC();

      v107(v106, v108);
      v110 = (v97 + v93[6]);
      v111 = v167;
      v112 = v168;
      *v110 = v163;
      v110[1] = v112;
      v113 = (v97 + v93[7]);
      *v113 = v111;
      v113[1] = v166;
      v114 = (v97 + v93[9]);
      v115 = v165;
      *v114 = v164;
      v114[1] = v115;
      *(v97 + v93[10]) = v82;
      *(v97 + v93[11]) = 0;
      v116 = (v97 + v93[16]);
      v117 = v170;
      *v116 = v171;
      v116[1] = v117;
      v12 = v152;
      sub_22B357498(v152);
      v118 = v172;
      v174 = v172;
      v120 = *(v172 + 16);
      v119 = *(v172 + 24);
      if (v120 >= v119 >> 1)
      {
        sub_22B355874((v119 > 1), v120 + 1, 1);
        v118 = v174;
      }

      ++v82;
      *(v118 + 16) = v120 + 1;
      v121 = (*(v160 + 80) + 32) & ~*(v160 + 80);
      v172 = v118;
      sub_22B357500(v97, v118 + v121 + *(v160 + 72) * v120);
      v3 = v173;
      v76 = v137;
      v80 = v150;
      if (v151 == v82)
      {

        v122 = MEMORY[0x277D84F90];
        v123 = v172;
        goto LABEL_31;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  v123 = MEMORY[0x277D84F90];
  v122 = MEMORY[0x277D84F90];
LABEL_31:
  sub_22B35553C(v123, sub_22B32DA78, _s17PreparedBlockDataVMa);
  v124 = v175;
  v125 = *(v175 + 16);
  if (v125)
  {
    v174 = v122;
    sub_22B3611FC();
    v126 = *(v160 + 80);
    v173 = v124;
    v127 = v124 + ((v126 + 32) & ~v126);
    v128 = *(v160 + 72);
    v129 = v131;
    do
    {
      sub_22B357564(v127, v129);
      sub_22B356294(v129, v76);
      sub_22B3575C8(v129);
      sub_22B3611DC();
      sub_22B36120C();
      sub_22B36121C();
      sub_22B3611EC();
      v127 += v128;
      --v125;
    }

    while (v125);
  }
}

uint64_t _s17PreparedBlockDataVMa(uint64_t a1)
{
  result = qword_27D8BB170;
  if (!qword_27D8BB170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22B357440()
{
  result = qword_27D8BB150;
  if (!qword_27D8BB150)
  {
    sub_22B35E66C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BB150);
  }

  return result;
}

uint64_t sub_22B357498(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB148, &unk_22B367FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B357500(uint64_t a1, uint64_t a2)
{
  v4 = _s17PreparedBlockDataVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B357564(uint64_t a1, uint64_t a2)
{
  v4 = _s17PreparedBlockDataVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B3575C8(uint64_t a1)
{
  v2 = _s17PreparedBlockDataVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22B357624()
{
  result = qword_27D8BB158;
  if (!qword_27D8BB158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BA858, &qword_22B365EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BB158);
  }

  return result;
}

uint64_t sub_22B3576B0(uint64_t a1)
{
  result = sub_22B35DF1C();
  if (v2 <= 0x3F)
  {
    result = sub_22B35DE9C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B357770(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
  }

  else
  {
    v4 = objc_opt_self();
    v5 = sub_22B360A3C();
    v6 = sub_22B360A3C();
    v7 = [v4 preferredLocalizationsFromArray:v5 forPreferences:v6];

    v8 = sub_22B360A5C();
    if (*(v8 + 16))
    {
    }
  }

  return sub_22B35DF2C();
}

unint64_t sub_22B357898(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v18 = a3;
  v19 = a1;
  v7 = sub_22B35DF8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0xD000000000000011;
  v25 = 0x800000022B36F2A0;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_22B36116C();

  v22 = 0xD00000000000001BLL;
  v23 = 0x800000022B36F2C0;
  v11 = MEMORY[0x277D837D0];
  v12 = MEMORY[0x23188E390](a1, MEMORY[0x277D837D0]);
  MEMORY[0x23188E270](v12);

  MEMORY[0x23188E270](v22, v23);

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_22B36116C();

  v22 = 0xD000000000000013;
  v23 = 0x800000022B36F2E0;
  v13 = MEMORY[0x23188E390](a2, v11);
  MEMORY[0x23188E270](v13);

  MEMORY[0x23188E270](v22, v23);

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_22B36116C();

  v22 = 0xD000000000000017;
  v23 = 0x800000022B36F300;
  v14 = v18;
  v20 = v18;
  v21 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA218, &qword_22B363548);
  v15 = sub_22B3608BC();
  MEMORY[0x23188E270](v15);

  MEMORY[0x23188E270](v22, v23);

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_22B36116C();

  v22 = 0xD000000000000014;
  v23 = 0x800000022B36F320;
  sub_22B357770(v19, a2, v14, a4);
  sub_22B357E94();
  v16 = sub_22B36131C();
  MEMORY[0x23188E270](v16);

  (*(v8 + 8))(v10, v7);
  MEMORY[0x23188E270](v22, v23);

  MEMORY[0x23188E270](10506, 0xE200000000000000);
  return v24;
}

uint64_t sub_22B357B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  MEMORY[0x23188EDD0](v8);
  if (v8)
  {
    v9 = a2 + 40;
    do
    {

      sub_22B3608FC();

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  v10 = *(a3 + 16);
  MEMORY[0x23188EDD0](v10);
  if (v10)
  {
    v11 = a3 + 40;
    do
    {

      sub_22B3608FC();

      v11 += 16;
      --v10;
    }

    while (v10);
  }

  if (!a5)
  {
    return sub_22B3614BC();
  }

  sub_22B3614BC();

  return sub_22B3608FC();
}

uint64_t sub_22B357CA8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if (sub_22B357FDC(*a1, *a2) & 1) != 0 && (sub_22B357FDC(v2, v5))
  {
    if (v4)
    {
      if (v6 && (v3 == v7 && v4 == v6 || (sub_22B36134C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_22B357D48()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22B36149C();
  sub_22B357B90(v6, v1, v2, v4, v3);
  return sub_22B3614DC();
}

uint64_t sub_22B357DB4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_22B36149C();
  sub_22B357B90(v7, v2, v3, v5, v4);
  return sub_22B3614DC();
}

void sub_22B357E10()
{
  v0 = sub_22B36081C();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_27D8BB248 = v1;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22B357E94()
{
  result = qword_27D8BB180;
  if (!qword_27D8BB180)
  {
    sub_22B35DF8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BB180);
  }

  return result;
}

uint64_t sub_22B357EEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22B357F34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22B357F88()
{
  result = qword_27D8BB188;
  if (!qword_27D8BB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BB188);
  }

  return result;
}

uint64_t sub_22B357FDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22B36134C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_22B35806C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(type metadata accessor for CDEnergyGuidanceTracker(0) - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B35812C, v3, 0);
}

uint64_t sub_22B35812C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_22B3634B0;
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
    *(v0 + 80) = v3;
    *(v0 + 88) = xmmword_22B368150;
    *(v0 + 104) = v1;
    swift_bridgeObjectRetain_n();

    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_22B35856C;
    v5 = *(v0 + 32);

    return sub_22B1CD648(v2, v1, v5);
  }

  else
  {
    if (qword_28140B068 != -1)
    {
      swift_once();
    }

    v7 = qword_28140BDC0;
    *(v0 + 64) = qword_28140BDC0;

    return MEMORY[0x2822009F8](sub_22B3582B8, v7, 0);
  }
}

uint64_t sub_22B3582B8()
{
  v1 = *(v0 + 40);
  *(v0 + 72) = sub_22B211B68();

  return MEMORY[0x2822009F8](sub_22B358328, v1, 0);
}

uint64_t sub_22B358328()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v4 = v0[7];
    v23 = MEMORY[0x277D84F90];
    sub_22B355680(0, v2, 0);
    v5 = v23;
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v7 = *(v3 + 72);
    do
    {
      v8 = v0[7];
      sub_22B12B168(v6, v8);
      v9 = *v8;
      v10 = *(v4 + 8);

      sub_22B12B1CC(v8);
      v12 = v23[2];
      v11 = v23[3];
      if (v12 >= v11 >> 1)
      {
        sub_22B355680((v11 > 1), v12 + 1, 1);
      }

      v23[2] = v12 + 1;
      v13 = &v23[2 * v12];
      v13[4] = v9;
      v13[5] = v10;
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v0[10] = v5;
  v14 = v5[2];
  v0[11] = v14;
  if (v14)
  {
    v0[12] = 0;
    v15 = v5[4];
    v16 = v5[5];
    v0[13] = v16;

    v17 = swift_task_alloc();
    v0[14] = v17;
    *v17 = v0;
    v17[1] = sub_22B35856C;
    v18 = v0[4];

    return sub_22B1CD648(v15, v16, v18);
  }

  else
  {
    v20 = swift_task_alloc();
    v0[15] = v20;
    *v20 = v0;
    v20[1] = sub_22B3587E4;
    v21 = v0[10];
    v22 = v0[4];

    return sub_22B35B648(v21, v22);
  }
}

uint64_t sub_22B35856C()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22B358698, v1, 0);
}

uint64_t sub_22B358698()
{
  v1 = v0[12] + 1;
  if (v1 == v0[11])
  {

    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_22B3587E4;
    v3 = v0[10];
    v4 = v0[4];

    return sub_22B35B648(v3, v4);
  }

  else
  {
    v0[12] = v1;
    v6 = v0[10] + 16 * v1;
    v8 = *(v6 + 32);
    v7 = *(v6 + 40);
    v0[13] = v7;

    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_22B35856C;
    v10 = v0[4];

    return sub_22B1CD648(v8, v7, v10);
  }
}

uint64_t sub_22B3587E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B358910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 160) = a4;
  *(v6 + 168) = v5;
  *(v6 + 464) = a5;
  *(v6 + 144) = a2;
  *(v6 + 152) = a3;
  *(v6 + 136) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA740, &unk_22B3659E0);
  *(v6 + 176) = swift_task_alloc();
  v7 = sub_22B35E37C();
  *(v6 + 184) = v7;
  *(v6 + 192) = *(v7 - 8);
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  v8 = sub_22B36052C();
  *(v6 + 224) = v8;
  *(v6 + 232) = *(v8 - 8);
  *(v6 + 240) = swift_task_alloc();
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  v9 = sub_22B35E04C();
  *(v6 + 264) = v9;
  *(v6 + 272) = *(v9 - 8);
  *(v6 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  *(v6 + 288) = swift_task_alloc();
  v10 = sub_22B35E0BC();
  *(v6 + 296) = v10;
  *(v6 + 304) = *(v10 - 8);
  *(v6 + 312) = swift_task_alloc();
  v11 = sub_22B35DE9C();
  *(v6 + 320) = v11;
  *(v6 + 328) = *(v11 - 8);
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  v12 = sub_22B35E02C();
  *(v6 + 360) = v12;
  *(v6 + 368) = *(v12 - 8);
  *(v6 + 376) = swift_task_alloc();
  v13 = sub_22B35D8BC();
  *(v6 + 384) = v13;
  *(v6 + 392) = *(v13 - 8);
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B358CE0, v5, 0);
}

uint64_t sub_22B358CE0()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  (*(v2 + 16))(v1, v0[20], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277CC9998])
  {
    v5 = v0[34];
    v6 = v0[35];
    v7 = v0[33];
    v8 = v0[21];
    v9 = OBJC_IVAR____TtC16HomeEnergyDaemon29HistoricalGuidanceDataManager_calendar;
    swift_beginAccess();
    v10 = *(v5 + 16);
    v10(v6, v8 + v9, v7);
    sub_22B35F57C();
    v11 = *(v5 + 8);
    v11(v6, v7);
    v10(v6, v8 + v9, v7);
    sub_22B35F4FC();
    v11(v6, v7);
    goto LABEL_6;
  }

  if (v4 == *MEMORY[0x277CC9968])
  {
    v12 = v0[37];
    v13 = v0[38];
    v14 = v0[36];
    sub_22B35E08C();
    v15 = (*(v13 + 48))(v14, 1, v12);
    if (v15 == 1)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v15, v16, v17);
    }

    v18 = v0[38];
    v19 = v0[39];
    v20 = v0[37];
    v22 = v0[34];
    v21 = v0[35];
    v23 = v0[33];
    v24 = v0[21];
    (*(v18 + 32))(v19, v0[36], v20);
    sub_22B35F50C();
    (*(v18 + 8))(v19, v20);
    v25 = OBJC_IVAR____TtC16HomeEnergyDaemon29HistoricalGuidanceDataManager_calendar;
    swift_beginAccess();
    (*(v22 + 16))(v21, v24 + v25, v23);
    sub_22B35F64C();
    (*(v22 + 8))(v21, v23);
LABEL_6:
    sub_22B35D88C();
    if (qword_281408750 != -1)
    {
      swift_once();
    }

    v16 = qword_28140BC30;
    v0[54] = qword_28140BC30;
    v15 = sub_22B359224;
    v17 = 0;

    return MEMORY[0x2822009F8](v15, v16, v17);
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v26 = v0[32];
  v27 = v0[28];
  v28 = v0[29];
  v29 = __swift_project_value_buffer(v27, qword_28140BD10);
  swift_beginAccess();
  (*(v28 + 16))(v26, v29, v27);
  v30 = sub_22B36050C();
  v31 = sub_22B360D1C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_22B116000, v30, v31, "Invalid queryInterval passed in", v32, 2u);
    MEMORY[0x23188F650](v32, -1, -1);
  }

  v34 = v0[46];
  v33 = v0[47];
  v35 = v0[45];
  v36 = v0[32];
  v37 = v0[28];
  v38 = v0[29];

  (*(v38 + 8))(v36, v37);
  (*(v34 + 8))(v33, v35);

  v39 = v0[1];

  return v39(0);
}

uint64_t sub_22B359224()
{
  v1 = *(v0 + 168);
  *(v0 + 465) = sub_22B31FD94(*(v0 + 136), *(v0 + 144), *(v0 + 424)) & 1;

  return MEMORY[0x2822009F8](sub_22B35929C, v1, 0);
}

uint64_t sub_22B35929C()
{
  if (*(v0 + 465) == 1)
  {
    (*(*(v0 + 392) + 8))(*(v0 + 424), *(v0 + 384));

    v1 = *(v0 + 8);

    return v1(1);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 440) = v3;
    *v3 = v0;
    v3[1] = sub_22B35948C;
    v5 = *(v0 + 424);
    v6 = *(v0 + 176);
    v7 = *(v0 + 136);
    v8 = *(v0 + 144);

    return sub_22B35A798(v6, v7, v8, v5, v4);
  }
}

uint64_t sub_22B35948C()
{
  v1 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_22B35959C, v1, 0);
}

uint64_t sub_22B35959C()
{
  v129 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_22B123284(v3, &qword_27D8BA740, &unk_22B3659E0);
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 424);
    v5 = *(v0 + 408);
    v126 = *(v0 + 400);
    v6 = *(v0 + 384);
    v7 = *(v0 + 392);
    v8 = *(v0 + 232);
    v9 = *(v0 + 240);
    v10 = *(v0 + 224);
    v11 = __swift_project_value_buffer(v10, qword_28140BD10);
    swift_beginAccess();
    (*(v8 + 16))(v9, v11, v10);
    v12 = *(v7 + 16);
    v12(v5, v4, v6);
    v12(v126, v4, v6);

    v13 = sub_22B36050C();
    v14 = sub_22B360D2C();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 424);
    v18 = *(v0 + 400);
    v17 = *(v0 + 408);
    v19 = *(v0 + 384);
    v20 = *(v0 + 392);
    if (v15)
    {
      v127 = *(v0 + 424);
      v21 = *(v0 + 344);
      v100 = *(v0 + 408);
      v23 = *(v0 + 320);
      v22 = *(v0 + 328);
      v117 = *(v0 + 232);
      v121 = *(v0 + 224);
      v124 = *(v0 + 240);
      v115 = v14;
      v108 = *(v0 + 384);
      v25 = *(v0 + 136);
      v24 = *(v0 + 144);
      v110 = *(v0 + 400);
      v26 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v128 = v112;
      *v26 = 136381187;
      *(v26 + 4) = sub_22B1A7B20(v25, v24, &v128);
      *(v26 + 12) = 2080;
      sub_22B35D89C();
      sub_22B35D784(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v27 = sub_22B36131C();
      log = v13;
      v29 = v28;
      v103 = *(v22 + 8);
      v103(v21, v23);
      v30 = *(v20 + 8);
      v30(v100, v108);
      v31 = sub_22B1A7B20(v27, v29, &v128);

      *(v26 + 14) = v31;
      *(v26 + 22) = 2080;
      sub_22B35D86C();
      v32 = sub_22B36131C();
      v34 = v33;
      v103(v21, v23);
      v30(v110, v108);
      v35 = sub_22B1A7B20(v32, v34, &v128);

      *(v26 + 24) = v35;
      _os_log_impl(&dword_22B116000, log, v115, "No guidance for %{private}s interval start: %s end: %s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v112, -1, -1);
      MEMORY[0x23188F650](v26, -1, -1);

      (*(v117 + 8))(v124, v121);
      v30(v127, v108);
    }

    else
    {
      v47 = *(v0 + 232);
      v46 = *(v0 + 240);
      v48 = *(v0 + 224);

      v49 = *(v20 + 8);
      v49(v18, v19);
      v49(v17, v19);
      (*(v47 + 8))(v46, v48);
      v49(v16, v19);
    }

LABEL_21:

    v95 = *(v0 + 8);

    return v95(0);
  }

  v36 = *(v0 + 416);
  v37 = *(v0 + 392);
  v118 = *(v0 + 384);
  v38 = *(v0 + 344);
  v122 = *(v0 + 336);
  v40 = *(v0 + 320);
  v39 = *(v0 + 328);
  v41 = (*(v2 + 32))(*(v0 + 216), v3, v1);
  MEMORY[0x23188BC90](v41);
  sub_22B35D89C();
  v42 = *(v37 + 8);
  *(v0 + 448) = v42;
  *(v0 + 456) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42(v36, v118);
  sub_22B35D89C();
  sub_22B35D784(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v43 = sub_22B36074C();
  v44 = *(v39 + 8);
  v44(v122, v40);
  v45 = (v44)(v38, v40);
  v119 = v44;
  if ((v43 & 1) == 0)
  {
    v50 = *(v0 + 416);
    v51 = *(v0 + 384);
    v53 = *(v0 + 336);
    v52 = *(v0 + 344);
    v54 = *(v0 + 320);
    v113 = *(v0 + 464);
    MEMORY[0x23188BC90](v45);
    sub_22B35D86C();
    v42(v50, v51);
    sub_22B35D86C();
    v55 = sub_22B36074C();
    v119(v53, v54);
    v119(v52, v54);
    if (v55 & 1) == 0 || (v113)
    {
      goto LABEL_16;
    }

LABEL_12:
    v116 = v42;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v56 = *(v0 + 248);
    v57 = *(v0 + 224);
    v58 = *(v0 + 232);
    v60 = *(v0 + 208);
    v59 = *(v0 + 216);
    v62 = *(v0 + 192);
    v61 = *(v0 + 200);
    v63 = *(v0 + 184);
    v64 = __swift_project_value_buffer(v57, qword_28140BD10);
    swift_beginAccess();
    (*(v58 + 16))(v56, v64, v57);
    v65 = *(v62 + 16);
    v65(v60, v59, v63);
    v65(v61, v59, v63);
    v66 = sub_22B36050C();
    v67 = sub_22B360D2C();
    v68 = os_log_type_enabled(v66, v67);
    v123 = *(v0 + 424);
    if (v68)
    {
      v69 = *(v0 + 416);
      v102 = v67;
      v70 = *(v0 + 384);
      v71 = *(v0 + 344);
      v72 = *(v0 + 320);
      v104 = *(v0 + 232);
      v105 = *(v0 + 224);
      loga = *(v0 + 248);
      v73 = *(v0 + 208);
      v99 = *(v0 + 200);
      v114 = *(v0 + 192);
      v109 = *(v0 + 216);
      v111 = *(v0 + 184);
      v98 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v128 = v101;
      *v98 = 136315394;
      v74 = v73;
      MEMORY[0x23188BC90]();
      sub_22B35D89C();
      v116(v69, v70);
      sub_22B35D784(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v75 = sub_22B36131C();
      v77 = v76;
      v119(v71, v72);
      v97 = *(v114 + 8);
      v97(v74, v111);
      v78 = sub_22B1A7B20(v75, v77, &v128);

      *(v98 + 4) = v78;
      *(v98 + 12) = 2080;
      MEMORY[0x23188BC90](v79);
      sub_22B35D86C();
      v116(v69, v70);
      v80 = sub_22B36131C();
      v82 = v81;
      v119(v71, v72);
      v97(v99, v111);
      v83 = sub_22B1A7B20(v80, v82, &v128);

      *(v98 + 14) = v83;
      _os_log_impl(&dword_22B116000, v66, v102, "Guidance did not span over time specified. fetched interval: %s end: %s", v98, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v101, -1, -1);
      MEMORY[0x23188F650](v98, -1, -1);

      (*(v104 + 8))(loga, v105);
      v97(v109, v111);
      v84 = v123;
      v85 = v70;
    }

    else
    {
      v125 = *(v0 + 384);
      v87 = *(v0 + 248);
      v88 = *(v0 + 224);
      v89 = *(v0 + 232);
      v90 = *(v0 + 208);
      v120 = *(v0 + 216);
      v91 = *(v0 + 192);
      v92 = *(v0 + 200);
      v93 = *(v0 + 184);

      v94 = *(v91 + 8);
      v94(v92, v93);
      v94(v90, v93);
      (*(v89 + 8))(v87, v88);
      v94(v120, v93);
      v84 = v123;
      v85 = v125;
    }

    v116(v84, v85);
    goto LABEL_21;
  }

  if (*(v0 + 464) != 1)
  {
    goto LABEL_12;
  }

LABEL_16:
  v86 = *(v0 + 432);

  return MEMORY[0x2822009F8](sub_22B35A12C, v86, 0);
}

uint64_t sub_22B35A12C()
{
  v1 = *(v0 + 168);
  *(v0 + 466) = sub_22B31FA54(*(v0 + 216), *(v0 + 424), *(v0 + 136), *(v0 + 144)) & 1;

  return MEMORY[0x2822009F8](sub_22B35A1A8, v1, 0);
}

uint64_t sub_22B35A1A8()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 424);
  v3 = *(v0 + 384);
  (*(*(v0 + 192) + 8))(*(v0 + 216), *(v0 + 184));
  v1(v2, v3);
  v6 = *(v0 + 466);

  v4 = *(v0 + 8);

  return v4(v6);
}

uint64_t sub_22B35A328()
{
  type metadata accessor for HistoricalGuidanceDataManager(0);
  v0 = swift_allocObject();
  result = sub_22B35A368();
  qword_28140BC40 = v0;
  return result;
}

uint64_t sub_22B35A368()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_22B35E0BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B35DF9C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v13 = [objc_opt_self() ephemeralSessionConfiguration];
  v14 = [objc_opt_self() sessionWithConfiguration_];

  *(v1 + 112) = v14;
  (*(v10 + 104))(v12, *MEMORY[0x277CC9830], v9);
  sub_22B35DFAC();
  (*(v10 + 8))(v12, v9);
  sub_22B35E08C();
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    swift_beginAccess();
    sub_22B35E01C();
    swift_endAccess();
    return v1;
  }

  return result;
}

uint64_t sub_22B35A61C()
{
  v1 = OBJC_IVAR____TtC16HomeEnergyDaemon29HistoricalGuidanceDataManager_calendar;
  v2 = sub_22B35E04C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for HistoricalGuidanceDataManager(uint64_t a1)
{
  result = qword_281408848;
  if (!qword_281408848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B35A6F0(uint64_t a1)
{
  result = sub_22B35E04C();
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

uint64_t sub_22B35A798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6[24] = a4;
  v6[25] = v5;
  v6[22] = a2;
  v6[23] = a3;
  v6[21] = a1;
  v7 = sub_22B35E37C();
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  v8 = sub_22B35E21C();
  v6[29] = v8;
  v6[30] = *(v8 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v9 = sub_22B35DE9C();
  v6[35] = v9;
  v6[36] = *(v9 - 8);
  v6[37] = swift_task_alloc();
  v10 = sub_22B35D8BC();
  v6[38] = v10;
  v6[39] = *(v10 - 8);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v11 = sub_22B36052C();
  v6[42] = v11;
  v6[43] = *(v11 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B35AA0C, v5, 0);
}

uint64_t sub_22B35AA0C(uint64_t a1)
{
  v57 = v1;
  sub_22B35EEBC();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v1[45];
  v3 = v1[42];
  v4 = v1[43];
  v5 = v1[41];
  v54 = v1[40];
  v7 = v1[38];
  v6 = v1[39];
  v8 = v1[24];
  v9 = __swift_project_value_buffer(v3, qword_28140BD10);
  v1[46] = v9;
  swift_beginAccess();
  v10 = *(v4 + 16);
  v1[47] = v10;
  v1[48] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v2, v9, v3);
  v11 = *(v6 + 16);
  v11(v5, v8, v7);
  v11(v54, v8, v7);

  v12 = sub_22B36050C();
  v13 = sub_22B360D2C();

  v14 = os_log_type_enabled(v12, v13);
  v16 = v1[42];
  v15 = v1[43];
  v17 = v1[41];
  v53 = v1[40];
  v55 = v1[45];
  v18 = v1[38];
  v19 = v1[39];
  if (v14)
  {
    log = v12;
    v51 = v1[43];
    v20 = v1[37];
    v52 = v1[36];
    v21 = v1[35];
    v49 = v13;
    v23 = v1[22];
    v22 = v1[23];
    v46 = v1[38];
    v24 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v56 = v48;
    *v24 = 136381187;
    *(v24 + 4) = sub_22B1A7B20(v23, v22, &v56);
    *(v24 + 12) = 2080;
    sub_22B35D89C();
    sub_22B35D784(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v25 = sub_22B36131C();
    v47 = v16;
    v27 = v26;
    v45 = *(v52 + 8);
    v45(v20, v21);
    v28 = *(v19 + 8);
    v28(v17, v46);
    v29 = sub_22B1A7B20(v25, v27, &v56);

    *(v24 + 14) = v29;
    *(v24 + 22) = 2080;
    sub_22B35D86C();
    v30 = sub_22B36131C();
    v32 = v31;
    v45(v20, v21);
    v28(v53, v46);
    v33 = sub_22B1A7B20(v30, v32, &v56);

    *(v24 + 24) = v33;
    _os_log_impl(&dword_22B116000, log, v49, "Fetching historical guidance from server for %{private}s\ninterval: %s - %s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v48, -1, -1);
    MEMORY[0x23188F650](v24, -1, -1);

    v34 = *(v51 + 8);
    v34(v55, v47);
  }

  else
  {

    v35 = *(v19 + 8);
    v35(v53, v18);
    v35(v17, v18);
    v34 = *(v15 + 8);
    v34(v55, v16);
  }

  v1[49] = v34;
  v36 = *(v1[25] + 112);
  v1[50] = v36;
  v37 = v36;
  v38 = swift_task_alloc();
  v1[51] = v38;
  *v38 = v1;
  v38[1] = sub_22B35AE80;
  v39 = v1[33];
  v40 = v1[28];
  v41 = v1[23];
  v42 = v1[24];
  v43 = v1[22];

  return MEMORY[0x2821720A8](v40, v43, v41, v42, v37, v39);
}

uint64_t sub_22B35AE80()
{
  v2 = *v1;
  v3 = *(*v1 + 400);

  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = sub_22B35B308;
  }

  else
  {
    v5 = sub_22B35AFC4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B35AFC4()
{
  v1 = *(v0[25] + 112);
  v0[52] = v1;
  v0[2] = v0;
  v0[3] = sub_22B35B0E0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD20, &qword_22B366250);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22B30F28C;
  v0[13] = &block_descriptor_33;
  v0[14] = v2;
  [v1 resetWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22B35B0E0()
{
  v1 = *(*v0 + 200);

  return MEMORY[0x2822009F8](sub_22B35B1D4, v1, 0);
}

uint64_t sub_22B35B1D4()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 168);

  (*(v2 + 32))(v4, v1, v3);
  (*(*(v0 + 216) + 56))(*(v0 + 168), 0, 1, *(v0 + 208));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22B35B308()
{
  v25 = *(v0 + 376);
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);
  v3 = *(v0 + 336);
  v4 = *(v0 + 272);
  v5 = *(v0 + 256);
  v24 = *(v0 + 248);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v8 = *(v6 + 32);
  v8(v4, *(v0 + 264), v7);
  v8(v5, v4, v7);
  v25(v2, v1, v3);
  v9 = *(v6 + 16);
  v9(v24, v5, v7);
  v10 = sub_22B36050C();
  v11 = sub_22B360D1C();
  v12 = os_log_type_enabled(v10, v11);
  v14 = *(v0 + 240);
  v13 = *(v0 + 248);
  v15 = *(v0 + 232);
  if (v12)
  {
    v27 = v11;
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v16 = 138412290;
    sub_22B35D784(&qword_2814091A0, MEMORY[0x277D17F08], MEMORY[0x277D17F10]);
    swift_allocError();
    v9(v17, v13, v15);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    v19 = *(v14 + 8);
    v19(v13, v15);
    *(v16 + 4) = v18;
    *v26 = v18;
    _os_log_impl(&dword_22B116000, v10, v27, "Error fetching historical guidance from server: %@", v16, 0xCu);
    sub_22B123284(v26, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v26, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  else
  {

    v19 = *(v14 + 8);
    v19(v13, v15);
  }

  v20 = *(v0 + 256);
  v21 = *(v0 + 232);
  (*(v0 + 392))(*(v0 + 352), *(v0 + 336));
  v19(v20, v21);
  (*(*(v0 + 216) + 56))(*(v0 + 168), 1, 1, *(v0 + 208));

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_22B35B648(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_22B36052C();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB190, &unk_22B368200);
  v3[19] = swift_task_alloc();
  v5 = sub_22B35DA4C();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v6 = sub_22B35E04C();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v7 = sub_22B35DE9C();
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B35B904, v2, 0);
}

uint64_t sub_22B35B904()
{
  v41 = v0;
  v1 = v0[29];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v36 = v0[21];
  v37 = v0[27];
  v38 = v0[20];
  v39 = v0[28];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[13];
  v9 = OBJC_IVAR____TtC16HomeEnergyDaemon29HistoricalGuidanceDataManager_calendar;
  swift_beginAccess();
  (*(v2 + 16))(v3, v8 + v9, v5);
  (*(v2 + 56))(v7, 1, 1, v5);
  v10 = sub_22B35E0BC();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_22B35DA3C();
  sub_22B35DFDC();
  (*(v36 + 8))(v4, v38);
  (*(v2 + 8))(v3, v5);
  v11 = *(v1 + 48);
  v0[34] = v11;
  v0[35] = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v11(v37, 1, v39) == 1)
  {
    sub_22B123284(v0[27], &qword_27D8BA340, &qword_22B363FB0);
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[14];
    v15 = __swift_project_value_buffer(v14, qword_28140BD10);
    swift_beginAccess();
    (*(v13 + 16))(v12, v15, v14);
    v16 = sub_22B36050C();
    v17 = sub_22B360D1C();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[15];
    v19 = v0[16];
    v21 = v0[14];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v40 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_22B1A7B20(0xD000000000000020, 0x800000022B36F3B0, &v40);
      _os_log_impl(&dword_22B116000, v16, v17, "%s: unable to create oldestFetchDate", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23188F650](v23, -1, -1);
      MEMORY[0x23188F650](v22, -1, -1);
    }

    (*(v20 + 8))(v19, v21);
    goto LABEL_14;
  }

  v24 = v0[33];
  v25 = v0[28];
  v26 = v0[29];
  v27 = v0[27];
  v28 = v0[11];
  v29 = *(v26 + 32);
  v0[36] = v29;
  v0[37] = (v26 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v29(v24, v27, v25);
  v30 = *(v28 + 16);
  v0[38] = v30;
  if (!v30)
  {
    (*(v0[29] + 8))(v0[33], v0[28]);
LABEL_14:

    v34 = v0[1];

    return v34();
  }

  v31 = v0[11];
  v0[39] = 0;
  v0[40] = *(v31 + 32);
  v0[41] = *(v31 + 40);
  v32 = qword_281408750;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = qword_28140BC30;
  v0[42] = qword_28140BC30;

  return MEMORY[0x2822009F8](sub_22B35BE20, v33, 0);
}

uint64_t sub_22B35BE20()
{
  v1 = v0[13];
  sub_22B32128C(v0[40], v0[41], v0[26]);

  return MEMORY[0x2822009F8](sub_22B35BE94, v1, 0);
}

uint64_t sub_22B35BE94()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  if (v1(v3, 1, v2) == 1)
  {
    sub_22B35DD1C();
    if (v1(v3, 1, v2) != 1)
    {
      sub_22B123284(*(v0 + 208), &qword_27D8BA340, &qword_22B363FB0);
    }
  }

  else
  {
    (*(v0 + 288))(*(v0 + 256), v3, v2);
  }

  v4 = *(v0 + 288);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 240);
  v7 = *(v0 + 248);
  v9 = *(v0 + 224);
  v10 = *(v0 + 232);
  if (sub_22B35DDEC())
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  (*(v10 + 16))(v8, v11, v9);
  v4(v7, v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 344) = v12;
  *v12 = v0;
  v12[1] = sub_22B35C008;
  v14 = *(v0 + 320);
  v13 = *(v0 + 328);
  v15 = *(v0 + 248);
  v16 = *(v0 + 96);

  return sub_22B35C4E4(v14, v13, v16, v15);
}

uint64_t sub_22B35C008()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_22B35C118, v1, 0);
}

uint64_t sub_22B35C118()
{
  v35 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_22B36050C();
  v6 = sub_22B360CFC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[41];
  if (v7)
  {
    v9 = v0[40];
    v32 = v0[31];
    v33 = v0[32];
    v10 = v0[28];
    v11 = v0[29];
    v12 = v0[15];
    v30 = v0[14];
    v31 = v0[17];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34 = v14;
    *v13 = 136380675;
    v15 = sub_22B1A7B20(v9, v8, &v34);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_22B116000, v5, v6, "Populated cache for %{private}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    (*(v12 + 8))(v31, v30);
    v16 = *(v11 + 8);
    v16(v32, v10);
    v16(v33, v10);
  }

  else
  {
    v18 = v0[31];
    v17 = v0[32];
    v19 = v0[28];
    v20 = v0[29];
    v21 = v0[17];
    v22 = v0[14];
    v23 = v0[15];

    (*(v23 + 8))(v21, v22);
    v16 = *(v20 + 8);
    v16(v18, v19);
    v16(v17, v19);
  }

  v24 = v0[39] + 1;
  if (v24 == v0[38])
  {
    v16(v0[33], v0[28]);

    v25 = v0[1];

    return v25();
  }

  else
  {
    v0[39] = v24;
    v27 = v0[11] + 16 * v24;
    v0[40] = *(v27 + 32);
    v0[41] = *(v27 + 40);
    v28 = qword_281408750;

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = qword_28140BC30;
    v0[42] = qword_28140BC30;

    return MEMORY[0x2822009F8](sub_22B35BE20, v29, 0);
  }
}

uint64_t sub_22B35C4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = sub_22B35E04C();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = sub_22B35E02C();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = sub_22B36052C();
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v9 = sub_22B35DE9C();
  v5[22] = v9;
  v5[23] = *(v9 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B35C6D8, v4, 0);
}

uint64_t sub_22B35C6D8()
{
  v30 = v0;
  (*(*(v0 + 184) + 16))(*(v0 + 208), *(v0 + 88), *(v0 + 176));
  *(v0 + 216) = OBJC_IVAR____TtC16HomeEnergyDaemon29HistoricalGuidanceDataManager_calendar;
  swift_beginAccess();
  sub_22B35D784(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_22B36074C())
  {
    (*(*(v0 + 184) + 8))(*(v0 + 208), *(v0 + 176));
LABEL_12:

    v27 = *(v0 + 8);

    return v27();
  }

  *(v0 + 272) = *MEMORY[0x277CC9998];
  *(v0 + 276) = *MEMORY[0x277CC9968];
  if (sub_22B360BFC())
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 160);
    v1 = *(v0 + 168);
    v3 = *(v0 + 152);
    v4 = __swift_project_value_buffer(v3, qword_28140BD10);
    swift_beginAccess();
    (*(v2 + 16))(v1, v4, v3);
    v5 = sub_22B36050C();
    v6 = sub_22B360D1C();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 208);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);
    v11 = *(v0 + 160);
    v12 = *(v0 + 168);
    v13 = *(v0 + 152);
    if (v7)
    {
      v28 = *(v0 + 208);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v29 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_22B1A7B20(0xD00000000000002ELL, 0x800000022B36F3E0, &v29);
      *(v14 + 12) = 2048;
      *(v14 + 14) = 136;
      _os_log_impl(&dword_22B116000, v5, v6, "[HistoricalGuidanceDataManager] Task is cancelled at %s:%ld", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x23188F650](v15, -1, -1);
      MEMORY[0x23188F650](v14, -1, -1);

      (*(v11 + 8))(v12, v13);
      (*(v10 + 8))(v28, v9);
    }

    else
    {

      (*(v11 + 8))(v12, v13);
      (*(v10 + 8))(v8, v9);
    }

    goto LABEL_12;
  }

  v16 = *(v0 + 272);
  v18 = *(v0 + 136);
  v17 = *(v0 + 144);
  v19 = *(v0 + 128);
  v20 = *(v18 + 104);
  *(v0 + 224) = v20;
  *(v0 + 232) = (v18 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v20(v17, v16, v19);
  v21 = swift_task_alloc();
  *(v0 + 240) = v21;
  *v21 = v0;
  v21[1] = sub_22B35CAD8;
  v22 = *(v0 + 208);
  v23 = *(v0 + 144);
  v25 = *(v0 + 64);
  v24 = *(v0 + 72);

  return sub_22B358910(v25, v24, v22, v23, 0);
}

uint64_t sub_22B35CAD8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 96);
  *(v2 + 280) = a1;

  v7 = *(v4 + 8);
  *(v2 + 248) = v7;
  *(v2 + 256) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);

  return MEMORY[0x2822009F8](sub_22B35CC60, v6, 0);
}

uint64_t sub_22B35CC60()
{
  v48 = v0;
  if (*(v0 + 280))
  {
    v43 = *(v0 + 248);
    v1 = *(v0 + 216);
    v2 = *(v0 + 192);
    v42 = *(v0 + 184);
    v44 = *(v0 + 176);
    v45 = *(v0 + 208);
    v3 = *(v0 + 144);
    v4 = *(v0 + 120);
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 96);
    v40 = v7;
    v41 = *(v0 + 128);
    (*(v0 + 224))(v3, *(v0 + 272));
    v8 = *(v5 + 16);
    v8(v4, v7 + v1, v6);
    v9 = v8;
    sub_22B35F60C();
    v10 = *(v5 + 8);
    v10(v4, v6);
    v43(v3, v41);
    v9(v4, v40 + v1, v6);
    sub_22B35F57C();
    v10(v4, v6);
    v11 = *(v42 + 8);
    v11(v2, v44);
    v11(v45, v44);
    (*(*(v0 + 184) + 32))(*(v0 + 208), *(v0 + 200), *(v0 + 176));
    sub_22B35D784(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    if (sub_22B36074C())
    {
      v11(*(v0 + 208), *(v0 + 176));
LABEL_15:

      v39 = *(v0 + 8);

      return v39();
    }

    if (sub_22B360BFC())
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 160);
      v19 = *(v0 + 168);
      v21 = *(v0 + 152);
      v22 = __swift_project_value_buffer(v21, qword_28140BD10);
      swift_beginAccess();
      (*(v20 + 16))(v19, v22, v21);
      v23 = sub_22B36050C();
      v24 = sub_22B360D1C();
      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 208);
      v27 = *(v0 + 176);
      v28 = *(v0 + 184);
      v29 = *(v0 + 160);
      v30 = *(v0 + 168);
      v31 = *(v0 + 152);
      if (v25)
      {
        v46 = *(v0 + 208);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v47 = v33;
        *v32 = 136315394;
        *(v32 + 4) = sub_22B1A7B20(0xD00000000000002ELL, 0x800000022B36F3E0, &v47);
        *(v32 + 12) = 2048;
        *(v32 + 14) = 136;
        _os_log_impl(&dword_22B116000, v23, v24, "[HistoricalGuidanceDataManager] Task is cancelled at %s:%ld", v32, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x23188F650](v33, -1, -1);
        MEMORY[0x23188F650](v32, -1, -1);

        (*(v29 + 8))(v30, v31);
        (*(v28 + 8))(v46, v27);
      }

      else
      {

        (*(v29 + 8))(v30, v31);
        (*(v28 + 8))(v26, v27);
      }

      goto LABEL_15;
    }

    v34 = *(v0 + 272);
    v36 = *(v0 + 136);
    v35 = *(v0 + 144);
    v37 = *(v0 + 128);
    v38 = *(v36 + 104);
    *(v0 + 224) = v38;
    *(v0 + 232) = (v36 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v38(v35, v34, v37);
    v12 = swift_task_alloc();
    *(v0 + 240) = v12;
    *v12 = v0;
    v13 = sub_22B35CAD8;
  }

  else
  {
    (*(v0 + 224))(*(v0 + 144), *(v0 + 276), *(v0 + 128));
    v12 = swift_task_alloc();
    *(v0 + 264) = v12;
    *v12 = v0;
    v13 = sub_22B35D198;
  }

  v12[1] = v13;
  v14 = *(v0 + 208);
  v15 = *(v0 + 144);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);

  return sub_22B358910(v17, v16, v14, v15, 0);
}

uint64_t sub_22B35D198()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 96);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_22B35D314, v4, 0);
}

uint64_t sub_22B35D314()
{
  v42 = v0;
  v39 = *(v0 + 248);
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 184);
  v38 = *(v0 + 176);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = *(v0 + 96);
  (*(v0 + 224))(v4, *(v0 + 276), v5);
  (*(v7 + 16))(v6, v9 + v2, v8);
  sub_22B35F60C();
  (*(v7 + 8))(v6, v8);
  v39(v4, v5);
  v10 = *(v3 + 8);
  v10(v1, v38);
  (*(*(v0 + 184) + 32))(*(v0 + 208), *(v0 + 200), *(v0 + 176));
  sub_22B35D784(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_22B36074C())
  {
    v10(*(v0 + 208), *(v0 + 176));
LABEL_12:

    v37 = *(v0 + 8);

    return v37();
  }

  if (sub_22B360BFC())
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = *(v0 + 152);
    v14 = __swift_project_value_buffer(v13, qword_28140BD10);
    swift_beginAccess();
    (*(v12 + 16))(v11, v14, v13);
    v15 = sub_22B36050C();
    v16 = sub_22B360D1C();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 208);
    v19 = *(v0 + 176);
    v20 = *(v0 + 184);
    v21 = *(v0 + 160);
    v22 = *(v0 + 168);
    v23 = *(v0 + 152);
    if (v17)
    {
      v40 = *(v0 + 208);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_22B1A7B20(0xD00000000000002ELL, 0x800000022B36F3E0, &v41);
      *(v24 + 12) = 2048;
      *(v24 + 14) = 136;
      _os_log_impl(&dword_22B116000, v15, v16, "[HistoricalGuidanceDataManager] Task is cancelled at %s:%ld", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x23188F650](v25, -1, -1);
      MEMORY[0x23188F650](v24, -1, -1);

      (*(v21 + 8))(v22, v23);
      (*(v20 + 8))(v40, v19);
    }

    else
    {

      (*(v21 + 8))(v22, v23);
      (*(v20 + 8))(v18, v19);
    }

    goto LABEL_12;
  }

  v26 = *(v0 + 272);
  v28 = *(v0 + 136);
  v27 = *(v0 + 144);
  v29 = *(v0 + 128);
  v30 = *(v28 + 104);
  *(v0 + 224) = v30;
  *(v0 + 232) = (v28 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v30(v27, v26, v29);
  v31 = swift_task_alloc();
  *(v0 + 240) = v31;
  *v31 = v0;
  v31[1] = sub_22B35CAD8;
  v32 = *(v0 + 208);
  v33 = *(v0 + 144);
  v35 = *(v0 + 64);
  v34 = *(v0 + 72);

  return sub_22B358910(v35, v34, v32, v33, 0);
}

uint64_t sub_22B35D784(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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