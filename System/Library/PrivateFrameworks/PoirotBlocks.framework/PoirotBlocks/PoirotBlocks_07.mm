uint64_t sub_21B202D08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF58, &qword_21B212510);
  v34 = v4;
  result = sub_21B20D7F8();
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

      sub_21B20DC88();
      sub_21B20D388();
      result = sub_21B20DCA8();
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

uint64_t sub_21B202FCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v12);
  v51 = &v44 - v13;
  v14 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v49 = v10;
  result = sub_21B20D7F8();
  v16 = result;
  if (*(v14 + 16))
  {
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
    v45 = v6;
    v46 = (v11 + 16);
    v47 = v14;
    v48 = v11;
    v50 = (v11 + 32);
    v23 = result + 64;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v29 = v26 | (v17 << 6);
      v30 = *(v14 + 56);
      v31 = (*(v14 + 48) + 16 * v29);
      v33 = *v31;
      v32 = v31[1];
      v34 = *(v48 + 72);
      v35 = v30 + v34 * v29;
      if (v49)
      {
        (*v50)(v51, v35, v52);
      }

      else
      {
        (*v46)(v51, v35, v52);
      }

      sub_21B20DC88();
      sub_21B20D388();
      result = sub_21B20DCA8();
      v36 = -1 << *(v16 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v23 + 8 * (v37 >> 6))) == 0)
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
          v42 = *(v23 + 8 * v38);
          if (v42 != -1)
          {
            v24 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v37) & ~*(v23 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v25 = (*(v16 + 48) + 16 * v24);
      *v25 = v33;
      v25[1] = v32;
      result = (*v50)(*(v16 + 56) + v34 * v24, v51, v52);
      ++*(v16 + 16);
      v14 = v47;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v21 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v9 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v14 + 32);
    v9 = v45;
    if (v43 >= 64)
    {
      bzero(v18, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v43;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v9 = v16;
  return result;
}

uint64_t sub_21B203378(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v7;
  result = sub_21B20D7F8();
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
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 40 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_21B17FB4C(v27, v38);
      }

      sub_21B20DC88();
      sub_21B20D388();
      result = sub_21B20DCA8();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 40 * v18);
      ++*(v10 + 16);
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

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

void *sub_21B203648()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF78, &unk_21B212530);
  v2 = *v0;
  v3 = sub_21B20D7E8();
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

void *sub_21B2037CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF70, &qword_21B212528);
  v2 = *v0;
  v3 = sub_21B20D7E8();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
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

  return result;
}

void *sub_21B20398C()
{
  v1 = v0;
  v2 = type metadata accessor for DatasetColumnDescription(0);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF30, &qword_21B2124E0);
  v5 = *v0;
  v6 = sub_21B20D7E8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_21B17FCC8(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_21B1867B4(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

void *sub_21B203BE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBB8, &qword_21B2115D0);
  v2 = *v0;
  v3 = sub_21B20D7E8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_21B19DB00(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21B17C304(v25, (*(v4 + 56) + v22));
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

  return result;
}

void *sub_21B203D84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD701E8, &qword_21B219B80);
  v2 = *v0;
  v3 = sub_21B20D7E8();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v17);
        *v26 = v20;
        v26[1] = v19;
        v26[2] = v21;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
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

  return result;
}

void *sub_21B203F78(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21B20D7E8();
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

void *sub_21B2040D8()
{
  v1 = v0;
  v27 = sub_21B20D7B8();
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v2);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD70210, &qword_21B219BA8);
  v4 = *v0;
  v5 = sub_21B20D7E8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        sub_21B19DB00(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = sub_21B17C304(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
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

        v1 = v25[0];
        v6 = v28;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
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

void *sub_21B20435C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FEA8, &qword_21B217EE0);
  v2 = *v0;
  v3 = sub_21B20D7E8();
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

void *sub_21B2044F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8C0, &qword_21B215D90);
  v2 = *v0;
  v3 = sub_21B20D7E8();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = sub_21B1A7C74(v23, v24, v26);
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

