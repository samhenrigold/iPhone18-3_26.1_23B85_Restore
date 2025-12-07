unint64_t *sub_24B751374(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_24B7515C8((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_24B751538(v11, v6, a2, a1);

    MEMORY[0x24C248E20](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_24B751538(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_24B7515C8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_24B7515C8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_24B75C6D8();

      sub_24B75C358();
      v26 = sub_24B75C718();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_24B75C6B8() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_24B7519A4(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_24B75C6D8();

      sub_24B75C358();
      v39 = sub_24B75C718();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_24B75C6B8() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B7519A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B88, &unk_24B76A040);
  result = sub_24B75C538();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_24B75C6D8();

    sub_24B75C358();
    result = sub_24B75C718();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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

uint64_t sub_24B751BC8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_24B751114(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24B751D48();
      goto LABEL_16;
    }

    sub_24B751EA4(v8 + 1);
  }

  v10 = *v4;
  sub_24B75C6D8();
  sub_24B75C358();
  result = sub_24B75C718();
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

      result = sub_24B75C6B8();
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
  result = sub_24B75C6C8();
  __break(1u);
  return result;
}

void *sub_24B751D48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B88, &unk_24B76A040);
  v2 = *v0;
  v3 = sub_24B75C518();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_24B751EA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B88, &unk_24B76A040);
  result = sub_24B75C528();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_24B75C6D8();

      sub_24B75C358();
      result = sub_24B75C718();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24B7520DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75B108();
  v5 = *(v4 - 8);
  v61 = v4;
  v62 = v5;
  MEMORY[0x28223BE20](v4);
  v59 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = &v57 - v8;
  MEMORY[0x28223BE20](v9);
  v58 = &v57 - v10;
  v11 = type metadata accessor for ProgramDetailFeature.TaskIdentifier(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = (&v57 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = (&v57 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B68, &qword_24B76A020);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v57 - v24;
  v27 = (&v57 + *(v26 + 56) - v24);
  sub_24B7505D8(a1, &v57 - v24, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
  sub_24B7505D8(a2, v27, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          goto LABEL_49;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_49;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_49;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_49;
    }

    goto LABEL_42;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_24B7505D8(v25, v19, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      v38 = *v19;
      v37 = v19[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (v38 != *v27 || v37 != v27[1])
        {
LABEL_25:
          v40 = sub_24B75C6B8();

          if (v40)
          {
            goto LABEL_49;
          }

          goto LABEL_36;
        }

        goto LABEL_48;
      }
    }

    else
    {
      sub_24B7505D8(v25, v22, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      v30 = *v22;
      v29 = v22[1];
      if (!swift_getEnumCaseMultiPayload())
      {
        if (v30 != *v27 || v29 != v27[1])
        {
          goto LABEL_25;
        }

LABEL_48:

LABEL_49:
        sub_24B75275C(v25, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
        v35 = 1;
        return v35 & 1;
      }
    }

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_24B7505D8(v25, v16, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v32 = v61;
      v33 = v62;
      v34 = v58;
      (*(v62 + 32))(v58, v27, v61);
      v35 = sub_24B75B0F8();
      v36 = *(v33 + 8);
      v36(v34, v32);
      v36(v16, v32);
LABEL_47:
      sub_24B75275C(v25, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      return v35 & 1;
    }

    (*(v62 + 8))(v16, v61);
LABEL_42:
    sub_24B6B9CD4(v25, &qword_27F036B68, &qword_24B76A020);
    goto LABEL_43;
  }

  sub_24B7505D8(v25, v13, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
  v42 = *v13;
  v41 = *(v13 + 1);
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B20, &qword_24B769E30) + 48);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v62 + 8))(&v13[v43], v61);
LABEL_41:

    goto LABEL_42;
  }

  v45 = *v27;
  v44 = v27[1];
  v46 = *(v62 + 32);
  v47 = &v13[v43];
  v48 = v61;
  v46(v60, v47, v61);
  v49 = v27 + v43;
  v50 = v59;
  v46(v59, v49, v48);
  if (v42 == v45 && v41 == v44)
  {

    goto LABEL_46;
  }

  v52 = sub_24B75C6B8();

  if (v52)
  {
LABEL_46:
    v54 = v60;
    v35 = sub_24B75B0F8();
    v55 = *(v62 + 8);
    v55(v50, v48);
    v55(v54, v48);
    goto LABEL_47;
  }

  v53 = *(v62 + 8);
  v53(v50, v48);
  v53(v60, v48);
LABEL_36:
  sub_24B75275C(v25, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
LABEL_43:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_24B75275C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B7527BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C248710](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24B750FC4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t WorkoutContextMenuPreviewContent.init(artwork:title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24B6B8DE8(a1, a4, &qword_27F0344E8, &unk_24B76A050);
  v7 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  sub_24B6B8DE8(a2, a4 + *(v7 + 20), &qword_27F034508, &qword_24B761E50);
  return sub_24B6B8DE8(a3, a4 + *(v7 + 24), &qword_27F034508, &qword_24B761E50);
}

uint64_t sub_24B7528FC()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x656C746974627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B726F77747261;
  }
}

uint64_t sub_24B752954@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B754150(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B75297C(uint64_t a1)
{
  v2 = sub_24B753EC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7529B8(uint64_t a1)
{
  v2 = sub_24B753EC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutContextMenuPreviewContent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B90, &unk_24B76A060);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B753EC0();
  sub_24B75C738();
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C0, &unk_24B763A50);
  sub_24B753F14(&qword_27F036BA0, MEMORY[0x277D09DB8]);
  sub_24B75C668();
  if (!v1)
  {
    type metadata accessor for WorkoutContextMenuPreviewContent(0);
    v10 = 1;
    sub_24B75AFE8();
    sub_24B6A8100(&qword_27F035038, MEMORY[0x277CC8C40], MEMORY[0x277CC8C48]);
    sub_24B75C668();
    v9 = 2;
    sub_24B75C668();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t WorkoutContextMenuPreviewContent.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24B75AFE8();
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  MEMORY[0x28223BE20](v5 - 8);
  v25 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C0, &unk_24B763A50);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344E8, &unk_24B76A050);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  v28 = v2;
  sub_24B6B9D34(v2, &v25 - v15, &qword_27F0344E8, &unk_24B76A050);
  if ((*(v11 + 48))(v16, 1, v10) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    sub_24B6B8DE8(v16, v13, &qword_27F0344C0, &unk_24B763A50);
    sub_24B75C6F8();
    sub_24B75B2B8();
    sub_24B6B9CD4(v13, &qword_27F0344C0, &unk_24B763A50);
  }

  v17 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  sub_24B6B9D34(v28 + *(v17 + 20), v9, &qword_27F034508, &qword_24B761E50);
  v18 = v27;
  v19 = *(v27 + 48);
  v20 = v19(v9, 1, v3);
  v21 = v25;
  if (v20 == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    v22 = v26;
    (*(v18 + 32))(v26, v9, v3);
    sub_24B75C6F8();
    sub_24B6A8100(&qword_27F0354A0, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_24B75C2C8();
    (*(v18 + 8))(v22, v3);
  }

  sub_24B6B9D34(v28 + *(v17 + 24), v21, &qword_27F034508, &qword_24B761E50);
  if (v19(v21, 1, v3) == 1)
  {
    return sub_24B75C6F8();
  }

  v24 = v26;
  (*(v18 + 32))(v26, v21, v3);
  sub_24B75C6F8();
  sub_24B6A8100(&qword_27F0354A0, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
  sub_24B75C2C8();
  return (*(v18 + 8))(v24, v3);
}

uint64_t WorkoutContextMenuPreviewContent.hashValue.getter()
{
  sub_24B75C6D8();
  WorkoutContextMenuPreviewContent.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t WorkoutContextMenuPreviewContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344E8, &unk_24B76A050);
  MEMORY[0x28223BE20](v10 - 8);
  v28 = &v26 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036BA8, &qword_24B76A070);
  v29 = *(v12 - 8);
  v30 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24B753EC0();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v19 = v9;
  v20 = v17;
  v26 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C0, &unk_24B763A50);
  v34 = 0;
  sub_24B753F14(&qword_27F036BB0, MEMORY[0x277D09DC0]);
  v21 = v28;
  v22 = v30;
  sub_24B75C5D8();
  v23 = v20;
  sub_24B6B8DE8(v21, v20, &qword_27F0344E8, &unk_24B76A050);
  sub_24B75AFE8();
  v33 = 1;
  sub_24B6A8100(&qword_27F035080, MEMORY[0x277CC8C40], MEMORY[0x277CC8C60]);
  sub_24B75C5D8();
  sub_24B6B8DE8(v19, v20 + *(v15 + 20), &qword_27F034508, &qword_24B761E50);
  v32 = 2;
  v24 = v26;
  sub_24B75C5D8();
  (*(v29 + 8))(v14, v22);
  sub_24B6B8DE8(v24, v23 + *(v15 + 24), &qword_27F034508, &qword_24B761E50);
  sub_24B753F64(v23, v27);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_24B6C1A6C(v23);
}

