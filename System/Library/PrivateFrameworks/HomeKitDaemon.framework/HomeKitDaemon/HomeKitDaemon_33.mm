uint64_t sub_229894C14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820E8, &unk_22A586CF0);
  v39 = v4;
  result = sub_22A4DE3EC();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_229893410(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22A4DD4EC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_229894FF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880938, &qword_22A586CE0);
  result = sub_22A4DE3EC();
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

      result = sub_22A4DDECC();
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

uint64_t sub_229895274(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820E0, &qword_22A586CE8);
  v40 = v4;
  result = sub_22A4DE3EC();
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
      sub_229893410(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22A4DD4EC();
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

uint64_t sub_229895634(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820C8, &qword_22A586CC8);
  v34 = v4;
  result = sub_22A4DE3EC();
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

      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
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

uint64_t sub_2298958DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882118, qword_22A586D10);
  v38 = v4;
  result = sub_22A4DE3EC();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v34 = v2;
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
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v38)
      {
        (*v39)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v35)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
        swift_unknownObjectRetain();
      }

      sub_229893410(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22A4DD4EC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v39)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_229895CB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CDE0, &unk_22A577C60);
  v44 = v4;
  result = sub_22A4DE3EC();
  v10 = result;
  if (*(v8 + 16))
  {
    v49 = v5;
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
    v18 = v45;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48) + *(v43 + 72) * v25;
      v27 = 16 * v25;
      v47 = *(v43 + 72);
      v48 = v22;
      if (v44)
      {
        (*v46)(v18, v26, v49);
        v28 = *(v8 + 56) + v27;
        v29 = *v28;
        v30 = *(v28 + 8);
      }

      else
      {
        (*v41)(v18, v26, v49);
        v31 = *(v8 + 56) + v27;
        v29 = *v31;
        v30 = *(v31 + 8);
        sub_229792944(*v31, v30);
      }

      sub_229893410(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22A4DD4EC();
      v32 = -1 << *(v10 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v17 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v18 = v45;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v17 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v17 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v18 = v45;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v46)(*(v10 + 48) + v47 * v19, v18, v49);
      v20 = *(v10 + 56) + 16 * v19;
      *v20 = v29;
      *(v20 + 8) = v30;
      ++*(v10 + 16);
      v8 = v42;
      v15 = v48;
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

    v39 = 1 << *(v8 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v12, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v39;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_2298960AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8820B8, &unk_22A586CB8);
  result = sub_22A4DE3EC();
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
      }

      result = sub_22A4DDECC();
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

uint64_t sub_22989631C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820B0, &qword_22A586CB0);
  v39 = v4;
  result = sub_22A4DE3EC();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_229893410(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22A4DD4EC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2298966F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820A0, &qword_22A586CA0);
  v31 = v4;
  result = sub_22A4DE3EC();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_22A4DE77C();
      MEMORY[0x22AAD1960](v20);
      result = sub_22A4DE7BC();
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_229896984(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820A8, &qword_22A586CA8);
  v31 = v4;
  result = sub_22A4DE3EC();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_22A4DE77C();
      MEMORY[0x22AAD1960](v20);
      result = sub_22A4DE7BC();
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_229896C24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_22A4DE3EC();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v4;
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
      v23 = *(*(v7 + 56) + v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
      }

      result = sub_22A4DDECC();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + v17) = v23;
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
      v32 = 1 << *(v7 + 32);
      if (v32 >= 64)
      {
        bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v32;
      }

      *(v7 + 16) = 0;
    }

    v5 = v33;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

uint64_t sub_229896EA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v7;
  result = sub_22A4DE3EC();
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
        sub_22957F1C4(v27, v38);
      }

      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
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

uint64_t sub_229897178(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDD0, &qword_22A577C50);
  v34 = v4;
  result = sub_22A4DE3EC();
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

        swift_unknownObjectRetain();
      }

      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
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

uint64_t sub_229897420(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882070, &qword_22A586C60);
  v34 = v4;
  result = sub_22A4DE3EC();
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
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
      *(*(v7 + 56) + v15) = v24;
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

uint64_t sub_2298976C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882078, &unk_22A586C68);
  v37 = v4;
  result = sub_22A4DE3EC();
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

      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
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

uint64_t sub_229897980(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for HomePassData(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D882060, &unk_22A586C50);
  v40 = v4;
  result = sub_22A4DE3EC();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_22989B1E4(v28, v41, type metadata accessor for HomePassData);
      }

      else
      {
        sub_22989B24C(v28, v41, type metadata accessor for HomePassData);
      }

      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
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
      *v18 = v25;
      v18[1] = v26;
      result = sub_22989B1E4(v41, *(v9 + 56) + v27 * v17, type metadata accessor for HomePassData);
      ++*(v9 + 16);
      v7 = v38;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
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

void sub_229897D70(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_22A4DE3DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
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
        v25 = 32 * v20;
        sub_2295404B0(*(v5 + 56) + 32 * v20, v29);
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
}

char *sub_229897F38()
{
  v1 = v0;
  v2 = _s13PresenceStateOMa(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22A4DB7DC();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882080, &unk_22A586C78);
  v5 = *v0;
  v6 = sub_22A4DE3DC();
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
        sub_22989B24C(*(v5 + 56) + v26, v35, _s13PresenceStateOMa);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_22989B1E4(v25, *(v27 + 56) + v26, _s13PresenceStateOMa);
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

char *sub_229898264()
{
  v1 = v0;
  v2 = _s28DefaultRoomPresencePublisherC8ObserverVMa(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22A4DB7DC();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882088, &qword_22A586C88);
  v5 = *v0;
  v6 = sub_22A4DE3DC();
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
        sub_22989B24C(*(v5 + 56) + v26, v35, _s28DefaultRoomPresencePublisherC8ObserverVMa);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_22989B1E4(v25, *(v27 + 56) + v26, _s28DefaultRoomPresencePublisherC8ObserverVMa);
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

void sub_229898590()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  MEMORY[0x28223BE20](v2);
  v41 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882110, &qword_22A57DD30);
  v5 = *v0;
  v6 = sub_22A4DE3DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v44 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = v43 + 32;
    v38 = v43 + 16;
    v39 = v16;
    v40 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v45 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v22 = v42;
        v21 = v43;
        v23 = *(v43 + 72) * v20;
        v24 = v41;
        (*(v43 + 16))(v41, *(v5 + 48) + v23, v42);
        v25 = *(v5 + 56);
        v26 = 24 * v20;
        v27 = (v25 + 24 * v20);
        v28 = *v27;
        v29 = v27[1];
        v30 = v27[2];
        v31 = v44;
        (*(v21 + 32))(*(v44 + 48) + v23, v24, v22);
        v32 = (*(v31 + 56) + v26);
        v5 = v40;
        *v32 = v28;
        v32[1] = v29;
        v32[2] = v30;
        v33 = v30;

        v16 = v39;
        v15 = v45;
      }

      while (v45);
    }

    v18 = v11;
    v7 = v44;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v35;
        goto LABEL_18;
      }

      v19 = *(v36 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v45 = (v19 - 1) & v19;
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

void sub_229898834()
{
  v1 = v0;
  v35 = sub_22A4DBB4C();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882108, &unk_22A586D00);
  v3 = *v0;
  v4 = sub_22A4DE3DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
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
}

id sub_229898ADC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22A4DE3DC();
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

char *sub_229898C38()
{
  v1 = v0;
  v33 = sub_22A4DB7DC();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820E8, &unk_22A586CF0);
  v3 = *v0;
  v4 = sub_22A4DE3DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

void *sub_229898EB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880938, &qword_22A586CE0);
  v2 = *v0;
  v3 = sub_22A4DE3DC();
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

char *sub_229899030()
{
  v1 = v0;
  v31 = sub_22A4DB7DC();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820E0, &qword_22A586CE8);
  v3 = *v0;
  v4 = sub_22A4DE3DC();
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

void sub_2298992A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820C8, &qword_22A586CC8);
  v2 = *v0;
  v3 = sub_22A4DE3DC();
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
}

void *sub_229899410()
{
  v1 = v0;
  v30 = sub_22A4DB7DC();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882118, qword_22A586D10);
  v3 = *v0;
  v4 = sub_22A4DE3DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; result = swift_unknownObjectRetain())
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
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

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
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

char *sub_229899690()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CDE0, &unk_22A577C60);
  v5 = *v0;
  v6 = sub_22A4DE3DC();
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
        v27 = v25 + 16 * v20;
        v28 = *v27;
        v29 = *(v27 + 8);
        v30 = v40;
        (*(v22 + 32))(*(v40 + 48) + v23, v24, v21);
        v31 = *(v30 + 56) + v26;
        v5 = v36;
        *v31 = v28;
        *(v31 + 8) = v29;
        result = sub_229792944(v28, v29);
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

void sub_229899924()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8820B8, &unk_22A586CB8);
  v2 = *v0;
  v3 = sub_22A4DE3DC();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

char *sub_229899A88()
{
  v1 = v0;
  v31 = sub_22A4DB7DC();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820B0, &qword_22A586CB0);
  v3 = *v0;
  v4 = sub_22A4DE3DC();
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
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
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

id sub_229899CFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820A0, &qword_22A586CA0);
  v2 = *v0;
  v3 = sub_22A4DE3DC();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

id sub_229899E58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820A8, &qword_22A586CA8);
  v2 = *v0;
  v3 = sub_22A4DE3DC();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