void *sub_21B204704(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v44 = a1(0);
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v7);
  v43 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_21B20D7E8();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *sub_21B20498C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF58, &qword_21B212510);
  v2 = *v0;
  v3 = sub_21B20D7E8();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_21B204B18(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v8);
  v44 = &v39 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_21B20D7E8();
  v12 = v11;
  if (*(v10 + 16))
  {
    v40 = v7;
    result = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v15)
    {
      result = memmove(result, (v10 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v10 + 16);
    v46 = v12;
    *(v12 + 16) = v18;
    v19 = 1 << *(v10 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 64);
    v22 = (v19 + 63) >> 6;
    v41 = v47 + 32;
    v42 = v47 + 16;
    v43 = v10;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v48 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = *(v10 + 56);
        v29 = (*(v10 + 48) + 16 * v26);
        v30 = *v29;
        v31 = v29[1];
        v32 = v47;
        v33 = *(v47 + 72) * v26;
        v34 = v44;
        v35 = v45;
        (*(v47 + 16))(v44, v28 + v33, v45);
        v36 = v46;
        v37 = (*(v46 + 48) + v27);
        *v37 = v30;
        v37[1] = v31;
        v38 = *(v36 + 56) + v33;
        v10 = v43;
        (*(v32 + 32))(v38, v34, v35);

        v21 = v48;
      }

      while (v48);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v40;
        v12 = v46;
        goto LABEL_21;
      }

      v25 = *(v14 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
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

void *sub_21B204DBC(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_21B20D7E8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 40 * v20;
        sub_21B17FB4C(*(v5 + 56) + 40 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

unint64_t sub_21B204F60(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_21B204FA8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_21B204FFC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for DatasetColumnDescription(0);
  result = sub_21B1867B4(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

unint64_t sub_21B2050A8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 24 * result);
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v9 = (a8[7] + 24 * result);
  *v9 = a5;
  v9[1] = a6;
  v9[2] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

_OWORD *sub_21B20511C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_21B20D7B8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_21B17C304(a3, (a4[7] + 32 * a1));
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

uint64_t sub_21B205224(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
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

uint64_t sub_21B2052EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  v11 = a5[7];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  result = (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a4, v12);
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_21B2053A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21B2053F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF28, &qword_21B2124D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B205464(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF28, &qword_21B2124D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B2054D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_21B20C678();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for LoggingType(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21B1950C4(v2, v16);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      a1[3] = &type metadata for VoidLogHandler;
      a1[4] = &off_282CA3DD8;
    }

    else
    {
      v21 = type metadata accessor for ConsoleLogHandler();
      result = swift_allocObject();
      a1[3] = v21;
      a1[4] = &off_282CA3BE0;
      *a1 = result;
    }
  }

  else if (result)
  {
    v20 = *v16;
    result = type metadata accessor for DebugLogHandler();
    a1[3] = result;
    a1[4] = &protocol witness table for DebugLogHandler;
    *a1 = v20;
  }

  else
  {
    (*(v5 + 32))(v12, v16, v4);
    (*(v5 + 16))(v9, v12, v4);
    v18 = type metadata accessor for StructLogHandler(0);
    swift_allocObject();
    v19 = sub_21B1F62B0(v9);
    a1[3] = v18;
    a1[4] = &off_282CA3D80;
    *a1 = v19;
    return (*(v5 + 8))(v12, v4);
  }

  return result;
}

uint64_t LoggingType.makeLogHandler()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_21B20C678();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for LoggingType(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21B1950C4(v2, v16);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      a1[3] = &type metadata for VoidLogHandler;
      a1[4] = &off_282CA3DD8;
    }

    else
    {
      v22 = type metadata accessor for ConsoleLogHandler();
      result = swift_allocObject();
      a1[3] = v22;
      a1[4] = &off_282CA3BE0;
      *a1 = result;
    }
  }

  else if (result)
  {
    v21 = *v16;
    result = type metadata accessor for DebugLogHandler();
    a1[3] = result;
    a1[4] = &protocol witness table for DebugLogHandler;
    *a1 = v21;
  }

  else
  {
    v18 = *(v5 + 32);
    v18(v12, v16, v4);
    (*(v5 + 16))(v9, v12, v4);
    v19 = type metadata accessor for FileLogHandler(0);
    v20 = swift_allocObject();
    v18((v20 + OBJC_IVAR____TtC12PoirotBlocks14FileLogHandler_directory), v9, v4);
    a1[3] = v19;
    a1[4] = &off_282CA3CD0;
    *a1 = v20;
    return (*(v5 + 8))(v12, v4);
  }

  return result;
}

uint64_t type metadata accessor for LoggingType(uint64_t a1)
{
  result = qword_2811F9DE0;
  if (!qword_2811F9DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B2059C4(uint64_t a1)
{
  result = sub_21B20C678();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DebugLogHandler();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

double *UserDefaultsTimeBookmark.__allocating_init(userDefaults:bookmarkKey:processTillDate:ignoreMaximumLookbackTime:)(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  if (!a1)
  {
    a1 = [objc_opt_self() standardUserDefaults];
  }

  *(v10 + 24) = a3;
  *(v10 + 32) = a1;
  *(v10 + 16) = a2;
  sub_21B20C708();
  v12 = v11;
  v13 = sub_21B20C728();
  (*(*(v13 - 8) + 8))(a4, v13);
  *(v10 + 40) = v12;
  *(v10 + 48) = a5 & 1;
  return v10;
}

uint64_t UserDefaultsTimeBookmark.init(userDefaults:bookmarkKey:processTillDate:ignoreMaximumLookbackTime:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  if (!a1)
  {
    a1 = [objc_opt_self() standardUserDefaults];
  }

  *(v6 + 24) = a3;
  *(v6 + 32) = a1;
  *(v6 + 16) = a2;
  sub_21B20C708();
  v12 = v11;
  v13 = sub_21B20C728();
  (*(*(v13 - 8) + 8))(a4, v13);
  *(v6 + 40) = v12;
  *(v6 + 48) = a5 & 1;
  return v6;
}

uint64_t UserDefaultsTimeBookmark.nextStartTime.getter()
{
  v1 = *(v0 + 32);
  v2 = sub_21B20D2C8();
  [v1 doubleForKey_];
  v4 = v3;

  return v4;
}

void sub_21B205C44(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 32);
  v4 = sub_21B20D2C8();
  [v3 doubleForKey_];
  v6 = v5;

  *a2 = v6;
  *(a2 + 8) = 0;
}

void sub_21B205CAC(uint64_t a1, uint64_t *a2)
{
  v2 = *(*a2 + 32);
  if (*(a1 + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_21B20D4F8();
  }

  v4 = sub_21B20D2C8();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

void UserDefaultsTimeBookmark.nextStartTime.setter(uint64_t a1, char a2)
{
  v3 = *(v2 + 32);
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_21B20D4F8();
  }

  v5 = sub_21B20D2C8();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

void (*UserDefaultsTimeBookmark.nextStartTime.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[4];
  v3[2] = v5;
  v3[3] = v1[2];
  v3[4] = v1[3];
  v6 = sub_21B20D2C8();
  [v5 doubleForKey_];
  v8 = v7;

  *v4 = v8;
  *(v4 + 8) = 0;
  return sub_21B205E7C;
}

void sub_21B205E7C(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_21B20D4F8();
  }

  v3 = v1[2];
  v4 = sub_21B20D2C8();
  [v3 setObject:v2 forKey:v4];

  swift_unknownObjectRelease();

  free(v1);
}

uint64_t UserDefaultsTimeBookmark.deinit()
{

  return v0;
}

uint64_t UserDefaultsTimeBookmark.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t sub_21B205F70()
{
  v1 = *(v0 + 32);
  v2 = sub_21B20D2C8();
  [v1 doubleForKey_];
  v4 = v3;

  return v4;
}

void sub_21B205FC8(uint64_t a1, char a2)
{
  v3 = *(v2 + 32);
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_21B20D4F8();
  }

  v5 = sub_21B20D2C8();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

void (*sub_21B206050(void *a1))(void *a1)
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
  v2[4] = UserDefaultsTimeBookmark.nextStartTime.modify(v2);
  return sub_21B1F1624;
}

uint64_t sub_21B206120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_21B20C548();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21B20C678();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 8);
  v17 = a2;
  v19 = v18;
  v16(a1, v17);
  v26[0] = 0x6A2E657069636572;
  v26[1] = 0xEB000000006E6F73;
  (*(v7 + 104))(v10, *MEMORY[0x277CC91D8], v6);
  sub_21B17FBB0();
  sub_21B20C668();
  (*(v7 + 8))(v10, v6);
  v20 = *(v12 + 8);
  v20(v15, v19);
  result = sub_21B20C538();
  if ((result & 1) == 0)
  {
    v22 = sub_21B20C568();
    v24 = v23;
    sub_21B17FC58();
    swift_allocError();
    *v25 = v22;
    *(v25 + 8) = v24;
    *(v25 + 16) = 0;
    swift_willThrow();
    return (v20)(a3, v19);
  }

  return result;
}

uint64_t HostConfiguring.loggingType.getter()
{
  type metadata accessor for LoggingType(0);

  return swift_storeEnumTagMultiPayload();
}

char *static HostControlling.entitledForDataSources()()
{
  error[1] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for DataSource.Container(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataSource(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v44 - v12;
  v14 = SecTaskCreateFromSelf(0);
  if (!v14)
  {
    sub_21B206A4C();
    swift_allocError();
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 2;
    swift_willThrow();
    return v6;
  }

  v15 = v14;
  v51 = v13;
  error[0] = 0;
  v16 = sub_21B20D2C8();
  v17 = SecTaskCopyValueForEntitlement(v15, v16, error);

  v18 = error[0];
  if (error[0])
  {
    *&v58[0] = error[0];
    type metadata accessor for CFError(0);
    sub_21B206B7C();
    v19 = sub_21B20DC08();
    v6 = v20;

    sub_21B206A4C();
    swift_allocError();
    *v21 = v19;
    *(v21 + 8) = v6;
    *(v21 + 16) = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    return v6;
  }

  if (!v17)
  {

    return MEMORY[0x277D84F90];
  }

  *&v58[0] = v17;
  swift_unknownObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F1C0, &unk_21B214CD0);
  if (!swift_dynamicCast())
  {
    swift_getObjectType();
    v40 = sub_21B20DD38();
    v6 = v41;
    sub_21B206A4C();
    swift_allocError();
    *v42 = v40;
    *(v42 + 8) = v6;
    *(v42 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease_n();

    return v6;
  }

  swift_unknownObjectRelease();
  v24 = v55;
  v25 = *(v55 + 16);
  if (!v25)
  {
    swift_unknownObjectRelease();

    return MEMORY[0x277D84F90];
  }

  v47 = v10;
  v48 = v6;
  v44[2] = v17;
  v45 = v15;
  v44[1] = v0;
  v54 = MEMORY[0x277D84F90];
  sub_21B18FF48(0, v25, 0);
  v26 = 0;
  v6 = v54;
  v27 = v24 + 40;
  v49 = v1;
  v50 = v24;
  v46 = v25;
  while (1)
  {
    if (v26 >= *(v24 + 16))
    {
      __break(1u);
    }

    v52 = v6;
    v6 = v4;

    v28 = sub_21B20D2C8();
    v29 = _s12TableFactoryCMa_0();
    v30 = swift_allocObject();
    *(v30 + 24) = 0;
    *(v30 + 32) = 0;
    *(v30 + 16) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    *(v30 + 40) = -1;
    v31 = v28;
    v32 = BiomeLibrary();
    v53 = 0;
    v33 = [v32 streamWithIdentifier:v31 error:&v53];
    swift_unknownObjectRelease();
    if (!v33)
    {
      break;
    }

    v34 = v53;

    *(v30 + 48) = v33;
    v56 = v29;
    v57 = &off_282CA3900;

    *&v55 = v30;
    sub_21B17C284(&v55, v58);
    v35 = v58[1];
    *v4 = v58[0];
    *(v4 + 1) = v35;
    *(v4 + 4) = v59;
    swift_storeEnumTagMultiPayload();
    v36 = v47;
    sub_21B206B14(v4, v47, type metadata accessor for DataSource.Container);
    v37 = v51;
    sub_21B206B14(v36, v51, type metadata accessor for DataSource);
    v6 = v52;
    v54 = v52;
    v39 = *(v52 + 2);
    v38 = *(v52 + 3);
    if (v39 >= v38 >> 1)
    {
      sub_21B18FF48((v38 > 1), v39 + 1, 1);
      v6 = v54;
    }

    ++v26;
    *(v6 + 2) = v39 + 1;
    sub_21B206B14(v37, &v6[((v48[80] + 32) & ~v48[80]) + *(v48 + 9) * v39], type metadata accessor for DataSource);
    v27 += 16;
    v24 = v50;
    if (v46 == v26)
    {
      swift_unknownObjectRelease();

      return v6;
    }
  }

  v43 = v53;
  sub_21B20C508();

  swift_willThrow();
  sub_21B1BDE2C(*(v30 + 24), *(v30 + 32), *(v30 + 40));

  swift_deallocPartialClassInstance();

  swift_unknownObjectRelease();

  return v6;
}

unint64_t sub_21B206A4C()
{
  result = qword_27CD70218;
  if (!qword_27CD70218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70218);
  }

  return result;
}

uint64_t sub_21B206AA4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DatabaseConfig(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_21B206B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21B206B7C()
{
  result = qword_27CD70220[0];
  if (!qword_27CD70220[0])
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD70220);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PoirotBlocks16EntitlementErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_21B206C7C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

double sub_21B206D18()
{
  v0 = sub_21B20C728();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B20C718();
  sub_21B20C708();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  return v6;
}

double TimeWindowConfiguring.cutoffTime.getter()
{
  v0 = sub_21B20C728();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B20C718();
  sub_21B20C708();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_21B206F78()
{
  if (v0[3])
  {
    v2 = v0[3];
  }

  else
  {
    v3 = v0;
    v2 = *v0;
    v4 = sub_21B20803C();
    if (v1)
    {
      return v2;
    }

    v6 = v4;
    v14 = v3[2];
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD702A8, &qword_21B219F78);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v13 = 0;
      memset(v12, 0, sizeof(v12));
    }

    v7 = [objc_opt_self() defaultManager];
    sub_21B18BFF8(v12, v10, &qword_27CD6EC70, &qword_21B211CB0);
    type metadata accessor for BlocksController();
    v2 = swift_allocObject();
    v8 = sub_21B20C868();
    sub_21B186488(v12, &qword_27CD6EC70, &qword_21B211CB0);
    *(v2 + 32) = 0;
    *(v2 + 40) = v8;
    *(v2 + 16) = v7;
    *(v2 + 24) = 0;
    v9 = v10[1];
    *(v2 + 48) = v10[0];
    *(v2 + 64) = v9;
    *(v2 + 80) = v11;
    *(v2 + 88) = v6;
    v3[3] = v2;
  }

  return v2;
}

uint64_t sub_21B20710C(uint64_t a1)
{
  v28 = *v1;
  v3 = *(v28 + 88);
  v29 = *(v28 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21B20D5D8();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v27 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v8, v12);
  v14 = &v27 - v13;
  (*(v6 + 16))(v10, a1, v5);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v10, v5);
    AssociatedConformanceWitness = v1[2];
    v16 = v33;
    v17 = (*(v3 + 64))(v29, v3);
    if (!v16)
    {
      AssociatedConformanceWitness = v17;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
    }
  }

  else
  {
    v18 = v14;
    (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
    v31 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = AssociatedConformanceWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    swift_getWitnessTable();
    v20 = swift_getAssociatedTypeWitness();
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v14, v20);
    if (v33)
    {
      (*(v11 + 8))(v14, AssociatedTypeWitness);
      __swift_deallocate_boxed_opaque_existential_1(v30);
    }

    else
    {
      v21 = type metadata accessor for AdHocHostEnvironment(0);
      v22 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      MEMORY[0x28223BE20](v22, v22);
      v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v24);
      AssociatedConformanceWitness = sub_21B1A31DC(v24, v21, AssociatedTypeWitness, AssociatedConformanceWitness);
      (*(v11 + 8))(v18, AssociatedTypeWitness);
      __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  return AssociatedConformanceWitness;
}

uint64_t static PoirotTaskError.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21B20DB28();
  }
}