uint64_t sub_24B7535CC()
{
  sub_24B75C6D8();
  WorkoutContextMenuPreviewContent.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B753610(uint64_t a1)
{
  sub_24B75C6D8();
  WorkoutContextMenuPreviewContent.hash(into:)(v2);
  return sub_24B75C718();
}

BOOL _s20FitnessProductDetail32WorkoutContextMenuPreviewContentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v62 = sub_24B75AFE8();
  v58 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v54 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v56 = &v51[-v8];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0350C0, &qword_24B762068);
  MEMORY[0x28223BE20](v57);
  v55 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v59 = &v51[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C0, &unk_24B763A50);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v51[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344E8, &unk_24B76A050);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v51[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036BD8, &unk_24B76A280);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v51[-v20];
  v23 = *(v22 + 56);
  v60 = a1;
  sub_24B6B9D34(a1, &v51[-v20], &qword_27F0344E8, &unk_24B76A050);
  v61 = a2;
  sub_24B6B9D34(a2, &v21[v23], &qword_27F0344E8, &unk_24B76A050);
  v24 = *(v13 + 48);
  if (v24(v21, 1, v12) == 1)
  {
    if (v24(&v21[v23], 1, v12) == 1)
    {
      sub_24B6B9CD4(v21, &qword_27F0344E8, &unk_24B76A050);
      goto LABEL_8;
    }

LABEL_6:
    v25 = &qword_27F036BD8;
    v26 = &unk_24B76A280;
    v27 = v21;
LABEL_21:
    sub_24B6B9CD4(v27, v25, v26);
    return 0;
  }

  sub_24B6B9D34(v21, v18, &qword_27F0344E8, &unk_24B76A050);
  if (v24(&v21[v23], 1, v12) == 1)
  {
    sub_24B6B9CD4(v18, &qword_27F0344C0, &unk_24B763A50);
    goto LABEL_6;
  }

  sub_24B6B8DE8(&v21[v23], v15, &qword_27F0344C0, &unk_24B763A50);
  type metadata accessor for WorkoutContextMenuPreviewArtwork(0);
  sub_24B6A8100(&qword_27F036BE0, type metadata accessor for WorkoutContextMenuPreviewArtwork, &protocol conformance descriptor for WorkoutContextMenuPreviewArtwork);
  v28 = sub_24B75B2A8();
  sub_24B6B9CD4(v15, &qword_27F0344C0, &unk_24B763A50);
  sub_24B6B9CD4(v18, &qword_27F0344C0, &unk_24B763A50);
  sub_24B6B9CD4(v21, &qword_27F0344E8, &unk_24B76A050);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v29 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  v30 = *(v29 + 20);
  v31 = v57;
  v32 = *(v57 + 48);
  v33 = v59;
  sub_24B6B9D34(v60 + v30, v59, &qword_27F034508, &qword_24B761E50);
  sub_24B6B9D34(v61 + v30, &v33[v32], &qword_27F034508, &qword_24B761E50);
  v34 = v58;
  v35 = *(v58 + 48);
  v36 = v62;
  if (v35(v33, 1, v62) != 1)
  {
    v37 = v56;
    sub_24B6B9D34(v33, v56, &qword_27F034508, &qword_24B761E50);
    if (v35(&v33[v32], 1, v36) != 1)
    {
      v38 = &v33[v32];
      v39 = v54;
      (*(v34 + 32))(v54, v38, v36);
      sub_24B6A8100(&qword_27F0350D0, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
      v40 = sub_24B75C2D8();
      v36 = v62;
      v52 = v40;
      v41 = *(v34 + 8);
      v41(v39, v62);
      v41(v37, v36);
      sub_24B6B9CD4(v59, &qword_27F034508, &qword_24B761E50);
      if ((v52 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    (*(v34 + 8))(v37, v36);
    goto LABEL_13;
  }

  if (v35(&v33[v32], 1, v36) != 1)
  {
LABEL_13:
    v25 = &qword_27F0350C0;
    v26 = &qword_24B762068;
    v27 = v33;
    goto LABEL_21;
  }

  sub_24B6B9CD4(v33, &qword_27F034508, &qword_24B761E50);
LABEL_15:
  v42 = *(v29 + 24);
  v43 = *(v31 + 48);
  v44 = v55;
  sub_24B6B9D34(v60 + v42, v55, &qword_27F034508, &qword_24B761E50);
  sub_24B6B9D34(v61 + v42, &v44[v43], &qword_27F034508, &qword_24B761E50);
  if (v35(v44, 1, v36) == 1)
  {
    if (v35(&v44[v43], 1, v36) == 1)
    {
      sub_24B6B9CD4(v44, &qword_27F034508, &qword_24B761E50);
      return 1;
    }

    goto LABEL_20;
  }

  v45 = v53;
  sub_24B6B9D34(v44, v53, &qword_27F034508, &qword_24B761E50);
  if (v35(&v44[v43], 1, v36) == 1)
  {
    (*(v34 + 8))(v45, v36);
LABEL_20:
    v25 = &qword_27F0350C0;
    v26 = &qword_24B762068;
    v27 = v44;
    goto LABEL_21;
  }

  v47 = &v44[v43];
  v48 = v54;
  (*(v34 + 32))(v54, v47, v36);
  sub_24B6A8100(&qword_27F0350D0, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
  v49 = sub_24B75C2D8();
  v50 = *(v34 + 8);
  v50(v48, v36);
  v50(v45, v36);
  sub_24B6B9CD4(v44, &qword_27F034508, &qword_24B761E50);
  return (v49 & 1) != 0;
}

unint64_t sub_24B753EC0()
{
  result = qword_27F036B98;
  if (!qword_27F036B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036B98);
  }

  return result;
}

uint64_t sub_24B753F14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344C0, &unk_24B763A50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B753F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B75404C()
{
  result = qword_27F036BC0;
  if (!qword_27F036BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036BC0);
  }

  return result;
}

unint64_t sub_24B7540A4()
{
  result = qword_27F036BC8;
  if (!qword_27F036BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036BC8);
  }

  return result;
}

unint64_t sub_24B7540FC()
{
  result = qword_27F036BD0;
  if (!qword_27F036BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036BD0);
  }

  return result;
}