id sub_229899FC8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22A4DE3DC();
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
        v21 = *(*(v4 + 56) + v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + v19) = v21;
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

void sub_22989A13C(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_22A4DE3DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
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
        sub_22957F1C4(*(v5 + 56) + 40 * v20, v29);
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
}

void *sub_22989A2E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDD0, &qword_22A577C50);
  v2 = *v0;
  v3 = sub_22A4DE3DC();
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

void sub_22989A450()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882078, &unk_22A586C68);
  v2 = *v0;
  v3 = sub_22A4DE3DC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void sub_22989A5C8()
{
  v1 = v0;
  v2 = type metadata accessor for HomePassData(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D882060, &unk_22A586C50);
  v4 = *v0;
  v5 = sub_22A4DE3DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
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
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_22989B24C(*(v4 + 56) + v26, v30, type metadata accessor for HomePassData);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_22989B1E4(v25, *(v27 + 56) + v26, type metadata accessor for HomePassData);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }
}

uint64_t sub_22989A820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277D837D0];
  v30 = MEMORY[0x277D837D0];
  v31 = &off_283CDFC68;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  v11 = *a6;
  v13 = sub_229543DBC(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_229557188(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_22989A13C(&qword_27D882010, &qword_22A586BF0, sub_229557188);
    goto LABEL_7;
  }

  sub_229896EA8(v16, a5 & 1, &qword_27D882010, &qword_22A586BF0, sub_229557188);
  v22 = sub_229543DBC(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v29, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_22989AE80(v13, a3, a4, *v26, v26[1], v19);

  return __swift_destroy_boxed_opaque_existential_0(&v29);
}

uint64_t sub_22989AA58(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LODWORD(v23) = a1;
  v24 = MEMORY[0x277D84CC0];
  v25 = &off_283CDFC58;
  v9 = *a5;
  v11 = sub_229543DBC(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_229557188(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_22989A13C(&qword_27D882010, &qword_22A586BF0, sub_229557188);
    goto LABEL_7;
  }

  sub_229896EA8(v14, a4 & 1, &qword_27D882010, &qword_22A586BF0, sub_229557188);
  v20 = sub_229543DBC(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_0(&v23, MEMORY[0x277D84CC0]);
  sub_22989AF10(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v23);
}

uint64_t sub_22989AC04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v15 = *a5;
  v17 = sub_229543DBC(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      __swift_destroy_boxed_opaque_existential_0(v24);
      return sub_229557188(&v33, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_22989A13C(&qword_27D882010, &qword_22A586BF0, sub_229557188);
    goto LABEL_7;
  }

  sub_229896EA8(v20, a4 & 1, &qword_27D882010, &qword_22A586BF0, sub_229557188);
  v26 = sub_229543DBC(a2, a3);
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = __swift_mutable_project_boxed_opaque_existential_0(&v33, v34);
  MEMORY[0x28223BE20](v28);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  sub_22989AFA0(v17, a2, a3, v30, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_0(&v33);
}

uint64_t sub_22989AE80(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  v14 = &off_283CDFC68;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_229557188(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_22989AF10(unint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  LODWORD(v11) = a4;
  v12 = MEMORY[0x277D84CC0];
  v13 = &off_283CDFC58;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_229557188(&v11, a5[7] + 40 * a1);
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

uint64_t sub_22989AFA0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_229557188(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_22989B078(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_229892570(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_22989B17C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22989B1E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22989B24C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22989B2B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = [v4 scheduleRules];
  sub_22989B4A0();
  v9 = sub_22A4DD83C();

  if (v9 >> 62)
  {
    v10 = sub_22A4DE0EC();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 == 1)
  {
    v11 = [v4 scheduleRules];
    v12 = sub_22A4DD83C();

    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x22AAD13F0](0, v12);
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v13 = *(v12 + 32);
    }

    v16 = v13;

    sub_22965882C(a1, a2, a3);
  }

  else
  {
    v14 = sub_22A4DB74C();
    v15 = *(*(v14 - 8) + 56);

    v15(a3, 1, 1, v14);
  }
}

unint64_t sub_22989B4A0()
{
  result = qword_27D87CD80;
  if (!qword_27D87CD80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87CD80);
  }

  return result;
}

id sub_22989B52C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HindsightCloudShareManagerEnergyKitDataSource();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22989B8C4(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_22A4DB7DC();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22989B988, 0, 0);
}

uint64_t sub_22989B988()
{
  v1 = [*(v0 + 112) home];
  if (v1 && (v2 = v1, v3 = [v1 administratorHandler], *(v0 + 144) = v3, v2, v3))
  {
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = *(v0 + 120);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v21 = *MEMORY[0x277CD0CB0];
    v9 = [*(v0 + 112) messageTargetUUID];
    sub_22A4DB79C();

    v10 = objc_allocWithZone(MEMORY[0x277D0F820]);
    v11 = sub_22A4DB77C();
    v12 = [v10 initWithTarget_];
    *(v0 + 152) = v12;

    (*(v4 + 8))(v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v14;
    *(inited + 48) = v8;
    *(inited + 56) = v7;

    v15 = sub_22956AC5C(inited);
    *(v0 + 160) = v15;
    swift_setDeallocating();
    sub_2295ED9B4(inited + 32);
    v16 = swift_task_alloc();
    *(v0 + 168) = v16;
    *v16 = v0;
    v16[1] = sub_22989BC50;

    return sub_2297983DC(v21, v12, v15);
  }

  else
  {
    v18 = objc_opt_self();
    v19 = sub_22A4DD5AC();
    [v18 hmErrorWithCode:3 description:v19 reason:0 suggestion:0 underlyingError:0];

    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_22989BC50()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_22989BDDC;
  }

  else
  {
    v4 = *(v2 + 152);

    v3 = sub_22989BD70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22989BD70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22989BDDC()
{
  v1 = v0[19];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22989BE54(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_229562F68(0, &qword_27D8821B0, off_2786660D0);
  sub_22A4DD83C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8821A0, &qword_22A586DA0);
  return sub_22A4DD8FC();
}

uint64_t sub_22989BED4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2297088A4;

  return sub_22989C8CC(a1);
}

void sub_22989BF80(uint64_t a1)
{
  sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  sub_22989C864();
  v2 = sub_22A4DDB5C();
  [v1 stateObserverStoppedMonitoringCharacteristics_];
}

id sub_22989C050(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22A4DB77C();
  v4 = [v2 accessoryWithUUID_];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 mediaProfile];

      return v6;
    }
  }

  return 0;
}

id sub_22989C0EC()
{
  result = [v0 isCurrentDevicePrimaryResident];
  if (result)
  {
    result = [v0 actionSetStateSubscriptionManager];
    if (result)
    {
      v2 = result;
      v3 = sub_22A4DB77C();
      v4 = [v2 isMonitoringActionSet_];
      swift_unknownObjectRelease();

      return v4;
    }
  }

  return result;
}

id sub_22989C17C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22A4DB77C();
  v4 = [v2 actionSetWithUUID_];

  return v4;
}

void sub_22989C1D4()
{
  v1 = [v0 uuid];
  sub_22A4DB79C();
}

id sub_22989C234()
{
  v1 = [v0 workQueue];

  return v1;
}

id sub_22989C26C()
{
  v0 = objc_opt_self();
  v1 = sub_22A4DB77C();
  v2 = [v0 matterDeviceControllerWithUUID_];

  return v2;
}

void *sub_22989C2CC()
{
  v15 = sub_22A4DB7DC();
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 actionSets];
  if (!result)
  {
    goto LABEL_17;
  }

  v5 = result;
  sub_229562F68(0, &qword_281401C20, off_278666020);
  v6 = sub_22A4DD83C();

  if (v6 >> 62)
  {
    v7 = sub_22A4DE0EC();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_14:

    return MEMORY[0x277D84F90];
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_4:
  v16 = MEMORY[0x277D84F90];
  result = sub_22958345C(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v16;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AAD13F0](v8, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 uuid];
      sub_22A4DB79C();

      v16 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22958345C((v13 > 1), v14 + 1, 1);
        v9 = v16;
      }

      ++v8;
      *(v9 + 16) = v14 + 1;
      (*(v1 + 32))(v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v14, v3, v15);
    }

    while (v7 != v8);

    return v9;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_22989C520(uint64_t a1, SEL *a2)
{
  v4 = v2;
  v5 = sub_22A4DB77C();
  v11 = [v4 accessoryWithUUID_];

  if (v11)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = [v4 mediaStateSubscriber];
      v9 = sub_22A4DD5AC();
      [v8 *a2];

      v10 = v9;
    }

    else
    {
      v10 = v11;
    }
  }
}

id sub_22989C638(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22A576190;
  v11 = [a1 uuid];
  sub_22A4DB79C();

  v12 = objc_allocWithZone(HMDActionSetResponse);
  v13 = sub_22A4DB77C();
  v14 = [v12 initWithActionSetUUID:v13 state:a2 & 1];

  v15 = *(v7 + 8);
  v15(v9, v6);
  *(v10 + 32) = v14;
  type metadata accessor for HMDActionSetResponse(0);
  v16 = sub_22A4DD81C();

  [v3 notifyRemoteUsersOfChangedActionSetResponses_];

  result = [v3 actionSetStateSubscriptionManager];
  if (result)
  {
    v18 = result;
    v19 = [a1 uuid];
    sub_22A4DB79C();

    v20 = sub_22A4DB77C();
    v15(v9, v6);
    [v18 actionSetStateDidChange:v20 state:a2 & 1];

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_22989C864()
{
  result = qword_27D87D580;
  if (!qword_27D87D580)
  {
    sub_229562F68(255, &unk_27D87E490, off_2786660B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D580);
  }

  return result;
}

uint64_t sub_22989C8CC(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8821A0, &qword_22A586DA0);
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22989C998, 0, 0);
}