uint64_t PoirotTask.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

uint64_t PoirotTask.init(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_21B2075F0@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = *v1;
  v52 = sub_21B20D0C8();
  v59 = *(v52 - 8);
  v4 = MEMORY[0x28223BE20](v52, v3);
  v49 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v50 = &v49 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED18, &qword_21B219FB0);
  MEMORY[0x28223BE20](v53, v8);
  v54 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v57 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v49 - v23;
  v25 = *(v2 + 88);
  v26 = *(v25 + 40);
  v27 = *(v2 + 80);
  v51 = v1[2];
  v26(v27, v25);
  v28 = type metadata accessor for DatabaseConfig(0);
  v29 = *(*(v28 - 8) + 48);
  v30 = v29(v17, 1, v28);
  v58 = v24;
  if (v30 == 1)
  {
    sub_21B186488(v17, &qword_27CD6ED28, &unk_21B212870);
    v31 = v52;
    (*(v59 + 56))(v24, 1, 1, v52);
  }

  else
  {
    sub_21B18BFF8(&v17[*(v28 + 20)], v24, &qword_27CD6EC78, &unk_21B215AD0);
    sub_21B20A27C(v17, type metadata accessor for DatabaseConfig);
    v31 = v52;
  }

  (*(v25 + 48))(v27, v25);
  if (v29(v14, 1, v28) == 1)
  {
    sub_21B186488(v14, &qword_27CD6ED28, &unk_21B212870);
    v32 = v59;
    v33 = v57;
    (*(v59 + 56))(v57, 1, 1, v31);
  }

  else
  {
    v34 = &v14[*(v28 + 20)];
    v33 = v57;
    sub_21B18BFF8(v34, v57, &qword_27CD6EC78, &unk_21B215AD0);
    sub_21B20A27C(v14, type metadata accessor for DatabaseConfig);
    v32 = v59;
  }

  v35 = v54;
  v36 = *(v53 + 48);
  v37 = v58;
  sub_21B18BFF8(v58, v54, &qword_27CD6EC78, &unk_21B215AD0);
  sub_21B18BFF8(v33, v35 + v36, &qword_27CD6EC78, &unk_21B215AD0);
  v38 = v33;
  v39 = *(v32 + 48);
  if (v39(v35, 1, v31) == 1)
  {
    sub_21B186488(v38, &qword_27CD6EC78, &unk_21B215AD0);
    sub_21B186488(v37, &qword_27CD6EC78, &unk_21B215AD0);
    v40 = 1;
    if (v39(v35 + v36, 1, v31) == 1)
    {
      v41 = v55;
      return (*(v32 + 56))(v41, v40, 1, v31);
    }

    v41 = v55;
    (*(v32 + 32))(v55, v35 + v36, v31);
LABEL_13:
    v40 = 0;
    return (*(v32 + 56))(v41, v40, 1, v31);
  }

  if (v39(v35 + v36, 1, v31) == 1)
  {
    sub_21B186488(v57, &qword_27CD6EC78, &unk_21B215AD0);
    sub_21B186488(v58, &qword_27CD6EC78, &unk_21B215AD0);
    v41 = v55;
    (*(v32 + 32))(v55, v35, v31);
    goto LABEL_13;
  }

  v43 = *(v32 + 32);
  v44 = v50;
  v43(v50, v35, v31);
  v45 = v49;
  v43(v49, v35 + v36, v31);
  v41 = v55;
  v46 = v56;
  sub_21B20D0A8();
  if (v46)
  {
    v47 = *(v32 + 8);
    v47(v45, v31);
    v47(v44, v31);
    sub_21B186488(v57, &qword_27CD6EC78, &unk_21B215AD0);
    return sub_21B186488(v58, &qword_27CD6EC78, &unk_21B215AD0);
  }

  v48 = *(v32 + 8);
  v48(v45, v31);
  v48(v44, v31);
  sub_21B186488(v57, &qword_27CD6EC78, &unk_21B215AD0);
  sub_21B186488(v58, &qword_27CD6EC78, &unk_21B215AD0);
  v40 = 0;
  return (*(v32 + 56))(v41, v40, 1, v31);
}