uint64_t sub_24B754150(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B75C6B8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24B754278()
{
  v1 = *v0;
  v2 = 0x6574656C706D6F63;
  v3 = 0x656C756465686373;
  v4 = 0x6B63617473;
  if (v1 != 3)
  {
    v4 = 0x616C696176616E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79636E65636572;
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

uint64_t sub_24B754318@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B755B28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B754340(uint64_t a1)
{
  v2 = sub_24B754B50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B75437C(uint64_t a1)
{
  v2 = sub_24B754B50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7543B8(uint64_t a1)
{
  v2 = sub_24B754CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7543F4(uint64_t a1)
{
  v2 = sub_24B754CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B754430(uint64_t a1)
{
  v2 = sub_24B754CA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B75446C(uint64_t a1)
{
  v2 = sub_24B754CA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7544A8(uint64_t a1)
{
  v2 = sub_24B754C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7544E4(uint64_t a1)
{
  v2 = sub_24B754C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B754520(uint64_t a1)
{
  v2 = sub_24B754BF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B75455C(uint64_t a1)
{
  v2 = sub_24B754BF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B754598(uint64_t a1)
{
  v2 = sub_24B754BA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7545D4(uint64_t a1)
{
  v2 = sub_24B754BA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArtworkOverlayTag.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036BE8, &qword_24B76A290);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036BF0, &qword_24B76A298);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036BF8, &qword_24B76A2A0);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036C00, &qword_24B76A2A8);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036C08, &qword_24B76A2B0);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036C10, &qword_24B76A2B8);
  v15 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_24B754B50();
  sub_24B75C738();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_24B754CA0();
      v31 = v45;
      sub_24B75C638();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_24B754CF4();
      v31 = v45;
      sub_24B75C638();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_24B754C4C();
      v22 = v33;
      v23 = v45;
      sub_24B75C638();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_24B754BF8();
      v22 = v36;
      v23 = v45;
      sub_24B75C638();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_24B754BA4();
      v22 = v39;
      v23 = v45;
      sub_24B75C638();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

unint64_t sub_24B754B50()
{
  result = qword_27F036C18;
  if (!qword_27F036C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C18);
  }

  return result;
}

unint64_t sub_24B754BA4()
{
  result = qword_27F036C20;
  if (!qword_27F036C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C20);
  }

  return result;
}

unint64_t sub_24B754BF8()
{
  result = qword_27F036C28;
  if (!qword_27F036C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C28);
  }

  return result;
}

unint64_t sub_24B754C4C()
{
  result = qword_27F036C30;
  if (!qword_27F036C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C30);
  }

  return result;
}

unint64_t sub_24B754CA0()
{
  result = qword_27F036C38;
  if (!qword_27F036C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C38);
  }

  return result;
}

unint64_t sub_24B754CF4()
{
  result = qword_27F036C40;
  if (!qword_27F036C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C40);
  }

  return result;
}

uint64_t ArtworkOverlayTag.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036C48, &qword_24B76A2C0);
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036C50, &qword_24B76A2C8);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x28223BE20](v4);
  v58 = &v45 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036C58, &qword_24B76A2D0);
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v57 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036C60, &qword_24B76A2D8);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036C68, &qword_24B76A2E0);
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036C70, &unk_24B76A2E8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v18 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24B754B50();
  v19 = v61;
  sub_24B75C728();
  if (v19)
  {
    goto LABEL_11;
  }

  v20 = v13;
  v45 = v11;
  v46 = 0;
  v22 = v57;
  v21 = v58;
  v61 = v15;
  v23 = v59;
  v24 = v14;
  v25 = sub_24B75C628();
  v26 = (2 * *(v25 + 16)) | 1;
  v62 = v25;
  v63 = v25 + 32;
  v64 = 0;
  v65 = v26;
  v27 = sub_24B6B9E10();
  if (v27 == 5 || v64 != v65 >> 1)
  {
    v32 = sub_24B75C568();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
    *v34 = &type metadata for ArtworkOverlayTag;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    (*(v61 + 8))(v17, v14);
    goto LABEL_10;
  }

  v66 = v27;
  if (v27 <= 1u)
  {
    if (v27)
    {
      v67 = 1;
      sub_24B754CA0();
      v43 = v10;
      v38 = v14;
      v44 = v46;
      sub_24B75C598();
      if (v44)
      {
        v40 = v61;
        goto LABEL_23;
      }

      (*(v49 + 8))(v43, v50);
      (*(v61 + 8))(v17, v14);
    }

    else
    {
      v67 = 0;
      sub_24B754CF4();
      v37 = v46;
      sub_24B75C598();
      if (v37)
      {
        (*(v61 + 8))(v17, v14);
        goto LABEL_10;
      }

      (*(v47 + 8))(v20, v45);
      (*(v61 + 8))(v17, v14);
    }

    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
    goto LABEL_30;
  }

  v28 = v23;
  if (v27 == 2)
  {
    v67 = 2;
    sub_24B754C4C();
    v38 = v24;
    v39 = v46;
    sub_24B75C598();
    v40 = v61;
    if (!v39)
    {
      (*(v48 + 8))(v22, v51);
      (*(v40 + 8))(v17, v38);
LABEL_25:
      swift_unknownObjectRelease();
      v35 = v60;
      goto LABEL_30;
    }

LABEL_23:
    (*(v40 + 8))(v17, v38);
    goto LABEL_10;
  }

  v29 = v17;
  v30 = v61;
  if (v27 != 3)
  {
    v67 = 4;
    sub_24B754BA4();
    v41 = v56;
    v42 = v46;
    sub_24B75C598();
    if (v42)
    {
      (*(v30 + 8))(v29, v24);
      goto LABEL_10;
    }

    (*(v52 + 8))(v41, v55);
    (*(v30 + 8))(v29, v24);
    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
LABEL_30:
    *v28 = v66;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v67 = 3;
  sub_24B754BF8();
  v31 = v46;
  sub_24B75C598();
  if (!v31)
  {
    (*(v54 + 8))(v21, v53);
    (*(v30 + 8))(v29, v24);
    goto LABEL_25;
  }

  (*(v30 + 8))(v29, v24);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v35 = v60;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t ArtworkOverlayTag.hashValue.getter()
{
  v1 = *v0;
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](v1);
  return sub_24B75C718();
}