uint64_t sub_22989C998()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v11 = v1[20];
  sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  sub_22989C864();
  v8 = sub_22A4DDB5C();
  v1[24] = v8;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_22989CB8C;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8821A8, &qword_22A586DA8);
  sub_22A4DD8DC();
  (*(v6 + 32))(boxed_opaque_existential_1, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_22989BE54;
  v1[13] = &block_descriptor_48;
  [v11 stateObserverStartedMonitoringCharacteristics:v8 completionHandler:v3];
  (*(v6 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_22989CB8C()
{

  return MEMORY[0x2822009F8](sub_22989CC6C, 0, 0);
}

uint64_t sub_22989CC6C()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22989CCDC(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_22A4DB7DC();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22989CDA0, 0, 0);
}

uint64_t sub_22989CDA0()
{
  v1 = [*(v0 + 112) home];
  if (v1 && (v2 = v1, v3 = [v1 administratorHandler], *(v0 + 144) = v3, v2, v3))
  {
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *MEMORY[0x277CD2538];
    *(v0 + 152) = *MEMORY[0x277CD2538];
    v23 = v10;
    v11 = [v6 messageTargetUUID];
    sub_22A4DB79C();

    v12 = objc_allocWithZone(MEMORY[0x277D0F820]);
    v13 = sub_22A4DB77C();
    v14 = [v12 initWithTarget_];
    *(v0 + 160) = v14;

    (*(v4 + 8))(v5, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v16;
    *(inited + 48) = v9;
    *(inited + 56) = v8;

    v17 = sub_22956AC5C(inited);
    *(v0 + 168) = v17;
    swift_setDeallocating();
    sub_2295ED9B4(inited + 32);
    v18 = swift_task_alloc();
    *(v0 + 176) = v18;
    *v18 = v0;
    v18[1] = sub_22989D074;

    return sub_2297983DC(v23, v14, v17);
  }

  else
  {
    v20 = objc_opt_self();
    v21 = sub_22A4DD5AC();
    [v20 hmErrorWithCode:3 description:v21 reason:0 suggestion:0 underlyingError:0];

    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_22989D074()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_22989D19C;
  }

  else
  {
    v4 = *(v2 + 160);
    v5 = *(v2 + 152);

    v3 = sub_22989BD70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22989D19C()
{
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22989D234(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a1;
  *(v6 + 16) = 0;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 88) = type metadata accessor for DefaultDaemonMissingItemHandler();
  *(v6 + 96) = &off_283CE81C0;
  *(v6 + 64) = a6;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;

  return v6;
}

uint64_t sub_22989D2C4(uint64_t a1, uint64_t a2)
{
  _s8IdentityCMa();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = 0;
  *(v4 + 36) = 0;
  type metadata accessor for DefaultDaemonMissingItemHandler();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  type metadata accessor for Registry();
  swift_allocObject();

  v6 = sub_22989D234(v4, 0, 0, 0, 0, v5);

  return v6;
}

void sub_22989DFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22989E760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void significantTimeDidChangeNotification(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@System time changed %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [v4 _handleSignificantTimeChange];
}

void sub_2298A0E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2298A49E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__342(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2298AA6C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2298AC78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__881(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2298B0FE0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2298B10E4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2298C08DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2298C0D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2298C11A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __HMDShortcutActionInitializeWithSerializedShortcut(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    objc_storeStrong(v3 + 3, a2);
    if (WorkflowKitLibraryCore(0))
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2050000000;
      v5 = getWFHomeWorkflowClass_softClass;
      v21 = getWFHomeWorkflowClass_softClass;
      if (!getWFHomeWorkflowClass_softClass)
      {
        v13 = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = __getWFHomeWorkflowClass_block_invoke;
        v16 = &unk_278686CC0;
        v17 = &v18;
        __getWFHomeWorkflowClass_block_invoke(&v13);
        v5 = v19[3];
      }

      v6 = v5;
      _Block_object_dispose(&v18, 8);
      v7 = [[v5 alloc] initWithData:v4];
      v8 = v3[4];
      v3[4] = v7;

      v18 = 0;
      v19 = &v18;
      v20 = 0x2050000000;
      v9 = getWFHomeWorkflowControllerClass_softClass;
      v21 = getWFHomeWorkflowControllerClass_softClass;
      if (!getWFHomeWorkflowControllerClass_softClass)
      {
        v13 = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = __getWFHomeWorkflowControllerClass_block_invoke;
        v16 = &unk_278686CC0;
        v17 = &v18;
        __getWFHomeWorkflowControllerClass_block_invoke(&v13);
        v9 = v19[3];
      }

      v10 = v9;
      _Block_object_dispose(&v18, 8);
      v11 = [[v9 alloc] initWithWorkflow:v3[4]];
      v12 = v3[5];
      v3[5] = v11;
    }
  }
}

void sub_2298C2068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WorkflowKitLibraryCore(uint64_t a1)
{
  if (!WorkflowKitLibraryCore_frameworkLibrary)
  {
    WorkflowKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return WorkflowKitLibraryCore_frameworkLibrary;
}

Class __getWFHomeWorkflowClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  result = objc_getClass("WFHomeWorkflow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFHomeWorkflowClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "WFHomeWorkflow");
    return __getWFHomeWorkflowControllerClass_block_invoke(v3);
  }

  return result;
}

void __getWFHomeWorkflowControllerClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFHomeWorkflowController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFHomeWorkflowControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "WFHomeWorkflowController");
    WorkflowKitLibrary();
  }
}

void WorkflowKitLibrary()
{
  v2 = 0;
  v0 = WorkflowKitLibraryCore(&v2);
  v1 = v2;
  if (!v0)
  {
    v1 = abort_report_np("%s", v2);
    goto LABEL_5;
  }

  if (v2)
  {
LABEL_5:
    free(v1);
  }
}

uint64_t __WorkflowKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  WorkflowKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2298C59C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2298D94D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2298D9828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2298DB840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2298DBB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2298DBEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2298F30E0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2298F316C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2298F7F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5874(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id arrayToString(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n %@ [", v4];
  [v5 appendString:v6];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = MEMORY[0x277CCACA8];
        v13 = [*(*(&v18 + 1) + 8 * i) descriptionWithIndent:v4];
        v14 = [v12 stringWithFormat:@" %@", v13];
        [v5 appendString:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n %@ ]", v4];
  [v5 appendString:v15];

  v16 = objc_msgSend_copy(v5);

  return v16;
}

BOOL checkForParseResult(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = &a10;
  if (!a9)
  {
    return 0;
  }

  v10 = 0;
  while (a1 - 1 != v10)
  {
    v11 = v13++;
    ++v10;
    if (!*v11)
    {
      return v10 >= a1;
    }
  }

  return 1;
}

void sub_229917F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __languageChanged()
{
  v0 = +[HMDMainDriver driver];
  [v0 localeChanged];
}

void sub_22991FEC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_2299206A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229924DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22992F188(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_22992F690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22992FD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299301B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299309CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229930E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299329FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10242(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229932EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229933528(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_2299343EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_229934A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229934DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDRemoteLoginAccountTypeAsString(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDRemoteLoginAccountType %tu", a1];
  }

  else
  {
    v2 = @"HMDRemoteLoginAccountTypeITunes";
  }

  return v2;
}

void sub_229943D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13008(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22994A804(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void addLogEventsToResponse(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:v8];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    [v6 setObject:v7 forKeyedSubscript:v8];
  }

  [v7 addObjectsFromArray:v5];
}

uint64_t HMDRemoteEventRouterProtoConnectResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(MEMORY[0x277D174E0]);
        [a1 addCachedEvents:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HMEProtoEventInfoReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_22994E848(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22994E948(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2299565F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229958250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v40 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14759(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id reportContextFromMessage(void *a1)
{
  v1 = a1;
  v2 = [v1 messagePayload];
  v3 = [v2 hmf_stringForKey:*MEMORY[0x277CD0500]];

  v4 = [v1 messagePayload];
  v5 = [v4 hmf_dataForKey:*MEMORY[0x277CD0510]];

  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CD1C88] reportContextWithDomain:v3 requestInfo:v5];
    v8 = [v1 messagePayload];
    v9 = [v8 hmf_numberForKey:*MEMORY[0x277CD0508]];
    [v9 floatValue];
    [v7 setReportTimeout:v10];

    v11 = objc_msgSend_copy(v7);
  }

  return v11;
}

void sub_229962080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229962C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229962F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229964260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __transactionHomeSettingsUpdated(void *a1, void *a2, void *a3)
{
  v18 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v6 transactionResult];
  v8 = [v5 setProperties];
  if ([v8 containsObject:@"automaticSoftwareUpdateEnabled"])
  {
    v9 = [v18 isAutomaticSoftwareUpdateEnabled];
    v10 = [v5 automaticSoftwareUpdateEnabled];
    v11 = [v10 BOOLValue];

    if (v9 != v11)
    {
      v12 = [v5 automaticSoftwareUpdateEnabled];
      [v18 setAutomaticSoftwareUpdateEnabled:{objc_msgSend(v12, "BOOLValue")}];

      [v7 markChanged];
    }
  }

  else
  {
  }

  v13 = [v5 setProperties];
  if ([v13 containsObject:@"automaticThirdPartyAccessorySoftwareUpdateEnabled"])
  {
    v14 = [v18 isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
    v15 = [v5 automaticThirdPartyAccessorySoftwareUpdateEnabled];
    v16 = [v15 BOOLValue];

    if (v14 != v16)
    {
      v17 = [v5 automaticThirdPartyAccessorySoftwareUpdateEnabled];
      [v18 setAutomaticThirdPartyAccessorySoftwareUpdateEnabled:{objc_msgSend(v17, "BOOLValue")}];

      [v7 markChanged];
    }
  }

  else
  {
  }

  [v6 respondWithPayload:0];
}

void __transactionHomeMediaSettingsUpdated(void *a1, void *a2, void *a3)
{
  v23 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v6 transactionResult];
  v8 = [v5 setProperties];
  if ([v8 containsObject:@"minimumMediaUserPrivilege"])
  {
    v9 = [v23 minimumMediaUserPrivilege];
    v10 = [v5 minimumMediaUserPrivilege];
    v11 = [v10 unsignedIntegerValue];

    if (v9 != v11)
    {
      v12 = [v5 minimumMediaUserPrivilege];
      [v23 setMinimumMediaUserPrivilege:{objc_msgSend(v12, "unsignedIntegerValue")}];

      [v7 markChanged];
    }
  }

  else
  {
  }

  v13 = [v5 setProperties];
  if ([v13 containsObject:@"mediaPeerToPeerEnabled"])
  {
    v14 = [v23 isMediaPeerToPeerEnabled];
    v15 = [v5 mediaPeerToPeerEnabled];
    v16 = [v15 BOOLValue];

    if (v14 != v16)
    {
      v17 = [v5 mediaPeerToPeerEnabled];
      [v23 setMediaPeerToPeerEnabled:{objc_msgSend(v17, "BOOLValue")}];

      [v7 markChanged];
    }
  }

  else
  {
  }

  v18 = [v5 setProperties];
  if ([v18 containsObject:@"mediaPassword"])
  {
    v19 = [v23 mediaPassword];
    v20 = [v5 mediaPassword];
    v21 = HMFEqualObjects();

    if ((v21 & 1) == 0)
    {
      v22 = [v5 mediaPassword];
      [v23 setMediaPassword:v22];

      [v7 markChanged];
    }
  }

  else
  {
  }

  [v6 respondWithPayload:0];
}

void __updateAccountHandleForCurrentUser(void *a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 primaryHandle];
  if (v6)
  {
    v7 = [v3 currentUser];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 accountHandle];
      v10 = HMFEqualObjects();

      if (!v10)
      {
        v22 = [v8 newModelWithChangeType:2];
        [v22 setAccountHandle:v6];
        v23 = +[HMDAccountHandleFormatter defaultFormatter];
        v24 = [v23 stringForObjectValue:v6];

        [v22 setUserID:v24];
        v25 = [v3 backingStore];
        v26 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        v27 = [v25 transaction:@"HMDAppleAccountManagerAccountUpdatedNotification" options:v26];

        [v27 add:v22 withMessage:0];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = ____updateAccountHandleForCurrentUser_block_invoke;
        v28[3] = &unk_27868A250;
        v29 = v3;
        [v27 run:v28];

        goto LABEL_14;
      }

      v11 = objc_autoreleasePoolPush();
      v12 = v3;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v14;
        v15 = "%{public}@Home's current user has an unchanged account handle";
        v16 = v13;
        v17 = OS_LOG_TYPE_DEBUG;
LABEL_11:
        _os_log_impl(&dword_229538000, v16, v17, v15, buf, 0xCu);
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v3;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v14;
        v15 = "%{public}@Home does not yet have a current user, cannot update account handle";
        v16 = v13;
        v17 = OS_LOG_TYPE_INFO;
        goto LABEL_11;
      }
    }

    objc_autoreleasePoolPop(v11);
LABEL_14:

    goto LABEL_15;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = v3;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v21;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Cannot update home current user account handle because primary handle cannot be determined", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
LABEL_15:
}

void ____updateAccountHandleForCurrentUser_block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to change account handle for current user: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v8 = [*(a1 + 32) homeManager];
    if ([*(a1 + 32) isOwnerUser] && objc_msgSend(*(a1 + 32), "isCurrentDevicePrimaryResident"))
    {
      v9 = [v8 homeOwnerCloudShareManager];
      [v9 updateSharedOwnerAccountHandleForHome:*(a1 + 32)];
    }
  }
}

void sub_22996FF9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299705BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299735A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 240));
  _Unwind_Resume(a1);
}