uint64_t sub_21B207CA4(uint64_t a1, unint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v24 - v12;
  v14 = sub_21B20D0C8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B2075F0(v13);
  if (!v3)
  {
    v25 = 0;
    v2 = v15 + 48;
    v19 = *(v15 + 48);
    if (v19(v13, 1, v14) == 1)
    {
      sub_21B20D058();
      if (v19(v13, 1, v14) != 1)
      {
        sub_21B186488(v13, &qword_27CD6EC78, &unk_21B215AD0);
      }

      if (*(a1 + 16))
      {
        goto LABEL_10;
      }
    }

    else
    {
      (*(v15 + 32))(v18, v13, v14);
      if (*(a1 + 16))
      {
LABEL_10:
        (*(v15 + 16))(v10, v18, v14);
        (*(v15 + 56))(v10, 0, 1, v14);
        v20 = v25;
        v21 = sub_21B1922E0(a1, a2, v10);
        if (v20)
        {
          sub_21B186488(v10, &qword_27CD6EC78, &unk_21B215AD0);
          (*(v15 + 8))(v18, v14);
          return v2;
        }

        v2 = v21;
        sub_21B186488(v10, &qword_27CD6EC78, &unk_21B215AD0);
LABEL_14:
        (*(v15 + 8))(v18, v14);
        return v2;
      }
    }

    if (a2 >> 62)
    {
      if (sub_21B20D7D8())
      {
        goto LABEL_10;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    v2 = sub_21B20CEB8();
    v23 = v25;
    sub_21B20CE88();
    if (!v23)
    {
      sub_21B20C8B8();
      v2 = sub_21B20C838();
      sub_21B20C898();
    }

    goto LABEL_14;
  }

  return v2;
}

uint64_t sub_21B20803C()
{
  v2 = v0;
  v3 = *v0;
  v4 = sub_21B20CF68();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttachedDatabaseConfig(0);
  v65 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v66 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v67 = &v58 - v16;
  v17 = v2[2];
  v18 = *(v3 + 88);
  v19 = *(v18 + 56);
  v68 = *(v3 + 80);
  v20 = v19();
  sub_21B1F02E4(v20, &v75);

  v21 = v75;
  v22 = v78;
  v23 = sub_21B207CA4(v75, v78);
  if (v1)
  {

    v85 = v76;
    sub_21B186488(&v85, &qword_27CD702B0, &qword_21B219F80);
    v84 = v77;
    sub_21B186488(&v84, &qword_27CD702B8, &qword_21B219F88);

    v83 = v79;
    sub_21B186488(&v83, &qword_27CD702C0, &unk_21B219F90);
    return v23;
  }

  v60 = v21;
  v61 = v22;
  v25 = v67;
  v24 = v68;
  (*(v18 + 40))(v68, v18);
  sub_21B2098C4(v23, 1852399981, 0xE400000000000000, v25);
  sub_21B186488(v25, &qword_27CD6ED28, &unk_21B212870);
  (*(v18 + 48))(v24, v18);
  sub_21B2098C4(v23, 1886217588, 0xE400000000000000, v14);
  v58 = v17;
  sub_21B186488(v14, &qword_27CD6ED28, &unk_21B212870);
  v27 = v77;
  v82 = v77;
  v28 = *(v77 + 16);
  v59 = v23;
  if (v28)
  {
    v74 = MEMORY[0x277D84F90];
    sub_21B1900CC(0, v28, 0);
    v29 = v74;
    v30 = v27 + 32;
    do
    {
      sub_21B1F0CE4(v30, &v69);
      v71 = v69;
      sub_21B17C284(&v70, v72);
      v74 = v29;
      v32 = *(v29 + 16);
      v31 = *(v29 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_21B1900CC((v31 > 1), v32 + 1, 1);
        v29 = v74;
      }

      *(v29 + 16) = v32 + 1;
      v33 = v29 + 56 * v32;
      v34 = v71;
      v35 = v72[0];
      v36 = v72[1];
      *(v33 + 80) = v73;
      *(v33 + 48) = v35;
      *(v33 + 64) = v36;
      *(v33 + 32) = v34;
      v30 += 56;
      --v28;
    }

    while (v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD701F0, &qword_21B219B88);
    *&v71 = sub_21B20D808();

    sub_21B2094E0(v37, 1, &v71);

    v23 = v59;
    sub_21B20C888();
  }

  v38 = v76;
  v81 = v76;
  v39 = *(v76 + 16);
  if (!v39)
  {
LABEL_15:
    v80 = v79;
    v43 = v79 + 64;
    v44 = 1 << *(v79 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & *(v79 + 64);
    v47 = (v44 + 63) >> 6;
    v66 = v79;
    swift_bridgeObjectRetain_n();
    v48 = 0;
    v49 = v18;
    if (v46)
    {
      while (1)
      {
        v50 = v48;
LABEL_22:
        v51 = __clz(__rbit64(v46)) | (v50 << 6);
        v52 = (v66[6] + 16 * v51);
        v53 = *v52;
        v54 = v52[1];
        v55 = *(v66[7] + 8 * v51);

        v67 = v54;
        sub_21B209EB4(v59, v53, v54, v55);
        v46 &= v46 - 1;

        v48 = v50;
        v18 = v49;
        if (!v46)
        {
          goto LABEL_19;
        }
      }
    }

    while (1)
    {
LABEL_19:
      v50 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v50 >= v47)
      {
        break;
      }

      v46 = *(v43 + 8 * v50);
      ++v48;
      if (v46)
      {
        goto LABEL_22;
      }
    }

    sub_21B186488(&v81, &qword_27CD702B0, &qword_21B219F80);
    sub_21B186488(&v82, &qword_27CD702B8, &qword_21B219F88);

    sub_21B186488(&v80, &qword_27CD702C0, &unk_21B219F90);
    sub_21B186488(&v80, &qword_27CD702C0, &unk_21B219F90);
    v23 = v59;
    sub_21B20C868();
    v56 = sub_21B20CE58();

    if (v56)
    {
      sub_21B20C848();
      swift_getObjectType();
      v57 = v62;
      sub_21B20D128();
      swift_unknownObjectRelease();
      (*(v18 + 72))(v56, v57, v68, v18);
      (*(v63 + 8))(v57, v64);
    }

    return v23;
  }

  v40 = 0;
  v41 = v68;
  while (v40 < *(v38 + 16))
  {
    v42 = v66;
    sub_21B209C34(v38 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v40, v66);
    sub_21B209C98(v23, v42, v41, v18);
    ++v40;
    sub_21B20A27C(v42, type metadata accessor for AttachedDatabaseConfig);
    if (v39 == v40)
    {
      goto LABEL_15;
    }
  }

LABEL_27:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21B208AB0(void *a1)
{
  v2 = sub_21B20CF28();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  result = sub_21B20CF18();
  if (!v1)
  {
    v12 = *(v3 + 8);
    v12(v10, v2);
    sub_21B20CEF8();
    return (v12)(v7, v2);
  }

  return result;
}

uint64_t PoirotTask.getUnsafeSQLiteDatabaseConnection()()
{
  v1 = PoirotTask.getUDFContext()();
  if (v0 || !v1)
  {
    return 0;
  }

  sub_21B20C868();

  v3 = sub_21B20CE58();

  return v3;
}

uint64_t PoirotTask.getUDFContext()()
{
  v2 = sub_21B206F78();
  if (!v1)
  {
    v0 = *(v2 + 88);
  }

  return v0;
}

uint64_t PoirotTask.perform(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v33 = *(*v1 + 88);
  v35 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21B20D5D8();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v32 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](v9, v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v32 - v18;
  v20 = *(v7 + 16);
  v34 = a1;
  v20(v11, a1, v6);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v11, v6);
  }

  else
  {
    (*(v12 + 32))(v19, v11, AssociatedTypeWitness);
    v21 = v33;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    CommandURI.init(_:)(&v36);
    v24 = v37;
    if (v37)
    {
      v25 = v38;
      v34 = v39;
      v26 = v36;
      type metadata accessor for CommandHandler(0, v35, v21, v23);
      v36 = v26;
      v37 = v24;
      v38 = v25;
      v39 = v34;
      (*(v12 + 16))(v16, v19, AssociatedTypeWitness);
      sub_21B1B0748(&v36, v2, v16);

      sub_21B1B086C();
      (*(v12 + 8))(v19, AssociatedTypeWitness);
    }

    (*(v12 + 8))(v19, AssociatedTypeWitness);
  }

  v27 = v40;
  result = sub_21B20710C(v34);
  if (v27)
  {
    return result;
  }

  v30 = result;
  v31 = v29;
  sub_21B206F78();
  sub_21B195940(v30, v31, 0, 0);
  swift_unknownObjectRelease();
}

uint64_t PoirotTask.conclude(with:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  v6 = *(*v3 + 80);
  v37 = *(*v3 + 88);
  v39 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_21B20D5D8();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v34 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x28223BE20](v11, v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v34 - v20;
  v22 = *(v9 + 16);
  v38 = a1;
  v22(v13, a1, v8);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v13, v8);
  }

  else
  {
    (*(v14 + 32))(v21, v13, AssociatedTypeWitness);
    v23 = v37;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    CommandURI.init(_:)(&v40);
    v26 = v41;
    if (v41)
    {
      v27 = v42;
      v38 = v43;
      v28 = v40;
      type metadata accessor for CommandHandler(0, v39, v23, v25);
      v40 = v28;
      v41 = v26;
      v42 = v27;
      v43 = v38;
      (*(v14 + 16))(v18, v21, AssociatedTypeWitness);
      sub_21B1B0748(&v40, v4, v18);

      sub_21B1B086C();
      (*(v14 + 8))(v21, AssociatedTypeWitness);
    }

    (*(v14 + 8))(v21, AssociatedTypeWitness);
  }

  v29 = v44;
  result = sub_21B20710C(v38);
  if (v29)
  {
    return result;
  }

  v32 = result;
  v33 = v31;
  sub_21B206F78();
  sub_21B195940(v32, v33, v35, v36);
  swift_unknownObjectRelease();
}