unint64_t sub_24B7555EC()
{
  result = qword_27F036C78;
  if (!qword_27F036C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C78);
  }

  return result;
}

unint64_t sub_24B7556B4()
{
  result = qword_27F036C80;
  if (!qword_27F036C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C80);
  }

  return result;
}

unint64_t sub_24B75570C()
{
  result = qword_27F036C88;
  if (!qword_27F036C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C88);
  }

  return result;
}

unint64_t sub_24B755764()
{
  result = qword_27F036C90;
  if (!qword_27F036C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C90);
  }

  return result;
}

unint64_t sub_24B7557BC()
{
  result = qword_27F036C98;
  if (!qword_27F036C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C98);
  }

  return result;
}

unint64_t sub_24B755814()
{
  result = qword_27F036CA0;
  if (!qword_27F036CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036CA0);
  }

  return result;
}

unint64_t sub_24B75586C()
{
  result = qword_27F036CA8;
  if (!qword_27F036CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036CA8);
  }

  return result;
}

unint64_t sub_24B7558C4()
{
  result = qword_27F036CB0;
  if (!qword_27F036CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036CB0);
  }

  return result;
}

unint64_t sub_24B75591C()
{
  result = qword_27F036CB8;
  if (!qword_27F036CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036CB8);
  }

  return result;
}