void sub_229976860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229989618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __decodeAndVerifyCurrentUser(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 uuidForKey:@"kUserUUIDKey"];
  if (v5)
  {
    v6 = [v3 currentUser];
    v7 = [v6 uuid];
    v8 = [v7 hmf_isEqualToUUID:v5];

    if (v8)
    {
      v9 = v6;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v3;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v14;
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Specified user identifier does not match current user: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [v4 respondWithError:v15];

      v9 = 0;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    [v4 respondWithError:v10];

    v9 = 0;
  }

  return v9;
}

void sub_22998CF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22998DBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22998E25C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_22998ECA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229991E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229992144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HMDSecureAccessErrorCodeForMessage(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([v3 isEntitledForSPIAccess])
  {
    v4 = 2003;
  }

  else
  {
    v5 = [v3 isInternal];
    if (a2 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    if (v6)
    {
      v4 = 2003;
    }

    else
    {
      v4 = 10;
    }
  }

  v7 = MEMORY[0x277CCA9B8];
  if (+[HMDDeviceCapabilities supportsDeviceLock])
  {
    v8 = 82;
  }

  else
  {
    v8 = v4;
  }

  v9 = [v7 hmErrorWithCode:v8];

  return v9;
}

void sub_229996EBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_229997344(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22999864C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229998AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229999140(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_22999A344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22999AB20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_22999B100(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 240));
  _Unwind_Resume(a1);
}

void sub_22999F68C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak(&STACK[0x320]);
  _Unwind_Resume(a1);
}

void sub_2299A4184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __authenticateAcceptedOutgoingInvitation(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v64 = *MEMORY[0x277D85DE8];
  val = a1;
  v9 = a2;
  v37 = a3;
  v36 = a4;
  v39 = a5;
  v10 = [v9 user];
  v38 = [v10 accountHandle];

  if (v38)
  {
    v11 = +[HMDAccountRegistry sharedRegistry];
    v41 = [v11 accountForHandle:v37];

    v35 = [MEMORY[0x277CBEB58] setWithCapacity:2];
    if (!v36 || ([v37 isEqual:v36] & 1) != 0 || (objc_msgSend(v38, "isEqual:", v36) & 1) != 0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = val;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Preferred handle by the shared user is the same as the handle the invitation was sent to or the response was received from", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = val;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v34;
        *&buf[12] = 2112;
        *&buf[14] = v36;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Authenticating the preferred handle: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      [v35 addObject:v36];
    }

    if ([v35 hmf_isEmpty])
    {
      v16 = objc_autoreleasePoolPush();
      v17 = val;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v19;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Authenticated invitation without resolving", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      if (v39)
      {
        v39[2](v39, 0);
      }
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v61 = __Block_byref_object_copy__14759;
      v62 = __Block_byref_object_dispose__14760;
      v63 = 0;
      v24 = dispatch_group_create();
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      obj = v35;
      v25 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (v25)
      {
        v26 = *v56;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v56 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v55 + 1) + 8 * i);
            dispatch_group_enter(v24);
            objc_initWeak(&location, val);
            v29 = +[HMDAccountRegistry sharedRegistry];
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = ____authenticateAcceptedOutgoingInvitation_block_invoke;
            v48[3] = &unk_278670AD0;
            objc_copyWeak(&v53, &location);
            v49 = v24;
            v50 = v28;
            v52 = buf;
            v51 = v41;
            [v29 _resolveAccountForHandle:v28 completionHandler:v48];

            objc_destroyWeak(&v53);
            objc_destroyWeak(&location);
          }

          v25 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
        }

        while (v25);
      }

      v30 = [val workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____authenticateAcceptedOutgoingInvitation_block_invoke_5173;
      block[3] = &unk_278682E60;
      v47 = buf;
      v45 = val;
      v46 = v39;
      dispatch_group_notify(v24, v30, block);

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = val;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Invalid invitee destination", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    if (v39)
    {
      v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      (v39)[2](v39, v42);
    }
  }
}

void ____authenticateAcceptedOutgoingInvitation_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ____authenticateAcceptedOutgoingInvitation_block_invoke_2;
    block[3] = &unk_278684B90;
    v13 = v6;
    v10 = v8;
    v11 = *(a1 + 40);
    v14 = v10;
    v15 = v11;
    v19 = *(a1 + 56);
    v16 = v5;
    v17 = *(a1 + 48);
    v18 = *(a1 + 32);
    dispatch_async(v9, block);
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

uint64_t ____authenticateAcceptedOutgoingInvitation_block_invoke_5173(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v7 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v7;
    v8 = "%{public}@Failed to authenticate invitation";
    v9 = v6;
    v10 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v7 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v7;
    v8 = "%{public}@Authenticated invitation after resolving";
    v9 = v6;
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_229538000, v9, v10, v8, &v12, 0xCu);