uint64_t PoirotTask.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t PoirotTask.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_21B2094E0(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_21B18BFF8(a1 + 32, &v44, &qword_27CD6EE58, &qword_21B212348);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_21B17C284(v46, v41);
  v9 = *a3;
  v10 = sub_21B1B9778(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_21B203350(v15, a2 & 1);
    v10 = sub_21B1B9778(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_21B20DBF8();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_21B204D94();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v41);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_21B17C284(v41, v21[7] + 40 * v10);
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v25 = a1 + 88;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_21B18BFF8(v25, &v44, &qword_27CD6EE58, &qword_21B212348);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_21B17C284(v46, v41);
      v29 = *a3;
      v30 = sub_21B1B9778(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_21B203350(v34, 1);
        v30 = sub_21B1B9778(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_21B17C284(v41, v37[7] + 40 * v30);
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 56;
      if (v4 == v26)
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
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](39, 0xE100000000000000);
  sub_21B20D7C8();
  __break(1u);
}

uint64_t sub_21B2098C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v6 = sub_21B20CF28();
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for DatabaseConfig(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B18BFF8(a4, v13, &qword_27CD6ED28, &unk_21B212870);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_21B186488(v13, &qword_27CD6ED28, &unk_21B212870);
  }

  result = sub_21B191DB4(v13, v18);
  if (v18[8] == 1)
  {
    return sub_21B20A27C(v18, type metadata accessor for DatabaseConfig);
  }

  v20 = *v18;
  if ((*v18 - 0x20000000000000) >> 54 == 1023)
  {
    v21 = -1024 * v20;
    if (!__OFSUB__(0, v20 << 10))
    {
      sub_21B20C868();
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_21B20D6A8();

      v29 = 0x20414D47415250;
      v30 = 0xE700000000000000;
      MEMORY[0x21CEEBBB0](v27, v28);
      MEMORY[0x21CEEBBB0](0x735F65686361632ELL, 0xED0000203D657A69);
      v31 = v21;
      v22 = sub_21B20DAB8();
      MEMORY[0x21CEEBBB0](v22);

      sub_21B20CE98();
      if (v4)
      {
        sub_21B20A27C(v18, type metadata accessor for DatabaseConfig);
      }

      sub_21B20CF08();
      (*(v24 + 8))(v9, v25);
      return sub_21B20A27C(v18, type metadata accessor for DatabaseConfig);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B209C34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachedDatabaseConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B209C98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a3;
  v17[2] = a4;
  v6 = sub_21B20CF28();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  sub_21B20C868();
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_21B20D6A8();

  v19 = 0xD000000000000011;
  v20 = 0x800000021B210970;
  v10 = type metadata accessor for AttachedDatabaseConfig(0);
  sub_21B20C678();
  sub_21B20A224();
  v11 = sub_21B20DAB8();
  MEMORY[0x21CEEBBB0](v11);

  MEMORY[0x21CEEBBB0](0x2053412027, 0xE500000000000000);
  v12 = *a2;
  v13 = a2[1];
  MEMORY[0x21CEEBBB0](*a2, v13);
  v14 = v21;
  sub_21B20CE98();

  if (!v14)
  {
    v16 = v18;
    sub_21B20CF08();
    (*(v16 + 8))(v9, v6);
    return sub_21B2098C4(v17[0], v12, v13, a2 + *(v10 + 24));
  }

  return result;
}

uint64_t sub_21B209EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21B20CF28();
  v31 = *(v8 - 8);
  v32 = v8;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v26 - v14;
  v29 = a4;
  v16 = sub_21B20D458();
  v30 = a1;
  sub_21B20C868();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC98, &unk_21B219FA0);
  v34 = v17;
  v18 = sub_21B20A1A4();
  v35 = v18;
  v33[0] = v16;

  v19 = v36;
  sub_21B20CE68();
  if (v19)
  {

    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    v27 = v17;
    v28 = a2;
    v36 = a3;
    v21 = v31;
    v22 = v32;

    __swift_destroy_boxed_opaque_existential_1(v33);
    sub_21B20CF08();
    v23 = *(v21 + 8);
    v23(v15, v22);
    sub_21B20C868();
    v34 = v27;
    v35 = v18;
    v33[0] = v16;
    sub_21B19734C(MEMORY[0x277D84F90]);
    sub_21B20CE78();

    v24 = __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x28223BE20](v24, v25);
    *(&v26 - 2) = v12;
    sub_21B1F26D4(sub_21B20A208, (&v26 - 4), v29);
    return (v23)(v12, v22);
  }
}