unint64_t sub_24B755974()
{
  result = qword_27F036CC0;
  if (!qword_27F036CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036CC0);
  }

  return result;
}

unint64_t sub_24B7559CC()
{
  result = qword_27F036CC8;
  if (!qword_27F036CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036CC8);
  }

  return result;
}

unint64_t sub_24B755A24()
{
  result = qword_27F036CD0;
  if (!qword_27F036CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036CD0);
  }

  return result;
}

unint64_t sub_24B755A7C()
{
  result = qword_27F036CD8;
  if (!qword_27F036CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036CD8);
  }

  return result;
}

unint64_t sub_24B755AD4()
{
  result = qword_27F036CE0;
  if (!qword_27F036CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036CE0);
  }

  return result;
}

uint64_t sub_24B755B28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E65636572 && a2 == 0xE700000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE900000000000064 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B63617473 && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B75C6B8();

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

uint64_t sub_24B755D00()
{
  v1 = *v0;
  v2 = 0x616D536172747865;
  v3 = 0x6D756964656DLL;
  v4 = 0x656772616CLL;
  if (v1 != 4)
  {
    v4 = 0x72614C6172747865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6C616D73;
  if (v1 != 1)
  {
    v5 = 0x72616C75676572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B755DB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B756A44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B755DDC(uint64_t a1)
{
  v2 = sub_24B756718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B755E18(uint64_t a1)
{
  v2 = sub_24B756718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B755E54(uint64_t a1)
{
  v2 = sub_24B75676C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B755E90(uint64_t a1)
{
  v2 = sub_24B75676C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B755ECC(uint64_t a1)
{
  v2 = sub_24B756910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B755F08(uint64_t a1)
{
  v2 = sub_24B756910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B755F44(uint64_t a1)
{
  v2 = sub_24B7567C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B755F80(uint64_t a1)
{
  v2 = sub_24B7567C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B755FBC(uint64_t a1)
{
  v2 = sub_24B756814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B755FF8(uint64_t a1)
{
  v2 = sub_24B756814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B756034(uint64_t a1)
{
  v2 = sub_24B756868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B756070(uint64_t a1)
{
  v2 = sub_24B756868();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7560AC(uint64_t a1)
{
  v2 = sub_24B7568BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7560E8(uint64_t a1)
{
  v2 = sub_24B7568BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialDetailSizeClass.encode(to:)(void *a1, int a2)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036CE8, &qword_24B76A8B0);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036CF0, &qword_24B76A8B8);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036CF8, &qword_24B76A8C0);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v34 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036D00, &qword_24B76A8C8);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036D08, &qword_24B76A8D0);
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036D10, &qword_24B76A8D8);
  v29 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036D18, &qword_24B76A8E0);
  v18 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v20 = &v28 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B756718();
  sub_24B75C738();
  v21 = (v18 + 8);
  if (v44 > 2u)
  {
    if (v44 == 3)
    {
      v48 = 3;
      sub_24B756814();
      v24 = v34;
      v25 = v43;
      sub_24B75C638();
      v27 = v35;
      v26 = v36;
    }

    else if (v44 == 4)
    {
      v49 = 4;
      sub_24B7567C0();
      v24 = v37;
      v25 = v43;
      sub_24B75C638();
      v27 = v38;
      v26 = v39;
    }

    else
    {
      v50 = 5;
      sub_24B75676C();
      v24 = v40;
      v25 = v43;
      sub_24B75C638();
      v27 = v41;
      v26 = v42;
    }

    (*(v27 + 8))(v24, v26);
  }

  else if (v44)
  {
    if (v44 == 1)
    {
      v46 = 1;
      sub_24B7568BC();
      v22 = v43;
      sub_24B75C638();
      (*(v30 + 8))(v14, v31);
      return (*v21)(v20, v22);
    }

    v47 = 2;
    sub_24B756868();
    v25 = v43;
    sub_24B75C638();
    (*(v32 + 8))(v11, v33);
  }

  else
  {
    v45 = 0;
    sub_24B756910();
    v25 = v43;
    sub_24B75C638();
    (*(v29 + 8))(v17, v15);
  }

  return (*v21)(v20, v25);
}

unint64_t sub_24B756718()
{
  result = qword_27F036D20;
  if (!qword_27F036D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D20);
  }

  return result;
}

unint64_t sub_24B75676C()
{
  result = qword_27F036D28;
  if (!qword_27F036D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D28);
  }

  return result;
}

unint64_t sub_24B7567C0()
{
  result = qword_27F036D30;
  if (!qword_27F036D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D30);
  }

  return result;
}

unint64_t sub_24B756814()
{
  result = qword_27F036D38;
  if (!qword_27F036D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D38);
  }

  return result;
}

unint64_t sub_24B756868()
{
  result = qword_27F036D40;
  if (!qword_27F036D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D40);
  }

  return result;
}

unint64_t sub_24B7568BC()
{
  result = qword_27F036D48;
  if (!qword_27F036D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D48);
  }

  return result;
}

unint64_t sub_24B756910()
{
  result = qword_27F036D50;
  if (!qword_27F036D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D50);
  }

  return result;
}

uint64_t sub_24B75697C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B756C44(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t EditorialDetailSizeClass.hashValue.getter(unsigned __int8 a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](a1);
  return sub_24B75C718();
}

uint64_t sub_24B756A44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616D536172747865 && a2 == 0xEA00000000006C6CLL || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616C75676572 && a2 == 0xE700000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72614C6172747865 && a2 == 0xEA00000000006567)
  {

    return 5;
  }

  else
  {
    v5 = sub_24B75C6B8();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B756C44(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036DD8, &qword_24B76AF80);
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036DE0, &qword_24B76AF88);
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  MEMORY[0x28223BE20](v4);
  v55 = &v39 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036DE8, &qword_24B76AF90);
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v54 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036DF0, &qword_24B76AF98);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036DF8, &qword_24B76AFA0);
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E00, &qword_24B76AFA8);
  v41 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E08, &unk_24B76AFB0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - v18;
  v20 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24B756718();
  v21 = v56;
  sub_24B75C728();
  if (!v21)
  {
    v22 = v15;
    v39 = v13;
    v40 = v12;
    v23 = v53;
    v24 = v54;
    v25 = v55;
    v56 = v17;
    v26 = sub_24B75C628();
    v27 = (2 * *(v26 + 16)) | 1;
    v58 = v26;
    v59 = v26 + 32;
    v60 = 0;
    v61 = v27;
    v28 = sub_24B6B9E14();
    v29 = v19;
    if (v28 != 6 && v60 == v61 >> 1)
    {
      v17 = v28;
      if (v28 > 2u)
      {
        if (v28 != 3)
        {
          v37 = v56;
          if (v28 == 4)
          {
            v62 = 4;
            sub_24B7567C0();
            sub_24B75C598();
            (*(v49 + 8))(v25, v48);
          }

          else
          {
            v62 = 5;
            sub_24B75676C();
            v38 = v52;
            sub_24B75C598();
            (*(v50 + 8))(v38, v51);
          }

          (*(v37 + 8))(v29, v16);
          goto LABEL_21;
        }

        v62 = 3;
        sub_24B756814();
        sub_24B75C598();
        v30 = v56;
        (*(v47 + 8))(v24, v44);
      }

      else if (v28)
      {
        if (v28 == 1)
        {
          v62 = 1;
          sub_24B7568BC();
          v23 = v40;
          sub_24B75C598();
          v30 = v56;
          v32 = v42;
          v31 = v43;
        }

        else
        {
          v62 = 2;
          sub_24B756868();
          sub_24B75C598();
          v30 = v56;
          v32 = v45;
          v31 = v46;
        }

        (*(v32 + 8))(v23, v31);
      }

      else
      {
        v62 = 0;
        sub_24B756910();
        sub_24B75C598();
        (*(v41 + 8))(v22, v39);
        v30 = v56;
      }

      (*(v30 + 8))(v19, v16);
LABEL_21:
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v57);
      return v17;
    }

    v33 = sub_24B75C568();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
    *v35 = &type metadata for EditorialDetailSizeClass;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    (*(v56 + 8))(v19, v16);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v57);
  return v17;
}