LABEL_7:
  objc_autoreleasePoolPop(v3);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 48) + 8) + 40));
  }

  return result;
}

void ____authenticateAcceptedOutgoingInvitation_block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 48) shortDescription];
      v7 = *(*(*(a1 + 80) + 8) + 40);
      v24 = 138543874;
      v25 = v5;
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to resolve handle, %@, with error: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    v8 = *(*(a1 + 80) + 8);
    v10 = *(v8 + 40);
    v9 = (v8 + 40);
    if (!v10)
    {
      objc_storeStrong(v9, *(a1 + 32));
    }
  }

  else
  {
    v11 = [*(a1 + 56) isEqual:*(a1 + 64)];
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [*(a1 + 48) shortDescription];
        v24 = 138543618;
        v25 = v16;
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Authenticated handle: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [*(a1 + 64) shortDescription];
        v20 = [*(a1 + 56) shortDescription];
        v24 = 138543874;
        v25 = v18;
        v26 = 2112;
        v27 = v19;
        v28 = 2112;
        v29 = v20;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Invitation response received from account, %@, expected: %@", &v24, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      if (!*(*(*(a1 + 80) + 8) + 40))
      {
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:55];
        v22 = *(*(a1 + 80) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;
      }
    }
  }

  dispatch_group_leave(*(a1 + 72));
}

void sub_2299A8E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, id location, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  objc_destroyWeak((v59 + 40));
  _HMFThreadLocalAsyncContextPop();
  objc_destroyWeak(&location);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_2299A9274(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_2299ABB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id location)
{
  objc_destroyWeak((v62 + 56));
  objc_destroyWeak(&a61);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a38);
  objc_destroyWeak(&a46);
  _Unwind_Resume(a1);
}

void sub_2299AD02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299AE678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2299AEDC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2299B4A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a35);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299B65C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _HMFThreadLocalAsyncContextPop();
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299B811C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_2299BDE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299BFAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak((v36 - 152));
  _Unwind_Resume(a1);
}

void sub_2299C06F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299C4184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  __HMFActivityScopeLeave();
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_2299CA5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a42, 8);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_2299CD314(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __handleAccessoryReachabilityRegistration(void *a1, void *a2, int a3)
{
  v136 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = [v5 workQueue];
  dispatch_assert_queue_V2(v7);

  v103 = v6;
  if (![v6 isRemote] || (objc_msgSend(v6, "isSecureRemote") & 1) != 0)
  {
    v99 = *MEMORY[0x277CD0640];
    v8 = [v6 stringForKey:?];
    v9 = [v5 uuid];
    v10 = [v9 UUIDString];
    v101 = v8;
    LOBYTE(v8) = [v8 isEqualToString:v10];

    if (v8)
    {
      v102 = 0;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v5;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v12 uuid];
        [v15 UUIDString];
        v17 = v16 = v5;
        *buf = 138543874;
        v131 = v14;
        v132 = 2112;
        v133 = v101;
        v134 = 2112;
        v135 = v17;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Home does not match, received: %@, current: %@", buf, 0x20u);

        v5 = v16;
      }

      objc_autoreleasePoolPop(v11);
      v102 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
    }

    v18 = [v103 responseHandler];

    if (v18)
    {
      v19 = [v103 responseHandler];
      (v19)[2](v19, v102, 0);
    }

    v20 = objc_autoreleasePoolPush();
    v21 = v5;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v131 = v23;
      v132 = 2112;
      v133 = v21;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Registering for remote reachability for home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v100 = [v103 remoteSourceID];
    v24 = [HMDDevice deviceWithDestination:?];
    v25 = v24;
    if (a3)
    {
      v98 = v24;
      v96 = v5;
      v26 = [v103 messagePayload];
      v95 = *MEMORY[0x277CCE7A8];
      v27 = [v26 hmf_arrayForKey:?];

      v104 = v21;
      if (!v27)
      {
        v28 = [MEMORY[0x277CBEB18] array];
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v29 = [v21 accessories];
        v30 = objc_msgSend_copy(v29);

        v31 = [v30 countByEnumeratingWithState:&v119 objects:v129 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v120;
          p_vtable = HMDModernTransportDeviceReachabilityObserver.vtable;
          do
          {
            v35 = 0;
            v109 = v32;
            do
            {
              if (*v120 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v36 = *(*(&v119 + 1) + 8 * v35);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) != 0 && v36)
              {
                v38 = objc_autoreleasePoolPush();
                v39 = v21;
                v40 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  HMFGetLogIdentifier();
                  v41 = v33;
                  v42 = p_vtable;
                  v43 = v30;
                  v45 = v44 = v28;
                  *buf = 138543618;
                  v131 = v45;
                  v132 = 2112;
                  v133 = v36;
                  _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Not including native matter accessory in reachability registration as this is controlled by MTRDevice. accessory=%@", buf, 0x16u);

                  v28 = v44;
                  v30 = v43;
                  p_vtable = v42;
                  v33 = v41;
                  v32 = v109;
                }

                objc_autoreleasePoolPop(v38);
                v21 = v104;
              }

              else
              {
                v46 = [v36 uuid];
                v47 = [v46 UUIDString];
                [v28 addObject:v47];
              }

              ++v35;
            }

            while (v32 != v35);
            v32 = [v30 countByEnumeratingWithState:&v119 objects:v129 count:16];
          }

          while (v32);
        }

        v27 = v28;
        v48 = objc_autoreleasePoolPush();
        v49 = v21;
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = HMFGetLogIdentifier();
          *buf = 138543618;
          v131 = v51;
          v132 = 2112;
          v133 = v27;
          _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@Registering for reachability notification for all accessories: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v48);
      }

      v97 = [v21 homeManager];
      v106 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v27, "count")}];
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      obj = v27;
      v110 = [obj countByEnumeratingWithState:&v115 objects:v128 count:16];
      if (v110)
      {
        v108 = *v116;
        do
        {
          for (i = 0; i != v110; ++i)
          {
            if (*v116 != v108)
            {
              objc_enumerationMutation(obj);
            }

            v53 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v115 + 1) + 8 * i)];
            if (v53)
            {
              v113 = 0u;
              v114 = 0u;
              v111 = 0u;
              v112 = 0u;
              v54 = [v21 accessories];
              v55 = objc_msgSend_copy(v54);

              v56 = [v55 countByEnumeratingWithState:&v111 objects:v127 count:16];
              if (v56)
              {
                v57 = v56;
                v58 = *v112;
                while (2)
                {
                  for (j = 0; j != v57; ++j)
                  {
                    if (*v112 != v58)
                    {
                      objc_enumerationMutation(v55);
                    }

                    v60 = *(*(&v111 + 1) + 8 * j);
                    v61 = [v60 uuid];
                    v62 = [v61 isEqual:v53];

                    if (v62)
                    {
                      v63 = [v60 isReachable];
                      v64 = objc_autoreleasePoolPush();
                      v65 = v21;
                      v66 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
                      {
                        HMFGetLogIdentifier();
                        v67 = v105 = v64;
                        v68 = [v60 uuid];
                        v69 = [v68 UUIDString];
                        *buf = 138543874;
                        v131 = v67;
                        v132 = 2112;
                        v133 = v69;
                        v134 = 1024;
                        LODWORD(v135) = v63;
                        _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_INFO, "%{public}@Updating reachability for accessory: %@ to: %d", buf, 0x1Cu);

                        v21 = v104;
                        v64 = v105;
                      }

                      objc_autoreleasePoolPop(v64);
                      v70 = [v60 uuid];
                      v71 = [v70 UUIDString];
                      v125 = v71;
                      v72 = [MEMORY[0x277CCABB0] numberWithBool:v63];
                      v126 = v72;
                      v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
                      [v106 addObject:v73];

                      goto LABEL_48;
                    }
                  }

                  v57 = [v55 countByEnumeratingWithState:&v111 objects:v127 count:16];
                  if (v57)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_48:
            }
          }

          v110 = [obj countByEnumeratingWithState:&v115 objects:v128 count:16];
        }

        while (v110);
      }

      v5 = v96;
      v74 = v100;
      v25 = v98;
      if (v100 && v98)
      {
        [v21 _registerDeviceForReachabilityNotification:v98 accessoryList:obj];
        v75 = objc_autoreleasePoolPush();
        v76 = v21;
        v77 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
        {
          v78 = HMFGetLogIdentifier();
          *buf = 138543618;
          v131 = v78;
          v132 = 2112;
          v133 = v100;
          _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_INFO, "%{public}@Sending current reachability to destination:%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v75);
        v123[0] = v95;
        v79 = objc_msgSend_copy(v106);
        v123[1] = v99;
        v124[0] = v79;
        v80 = [v76 uuid];
        v81 = [v80 UUIDString];
        v124[1] = v81;
        v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:2];

        v83 = [HMDRemoteMessage messageWithName:@"kRemoteReachabilityChangedNotificationKey" identifier:0 messagePayload:v82];
        v84 = [v97 messageDispatcher];
        v85 = [v76 uuid];
        v86 = [v98 remoteDestinationString];
        v87 = [v76 workQueue];
        [v84 sendSecureMessage:v83 target:v85 userID:0 destination:v86 responseQueue:v87 responseHandler:0];

        v74 = v100;
        v25 = v98;
      }
    }

    else
    {
      [v21 _deregisterDeviceForReachabilityNotification:v24];
      v74 = v100;
    }

    v88 = v101;
    goto LABEL_59;
  }

  v89 = objc_autoreleasePoolPush();
  v90 = v5;
  v91 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
  {
    v92 = HMFGetLogIdentifier();
    *buf = 138543618;
    v131 = v92;
    v132 = 2112;
    v133 = v103;
    _os_log_impl(&dword_229538000, v91, OS_LOG_TYPE_DEFAULT, "%{public}@Message not supported: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v89);
  v93 = [v103 responseHandler];

  if (v93)
  {
    v94 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    v88 = [v103 responseHandler];
    v102 = v94;
    v88[2](v88, v94, 0);
LABEL_59:
  }
}

void sub_2299D2004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299DCF90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

id __createAccessoryBrowserAddAccessoryCompletionHandler(id val, void *a2, void *a3, void *a4, void *a5)
{
  objc_initWeak(&location, val);
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ____createAccessoryBrowserAddAccessoryCompletionHandler_block_invoke;
  v19[3] = &unk_278670AA8;
  v20 = v9;
  v21 = v11;
  v22 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v9;
  objc_copyWeak(&v24, &location);
  v23 = v10;
  v16 = v10;
  v17 = _Block_copy(v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return v17;
}

void ____createAccessoryBrowserAddAccessoryCompletionHandler_block_invoke(id *a1, void *a2, void *a3, uint64_t a4, unsigned int a5, unsigned int a6, void *a7, void *a8)
{
  v90 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v69 = a3;
  v13 = a7;
  v67 = a8;
  v14 = [a1[4] accessoryUUID];

  if (v69 && !v14)
  {
    [a1[4] setAccessoryUUID:v69];
  }

  [a1[5] pairedToServer:v12 certificationStatus:a4 addedViaWAC:a5 legacyWAC:a6];
  [a1[5] setAuthenticationMethod:{objc_msgSend(v12, "authMethod")}];
  v15 = objc_alloc(MEMORY[0x277D0F770]);
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s(), %s:%ld", "HMDAccessoryBrowserAddAccessoryCompletionHandler __createAccessoryBrowserAddAccessoryCompletionHandler(HMDHome *__weak, HMSetupAccessoryDescription *__strong, HMDUnpairedHAPAccessoryConfiguration *__strong, HMDAccessoryPairingEvent *__strong, HMFMessage *__strong)_block_invoke", "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Home/HMDHome.m", 11629];
  v17 = [a1[6] activity];
  v79 = [v15 initWithName:v16 parent:v17];

  WeakRetained = objc_loadWeakRetained(a1 + 8);
  [WeakRetained unsetFabricForPairing];
  if (!v13 && WeakRetained)
  {
    v19 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ____createAccessoryBrowserAddAccessoryCompletionHandler_block_invoke_5155;
    block[3] = &unk_278670A80;
    v71 = v79;
    v72 = WeakRetained;
    v73 = a1[4];
    v74 = a1[7];
    v75 = a1[5];
    v76 = v12;
    v78 = a4;
    v77 = a1[6];
    dispatch_async(v19, block);

    v20 = 0;
    v21 = v71;
    goto LABEL_37;
  }

  if (!WeakRetained)
  {
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];

    v13 = v22;
  }

  v21 = [a1[5] vendorDetailsForReporting];
  v23 = v13;
  v20 = v23;
  v24 = v23;
  if (WeakRetained)
  {
    v24 = v23;
    if ([v23 code] == 2010)
    {
      v25 = [WeakRetained threadNetworkID];

      if (v25)
      {
        v26 = 2009;
      }

      else
      {
        v26 = 2010;
      }

      v24 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:v26];
    }
  }

  v27 = objc_autoreleasePoolPush();
  v28 = WeakRetained;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138544386;
    v81 = v30;
    v82 = 2112;
    v83 = v69;
    v84 = 2112;
    v85 = v20;
    v86 = 2112;
    v87 = v24;
    v88 = 2112;
    v89 = v67;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Add accessory completion handler for accessory uuid %@ error %@ mapped error %@ context %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v27);
  if ([a1[5] isMatterAccessory] && objc_msgSend(a1[5], "isAddOperation"))
  {
    if (!v67)
    {
      context = objc_autoreleasePoolPush();
      v31 = v28;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v81 = v33;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Matter pairing end context is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(context);
    }

    if (![v67 isCancelled])
    {
      notifyMatterMetricPairingEnded(v28, v67);
      goto LABEL_29;
    }

    v34 = v28;
    v61 = v67;
    contexta = objc_autoreleasePoolPush();
    v35 = v34;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543618;
      v81 = v37;
      v82 = 2112;
      v83 = v61;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Notifying matter metric pairing cancelled %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(contexta);
    contextb = [MEMORY[0x277CBEB38] dictionary];
    [contextb setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HMDMatterAccessoryPairingSubmitKey"];
    v38 = [v61 error];
    [contextb setObject:v38 forKeyedSubscript:@"HMDMatterAccessoryPairingFailureErrorKey"];

    v39 = [v61 sourceErrorDomain];
    [contextb setObject:v39 forKeyedSubscript:@"HMDMatterAccessoryPairingSourceErrorDomain"];

    v40 = [MEMORY[0x277CCAB98] defaultCenter];
    v41 = objc_msgSend_copy(contextb);
    [v40 postNotificationName:@"HMDMatterAccessoryUpdatePairingMetricNotification" object:0 userInfo:v41];
  }

  else
  {
    v35 = [v28 logEventSubmitter];
    [v35 submitLogEvent:a1[5] error:v24];
  }

LABEL_29:
  v42 = objc_autoreleasePoolPush();
  v43 = v28;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    v45 = HMFGetLogIdentifier();
    v46 = a1[4];
    *buf = 138543874;
    v81 = v45;
    v82 = 2112;
    v83 = v46;
    v84 = 2112;
    v85 = v24;
    _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_DEBUG, "%{public}@Failed to add accessory %@ with error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v42);
  v47 = v79;
  [v12 category];

  [v21 model];
  [v21 manufacturer];

  [v21 firmwareVersion];
  [a1[5] linkType];
  v48 = HAPLinkTypeDescription();
  v49 = HMFBooleanToString();
  v50 = HMFBooleanToString();
  v51 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v24 domain];

  [v24 code];
  [a1[5] isThreadAccessory];
  v52 = HMFBooleanToString();
  [a1[5] accessorySupportsWoL];
  v53 = HMFBooleanToString();

  v54 = [a1[6] responseHandler];

  if (v54)
  {
    v55 = [a1[6] responseHandler];
    (v55)[2](v55, v24, 0);
  }

  if (WeakRetained)
  {
    [v43 _removePendingAccessoryAdd:a1[4]];
    v56 = [v43 accessoryBrowser];
    [v56 removePairingInformationForAccessoryServer:v12];

    v57 = [a1[7] networkCredential];
    v58 = [v57 clientIdentifier];

    if (v58)
    {
      v59 = [a1[7] networkCredential];
      v60 = [v59 clientIdentifier];
      [v43 _removeClientConfigurationWithIdentifier:v60];
    }
  }