unint64_t sub_21B20A1A4()
{
  result = qword_27CD702C8;
  if (!qword_27CD702C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6EC98, &unk_21B219FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD702C8);
  }

  return result;
}

unint64_t sub_21B20A224()
{
  result = qword_27CD702D0;
  if (!qword_27CD702D0)
  {
    sub_21B20C678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD702D0);
  }

  return result;
}

uint64_t sub_21B20A27C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *PoirotTask.getBiomeDatabase()()
{
  v2 = PoirotTask.getUDFContext()();
  if (v1)
  {
    return v0;
  }

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BiomeUDFContext(0);
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    v0 = 0;
    goto LABEL_8;
  }

  v0 = *(v3 + qword_27CD6EED0);
  if (v0)
  {
    v4 = v0;
LABEL_8:

    return v0;
  }

  result = sub_21B20D7C8();
  __break(1u);
  return result;
}

uint64_t ExecutionLog.recipeLog.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_21B20A3DC(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_21B20A3DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 1)
  {
    sub_21B1F3760(result, a2, a3, a4, a5);
  }

  return result;
}

__n128 ExecutionLog.init(recipeLog:blockLogs:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  result = *(a1 + 32);
  *(a3 + 32) = result;
  *(a3 + 48) = v3;
  *(a3 + 56) = a2;
  return result;
}