unint64_t sub_24B75742C()
{
  result = qword_27F036D58;
  if (!qword_27F036D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D58);
  }

  return result;
}

unint64_t sub_24B757504()
{
  result = qword_27F036D60;
  if (!qword_27F036D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D60);
  }

  return result;
}

unint64_t sub_24B75755C()
{
  result = qword_27F036D68;
  if (!qword_27F036D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D68);
  }

  return result;
}

unint64_t sub_24B7575B4()
{
  result = qword_27F036D70;
  if (!qword_27F036D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D70);
  }

  return result;
}

unint64_t sub_24B75760C()
{
  result = qword_27F036D78;
  if (!qword_27F036D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D78);
  }

  return result;
}

unint64_t sub_24B757664()
{
  result = qword_27F036D80;
  if (!qword_27F036D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D80);
  }

  return result;
}

unint64_t sub_24B7576BC()
{
  result = qword_27F036D88;
  if (!qword_27F036D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D88);
  }

  return result;
}

unint64_t sub_24B757714()
{
  result = qword_27F036D90;
  if (!qword_27F036D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D90);
  }

  return result;
}

unint64_t sub_24B75776C()
{
  result = qword_27F036D98;
  if (!qword_27F036D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D98);
  }

  return result;
}

unint64_t sub_24B7577C4()
{
  result = qword_27F036DA0;
  if (!qword_27F036DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036DA0);
  }

  return result;
}

unint64_t sub_24B75781C()
{
  result = qword_27F036DA8;
  if (!qword_27F036DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036DA8);
  }

  return result;
}

unint64_t sub_24B757874()
{
  result = qword_27F036DB0;
  if (!qword_27F036DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036DB0);
  }

  return result;
}

unint64_t sub_24B7578CC()
{
  result = qword_27F036DB8;
  if (!qword_27F036DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036DB8);
  }

  return result;
}

unint64_t sub_24B757924()
{
  result = qword_27F036DC0;
  if (!qword_27F036DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036DC0);
  }

  return result;
}

unint64_t sub_24B75797C()
{
  result = qword_27F036DC8;
  if (!qword_27F036DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036DC8);
  }

  return result;
}

unint64_t sub_24B7579D4()
{
  result = qword_27F036DD0;
  if (!qword_27F036DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036DD0);
  }

  return result;
}

