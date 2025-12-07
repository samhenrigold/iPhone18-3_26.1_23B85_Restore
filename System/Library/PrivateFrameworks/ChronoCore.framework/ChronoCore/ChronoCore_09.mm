uint64_t sub_224B04C08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_224DAAF48();
  v8 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3558, &qword_224DB3B08);
  result = sub_224DAF918();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_224A3CECC(&qword_281351738, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
    result = sub_224DAED88();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_224B04F30(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_224DA9688();
  v8 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3490, &qword_224DB39F8);
  result = sub_224DAF918();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_224A3CECC(&qword_281351A80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    result = sub_224DAED88();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_224B05278(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for _SessionPriorityInfo(0);
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3658, &qword_224DB3C30);
  result = sub_224DAF918();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = *(a4 + 48);
    v21 = *(v33 + 72);
    sub_224A7358C(v20 + v21 * (v17 | (v15 << 6)), v11);
    sub_224DAFE68();
    MEMORY[0x22AA5E1E0](*v11);
    result = sub_224DAFEA8();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = sub_224A72CFC(v11, *(v12 + 48) + v25 * v21);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_224B05568(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_224DA9908();
  v8 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3540, &unk_224DB3AE0);
  result = sub_224DAF918();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_224A3CECC(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = sub_224DAED88();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_224B05890(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3640, &qword_224DB3C18);
  result = sub_224DAF918();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_224DAFE68();
    sub_224DAEE78();

    result = sub_224DAFEA8();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_224B05B48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_224DAF918();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_224DAF698();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_224B05D34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, void *a5)
{
  v9 = v5;

  v10 = sub_224DAF838();
  v11 = swift_unknownObjectRetain();
  v12 = a3(v11, v10);
  v21 = v12;

  v13 = sub_224DAF698();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    sub_224A3B79C(0, a4, a5);
    while (1)
    {
      v17 = *(*(v12 + 48) + 8 * v15);
      v18 = sub_224DAF6A8();

      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
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

  v19 = *(*(v12 + 48) + 8 * v15);
  sub_224A4B8F0(v15);
  result = sub_224DAF6A8();
  if (result)
  {
    *v9 = v21;
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224B05EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v7 = v4;

  v8 = sub_224DAF838();
  v9 = swift_unknownObjectRetain();
  v10 = a3(v9, v8);
  v19 = v10;

  v11 = sub_224DAF698();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    a4(0);
    while (1)
    {
      v15 = *(*(v10 + 48) + 8 * v13);
      v16 = sub_224DAF6A8();

      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
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

  v17 = *(*(v10 + 48) + 8 * v13);
  sub_224A4B8F0(v13);
  result = sub_224DAF6A8();
  if (result)
  {
    *v7 = v19;
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224B06034(uint64_t a1, uint64_t a2)
{

  v3 = sub_224DAF838();
  v4 = swift_unknownObjectRetain();
  v5 = sub_224ADD894(v4, v3);
  v12 = v5;
  sub_224DAB338();
  sub_224A3CECC(&unk_281350FE0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);

  v6 = sub_224DAED88();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_224A3CECC(&unk_281350FD0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
    while ((sub_224DAEDD8() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
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

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_224B065A4(v8);
  result = sub_224DAEDD8();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_224B06210(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_224DAF7A8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_224DAFE68();
        MEMORY[0x22AA5E1E0](v10);
        v11 = sub_224DAFEA8() & v7;
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
          v13 = (v12 + v2);
          v14 = (v12 + v6);
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

void sub_224B063B8(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_224DAF7A8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_224DAFE68();
        if (v10)
        {
          MEMORY[0x22AA5E1E0](1);

          sub_224DAEE78();
        }

        else
        {
          MEMORY[0x22AA5E1E0](0);
        }

        v11 = sub_224DAFEA8();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_14;
        }

        if (v2 >= v12)
        {
LABEL_14:
          v13 = *(v3 + 48);
          v14 = (v13 + 16 * v2);
          v15 = (v13 + 16 * v6);
          if (v2 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_224B065A4(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_224DAF7A8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      sub_224DAB338();
      sub_224A3CECC(&unk_281350FE0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
      do
      {
        v10 = sub_224DAED88() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_224B06790(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_224DAF7A8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_224DAFE68();
        sub_224DAEE78();

        v10 = sub_224DAFEA8() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }
}

uint64_t sub_224B069DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = sub_224DA9688();
  result = MEMORY[0x28223BE20](v39, v6);
  v37 = a3;
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = v8 + 16;
  v35 = v8;
  v32 = 0;
  v33 = (v8 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v39;
    v21 = v38;
LABEL_11:
    (*(v35 + 16))(v21, *(v37 + 48) + *(v35 + 72) * v19, v20);
    v24 = v36(v21);
    v25 = v21;
    if (v4)
    {
      return (*v33)(v21, v20);
    }

    v26 = v24;
    result = (*v33)(v25, v20);
    if (v26)
    {
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v37;

        return sub_224B04F30(v31, v30, v32, v28);
      }
    }
  }

  v22 = v10;
  v20 = v39;
  v21 = v38;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v23 = *(v12 + 8 * v10);
    ++v22;
    if (v23)
    {
      v16 = (v23 - 1) & v23;
      v19 = __clz(__rbit64(v23)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224B06C3C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v31 = a4;
  v27 = a2;
  v28 = a1;
  v6 = type metadata accessor for _SessionPriorityInfo(0);
  v30 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v11 = 0;
  v32 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
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
    v17 &= v17 - 1;
LABEL_11:
    v22 = v19 | (v11 << 6);
    sub_224A7358C(*(v32 + 48) + *(v30 + 72) * v22, v10);
    v23 = v31(v10);
    result = sub_224A8EA6C(v10);
    if (v4)
    {
      return result;
    }

    if (v23)
    {
      *(v28 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_16:
        v25 = v32;

        return sub_224B05278(v28, v27, v29, v25);
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
      goto LABEL_16;
    }

    v21 = *(v13 + 8 * v11);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_224B06E7C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v25 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v28 = *(*(a3 + 48) + 8 * v17);
    v18 = v28;
    v19 = a4(&v28);

    if (v7)
    {
      return;
    }

    if (v19)
    {
      *(a1 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_16:

        sub_224B05B48(a1, a2, v25, a3, a6, a7);
        return;
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_224B07048()
{
  result = qword_2813509C8;
  if (!qword_2813509C8)
  {
    sub_224A3B79C(255, &unk_2813509D0, 0x277CFA378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813509C8);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_224B070CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_224B07114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_224B07178(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_224A61AA0(*(a1 + 16), 0, &qword_27D6F34F0, &qword_224DB3A88, MEMORY[0x277CF9A78]);
  v4 = *(sub_224DAC5E8() - 8);
  v5 = sub_224B30250(&v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1, MEMORY[0x277CF9A78]);
  sub_224A3B7E4(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

char *sub_224B07278(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_224A61AA0(*(a1 + 16), 0, &qword_27D6F3730, &qword_224DB3D08, MEMORY[0x277CF9EF8]);
  v4 = *(sub_224DAE438() - 8);
  v5 = sub_224B30250(&v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1, MEMORY[0x277CF9EF8]);
  sub_224A3B7E4(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_224B07378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_224AC1C08(a1, a3, a4, isUniquelyReferenced_nonNull_native, &v17);

    *v4 = v17;
  }

  else
  {
    v10 = v4;
    v11 = sub_224A3A40C(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = v10;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v10;
      v17 = *v10;
      if (!v15)
      {
        sub_224B250FC();
        v14 = v10;
        v16 = v17;
      }

      swift_unknownObjectRelease();
      result = sub_224B1B948(v11, v16);
      *v14 = v16;
    }
  }

  return result;
}

uint64_t sub_224B07474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = sub_224DAC5E8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_224A3311C(a1, &qword_27D6F3BB0, &unk_224DB8CF0);
    sub_224B0CE50(a2, a3, v10);

    return sub_224A3311C(v10, &qword_27D6F3BB0, &unk_224DB8CF0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_224B1F374(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_224B0764C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = sub_224DAE438();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_224A3311C(a1, &unk_27D6F38C0, &qword_224DB31E8);
    sub_224B0CFF8(a2, a3, v10);

    return sub_224A3311C(v10, &unk_27D6F38C0, &qword_224DB31E8);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_224B1F550(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_224B07824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC8, &qword_224DB48A8);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = sub_224DABD48();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_224A3311C(a1, &qword_27D6F3BC8, &qword_224DB48A8);
    sub_224B0D1A0(a2, a3, v10);

    return sub_224A3311C(v10, &qword_27D6F3BC8, &qword_224DB48A8);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_224B1F72C(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_224B079FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_224A36F98(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_224B1FEE8(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_224A3311C(a1, &qword_27D6F3D78, &qword_224DB49F0);
    v7 = sub_224B0B6F0(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_224B25B0C();
        v11 = v13;
      }

      sub_224A36F98((*(v11 + 56) + 40 * v9), v14);
      sub_224B1C2C4(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_224A3311C(v14, &qword_27D6F3D78, &qword_224DB49F0);
  }

  return result;
}

uint64_t sub_224B07B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v7 = type metadata accessor for InteractiveWidgetActionRunner();
    sub_224B31048(a1, a3, isUniquelyReferenced_nonNull_native, &v23, v7, &off_28382CD48);
    v8 = sub_224DA9908();
    result = (*(*(v8 - 8) + 8))(a3, v8);
    *v3 = v23;
  }

  else
  {
    v10 = v3;
    v11 = sub_224A438E8(a3);
    if (v12)
    {
      v13 = v11;
      v14 = v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v23 = *v10;
      if (!v15)
      {
        sub_224B26F48(MEMORY[0x277CC95F0], &qword_27D6F3950, &qword_224DB4748);
        v14 = v10;
        v16 = v23;
      }

      v17 = *(v16 + 48);
      v18 = sub_224DA9908();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      swift_unknownObjectRelease();
      sub_224B1DEB8(v13, v16);
      result = (v20)(a3, v18);
      *v14 = v16;
    }

    else
    {
      v21 = sub_224DA9908();
      v22 = *(*(v21 - 8) + 8);

      return v22(a3, v21);
    }
  }

  return result;
}

uint64_t sub_224B07D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_224B20090(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_224A3A40C(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_224B25F40();
        v16 = v18;
      }

      result = sub_224B1B948(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_224B07E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_224B20A98(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_224A3A40C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_224B26C8C();
        v14 = v16;
      }

      result = sub_224A9C790(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void sub_224B07F24(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = sub_224DA9878();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_224A3311C(a1, &qword_27D6F32B0, &qword_224DB3EA0);
    sub_224B0D4E4(a2, v8);

    sub_224A3311C(v8, &qword_27D6F32B0, &qword_224DB3EA0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_224B20C14(v13, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v16;
  }
}

uint64_t sub_224B080E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_224B21378(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_224A692B0(a2, &unk_27D6F30D0, &unk_224DB2AC0, &qword_281351878, &qword_281351870);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_224B28D68(&unk_27D6F30D0, &unk_224DB2AC0, &qword_27D6F3B88, &qword_224DB4880);
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_224B1BCEC(v11, v13, &unk_27D6F30D0, &unk_224DB2AC0, &qword_281351878, MEMORY[0x277CFA018]);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_224B08344(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = sub_224DA9878();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_224A3311C(a1, &qword_27D6F32B0, &qword_224DB3EA0);
    sub_224B0D688(a2, v8);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_224A3311C(v8, &qword_27D6F32B0, &qword_224DB3EA0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_224B21108(v13, a2, isUniquelyReferenced_nonNull_native);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v19;
  }

  return result;
}

uint64_t sub_224B08588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_224A4F294(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_27D6F3A08, &unk_224DC3B90);

    *v3 = v15;
  }

  else
  {
    v10 = sub_224A3A40C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_224B29544(&qword_27D6F3A08, &unk_224DC3B90);
        v14 = v16;
      }

      result = sub_224A9C790(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_224B086A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_224B215E0(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_224DABCC8();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_224B0B978(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_224B2ADD4(MEMORY[0x277CF9880], &qword_27D6F3D88, &qword_224DB49F8);
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_224DABCC8();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_224A4AE40(v11, v13, MEMORY[0x277CF9880], &unk_281350EB0, MEMORY[0x277CF9880], MEMORY[0x277CF9888]);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_224DABCC8();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_224B088C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_224A46948(a1, a2, isUniquelyReferenced_nonNull_native, &qword_27D6F3D50, &qword_224DB49D8);
    v7 = sub_224DA9908();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_224A438E8(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_224B2ADD4(MEMORY[0x277CC95F0], &qword_27D6F3D50, &qword_224DB49D8);
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_224DA9908();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_224A4AE40(v11, v13, MEMORY[0x277CC95F0], &qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_224DA9908();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_224B08B00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_224B217E4(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_224A5C3D0(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_224B27D34();
        v11 = v13;
      }

      swift_unknownObjectRelease();
      result = sub_224B1CD04(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_224B08BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_224B21944(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_27D6F3C28, &qword_224DB48F0);

    *v3 = v15;
  }

  else
  {
    v10 = sub_224A3A40C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_224B29FDC(&qword_27D6F3C28, &qword_224DB48F0);
        v14 = v16;
      }

      result = sub_224A9C790(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_224B08CD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_224B21F9C(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_224DAC2B8();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_224B0BBA8(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_224B2ADD4(MEMORY[0x277CF99B8], &qword_27D6F3BB8, &qword_224DB48A0);
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_224DAC2B8();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_224A4AE40(v11, v13, MEMORY[0x277CF99B8], &qword_281350E20, MEMORY[0x277CF99B8], MEMORY[0x277CF99C8]);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_224DAC2B8();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_224B08F00(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C08, &qword_224DB48D0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_224A3311C(a1, &qword_27D6F3C08, &qword_224DB48D0);
    sub_224B0DAD4(a2, v8);
    v14 = sub_224DAAF48();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_224A3311C(v8, &qword_27D6F3C08, &qword_224DB48D0);
  }

  else
  {
    sub_224B31438(a1, v12, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_224B221A0(v12, a2, isUniquelyReferenced_nonNull_native);
    v17 = sub_224DAAF48();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v19;
  }

  return result;
}

uint64_t sub_224B09120(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B30, &unk_224DBB840);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for SimpleWorkScheduler.Work(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_224A3311C(a1, &qword_27D6F3B30, &unk_224DBB840);
    v15 = sub_224AA7620(a2);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v3;
      v23 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_224B2898C();
        v19 = v23;
      }

      sub_224B31438(*(v19 + 56) + *(v11 + 72) * v17, v9, type metadata accessor for SimpleWorkScheduler.Work);
      sub_224B1D684(v17, v19);
      *v3 = v19;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_224A3311C(v9, &qword_27D6F3B30, &unk_224DBB840);
  }

  else
  {
    sub_224B31438(a1, v14, type metadata accessor for SimpleWorkScheduler.Work);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    result = sub_224B22374(v14, a2, v20);
    *v3 = v23;
  }

  return result;
}

uint64_t sub_224B09374(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = sub_224DAD9C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_224A3311C(a1, &qword_27D6F3BD8, &qword_224DB9C20);
    sub_224B0DE48(a2, v8);
    v14 = sub_224DA9908();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_224A3311C(v8, &qword_27D6F3BD8, &qword_224DB9C20);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_224B228C4(v13, a2, isUniquelyReferenced_nonNull_native);
    v17 = sub_224DA9908();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v19;
  }

  return result;
}

uint64_t sub_224B095A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_224B22B28(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = sub_224DA9908();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v22;
  }

  else
  {
    v11 = sub_224A438E8(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        sub_224B292B0();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = sub_224DA9908();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);

      sub_224B1DEB8(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = sub_224DA9908();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

uint64_t sub_224B0976C(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_224A61E5C(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v21 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_224B29A98();
        v10 = v21;
      }

      v11 = *(v10 + 48);
      v12 = sub_224DAC268();
      v13 = *(v12 - 8);
      v14 = *(v13 + 8);
      v14(v11 + *(v13 + 72) * v8, v12);
      sub_224B1E3C0(v8, v10);
      result = (v14)(a3, v12);
      *v4 = v10;
    }

    else
    {
      v19 = sub_224DAC268();
      v20 = *(*(v19 - 8) + 8);

      return v20(a3, v19);
    }
  }

  else
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_224B22EE4(a1, a3, v17);
    v18 = sub_224DAC268();
    result = (*(*(v18 - 8) + 8))(a3, v18);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_224B09920(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_224A36F98(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_224B230AC(v9, a2, isUniquelyReferenced_nonNull_native, &qword_27D6F3AE0, &qword_224DB4818, sub_224A39D14, sub_224A39D14);
    v5 = sub_224DAC268();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_224A3311C(a1, &qword_27D6F3AE8, &unk_224DB9600);
    sub_224B0E3B8(a2, sub_224A39D14, &qword_27D6F3AE0, &qword_224DB4818, sub_224A39D14, v9);
    v7 = sub_224DAC268();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_224A3311C(v9, &qword_27D6F3AE8, &unk_224DB9600);
  }

  return result;
}

void sub_224B09A8C(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_224B23ACC(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_224A3E7EC(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_224B2AAF4();
        v10 = v13;
      }

      sub_224A58C3C(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_224B09B90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_224B23C38(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_224DABE18();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_224B0BDA0(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_224B2ADD4(MEMORY[0x277CF98E0], &qword_27D6F3D90, &qword_224DB4A00);
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_224DABE18();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_224A4AE40(v11, v13, MEMORY[0x277CF98E0], &qword_281350E88, MEMORY[0x277CF98E0], MEMORY[0x277CF98E8]);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_224DABE18();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

void sub_224B09DB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v19 - v11;
  v13 = sub_224DA9878();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v13) == 1)
  {
    sub_224A3311C(a1, &qword_27D6F32B0, &qword_224DB3EA0);
    sub_224B0E8E0(a2, a3, a4, v12);

    sub_224A3311C(v12, &qword_27D6F32B0, &qword_224DB3EA0);
  }

  else
  {
    (*(v14 + 32))(v17, a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_224B242A4(v17, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v20;
  }
}

char *sub_224B09FAC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v125 = &v116 - v7;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38B0, &qword_224DB46F8);
  v9 = MEMORY[0x28223BE20](v136, v8);
  v135 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v134 = &v116 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v133 = &v116 - v15;
  v138 = sub_224DAE438();
  v16 = *(v138 - 8);
  v18 = MEMORY[0x28223BE20](v138, v17);
  v119 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v126 = &v116 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v116 - v24;
  swift_beginAccess();
  v120 = v2;

  v27 = sub_224B30D98(v26, a1, a2, sub_224B30540, sub_224B30540);

  v117 = v27;
  v28 = sub_224B2B924(v27, sub_224B2C04C, sub_224B2C04C);
  v116 = 0;
  v29 = *(v28 + 2);
  if (v29)
  {
    v140 = MEMORY[0x277D84F90];
    sub_224ADA138(0, v29, 0);
    v137 = v140;
    v30 = v28 + 64;
    result = sub_224DAF798();
    v32 = result;
    v33 = 0;
    v124 = v16 + 16;
    v34 = v16 + 32;
    v118 = v28 + 72;
    v127 = v25;
    v121 = v29;
    v122 = v28 + 64;
    v123 = v28;
    while ((v32 & 0x8000000000000000) == 0 && v32 < 1 << v28[32])
    {
      if ((*&v30[8 * (v32 >> 6)] & (1 << v32)) == 0)
      {
        goto LABEL_54;
      }

      v130 = 1 << v32;
      v131 = v32 >> 6;
      v36 = *(v28 + 9);
      v128 = v33;
      v129 = v36;
      v37 = v34;
      v38 = v136;
      v39 = *(v136 + 48);
      v40 = *(v28 + 7);
      v41 = (*(v28 + 6) + 16 * v32);
      v42 = *v41;
      v43 = v41[1];
      v132 = *(v16 + 72);
      v44 = v133;
      v45 = v138;
      (*(v16 + 16))(&v133[v39], v40 + v132 * v32, v138);
      v46 = v16;
      v47 = v134;
      *v134 = v42;
      *(v47 + 8) = v43;
      v48 = *(v46 + 32);
      v48(v47 + *(v38 + 48), &v44[v39], v45);
      v49 = v135;
      sub_224B314A0(v47, v135);
      v16 = v46;
      v50 = v127;

      v51 = *(v38 + 48);
      v34 = v37;
      v48(v50, &v49[v51], v45);
      v52 = v137;
      v140 = v137;
      v54 = *(v137 + 2);
      v53 = *(v137 + 3);
      if (v54 >= v53 >> 1)
      {
        sub_224ADA138((v53 > 1), v54 + 1, 1);
        v45 = v138;
        v52 = v140;
      }

      *(v52 + 2) = v54 + 1;
      v55 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v137 = v52;
      result = (v48)(&v52[v55 + v54 * v132], v50, v45);
      v28 = v123;
      v35 = 1 << v123[32];
      if (v32 >= v35)
      {
        goto LABEL_55;
      }

      v30 = v122;
      v56 = *&v122[8 * v131];
      if ((v56 & v130) == 0)
      {
        goto LABEL_56;
      }

      if (v129 != *(v123 + 9))
      {
        goto LABEL_57;
      }

      v57 = v56 & (-2 << (v32 & 0x3F));
      if (v57)
      {
        v35 = __clz(__rbit64(v57)) | v32 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v58 = v131 << 6;
        v59 = v131 + 1;
        v60 = &v118[8 * v131];
        while (v59 < (v35 + 63) >> 6)
        {
          v62 = *v60++;
          v61 = v62;
          v58 += 64;
          ++v59;
          if (v62)
          {
            result = sub_224A3E204(v32, v129, 0);
            v35 = __clz(__rbit64(v61)) + v58;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v32, v129, 0);
      }

LABEL_4:
      v33 = v128 + 1;
      v32 = v35;
      if (v128 + 1 == v121)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v137 = MEMORY[0x277D84F90];
LABEL_21:
  v63 = v138;
  v64 = v126;
  v65 = sub_224B2B924(v117, sub_224B2BA94, sub_224B2BA94);

  v66 = *(v65 + 2);
  if (v66)
  {
    v140 = MEMORY[0x277D84F90];
    sub_224ADA138(0, v66, 0);
    v67 = v140;
    v68 = v65 + 64;
    result = sub_224DAF798();
    v69 = result;
    v70 = 0;
    v124 = v16 + 16;
    v118 = v65 + 72;
    v121 = v66;
    v122 = v65 + 64;
    v132 = v16 + 32;
    v123 = v65;
    while ((v69 & 0x8000000000000000) == 0 && v69 < 1 << v65[32])
    {
      if ((*&v68[8 * (v69 >> 6)] & (1 << v69)) == 0)
      {
        goto LABEL_59;
      }

      v129 = 1 << v69;
      v130 = v69 >> 6;
      v74 = *(v65 + 9);
      v127 = v70;
      v128 = v74;
      v75 = v136;
      v76 = *(v136 + 48);
      v77 = *(v65 + 7);
      v78 = (*(v65 + 6) + 16 * v69);
      v80 = *v78;
      v79 = v78[1];
      v131 = *(v16 + 72);
      v81 = v133;
      v82 = v138;
      (*(v16 + 16))(&v133[v76], v77 + v131 * v69, v138);
      v83 = v67;
      v84 = v134;
      *v134 = v80;
      *(v84 + 1) = v79;
      v85 = *(v16 + 32);
      v85(&v84[*(v75 + 48)], &v81[v76], v82);
      v86 = v84;
      v67 = v83;
      v87 = v135;
      sub_224B314A0(v86, v135);

      v88 = v119;
      v85(v119, &v87[*(v75 + 48)], v82);
      v140 = v83;
      v90 = *(v83 + 2);
      v89 = *(v83 + 3);
      if (v90 >= v89 >> 1)
      {
        sub_224ADA138((v89 > 1), v90 + 1, 1);
        v82 = v138;
        v67 = v140;
      }

      *(v67 + 2) = v90 + 1;
      result = (v85)(&v67[((*(v16 + 80) + 32) & ~*(v16 + 80)) + v90 * v131], v88, v82);
      v65 = v123;
      v71 = 1 << v123[32];
      if (v69 >= v71)
      {
        goto LABEL_60;
      }

      v68 = v122;
      v91 = *&v122[8 * v130];
      if ((v91 & v129) == 0)
      {
        goto LABEL_61;
      }

      if (v128 != *(v123 + 9))
      {
        goto LABEL_62;
      }

      v92 = v91 & (-2 << (v69 & 0x3F));
      if (v92)
      {
        v71 = __clz(__rbit64(v92)) | v69 & 0x7FFFFFFFFFFFFFC0;
        v72 = v121;
      }

      else
      {
        v93 = v130 << 6;
        v94 = v130 + 1;
        v95 = &v118[8 * v130];
        v72 = v121;
        while (v94 < (v71 + 63) >> 6)
        {
          v97 = *v95++;
          v96 = v97;
          v93 += 64;
          ++v94;
          if (v97)
          {
            result = sub_224A3E204(v69, v128, 0);
            v71 = __clz(__rbit64(v96)) + v93;
            goto LABEL_24;
          }
        }

        result = sub_224A3E204(v69, v128, 0);
      }

LABEL_24:
      v70 = v127 + 1;
      v69 = v71;
      v73 = v120;
      if (v127 + 1 == v72)
      {

        v98 = v138;
        v64 = v126;
        goto LABEL_41;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v67 = MEMORY[0x277D84F90];
  v73 = v120;
  v98 = v63;
LABEL_41:
  v99 = *(v137 + 2);
  if (v99)
  {
    v135 = *(v16 + 16);
    v136 = v16 + 16;
    v100 = &v137[(*(v16 + 80) + 32) & ~*(v16 + 80)];
    v101 = (v16 + 56);
    v133 = v67;
    v134 = (v16 + 32);
    v102 = *(v16 + 72);
    v103 = (v16 + 8);
    (v135)(v64, v100, v98);
    while (1)
    {
      v108 = sub_224DAE418();
      v110 = v109;
      swift_beginAccess();
      v111 = sub_224A3A40C(v108, v110);
      v113 = v112;

      if (v113)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115 = *(v73 + 16);
        v139 = v115;
        *(v73 + 16) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_224B28068(MEMORY[0x277CF9EF8], &qword_27D6F38B8, &qword_224DB4700);
          v115 = v139;
        }

        v105 = v125;
        v106 = v138;
        (*v134)(v125, *(v115 + 56) + v111 * v102, v138);
        sub_224B1BAF8(v111, v115, MEMORY[0x277CF9EF8]);
        *(v73 + 16) = v115;

        v104 = 0;
      }

      else
      {
        v104 = 1;
        v105 = v125;
        v106 = v138;
      }

      (*v101)(v105, v104, 1, v106);
      sub_224A3311C(v105, &unk_27D6F38C0, &qword_224DB31E8);
      swift_endAccess();
      v107 = v126;
      (*v103)(v126, v106);
      v100 += v102;
      if (!--v99)
      {
        break;
      }

      (v135)(v107, v100, v106);
    }

    return v133;
  }

  else
  {
  }

  return v67;
}

uint64_t sub_224B0AAFC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *, char *, uint64_t)@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v46 = a1;
  v47 = a2;
  v48 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v44 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v43 - v10;
  v12 = sub_224DA9878();
  v45 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v43 - v18;
  v20 = sub_224DAE438();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v43 - v27;
  swift_beginAccess();
  v29 = *(v3 + 16);
  if (!*(v29 + 16))
  {
    return (*(v21 + 56))(v48, 1, 1, v20);
  }

  v43 = v4;

  v30 = sub_224A3A40C(v46, v47);
  if ((v31 & 1) == 0)
  {

    return (*(v21 + 56))(v48, 1, 1, v20);
  }

  (*(v21 + 16))(v25, *(v29 + 56) + *(v21 + 72) * v30, v20);

  v47 = *(v21 + 32);
  v47(v28, v25, v20);
  sub_224DAE3E8();
  v32 = v45;
  if ((*(v45 + 48))(v11, 1, v12) == 1)
  {
    sub_224A3311C(v11, &qword_27D6F32B0, &qword_224DB3EA0);
  }

  else
  {
    (*(v32 + 32))(v19, v11, v12);
    sub_224DA9808();
    v34 = v32;
    v35 = sub_224DA9798();
    v36 = *(v34 + 8);
    v36(v16, v12);
    v36(v19, v12);
    if (v35)
    {
      v37 = sub_224DAE418();
      v39 = v38;
      v40 = *(v21 + 56);
      v41 = v44;
      v40(v44, 1, 1, v20);
      swift_beginAccess();
      sub_224B0764C(v41, v37, v39);
      swift_endAccess();
      (*(v21 + 8))(v28, v20);
      return (v40)(v48, 1, 1, v20);
    }
  }

  v42 = v48;
  v47(v48, v28, v20);
  return (*(v21 + 56))(v42, 0, 1, v20);
}

char *sub_224B0AF80()
{
  swift_beginAccess();

  return sub_224B07278(v0);
}

uint64_t sub_224B0AFC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v12 - v4;
  v6 = sub_224DAE418();
  v8 = v7;
  v9 = sub_224DAE438();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v5, a1, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  swift_beginAccess();
  sub_224B0764C(v5, v6, v8);
  return swift_endAccess();
}

uint64_t sub_224B0B10C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  v8 = sub_224DAE438();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  swift_beginAccess();

  sub_224B0764C(v7, a1, a2);
  return swift_endAccess();
}

uint64_t sub_224B0B208(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();

  v7 = sub_224B30D98(v6, a1, a2, sub_224B30938, sub_224B30938);

  *(v5 + 16) = v7;
}

unint64_t sub_224B0B2F8(uint64_t a1)
{
  sub_224DAE178();
  v2 = MEMORY[0x277CF9ED8];
  sub_224A439BC(&qword_27D6F3960, MEMORY[0x277CF9ED8], MEMORY[0x277CF9EE0]);
  v3 = sub_224DAED88();
  return sub_224A43000(a1, v3, MEMORY[0x277CF9ED8], &qword_27D6F3968, v2, MEMORY[0x277CF9EE8]);
}

unint64_t sub_224B0B3CC(uint64_t a1)
{
  sub_224DAAF48();
  v2 = MEMORY[0x277D46790];
  sub_224A439BC(&qword_281351738, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
  v3 = sub_224DAED88();
  return sub_224A43000(a1, v3, MEMORY[0x277D46790], &qword_281351730, v2, MEMORY[0x277D467B8]);
}

unint64_t sub_224B0B4A0(uint64_t a1)
{
  sub_224DAFE68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA8]);
  sub_224DAED98();
  type metadata accessor for ReloadRequestKey(0);
  sub_224DAEE78();
  v2 = sub_224DAFEA8();

  return sub_224B0C0D0(a1, v2);
}

unint64_t sub_224B0B624(uint64_t a1)
{
  v2 = sub_224DAF8B8();

  return sub_224B0C32C(a1, v2);
}

unint64_t sub_224B0B668(uint64_t a1)
{
  v1 = a1;
  sub_224DAFE68();
  sub_224AF02C0(v1);
  sub_224DAEE78();

  v2 = sub_224DAFEA8();

  return sub_224B0C3F4(v1, v2);
}

unint64_t sub_224B0B6F0(uint64_t a1)
{
  v1 = a1;
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](v1);
  v2 = sub_224DAFEA8();

  return sub_224B0C7B8(v1, v2);
}

unint64_t sub_224B0B75C(uint64_t a1)
{
  sub_224DA9F08();
  v2 = MEMORY[0x277CF9F40];
  sub_224A439BC(&unk_2813519E0, MEMORY[0x277CF9F40], MEMORY[0x277CF9F48]);
  v3 = sub_224DAED88();
  return sub_224A43000(a1, v3, MEMORY[0x277CF9F40], &qword_2813519D8, v2, MEMORY[0x277CF9F50]);
}

unint64_t sub_224B0B8A4(uint64_t a1)
{
  sub_224DAC918();
  v2 = MEMORY[0x277CF9A98];
  sub_224A439BC(&qword_281350D70, MEMORY[0x277CF9A98], MEMORY[0x277CF9AA0]);
  v3 = sub_224DAED88();
  return sub_224A43000(a1, v3, MEMORY[0x277CF9A98], &qword_281350D68, v2, MEMORY[0x277CF9AA8]);
}

unint64_t sub_224B0B978(uint64_t a1)
{
  sub_224DABCC8();
  v2 = MEMORY[0x277CF9880];
  sub_224A439BC(&unk_281350EB0, MEMORY[0x277CF9880], MEMORY[0x277CF9888]);
  v3 = sub_224DAED88();
  return sub_224A43000(a1, v3, MEMORY[0x277CF9880], &qword_281350EA8, v2, MEMORY[0x277CF9890]);
}

unint64_t sub_224B0BA4C(uint64_t a1)
{
  sub_224DAEE18();
  sub_224DAFE68();
  sub_224DAEE78();
  v2 = sub_224DAFEA8();

  return sub_224B0C828(a1, v2);
}

unint64_t sub_224B0BBA8(uint64_t a1)
{
  sub_224DAC2B8();
  v2 = MEMORY[0x277CF99B8];
  sub_224A439BC(&qword_281350E20, MEMORY[0x277CF99B8], MEMORY[0x277CF99C8]);
  v3 = sub_224DAED88();
  return sub_224A43000(a1, v3, MEMORY[0x277CF99B8], &qword_281350E18, v2, MEMORY[0x277CF99D0]);
}

unint64_t sub_224B0BC7C(uint64_t a1)
{
  sub_224DADE68();
  v2 = MEMORY[0x277CF9E28];
  sub_224A439BC(&qword_27D6F39F0, MEMORY[0x277CF9E28], MEMORY[0x277CF9E30]);
  v3 = sub_224DAED88();
  return sub_224A43000(a1, v3, MEMORY[0x277CF9E28], &qword_27D6F39F8, v2, MEMORY[0x277CF9E38]);
}

unint64_t sub_224B0BDA0(uint64_t a1)
{
  sub_224DABE18();
  v2 = MEMORY[0x277CF98E0];
  sub_224A439BC(&qword_281350E88, MEMORY[0x277CF98E0], MEMORY[0x277CF98E8]);
  v3 = sub_224DAED88();
  return sub_224A43000(a1, v3, MEMORY[0x277CF98E0], &qword_281350E80, v2, MEMORY[0x277CF98F0]);
}

unint64_t sub_224B0BE74(uint64_t a1)
{
  sub_224DAA0F8();
  v2 = MEMORY[0x277CF9FD8];
  sub_224A439BC(&qword_2813518A8, MEMORY[0x277CF9FD8], MEMORY[0x277CF9FE0]);
  v3 = sub_224DAED88();
  return sub_224B0C998(a1, v3, MEMORY[0x277CF9FD8], &qword_2813518A0, v2, MEMORY[0x277CF9FE8]);
}

unint64_t sub_224B0BF58(uint64_t a1)
{
  sub_224DAA6D8();
  v2 = MEMORY[0x277D7BB80];
  sub_224A439BC(&qword_2813517C8, MEMORY[0x277D7BB80], MEMORY[0x277D7BB88]);
  v3 = sub_224DAED88();
  return sub_224B0C998(a1, v3, MEMORY[0x277D7BB80], &qword_2813517C0, v2, MEMORY[0x277D7BB90]);
}

unint64_t sub_224B0C03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_224DAFE68();
  sub_224DAF6B8();
  sub_224DAEE78();
  v6 = sub_224DAFEA8();

  return sub_224B0CA88(a1, a2, a3, v6);
}

unint64_t sub_224B0C0D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = type metadata accessor for ReloadRequestKey(0);
  MEMORY[0x28223BE20](v20, v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v3 + 32);
  v11 = a2 & ~v10;
  if ((*(v3 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v21 = ~v10;
    v12 = *(v7 + 72);
    do
    {
      sub_224B313D0(*(v3 + 48) + v12 * v11, v9, type metadata accessor for ReloadRequestKey);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      sub_224A33088(&qword_2813518E8, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FB8]);
      sub_224DAEFA8();
      sub_224DAEFA8();
      if (v24 == v22 && v25 == v23)
      {
      }

      else
      {
        v13 = sub_224DAFD88();

        if ((v13 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v14 = *(v20 + 20);
      v15 = *&v9[v14];
      v16 = *&v9[v14 + 8];
      v17 = (a1 + v14);
      v18 = v15 == *v17 && v16 == v17[1];
      if (v18 || (sub_224DAFD88() & 1) != 0)
      {
        sub_224B30FEC(v9);
        return v11;
      }

LABEL_3:
      sub_224B30FEC(v9);
      v11 = (v11 + 1) & v21;
    }

    while (((*(v3 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_224B0C32C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_224B3130C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AA5DC30](v9, a1);
      sub_224AD52A4(v9);
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

unint64_t sub_224B0C3F4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE90000000000006ELL;
      v8 = 0x6F69736E65747865;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000013;
          v7 = 0x8000000224DC43A0;
          break;
        case 2:
          v8 = 0xD000000000000010;
          v7 = 0x8000000224DC43C0;
          break;
        case 3:
          v8 = 0xD000000000000010;
          v7 = 0x8000000224DC43E0;
          break;
        case 4:
          v8 = 0xD000000000000017;
          v7 = 0x8000000224DC4400;
          break;
        case 5:
          v8 = 0xD000000000000014;
          v7 = 0x8000000224DC4420;
          break;
        case 6:
          break;
        case 7:
          v7 = 0xE400000000000000;
          v8 = 1852793705;
          break;
        case 8:
          v8 = 0xD000000000000016;
          v7 = 0x8000000224DC4450;
          break;
        case 9:
          v8 = 0xD000000000000016;
          v7 = 0x8000000224DC4470;
          break;
        case 0xA:
          v8 = 0xD000000000000016;
          v7 = 0x8000000224DC4490;
          break;
        case 0xB:
          v8 = 0xD00000000000001DLL;
          v7 = 0x8000000224DC44B0;
          break;
        case 0xC:
          v8 = 0xD00000000000001ALL;
          v7 = 0x8000000224DC44D0;
          break;
        default:
          v8 = 0xD000000000000010;
          v7 = 0x8000000224DC4380;
          break;
      }

      v9 = 0x6F69736E65747865;
      v10 = 0xE90000000000006ELL;
      switch(a1)
      {
        case 1:
          v10 = 0x8000000224DC43A0;
          if (v8 == 0xD000000000000013)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        case 2:
          v10 = 0x8000000224DC43C0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 3:
          v10 = 0x8000000224DC43E0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 4:
          v10 = 0x8000000224DC4400;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 5:
          v10 = 0x8000000224DC4420;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 6:
          goto LABEL_38;
        case 7:
          v10 = 0xE400000000000000;
          if (v8 != 1852793705)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 8:
          v10 = 0x8000000224DC4450;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 9:
          v10 = 0x8000000224DC4470;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 10:
          v9 = 0xD000000000000016;
          v10 = 0x8000000224DC4490;
LABEL_38:
          if (v8 == v9)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        case 11:
          v10 = 0x8000000224DC44B0;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 12:
          v10 = 0x8000000224DC44D0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        default:
          v10 = 0x8000000224DC4380;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_40;
          }

LABEL_39:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_40:
          v11 = sub_224DAFD88();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_224B0C7B8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_224B0C828(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_224DAEE18();
      v8 = v7;
      if (v6 == sub_224DAEE18() && v8 == v9)
      {
        break;
      }

      v11 = sub_224DAFD88();

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

unint64_t sub_224B0C92C(uint64_t a1, uint64_t a2)
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

unint64_t sub_224B0C998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v7 = -1 << *(v6 + 32);
  v8 = a2 & ~v7;
  if ((*(v6 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v12 = ~v7;
    a3(0);
    sub_224A439BC(a4, a5, a6);
    do
    {
      if (sub_224DAEDD8())
      {
        break;
      }

      v8 = (v8 + 1) & v12;
    }

    while (((*(v6 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_224B0CA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = ~v5;
    sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
    do
    {
      v9 = *(v4 + 48) + 24 * v6;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *v9;

      if (sub_224DAF6A8())
      {
        if (v10 == a2 && v11 == a3)
        {

          return v6;
        }

        v14 = sub_224DAFD88();

        if (v14)
        {
          return v6;
        }
      }

      else
      {
      }

      v6 = (v6 + 1) & v8;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

void *sub_224B0CC54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_224B0CD98(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3A10, &unk_224DB3B80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

uint64_t sub_224B0CE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_224A3A40C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224B28068(MEMORY[0x277CF9A78], &unk_27D6F3970, &qword_224DB4758);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_224DAC5E8();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_224B1BAF8(v8, v10, MEMORY[0x277CF9A78]);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_224DAC5E8();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_224B0CFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_224A3A40C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224B28068(MEMORY[0x277CF9EF8], &qword_27D6F38B8, &qword_224DB4700);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_224DAE438();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_224B1BAF8(v8, v10, MEMORY[0x277CF9EF8]);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_224DAE438();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_224B0D1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_224A3A40C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224B28068(MEMORY[0x277CF98A0], &qword_27D6F3BD0, &qword_224DB48B0);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_224DABD48();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_224B1BAF8(v8, v10, MEMORY[0x277CF98A0]);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_224DABD48();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_224B0D348(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_224A3A40C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_224B2572C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_224A9C790(v6, v8);
  *v3 = v8;
  return v9;
}

unint64_t sub_224B0D3F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_224A3A40C(a1, a2);
  v6 = v5;
  if (v5)
  {
    v7 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224B263F4();
      v9 = v12;
    }

    v10 = *(*(v9 + 56) + 4 * v7);
    sub_224B1C464(v7, v9);
    *v3 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 | (((v6 & 1) == 0) << 32);
}

uint64_t sub_224B0D4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_224B0B854(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224A83C50(MEMORY[0x277CC9578], &qword_27D6F3BF0, &qword_224DB48C0);
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = sub_224DA9878();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_224B1E1F0(v7, v9, MEMORY[0x277CC9578]);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = sub_224DA9878();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_224B0D688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_224A692B0(a1, &unk_27D6F30D0, &unk_224DB2AC0, &qword_281351878, &qword_281351870);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224B277F4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_224DA9878();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_224B1C974(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_224DA9878();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_224B0D854(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_224A3A40C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_224B29544(&qword_27D6F3A08, &unk_224DC3B90);
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_224A9C790(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_224B0D8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_224B0BBA8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224B2B08C(MEMORY[0x277CF9C60], MEMORY[0x277CF99B8], &qword_27D6F3BA8, &qword_224DB4898);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_224DAC2B8();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_224DAD158();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_224B1CFB4(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_224DAD158();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_224B0DAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_224B0B3CC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224B28668();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_224DAAF48();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord(0);
    v20 = *(v13 - 8);
    sub_224B31438(v12 + *(v20 + 72) * v7, a2, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
    sub_224B1D340(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_224B0DC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_224A61E5C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224B2B08C(MEMORY[0x277CF9C60], MEMORY[0x277CF9978], &qword_27D6F3D58, &qword_224DB49E0);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_224DAC268();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_224DAD158();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_224B1D830(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_224DAD158();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_224B0DE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_224A438E8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224B2B08C(MEMORY[0x277CF9D80], MEMORY[0x277CC95F0], &unk_27D6F3BE0, &qword_224DB48B8);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_224DA9908();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_224DAD9C8();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_224B1DB74(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_224DAD9C8();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_224B0E020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_224A3E7EC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224A83C50(MEMORY[0x277CF9A10], &qword_27D6F7160, &qword_224DB4738);
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = sub_224DAC378();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_224B1E1F0(v7, v9, MEMORY[0x277CF9A10]);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = sub_224DAC378();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_224B0E200(void *a1, uint64_t (*a2)(void *, uint64_t (*)(void), uint64_t *, uint64_t *, uint64_t (*)(uint64_t, uint64_t)), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = v5;
  v8 = *v5;
  if ((*v5 & 0xC000000000000001) == 0)
  {
    v10 = a3;
    v14 = a4;
    v19 = a2(a1, a2, a3, a4, a5);
    if (v20)
    {
      v8 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v5;
      v24 = *v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v18 = *(*(v22 + 56) + 8 * v8);
        sub_224A58C3C(v8, v22);
        *v7 = v22;
        return v18;
      }

LABEL_14:
      sub_224B2A574(v10, v14);
      v22 = v24;
      goto LABEL_10;
    }

    return 0;
  }

  if (v8 < 0)
  {
    v10 = *v5;
  }

  else
  {
    v10 = (v8 & 0xFFFFFFFFFFFFFF8);
  }

  v11 = a1;
  v12 = sub_224DAFB08();

  if (!v12)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v13 = sub_224DAF838();
  v14 = a5(v10, v13);

  v15 = (a2)(v11);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = *(v14[7] + 8 * v15);
  sub_224A58C3C(v15, v14);

  *v7 = v14;
  return v18;
}

double sub_224B0E3B8@<D0>(uint64_t a1@<X0>, void (*a2)(unint64_t, uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void (*a5)(_BYTE *, unint64_t)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_224A61E5C(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v21 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224B29D30(a3, a4, a5);
      v17 = v21;
    }

    v18 = *(v17 + 48);
    v19 = sub_224DAC268();
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    a2(*(v17 + 56) + 40 * v15, a6);
    sub_224B1E6E0(v15, v17);
    *v11 = v17;
  }

  else
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

uint64_t sub_224B0E4C4(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v13 = sub_224B0BE74(a1);
    if (v14)
    {
      v4 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v17 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v4);
        sub_224B1EA04(v4, v8, MEMORY[0x277CF9FD8], &qword_2813518A8, MEMORY[0x277CF9FD8], MEMORY[0x277CF9FE0]);
        goto LABEL_11;
      }

LABEL_15:
      sub_224B2A9A0(&qword_27D6F3AD8, &qword_224DB4810);
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v2;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = sub_224DAFB08();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_224DAF838();
  v8 = sub_224D2D28C(v5, v7);

  v9 = sub_224B0BE74(a1);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_224B1EA04(v9, v8, MEMORY[0x277CF9FD8], &qword_2813518A8, MEMORY[0x277CF9FD8], MEMORY[0x277CF9FE0]);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_224B0E6B4(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v13 = sub_224B0BF58(a1);
    if (v14)
    {
      v4 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v17 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v4);
        sub_224B1EA04(v4, v8, MEMORY[0x277D7BB80], &qword_2813517C8, MEMORY[0x277D7BB80], MEMORY[0x277D7BB88]);
        goto LABEL_11;
      }

LABEL_15:
      sub_224B2A9A0(&unk_27D6F3AB8, &qword_224DB47F8);
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v2;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = sub_224DAFB08();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_224DAF838();
  v8 = sub_224D2D4FC(v5, v7);

  v9 = sub_224B0BF58(a1);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_224B1EA04(v9, v8, MEMORY[0x277D7BB80], &qword_2813517C8, MEMORY[0x277D7BB80], MEMORY[0x277D7BB88]);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_224B0E8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = sub_224B0C03C(a1, a2, a3);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    v22 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224B2B68C();
      v11 = v22;
    }

    v12 = *(*(v11 + 48) + 24 * v9);

    v13 = *(v11 + 56);
    v14 = sub_224DA9878();
    v21 = *(v14 - 8);
    (*(v21 + 32))(a4, v13 + *(v21 + 72) * v9, v14);
    sub_224B1EF54(v9, v11);
    *v5 = v11;
    v15 = *(v21 + 56);
    v16 = a4;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = sub_224DA9878();
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a4;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

void sub_224B0EA70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_224DAE178();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3958, &qword_224DB4750);
  v41 = v4;
  v11 = sub_224DAFB98();
  v12 = v11;
  if (*(v10 + 16))
  {
    v45 = v9;
    v37 = v2;
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
    v38 = (v6 + 16);
    v39 = v10;
    v40 = v6;
    v42 = (v6 + 32);
    v19 = v11 + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v44 = *(v40 + 72);
      v26 = v25 + v44 * v24;
      if (v41)
      {
        (*v42)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v38)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      sub_224A439BC(&qword_27D6F3960, MEMORY[0x277CF9ED8], MEMORY[0x277CF9EE0]);
      v27 = sub_224DAED88();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v42)((*(v12 + 48) + v44 * v20), v45, v5);
      *(*(v12 + 56) + 8 * v20) = v43;
      ++*(v12 + 16);
      v10 = v39;
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

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v10 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_224B0EE4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3B40, &qword_224DB4850);
  v34 = v4;
  v6 = sub_224DAFB98();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_224DAFE68();
      sub_224DAEE78();
      v25 = sub_224DAFEA8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
      ++*(v7 + 16);
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
}

void sub_224B0F154(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ReloadRequestKey(0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3918, &qword_224DB4728);
  v39 = v4;
  v10 = sub_224DAFB98();
  v11 = v10;
  if (*(v9 + 16))
  {
    v35 = v2;
    v36 = v9;
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
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v37 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        sub_224B31438(v25, v8, type metadata accessor for ReloadRequestKey);
        v40 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        sub_224B313D0(v25, v8, type metadata accessor for ReloadRequestKey);
        v40 = *(*(v9 + 56) + 8 * v23);
      }

      sub_224DAFE68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA8]);
      sub_224DAED98();
      sub_224DAEE78();
      v26 = sub_224DAFEA8();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
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
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_224B31438(v8, *(v11 + 48) + v41 * v19, type metadata accessor for ReloadRequestKey);
      *(*(v11 + 56) + 8 * v19) = v40;
      ++*(v11 + 16);
      v9 = v36;
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

    v34 = 1 << *(v9 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_224B0F548(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v36 - v8;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3908, &qword_224DB4720);
  v41 = v4;
  v11 = sub_224DAFB98();
  v12 = v11;
  if (*(v10 + 16))
  {
    v45 = v9;
    v37 = v2;
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
    v38 = (v6 + 16);
    v39 = v10;
    v40 = v6;
    v42 = (v6 + 32);
    v19 = v11 + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v44 = *(v40 + 72);
      v26 = v25 + v44 * v24;
      if (v41)
      {
        (*v42)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v38)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
      v27 = sub_224DAED88();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v42)((*(v12 + 48) + v44 * v20), v45, v5);
      *(*(v12 + 56) + 8 * v20) = v43;
      ++*(v12 + 16);
      v10 = v39;
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

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v10 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_224B0F93C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3D18, &unk_224DC3D10);
  v6 = sub_224DAFB98();
  v7 = v6;
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
    v14 = v6 + 64;
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
        v21 = v20;
        swift_unknownObjectRetain();
      }

      v22 = sub_224DAF698();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
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
        return;
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
}

void sub_224B0FC00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v38 - v8;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3CF8, &qword_224DB49A8);
  v42 = v4;
  v11 = sub_224DAFB98();
  v12 = v11;
  if (*(v10 + 16))
  {
    v45 = v9;
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
    v39 = (v6 + 16);
    v40 = v6;
    v43 = (v6 + 32);
    v19 = v11 + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v22 = (v17 - 1) & v17;
LABEL_15:
      v25 = v21 | (v13 << 6);
      v44 = v22;
      v26 = *(v6 + 72);
      v27 = *(v10 + 48) + v26 * v25;
      if (v42)
      {
        (*v43)(v45, v27, v5);
      }

      else
      {
        (*v39)(v45, v27, v5);
      }

      v28 = *(*(v10 + 56) + v25);
      sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
      v29 = sub_224DAED88();
      v30 = -1 << *(v12 + 32);
      v31 = v29 & ~v30;
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
        return;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v43)((*(v12 + 48) + v26 * v20), v45, v5);
      *(*(v12 + 56) + v20) = v28;
      ++*(v12 + 16);
      v6 = v40;
      v10 = v41;
      v17 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
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
}

void sub_224B0FFC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3D80, &qword_224DC3D50);
  v6 = sub_224DAFB98();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_224A36F98(v21, v31);
      }

      else
      {
        sub_224A3317C(v21, v31);
      }

      sub_224DAFE68();
      MEMORY[0x22AA5E1E0](v20);
      v22 = sub_224DAFEA8();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      sub_224A36F98(v31, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

      v3 = v2;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
}

void sub_224B10264(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = sub_224DAAFC8();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v6);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3D68, &unk_224DC3BA0);
  v39 = v4;
  v9 = sub_224DAFB98();
  v10 = v9;
  if (*(v8 + 16))
  {
    v36 = v3;
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
    v37 = (v5 + 16);
    v38 = v5;
    v17 = (v5 + 32);
    v18 = v9 + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(*(v8 + 48) + 8 * v23);
      v25 = *(v5 + 72);
      v26 = *(v8 + 56) + v25 * v23;
      if (v39)
      {
        (*v17)(v40, v26, v41);
      }

      else
      {
        (*v37)(v40, v26, v41);
      }

      v27 = sub_224DAFE58();
      v28 = -1 << *(v10 + 32);
      v29 = v27 & ~v28;
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
        return;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v10 + 48) + 8 * v19) = v24;
      (*v17)((*(v10 + 56) + v25 * v19), v40, v41);
      ++*(v10 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v36;
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
  *v3 = v10;
}

void sub_224B105B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_224DA9908();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3950, &qword_224DB4748);
  v40 = v4;
  v11 = sub_224DAFB98();
  v12 = v11;
  if (*(v10 + 16))
  {
    v44 = v9;
    v45 = v5;
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
    v38 = v6;
    v41 = (v6 + 32);
    v19 = v11 + 64;
    v39 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v6 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v45);
        v42 = *(*(v10 + 56) + 16 * v24);
      }

      else
      {
        (*v37)(v44, v26, v45);
        v42 = *(*(v10 + 56) + 16 * v24);
        swift_unknownObjectRetain();
      }

      sub_224A439BC(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v27 = sub_224DAED88();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v6 = v38;
        v10 = v39;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v6 = v38;
      v10 = v39;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v41)((*(v12 + 48) + v43 * v20), v44, v45);
      *(*(v12 + 56) + 16 * v20) = v42;
      ++*(v12 + 16);
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

    v35 = 1 << *(v10 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_224B10988(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7020, &qword_224DB47C8);
  v38 = v4;
  v6 = sub_224DAFB98();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
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
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_224DAFE68();
      sub_224DAEE78();
      v28 = sub_224DAFEA8();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_224B10C48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F39C8, &unk_224DC3BD0);
  v34 = v4;
  v6 = sub_224DAFB98();
  v7 = v6;
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
    v14 = v6 + 64;
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
      if (v34)
      {
        sub_224A739A4(v24, v35);
      }

      else
      {
        sub_224A33E0C(v24, v35);
      }

      sub_224DAFE68();
      sub_224DAEE78();
      v25 = sub_224DAFEA8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_224A739A4(v35, (*(v7 + 56) + 32 * v15));
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_34:
  *v3 = v7;
}

void sub_224B10F00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_224DA9F08();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3AF8, &qword_224DB4820);
  v41 = v4;
  v11 = sub_224DAFB98();
  v12 = v11;
  if (*(v10 + 16))
  {
    v45 = v9;
    v37 = v2;
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
    v38 = (v6 + 16);
    v39 = v10;
    v40 = v6;
    v42 = (v6 + 32);
    v19 = v11 + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v44 = *(v40 + 72);
      v26 = v25 + v44 * v24;
      if (v41)
      {
        (*v42)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v38)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      sub_224A439BC(&unk_2813519E0, MEMORY[0x277CF9F40], MEMORY[0x277CF9F48]);
      v27 = sub_224DAED88();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v42)((*(v12 + 48) + v44 * v20), v45, v5);
      *(*(v12 + 56) + 8 * v20) = v43;
      ++*(v12 + 16);
      v10 = v39;
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

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v10 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_224B112DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3CD0, &qword_224DB4980);
  v35 = v4;
  v6 = sub_224DAFB98();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_224DAFE68();
      sub_224DAEE78();
      v25 = sub_224DAFEA8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
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
}

void sub_224B1157C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v40 - v12;
  v14 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v45 = v8;
  v15 = sub_224DAFB98();
  v16 = v15;
  if (*(v14 + 16))
  {
    v49 = v13;
    v41 = v4;
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
    v42 = (v10 + 16);
    v43 = v14;
    v44 = v10;
    v46 = (v10 + 32);
    v23 = v15 + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(v14 + 48);
      v48 = *(v44 + 72);
      v30 = v29 + v48 * v28;
      if (v45)
      {
        (*v46)(v49, v30, v9);
        v47 = *(*(v14 + 56) + 8 * v28);
      }

      else
      {
        (*v42)(v49, v30, v9);
        v47 = *(*(v14 + 56) + 8 * v28);
      }

      sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
      v31 = sub_224DAED88();
      v32 = -1 << *(v16 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v23 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v23 + 8 * v34);
          if (v38 != -1)
          {
            v24 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v33) & ~*(v23 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v46)((*(v16 + 48) + v48 * v24), v49, v9);
      *(*(v16 + 56) + 8 * v24) = v47;
      ++*(v16 + 16);
      v14 = v43;
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

    if ((v45 & 1) == 0)
    {

      v7 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v14 + 32);
    v7 = v41;
    if (v39 >= 64)
    {
      bzero(v18, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v39;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v7 = v16;
}

void sub_224B11984(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C20, &qword_224DB48E8);
  v36 = v4;
  v6 = sub_224DAFB98();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    v14 = v6 + 64;
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
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_224DAFE68();
      sub_224DAEE78();
      v26 = sub_224DAFEA8();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
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
}

void sub_224B11C2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3D70, &qword_224DB41E0);
  v6 = sub_224DAFB98();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_224DAFE68();
      MEMORY[0x22AA5E1E0](v20);
      v22 = sub_224DAFEA8();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
}

void sub_224B11EAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PlatterContentError(0);
  v45 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAC918();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v49 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3CA0, &qword_224DB4958);
  v46 = v4;
  v13 = sub_224DAFB98();
  v14 = v13;
  if (*(v12 + 16))
  {
    v41 = v2;
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
    v42 = (v9 + 16);
    v43 = v9;
    v47 = (v9 + 32);
    v21 = v13 + 64;
    v44 = v12;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v12 + 48);
      v48 = *(v9 + 72);
      v28 = v27 + v48 * v26;
      if (v46)
      {
        (*v47)(v49, v28, v8);
        v29 = *(v12 + 56);
        v30 = *(v45 + 72);
        sub_224B31438(v29 + v30 * v26, v50, type metadata accessor for PlatterContentError);
      }

      else
      {
        (*v42)(v49, v28, v8);
        v31 = *(v12 + 56);
        v30 = *(v45 + 72);
        sub_224B313D0(v31 + v30 * v26, v50, type metadata accessor for PlatterContentError);
      }

      sub_224A439BC(&qword_281350D70, MEMORY[0x277CF9A98], MEMORY[0x277CF9AA0]);
      v32 = sub_224DAED88();
      v33 = -1 << *(v14 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
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
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v47)((*(v14 + 48) + v48 * v22), v49, v8);
      sub_224B31438(v50, *(v14 + 56) + v30 * v22, type metadata accessor for PlatterContentError);
      ++*(v14 + 16);
      v9 = v43;
      v12 = v44;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v12 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
}

void sub_224B1234C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_224DAC918();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70E0, &qword_224DB4950);
  v45 = v4;
  v11 = sub_224DAFB98();
  v12 = v11;
  if (*(v10 + 16))
  {
    v49 = v9;
    v41 = v2;
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
    v42 = (v6 + 16);
    v43 = v6;
    v46 = (v6 + 32);
    v19 = v11 + 64;
    v44 = v10;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v25 = v22 | (v13 << 6);
      v26 = *(v10 + 48);
      v48 = *(v6 + 72);
      v27 = v26 + v48 * v25;
      if (v45)
      {
        (*v46)(v49, v27, v5);
        v28 = *(v10 + 56) + 24 * v25;
        v50 = *v28;
        v47 = *(v28 + 16);
      }

      else
      {
        (*v42)(v49, v27, v5);
        v29 = *(v10 + 56) + 24 * v25;
        v50 = *v29;
        v47 = *(v29 + 16);
        v30 = v50;
        swift_unknownObjectRetain();
      }

      sub_224A439BC(&qword_281350D70, MEMORY[0x277CF9A98], MEMORY[0x277CF9AA0]);
      v31 = sub_224DAED88();
      v32 = -1 << *(v12 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v19 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v19 + 8 * v34);
          if (v38 != -1)
          {
            v20 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v33) & ~*(v19 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v46)((*(v12 + 48) + v48 * v20), v49, v5);
      v21 = *(v12 + 56) + 24 * v20;
      *v21 = v50;
      *(v21 + 16) = v47;
      ++*(v12 + 16);
      v6 = v43;
      v10 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v14, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_224B12764(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v55 = sub_224DAEC58();
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v6);
  v54 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAC918();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v56 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70C0, &qword_224DB4940);
  v50 = v4;
  v13 = sub_224DAFB98();
  v14 = v13;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = v9;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v46 = (v16 + 16);
    v47 = v16;
    v44 = v2;
    v45 = v5 + 16;
    v48 = v12;
    v49 = v5;
    v51 = (v5 + 32);
    v52 = (v16 + 32);
    v22 = v13 + 64;
    v23 = v16;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v15 << 6);
      v29 = *(v12 + 48);
      v53 = *(v23 + 72);
      v30 = v29 + v53 * v28;
      if (v50)
      {
        (*v52)(v56, v30, v8);
        v31 = *(v12 + 56);
        v32 = *(v49 + 72);
        (*(v49 + 32))(v54, v31 + v32 * v28, v55);
      }

      else
      {
        (*v46)(v56, v30, v8);
        v33 = *(v12 + 56);
        v32 = *(v49 + 72);
        (*(v49 + 16))(v54, v33 + v32 * v28, v55);
      }

      sub_224A439BC(&qword_281350D70, MEMORY[0x277CF9A98], MEMORY[0x277CF9AA0]);
      v34 = sub_224DAED88();
      v35 = -1 << *(v14 + 32);
      v36 = v34 & ~v35;
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
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v52)((*(v14 + 48) + v53 * v24), v56, v8);
      (*v51)(*(v14 + 56) + v32 * v24, v54, v55);
      ++*(v14 + 16);
      v23 = v47;
      v12 = v48;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v21)
      {
        break;
      }

      v27 = v17[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
}

void sub_224B12C0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v55 = sub_224DA9878();
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v6);
  v54 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v56 = &v43 - v11;
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F39D0, &qword_224DB4788);
  v50 = v4;
  v13 = sub_224DAFB98();
  v14 = v13;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = v9;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v46 = (v16 + 16);
    v47 = v16;
    v44 = v2;
    v45 = v5 + 16;
    v48 = v12;
    v49 = v5;
    v51 = (v5 + 32);
    v52 = (v16 + 32);
    v22 = v13 + 64;
    v23 = v16;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v15 << 6);
      v29 = *(v12 + 48);
      v53 = *(v23 + 72);
      v30 = v29 + v53 * v28;
      if (v50)
      {
        (*v52)(v56, v30, v8);
        v31 = *(v12 + 56);
        v32 = *(v49 + 72);
        (*(v49 + 32))(v54, v31 + v32 * v28, v55);
      }

      else
      {
        (*v46)(v56, v30, v8);
        v33 = *(v12 + 56);
        v32 = *(v49 + 72);
        (*(v49 + 16))(v54, v33 + v32 * v28, v55);
      }

      sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);
      v34 = sub_224DAED88();
      v35 = -1 << *(v14 + 32);
      v36 = v34 & ~v35;
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
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v52)((*(v14 + 48) + v53 * v24), v56, v8);
      (*v51)(*(v14 + 56) + v32 * v24, v54, v55);
      ++*(v14 + 16);
      v23 = v47;
      v12 = v48;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v21)
      {
        break;
      }

      v27 = v17[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
}

void sub_224B130CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_224DABCC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3D88, &qword_224DB49F8);
  v41 = v4;
  v11 = sub_224DAFB98();
  v12 = v11;
  if (*(v10 + 16))
  {
    v45 = v9;
    v37 = v2;
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
    v38 = (v6 + 16);
    v39 = v10;
    v40 = v6;
    v42 = (v6 + 32);
    v19 = v11 + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v44 = *(v40 + 72);
      v26 = v25 + v44 * v24;
      if (v41)
      {
        (*v42)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v38)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      sub_224A439BC(&unk_281350EB0, MEMORY[0x277CF9880], MEMORY[0x277CF9888]);
      v27 = sub_224DAED88();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v42)((*(v12 + 48) + v44 * v20), v45, v5);
      *(*(v12 + 56) + 8 * v20) = v43;
      ++*(v12 + 16);
      v10 = v39;
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

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v10 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_224B134A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_224DA9908();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v45 = v8;
  v15 = sub_224DAFB98();
  v16 = v15;
  if (*(v14 + 16))
  {
    v49 = v13;
    v41 = v4;
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
    v42 = (v10 + 16);
    v43 = v14;
    v44 = v10;
    v46 = (v10 + 32);
    v23 = v15 + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(v14 + 48);
      v48 = *(v44 + 72);
      v30 = v29 + v48 * v28;
      if (v45)
      {
        (*v46)(v49, v30, v9);
        v47 = *(*(v14 + 56) + 8 * v28);
      }

      else
      {
        (*v42)(v49, v30, v9);
        v47 = *(*(v14 + 56) + 8 * v28);
      }

      sub_224A439BC(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v31 = sub_224DAED88();
      v32 = -1 << *(v16 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v23 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v23 + 8 * v34);
          if (v38 != -1)
          {
            v24 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v33) & ~*(v23 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v46)((*(v16 + 48) + v48 * v24), v49, v9);
      *(*(v16 + 56) + 8 * v24) = v47;
      ++*(v16 + 16);
      v14 = v43;
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

    if ((v45 & 1) == 0)
    {

      v7 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v14 + 32);
    v7 = v41;
    if (v39 >= 64)
    {
      bzero(v18, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v39;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v7 = v16;
}

void sub_224B138AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C60, &qword_224DB4920);
  v31 = v4;
  v6 = sub_224DAFB98();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v31 & 1) == 0)
      {
      }

      sub_224DAFE68();
      sub_224DAEE78();

      v15 = sub_224DAFEA8();
      v16 = -1 << *(v7 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v16) >> 6;
        while (++v18 != v27 || (v26 & 1) == 0)
        {
          v28 = v18 == v27;
          if (v18 == v27)
          {
            v18 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v18);
          if (v29 != -1)
          {
            v19 = __clz(__rbit64(~v29)) + (v18 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v7 + 48) + v19) = v24;
      *(*(v7 + 56) + 8 * v19) = v25;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
}

void sub_224B13C24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C58, &unk_224DC3C90);
  v31 = v4;
  v6 = sub_224DAFB98();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v31 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_224DAFE68();
      sub_224DAEE78();

      v15 = sub_224DAFEA8();
      v16 = -1 << *(v7 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v16) >> 6;
        while (++v18 != v27 || (v26 & 1) == 0)
        {
          v28 = v18 == v27;
          if (v18 == v27)
          {
            v18 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v18);
          if (v29 != -1)
          {
            v19 = __clz(__rbit64(~v29)) + (v18 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v7 + 48) + v19) = v24;
      *(*(v7 + 56) + 8 * v19) = v25;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
}

void sub_224B13FB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v36 - v8;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70B0, &qword_224DB4910);
  v41 = v4;
  v11 = sub_224DAFB98();
  v12 = v11;
  if (*(v10 + 16))
  {
    v45 = v9;
    v37 = v2;
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
    v38 = (v6 + 16);
    v39 = v10;
    v40 = v6;
    v42 = (v6 + 32);
    v19 = v11 + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v44 = *(v40 + 72);
      v26 = v25 + v44 * v24;
      if (v41)
      {
        (*v42)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v38)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      sub_224A33088(&qword_2813519B0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FA8]);
      v27 = sub_224DAED88();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v42)((*(v12 + 48) + v44 * v20), v45, v5);
      *(*(v12 + 56) + 8 * v20) = v43;
      ++*(v12 + 16);
      v10 = v39;
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

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v10 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_224B143B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v52 = a3(0);
  v10 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v11);
  v51 = &v44 - v12;
  v13 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v49 = v9;
  v14 = sub_224DAFB98();
  v15 = v14;
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
    v45 = v5;
    v46 = (v10 + 16);
    v47 = v13;
    v48 = v10;
    v50 = (v10 + 32);
    v22 = v14 + 64;
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
      v33 = *(v48 + 72);
      v34 = v29 + v33 * v28;
      if (v49)
      {
        (*v50)(v51, v34, v52);
      }

      else
      {
        (*v46)(v51, v34, v52);
      }

      sub_224DAFE68();
      sub_224DAEE78();
      v35 = sub_224DAFEA8();
      v36 = -1 << *(v15 + 32);
      v37 = v35 & ~v36;
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
            v23 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v37) & ~*(v22 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      (*v50)((*(v15 + 56) + v33 * v23), v51, v52);
      ++*(v15 + 16);
      v13 = v47;
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

    if ((v49 & 1) == 0)
    {

      v8 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v13 + 32);
    v8 = v45;
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

LABEL_34:
  *v8 = v15;
}

void sub_224B14750(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_224DA9908();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v45 = v8;
  v15 = sub_224DAFB98();
  v16 = v15;
  if (*(v14 + 16))
  {
    v49 = v13;
    v41 = v4;
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
    v42 = (v10 + 16);
    v43 = v14;
    v44 = v10;
    v46 = (v10 + 32);
    v23 = v15 + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(v14 + 48);
      v48 = *(v44 + 72);
      v30 = v29 + v48 * v28;
      if (v45)
      {
        (*v46)(v49, v30, v9);
        v47 = *(*(v14 + 56) + 8 * v28);
      }

      else
      {
        (*v42)(v49, v30, v9);
        v47 = *(*(v14 + 56) + 8 * v28);
      }

      sub_224A439BC(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v31 = sub_224DAED88();
      v32 = -1 << *(v16 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v23 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v23 + 8 * v34);
          if (v38 != -1)
          {
            v24 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v33) & ~*(v23 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v46)((*(v16 + 48) + v48 * v24), v49, v9);
      *(*(v16 + 56) + 8 * v24) = v47;
      ++*(v16 + 16);
      v14 = v43;
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

    if ((v45 & 1) == 0)
    {

      v7 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v14 + 32);
    v7 = v41;
    if (v39 >= 64)
    {
      bzero(v18, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v39;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v7 = v16;
}

void sub_224B14B2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v36 - v8;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B60, &qword_224DB4858);
  v41 = v4;
  v11 = sub_224DAFB98();
  v12 = v11;
  if (*(v10 + 16))
  {
    v45 = v9;
    v37 = v2;
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
    v38 = (v6 + 16);
    v39 = v10;
    v40 = v6;
    v42 = (v6 + 32);
    v19 = v11 + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v44 = *(v40 + 72);
      v26 = v25 + v44 * v24;
      if (v41)
      {
        (*v42)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v38)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      sub_224A33088(&unk_27D6F3B50, &unk_27D6F6570, &qword_224DB3C40, MEMORY[0x277CFA018]);
      v27 = sub_224DAED88();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v42)((*(v12 + 48) + v44 * v20), v45, v5);
      *(*(v12 + 56) + 8 * v20) = v43;
      ++*(v12 + 16);
      v10 = v39;
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

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v10 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_224B14F0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v55 = sub_224DAD158();
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v6);
  v54 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAC2B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v56 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BA8, &qword_224DB4898);
  v50 = v4;
  v13 = sub_224DAFB98();
  v14 = v13;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = v9;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v46 = (v16 + 16);
    v47 = v16;
    v44 = v2;
    v45 = v5 + 16;
    v48 = v12;
    v49 = v5;
    v51 = (v5 + 32);
    v52 = (v16 + 32);
    v22 = v13 + 64;
    v23 = v16;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v15 << 6);
      v29 = *(v12 + 48);
      v53 = *(v23 + 72);
      v30 = v29 + v53 * v28;
      if (v50)
      {
        (*v52)(v56, v30, v8);
        v31 = *(v12 + 56);
        v32 = *(v49 + 72);
        (*(v49 + 32))(v54, v31 + v32 * v28, v55);
      }

      else
      {
        (*v46)(v56, v30, v8);
        v33 = *(v12 + 56);
        v32 = *(v49 + 72);
        (*(v49 + 16))(v54, v33 + v32 * v28, v55);
      }

      sub_224A439BC(&qword_281350E20, MEMORY[0x277CF99B8], MEMORY[0x277CF99C8]);
      v34 = sub_224DAED88();
      v35 = -1 << *(v14 + 32);
      v36 = v34 & ~v35;
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
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v52)((*(v14 + 48) + v53 * v24), v56, v8);
      (*v51)(*(v14 + 56) + v32 * v24, v54, v55);
      ++*(v14 + 16);
      v23 = v47;
      v12 = v48;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v21)
      {
        break;
      }

      v27 = v17[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
}

void sub_224B153B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_224DAC2B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB8, &qword_224DB48A0);
  v41 = v4;
  v11 = sub_224DAFB98();
  v12 = v11;
  if (*(v10 + 16))
  {
    v45 = v9;
    v37 = v2;
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
    v38 = (v6 + 16);
    v39 = v10;
    v40 = v6;
    v42 = (v6 + 32);
    v19 = v11 + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v44 = *(v40 + 72);
      v26 = v25 + v44 * v24;
      if (v41)
      {
        (*v42)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v38)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      sub_224A439BC(&qword_281350E20, MEMORY[0x277CF99B8], MEMORY[0x277CF99C8]);
      v27 = sub_224DAED88();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v42)((*(v12 + 48) + v44 * v20), v45, v5);
      *(*(v12 + 56) + 8 * v20) = v43;
      ++*(v12 + 16);
      v10 = v39;
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

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v10 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_224B15790(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v55 = sub_224DADB68();
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v6);
  v54 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DADE68();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v56 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3A00, &qword_224DB47A0);
  v50 = v4;
  v13 = sub_224DAFB98();
  v14 = v13;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = v9;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v46 = (v16 + 16);
    v47 = v16;
    v44 = v2;
    v45 = v5 + 16;
    v48 = v12;
    v49 = v5;
    v51 = (v5 + 32);
    v52 = (v16 + 32);
    v22 = v13 + 64;
    v23 = v16;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v15 << 6);
      v29 = *(v12 + 48);
      v53 = *(v23 + 72);
      v30 = v29 + v53 * v28;
      if (v50)
      {
        (*v52)(v56, v30, v8);
        v31 = *(v12 + 56);
        v32 = *(v49 + 72);
        (*(v49 + 32))(v54, v31 + v32 * v28, v55);
      }

      else
      {
        (*v46)(v56, v30, v8);
        v33 = *(v12 + 56);
        v32 = *(v49 + 72);
        (*(v49 + 16))(v54, v33 + v32 * v28, v55);
      }

      sub_224A439BC(&qword_27D6F39F0, MEMORY[0x277CF9E28], MEMORY[0x277CF9E30]);
      v34 = sub_224DAED88();
      v35 = -1 << *(v14 + 32);
      v36 = v34 & ~v35;
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
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v52)((*(v14 + 48) + v53 * v24), v56, v8);
      (*v51)(*(v14 + 56) + v32 * v24, v54, v55);
      ++*(v14 + 16);
      v23 = v47;
      v12 = v48;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v21)
      {
        break;
      }

      v27 = v17[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
}

void sub_224B15C38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord(0);
  v45 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAAF48();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v49 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C10, &qword_224DB48D8);
  v46 = v4;
  v13 = sub_224DAFB98();
  v14 = v13;
  if (*(v12 + 16))
  {
    v41 = v2;
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
    v42 = (v9 + 16);
    v43 = v9;
    v47 = (v9 + 32);
    v21 = v13 + 64;
    v44 = v12;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v12 + 48);
      v48 = *(v9 + 72);
      v28 = v27 + v48 * v26;
      if (v46)
      {
        (*v47)(v49, v28, v8);
        v29 = *(v12 + 56);
        v30 = *(v45 + 72);
        sub_224B31438(v29 + v30 * v26, v50, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
      }

      else
      {
        (*v42)(v49, v28, v8);
        v31 = *(v12 + 56);
        v30 = *(v45 + 72);
        sub_224B313D0(v31 + v30 * v26, v50, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
      }

      sub_224A439BC(&qword_281351738, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
      v32 = sub_224DAED88();
      v33 = -1 << *(v14 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
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
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v47)((*(v14 + 48) + v48 * v22), v49, v8);
      sub_224B31438(v50, *(v14 + 56) + v30 * v22, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
      ++*(v14 + 16);
      v9 = v43;
      v12 = v44;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v12 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
}

void sub_224B160D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SimpleWorkScheduler.Work(0);
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B38, &qword_224DB4848);
  v39 = v4;
  v10 = sub_224DAFB98();
  v11 = v10;
  if (*(v9 + 16))
  {
    v37 = v3;
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
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v9 + 48) + 8 * v23);
      v25 = *(v38 + 72);
      v26 = *(v9 + 56) + v25 * v23;
      if (v39)
      {
        sub_224B31438(v26, v8, type metadata accessor for SimpleWorkScheduler.Work);
      }

      else
      {
        sub_224B313D0(v26, v8, type metadata accessor for SimpleWorkScheduler.Work);
      }

      v27 = sub_224DAFE58();
      v28 = -1 << *(v11 + 32);
      v29 = v27 & ~v28;
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
        return;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 8 * v19) = v24;
      sub_224B31438(v8, *(v11 + 56) + v25 * v19, type metadata accessor for SimpleWorkScheduler.Work);
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero((v9 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_224B16420(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v55 = sub_224DAD158();
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v6);
  v54 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAC268();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v56 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3D58, &qword_224DB49E0);
  v50 = v4;
  v13 = sub_224DAFB98();
  v14 = v13;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = v9;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v46 = (v16 + 16);
    v47 = v16;
    v44 = v2;
    v45 = v5 + 16;
    v48 = v12;
    v49 = v5;
    v51 = (v5 + 32);
    v52 = (v16 + 32);
    v22 = v13 + 64;
    v23 = v16;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v15 << 6);
      v29 = *(v12 + 48);
      v53 = *(v23 + 72);
      v30 = v29 + v53 * v28;
      if (v50)
      {
        (*v52)(v56, v30, v8);
        v31 = *(v12 + 56);
        v32 = *(v49 + 72);
        (*(v49 + 32))(v54, v31 + v32 * v28, v55);
      }

      else
      {
        (*v46)(v56, v30, v8);
        v33 = *(v12 + 56);
        v32 = *(v49 + 72);
        (*(v49 + 16))(v54, v33 + v32 * v28, v55);
      }

      sub_224A439BC(&qword_281350E50, MEMORY[0x277CF9978], MEMORY[0x277CF9988]);
      v34 = sub_224DAED88();
      v35 = -1 << *(v14 + 32);
      v36 = v34 & ~v35;
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
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v52)((*(v14 + 48) + v53 * v24), v56, v8);
      (*v51)(*(v14 + 56) + v32 * v24, v54, v55);
      ++*(v14 + 16);
      v23 = v47;
      v12 = v48;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v21)
      {
        break;
      }

      v27 = v17[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
}

void sub_224B168C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C00, &qword_224DC3C70);
  v38 = v4;
  v6 = sub_224DAFB98();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v39 = *(v26 + 8);
      if ((v38 & 1) == 0)
      {
      }

      sub_224DAFE68();
      sub_224DAEE78();
      v28 = sub_224DAFEA8();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v39;
      ++*(v7 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_224B16BA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v40 - v12;
  v14 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v45 = v8;
  v15 = sub_224DAFB98();
  v16 = v15;
  if (*(v14 + 16))
  {
    v49 = v13;
    v41 = v4;
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
    v42 = (v10 + 16);
    v43 = v14;
    v44 = v10;
    v46 = (v10 + 32);
    v23 = v15 + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(v14 + 48);
      v48 = *(v44 + 72);
      v30 = v29 + v48 * v28;
      if (v45)
      {
        (*v46)(v49, v30, v9);
        v47 = *(*(v14 + 56) + 8 * v28);
      }

      else
      {
        (*v42)(v49, v30, v9);
        v47 = *(*(v14 + 56) + 8 * v28);
      }

      sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);
      v31 = sub_224DAED88();
      v32 = -1 << *(v16 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v23 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v23 + 8 * v34);
          if (v38 != -1)
          {
            v24 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v33) & ~*(v23 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v46)((*(v16 + 48) + v48 * v24), v49, v9);
      *(*(v16 + 56) + 8 * v24) = v47;
      ++*(v16 + 16);
      v14 = v43;
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

    if ((v45 & 1) == 0)
    {

      v7 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v14 + 32);
    v7 = v41;
    if (v39 >= 64)
    {
      bzero(v18, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v39;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v7 = v16;
}