uint64_t sub_21B20A444()
{
  if (*v0)
  {
    return 0x676F4C6B636F6C62;
  }

  else
  {
    return 0x6F4C657069636572;
  }
}

uint64_t sub_21B20A484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F4C657069636572 && a2 == 0xE900000000000067;
  if (v6 || (sub_21B20DB28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676F4C6B636F6C62 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21B20DB28();

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

uint64_t sub_21B20A564(uint64_t a1)
{
  v2 = sub_21B20A820();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B20A5A0(uint64_t a1)
{
  v2 = sub_21B20A820();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExecutionLog.encode(to:)(void *a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD702D8, &qword_21B219FB8);
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v3);
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v9 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v19 = v1[7];
  v20 = v6;
  v11 = a1[3];
  v22 = a1[4];
  v23 = &v18 - v12;
  v21 = __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = v20;
  sub_21B20A3DC(v4, v5, v7, v20, v9, v8, v10);
  sub_21B20A820();
  sub_21B20DD08();
  v27 = v4;
  v28 = v5;
  v29 = v7;
  v30 = v13;
  v31 = v9;
  v32 = v8;
  v33 = v10;
  v14 = v24;
  v34 = 0;
  sub_21B1F6E70();
  v15 = v23;
  v16 = v25;
  sub_21B20D9D8();
  sub_21B20A874(v27, v28, v29, v30, v31, v32, v33);
  if (!v16)
  {
    v27 = v19;
    v34 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD702E8, &qword_21B219FC0);
    sub_21B20ABFC(&qword_27CD702F0, sub_21B1F6EC4, MEMORY[0x277D83948]);
    sub_21B20DA48();
  }

  return (*(v26 + 8))(v15, v14);
}

unint64_t sub_21B20A820()
{
  result = qword_27CD702E0;
  if (!qword_27CD702E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD702E0);
  }

  return result;
}

uint64_t sub_21B20A874(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 1)
  {
    sub_21B198098(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t ExecutionLog.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD702F8, &qword_21B219FC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B20A820();
  sub_21B20DCD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v26[0]) = 0;
  sub_21B20ABA8();
  sub_21B20D8B8();
  v11 = v29;
  v10 = v30;
  v23 = v31;
  v24 = v32;
  v25 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD702E8, &qword_21B219FC0);
  v35[0] = 1;
  sub_21B20ABFC(&qword_27CD70308, sub_21B20AC74, MEMORY[0x277D83978]);
  sub_21B20D918();
  (*(v6 + 8))(v9, v5);
  v21 = v36;
  v22 = v11;
  *&v26[0] = v11;
  *(&v26[0] + 1) = v10;
  v12 = v10;
  v14 = v23;
  v13 = v24;
  v26[1] = v23;
  v15 = *(&v24 + 1);
  v16 = v25;
  v27 = v24;
  *&v28 = v25;
  *(&v28 + 1) = v36;
  v17 = v23;
  *a2 = v26[0];
  a2[1] = v17;
  v18 = v28;
  a2[2] = v27;
  a2[3] = v18;
  sub_21B20ACC8(v26, &v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29 = v22;
  v30 = v12;
  v31 = v14;
  *&v32 = v13;
  *(&v32 + 1) = v15;
  v33 = v16;
  v34 = v21;
  return sub_21B20AD00(&v29);
}

unint64_t sub_21B20ABA8()
{
  result = qword_27CD70300;
  if (!qword_27CD70300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70300);
  }

  return result;
}

uint64_t sub_21B20ABFC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD702E8, &qword_21B219FC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B20AC74()
{
  result = qword_27CD70310;
  if (!qword_27CD70310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70310);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PoirotBlocks18RecipeExecutionLogVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21B20AD98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B20ADE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21B20AE54()
{
  result = qword_27CD70318;
  if (!qword_27CD70318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70318);
  }

  return result;
}

unint64_t sub_21B20AEAC()
{
  result = qword_27CD70320;
  if (!qword_27CD70320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70320);
  }

  return result;
}

unint64_t sub_21B20AF04()
{
  result = qword_27CD70328;
  if (!qword_27CD70328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70328);
  }

  return result;
}

uint64_t ExecutionOutputPayload.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21B20C728();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ExecutionOutputPayload.command.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExecutionOutputPayload(0) + 20));

  return v1;
}

uint64_t type metadata accessor for ExecutionOutputPayload(uint64_t a1)
{
  result = qword_27CD70370;
  if (!qword_27CD70370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ExecutionOutputPayload.mlExtensionDictionary.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExecutionOutputPayload(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_21B20B09C(v4, v5, v6);
}

uint64_t sub_21B20B09C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_21B1A7C74(result, a2, a3);
  }

  return result;
}

uint64_t ExecutionOutputPayload.logs.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ExecutionOutputPayload(0) + 32));
  v5 = v3[3];
  v10 = v3[2];
  v4 = v10;
  v11 = v5;
  v6 = v3[1];
  v9[0] = *v3;
  v9[1] = v6;
  *a1 = v9[0];
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v5;
  return sub_21B18BFF8(v9, &v8, &qword_27CD70330, &qword_21B21A1C8);
}