uint64_t WorkoutSchedule.init(nextWorkout:additionalDays:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24B75B1D8();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for WorkoutSchedule(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_24B757AB0()
{
  if (*v0)
  {
    return 0x6E6F697469646461;
  }

  else
  {
    return 0x6B726F577478656ELL;
  }
}

uint64_t sub_24B757B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B726F577478656ELL && a2 == 0xEB0000000074756FLL;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697469646461 && a2 == 0xEE00737961446C61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

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

uint64_t sub_24B757BE8(uint64_t a1)
{
  v2 = sub_24B757E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B757C24(uint64_t a1)
{
  v2 = sub_24B757E04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutSchedule.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E10, &qword_24B76AFC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B757E04();
  sub_24B75C738();
  v8[15] = 0;
  sub_24B75B1D8();
  sub_24B758180(&qword_27F036E20, MEMORY[0x277CC9580]);
  sub_24B75C6A8();
  if (!v1)
  {
    type metadata accessor for WorkoutSchedule(0);
    v8[14] = 1;
    sub_24B75C698();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B757E04()
{
  result = qword_27F036E18;
  if (!qword_27F036E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036E18);
  }

  return result;
}

uint64_t WorkoutSchedule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v20 = sub_24B75B1D8();
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E28, &qword_24B76AFC8);
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v16 - v6;
  v8 = type metadata accessor for WorkoutSchedule(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B757E04();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v10;
  v11 = v18;
  v23 = 0;
  sub_24B758180(&qword_27F036E30, MEMORY[0x277CC95A0]);
  v12 = v20;
  sub_24B75C618();
  v13 = v16;
  (*(v11 + 32))(v16, v5, v12);
  v22 = 1;
  v14 = sub_24B75C608();
  (*(v19 + 8))(v7, v21);
  *(v13 + *(v8 + 20)) = v14;
  sub_24B7581C4(v13, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B758228(v13);
}

uint64_t sub_24B758180(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24B75B1D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B7581C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutSchedule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B758228(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutSchedule(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static WorkoutSchedule.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_24B75B1B8() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WorkoutSchedule(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

unint64_t sub_24B758394()
{
  result = qword_27F036E38;
  if (!qword_27F036E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036E38);
  }

  return result;
}

unint64_t sub_24B7583EC()
{
  result = qword_27F036E40;
  if (!qword_27F036E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036E40);
  }

  return result;
}

unint64_t sub_24B758444()
{
  result = qword_27F036E48;
  if (!qword_27F036E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036E48);
  }

  return result;
}

uint64_t sub_24B7584B0()
{
  if (*v0)
  {
    return 0x72657474697774;
  }

  else
  {
    return 0x6172676174736E69;
  }
}

uint64_t sub_24B7584F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6172676174736E69 && a2 == 0xE90000000000006DLL;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72657474697774 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

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

uint64_t sub_24B7585D4(uint64_t a1)
{
  v2 = sub_24B7589EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B758610(uint64_t a1)
{
  v2 = sub_24B7589EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B75864C(uint64_t a1)
{
  v2 = sub_24B758A94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B758688(uint64_t a1)
{
  v2 = sub_24B758A94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7586C4(uint64_t a1)
{
  v2 = sub_24B758A40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B758700(uint64_t a1)
{
  v2 = sub_24B758A40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutProgramLinkPlatform.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E50, &qword_24B76B180);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E58, &qword_24B76B188);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E60, &qword_24B76B190);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7589EC();
  sub_24B75C738();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_24B758A40();
    v14 = v18;
    sub_24B75C638();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_24B758A94();
    sub_24B75C638();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_24B7589EC()
{
  result = qword_27F036E68;
  if (!qword_27F036E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036E68);
  }

  return result;
}

unint64_t sub_24B758A40()
{
  result = qword_27F036E70;
  if (!qword_27F036E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036E70);
  }

  return result;
}

unint64_t sub_24B758A94()
{
  result = qword_27F036E78;
  if (!qword_27F036E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036E78);
  }

  return result;
}

uint64_t WorkoutProgramLinkPlatform.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E80, &qword_24B76B198);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E88, &qword_24B76B1A0);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E90, &unk_24B76B1A8);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7589EC();
  v12 = v31;
  sub_24B75C728();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_24B75C628();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_24B6B9E04();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_24B75C568();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
      *v22 = &type metadata for WorkoutProgramLinkPlatform;
      sub_24B75C5A8();
      sub_24B75C558();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_24B758A40();
        sub_24B75C598();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_24B758A94();
        sub_24B75C598();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t WorkoutProgramLinkPlatform.hashValue.getter()
{
  v1 = *v0;
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](v1);
  return sub_24B75C718();
}

unint64_t sub_24B75904C()
{
  result = qword_27F036E98;
  if (!qword_27F036E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036E98);
  }

  return result;
}

unint64_t sub_24B7590E4()
{
  result = qword_27F036EA0;
  if (!qword_27F036EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036EA0);
  }

  return result;
}

unint64_t sub_24B75913C()
{
  result = qword_27F036EA8;
  if (!qword_27F036EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036EA8);
  }

  return result;
}

unint64_t sub_24B759194()
{
  result = qword_27F036EB0;
  if (!qword_27F036EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036EB0);
  }

  return result;
}

unint64_t sub_24B7591EC()
{
  result = qword_27F036EB8;
  if (!qword_27F036EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036EB8);
  }

  return result;
}

unint64_t sub_24B759244()
{
  result = qword_27F036EC0;
  if (!qword_27F036EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036EC0);
  }

  return result;
}

unint64_t sub_24B75929C()
{
  result = qword_27F036EC8;
  if (!qword_27F036EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036EC8);
  }

  return result;
}

unint64_t sub_24B7592F4()
{
  result = qword_27F036ED0;
  if (!qword_27F036ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036ED0);
  }

  return result;
}