LABEL_37:
  __HMFActivityScopeLeave();
}

void ____createAccessoryBrowserAddAccessoryCompletionHandler_block_invoke_5155(uint64_t a1)
{
  [*(a1 + 32) begin];
  v2 = *(a1 + 32);
  [*(a1 + 40) _accessoryPairingDidComplete:*(a1 + 48) configuration:*(a1 + 56) pairingEvent:*(a1 + 64) accessoryServer:*(a1 + 72) certificationStatus:*(a1 + 88) requestMessage:*(a1 + 80)];
  __HMFActivityScopeLeave();
}

id HMDHomeCreateAddAccessoryProgressHandler(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_initWeak(&location, v5);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __HMDHomeCreateAddAccessoryProgressHandler_block_invoke;
  aBlock[3] = &unk_27866FC60;
  v14 = v5;
  v8 = v5;
  objc_copyWeak(&v17, &location);
  v15 = v6;
  v16 = v7;
  v9 = v7;
  v10 = v6;
  v11 = _Block_copy(aBlock);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v11;
}

void __HMDHomeCreateAddAccessoryProgressHandler_block_invoke(id *a1, uint64_t a2, void *a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = a1[4];
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMSetupAccessoryProgressAsString();
    *buf = 138543618;
    v82 = v9;
    v83 = 2112;
    v84 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Progress Handler called with progress: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v78 = [v5 accessoryUUID];
    if (v78 || ([a1[5] addRequestIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v77 = a1;
      v13 = objc_autoreleasePoolPush();
      v75 = WeakRetained;
      v14 = WeakRetained;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = HMSetupAccessoryProgressAsString();
        *buf = 138543618;
        v82 = v16;
        v83 = 2112;
        v84 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Posting accessory pairing state progress notification to %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v18 = [MEMORY[0x277CCAB98] defaultCenter];
      v79[0] = @"HMDSetupAccessoryProgressStateKey";
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
      v80[0] = v19;
      v79[1] = @"HMDAccessoryProgressStateNotificationKey";
      v20 = HMSetupAccessoryProgressAsString();
      v80[1] = v20;
      v79[2] = @"HMDAccessoryProgressStateTimeNotificationKey";
      v21 = [MEMORY[0x277CBEAA8] date];
      v80[2] = v21;
      v79[3] = @"HMDAccessoryProgressStateforAccessoryKey";
      if (v78)
      {
        [v78 UUIDString];
      }

      else
      {
        v74 = [v77[5] addRequestIdentifier];
        [v74 UUIDString];
      }
      v22 = ;
      v80[3] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:4];
      [v18 postNotificationName:@"HMDAccessoryProgressStateUpdateNotification" object:v14 userInfo:v23];

      if (!v78)
      {

        v22 = v74;
      }

      WeakRetained = v75;
      a1 = v77;
    }

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v25 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    [v24 setObject:v25 forKeyedSubscript:*MEMORY[0x277CD2020]];

    v26 = [v5 accessoryName];

    if (v26)
    {
      v27 = [v5 accessoryName];
      [v24 setObject:v27 forKeyedSubscript:*MEMORY[0x277CD1FC8]];
    }

    v28 = [v5 accessoryUUID];

    if (v28)
    {
      v29 = [v5 accessoryUUID];
      v30 = [v29 UUIDString];
      [v24 setObject:v30 forKeyedSubscript:*MEMORY[0x277CCF0B0]];
    }

    v31 = [v5 manufacturerName];

    if (v31)
    {
      v32 = [v5 manufacturerName];
      [v24 setObject:v32 forKeyedSubscript:@"kAccessoryInfoManufacturerKey"];
    }

    v33 = [v5 category];

    if (v33)
    {
      v34 = [v5 category];
      v35 = encodeRootObjectForIncomingXPCMessage(v34, 0);
      [v24 setObject:v35 forKeyedSubscript:@"kAccessoryCategory"];
    }

    if ([v5 certificationStatus])
    {
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "certificationStatus")}];
      [v24 setObject:v36 forKeyedSubscript:@"kAccessoryCertificationStatusKey"];
    }

    v37 = [v5 commissioneeInfo];

    if (v37)
    {
      v38 = [v5 commissioneeInfo];
      v39 = encodeRootObjectForIncomingXPCMessage(v38, 0);
      [v24 setObject:v39 forKeyedSubscript:*MEMORY[0x277CCFDA0]];
    }

    v40 = [v5 systemCommissionerUUID];

    if (v40)
    {
      v41 = [v5 systemCommissionerUUID];
      v42 = [v41 UUIDString];
      [v24 setObject:v42 forKeyedSubscript:*MEMORY[0x277CCFDC0]];
    }

    if (a2 == 9)
    {
      v48 = [WeakRetained wiFiRouterAccessories];
      v44 = [v48 firstObject];

      if (v44)
      {
        v49 = [v44 uuid];
        v50 = [v49 UUIDString];
        [v24 setObject:v50 forKeyedSubscript:*MEMORY[0x277CD04F8]];
      }

      else
      {
        v51 = objc_autoreleasePoolPush();
        v52 = WeakRetained;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          v55 = HMSetupAccessoryProgressAsString();
          *buf = 138543618;
          v82 = v54;
          v83 = 2112;
          v84 = v55;
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Progress is %@ but no accessory being replaced", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v51);
        v44 = 0;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_47;
      }

      v43 = [v5 productData];

      if (!v43)
      {
        goto LABEL_47;
      }

      v44 = +[HMDVendorDataManager sharedVendorDataManager];
      v45 = [v5 productData];
      v46 = [v44 vendorModelEntryForProductData:v45];

      v47 = [a1[5] addRequestIdentifier];
      if (v47)
      {

LABEL_48:
        goto LABEL_49;
      }

      v56 = [a1[5] appIdentifier];
      v57 = [v46 appBundleID];
      v58 = [v56 isEqual:v57];

      if (v58)
      {
        goto LABEL_48;
      }

      v59 = [v46 appStoreID];
      if (v59 && (v60 = v59, [v46 appBundleID], v61 = objc_claimAutoreleasedReturnValue(), v61, v60, v61))
      {
        v62 = [v46 appStoreID];
        [v24 setObject:v62 forKeyedSubscript:@"kAccessoryVendorInfoStoreIDKey"];

        v63 = [v46 appBundleID];
        [v24 setObject:v63 forKeyedSubscript:@"kAccessoryVendorInfoBundleIDKey"];
      }

      else
      {
        v64 = objc_autoreleasePoolPush();
        v76 = WeakRetained;
        v65 = WeakRetained;
        v66 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          v67 = HMFGetLogIdentifier();
          v68 = [v5 productData];
          *buf = 138543618;
          v82 = v67;
          v83 = 2112;
          v84 = v68;
          _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_DEBUG, "%{public}@No appID/bundleID found for productData: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v64);
        WeakRetained = v76;
      }
    }