__n128 ExecutionOutputPayload.init(command:mlExtensionDictionary:executionParameters:logs:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = a3[1];
  v13 = *(a3 + 16);
  sub_21B20C718();
  v14 = type metadata accessor for ExecutionOutputPayload(0);
  v15 = (a6 + v14[5]);
  *v15 = a1;
  v15[1] = a2;
  v16 = a6 + v14[6];
  *v16 = v11;
  *(v16 + 8) = v12;
  *(v16 + 16) = v13;
  v17 = v14[7];
  sub_21B20B258(a4, a6 + v17);
  v18 = type metadata accessor for PoirotToolTaskParameters(0);
  (*(*(v18 - 8) + 56))(a6 + v17, 0, 1, v18);
  v19 = a6 + v14[8];
  v20 = *(a5 + 16);
  *v19 = *a5;
  *(v19 + 16) = v20;
  result = *(a5 + 32);
  v22 = *(a5 + 48);
  *(v19 + 32) = result;
  *(v19 + 48) = v22;
  return result;
}

uint64_t sub_21B20B258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PoirotToolTaskParameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B20B2BC()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 1936158572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x646E616D6D6F63;
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

uint64_t sub_21B20B360@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21B20C144(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21B20B388(uint64_t a1)
{
  v2 = sub_21B20B778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B20B3C4(uint64_t a1)
{
  v2 = sub_21B20B778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExecutionOutputPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD70338, &qword_21B21A1D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B20B778();
  sub_21B20DD08();
  LOBYTE(v26) = 0;
  sub_21B20C728();
  sub_21B20BD9C(&qword_27CD70348, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_21B20DA48();
  if (!v2)
  {
    v10 = type metadata accessor for ExecutionOutputPayload(0);
    LOBYTE(v26) = 1;
    sub_21B20D9E8();
    v11 = v3 + *(v10 + 24);
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    *&v26 = *v11;
    *(&v26 + 1) = v12;
    LOBYTE(v27) = v13;
    LOBYTE(v22) = 2;
    sub_21B20B09C(v26, v12, v13);
    sub_21B1ACF78();
    sub_21B20D9D8();
    sub_21B1C8418(v26, *(&v26 + 1), v27);
    v31 = 3;
    type metadata accessor for PoirotToolTaskParameters(0);
    sub_21B20BD9C(&qword_27CD6EAC8, type metadata accessor for PoirotToolTaskParameters, &protocol conformance descriptor for PoirotToolTaskParameters);
    sub_21B20D9D8();
    v14 = (v3 + *(v10 + 32));
    v15 = v14[1];
    v26 = *v14;
    v27 = v15;
    v16 = v14[3];
    v18 = *v14;
    v17 = v14[1];
    v28 = v14[2];
    v29 = v16;
    v22 = v18;
    v23 = v17;
    v19 = v14[3];
    v24 = v14[2];
    v25 = v19;
    v30 = 4;
    sub_21B18BFF8(&v26, v21, &qword_27CD70330, &qword_21B21A1C8);
    sub_21B20B7CC();
    sub_21B20D9D8();
    v21[0] = v22;
    v21[1] = v23;
    v21[2] = v24;
    v21[3] = v25;
    sub_21B186488(v21, &qword_27CD70330, &qword_21B21A1C8);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_21B20B778()
{
  result = qword_27CD70340;
  if (!qword_27CD70340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70340);
  }

  return result;
}

unint64_t sub_21B20B7CC()
{
  result = qword_27CD70350;
  if (!qword_27CD70350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70350);
  }

  return result;
}

uint64_t ExecutionOutputPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB0, &qword_21B210EF0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v31 - v5;
  v7 = sub_21B20C728();
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD70358, &qword_21B21A1D8);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ExecutionOutputPayload(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B20B778();
  v36 = v12;
  v17 = v38;
  sub_21B20DCD8();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v6;
  v18 = v33;
  LOBYTE(v39) = 0;
  sub_21B20BD9C(&qword_27CD70360, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v19 = v34;
  sub_21B20D918();
  (*(v18 + 32))(v16, v19, v7);
  LOBYTE(v39) = 1;
  v20 = sub_21B20D8C8();
  v21 = &v16[v13[5]];
  *v21 = v20;
  v21[1] = v22;
  v43 = 2;
  sub_21B1ACF24();
  v34 = 0;
  sub_21B20D8B8();
  v23 = v35;
  v24 = v40;
  v25 = &v16[v13[6]];
  *v25 = v39;
  v25[16] = v24;
  type metadata accessor for PoirotToolTaskParameters(0);
  LOBYTE(v39) = 3;
  sub_21B20BD9C(&qword_27CD6EAE0, type metadata accessor for PoirotToolTaskParameters, &protocol conformance descriptor for PoirotToolTaskParameters);
  v26 = v38;
  sub_21B20D8B8();
  sub_21B17DA74(v26, &v16[v13[7]]);
  v43 = 4;
  sub_21B20BDE4();
  sub_21B20D8B8();
  (*(v23 + 8))(v36, v37);
  v27 = &v16[v13[8]];
  v28 = v40;
  *v27 = v39;
  *(v27 + 1) = v28;
  v29 = v42;
  *(v27 + 2) = v41;
  *(v27 + 3) = v29;
  sub_21B20BE38(v16, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21B20BE9C(v16);
}

uint64_t sub_21B20BD9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21B20BDE4()
{
  result = qword_27CD70368;
  if (!qword_27CD70368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70368);
  }

  return result;
}

uint64_t sub_21B20BE38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecutionOutputPayload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B20BE9C(uint64_t a1)
{
  v2 = type metadata accessor for ExecutionOutputPayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21B20BF50(uint64_t a1)
{
  sub_21B20C728();
  if (v1 <= 0x3F)
  {
    sub_21B17DF1C(319, &qword_27CD70380, &type metadata for AnyCodable);
    if (v2 <= 0x3F)
    {
      sub_21B17DEC4(319);
      if (v3 <= 0x3F)
      {
        sub_21B17DF1C(319, &qword_27CD70388, &type metadata for ExecutionLog);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_21B20C040()
{
  result = qword_27CD70390;
  if (!qword_27CD70390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70390);
  }

  return result;
}

unint64_t sub_21B20C098()
{
  result = qword_27CD70398;
  if (!qword_27CD70398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70398);
  }

  return result;
}

unint64_t sub_21B20C0F0()
{
  result = qword_27CD703A0;
  if (!qword_27CD703A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD703A0);
  }

  return result;
}

uint64_t sub_21B20C144(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021B210990 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021B2109B0 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1936158572 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_21B20DB28();

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