uint64_t EditorialPreview.streamingProgramIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EditorialPreview.streamingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EditorialPreview(0) + 20);
  v4 = sub_24B75B108();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EditorialPreview.init(streamingProgramIdentifier:streamingURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for EditorialPreview(0) + 20);
  v7 = sub_24B75B108();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_24B759478(uint64_t a1)
{
  v2 = sub_24B7596A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7594B4(uint64_t a1)
{
  v2 = sub_24B7596A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialPreview.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036ED8, &qword_24B76B530);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7596A8();
  sub_24B75C738();
  v8[15] = 0;
  sub_24B75C648();
  if (!v1)
  {
    type metadata accessor for EditorialPreview(0);
    v8[14] = 1;
    sub_24B75B108();
    sub_24B6A737C(&qword_27F0341E0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_24B75C6A8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B7596A8()
{
  result = qword_27F036EE0;
  if (!qword_27F036EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036EE0);
  }

  return result;
}

uint64_t EditorialPreview.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_24B75B108();
  v18 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036EE8, &qword_24B76B538);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = v16 - v6;
  v8 = type metadata accessor for EditorialPreview(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7596A8();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v8;
  v12 = v20;
  v11 = v21;
  v24 = 0;
  v13 = v22;
  *v10 = sub_24B75C5B8();
  v10[1] = v14;
  v16[1] = v14;
  v23 = 1;
  sub_24B6A737C(&qword_27F0341F8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_24B75C618();
  (*(v12 + 8))(v7, v13);
  (*(v18 + 32))(v10 + *(v17 + 20), v5, v11);
  sub_24B759A04(v10, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B759A68(v10);
}

uint64_t sub_24B759A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialPreview(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B759A68(uint64_t a1)
{
  v2 = type metadata accessor for EditorialPreview(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static EditorialPreview.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_24B75C6B8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

LABEL_8:
  type metadata accessor for EditorialPreview(0);

  return sub_24B75B0F8();
}

uint64_t EditorialPreview.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  type metadata accessor for EditorialPreview(0);
  sub_24B75B108();
  sub_24B6A737C(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_24B75C2C8();
}

uint64_t EditorialPreview.hashValue.getter()
{
  sub_24B75C6D8();
  if (*(v0 + 8))
  {
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  type metadata accessor for EditorialPreview(0);
  sub_24B75B108();
  sub_24B6A737C(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B759D28()
{
  sub_24B75C6D8();
  if (*(v0 + 8))
  {
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  sub_24B75B108();
  sub_24B6A737C(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B759E08(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  sub_24B75B108();
  sub_24B6A737C(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_24B75C2C8();
}

uint64_t sub_24B759ED0(uint64_t a1)
{
  sub_24B75C6D8();
  if (*(v1 + 8))
  {
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  sub_24B75B108();
  sub_24B6A737C(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

unint64_t sub_24B75A030()
{
  result = qword_27F036EF8;
  if (!qword_27F036EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036EF8);
  }

  return result;
}

unint64_t sub_24B75A088()
{
  result = qword_27F036F00;
  if (!qword_27F036F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F00);
  }

  return result;
}

unint64_t sub_24B75A0E0()
{
  result = qword_27F036F08;
  if (!qword_27F036F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F08);
  }

  return result;
}

uint64_t sub_24B75A144(uint64_t a1)
{
  v2 = sub_24B75A568();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B75A180(uint64_t a1)
{
  v2 = sub_24B75A568();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B75A1BC(uint64_t a1)
{
  v2 = sub_24B75A610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B75A1F8(uint64_t a1)
{
  v2 = sub_24B75A610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B75A234(uint64_t a1)
{
  v2 = sub_24B75A5BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B75A270(uint64_t a1)
{
  v2 = sub_24B75A5BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProgramDetailSizeClass.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036F10, &qword_24B76B740);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036F18, &qword_24B76B748);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036F20, &qword_24B76B750);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B75A568();
  sub_24B75C738();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_24B75A5BC();
    sub_24B75C638();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_24B75A610();
    sub_24B75C638();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_24B75A568()
{
  result = qword_27F036F28;
  if (!qword_27F036F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F28);
  }

  return result;
}

unint64_t sub_24B75A5BC()
{
  result = qword_27F036F30;
  if (!qword_27F036F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F30);
  }

  return result;
}

unint64_t sub_24B75A610()
{
  result = qword_27F036F38;
  if (!qword_27F036F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F38);
  }

  return result;
}

uint64_t sub_24B75A680@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B75A73C(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t ProgramDetailSizeClass.hashValue.getter(char a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](a1 & 1);
  return sub_24B75C718();
}

uint64_t sub_24B75A73C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036F80, &qword_24B76BAD0);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036F88, &qword_24B76BAD8);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F036F90, &unk_24B76BAE0);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B75A568();
  v11 = v26;
  sub_24B75C728();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_24B75C628();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_24B6B9E04();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_24B75C568();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
    *v19 = &type metadata for ProgramDetailSizeClass;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_24B75A5BC();
    sub_24B75C598();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_24B75A610();
    sub_24B75C598();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_24B75ABFC()
{
  result = qword_27F036F40;
  if (!qword_27F036F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F40);
  }

  return result;
}

unint64_t sub_24B75AC94()
{
  result = qword_27F036F48;
  if (!qword_27F036F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F48);
  }

  return result;
}

unint64_t sub_24B75ACEC()
{
  result = qword_27F036F50;
  if (!qword_27F036F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F50);
  }

  return result;
}

unint64_t sub_24B75AD44()
{
  result = qword_27F036F58;
  if (!qword_27F036F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F58);
  }

  return result;
}

unint64_t sub_24B75AD9C()
{
  result = qword_27F036F60;
  if (!qword_27F036F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F60);
  }

  return result;
}

unint64_t sub_24B75ADF4()
{
  result = qword_27F036F68;
  if (!qword_27F036F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F68);
  }

  return result;
}

unint64_t sub_24B75AE4C()
{
  result = qword_27F036F70;
  if (!qword_27F036F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F70);
  }

  return result;
}

unint64_t sub_24B75AEA4()
{
  result = qword_27F036F78;
  if (!qword_27F036F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F78);
  }

  return result;
}