LABEL_47:
    v69 = MEMORY[0x277D0F848];
    v70 = *MEMORY[0x277CD2068];
    v71 = [WeakRetained messageDestination];
    v44 = [v69 messageWithName:v70 destination:v71 payload:v24];

    v72 = [a1[6] identifier];
    [v44 setIdentifier:v72];

    [v44 setRequiresSPIEntitlement];
    v73 = [a1[6] transport];
    [v44 setTransport:v73];

    v46 = [WeakRetained msgDispatcher];
    [v46 sendMessage:v44 completionHandler:0];
    goto LABEL_48;
  }

LABEL_49:
}

void sub_2299E16B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_2299E4128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299E8280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _mediaSystemsContainsAccessory(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___mediaSystemsContainsAccessory_block_invoke;
  v7[3] = &unk_278675410;
  v8 = v3;
  v4 = v3;
  v5 = [a1 na_any:v7];

  return v5;
}

uint64_t _mediaSystemContainsAccessory(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 components];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___mediaSystemContainsAccessory_block_invoke;
  v8[3] = &unk_278670A58;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t ___mediaSystemContainsAccessory_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
  v4 = [v3 uuid];
  v5 = [*(a1 + 32) uuid];
  v6 = [v4 hmf_isEqualToUUID:v5];

  return v6;
}

void sub_2299F6AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299F76DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299FF400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A0BAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id location)
{
  objc_destroyWeak(&a51);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A0D6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A12D08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 176));
  objc_destroyWeak((v1 - 168));
  _Unwind_Resume(a1);
}

void __notifyRegisteredIdentityRemoved(void *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v3;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v9;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Notifying of removed identity: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    v11 = [v5 identity];
    [v10 setObject:v11 forKeyedSubscript:@"HMDIdentityNotificationKey"];

    v12 = v5;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (isKindOfClass)
    {
      v16 = [v12 device];
      [v10 setObject:v16 forKeyedSubscript:@"HMDDeviceNotificationKey"];
    }

    v17 = v12;
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (v18)
    {
      v21 = [v17 account];
      [v10 setObject:v21 forKeyedSubscript:@"HMDAccountNotificationKey"];
    }

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    v23 = objc_msgSend_copy(v10);
    [v22 postNotificationName:@"HMDIdentityRegistryRemovedIdentity" object:v7 userInfo:v23];
  }
}

void __removeRegisteredObjectForRegisteredIdentity(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5 && v6 && v7)
  {
    v9 = [v5 lock];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ____removeRegisteredObjectForRegisteredIdentity_block_invoke;
    v10[3] = &unk_27868A010;
    v11 = v6;
    v12 = v8;
    v13 = v5;
    [v9 performBlock:v10];
  }
}

void ____removeRegisteredObjectForRegisteredIdentity_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) registeredObjects];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) registeredObjects];
  v4 = [v3 hmf_isEmpty];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 48);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing registered identity, %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [*(*(a1 + 48) + 8) removeObject:*(a1 + 32)];
    __notifyRegisteredIdentityRemoved(*(a1 + 48), *(a1 + 32));
  }
}

id __registeredIdentitiesForIdentity(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v3[1];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v13 identity];
          v15 = [v14 isEqual:v5];

          if (v15)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v6 = objc_msgSend_copy(v7);
  }

  return v6;
}

void __notifyRegisteredIdentityAdded(void *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v3;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v9;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Notifying of added identity: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    v11 = [v5 identity];
    [v10 setObject:v11 forKeyedSubscript:@"HMDIdentityNotificationKey"];

    v12 = v5;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (isKindOfClass)
    {
      v16 = [v12 device];
      [v10 setObject:v16 forKeyedSubscript:@"HMDDeviceNotificationKey"];
    }

    v17 = v12;
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (v18)
    {
      v21 = [v17 account];
      [v10 setObject:v21 forKeyedSubscript:@"HMDAccountNotificationKey"];
    }

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    v23 = objc_msgSend_copy(v10);
    [v22 postNotificationName:@"HMDIdentityRegistryAddedIdentity" object:v7 userInfo:v23];
  }
}

void __registerObjectForRegisteredIdentity(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5 && v6 && v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v6 registeredObjects];
    v11 = [v10 containsObject:v8];

    if ((v11 & 1) == 0)
    {
      objc_initWeak(&location, v5);
      objc_initWeak(&v22, v8);
      objc_initWeak(&from, v6);
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = ____registerObjectForRegisteredIdentity_block_invoke;
      v17 = &unk_27867F3D0;
      objc_copyWeak(&v18, &location);
      objc_copyWeak(&v19, &from);
      objc_copyWeak(&v20, &v22);
      [v8 setDeallocationBlock:&v14];
      v12 = [v8 observedObject];

      if (v12)
      {
        v13 = [v6 registeredObjects];
        [v13 addObject:v8];
      }

      else
      {
        __removeRegisteredObjectForRegisteredIdentity(v5, v6, v8);
      }

      objc_destroyWeak(&v20);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&from);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    objc_autoreleasePoolPop(v9);
  }
}

void sub_229A1A630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak(v17 + 6);
  objc_destroyWeak(v17 + 5);
  objc_destroyWeak(v17 + 4);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void ____registerObjectForRegisteredIdentity_block_invoke(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v3 = objc_loadWeakRetained(a1 + 5);
  v4 = objc_loadWeakRetained(a1 + 6);
  v5 = v4;
  if (WeakRetained && v3 && v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = WeakRetained;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v9;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Registered object deallocated, removing object from identity: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    __removeRegisteredObjectForRegisteredIdentity(v7, v3, v5);
  }
}

void sub_229A1AD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15589(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A1B0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A1B3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A1B740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A1BCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A1C038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A1D6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id toManyRelationship(void *a1, void *a2)
{
  v2 = objectValue(a1, 2, a2);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

id objectValue(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 objectAtIndexedSubscript:a2];
  v7 = [v6 objectForKeyedSubscript:v5];

  return v7;
}

void pruneArrayOfRefs(void *a1, void *a2)
{
  v10 = a1;
  v3 = a2;
  v4 = [v10 count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      v7 = [v10 objectAtIndexedSubscript:v6];
      v8 = [v7 objectForKeyedSubscript:@"modelID"];
      v9 = [v3 containsObject:v8];

      if (v9)
      {
        [v10 removeObjectAtIndex:v6];
        --v5;
      }

      else
      {
        ++v6;
      }
    }

    while (v6 < v5);
  }
}

void sub_229A242F4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229A24DC8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229A24E4C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229A25068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17315(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A29420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A2E9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 88));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A32144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A35588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18771(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A39AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19541(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A3B334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id location)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

id actionResultForAction(void *a1)
{
  v1 = MEMORY[0x277D47338];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v2 aceId];

  [v3 setRequestActionId:v4];

  return v3;
}

uint64_t isActivationCharacteristicType(void *a1)
{
  v1 = a1;
  if ([v1 isEqual:*MEMORY[0x277CCF9F0]])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqual:*MEMORY[0x277CCF748]];
  }

  return v2;
}

uint64_t isOutcomeSuccess(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D47E50]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D47DB0]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D47DB8]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D47E40]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x277D47E38]];
  }

  return v2;
}

void sub_229A40CE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 208));
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

id getActivationCharacteristicFromServiceIfAny(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [a1 characteristics];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        v6 = [v5 type];
        v7 = isActivationCharacteristicType(v6);

        if (v7)
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

void sub_229A43974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A45474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id location)
{
  objc_destroyWeak((v49 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A46A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id location)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

void sub_229A4882C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t isTemperatureAttribute(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D480B0]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D47F60]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D47FA8]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D47F68]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x277D47FB8]];
  }

  return v2;
}

uint64_t temperatureConversionIsNeeded(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    if (isMetricLocale_onceToken != -1)
    {
      dispatch_once(&isMetricLocale_onceToken, &__block_literal_global_198641);
    }

    if (isMetricLocale_isMetricLocale != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  if (([v1 isEqualToString:*MEMORY[0x277D48390]] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = 1;
LABEL_8:

  return v3;
}

void sub_229A4FB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A50980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19997(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A5554C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A556FC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

__CFString *HMDUserSettingsBackingStoreControllerRunStateAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown state %@", v3];
  }

  else
  {
    v1 = off_278671290[a1];
  }

  return v1;
}

void sub_229A5F258(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 120));
  _Block_object_dispose((v3 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_229A602E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A60F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21464(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A615E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A62644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A69CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A6A024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A6A7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A6B6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A6C400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A75ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23380(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A77DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A79778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A7B3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23780(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A7CFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23924(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A7EE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_229A7F470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A7FFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A80CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A813EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_229A8603C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24946(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A8A778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A8B074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A8CBE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A8D044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A8E058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26011(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void notifyObservers(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v12++) updatedCounter:v8 fromOldValue:a3 toNewValue:a4];
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

void sub_229A9F630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27212(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229AA0224(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229AA2AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229AA34CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HMDExtendedTypeDateFormatter()
{
  if (HMDExtendedTypeDateFormatter_once != -1)
  {
    dispatch_once(&HMDExtendedTypeDateFormatter_once, &__block_literal_global_27646);
  }

  v1 = HMDExtendedTypeDateFormatter_formatter;

  return v1;
}

uint64_t __HMDExtendedTypeDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v1 = HMDExtendedTypeDateFormatter_formatter;
  HMDExtendedTypeDateFormatter_formatter = v0;

  v2 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [HMDExtendedTypeDateFormatter_formatter setTimeZone:v2];

  v3 = HMDExtendedTypeDateFormatter_formatter;

  return [v3 setFormatOptions:3955];
}

uint64_t HMDUserActivityType6StateEventAsString(uint64_t a1, uint64_t a2)
{
  if ((a1 - 1) > 2)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_2786719D0[a1 - 1];
  }

  if ((a2 - 1) > 4)
  {
    v5 = @"Other";
  }

  else
  {
    v5 = off_2786719E8[a2 - 1];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v4, v5, v2, v3];
}

void sub_229AAAD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229AABA54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_229AADF88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_229AB087C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28761(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229AB2610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229AB3168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229AB59E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229ABA64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HMDLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (!isAppleTV())
  {
    goto LABEL_4;
  }

  v4 = [v1 stringByAppendingString:@"_APPLETV"];
  v5 = [v3 localizedStringForKey:v4 value:@"HMDDefaultLocalizedStringValue" table:@"HomeKitDaemon"];
  if ([v5 isEqualToString:@"HMDDefaultLocalizedStringValue"])
  {

LABEL_4:
    v5 = [v3 localizedStringForKey:v1 value:&stru_283CF9D50 table:@"HomeKitDaemon"];
    goto LABEL_6;
  }

LABEL_6:
  objc_autoreleasePoolPop(v2);

  return v5;
}

id HMDLocalizedStringForKeyWithCount(void *a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = @"_SINGULAR";
  }

  else
  {
    v2 = @"_PLURAL";
  }

  v3 = [a1 stringByAppendingString:v2];
  v4 = HMDLocalizedStringForKey(v3);

  return v4;
}

void sub_229ABD34C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30152(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229AC3978(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t HMHomeActivityStateFromTruncatedString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Home"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Away"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Vacation"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"ComingHome"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"ComingHomeFromVacation"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __HMDActionSetAddActionWithModel(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v7)
  {
    v10 = [v8 backedObjectWithParent:v7 error:a4];
    if (v10)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      if (isKindOfClass)
      {
        [v7 _handleAddNewAction:v10 message:v9];
      }

      else if (a4)
      {
        *a4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *a4 = isKindOfClass = 0;
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

void sub_229AC6B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, ...)
{
  va_start(va, a45);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__31300(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229AC72F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(va, 8);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_229AC79A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(va, 8);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_229AC812C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(va, 8);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_229AC8ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  objc_destroyWeak((v43 + 56));
  objc_destroyWeak(&location);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_229ACA730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229AD2B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229AD905C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229AD90F0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229AD9184(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229AD9520(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229ADA250(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_229ADB050(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229ADC34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32138(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229ADF778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33336(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229AE77E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229AE7DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229AE87EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229AE9C3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_229AEAF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34240(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __parseGlobalDestination(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    v12 = [v11 rangeOfString:@"/"];
    v13 = v11;
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [v11 substringToIndex:v12];
    }

    if ([v13 containsString:@"self-token:"])
    {
      v14 = [v13 mutableCopy];
      [v14 replaceOccurrencesOfString:@"self-token:" withString:@"token:" options:1 range:{0, objc_msgSend(v14, "length")}];
      v15 = objc_msgSend_copy(v14);

      v13 = v15;
    }

    if (([v13 hasPrefix:@"token:"] & 1) == 0)
    {
      if (a5)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid destination." reason:@"Missing token prefix." suggestion:0];
        *a5 = v23 = 0;
LABEL_28:

        goto LABEL_29;
      }

LABEL_27:
      v23 = 0;
      goto LABEL_28;
    }

    if (a2)
    {
      v16 = objc_alloc(MEMORY[0x277CCAD78]);
      v17 = +[_HMDDeviceHandle identifierNamespace];
      v18 = [v13 dataUsingEncoding:4];
      *a2 = [v16 initWithNamespace:v17 data:v18];
    }

    v19 = [v13 substringFromIndex:{objc_msgSend(@"token:", "length")}];
    if ([v19 length])
    {
      v20 = objc_alloc(MEMORY[0x277CBEA90]);
      v21 = [v20 hmf_initWithHexadecimalString:v19 options:0];

      if (v21)
      {
        if (a3)
        {
          v22 = v21;
          *a3 = v21;
        }

        if (a4)
        {
          *a4 = [HMDAccountHandle accountHandleForDestination:v11];
        }

        v23 = 1;
        goto LABEL_28;
      }

      if (!a5)
      {
        goto LABEL_26;
      }

      v24 = MEMORY[0x277CCA9B8];
      v25 = @"Invalid token string.";
      v26 = 3;
    }

    else
    {
      if (!a5)
      {
LABEL_26:

        goto LABEL_27;
      }

      v24 = MEMORY[0x277CCA9B8];
      v25 = @"Missing token string.";
      v26 = 19;
    }

    *a5 = [v24 hmErrorWithCode:v26 description:@"Invalid destination." reason:v25 suggestion:0];
    goto LABEL_26;
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *a5 = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

LABEL_29:

  return v23;
}