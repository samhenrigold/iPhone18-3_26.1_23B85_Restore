void sub_2682C0648(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2682C23C0(v4, 1, sub_2682E566C);
  OUTLINED_FUNCTION_68_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_18_22();
  if (v10 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_88_2(v3 + 168 * v9 + 32, v7, v8, &type metadata for NotebookSuggestion);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_67_2();
  if (!v5)
  {
    *(v3 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_2682C0770(uint64_t a1)
{
  result = OUTLINED_FUNCTION_7_21(a1);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v6;
  result = sub_2682C23C0(result, 1, v5);
  v11 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v12 = *(v11 + 16);
  if ((*(v11 + 24) >> 1) - v12 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v11 + 8 * v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v9);
  OUTLINED_FUNCTION_88_2(v13 + 32, v15, v16, v14);

  if (!v1)
  {
LABEL_8:
    *v2 = v11;
    return result;
  }

  v17 = *(v11 + 16);
  v8 = __OFADD__(v17, v1);
  v18 = v17 + v1;
  if (!v8)
  {
    *(v11 + 16) = v18;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_2682C083C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2682C23C0(v4, 1, sub_2682E58B8);
  OUTLINED_FUNCTION_68_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v3 + 24) >> 1) - *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D360, &qword_2683E65A0);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_67_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void *sub_2682C0944(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2682E5AF8(*(a1 + 16), 0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70) - 8);
  v5 = sub_2682CB02C(&v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);
  v6 = v8;

  sub_2681281A4(v6);
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_2682C0A44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2682E5B1C(*(a1 + 16), 0);
  v4 = sub_2682CB2F8(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_2681281A4(v5);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_2682C0B00()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Snippet.Reminder(0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_14_3();
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC00, &unk_2683E3D90);
  OUTLINED_FUNCTION_34_11();
  v6 = sub_2683D03D8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v1 = v7;
    OUTLINED_FUNCTION_29_0();
    return;
  }

  v33 = v0;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      ++v16;
      if (v9[v8])
      {
        OUTLINED_FUNCTION_6_5();
        v12 = v18 & v17;
        goto LABEL_12;
      }
    }

    if ((v3 & 1) == 0)
    {

      v1 = v33;
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_20_21();
    v1 = v33;
    if (v29 != v30)
    {
      *v9 = -1 << v28;
    }

    else
    {
      v31 = OUTLINED_FUNCTION_36_11();
      sub_268158C84(v31, v32, v5 + 64);
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    OUTLINED_FUNCTION_111_2();
LABEL_12:
    v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
    if (v3)
    {
      sub_2682B5320();
    }

    else
    {
      sub_2682B5274();
      v20 = v19;
    }

    sub_2683CFF58();
    OUTLINED_FUNCTION_85_1();
    if (v21)
    {
      break;
    }

    OUTLINED_FUNCTION_44_2();
LABEL_25:
    OUTLINED_FUNCTION_40_2();
    *(v14 + v25) |= v26;
    *(*(v7 + 48) + 8 * v27) = v19;
    OUTLINED_FUNCTION_3_33();
    sub_2682B5320();
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_43_2();
  while (1)
  {
    OUTLINED_FUNCTION_87_2();
    if (v21)
    {
      if (v23)
      {
        break;
      }
    }

    if (v22 == v24)
    {
      v22 = 0;
    }

    if (*(v14 + 8 * v22) != -1)
    {
      OUTLINED_FUNCTION_41_1();
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
}

void sub_2682C0DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_114_1();
  v10 = v6;
  v12 = v11;
  OUTLINED_FUNCTION_30_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBF0, &qword_2683D4348);
  OUTLINED_FUNCTION_34_11();
  sub_2683D03D8();
  OUTLINED_FUNCTION_106_2();
  if (!v13)
  {

LABEL_30:
    *v10 = v8;
    OUTLINED_FUNCTION_113_2();
    return;
  }

  v42 = v6;
  v14 = 0;
  OUTLINED_FUNCTION_12_19();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  v20 = v8 + 8;
  if ((v16 & v15) == 0)
  {
LABEL_4:
    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v14 >= v19)
      {
        break;
      }

      ++v22;
      if (*(v9 + 8 * v14))
      {
        OUTLINED_FUNCTION_6_5();
        v17 = v24 & v23;
        goto LABEL_9;
      }
    }

    if (v12)
    {
      OUTLINED_FUNCTION_20_21();
      if (v38 != v39)
      {
        OUTLINED_FUNCTION_50_7(v37);
      }

      else
      {
        v40 = OUTLINED_FUNCTION_36_11();
        sub_268158C84(v40, v41, v9);
      }

      v7[2] = 0;
    }

    v10 = v42;
    goto LABEL_30;
  }

  while (1)
  {
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_9:
    v25 = v21 | (v14 << 6);
    v26 = *(v7[6] + 8 * v25);
    v27 = *(v7[7] + 8 * v25);
    if ((v12 & 1) == 0)
    {
      v28 = v26;
      v29 = v27;
    }

    sub_2683CFF58();
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_85_1();
    if (v30)
    {
      break;
    }

    OUTLINED_FUNCTION_44_2();
LABEL_21:
    OUTLINED_FUNCTION_40_2();
    *(v20 + v34) |= v35;
    *(v8[6] + 8 * v36) = v26;
    *(v8[7] + 8 * v36) = v27;
    ++v8[2];
    if (!v17)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_43_2();
  while (1)
  {
    OUTLINED_FUNCTION_87_2();
    if (v30)
    {
      if (v32)
      {
        break;
      }
    }

    if (v31 == v33)
    {
      v31 = 0;
    }

    if (v20[v31] != -1)
    {
      OUTLINED_FUNCTION_41_1();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_2682C0F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_114_1();
  v10 = v6;
  v12 = v11;
  OUTLINED_FUNCTION_30_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251650, &qword_2683E3DA0);
  OUTLINED_FUNCTION_34_11();
  sub_2683D03D8();
  OUTLINED_FUNCTION_106_2();
  if (!v13)
  {
LABEL_29:

LABEL_30:
    *v10 = v8;
    OUTLINED_FUNCTION_113_2();
    return;
  }

  v39 = v6;
  v14 = 0;
  OUTLINED_FUNCTION_12_19();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  v20 = v8 + 64;
  if ((v16 & v15) == 0)
  {
LABEL_4:
    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v14 >= v19)
      {
        break;
      }

      ++v22;
      if (*(v9 + 8 * v14))
      {
        OUTLINED_FUNCTION_6_5();
        v17 = v24 & v23;
        goto LABEL_9;
      }
    }

    if ((v12 & 1) == 0)
    {

      v10 = v39;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_20_21();
    v10 = v39;
    if (v35 != v36)
    {
      OUTLINED_FUNCTION_50_7(v34);
    }

    else
    {
      v37 = OUTLINED_FUNCTION_36_11();
      sub_268158C84(v37, v38, v9);
    }

    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_111_2();
LABEL_9:
    v25 = *(*(v7 + 48) + 8 * (v21 | (v14 << 6)));
    if ((v12 & 1) == 0)
    {
      v26 = v25;
    }

    sub_2683CFF58();
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_85_1();
    if (v27)
    {
      break;
    }

    OUTLINED_FUNCTION_44_2();
LABEL_21:
    OUTLINED_FUNCTION_40_2();
    *(v20 + v31) |= v32;
    *(*(v8 + 48) + 8 * v33) = v25;
    OUTLINED_FUNCTION_35_9(v33);
    if (!v17)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_43_2();
  while (1)
  {
    OUTLINED_FUNCTION_87_2();
    if (v27)
    {
      if (v29)
      {
        break;
      }
    }

    if (v28 == v30)
    {
      v28 = 0;
    }

    if (*(v20 + 8 * v28) != -1)
    {
      OUTLINED_FUNCTION_41_1();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_2682C10F0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30_11();
  v11 = OUTLINED_FUNCTION_82_2(v8, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_34_11();
  sub_2683D03D8();
  OUTLINED_FUNCTION_106_2();
  if (!v13)
  {
LABEL_29:

    *v2 = a2;
    return;
  }

  v14 = 0;
  OUTLINED_FUNCTION_12_19();
  OUTLINED_FUNCTION_98_2();
  if (!v4)
  {
LABEL_4:
    v16 = v14;
    while (1)
    {
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v14 >= v2)
      {
        break;
      }

      ++v16;
      if (*(v5 + 8 * v14))
      {
        OUTLINED_FUNCTION_6_5();
        v4 = v18 & v17;
        goto LABEL_9;
      }
    }

    if (a2)
    {
      OUTLINED_FUNCTION_20_21();
      if (v27 != v28)
      {
        OUTLINED_FUNCTION_50_7(v26);
      }

      else
      {
        v29 = OUTLINED_FUNCTION_36_11();
        sub_268158C84(v29, v30, v5);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_96_1();
LABEL_9:
    v19 = *(*(v3 + 48) + (v15 | (v14 << 6)));
    if ((a2 & 1) == 0)
    {
    }

    sub_2683D0698();
    sub_2683D06B8();
    sub_2683D06D8();
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_85_1();
    if (v20)
    {
      break;
    }

    OUTLINED_FUNCTION_44_2();
LABEL_21:
    OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_94_2();
    *(v25 + v24) = v19;
    OUTLINED_FUNCTION_35_9(v24);
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_43_2();
  while (1)
  {
    OUTLINED_FUNCTION_87_2();
    if (v20)
    {
      if (v22)
      {
        break;
      }
    }

    if (v21 == v23)
    {
      v21 = 0;
    }

    if (*(v6 + 8 * v21) != -1)
    {
      OUTLINED_FUNCTION_41_1();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_2682C1298(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_2683CB528();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v47 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v39 - v11;
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251638, &qword_2683E3D78);
  v48 = a2;
  result = sub_2683D03D8();
  v14 = result;
  if (!*(v12 + 16))
  {
LABEL_35:

LABEL_36:
    *v3 = v14;
    return result;
  }

  v45 = v5;
  v39 = v2;
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
  v41 = (v6 + 32);
  v40 = (v6 + 8);
  v21 = result + 64;
  v44 = v12;
  v52 = result;
  if (!v19)
  {
LABEL_7:
    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v23 = (v25 - 1) & v25;
        goto LABEL_12;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v12 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      sub_268158C84(0, (v38 + 63) >> 6, v16);
    }

    else
    {
      *v16 = -1 << v38;
    }

    *(v12 + 16) = 0;
    goto LABEL_35;
  }

  while (1)
  {
    v22 = __clz(__rbit64(v19));
    v23 = (v19 - 1) & v19;
LABEL_12:
    v26 = v22 | (v15 << 6);
    v50 = *(v47 + 72);
    v51 = v23;
    if (v48)
    {
      sub_2682CC5D8();
      v49 = *(*(v12 + 56) + 8 * v26);
    }

    else
    {
      sub_2682CC640();
      v49 = *(*(v12 + 56) + 8 * v26);
    }

    sub_2683D0698();
    v27 = v46;
    sub_2682CC640();
    v28 = v45;
    if (__swift_getEnumTagSinglePayload(v27, 1, v45) == 1)
    {
      sub_2683D06B8();
    }

    else
    {
      v29 = v42;
      (*v41)(v42, v27, v28);
      sub_2683D06B8();
      sub_2682C22DC(&unk_28024D6D8);
      sub_2683CFA08();
      (*v40)(v29, v28);
    }

    result = sub_2683D06D8();
    v30 = -1 << *(v52 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    v12 = v44;
    if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
    {
      break;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v21 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = sub_2682CC5D8();
    v19 = v51;
    v14 = v52;
    *(*(v52 + 56) + 8 * v33) = v49;
    ++*(v14 + 16);
    if (!v19)
    {
      goto LABEL_7;
    }
  }

  v34 = 0;
  v35 = (63 - v30) >> 6;
  while (++v32 != v35 || (v34 & 1) == 0)
  {
    v36 = v32 == v35;
    if (v32 == v35)
    {
      v32 = 0;
    }

    v34 |= v36;
    v37 = *(v21 + 8 * v32);
    if (v37 != -1)
    {
      v33 = __clz(__rbit64(~v37)) + (v32 << 6);
      goto LABEL_27;
    }
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2682C17D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251648, &qword_2683E3D88);
  v33 = a2;
  result = sub_2683D03D8();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_35:

LABEL_36:
    *v3 = v7;
    return result;
  }

  v32 = v2;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      sub_268158C84(0, (v31 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_35;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    if (v33)
    {
      v19 = *(v5 + 48) + 104 * v18;
      v42 = *v19;
      v20 = *(v19 + 24);
      v43 = *(v19 + 16);
      memcpy(__dst, (v19 + 32), sizeof(__dst));
      v21 = *(*(v5 + 56) + 8 * v18);
    }

    else
    {
      memcpy(v40, (*(v5 + 48) + 104 * v18), sizeof(v40));
      v21 = *(*(v5 + 56) + 8 * v18);
      sub_2682CC640();
      v42 = *v40;
      v20 = *&v40[24];
      v43 = *&v40[16];
      memcpy(__dst, &v40[32], sizeof(__dst));
    }

    sub_2683D0698();
    if (v20)
    {
      *__src = v42;
      *&__src[16] = v43;
      memcpy(&__src[32], __dst, 0x41uLL);
      *&__src[24] = v20;
      sub_2683D06B8();
      v36 = v42;
      v37 = v43;
      v38 = v20;
      memcpy(v39, __dst, sizeof(v39));
      sub_26814FB60(&v36, v40);
      Snippet.ReminderList.hash(into:)(v35);
      memcpy(v40, __src, sizeof(v40));
      sub_26814F740(v40);
    }

    else
    {
      sub_2683D06B8();
    }

    result = sub_2683D06D8();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v7 + 48) + 104 * v25;
    *v30 = v42;
    *(v30 + 16) = v43;
    *(v30 + 24) = v20;
    result = memcpy((v30 + 32), __dst, 0x41uLL);
    *(*(v7 + 56) + 8 * v25) = v21;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

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
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_27;
    }
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2682C1BB4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Snippet.Reminder(0);
  v30[1] = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v32 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251600, &qword_2683E3D38);
  v31 = a2;
  result = sub_2683D03D8();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v9;
    return result;
  }

  v30[0] = v2;
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
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v30[0];
      goto LABEL_35;
    }

    v29 = 1 << *(v7 + 32);
    v3 = v30[0];
    if (v29 >= 64)
    {
      sub_268158C84(0, (v29 + 63) >> 6, v7 + 64);
    }

    else
    {
      *v11 = -1 << v29;
    }

    *(v7 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v33 = *(*(v7 + 48) + 16 * (v17 | (v10 << 6)));
    v20 = *(&v33 + 1);
    if (v31)
    {
      sub_2682B5320();
    }

    else
    {
      sub_2682B5274();
    }

    sub_2683D0698();
    sub_2683D06B8();
    if (v20)
    {
      sub_2683CFB48();
    }

    result = sub_2683D06D8();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v16 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v16 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 16 * v24) = v33;
    result = sub_2682B5320();
    ++*(v9 + 16);
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v16 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_2682C1F58(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30_11();
  v11 = OUTLINED_FUNCTION_82_2(v8, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_34_11();
  sub_2683D03D8();
  OUTLINED_FUNCTION_106_2();
  if (!v13)
  {
LABEL_31:

    *v2 = a2;
    return;
  }

  v14 = 0;
  OUTLINED_FUNCTION_12_19();
  OUTLINED_FUNCTION_98_2();
  if (!v4)
  {
LABEL_4:
    v16 = v14;
    while (1)
    {
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v14 >= v2)
      {
        break;
      }

      ++v16;
      if (*(v5 + 8 * v14))
      {
        OUTLINED_FUNCTION_6_5();
        v4 = v18 & v17;
        goto LABEL_9;
      }
    }

    if (a2)
    {
      OUTLINED_FUNCTION_20_21();
      if (v28 != v29)
      {
        OUTLINED_FUNCTION_50_7(v27);
      }

      else
      {
        v30 = OUTLINED_FUNCTION_36_11();
        sub_268158C84(v30, v31, v5);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_31;
  }

  while (1)
  {
    OUTLINED_FUNCTION_96_1();
LABEL_9:
    v19 = v15 | (v14 << 6);
    v32 = *(*(v3 + 48) + 16 * v19);
    v20 = *(*(v3 + 48) + 16 * v19 + 8);
    if ((a2 & 1) == 0)
    {
    }

    sub_2683D0698();
    sub_2683D06B8();
    if (v20)
    {
      sub_2683CFB48();
    }

    sub_2683D06D8();
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_85_1();
    if (v21)
    {
      break;
    }

    OUTLINED_FUNCTION_44_2();
LABEL_23:
    OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_94_2();
    *(v26 + 16 * v25) = v32;
    OUTLINED_FUNCTION_35_9(v25);
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_43_2();
  while (1)
  {
    OUTLINED_FUNCTION_87_2();
    if (v21)
    {
      if (v23)
      {
        break;
      }
    }

    if (v22 == v24)
    {
      v22 = 0;
    }

    if (*(v6 + 8 * v22) != -1)
    {
      OUTLINED_FUNCTION_41_1();
      goto LABEL_23;
    }
  }

LABEL_33:
  __break(1u);
}

unint64_t sub_2682C2150()
{
  result = qword_280251448;
  if (!qword_280251448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251448);
  }

  return result;
}

unint64_t sub_2682C21A4()
{
  result = qword_280251450;
  if (!qword_280251450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251450);
  }

  return result;
}

unint64_t sub_2682C21F8()
{
  result = qword_280251458;
  if (!qword_280251458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251458);
  }

  return result;
}

unint64_t sub_2682C224C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D878, &unk_2683E40E0);
    sub_2682C22DC(v4);
    OUTLINED_FUNCTION_74_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682C22DC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2682C2320(uint64_t a1, char a2)
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

  sub_2683D00A8();
LABEL_9:
  result = sub_2683D01B8();
  *v2 = result;
  return result;
}

uint64_t sub_2682C23C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_2682C2438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2683D0698();
  sub_2683D06B8();
  if (a2)
  {
    sub_2683CFB48();
  }

  sub_2683D06D8();
  v7 = sub_2683D0088();
  *(a4 + 64 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
  v8 = (*(a4 + 48) + 16 * v7);
  *v8 = a1;
  v8[1] = a2;
  type metadata accessor for Snippet.Reminder(0);
  result = sub_2682B5320();
  ++*(a4 + 16);
  return result;
}

uint64_t sub_2682C2554(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = OUTLINED_FUNCTION_24_4();
  v7 = type metadata accessor for Snippet.Reminder(v6);
  OUTLINED_FUNCTION_23(v7);
  v9 = v8;
  v10 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2682CC5C4(v10);
    v10 = v11;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v14[1] = v12;
  result = sub_2682C27EC(v14, a2, a3);
  *v3 = v10;
  return result;
}

uint64_t sub_2682C260C(uint64_t (*a1)(char *, uint64_t), uint64_t a2)
{
  type metadata accessor for Snippet.Reminder(0);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2682CC5C4(v5);
    v5 = v6;
  }

  result = sub_2682C2924(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_2682C26CC(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2682CC62C(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_2682C2A64(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_2682C2780(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2682CC694(v2);
    v2 = v3;
  }

  v4 = v2[2];
  v6[0] = (v2 + 4);
  v6[1] = v4;
  result = sub_2682C2BAC(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2682C27EC(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_2683D0558();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Snippet.Reminder(0);
        v10 = sub_2683CFCF8();
        *(v10 + 16) = v9;
      }

      v11 = type metadata accessor for Snippet.Reminder(0);
      OUTLINED_FUNCTION_23(v11);
      OUTLINED_FUNCTION_11_7();
      v13[0] = v10 + v12;
      v13[1] = v9;
      a2(v13, v14, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_2682C2924(uint64_t (*a1)(char *, uint64_t), uint64_t a2)
{
  v5 = v2[1];
  result = sub_2683D0558();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Snippet.Reminder(0);
        v9 = sub_2683CFCF8();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for Snippet.Reminder(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_2682C5DC4(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_2682C36A8(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_2682C2A64(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2683D0558();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70);
        v6 = sub_2683CFCF8();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2682C6878(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2682C3920(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2682C2BAC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2683D0558();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251640, &qword_2683E3D80);
        v6 = sub_2683CFCF8();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2682C77CC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2682C3DEC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2682C2CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Snippet.Reminder(0);
  v9 = MEMORY[0x28223BE20](v8);
  v39 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v38 = v18;
    v32 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v36 = v20;
      v37 = a3;
      v34 = v23;
      v35 = v22;
      while (1)
      {
        sub_2682B5274();
        sub_2682B5274();
        v24 = *(v8 + 24);
        v25 = *&v17[v24];
        v26 = *&v17[v24 + 8];
        v27 = &v13[v24];
        if (v25 == *v27 && v26 == *(v27 + 1))
        {
          break;
        }

        v29 = sub_2683D0598();
        sub_2682B52CC();
        result = sub_2682B52CC();
        if (v29)
        {
          if (!v38)
          {
            __break(1u);
            return result;
          }

          sub_2682B5320();
          swift_arrayInitWithTakeFrontToBack();
          result = sub_2682B5320();
          v20 += v21;
          v23 += v21;
          if (!__CFADD__(v22++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_2682B52CC();
      result = sub_2682B52CC();
LABEL_14:
      a3 = v37 + 1;
      v20 = v36 + v32;
      v22 = v35 - 1;
      v23 = v34 + v32;
      if (v37 + 1 != v33)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2682C2F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v71 = a1;
  v7 = sub_2683CB528();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v64 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v63 = &v54[-v11];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251618, &qword_2683E3D58);
  MEMORY[0x28223BE20](v70);
  v13 = &v54[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v73 = &v54[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v69 = &v54[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v54[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v23 = &v54[-v22];
  v75 = type metadata accessor for Snippet.Reminder(0);
  v24 = MEMORY[0x28223BE20](v75);
  v67 = &v54[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v24);
  v76 = &v54[-v27];
  result = MEMORY[0x28223BE20](v26);
  v74 = &v54[-v30];
  v56 = a2;
  if (a3 != a2)
  {
    v31 = *a4;
    v61 = (v8 + 8);
    v62 = (v8 + 32);
    v32 = *(v29 + 72);
    v33 = v31 + v32 * (a3 - 1);
    v65 = -v32;
    v66 = v31;
    v34 = v71 - a3;
    v55 = v32;
    v35 = v31 + v32 * a3;
    v68 = v21;
    v72 = v23;
    while (2)
    {
      v59 = v33;
      v60 = a3;
      v57 = v35;
      v58 = v34;
      v36 = v34;
      while (1)
      {
        sub_2682B5274();
        sub_2682B5274();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        v37 = v69;
        sub_2683CB858();
        v38 = v37;
        v39 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
        if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
        {
          sub_26812D9E0(v38, &qword_28024D5D0, &unk_2683D2CA0);
          v40 = 1;
          v41 = v72;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
          v41 = v72;
          sub_2683CB858();
          sub_2682B52CC();
          v40 = 0;
        }

        __swift_storeEnumTagSinglePayload(v41, v40, 1, v7);
        v42 = v73;
        sub_2683CB858();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v39);
        v71 = v36;
        if (EnumTagSinglePayload == 1)
        {
          sub_26812D9E0(v73, &qword_28024D5D0, &unk_2683D2CA0);
          v44 = 1;
          v45 = v68;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
          v45 = v68;
          sub_2683CB858();
          sub_2682B52CC();
          v44 = 0;
        }

        __swift_storeEnumTagSinglePayload(v45, v44, 1, v7);
        v46 = *(v70 + 48);
        sub_2682CC5D8();
        sub_2682CC5D8();
        if (__swift_getEnumTagSinglePayload(v13, 1, v7) == 1)
        {
          break;
        }

        if (__swift_getEnumTagSinglePayload(&v13[v46], 1, v7) == 1)
        {
          sub_26812D9E0(v13, &qword_28024DB08, qword_2683D5760);
          sub_2682B52CC();
          result = sub_2682B52CC();
          v47 = v71;
        }

        else
        {
          v48 = v63;
          v49 = *v62;
          (*v62)(v63, v13, v7);
          v50 = v64;
          v49(v64, &v13[v46], v7);
          v51 = sub_2683CB4C8();
          v52 = *v61;
          (*v61)(v50, v7);
          v52(v48, v7);
          sub_2682B52CC();
          result = sub_2682B52CC();
          v47 = v71;
          if ((v51 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        if (!v66)
        {
          __break(1u);
          return result;
        }

        sub_2682B5320();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_2682B5320();
        v33 += v65;
        v35 += v65;
        v53 = __CFADD__(v47, 1);
        v36 = v47 + 1;
        if (v53)
        {
          goto LABEL_19;
        }
      }

      sub_26812D9E0(&v13[v46], &qword_28024DB08, qword_2683D5760);
      sub_2682B52CC();
      result = sub_2682B52CC();
LABEL_19:
      a3 = v60 + 1;
      v33 = v59 + v55;
      v34 = v58 - 1;
      v35 = v57 + v55;
      if (v60 + 1 != v56)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2682C36A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v36 = a4;
  v35 = type metadata accessor for Snippet.Reminder(0);
  v9 = MEMORY[0x28223BE20](v35);
  v34 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v26 - v16;
  v27 = a2;
  if (a3 != a2)
  {
    v18 = *v4;
    v19 = *(v15 + 72);
    v20 = *v4 + v19 * (a3 - 1);
    v32 = -v19;
    v33 = v18;
    v21 = a1 - a3;
    v26 = v19;
    v22 = v18 + v19 * a3;
LABEL_4:
    v30 = v20;
    v31 = a3;
    v28 = v22;
    v29 = v21;
    v23 = v20;
    while (1)
    {
      sub_2682B5274();
      sub_2682B5274();
      v24 = v36(v17, v13);
      sub_2682B52CC();
      result = sub_2682B52CC();
      if (v5)
      {
        break;
      }

      if (v24)
      {
        if (!v33)
        {
          __break(1u);
          return result;
        }

        sub_2682B5320();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_2682B5320();
        v23 += v32;
        v22 += v32;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v31 + 1;
      v20 = v30 + v26;
      v21 = v29 - 1;
      v22 = v28 + v26;
      if (v31 + 1 != v27)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_2682C3920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_2683CB528();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v55 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70);
  v14 = MEMORY[0x28223BE20](v13);
  v50 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v54 = &v41 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v59 = &v41 - v22;
  result = MEMORY[0x28223BE20](v21);
  v57 = &v41 - v25;
  v43 = a2;
  if (a3 != a2)
  {
    v26 = *a4;
    v27 = *(v24 + 72);
    v51 = (v9 + 8);
    v52 = (v9 + 32);
    v28 = v26 + v27 * (a3 - 1);
    v48 = -v27;
    v49 = v26;
    v29 = a1 - a3;
    v42 = v27;
    v30 = v26 + v27 * a3;
    v53 = v13;
    v56 = v20;
    while (2)
    {
      v46 = v28;
      v47 = a3;
      v44 = v30;
      v45 = v29;
      v31 = v29;
      do
      {
        sub_2682CC640();
        sub_2682CC640();
        sub_2682CC640();

        if (__swift_getEnumTagSinglePayload(v20, 1, v8) == 1)
        {
          sub_2683CB488();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v8);
          v34 = v54;
          v33 = v55;
          if (EnumTagSinglePayload != 1)
          {
            sub_26812D9E0(v56, &qword_28024DB08, qword_2683D5760);
          }
        }

        else
        {
          (*v52)(v58, v20, v8);
          v34 = v54;
          v33 = v55;
        }

        sub_2682CC640();

        if (__swift_getEnumTagSinglePayload(v34, 1, v8) == 1)
        {
          sub_2683CB488();
          if (__swift_getEnumTagSinglePayload(v34, 1, v8) != 1)
          {
            sub_26812D9E0(v34, &qword_28024DB08, qword_2683D5760);
          }
        }

        else
        {
          (*v52)(v33, v34, v8);
        }

        v35 = v58;
        v36 = sub_2683CB4C8();
        v37 = v33;
        v38 = v36;
        v39 = *v51;
        (*v51)(v37, v8);
        v39(v35, v8);
        sub_26812D9E0(v59, &qword_280251630, &qword_2683E3D70);
        result = sub_26812D9E0(v57, &qword_280251630, &qword_2683E3D70);
        v20 = v56;
        if ((v38 & 1) == 0)
        {
          break;
        }

        if (!v49)
        {
          __break(1u);
          return result;
        }

        sub_2682CC5D8();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_2682CC5D8();
        v28 += v48;
        v30 += v48;
      }

      while (!__CFADD__(v31++, 1));
      a3 = v47 + 1;
      v28 = v46 + v42;
      v29 = v45 - 1;
      v30 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2682C3DEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 112 * a3);
    v6 = result - a3 + 1;
    while (2)
    {
      v19 = a3;
      v14 = v6;
      v15 = v5;
      while (1)
      {
        memcpy(__dst, v5, sizeof(__dst));
        memcpy(v18, v5 - 112, 0x70uLL);
        v7 = __dst[3];
        if (__dst[3])
        {
          v8 = __dst[2];
        }

        else
        {
          v8 = 0;
          v7 = 0xE000000000000000;
        }

        v9 = v18[3];
        if (v18[3])
        {
          v10 = v18[2];
        }

        else
        {
          v10 = 0;
          v9 = 0xE000000000000000;
        }

        if (v8 == v10 && v7 == v9)
        {
          break;
        }

        v12 = sub_2683D0598();
        sub_2682CC640();
        sub_2682CC640();

        sub_26812D9E0(v18, &qword_280251640, &qword_2683E3D80);
        result = sub_26812D9E0(__dst, &qword_280251640, &qword_2683E3D80);
        if ((v12 & 1) == 0)
        {
          goto LABEL_19;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        memcpy(__src, v5, sizeof(__src));
        memcpy(v5, v5 - 112, 0x70uLL);
        result = memcpy(v5 - 112, __src, 0x70uLL);
        if (!v6)
        {
          goto LABEL_19;
        }

        ++v6;
        v5 -= 112;
      }

      sub_2682CC640();
      sub_2682CC640();

      sub_26812D9E0(v18, &qword_280251640, &qword_2683E3D80);
      result = sub_26812D9E0(__dst, &qword_280251640, &qword_2683E3D80);
LABEL_19:
      a3 = v19 + 1;
      v5 = v15 + 112;
      v6 = v14 - 1;
      if (v19 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2682C4014(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v8 = type metadata accessor for Snippet.Reminder(0);
  v143 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v10 = MEMORY[0x28223BE20](v9);
  v149 = &v131 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v150 = &v131 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v148 = &v131 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v147 = &v131 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v136 = &v131 - v20;
  MEMORY[0x28223BE20](v19);
  v135 = &v131 - v23;
  v145 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_115:
    v152 = *v137;
    if (!v152)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_117:
      v124 = v26 + 16;
      v125 = *(v26 + 2);
      while (v125 >= 2)
      {
        if (!*v145)
        {
          goto LABEL_153;
        }

        v126 = v26;
        v26 += 16 * v125;
        v127 = *v26;
        v128 = &v124[2 * v125];
        v129 = v128[1];
        sub_2682C80F4(*v145 + *(v143 + 72) * *v26, *v145 + *(v143 + 72) * *v128, *v145 + *(v143 + 72) * v129, v152);
        if (v5)
        {
          break;
        }

        if (v129 < v127)
        {
          goto LABEL_141;
        }

        if (v125 - 2 >= *v124)
        {
          goto LABEL_142;
        }

        *v26 = v127;
        *(v26 + 1) = v129;
        v130 = *v124 - v125;
        if (*v124 < v125)
        {
          goto LABEL_143;
        }

        v125 = *v124 - 1;
        memmove(v128, v128 + 2, 16 * v130);
        *v124 = v125;
        v26 = v126;
      }

LABEL_125:

      return;
    }

LABEL_150:
    v26 = sub_2682CA6A4(v26);
    goto LABEL_117;
  }

  v151 = v22;
  v132 = a4;
  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  v152 = v8;
  v131 = v21;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    v138 = v25;
    if (v25 + 1 < v24)
    {
      v141 = v24;
      v29 = *v145;
      v30 = *(v143 + 72);
      v31 = (v25 + 1);
      v32 = v135;
      sub_2682B5274();
      v144 = v30;
      v33 = v136;
      sub_2682B5274();
      v34 = *(v8 + 24);
      v35 = *&v32[v34];
      v36 = *&v32[v34 + 8];
      v37 = &v33[v34];
      v38 = v35 == *v37 && v36 == *(v37 + 1);
      v134 = v5;
      if (v38)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = sub_2683D0598();
      }

      v133 = v26;
      sub_2682B52CC();
      sub_2682B52CC();
      v39 = v27 + 2;
      v40 = v144 * (v27 + 2);
      v41 = v29 + v40;
      v42 = v31;
      v43 = v144 * v31;
      v44 = v29 + v144 * v31;
      do
      {
        v5 = v39;
        v26 = v42;
        v45 = v43;
        v46 = v40;
        if (v39 >= v141)
        {
          break;
        }

        v146 = v39;
        v47 = v147;
        sub_2682B5274();
        v48 = v148;
        sub_2682B5274();
        v49 = *(v8 + 24);
        v50 = *&v47[v49];
        v51 = *&v47[v49 + 8];
        v52 = &v48[v49];
        v53 = v50 == *v52 && v51 == *(v52 + 1);
        v54 = v53 ? 0 : sub_2683D0598();
        v5 = v146;
        sub_2682B52CC();
        sub_2682B52CC();
        v55 = v142 ^ v54;
        v39 = v5 + 1;
        v41 += v144;
        v44 += v144;
        v42 = v26 + 1;
        v43 = v45 + v144;
        v40 = v46 + v144;
        v8 = v152;
      }

      while ((v55 & 1) == 0);
      if (v142)
      {
        if (v5 < v138)
        {
          goto LABEL_147;
        }

        if (v138 >= v5)
        {
          v28 = v5;
          v26 = v133;
          v5 = v134;
          v27 = v138;
          goto LABEL_39;
        }

        v56 = v138 * v144;
        v57 = v138;
        do
        {
          if (v57 != v26)
          {
            v58 = *v145;
            if (!*v145)
            {
              goto LABEL_154;
            }

            sub_2682B5320();
            v59 = v56 < v45 || v58 + v56 >= v58 + v46;
            if (v59)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v56 != v45)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2682B5320();
          }

          ++v57;
          v45 -= v144;
          v46 -= v144;
          v56 += v144;
          v60 = v57 < v26--;
        }

        while (v60);
        v28 = v5;
        v26 = v133;
        v5 = v134;
        v8 = v152;
      }

      else
      {
        v28 = v5;
        v26 = v133;
        v5 = v134;
      }

      v27 = v138;
    }

LABEL_39:
    v61 = v145[1];
    v146 = v28;
    if (v28 < v61)
    {
      v97 = __OFSUB__(v28, v27);
      v62 = v28 - v27;
      if (v97)
      {
        goto LABEL_146;
      }

      if (v62 < v132)
      {
        break;
      }
    }

LABEL_63:
    if (v146 < v27)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E556C(0, *(v26 + 2) + 1, 1, v26);
      v26 = v122;
    }

    v79 = *(v26 + 2);
    v78 = *(v26 + 3);
    v80 = v79 + 1;
    if (v79 >= v78 >> 1)
    {
      sub_2682E556C(v78 > 1, v79 + 1, 1, v26);
      v26 = v123;
    }

    *(v26 + 2) = v80;
    v81 = v26 + 32;
    v82 = &v26[16 * v79 + 32];
    v83 = v146;
    *v82 = v138;
    *(v82 + 1) = v83;
    v144 = *v137;
    if (!v144)
    {
      goto LABEL_155;
    }

    if (v79)
    {
      while (1)
      {
        v84 = v80 - 1;
        v85 = &v81[16 * v80 - 16];
        v86 = &v26[16 * v80];
        if (v80 >= 4)
        {
          break;
        }

        if (v80 == 3)
        {
          v87 = *(v26 + 4);
          v88 = *(v26 + 5);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_83:
          if (v90)
          {
            goto LABEL_132;
          }

          v102 = *v86;
          v101 = *(v86 + 1);
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_135;
          }

          v106 = *(v85 + 1);
          v107 = v106 - *v85;
          if (__OFSUB__(v106, *v85))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_140;
          }

          if (v104 + v107 >= v89)
          {
            if (v89 < v107)
            {
              v84 = v80 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        if (v80 < 2)
        {
          goto LABEL_134;
        }

        v109 = *v86;
        v108 = *(v86 + 1);
        v97 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        v105 = v97;
LABEL_98:
        if (v105)
        {
          goto LABEL_137;
        }

        v111 = *v85;
        v110 = *(v85 + 1);
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_139;
        }

        if (v112 < v104)
        {
          goto LABEL_112;
        }

LABEL_105:
        if (v84 - 1 >= v80)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*v145)
        {
          goto LABEL_152;
        }

        v116 = v26;
        v117 = &v81[16 * v84 - 16];
        v26 = *v117;
        v118 = v84;
        v119 = &v81[16 * v84];
        v120 = *(v119 + 1);
        sub_2682C80F4(*v145 + *(v143 + 72) * *v117, *v145 + *(v143 + 72) * *v119, *v145 + *(v143 + 72) * v120, v144);
        if (v5)
        {
          goto LABEL_125;
        }

        if (v120 < v26)
        {
          goto LABEL_127;
        }

        v5 = *(v116 + 2);
        if (v118 > v5)
        {
          goto LABEL_128;
        }

        *v117 = v26;
        *(v117 + 1) = v120;
        if (v118 >= v5)
        {
          goto LABEL_129;
        }

        v121 = v118;
        v80 = v5 - 1;
        memmove(v119, v119 + 16, 16 * (v5 - 1 - v121));
        v26 = v116;
        *(v116 + 2) = v5 - 1;
        v60 = v5 > 2;
        v5 = 0;
        if (!v60)
        {
          goto LABEL_112;
        }
      }

      v91 = &v81[16 * v80];
      v92 = *(v91 - 8);
      v93 = *(v91 - 7);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_130;
      }

      v96 = *(v91 - 6);
      v95 = *(v91 - 5);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_131;
      }

      v98 = *(v86 + 1);
      v99 = v98 - *v86;
      if (__OFSUB__(v98, *v86))
      {
        goto LABEL_133;
      }

      v97 = __OFADD__(v89, v99);
      v100 = v89 + v99;
      if (v97)
      {
        goto LABEL_136;
      }

      if (v100 >= v94)
      {
        v114 = *v85;
        v113 = *(v85 + 1);
        v97 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v97)
        {
          goto LABEL_144;
        }

        if (v89 < v115)
        {
          v84 = v80 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_83;
    }

LABEL_112:
    v25 = v146;
    v24 = v145[1];
    v8 = v152;
    if (v146 >= v24)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v27, v132))
  {
    goto LABEL_148;
  }

  if (v27 + v132 >= v61)
  {
    v63 = v61;
  }

  else
  {
    v63 = v27 + v132;
  }

  if (v63 < v27)
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v146 == v63)
  {
    goto LABEL_63;
  }

  v133 = v26;
  v134 = v5;
  v64 = *v145;
  v65 = *(v143 + 72);
  v66 = *v145 + v65 * (v146 - 1);
  v67 = -v65;
  v68 = v27 - v146;
  v139 = v65;
  v140 = v63;
  v69 = v64 + v146 * v65;
  v70 = v150;
LABEL_49:
  v141 = v69;
  v142 = v68;
  v144 = v66;
  while (1)
  {
    v71 = v151;
    sub_2682B5274();
    sub_2682B5274();
    v72 = *(v8 + 24);
    v73 = *(v71 + v72);
    v74 = *(v71 + v72 + 8);
    v75 = &v70[v72];
    if (v73 == *v75 && v74 == *(v75 + 1))
    {
      sub_2682B52CC();
      sub_2682B52CC();
      goto LABEL_61;
    }

    v77 = sub_2683D0598();
    sub_2682B52CC();
    sub_2682B52CC();
    if ((v77 & 1) == 0)
    {
      v8 = v152;
LABEL_61:
      v66 = v144 + v139;
      v68 = v142 - 1;
      v69 = v141 + v139;
      if (++v146 == v140)
      {
        v146 = v140;
        v26 = v133;
        v5 = v134;
        v27 = v138;
        goto LABEL_63;
      }

      goto LABEL_49;
    }

    v8 = v152;
    if (!v64)
    {
      break;
    }

    sub_2682B5320();
    swift_arrayInitWithTakeFrontToBack();
    sub_2682B5320();
    v66 += v67;
    v69 += v67;
    v59 = __CFADD__(v68++, 1);
    v70 = v150;
    if (v59)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

void sub_2682C4A88(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v171 = a1;
  v208 = sub_2683CB528();
  v6 = *(v208 - 8);
  v7 = MEMORY[0x28223BE20](v208);
  v194 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v193 = &v167 - v9;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251618, &qword_2683E3D58);
  v10 = MEMORY[0x28223BE20](v201);
  v12 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v167 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v200 = &v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v199 = &v167 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v182 = &v167 - v21;
  MEMORY[0x28223BE20](v20);
  v181 = &v167 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v167 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v167 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v180 = &v167 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v167 - v32;
  v206 = type metadata accessor for Snippet.Reminder(0);
  v184 = *(v206 - 8);
  v34 = MEMORY[0x28223BE20](v206);
  v176 = &v167 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v197 = &v167 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v207 = &v167 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v205 = &v167 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v189 = &v167 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v187 = &v167 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v169 = &v167 - v47;
  MEMORY[0x28223BE20](v46);
  v168 = &v167 - v48;
  v185 = a3;
  v49 = *(a3 + 8);
  if (v49 < 1)
  {
    v51 = MEMORY[0x277D84F90];
LABEL_123:
    a3 = *v171;
    if (!*v171)
    {
      goto LABEL_163;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_125:
      v159 = (v51 + 16);
      for (i = *(v51 + 16); i >= 2; *v159 = i)
      {
        if (!*v185)
        {
          goto LABEL_160;
        }

        v161 = (v51 + 16 * i);
        v162 = *v161;
        v163 = &v159[2 * i];
        v164 = v163[1];
        v165 = v188;
        sub_2682C85F0((*v185 + *(v184 + 72) * *v161), (*v185 + *(v184 + 72) * *v163), (*v185 + *(v184 + 72) * v164), a3);
        v188 = v165;
        if (v165)
        {
          break;
        }

        if (v164 < v162)
        {
          goto LABEL_148;
        }

        if (i - 2 >= *v159)
        {
          goto LABEL_149;
        }

        *v161 = v162;
        v161[1] = v164;
        v166 = *v159 - i;
        if (*v159 < i)
        {
          goto LABEL_150;
        }

        i = *v159 - 1;
        memmove(v163, v163 + 2, 16 * v166);
      }

LABEL_121:

      return;
    }

LABEL_157:
    v51 = sub_2682CA6A4(v51);
    goto LABEL_125;
  }

  v186 = v33;
  v191 = (v6 + 8);
  v192 = (v6 + 32);
  v50 = 0;
  v51 = MEMORY[0x277D84F90];
  v170 = a4;
  v203 = v12;
  v177 = v14;
  v198 = v26;
  v204 = v29;
  v52 = a4;
  v53 = &qword_28024DB08;
  while (1)
  {
    v54 = v50++;
    v173 = v51;
    v172 = v54;
    if (v50 < v49)
    {
      v190 = v50;
      v55 = *v185;
      v195 = v49;
      v56 = *(v184 + 72);
      v51 = v55 + v56 * v190;
      v57 = v168;
      sub_2682B5274();
      v58 = v169;
      sub_2682B5274();
      LODWORD(v183) = sub_2682BAAF4(v57, v58);
      a3 = type metadata accessor for Snippet.Reminder;
      v53 = &qword_28024DB08;
      sub_2682B52CC();
      sub_2682B52CC();
      v59 = v54 + 2;
      v196 = v56;
      v60 = v55 + v56 * (v54 + 2);
      v61 = v195;
      v50 = v190;
      while (1)
      {
        v62 = v59;
        if (v50 + 1 >= v61)
        {
          break;
        }

        v202 = v59;
        v190 = v50;
        sub_2682B5274();
        sub_2682B5274();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        v63 = v181;
        sub_2683CB858();
        v64 = v63;
        v65 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
        if (__swift_getEnumTagSinglePayload(v64, 1, v65) == 1)
        {
          sub_26812D9E0(v64, &qword_28024D5D0, &unk_2683D2CA0);
          v66 = 1;
          v67 = v186;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
          v67 = v186;
          sub_2683CB858();
          sub_2682B52CC();
          v66 = 0;
        }

        __swift_storeEnumTagSinglePayload(v67, v66, 1, v208);
        v68 = v182;
        sub_2683CB858();
        if (__swift_getEnumTagSinglePayload(v68, 1, v65) == 1)
        {
          sub_26812D9E0(v68, &qword_28024D5D0, &unk_2683D2CA0);
          v69 = 1;
          v70 = v180;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
          v71 = v180;
          sub_2683CB858();
          v70 = v71;
          sub_2682B52CC();
          v69 = 0;
        }

        v72 = v208;
        __swift_storeEnumTagSinglePayload(v70, v69, 1, v208);
        v73 = *(v201 + 48);
        sub_2682CC5D8();
        sub_2682CC5D8();
        if (__swift_getEnumTagSinglePayload(v14, 1, v72) == 1)
        {
          sub_26812D9E0(&v14[v73], &qword_28024DB08, qword_2683D5760);
          a3 = 0;
        }

        else if (__swift_getEnumTagSinglePayload(&v14[v73], 1, v208) == 1)
        {
          sub_26812D9E0(v14, &qword_28024DB08, qword_2683D5760);
          a3 = 1;
        }

        else
        {
          v74 = v193;
          v75 = *v192;
          v76 = v208;
          (*v192)(v193, v177, v208);
          v77 = v194;
          v75(v194, &v177[v73], v76);
          a3 = sub_2683CB4C8();
          v78 = *v191;
          (*v191)(v77, v76);
          v79 = v74;
          v14 = v177;
          v78(v79, v76);
          v53 = &qword_28024DB08;
        }

        v61 = v195;
        v62 = v202;
        sub_2682B52CC();
        sub_2682B52CC();
        v60 += v196;
        v51 += v196;
        v50 = v190 + 1;
        v59 = v62 + 1;
        if ((v183 ^ a3))
        {
          goto LABEL_20;
        }
      }

      v50 = v61;
LABEL_20:
      v52 = v170;
      if (v183)
      {
        v54 = v172;
        if (v50 < v172)
        {
          goto LABEL_154;
        }

        if (v172 >= v50)
        {
          v51 = v173;
          goto LABEL_43;
        }

        if (v61 >= v62)
        {
          v80 = v62;
        }

        else
        {
          v80 = v61;
        }

        v81 = v50;
        v82 = v196 * (v80 - 1);
        v83 = v196 * v80;
        v84 = v172 * v196;
        v190 = v81;
        v51 = v173;
        do
        {
          if (v54 != --v81)
          {
            v85 = *v185;
            if (!*v185)
            {
              goto LABEL_161;
            }

            a3 = v85 + v84;
            sub_2682B5320();
            v86 = v84 < v82 || a3 >= v85 + v83;
            if (v86)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v84 != v82)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2682B5320();
            v51 = v173;
          }

          ++v54;
          v82 -= v196;
          v83 -= v196;
          v84 += v196;
        }

        while (v54 < v81);
        v52 = v170;
        v50 = v190;
        v53 = &qword_28024DB08;
      }

      else
      {
        v51 = v173;
      }

      v54 = v172;
    }

LABEL_43:
    v87 = v185[1];
    if (v50 < v87)
    {
      if (__OFSUB__(v50, v54))
      {
        goto LABEL_153;
      }

      if (v50 - v54 < v52)
      {
        break;
      }
    }

LABEL_70:
    if (v50 < v54)
    {
      goto LABEL_152;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E556C(0, *(v51 + 16) + 1, 1, v51);
      v51 = v157;
    }

    a3 = *(v51 + 16);
    v114 = *(v51 + 24);
    v115 = a3 + 1;
    if (a3 >= v114 >> 1)
    {
      sub_2682E556C(v114 > 1, a3 + 1, 1, v51);
      v51 = v158;
    }

    *(v51 + 16) = v115;
    v116 = v51 + 32;
    v117 = (v51 + 32 + 16 * a3);
    *v117 = v172;
    v117[1] = v50;
    v202 = *v171;
    if (!v202)
    {
      goto LABEL_162;
    }

    if (a3)
    {
      while (1)
      {
        v118 = v115 - 1;
        v119 = (v116 + 16 * (v115 - 1));
        v120 = (v51 + 16 * v115);
        if (v115 >= 4)
        {
          break;
        }

        if (v115 == 3)
        {
          v121 = *(v51 + 32);
          v122 = *(v51 + 40);
          v131 = __OFSUB__(v122, v121);
          v123 = v122 - v121;
          v124 = v131;
LABEL_90:
          if (v124)
          {
            goto LABEL_139;
          }

          v136 = *v120;
          v135 = v120[1];
          v137 = __OFSUB__(v135, v136);
          v138 = v135 - v136;
          v139 = v137;
          if (v137)
          {
            goto LABEL_142;
          }

          v140 = v119[1];
          v141 = v140 - *v119;
          if (__OFSUB__(v140, *v119))
          {
            goto LABEL_145;
          }

          if (__OFADD__(v138, v141))
          {
            goto LABEL_147;
          }

          if (v138 + v141 >= v123)
          {
            if (v123 < v141)
            {
              v118 = v115 - 2;
            }

            goto LABEL_112;
          }

          goto LABEL_105;
        }

        if (v115 < 2)
        {
          goto LABEL_141;
        }

        v143 = *v120;
        v142 = v120[1];
        v131 = __OFSUB__(v142, v143);
        v138 = v142 - v143;
        v139 = v131;
LABEL_105:
        if (v139)
        {
          goto LABEL_144;
        }

        v145 = *v119;
        v144 = v119[1];
        v131 = __OFSUB__(v144, v145);
        v146 = v144 - v145;
        if (v131)
        {
          goto LABEL_146;
        }

        if (v146 < v138)
        {
          goto LABEL_119;
        }

LABEL_112:
        if (v118 - 1 >= v115)
        {
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        if (!*v185)
        {
          goto LABEL_159;
        }

        v150 = v51;
        v151 = (v116 + 16 * (v118 - 1));
        v152 = *v151;
        a3 = v116 + 16 * v118;
        v51 = *(a3 + 8);
        v153 = v188;
        sub_2682C85F0((*v185 + *(v184 + 72) * *v151), (*v185 + *(v184 + 72) * *a3), (*v185 + *(v184 + 72) * v51), v202);
        v188 = v153;
        if (v153)
        {
          goto LABEL_121;
        }

        if (v51 < v152)
        {
          goto LABEL_134;
        }

        v154 = v50;
        v155 = *(v150 + 16);
        if (v118 > v155)
        {
          goto LABEL_135;
        }

        *v151 = v152;
        v151[1] = v51;
        if (v118 >= v155)
        {
          goto LABEL_136;
        }

        v115 = v155 - 1;
        memmove((v116 + 16 * v118), (a3 + 16), 16 * (v155 - 1 - v118));
        v51 = v150;
        *(v150 + 16) = v155 - 1;
        v156 = v155 > 2;
        v50 = v154;
        v53 = &qword_28024DB08;
        if (!v156)
        {
          goto LABEL_119;
        }
      }

      v125 = v116 + 16 * v115;
      v126 = *(v125 - 64);
      v127 = *(v125 - 56);
      v131 = __OFSUB__(v127, v126);
      v128 = v127 - v126;
      if (v131)
      {
        goto LABEL_137;
      }

      v130 = *(v125 - 48);
      v129 = *(v125 - 40);
      v131 = __OFSUB__(v129, v130);
      v123 = v129 - v130;
      v124 = v131;
      if (v131)
      {
        goto LABEL_138;
      }

      v132 = v120[1];
      v133 = v132 - *v120;
      if (__OFSUB__(v132, *v120))
      {
        goto LABEL_140;
      }

      v131 = __OFADD__(v123, v133);
      v134 = v123 + v133;
      if (v131)
      {
        goto LABEL_143;
      }

      if (v134 >= v128)
      {
        v148 = *v119;
        v147 = v119[1];
        v131 = __OFSUB__(v147, v148);
        v149 = v147 - v148;
        if (v131)
        {
          goto LABEL_151;
        }

        if (v123 < v149)
        {
          v118 = v115 - 2;
        }

        goto LABEL_112;
      }

      goto LABEL_90;
    }

LABEL_119:
    v49 = v185[1];
    v52 = v170;
    v14 = v177;
    if (v50 >= v49)
    {
      goto LABEL_123;
    }
  }

  v88 = v54 + v52;
  if (__OFADD__(v54, v52))
  {
    goto LABEL_155;
  }

  if (v88 >= v87)
  {
    v88 = v185[1];
  }

  if (v88 < v54)
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (v50 == v88)
  {
    goto LABEL_70;
  }

  v89 = *v185;
  v90 = *(v184 + 72);
  v91 = *v185 + v90 * (v50 - 1);
  v195 = -v90;
  v196 = v89;
  v92 = v54 - v50;
  v174 = v90;
  v93 = v89 + v50 * v90;
  v175 = v88;
LABEL_52:
  v190 = v50;
  v178 = v93;
  v179 = v92;
  v94 = v92;
  v183 = v91;
  v95 = v91;
  while (1)
  {
    v202 = v94;
    sub_2682B5274();
    sub_2682B5274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
    v96 = v199;
    sub_2683CB858();
    v97 = v96;
    v98 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
    if (__swift_getEnumTagSinglePayload(v97, 1, v98) == 1)
    {
      sub_26812D9E0(v97, &qword_28024D5D0, &unk_2683D2CA0);
      v99 = 1;
      v100 = v204;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
      v100 = v204;
      sub_2683CB858();
      sub_2682B52CC();
      v99 = 0;
    }

    __swift_storeEnumTagSinglePayload(v100, v99, 1, v208);
    v101 = v200;
    sub_2683CB858();
    v102 = v53;
    if (__swift_getEnumTagSinglePayload(v101, 1, v98) == 1)
    {
      sub_26812D9E0(v101, &qword_28024D5D0, &unk_2683D2CA0);
      v103 = 1;
      v104 = v198;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
      v104 = v198;
      sub_2683CB858();
      sub_2682B52CC();
      v103 = 0;
    }

    v105 = v208;
    __swift_storeEnumTagSinglePayload(v104, v103, 1, v208);
    v106 = *(v201 + 48);
    v107 = v203;
    sub_2682CC5D8();
    sub_2682CC5D8();
    if (__swift_getEnumTagSinglePayload(v107, 1, v105) == 1)
    {
      v53 = v102;
      sub_26812D9E0(v107 + v106, v102, qword_2683D5760);
      a3 = type metadata accessor for Snippet.Reminder;
      sub_2682B52CC();
      sub_2682B52CC();
LABEL_68:
      v50 = v190 + 1;
      v91 = v183 + v174;
      v92 = v179 - 1;
      v93 = v178 + v174;
      if (v190 + 1 == v175)
      {
        v50 = v175;
        v51 = v173;
        v54 = v172;
        goto LABEL_70;
      }

      goto LABEL_52;
    }

    if (__swift_getEnumTagSinglePayload(v107 + v106, 1, v208) == 1)
    {
      v53 = v102;
      sub_26812D9E0(v107, v102, qword_2683D5760);
      sub_2682B52CC();
      sub_2682B52CC();
    }

    else
    {
      v108 = v193;
      v109 = *v192;
      v110 = v208;
      (*v192)(v193, v203, v208);
      v111 = v194;
      v109(v194, &v203[v106], v110);
      a3 = sub_2683CB4C8();
      v112 = *v191;
      (*v191)(v111, v110);
      v112(v108, v110);
      v53 = &qword_28024DB08;
      sub_2682B52CC();
      sub_2682B52CC();
      if ((a3 & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    v113 = v202;
    if (!v196)
    {
      break;
    }

    a3 = type metadata accessor for Snippet.Reminder;
    sub_2682B5320();
    swift_arrayInitWithTakeFrontToBack();
    sub_2682B5320();
    v95 += v195;
    v93 += v195;
    v86 = __CFADD__(v113, 1);
    v94 = v113 + 1;
    if (v86)
    {
      goto LABEL_68;
    }
  }

  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
}

void sub_2682C5DC4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a5;
  v141 = a4;
  v129 = a1;
  v133 = type metadata accessor for Snippet.Reminder(0);
  v139 = *(v133 - 8);
  v10 = MEMORY[0x28223BE20](v133);
  v130 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v132 = &v119 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v119 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v119 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v127 = &v119 - v23;
  MEMORY[0x28223BE20](v22);
  v126 = &v119 - v26;
  v140 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v138 = *v129;
    if (v138)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_105;
    }

    goto LABEL_148;
  }

  v134 = v25;
  v131 = v24;
  v122 = a6;
  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v137 = v16;
  v124 = v21;
  while (1)
  {
    v30 = v28++;
    if (v28 < v27)
    {
      v136 = v27;
      v125 = v29;
      v31 = *v140;
      v32 = *(v139 + 72);
      v128 = v28;
      v33 = v31 + v32 * v28;
      v34 = v30;
      v35 = v126;
      sub_2682B5274();
      v36 = v127;
      sub_2682B5274();
      LODWORD(v135) = v141(v35, v36);
      if (v7)
      {
LABEL_115:
        sub_2682B52CC();
        sub_2682B52CC();
        goto LABEL_116;
      }

      sub_2682B52CC();
      sub_2682B52CC();
      v123 = v34;
      v37 = v34 + 2;
      v38 = v31 + v32 * (v34 + 2);
      v28 = v128;
      v138 = v32;
      v39 = v136;
      while (1)
      {
        v40 = v28;
        v41 = v37;
        if (v28 + 1 >= v39)
        {
          break;
        }

        sub_2682B5274();
        v42 = v21;
        v43 = v134;
        sub_2682B5274();
        v44 = v141(v42, v43);
        sub_2682B52CC();
        v32 = v138;
        sub_2682B52CC();
        v45 = v135 ^ v44;
        v38 += v32;
        v33 += v32;
        v28 = v40 + 1;
        v37 = v41 + 1;
        v21 = v42;
        v39 = v136;
        if (v45)
        {
          goto LABEL_10;
        }
      }

      v28 = v39;
LABEL_10:
      if (v135)
      {
        v30 = v123;
        if (v28 < v123)
        {
          goto LABEL_142;
        }

        if (v123 > v40)
        {
          v29 = v125;
          v16 = v137;
          goto LABEL_33;
        }

        if (v39 >= v41)
        {
          v46 = v41;
        }

        else
        {
          v46 = v39;
        }

        v47 = v28;
        v48 = v32 * (v46 - 1);
        v49 = v123;
        v50 = v32 * v46;
        v51 = v123 * v32;
        v52 = v47;
        do
        {
          if (v49 != --v47)
          {
            v53 = *v140;
            if (!*v140)
            {
              goto LABEL_146;
            }

            sub_2682B5320();
            v54 = v51 < v48 || v53 + v51 >= (v53 + v50);
            if (v54)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v51 != v48)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2682B5320();
            v32 = v138;
          }

          ++v49;
          v48 -= v32;
          v50 -= v32;
          v51 += v32;
        }

        while (v49 < v47);
        v29 = v125;
        v16 = v137;
        v28 = v52;
      }

      else
      {
        v29 = v125;
        v16 = v137;
      }

      v30 = v123;
    }

LABEL_33:
    v55 = v140[1];
    if (v28 >= v55)
    {
      goto LABEL_41;
    }

    if (__OFSUB__(v28, v30))
    {
      goto LABEL_138;
    }

    if (v28 - v30 >= v122)
    {
      goto LABEL_41;
    }

    v56 = v30 + v122;
    if (__OFADD__(v30, v122))
    {
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      return;
    }

    if (v56 >= v55)
    {
      v56 = v140[1];
    }

    if (v56 < v30)
    {
      goto LABEL_141;
    }

    if (v28 != v56)
    {
      v125 = v29;
      v101 = *v140;
      v102 = *(v139 + 72);
      v103 = *v140 + v102 * (v28 - 1);
      v104 = -v102;
      v123 = v30;
      v105 = v30 - v28;
      v138 = v101;
      v119 = v102;
      v106 = v101 + v28 * v102;
      v120 = v56;
      do
      {
        v128 = v28;
        v121 = v106;
        v135 = v105;
        v136 = v103;
        do
        {
          v107 = v131;
          sub_2682B5274();
          sub_2682B5274();
          v108 = v141(v107, v16);
          if (v7)
          {
            goto LABEL_115;
          }

          v109 = v108;
          sub_2682B52CC();
          sub_2682B52CC();
          if ((v109 & 1) == 0)
          {
            break;
          }

          if (!v138)
          {
            goto LABEL_145;
          }

          sub_2682B5320();
          swift_arrayInitWithTakeFrontToBack();
          sub_2682B5320();
          v103 += v104;
          v106 += v104;
          v54 = __CFADD__(v105++, 1);
        }

        while (!v54);
        v28 = v128 + 1;
        v103 = &v136[v119];
        v105 = v135 - 1;
        v106 = v121 + v119;
      }

      while (v128 + 1 != v120);
      v28 = v120;
      v29 = v125;
      v30 = v123;
    }

LABEL_41:
    if (v28 < v30)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E556C(0, *(v29 + 2) + 1, 1, v29);
      v29 = v110;
    }

    v58 = *(v29 + 2);
    v57 = *(v29 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      sub_2682E556C(v57 > 1, v58 + 1, 1, v29);
      v29 = v111;
    }

    *(v29 + 2) = v59;
    v60 = v29 + 32;
    v61 = &v29[16 * v58 + 32];
    *v61 = v30;
    *(v61 + 1) = v28;
    v138 = *v129;
    if (!v138)
    {
      goto LABEL_147;
    }

    if (v58)
    {
      break;
    }

LABEL_91:
    v27 = v140[1];
    v21 = v124;
    if (v28 >= v27)
    {
      goto LABEL_103;
    }
  }

  v136 = v29 + 32;
  while (1)
  {
    v62 = v59 - 1;
    v63 = &v60[16 * v59 - 16];
    v64 = &v29[16 * v59];
    if (v59 >= 4)
    {
      v69 = &v60[16 * v59];
      v70 = *(v69 - 8);
      v71 = *(v69 - 7);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_125;
      }

      v74 = *(v69 - 6);
      v73 = *(v69 - 5);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_126;
      }

      v76 = *(v64 + 1);
      v77 = v76 - *v64;
      if (__OFSUB__(v76, *v64))
      {
        goto LABEL_128;
      }

      v75 = __OFADD__(v67, v77);
      v78 = v67 + v77;
      if (v75)
      {
        goto LABEL_131;
      }

      if (v78 >= v72)
      {
        v92 = *v63;
        v91 = *(v63 + 1);
        v75 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v75)
        {
          goto LABEL_136;
        }

        if (v67 < v93)
        {
          v62 = v59 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_62;
    }

    if (v59 == 3)
    {
      v65 = *(v29 + 4);
      v66 = *(v29 + 5);
      v75 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      v68 = v75;
LABEL_62:
      if (v68)
      {
        goto LABEL_127;
      }

      v80 = *v64;
      v79 = *(v64 + 1);
      v81 = __OFSUB__(v79, v80);
      v82 = v79 - v80;
      v83 = v81;
      if (v81)
      {
        goto LABEL_130;
      }

      v84 = *(v63 + 1);
      v85 = v84 - *v63;
      if (__OFSUB__(v84, *v63))
      {
        goto LABEL_133;
      }

      if (__OFADD__(v82, v85))
      {
        goto LABEL_135;
      }

      if (v82 + v85 >= v67)
      {
        if (v67 < v85)
        {
          v62 = v59 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_77;
    }

    if (v59 < 2)
    {
      goto LABEL_129;
    }

    v87 = *v64;
    v86 = *(v64 + 1);
    v75 = __OFSUB__(v86, v87);
    v82 = v86 - v87;
    v83 = v75;
LABEL_77:
    if (v83)
    {
      goto LABEL_132;
    }

    v89 = *v63;
    v88 = *(v63 + 1);
    v75 = __OFSUB__(v88, v89);
    v90 = v88 - v89;
    if (v75)
    {
      goto LABEL_134;
    }

    if (v90 < v82)
    {
      goto LABEL_91;
    }

LABEL_84:
    if (v62 - 1 >= v59)
    {
      break;
    }

    if (!*v140)
    {
      goto LABEL_143;
    }

    v94 = &v60[16 * v62 - 16];
    v95 = *v94;
    v96 = v62;
    v97 = &v60[16 * v62];
    v98 = *(v97 + 1);
    sub_2682C9318(*v140 + *(v139 + 72) * *v94, *v140 + *(v139 + 72) * *v97, *v140 + *(v139 + 72) * v98, v138, v141, v142);
    if (v7)
    {
      goto LABEL_116;
    }

    if (v98 < v95)
    {
      goto LABEL_119;
    }

    v7 = v28;
    v99 = v29;
    v29 = *(v29 + 2);
    if (v96 > v29)
    {
      goto LABEL_120;
    }

    *v94 = v95;
    *(v94 + 1) = v98;
    if (v96 >= v29)
    {
      goto LABEL_121;
    }

    v59 = (v29 - 1);
    memmove(v97, v97 + 16, 16 * &v29[-v96 - 1]);
    *(v99 + 2) = v29 - 1;
    v100 = v29 > 2;
    v29 = v99;
    v28 = v7;
    v7 = 0;
    v60 = v136;
    v16 = v137;
    if (!v100)
    {
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  v29 = sub_2682CA6A4(v29);
LABEL_105:
  v112 = v29 + 16;
  v113 = *(v29 + 2);
  while (v113 >= 2)
  {
    if (!*v140)
    {
      goto LABEL_144;
    }

    v114 = v29;
    v115 = &v29[16 * v113];
    v29 = *v115;
    v116 = &v112[2 * v113];
    v117 = v116[1];
    sub_2682C9318(*v140 + *(v139 + 72) * *v115, *v140 + *(v139 + 72) * *v116, *v140 + *(v139 + 72) * v117, v138, v141, v142);
    if (v7)
    {
      break;
    }

    if (v117 < v29)
    {
      goto LABEL_122;
    }

    if (v113 - 2 >= *v112)
    {
      goto LABEL_123;
    }

    *v115 = v29;
    *(v115 + 1) = v117;
    v118 = *v112 - v113;
    if (*v112 < v113)
    {
      goto LABEL_124;
    }

    v113 = *v112 - 1;
    memmove(v116, v116 + 2, 16 * v118);
    *v112 = v113;
    v29 = v114;
  }

LABEL_116:
}

void sub_2682C6878(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v148 = a1;
  v174 = sub_2683CB528();
  v6 = *(v174 - 8);
  v7 = MEMORY[0x28223BE20](v174);
  v169 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v176 = &v142 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v155 = &v142 - v12;
  MEMORY[0x28223BE20](v11);
  v160 = &v142 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70);
  v158 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v151 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v167 = &v142 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v171 = &v142 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v170 = &v142 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v177 = &v142 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v175 = &v142 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v154 = &v142 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v157 = &v142 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v163 = &v142 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v142 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v144 = &v142 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v142 - v38;
  v159 = a3;
  v40 = *(a3 + 8);
  if (v40 < 1)
  {
    v42 = MEMORY[0x277D84F90];
LABEL_121:
    a3 = *v148;
    if (!*v148)
    {
      goto LABEL_163;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_123;
    }

    goto LABEL_157;
  }

  v143 = a4;
  v41 = 0;
  v172 = (v6 + 8);
  v173 = (v6 + 32);
  v42 = MEMORY[0x277D84F90];
  v168 = v14;
  v147 = &v142 - v38;
  v161 = v35;
  while (1)
  {
    v43 = v41;
    v44 = (v41 + 1);
    if (v41 + 1 >= v40)
    {
      v164 = v41 + 1;
    }

    else
    {
      v165 = v40;
      v145 = v42;
      v45 = v39;
      v46 = *v159;
      v47 = *(v158 + 72);
      v48 = v41;
      v49 = *v159 + v47 * v44;
      sub_2682CC640();
      v50 = v144;
      sub_2682CC640();
      v51 = v162;
      LODWORD(v156) = sub_2682BD278(v45, v50);
      v162 = v51;
      if (v51)
      {
        sub_26812D9E0(v50, &qword_280251630, &qword_2683E3D70);
        sub_26812D9E0(v147, &qword_280251630, &qword_2683E3D70);
LABEL_131:

        return;
      }

      v42 = v44;
      sub_26812D9E0(v50, &qword_280251630, &qword_2683E3D70);
      sub_26812D9E0(v147, &qword_280251630, &qword_2683E3D70);
      v146 = v48;
      v52 = (v48 + 2);
      v53 = v46 + v47 * (v48 + 2);
      a3 = v157;
      v166 = v47;
      v54 = v165;
      while (1)
      {
        v55 = v52;
        if ((v42 + 1) >= v54)
        {
          break;
        }

        v164 = v42;
        sub_2682CC640();
        sub_2682CC640();
        sub_2682CC640();

        v56 = v174;
        if (__swift_getEnumTagSinglePayload(a3, 1, v174) == 1)
        {
          sub_2683CB488();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a3, 1, v56);
          v58 = v155;
          v59 = v154;
          if (EnumTagSinglePayload != 1)
          {
            sub_26812D9E0(v157, &qword_28024DB08, qword_2683D5760);
          }
        }

        else
        {
          (*v173)(v160, a3, v56);
          v58 = v155;
          v59 = v154;
        }

        sub_2682CC640();

        if (__swift_getEnumTagSinglePayload(v59, 1, v56) == 1)
        {
          sub_2683CB488();
          if (__swift_getEnumTagSinglePayload(v59, 1, v56) != 1)
          {
            sub_26812D9E0(v59, &qword_28024DB08, qword_2683D5760);
          }
        }

        else
        {
          (*v173)(v58, v59, v56);
        }

        v60 = v160;
        v61 = sub_2683CB4C8();
        v62 = v58;
        v63 = v61;
        v64 = *v172;
        (*v172)(v62, v56);
        v64(v60, v56);
        sub_26812D9E0(v163, &qword_280251630, &qword_2683E3D70);
        sub_26812D9E0(v161, &qword_280251630, &qword_2683E3D70);
        v65 = v156 ^ v63;
        v54 = v165;
        v53 += v166;
        v49 += v166;
        v42 = (v164 + 1);
        v52 = v55 + 1;
        a3 = v157;
        if (v65)
        {
          goto LABEL_19;
        }
      }

      v42 = v54;
LABEL_19:
      v164 = v42;
      if (v156)
      {
        v43 = v146;
        if (v42 < v146)
        {
          goto LABEL_156;
        }

        if (v146 >= v42)
        {
          v42 = v145;
          goto LABEL_42;
        }

        v66 = v54 >= v55 ? v55 : v54;
        a3 = v166 * (v66 - 1);
        v67 = v166 * v66;
        v68 = v146;
        v69 = v146 * v166;
        v70 = v42;
        do
        {
          if (v68 != --v70)
          {
            v71 = *v159;
            if (!*v159)
            {
              goto LABEL_161;
            }

            sub_2682CC5D8();
            v72 = v69 < a3 || v71 + v69 >= v71 + v67;
            if (v72)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v69 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2682CC5D8();
          }

          ++v68;
          a3 -= v166;
          v67 -= v166;
          v69 += v166;
        }

        while (v68 < v70);
        v42 = v145;
      }

      else
      {
        v42 = v145;
      }

      v43 = v146;
    }

LABEL_42:
    v73 = v159[1];
    if (v164 < v73)
    {
      if (__OFSUB__(v164, v43))
      {
        goto LABEL_153;
      }

      if (v164 - v43 < v143)
      {
        break;
      }
    }

LABEL_69:
    if (v164 < v43)
    {
      goto LABEL_152;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E556C(0, *(v42 + 2) + 1, 1, v42);
      v42 = v132;
    }

    v88 = *(v42 + 2);
    v87 = *(v42 + 3);
    v89 = v88 + 1;
    if (v88 >= v87 >> 1)
    {
      sub_2682E556C(v87 > 1, v88 + 1, 1, v42);
      v42 = v133;
    }

    *(v42 + 2) = v89;
    v90 = v42 + 32;
    v91 = &v42[16 * v88 + 32];
    v92 = v164;
    *v91 = v43;
    *(v91 + 1) = v92;
    v166 = *v148;
    if (!v166)
    {
      goto LABEL_162;
    }

    if (v88)
    {
      while (1)
      {
        v93 = v89 - 1;
        v94 = &v90[16 * v89 - 16];
        v95 = &v42[16 * v89];
        if (v89 >= 4)
        {
          break;
        }

        if (v89 == 3)
        {
          v96 = *(v42 + 4);
          v97 = *(v42 + 5);
          v106 = __OFSUB__(v97, v96);
          v98 = v97 - v96;
          v99 = v106;
LABEL_89:
          if (v99)
          {
            goto LABEL_139;
          }

          v111 = *v95;
          v110 = *(v95 + 1);
          v112 = __OFSUB__(v110, v111);
          v113 = v110 - v111;
          v114 = v112;
          if (v112)
          {
            goto LABEL_142;
          }

          v115 = *(v94 + 1);
          v116 = v115 - *v94;
          if (__OFSUB__(v115, *v94))
          {
            goto LABEL_145;
          }

          if (__OFADD__(v113, v116))
          {
            goto LABEL_147;
          }

          if (v113 + v116 >= v98)
          {
            if (v98 < v116)
            {
              v93 = v89 - 2;
            }

            goto LABEL_111;
          }

          goto LABEL_104;
        }

        if (v89 < 2)
        {
          goto LABEL_141;
        }

        v118 = *v95;
        v117 = *(v95 + 1);
        v106 = __OFSUB__(v117, v118);
        v113 = v117 - v118;
        v114 = v106;
LABEL_104:
        if (v114)
        {
          goto LABEL_144;
        }

        v120 = *v94;
        v119 = *(v94 + 1);
        v106 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v106)
        {
          goto LABEL_146;
        }

        if (v121 < v113)
        {
          goto LABEL_118;
        }

LABEL_111:
        if (v93 - 1 >= v89)
        {
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

        if (!*v159)
        {
          goto LABEL_159;
        }

        v125 = &v90[16 * v93 - 16];
        v126 = *v125;
        v127 = v93;
        v128 = v90;
        v129 = &v90[16 * v93];
        a3 = *(v129 + 1);
        v130 = v162;
        sub_2682C98A0(*v159 + *(v158 + 72) * *v125, *v159 + *(v158 + 72) * *v129, *v159 + *(v158 + 72) * a3, v166);
        v162 = v130;
        if (v130)
        {
          goto LABEL_131;
        }

        if (a3 < v126)
        {
          goto LABEL_134;
        }

        v131 = *(v42 + 2);
        if (v127 > v131)
        {
          goto LABEL_135;
        }

        *v125 = v126;
        v125[1] = a3;
        if (v127 >= v131)
        {
          goto LABEL_136;
        }

        v89 = v131 - 1;
        memmove(v129, v129 + 16, 16 * (v131 - 1 - v127));
        *(v42 + 2) = v131 - 1;
        v90 = v128;
        if (v131 <= 2)
        {
          goto LABEL_118;
        }
      }

      v100 = &v90[16 * v89];
      v101 = *(v100 - 8);
      v102 = *(v100 - 7);
      v106 = __OFSUB__(v102, v101);
      v103 = v102 - v101;
      if (v106)
      {
        goto LABEL_137;
      }

      v105 = *(v100 - 6);
      v104 = *(v100 - 5);
      v106 = __OFSUB__(v104, v105);
      v98 = v104 - v105;
      v99 = v106;
      if (v106)
      {
        goto LABEL_138;
      }

      v107 = *(v95 + 1);
      v108 = v107 - *v95;
      if (__OFSUB__(v107, *v95))
      {
        goto LABEL_140;
      }

      v106 = __OFADD__(v98, v108);
      v109 = v98 + v108;
      if (v106)
      {
        goto LABEL_143;
      }

      if (v109 >= v103)
      {
        v123 = *v94;
        v122 = *(v94 + 1);
        v106 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v106)
        {
          goto LABEL_151;
        }

        if (v98 < v124)
        {
          v93 = v89 - 2;
        }

        goto LABEL_111;
      }

      goto LABEL_89;
    }

LABEL_118:
    v40 = v159[1];
    v41 = v164;
    v39 = v147;
    if (v164 >= v40)
    {
      goto LABEL_121;
    }
  }

  if (__OFADD__(v43, v143))
  {
    goto LABEL_154;
  }

  if (v43 + v143 >= v73)
  {
    v74 = v159[1];
  }

  else
  {
    v74 = v43 + v143;
  }

  if (v74 < v43)
  {
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    v42 = sub_2682CA6A4(v42);
LABEL_123:
    v134 = v42 + 16;
    v135 = *(v42 + 2);
    while (v135 >= 2)
    {
      if (!*v159)
      {
        goto LABEL_160;
      }

      v136 = v42;
      v137 = &v42[16 * v135];
      v138 = *v137;
      v42 = &v134[2 * v135];
      v139 = *(v42 + 1);
      v140 = v162;
      sub_2682C98A0(*v159 + *(v158 + 72) * *v137, *v159 + *(v158 + 72) * *v42, *v159 + *(v158 + 72) * v139, a3);
      v162 = v140;
      if (v140)
      {
        break;
      }

      if (v139 < v138)
      {
        goto LABEL_148;
      }

      if (v135 - 2 >= *v134)
      {
        goto LABEL_149;
      }

      *v137 = v138;
      *(v137 + 1) = v139;
      v141 = *v134 - v135;
      if (*v134 < v135)
      {
        goto LABEL_150;
      }

      v135 = *v134 - 1;
      memmove(v42, v42 + 16, 16 * v141);
      *v134 = v135;
      v42 = v136;
    }

    goto LABEL_131;
  }

  if (v164 == v74)
  {
    goto LABEL_69;
  }

  v145 = v42;
  v75 = *v159;
  v76 = *(v158 + 72);
  v77 = *v159 + v76 * (v164 - 1);
  v165 = -v76;
  v146 = v43;
  v78 = v43 - v164;
  v166 = v75;
  v149 = v76;
  v79 = v75 + v164 * v76;
  v80 = v170;
  a3 = v171;
  v150 = v74;
LABEL_52:
  v152 = v79;
  v153 = v78;
  v156 = v77;
  while (1)
  {
    sub_2682CC640();
    sub_2682CC640();
    sub_2682CC640();

    v81 = v174;
    if (__swift_getEnumTagSinglePayload(v80, 1, v174) == 1)
    {
      sub_2683CB488();
      if (__swift_getEnumTagSinglePayload(v80, 1, v81) != 1)
      {
        sub_26812D9E0(v80, &qword_28024DB08, qword_2683D5760);
      }
    }

    else
    {
      (*v173)(v176, v80, v81);
    }

    sub_2682CC640();

    v82 = __swift_getEnumTagSinglePayload(a3, 1, v81);
    v83 = v169;
    if (v82 == 1)
    {
      sub_2683CB488();
      if (__swift_getEnumTagSinglePayload(a3, 1, v81) != 1)
      {
        sub_26812D9E0(a3, &qword_28024DB08, qword_2683D5760);
      }
    }

    else
    {
      (*v173)(v169, a3, v81);
    }

    v84 = v176;
    v85 = sub_2683CB4C8();
    v86 = *v172;
    (*v172)(v83, v81);
    v86(v84, v81);
    sub_26812D9E0(v177, &qword_280251630, &qword_2683E3D70);
    sub_26812D9E0(v175, &qword_280251630, &qword_2683E3D70);
    if ((v85 & 1) == 0)
    {
      v80 = v170;
      a3 = v171;
LABEL_67:
      v77 = v156 + v149;
      v78 = v153 - 1;
      v79 = v152 + v149;
      if (++v164 == v150)
      {
        v164 = v150;
        v42 = v145;
        v43 = v146;
        goto LABEL_69;
      }

      goto LABEL_52;
    }

    if (!v166)
    {
      break;
    }

    sub_2682CC5D8();
    swift_arrayInitWithTakeFrontToBack();
    sub_2682CC5D8();
    v77 += v165;
    v79 += v165;
    v72 = __CFADD__(v78++, 1);
    v80 = v170;
    a3 = v171;
    if (v72)
    {
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
}

void sub_2682C77CC(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_120:
    v104 = *result;
    if (!*result)
    {
      goto LABEL_161;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_122:
      v86 = v6 + 16;
      v87 = *(v6 + 2);
      while (v87 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_158;
        }

        v88 = v6;
        v89 = &v6[16 * v87];
        v6 = *v89;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        v92 = v110;
        sub_2682CA280((*a3 + 112 * *v89), (*a3 + 112 * *v90), (*a3 + 112 * v91), v104);
        v110 = v92;
        if (v92)
        {
          break;
        }

        if (v91 < v6)
        {
          goto LABEL_146;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_147;
        }

        *v89 = v6;
        *(v89 + 1) = v91;
        v93 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_148;
        }

        v87 = *v86 - 1;
        memmove(v90, v90 + 2, 16 * v93);
        *v86 = v87;
        v6 = v88;
      }

LABEL_130:

      return;
    }

LABEL_155:
    v6 = sub_2682CA6A4(v6);
    goto LABEL_122;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    v97 = v5;
    if ((v5 + 1) < v4)
    {
      v9 = *a3;
      memcpy(__dst, (*a3 + 112 * v8), sizeof(__dst));
      memcpy(v109, (v9 + 112 * v7), 0x70uLL);
      v10 = __dst[3];
      v101 = v4;
      if (__dst[3])
      {
        v11 = __dst[2];
      }

      else
      {
        v11 = 0;
        v10 = 0xE000000000000000;
      }

      v12 = v109[3];
      if (v109[3])
      {
        v13 = v109[2];
      }

      else
      {
        v13 = 0;
        v12 = 0xE000000000000000;
      }

      v14 = v11 == v13 && v10 == v12;
      v95 = v6;
      if (v14)
      {
        LODWORD(v104) = 0;
      }

      else
      {
        LODWORD(v104) = sub_2683D0598();
      }

      sub_2682CC640();
      sub_2682CC640();

      sub_26812D9E0(v109, &qword_280251640, &qword_2683E3D80);
      sub_26812D9E0(__dst, &qword_280251640, &qword_2683E3D80);
      v15 = (v9 + 112 * v7 + 224);
      v99 = 112 * v7;
      v16 = 112 * v7 + 112;
      do
      {
        v17 = v8;
        v18 = v16;
        v6 = v8 + 1;
        if ((v8 + 1) >= v101)
        {
          break;
        }

        memcpy(v106, v15, sizeof(v106));
        memcpy(__src, v15 - 112, sizeof(__src));
        v19 = v106[3];
        if (v106[3])
        {
          v20 = v106[2];
        }

        else
        {
          v20 = 0;
          v19 = 0xE000000000000000;
        }

        v21 = __src[3];
        if (__src[3])
        {
          v22 = __src[2];
        }

        else
        {
          v22 = 0;
          v21 = 0xE000000000000000;
        }

        v23 = v20 == v22 && v19 == v21;
        v24 = v23 ? 0 : sub_2683D0598();
        sub_2682CC640();
        sub_2682CC640();

        sub_26812D9E0(__src, &qword_280251640, &qword_2683E3D80);
        sub_26812D9E0(v106, &qword_280251640, &qword_2683E3D80);
        v15 += 112;
        ++v8;
        v16 = v18 + 112;
      }

      while (((v104 ^ v24) & 1) == 0);
      if (v104)
      {
        v7 = v97;
        if (v6 < v97)
        {
          goto LABEL_152;
        }

        v8 = v6;
        if (v97 <= v17)
        {
          v25 = v97;
          v6 = v95;
          v26 = v99;
          do
          {
            if (v25 != v17)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_159;
              }

              memcpy(__src, (v27 + v26), sizeof(__src));
              memmove((v27 + v26), (v27 + v18), 0x70uLL);
              memcpy((v27 + v18), __src, 0x70uLL);
            }

            ++v25;
            v18 -= 112;
            v26 += 112;
          }

          while (v25 < v17--);
        }

        else
        {
          v6 = v95;
        }
      }

      else
      {
        v8 = v6;
        v6 = v95;
        v7 = v97;
      }
    }

    v29 = a3[1];
    if (v8 < v29)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_151;
      }

      if (&v8[-v7] < a4)
      {
        break;
      }
    }

LABEL_68:
    if (v8 < v7)
    {
      goto LABEL_150;
    }

    v104 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E556C(0, *(v6 + 2) + 1, 1, v6);
      v6 = v84;
    }

    v42 = *(v6 + 2);
    v41 = *(v6 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      sub_2682E556C(v41 > 1, v42 + 1, 1, v6);
      v6 = v85;
    }

    *(v6 + 2) = v43;
    v44 = v6 + 32;
    v45 = &v6[16 * v42 + 32];
    *v45 = v97;
    *(v45 + 1) = v8;
    v103 = *result;
    if (!*result)
    {
      goto LABEL_160;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        v47 = &v44[16 * v43 - 16];
        v48 = &v6[16 * v43];
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v49 = *(v6 + 4);
          v50 = *(v6 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_88:
          if (v52)
          {
            goto LABEL_137;
          }

          v64 = *v48;
          v63 = *(v48 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_140;
          }

          v68 = *(v47 + 1);
          v69 = v68 - *v47;
          if (__OFSUB__(v68, *v47))
          {
            goto LABEL_143;
          }

          if (__OFADD__(v66, v69))
          {
            goto LABEL_145;
          }

          if (v66 + v69 >= v51)
          {
            if (v51 < v69)
            {
              v46 = v43 - 2;
            }

            goto LABEL_110;
          }

          goto LABEL_103;
        }

        if (v43 < 2)
        {
          goto LABEL_139;
        }

        v71 = *v48;
        v70 = *(v48 + 1);
        v59 = __OFSUB__(v70, v71);
        v66 = v70 - v71;
        v67 = v59;
LABEL_103:
        if (v67)
        {
          goto LABEL_142;
        }

        v73 = *v47;
        v72 = *(v47 + 1);
        v59 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v59)
        {
          goto LABEL_144;
        }

        if (v74 < v66)
        {
          goto LABEL_117;
        }

LABEL_110:
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        if (!*a3)
        {
          goto LABEL_157;
        }

        v78 = &v44[16 * v46 - 16];
        v79 = *v78;
        v80 = &v44[16 * v46];
        v81 = *(v80 + 1);
        v82 = v110;
        sub_2682CA280((*a3 + 112 * *v78), (*a3 + 112 * *v80), (*a3 + 112 * v81), v103);
        v110 = v82;
        if (v82)
        {
          goto LABEL_130;
        }

        if (v81 < v79)
        {
          goto LABEL_132;
        }

        v83 = *(v6 + 2);
        if (v46 > v83)
        {
          goto LABEL_133;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        if (v46 >= v83)
        {
          goto LABEL_134;
        }

        v43 = v83 - 1;
        memmove(&v44[16 * v46], v80 + 16, 16 * (v83 - 1 - v46));
        *(v6 + 2) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_117;
        }
      }

      v53 = &v44[16 * v43];
      v54 = *(v53 - 8);
      v55 = *(v53 - 7);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_135;
      }

      v58 = *(v53 - 6);
      v57 = *(v53 - 5);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_136;
      }

      v60 = *(v48 + 1);
      v61 = v60 - *v48;
      if (__OFSUB__(v60, *v48))
      {
        goto LABEL_138;
      }

      v59 = __OFADD__(v51, v61);
      v62 = v51 + v61;
      if (v59)
      {
        goto LABEL_141;
      }

      if (v62 >= v56)
      {
        v76 = *v47;
        v75 = *(v47 + 1);
        v59 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v59)
        {
          goto LABEL_149;
        }

        if (v51 < v77)
        {
          v46 = v43 - 2;
        }

        goto LABEL_110;
      }

      goto LABEL_88;
    }

LABEL_117:
    v5 = v104;
    v4 = a3[1];
    if (v104 >= v4)
    {
      goto LABEL_120;
    }
  }

  v30 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_153;
  }

  if (v30 >= v29)
  {
    v30 = a3[1];
  }

  if (v30 < v7)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v8 == v30)
  {
    goto LABEL_68;
  }

  v31 = *a3;
  v32 = (*a3 + 112 * v8);
  v33 = v7 - v8 + 1;
  v98 = v30;
LABEL_50:
  v102 = v32;
  v104 = v8;
  v100 = v33;
  for (i = v33; ; ++i)
  {
    memcpy(__dst, v32, sizeof(__dst));
    memcpy(v109, v32 - 112, 0x70uLL);
    v35 = __dst[3];
    if (__dst[3])
    {
      v36 = __dst[2];
    }

    else
    {
      v36 = 0;
      v35 = 0xE000000000000000;
    }

    v37 = v109[3];
    if (v109[3])
    {
      v38 = v109[2];
    }

    else
    {
      v38 = 0;
      v37 = 0xE000000000000000;
    }

    if (v36 == v38 && v35 == v37)
    {
      sub_2682CC640();
      sub_2682CC640();

      sub_26812D9E0(v109, &qword_280251640, &qword_2683E3D80);
      sub_26812D9E0(__dst, &qword_280251640, &qword_2683E3D80);
LABEL_66:
      v8 = v104 + 1;
      v32 = v102 + 112;
      v33 = v100 - 1;
      if (v104 + 1 == v98)
      {
        v8 = v98;
        v7 = v97;
        goto LABEL_68;
      }

      goto LABEL_50;
    }

    v40 = sub_2683D0598();
    sub_2682CC640();
    sub_2682CC640();

    sub_26812D9E0(v109, &qword_280251640, &qword_2683E3D80);
    sub_26812D9E0(__dst, &qword_280251640, &qword_2683E3D80);
    if ((v40 & 1) == 0)
    {
      goto LABEL_66;
    }

    if (!v31)
    {
      break;
    }

    memcpy(__src, v32, sizeof(__src));
    memcpy(v32, v32 - 112, 0x70uLL);
    memcpy(v32 - 112, __src, 0x70uLL);
    if (!i)
    {
      goto LABEL_66;
    }

    v32 -= 112;
  }

  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
}

uint64_t sub_2682C80F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v60 = type metadata accessor for Snippet.Reminder(0);
  v8 = MEMORY[0x28223BE20](v60);
  v59 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v58 = &v54 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v54 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v54 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  v20 = a2 - a1;
  v21 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v21)
  {
    goto LABEL_73;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_74;
  }

  v24 = v20 / v19;
  v63 = a1;
  v62 = a4;
  v25 = v22 / v19;
  if (v20 / v19 < v22 / v19)
  {
    sub_2683902F8(a1, v20 / v19, a4);
    v59 = (a4 + v24 * v19);
    v61 = v59;
    while (1)
    {
      if (a4 >= v59 || a2 >= a3)
      {
        goto LABEL_71;
      }

      sub_2682B5274();
      sub_2682B5274();
      v27 = *(v60 + 24);
      v28 = *&v17[v27];
      v29 = *&v17[v27 + 8];
      v30 = &v14[v27];
      if (v28 == *v30 && v29 == *(v30 + 1))
      {
        sub_2682B52CC();
        sub_2682B52CC();
      }

      else
      {
        v32 = sub_2683D0598();
        sub_2682B52CC();
        sub_2682B52CC();
        if (v32)
        {
          if (a1 < a2 || a1 >= a2 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v19;
          goto LABEL_40;
        }
      }

      if (a1 < a4 || a1 >= a4 + v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v62 = a4 + v19;
      a4 += v19;
LABEL_40:
      a1 += v19;
      v63 = a1;
    }
  }

  sub_2683902F8(a2, v22 / v19, a4);
  v35 = a2;
  v36 = a4 + v25 * v19;
  v37 = -v19;
  v38 = v36;
LABEL_42:
  v57 = v35;
  v56 = v35 + v37;
  v39 = a3;
  v54 = v38;
  while (1)
  {
    if (v36 <= a4)
    {
      v63 = v57;
      v61 = v38;
      goto LABEL_71;
    }

    if (v57 <= a1)
    {
      break;
    }

    v55 = v38;
    v40 = v36 + v37;
    v41 = v58;
    sub_2682B5274();
    v42 = v59;
    sub_2682B5274();
    v43 = *(v60 + 24);
    v44 = *&v41[v43];
    v45 = *&v41[v43 + 8];
    v46 = &v42[v43];
    if (v44 == *v46 && v45 == *(v46 + 1))
    {
      v48 = 0;
    }

    else
    {
      v48 = sub_2683D0598();
    }

    a3 = v39 + v37;
    sub_2682B52CC();
    sub_2682B52CC();
    if (v48)
    {
      if (v39 < v57 || a3 >= v57)
      {
        v51 = v56;
        swift_arrayInitWithTakeFrontToBack();
        v35 = v51;
        v38 = v55;
      }

      else
      {
        v53 = v55;
        v52 = v56;
        v38 = v55;
        v35 = v56;
        if (v39 != v57)
        {
          swift_arrayInitWithTakeBackToFront();
          v35 = v52;
          v38 = v53;
        }
      }

      goto LABEL_42;
    }

    if (v39 < v36 || a3 >= v36)
    {
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_60;
    }

    v38 = v36 + v37;
    v21 = v36 == v39;
    v39 += v37;
    v36 += v37;
    if (!v21)
    {
      swift_arrayInitWithTakeBackToFront();
LABEL_60:
      v39 = a3;
      v36 = v40;
      v38 = v40;
    }
  }

  v63 = v57;
  v61 = v54;
LABEL_71:
  sub_2682CA6B8(&v63, &v62, &v61);
  return 1;
}

uint64_t sub_2682C85F0(_BYTE *a1, _BYTE *a2, _BYTE *a3, unint64_t a4)
{
  v121 = a4;
  v122 = a3;
  v125 = a2;
  v5 = sub_2683CB528();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v108 = &v103[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v107 = &v103[-v9];
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251618, &qword_2683E3D58);
  v10 = MEMORY[0x28223BE20](v119);
  v112 = &v103[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v103[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v111 = &v103[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v110 = &v103[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v103[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v103[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v109 = &v103[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v103[-v28];
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v103[-v31];
  MEMORY[0x28223BE20](v30);
  v34 = &v103[-v33];
  v126 = type metadata accessor for Snippet.Reminder(0);
  v35 = MEMORY[0x28223BE20](v126);
  v118 = &v103[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x28223BE20](v35);
  v114 = &v103[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v124 = &v103[-v40];
  result = MEMORY[0x28223BE20](v39);
  v120 = &v103[-v42];
  v44 = *(v43 + 72);
  if (!v44)
  {
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    return result;
  }

  v45 = v125 - a1;
  v46 = v125 - a1 == 0x8000000000000000 && v44 == -1;
  if (v46)
  {
    goto LABEL_83;
  }

  v47 = v122 - v125;
  if (v122 - v125 == 0x8000000000000000 && v44 == -1)
  {
    goto LABEL_84;
  }

  v113 = v29;
  v115 = v23;
  v116 = v21;
  v49 = v45 / v44;
  v129 = a1;
  v50 = v121;
  v128 = v121;
  v106 = (v6 + 32);
  v105 = (v6 + 8);
  v51 = v47 / v44;
  v123 = v5;
  v52 = v44;
  if (v45 / v44 < v47 / v44)
  {
    sub_2683902F8(a1, v49, v121);
    v118 = &v50[v49 * v52];
    v127 = v118;
    v104 = v34;
    v117 = v52;
    while (1)
    {
      if (v50 >= v118 || v125 >= v122)
      {
        goto LABEL_81;
      }

      sub_2682B5274();
      v121 = v50;
      sub_2682B5274();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
      v54 = v115;
      sub_2683CB858();
      v55 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
      if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
      {
        sub_26812D9E0(v54, &qword_28024D5D0, &unk_2683D2CA0);
        v56 = 1;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
        sub_2683CB858();
        sub_2682B52CC();
        v56 = 0;
      }

      __swift_storeEnumTagSinglePayload(v34, v56, 1, v123);
      v57 = v116;
      sub_2683CB858();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v55);
      v59 = v117;
      if (EnumTagSinglePayload == 1)
      {
        sub_26812D9E0(v57, &qword_28024D5D0, &unk_2683D2CA0);
        v60 = 1;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
        sub_2683CB858();
        sub_2682B52CC();
        v60 = 0;
      }

      v61 = v123;
      __swift_storeEnumTagSinglePayload(v32, v60, 1, v123);
      v62 = *(v119 + 48);
      sub_2682CC5D8();
      sub_2682CC5D8();
      if (__swift_getEnumTagSinglePayload(v13, 1, v61) == 1)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(&v13[v62], 1, v61) == 1)
      {
        sub_26812D9E0(v13, &qword_28024DB08, qword_2683D5760);
        sub_2682B52CC();
        sub_2682B52CC();
      }

      else
      {
        v64 = *v106;
        v65 = v32;
        v66 = v107;
        (*v106)(v107, v13, v61);
        v67 = a1;
        v68 = v108;
        v64(v108, &v13[v62], v61);
        v69 = sub_2683CB4C8();
        v70 = *v105;
        v71 = v68;
        a1 = v67;
        v59 = v117;
        (*v105)(v71, v61);
        v72 = v66;
        v32 = v65;
        v34 = v104;
        v70(v72, v61);
        sub_2682B52CC();
        sub_2682B52CC();
        if ((v69 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v73 = &v125[v59];
      v74 = a1 < v125 || a1 >= v73;
      v50 = v121;
      if (v74)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v125)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v125 = v73;
LABEL_45:
      a1 += v59;
      v129 = a1;
    }

    sub_26812D9E0(&v13[v62], &qword_28024DB08, qword_2683D5760);
    sub_2682B52CC();
    sub_2682B52CC();
LABEL_24:
    v50 = (v121 + v59);
    if (a1 < v121 || a1 >= v50)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a1 != v121)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v128 = v50;
    goto LABEL_45;
  }

  sub_2683902F8(v125, v47 / v44, v121);
  v75 = &v50[v51 * v52];
  v76 = -v52;
  v77 = v75;
  v117 = -v52;
LABEL_47:
  v78 = v122;
  v115 = v77;
  v120 = &v125[v76];
  while (1)
  {
    if (v75 <= v50)
    {
      v129 = v125;
      v127 = v77;
      goto LABEL_81;
    }

    if (v125 <= a1)
    {
      break;
    }

    v124 = v78;
    v116 = v77;
    v79 = &v75[v76];
    sub_2682B5274();
    sub_2682B5274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
    v80 = v110;
    sub_2683CB858();
    v81 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
    if (__swift_getEnumTagSinglePayload(v80, 1, v81) == 1)
    {
      sub_26812D9E0(v80, &qword_28024D5D0, &unk_2683D2CA0);
      v82 = 1;
      v83 = v111;
      v84 = v113;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
      v84 = v113;
      sub_2683CB858();
      sub_2682B52CC();
      v82 = 0;
      v83 = v111;
    }

    __swift_storeEnumTagSinglePayload(v84, v82, 1, v123);
    sub_2683CB858();
    if (__swift_getEnumTagSinglePayload(v83, 1, v81) == 1)
    {
      sub_26812D9E0(v83, &qword_28024D5D0, &unk_2683D2CA0);
      v85 = 1;
      v86 = v109;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
      v86 = v109;
      sub_2683CB858();
      sub_2682B52CC();
      v85 = 0;
    }

    v87 = v123;
    __swift_storeEnumTagSinglePayload(v86, v85, 1, v123);
    v88 = *(v119 + 48);
    v89 = v112;
    sub_2682CC5D8();
    sub_2682CC5D8();
    if (__swift_getEnumTagSinglePayload(v89, 1, v87) == 1)
    {
      sub_26812D9E0(v89 + v88, &qword_28024DB08, qword_2683D5760);
      v90 = 0;
    }

    else if (__swift_getEnumTagSinglePayload(v89 + v88, 1, v87) == 1)
    {
      sub_26812D9E0(v89, &qword_28024DB08, qword_2683D5760);
      v90 = 1;
    }

    else
    {
      v91 = *v106;
      v92 = v107;
      (*v106)(v107, v112, v87);
      v93 = a1;
      v94 = v108;
      v91(v108, &v112[v88], v87);
      v90 = sub_2683CB4C8();
      v95 = *v105;
      v96 = v94;
      a1 = v93;
      (*v105)(v96, v87);
      v95(v92, v87);
    }

    v76 = v117;
    v97 = v124;
    v122 = &v124[v117];
    sub_2682B52CC();
    sub_2682B52CC();
    v98 = v120;
    v50 = v121;
    if (v90)
    {
      if (v97 < v125 || v122 >= v125)
      {
        swift_arrayInitWithTakeFrontToBack();
        v125 = v98;
        v77 = v116;
      }

      else
      {
        v101 = v116;
        v77 = v116;
        v102 = v125;
        v125 = v120;
        if (v97 != v102)
        {
          swift_arrayInitWithTakeBackToFront();
          v125 = v98;
          v77 = v101;
        }
      }

      goto LABEL_47;
    }

    if (v97 < v75 || v122 >= v75)
    {
      v78 = v122;
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_70;
    }

    v77 = v79;
    v46 = v75 == v97;
    v78 = v122;
    v75 = v79;
    if (!v46)
    {
      v78 = v122;
      swift_arrayInitWithTakeBackToFront();
LABEL_70:
      v75 = v79;
      v77 = v79;
    }
  }

  v129 = v125;
  v127 = v115;
LABEL_81:
  sub_2682CA6B8(&v129, &v128, &v127);
  return 1;
}

uint64_t sub_2682C9318(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v7 = v6;
  v77 = a5;
  v78 = a6;
  v76 = type metadata accessor for Snippet.Reminder(0);
  v12 = MEMORY[0x28223BE20](v76);
  v13 = MEMORY[0x28223BE20](v12);
  v67 = &v65 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v65 - v16;
  result = MEMORY[0x28223BE20](v15);
  v21 = &v65 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  v24 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_66;
  }

  v26 = a2;
  v27 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_67;
  }

  v29 = v24 / v23;
  v81 = a1;
  v80 = a4;
  v30 = v27 / v23;
  if (v24 / v23 >= v27 / v23)
  {
    v70 = v19;
    v71 = a1;
    v44 = v26;
    sub_2683902F8(v26, v27 / v23, a4);
    v45 = v44;
    v72 = a4;
    v46 = a4 + v30 * v23;
    v47 = -v23;
    v48 = v46;
    v69 = -v23;
    v49 = v67;
LABEL_38:
    v50 = a3;
    v51 = v45 + v47;
    v52 = v50;
    v66 = v48;
    v53 = v48;
    v73 = v45;
    while (1)
    {
      if (v46 <= v72)
      {
        v81 = v45;
        v79 = v53;
        goto LABEL_64;
      }

      if (v45 <= v71)
      {
        v81 = v45;
        v64 = v66;
        goto LABEL_63;
      }

      v54 = v52;
      v68 = v53;
      v75 = v46;
      v55 = v46 + v47;
      sub_2682B5274();
      v56 = v70;
      sub_2682B5274();
      v57 = v77(v49, v56);
      if (v7)
      {
        break;
      }

      v58 = v57;
      v74 = 0;
      v59 = v54 + v47;
      sub_2682B52CC();
      sub_2682B52CC();
      if (v58)
      {
        if (v54 < v73 || v59 >= v73)
        {
          swift_arrayInitWithTakeFrontToBack();
          v45 = v51;
          v48 = v68;
          v47 = v69;
          v7 = v74;
          v46 = v75;
          a3 = v59;
        }

        else
        {
          v47 = v69;
          v48 = v68;
          v62 = v51;
          v45 = v51;
          v7 = v74;
          v46 = v75;
          a3 = v59;
          if (v54 != v73)
          {
            v63 = v68;
            swift_arrayInitWithTakeBackToFront();
            v45 = v62;
            v48 = v63;
          }
        }

        goto LABEL_38;
      }

      if (v54 < v75 || v59 >= v75)
      {
        swift_arrayInitWithTakeFrontToBack();
        v52 = v54 + v47;
        v46 = v55;
        v53 = v55;
        v45 = v73;
        v7 = v74;
        v47 = v69;
      }

      else
      {
        v53 = v55;
        v52 = v54 + v47;
        v46 = v55;
        v45 = v73;
        v7 = v74;
        v47 = v69;
        if (v75 != v54)
        {
          swift_arrayInitWithTakeBackToFront();
          v45 = v73;
          v52 = v59;
          v46 = v55;
          v53 = v55;
        }
      }
    }

    sub_2682B52CC();
    sub_2682B52CC();
    v81 = v73;
    v64 = v68;
LABEL_63:
    v79 = v64;
  }

  else
  {
    v75 = a3;
    v31 = v26;
    sub_2683902F8(a1, v24 / v23, a4);
    v32 = v31;
    v74 = a4 + v29 * v23;
    v79 = v74;
    v33 = a4;
    while (v33 < v74 && v32 < v75)
    {
      v35 = v32;
      sub_2682B5274();
      sub_2682B5274();
      v36 = v77(v21, v17);
      if (v6)
      {
        sub_2682B52CC();
        sub_2682B52CC();
        break;
      }

      v37 = v36;
      v38 = v33;
      sub_2682B52CC();
      sub_2682B52CC();
      if (v37)
      {
        v39 = v35;
        v40 = v23;
        v41 = v39 + v23;
        if (a1 < v39 || a1 >= v41)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v32 = v41;
      }

      else
      {
        v33 += v23;
        if (a1 < v38 || a1 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v80 = v38 + v23;
        v32 = v35;
        v40 = v23;
      }

      a1 += v40;
      v81 = a1;
    }
  }

LABEL_64:
  sub_2682CA6B8(&v81, &v80, &v79);
  return 1;
}

uint64_t sub_2682C98A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_2683CB528();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v89 = &v82 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v91 = &v82 - v16;
  MEMORY[0x28223BE20](v15);
  v98 = &v82 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70);
  v19 = MEMORY[0x28223BE20](v18);
  v85 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v87 = &v82 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v86 = &v82 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v88 = &v82 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v82 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v90 = &v82 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v92 = &v82 - v33;
  result = MEMORY[0x28223BE20](v32);
  v97 = &v82 - v35;
  v37 = *(v36 + 72);
  if (!v37)
  {
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v37 == -1)
  {
    goto LABEL_77;
  }

  v84 = v12;
  v96 = result;
  v100 = a2;
  v39 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v37 == -1)
  {
    goto LABEL_78;
  }

  v41 = (a2 - a1) / v37;
  v103 = a1;
  v102 = a4;
  v93 = a3;
  v94 = (v9 + 32);
  v95 = (v9 + 8);
  v42 = v39 / v37;
  if (v41 >= v39 / v37)
  {
    v57 = v100;
    sub_268390468(v100, v39 / v37, a4);
    v58 = v57;
    v99 = a4;
    v59 = a4 + v42 * v37;
    v60 = -v37;
    v61 = v59;
    v62 = v93;
    v63 = v87;
    v98 = v60;
LABEL_45:
    v100 = v58;
    v90 = v61;
    v91 = (v58 + v60);
    v64 = v62;
    v65 = v61;
    while (1)
    {
      if (v59 <= v99)
      {
        v103 = v100;
        v101 = v65;
        goto LABEL_75;
      }

      if (v100 <= a1)
      {
        break;
      }

      v83 = v65;
      v97 = v59;
      v92 = v59 + v60;
      v93 = v64;
      sub_2682CC640();
      sub_2682CC640();
      sub_2682CC640();

      if (__swift_getEnumTagSinglePayload(v63, 1, v8) == 1)
      {
        sub_2683CB488();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v8);
        v67 = v85;
        if (EnumTagSinglePayload != 1)
        {
          sub_26812D9E0(v63, &qword_28024DB08, qword_2683D5760);
        }
      }

      else
      {
        (*v94)(v89, v63, v8);
        v67 = v85;
      }

      sub_2682CC640();

      if (__swift_getEnumTagSinglePayload(v67, 1, v8) == 1)
      {
        v68 = v84;
        sub_2683CB488();
        if (__swift_getEnumTagSinglePayload(v67, 1, v8) != 1)
        {
          sub_26812D9E0(v67, &qword_28024DB08, qword_2683D5760);
        }
      }

      else
      {
        v68 = v84;
        (*v94)(v84, v67, v8);
      }

      v69 = v93;
      v70 = &v98[v93];
      v71 = v89;
      v72 = sub_2683CB4C8();
      v73 = v68;
      v74 = *v95;
      (*v95)(v73, v8);
      v74(v71, v8);
      sub_26812D9E0(v86, &qword_280251630, &qword_2683E3D70);
      sub_26812D9E0(v88, &qword_280251630, &qword_2683E3D70);
      if (v72)
      {
        v79 = v69 < v100 || v70 >= v100;
        v62 = v70;
        if (v79)
        {
          v80 = v91;
          swift_arrayInitWithTakeFrontToBack();
          v58 = v80;
          v61 = v83;
          v63 = v87;
          v59 = v97;
          v60 = v98;
        }

        else
        {
          v61 = v83;
          v58 = v91;
          v63 = v87;
          v59 = v97;
          v60 = v98;
          if (v69 != v100)
          {
            v81 = v91;
            v61 = v83;
            swift_arrayInitWithTakeBackToFront();
            v59 = v97;
            v58 = v81;
          }
        }

        goto LABEL_45;
      }

      v75 = v69 < v97 || v70 >= v97;
      v76 = v70;
      if (v75)
      {
        v77 = v92;
        swift_arrayInitWithTakeFrontToBack();
        v64 = v76;
        v59 = v77;
        v65 = v77;
        v63 = v87;
        v60 = v98;
        v61 = v90;
      }

      else
      {
        v65 = v92;
        v64 = v70;
        v59 = v92;
        v63 = v87;
        v60 = v98;
        v61 = v90;
        if (v97 != v69)
        {
          v78 = v92;
          swift_arrayInitWithTakeBackToFront();
          v64 = v76;
          v59 = v78;
          v65 = v78;
        }
      }
    }

    v103 = v100;
    v101 = v61;
  }

  else
  {
    sub_268390468(a1, (a2 - a1) / v37, a4);
    v88 = v37;
    v89 = (a4 + v41 * v37);
    v101 = v89;
    v43 = v100;
    while (a4 < v89 && v43 < v93)
    {
      v100 = v43;
      sub_2682CC640();
      v99 = a4;
      sub_2682CC640();
      v45 = v90;
      sub_2682CC640();

      if (__swift_getEnumTagSinglePayload(v45, 1, v8) == 1)
      {
        sub_2683CB488();
        if (__swift_getEnumTagSinglePayload(v45, 1, v8) != 1)
        {
          sub_26812D9E0(v45, &qword_28024DB08, qword_2683D5760);
        }
      }

      else
      {
        (*v94)(v98, v45, v8);
      }

      sub_2682CC640();

      v46 = __swift_getEnumTagSinglePayload(v29, 1, v8);
      v47 = v99;
      if (v46 == 1)
      {
        v48 = v91;
        sub_2683CB488();
        if (__swift_getEnumTagSinglePayload(v29, 1, v8) != 1)
        {
          sub_26812D9E0(v29, &qword_28024DB08, qword_2683D5760);
        }
      }

      else
      {
        v48 = v91;
        (*v94)(v91, v29, v8);
      }

      v49 = v98;
      v50 = sub_2683CB4C8();
      v51 = v48;
      v52 = *v95;
      (*v95)(v51, v8);
      v52(v49, v8);
      sub_26812D9E0(v92, &qword_280251630, &qword_2683E3D70);
      sub_26812D9E0(v97, &qword_280251630, &qword_2683E3D70);
      if (v50)
      {
        v53 = v88;
        v54 = v100 + v88;
        v55 = a1 < v100 || a1 >= v54;
        a4 = v47;
        if (v55)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v100)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v43 = v54;
      }

      else
      {
        v53 = v88;
        a4 = v47 + v88;
        if (a1 < v47 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v47)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v102 = a4;
        v43 = v100;
      }

      a1 += v53;
      v103 = a1;
    }
  }

LABEL_75:
  sub_2682CA798(&v103, &v102, &v101);
  return 1;
}

uint64_t sub_2682CA280(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 112;
  v9 = (a3 - a2) / 112;
  if (v8 < v9)
  {
    sub_26839047C(a1, (a2 - a1) / 112, a4);
    v10 = &v4[112 * v8];
    for (i = v10; ; v10 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_59;
      }

      memcpy(__dst, v6, sizeof(__dst));
      memcpy(v36, v4, 0x70uLL);
      v12 = __dst[3];
      if (__dst[3])
      {
        v13 = __dst[2];
      }

      else
      {
        v13 = 0;
        v12 = 0xE000000000000000;
      }

      v14 = v36[3];
      if (v36[3])
      {
        v15 = v36[2];
      }

      else
      {
        v15 = 0;
        v14 = 0xE000000000000000;
      }

      if (v13 == v15 && v12 == v14)
      {
        sub_2682CC640();
        sub_2682CC640();

        sub_26812D9E0(v36, &qword_280251640, &qword_2683E3D80);
        sub_26812D9E0(__dst, &qword_280251640, &qword_2683E3D80);
      }

      else
      {
        v17 = sub_2683D0598();
        sub_2682CC640();
        sub_2682CC640();

        sub_26812D9E0(v36, &qword_280251640, &qword_2683E3D80);
        sub_26812D9E0(__dst, &qword_280251640, &qword_2683E3D80);
        if (v17)
        {
          v18 = v6;
          v19 = v7 == v6;
          v6 += 112;
          goto LABEL_21;
        }
      }

      v18 = v4;
      v19 = v7 == v4;
      v4 += 112;
LABEL_21:
      if (!v19)
      {
        memmove(v7, v18, 0x70uLL);
      }

      v7 += 112;
    }
  }

  sub_26839047C(a2, (a3 - a2) / 112, a4);
  v10 = &v4[112 * v9];
  v33 = v7;
LABEL_25:
  i = v6 - 112;
  v5 -= 112;
  v34 = v6;
  while (v10 > v4 && v6 > v7)
  {
    memcpy(__dst, v10 - 112, sizeof(__dst));
    memcpy(v36, i, 0x70uLL);
    v21 = __dst[3];
    if (__dst[3])
    {
      v22 = __dst[2];
    }

    else
    {
      v22 = 0;
      v21 = 0xE000000000000000;
    }

    v23 = v36[3];
    if (v36[3])
    {
      v24 = v36[2];
    }

    else
    {
      v24 = 0;
      v23 = 0xE000000000000000;
    }

    if (v22 == v24 && v21 == v23)
    {
      v26 = 0;
    }

    else
    {
      v26 = sub_2683D0598();
    }

    sub_2682CC640();
    sub_2682CC640();

    sub_26812D9E0(v36, &qword_280251640, &qword_2683E3D80);
    sub_26812D9E0(__dst, &qword_280251640, &qword_2683E3D80);
    v27 = v5 + 112;
    if (v26)
    {
      v7 = v33;
      v29 = v27 < v34 || v5 >= v34;
      if (!v29 && v27 == v34)
      {
        v6 = i;
      }

      else
      {
        v6 = i;
        memmove(v5, i, 0x70uLL);
      }

      goto LABEL_25;
    }

    v28 = v27 < v10 || v5 >= v10;
    v7 = v33;
    v6 = v34;
    if (v28 || v10 != v27)
    {
      memmove(v5, v10 - 112, 0x70uLL);
    }

    v5 -= 112;
    v10 -= 112;
  }

LABEL_59:
  v30 = (v10 - v4) / 112;
  if (v6 != v4 || v6 >= &v4[112 * v30])
  {
    memmove(v6, v4, 112 * v30);
  }

  return 1;
}

uint64_t sub_2682CA6B8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Snippet.Reminder(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_2682CA798(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2682CA884(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251620, &qword_2683E3D60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_2682CA984()
{
  OUTLINED_FUNCTION_80_1();
  if (v1)
  {
    v4 = sub_2683D00A8();
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *(v3 + 16);
    if (!v4)
    {
LABEL_13:
      OUTLINED_FUNCTION_9_0();
      return;
    }
  }

  if (v0)
  {
    v5 = sub_268229348();
    if (v5 > v2)
    {
      __break(1u);
    }

    else
    {
      if (!v1)
      {
        v6 = sub_268129504(0, &qword_280253310, 0x277CD4220);
        OUTLINED_FUNCTION_116_1(v6);
        goto LABEL_13;
      }

      if (v4 >= 1)
      {
        v25 = v5;
        sub_2682CC6F4(&qword_28024E020);
        do
        {
          v7 = OUTLINED_FUNCTION_19_2();
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
          v17 = OUTLINED_FUNCTION_81_1(v9, v10, v11, v12, v13, v14, v15, v16, v24, v25, v26[0]);
          v20 = sub_2683ABCD0(v17, v18, v19);
          v22 = *v21;
          (v20)(v26, 0);
          OUTLINED_FUNCTION_112_1();
        }

        while (!v23);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_2682CAAC4()
{
  OUTLINED_FUNCTION_80_1();
  if (v1)
  {
    v4 = sub_2683D00A8();
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *(v3 + 16);
    if (!v4)
    {
LABEL_13:
      OUTLINED_FUNCTION_9_0();
      return;
    }
  }

  if (v0)
  {
    v5 = sub_268229348();
    if (v5 > v2)
    {
      __break(1u);
    }

    else
    {
      if (!v1)
      {
        v6 = sub_268129504(0, &qword_28024E7E0, 0x277D471A8);
        OUTLINED_FUNCTION_116_1(v6);
        goto LABEL_13;
      }

      if (v4 >= 1)
      {
        v25 = v5;
        sub_2682CC6F4(&qword_28024E7F0);
        do
        {
          v7 = OUTLINED_FUNCTION_19_2();
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
          v17 = OUTLINED_FUNCTION_81_1(v9, v10, v11, v12, v13, v14, v15, v16, v24, v25, v26[0]);
          v20 = sub_2683ABDEC(v17, v18, v19);
          v22 = *v21;
          (v20)(v26, 0);
          OUTLINED_FUNCTION_112_1();
        }

        while (!v23);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2682CAC04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_2683D00A8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_268229348();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_268129504(0, &qword_28024D350, 0x277CD3E00);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2682CC6F4(&unk_2802515E0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515D8, &unk_2683E6500);
          v9 = sub_2683ABCD0(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2682CAD88(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2682CAEE4()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    OUTLINED_FUNCTION_29_0();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v19 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      v18 = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2682CB02C(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70);
  v32 = *(v35 - 8);
  v8 = MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v33 = &v28 - v11;
  v37 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
    v19 = 0;
    a3 = 0;
LABEL_22:
    *a1 = v37;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v19;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = -1 << *(v13 - 32);
    v30 = a1;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v15) >> 6;
    v31 = a3;
    while (1)
    {
      if (v18 >= a3)
      {
        goto LABEL_25;
      }

      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        while (1)
        {
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v22 >= v20)
          {
            v17 = 0;
            a3 = v18;
            goto LABEL_20;
          }

          v17 = *(v13 + 8 * v22);
          ++v19;
          if (v17)
          {
            v36 = a2;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v36 = a2;
      v22 = v19;
LABEL_16:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v23 | (v22 << 6);
      v25 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
      v26 = v34;
      sub_2682CC640();
      *&v26[*(v35 + 48)] = *(*(v25 + 56) + 8 * v24);
      sub_2682CC5D8();
      v27 = v36;
      sub_2682CC5D8();
      a3 = v31;
      if (v21 == v31)
      {
        break;
      }

      a2 = v27 + *(v32 + 72);

      v18 = v21;
      v19 = v22;
    }

    v19 = v22;
LABEL_20:
    v15 = v29;
    a1 = v30;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2682CB2F8(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v11 = 0;
    v8 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v11;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v11 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v19 = -1 << *(a4 + 32);
    v20 = result;
    v10 = 0;
    v11 = 0;
    v12 = (63 - v5) >> 6;
    while (1)
    {
      if (v10 >= v8)
      {
        goto LABEL_24;
      }

      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            v7 = 0;
            v8 = v10;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v14);
          ++v11;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = v11;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v14 << 6);
      v17 = (*(a4 + 48) + 104 * v16);
      memcpy(__dst, v17, sizeof(__dst));
      v18 = *(*(a4 + 56) + 8 * v16);
      memcpy(__src, v17, 0x61uLL);
      memcpy(v9, __src, 0x68uLL);
      v9[13] = v18;
      if (v13 == v8)
      {
        break;
      }

      v9 += 14;
      sub_2682CC640();

      v10 = v13;
      v11 = v14;
    }

    sub_2682CC640();

    v11 = v14;
LABEL_19:
    v5 = v19;
    result = v20;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_2682CB4DC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024EC68, &unk_2683E3470);
    sub_2682C22DC(v4);
    OUTLINED_FUNCTION_74_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682CB56C()
{
  result = qword_280251480;
  if (!qword_280251480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251480);
  }

  return result;
}

unint64_t sub_2682CB5C0()
{
  result = qword_280251488;
  if (!qword_280251488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251488);
  }

  return result;
}

unint64_t sub_2682CB614()
{
  result = qword_280251498;
  if (!qword_280251498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251498);
  }

  return result;
}

unint64_t sub_2682CB668()
{
  result = qword_2802514B8;
  if (!qword_2802514B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802514B8);
  }

  return result;
}

unint64_t sub_2682CB6BC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024ED38, &unk_2683E3430);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682CB724(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28024E790, &unk_2683D8DD0);
    sub_2682CB7E8(&unk_2802514E0);
    sub_2682CB7E8(&unk_2802514E8);
    result = OUTLINED_FUNCTION_120_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682CB7E8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024ED40, &qword_2683DA168);
    v4();
    OUTLINED_FUNCTION_74_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682CB854(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D598, &unk_2683D2C20);
    sub_2682CB6BC(&unk_2802514C8);
    sub_2682CB6BC(&unk_2802514D0);
    result = OUTLINED_FUNCTION_120_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682CB904()
{
  result = qword_280251508;
  if (!qword_280251508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251508);
  }

  return result;
}

void sub_2682CBA58(uint64_t a1)
{
  sub_2682CBC88(319, &qword_28024ECF8, type metadata accessor for Snippet.ReminderSearchResult.Section, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Snippet.SectionHeading(319);
    if (v2 <= 0x3F)
    {
      sub_2682CBB6C(319, &qword_280251538, &qword_28024ED38);
      if (v3 <= 0x3F)
      {
        sub_2682CBB6C(319, &qword_280251540, &qword_28024ED40);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2682CBB6C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_82_2(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    v6 = sub_2683CB888();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2682CBBE4(uint64_t a1)
{
  sub_2682CBC88(319, &qword_28024ECE8, type metadata accessor for Snippet.SectionHeading, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2682CBC88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2682CBCF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2682CBD38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

_BYTE *_s14descr2878F8F29V20ReminderSearchResultV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2682CBE84(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2682CBF70(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2682CC020()
{
  result = qword_280251558;
  if (!qword_280251558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251558);
  }

  return result;
}

unint64_t sub_2682CC078()
{
  result = qword_280251560;
  if (!qword_280251560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251560);
  }

  return result;
}

unint64_t sub_2682CC0D0()
{
  result = qword_280251568;
  if (!qword_280251568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251568);
  }

  return result;
}

unint64_t sub_2682CC128()
{
  result = qword_280251570;
  if (!qword_280251570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251570);
  }

  return result;
}

unint64_t sub_2682CC180()
{
  result = qword_280251578;
  if (!qword_280251578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251578);
  }

  return result;
}

unint64_t sub_2682CC1D8()
{
  result = qword_280251580;
  if (!qword_280251580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251580);
  }

  return result;
}

unint64_t sub_2682CC230()
{
  result = qword_280251588;
  if (!qword_280251588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251588);
  }

  return result;
}

unint64_t sub_2682CC288()
{
  result = qword_280251590;
  if (!qword_280251590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251590);
  }

  return result;
}

unint64_t sub_2682CC2E0()
{
  result = qword_280251598;
  if (!qword_280251598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251598);
  }

  return result;
}

unint64_t sub_2682CC338()
{
  result = qword_2802515A0;
  if (!qword_2802515A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802515A0);
  }

  return result;
}

unint64_t sub_2682CC390()
{
  result = qword_2802515A8;
  if (!qword_2802515A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802515A8);
  }

  return result;
}

unint64_t sub_2682CC3E8()
{
  result = qword_2802515B0;
  if (!qword_2802515B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802515B0);
  }

  return result;
}

unint64_t sub_2682CC440()
{
  result = qword_2802515B8;
  if (!qword_2802515B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802515B8);
  }

  return result;
}

unint64_t sub_2682CC498()
{
  result = qword_2802515C0;
  if (!qword_2802515C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802515C0);
  }

  return result;
}

unint64_t sub_2682CC4F0()
{
  result = qword_2802515C8;
  if (!qword_2802515C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802515C8);
  }

  return result;
}

uint64_t sub_2682CC544()
{
  OUTLINED_FUNCTION_24_4();
  v2 = sub_2683CB528();
  OUTLINED_FUNCTION_23(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2682BCF10(v0, v4);
}

uint64_t sub_2682CC5AC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_26817370C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2682CC5D8()
{
  OUTLINED_FUNCTION_36_2();
  v4 = OUTLINED_FUNCTION_82_2(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_1();
  v6 = OUTLINED_FUNCTION_9_0();
  v7(v6);
  return v0;
}

uint64_t sub_2682CC640()
{
  OUTLINED_FUNCTION_36_2();
  v4 = OUTLINED_FUNCTION_82_2(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_1();
  v6 = OUTLINED_FUNCTION_9_0();
  v7(v6);
  return v0;
}

unint64_t sub_2682CC6A8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    sub_268129504(255, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682CC6F4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_62_1(uint64_t a1)
{

  return sub_2683CB838();
}

uint64_t OUTLINED_FUNCTION_88_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_89_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_115_1(uint64_t a1)
{

  return sub_2683D0418();
}

uint64_t OUTLINED_FUNCTION_116_1(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_117_1(uint64_t a1)
{

  return sub_2683D04C8();
}

uint64_t OUTLINED_FUNCTION_120_1()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_121_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2683D0718();
}

void sub_2682CCDDC()
{
  OUTLINED_FUNCTION_30_0();
  v96 = v0;
  v97 = v1;
  v3 = v2;
  sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  v93 = v5;
  v94 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251670, &unk_2683E3DD0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v93 - v10;
  v12 = sub_2683CC748();
  OUTLINED_FUNCTION_0_3();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v93 - v19;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  v99 = v3;
  sub_2683CC9E8();
  v21 = sub_2683CC738();
  v23 = v22;
  v24 = *(v14 + 8);
  v24(v20, v12);
  v25 = sub_2681E290C(v21, v23);
  switch(v25)
  {
    case 1:
    case 4:
    case 7:
      v26 = sub_2681E27F8(v25);
      v28 = v27;
      sub_26816E7C0();
      v29 = swift_allocError();
      *v30 = v26;
      *(v30 + 8) = v28;
      *(v30 + 16) = 1;
      *v11 = v29;
      v11[8] = 0;
      v31 = *MEMORY[0x277D5BC30];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251678, &unk_2683E3DE0);
      OUTLINED_FUNCTION_1();
      (*(v32 + 104))(v11, v31);
      v33 = v29;
      sub_2682CD484();
      sub_2683CBF38();
      sub_26812D9E0(v11, &qword_280251670, &unk_2683E3DD0);
      v34 = v29;
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_25_8();
      sub_2682CDF4C();
      OUTLINED_FUNCTION_23_19();
      OUTLINED_FUNCTION_37_8();
      OUTLINED_FUNCTION_36_12();
      v73 = OUTLINED_FUNCTION_35_10();
      OUTLINED_FUNCTION_23_8(v73);
      LOBYTE(v122) = 2;
      OUTLINED_FUNCTION_42_4();
      OUTLINED_FUNCTION_22_6();
      sub_268189DA8(&v122, v74, v75, v76, v77, v78, v79, v80, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
      v81 = OUTLINED_FUNCTION_8_10();
      v82(v81);
      OUTLINED_FUNCTION_38_10();
      OUTLINED_FUNCTION_31_4();
      v43 = &qword_28024E130;
      v44 = &qword_2683E3DF0;
      goto LABEL_10;
    case 3:
      OUTLINED_FUNCTION_25_8();
      sub_2682CDCEC();
      OUTLINED_FUNCTION_23_19();
      OUTLINED_FUNCTION_37_8();
      OUTLINED_FUNCTION_36_12();
      v45 = OUTLINED_FUNCTION_35_10();
      OUTLINED_FUNCTION_23_8(v45);
      LOBYTE(v122) = 3;
      OUTLINED_FUNCTION_42_4();
      OUTLINED_FUNCTION_22_6();
      sub_268189E40(&v122, v46, v47, v48, v49, v50, v51, v52, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
      v53 = OUTLINED_FUNCTION_8_10();
      v54(v53);
      OUTLINED_FUNCTION_38_10();
      OUTLINED_FUNCTION_31_4();
      v43 = &qword_28024E110;
      v44 = &qword_2683D6270;
      goto LABEL_10;
    case 5:
      OUTLINED_FUNCTION_25_8();
      sub_2682CE1AC();
      OUTLINED_FUNCTION_23_19();
      OUTLINED_FUNCTION_37_8();
      OUTLINED_FUNCTION_36_12();
      v55 = OUTLINED_FUNCTION_35_10();
      OUTLINED_FUNCTION_23_8(v55);
      LOBYTE(v122) = 5;
      OUTLINED_FUNCTION_42_4();
      OUTLINED_FUNCTION_22_6();
      sub_268189D10(&v122, v56, v57, v58, v59, v60, v61, v62, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
      v63 = OUTLINED_FUNCTION_8_10();
      v64(v63);
      OUTLINED_FUNCTION_38_10();
      OUTLINED_FUNCTION_31_4();
      v43 = &qword_28024E150;
      v44 = &qword_2683D62A0;
      goto LABEL_10;
    case 6:
      v35 = v96;
      v36 = *(v96 + 120);
      v37 = *(v96 + 136);

      sub_2683CB588();
      v38 = sub_2683CB548();
      v40 = v39;
      (*(v93 + 8))(v8, v94);
      sub_268134034(v35 + 80, &v130);
      sub_26813C7E0(v35 + 144, &v135);
      sub_268134034(v35 + 192, &v141);
      v41 = v99;
      v146 = sub_2683CC9B8();
      v123 = &unk_2683E3E10;
      v124 = v36;
      v125 = sub_2682CE520;
      v126 = 0;
      v127 = v37;
      v128 = v38;
      v129 = v40;
      LOBYTE(v122) = 6;
      __swift_project_boxed_opaque_existential_1((v35 + 232), *(v35 + 256));

      v42 = sub_268189ED8(&v122);
      v42(v97, v41);

      v43 = &qword_28024E0F0;
      v44 = &qword_2683D6258;
      goto LABEL_10;
    case 8:
      sub_2683CC9E8();
      v65 = sub_2683CC738();
      v67 = v66;
      v24(v18, v12);
      sub_26812C6B8();
      v68 = swift_allocError();
      *v69 = v65;
      *(v69 + 8) = v67;
      *(v69 + 16) = 0;
      *(v69 + 24) = 0;
      *(v69 + 32) = 1;
      *v11 = v68;
      v11[8] = 0;
      v70 = *MEMORY[0x277D5BC30];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251678, &unk_2683E3DE0);
      OUTLINED_FUNCTION_1();
      (*(v71 + 104))(v11, v70);
      v72 = v68;
      sub_2682CD484();
      sub_2683CBF38();
      sub_26812D9E0(v11, &qword_280251670, &unk_2683E3DD0);
      v34 = v68;
LABEL_7:

      goto LABEL_11;
    default:
      OUTLINED_FUNCTION_25_8();
      sub_2682CDA78();
      OUTLINED_FUNCTION_23_19();
      OUTLINED_FUNCTION_37_8();
      OUTLINED_FUNCTION_36_12();
      v83 = OUTLINED_FUNCTION_35_10();
      OUTLINED_FUNCTION_23_8(v83);
      LOBYTE(v122) = 0;
      OUTLINED_FUNCTION_42_4();
      OUTLINED_FUNCTION_22_6();
      sub_268189F98(&v122, v84, v85, v86, v87, v88, v89, v90, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
      v91 = OUTLINED_FUNCTION_8_10();
      v92(v91);
      OUTLINED_FUNCTION_38_10();
      OUTLINED_FUNCTION_31_4();
      v43 = &qword_28024E0D0;
      v44 = &qword_2683D6240;
LABEL_10:
      sub_26812D9E0(&v122, v43, v44);
LABEL_11:
      OUTLINED_FUNCTION_29_0();
      return;
  }
}

unint64_t sub_2682CD484()
{
  result = qword_280251680;
  if (!qword_280251680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280251670, &unk_2683E3DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251680);
  }

  return result;
}

BOOL sub_2682CD4E8(uint64_t a1)
{
  sub_26813A144(a1, v3);
  v1 = v3[56] == 0;
  sub_26813A1A0(v3);
  return v1;
}

id sub_2682CD548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2683CC748();
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_3();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  v11 = sub_2683CC9C8();
  v12 = *v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for SimpleDisambiguationItem(0, AssociatedTypeWitness, v14, v15);
  v22[3] = AssociatedTypeWitness;
  __swift_allocate_boxed_opaque_existential_0(v22);
  OUTLINED_FUNCTION_23_0();
  (*(v16 + 16))();
  sub_2683CC9E8();
  v17 = sub_2683CC728();
  v19 = v18;
  (*(v6 + 8))(v10, v4);
  v20 = sub_2682D3714(v12, v22, v17, v19 & 1);

  __swift_destroy_boxed_opaque_existential_0(v22);
  return v20;
}

uint64_t sub_2682CD700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_2682CD72C);
}

void sub_2682CD72C()
{
  v1 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9B8();
  sub_2683CF258();
  v3 = v2;

  v0[10] = v3;
  v5 = *(*(v1 + 24) + 24) + **(*(v1 + 24) + 24);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_26813A870;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_2682CD8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2681342AC;

  return sub_2682CD700(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_2682CD9AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_26813A9F4();
}

void sub_2682CDA78()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v19 = sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  sub_2681E5684(v0, v21);
  OUTLINED_FUNCTION_33_11();
  v9 = swift_allocObject();
  memcpy((v9 + 16), v21, 0x118uLL);
  OUTLINED_FUNCTION_69_0();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2682CF644;
  *(v10 + 24) = v9;
  OUTLINED_FUNCTION_69_0();
  v11 = swift_allocObject();
  *(v11 + 16) = &unk_2683E3E38;
  *(v11 + 24) = v10;
  v12 = *__swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  v21[3] = type metadata accessor for AddTasksCATPatternsExecutor(0);
  v21[4] = &off_28790AE38;
  v21[0] = v12;
  sub_268134034(v21, v20);
  OUTLINED_FUNCTION_20_2();
  v13 = swift_allocObject();
  sub_268128148(v20, v13 + 16);

  __swift_destroy_boxed_opaque_existential_0(v21);
  v14 = v0[15];
  v15 = v0[16];

  sub_2683CB588();
  v16 = sub_2683CB548();
  v18 = v17;
  (*(v4 + 8))(v8, v19);
  *v2 = &unk_2878FB4F0;
  *(v2 + 8) = &unk_2683E3E48;
  *(v2 + 16) = v11;
  *(v2 + 24) = &unk_2683E3E58;
  *(v2 + 32) = v13;
  *(v2 + 40) = &unk_2683E3E68;
  *(v2 + 48) = v14;
  *(v2 + 56) = sub_2682CEBEC;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0;
  *(v2 + 120) = &unk_2683E3E78;
  *(v2 + 128) = v15;
  *(v2 + 136) = 1;
  *(v2 + 137) = v21[0];
  *(v2 + 140) = *(v21 + 3);
  *(v2 + 144) = sub_268377B24;
  *(v2 + 152) = 0;
  *(v2 + 160) = v16;
  *(v2 + 168) = v18;
  OUTLINED_FUNCTION_29_0();
}

void sub_2682CDCEC()
{
  OUTLINED_FUNCTION_30_0();
  v4 = v3;
  sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBE0 != -1)
  {
    swift_once();
  }

  *(v9 + 32) = sub_2683CD158();
  *(v9 + 40) = v10;
  v11 = OUTLINED_FUNCTION_25_17();
  OUTLINED_FUNCTION_34_12(v11, &off_28790AE38);
  OUTLINED_FUNCTION_20_2();
  v12 = swift_allocObject();
  sub_268128148(&v19, v12 + 16);

  __swift_destroy_boxed_opaque_existential_0(&v20);
  v13 = *(v0 + 120);
  v14 = qword_28024C8A8;

  if (v14 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21_7(&qword_28027C870);

  sub_2683CB588();
  sub_2683CB548();
  v15 = OUTLINED_FUNCTION_19_8();
  v16(v15);
  *v4 = v9;
  v4[1] = &unk_2683E3E80;
  v4[2] = 0;
  v4[3] = &unk_2683E3E90;
  v4[4] = v12;
  v4[5] = &unk_2683E3EA0;
  v4[6] = v13;
  v4[7] = sub_2682CE688;
  v4[8] = 0;
  v4[9] = sub_2682CE70C;
  v4[10] = 0;
  v4[11] = v18;
  v4[12] = v2;
  v4[13] = v17;
  OUTLINED_FUNCTION_19_10();
  v4[18] = sub_268377B3C;
  v4[19] = 0;
  v4[20] = v8;
  v4[21] = v1;
  OUTLINED_FUNCTION_29_0();
}

void sub_2682CDF4C()
{
  OUTLINED_FUNCTION_30_0();
  v4 = v3;
  sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBC0 != -1)
  {
    swift_once();
  }

  *(v9 + 32) = sub_2683CD158();
  *(v9 + 40) = v10;
  v11 = OUTLINED_FUNCTION_25_17();
  OUTLINED_FUNCTION_34_12(v11, &off_28790AE38);
  OUTLINED_FUNCTION_20_2();
  v12 = swift_allocObject();
  sub_268128148(&v19, v12 + 16);

  __swift_destroy_boxed_opaque_existential_0(&v20);
  v13 = *(v0 + 120);
  v14 = qword_28024C8B8;

  if (v14 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21_7(&qword_28027C8B0);

  sub_2683CB588();
  sub_2683CB548();
  v15 = OUTLINED_FUNCTION_19_8();
  v16(v15);
  *v4 = v9;
  v4[1] = &unk_2683E3EB8;
  v4[2] = 0;
  v4[3] = &unk_2683E3EC8;
  v4[4] = v12;
  v4[5] = &unk_2683E3ED8;
  v4[6] = v13;
  v4[7] = sub_2682CEEA8;
  v4[8] = 0;
  v4[9] = sub_2682CEF14;
  v4[10] = 0;
  v4[11] = v18;
  v4[12] = v2;
  v4[13] = v17;
  OUTLINED_FUNCTION_19_10();
  v4[18] = sub_2683779DC;
  v4[19] = 0;
  v4[20] = v8;
  v4[21] = v1;
  OUTLINED_FUNCTION_29_0();
}

void sub_2682CE1AC()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  v19 = v5;
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBA0 != -1)
  {
    swift_once();
  }

  *(v9 + 32) = sub_2683CD158();
  *(v9 + 40) = v10;
  sub_2681E5684(v0, v22);
  OUTLINED_FUNCTION_33_11();
  v11 = swift_allocObject();
  memcpy((v11 + 16), v22, 0x118uLL);
  OUTLINED_FUNCTION_69_0();
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_2683E3F00;
  *(v12 + 24) = v11;
  v22[3] = OUTLINED_FUNCTION_25_17();
  v22[4] = &off_28790AE38;
  v22[0] = v11;
  sub_268134034(v22, v21);
  OUTLINED_FUNCTION_20_2();
  v13 = swift_allocObject();
  sub_268128148(v21, v13 + 16);

  __swift_destroy_boxed_opaque_existential_0(v22);
  sub_2681E5684(v1, v22);
  OUTLINED_FUNCTION_33_11();
  v14 = swift_allocObject();
  memcpy((v14 + 16), v22, 0x118uLL);
  v15 = *(v1 + 128);

  sub_2683CB588();
  v16 = sub_2683CB548();
  v18 = v17;
  (*(v19 + 8))(v8, v20);
  *v3 = v9;
  *(v3 + 8) = &unk_2683D61F8;
  *(v3 + 16) = v12;
  *(v3 + 24) = &unk_2683E3F18;
  *(v3 + 32) = v13;
  *(v3 + 40) = &unk_2683E3F28;
  *(v3 + 48) = v14;
  *(v3 + 56) = sub_268188C88;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 120) = &unk_2683E3F38;
  *(v3 + 128) = v15;
  *(v3 + 136) = 2;
  *(v3 + 137) = v22[0];
  *(v3 + 140) = *(v22 + 3);
  *(v3 + 144) = sub_268377A1C;
  *(v3 + 152) = 0;
  *(v3 + 160) = v16;
  *(v3 + 168) = v18;
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2682CE474(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_26821AF90(a1, a2);
}

uint64_t sub_2682CE538(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2682CE558);
}

uint64_t sub_2682CE558()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26834B3F4(v3);
}

uint64_t sub_2682CE5DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_26821B094(a1, a2);
}

uint64_t sub_2682CE688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2683CE1F8();
  swift_allocObject();
  v4 = sub_2683CE1E8();
  sub_2683696A4();
  sub_2683CE178();

  return v4;
}

void *sub_2682CE70C(void **a1)
{
  v1 = *a1;
  sub_2681828AC(qword_280251698, &qword_280253320, 0x277CD4228, &protocol conformance descriptor for INTaskList);
  v2 = v1;
  return v1;
}

uint64_t sub_2682CE76C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26813D6E8;

  return sub_268324724(a1);
}

void sub_2682CE804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_0();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &a9 - v29;
  v31 = sub_2683CB668();
  MEMORY[0x28223BE20](v31 - 8);
  OUTLINED_FUNCTION_14_3();
  sub_2683CEF98();
  [v25 triggerContact];
  __swift_project_boxed_opaque_existential_1(v23 + 10, v23[13]);
  sub_2683CC088();
  if (sub_2683CEF78())
  {
    v23 = v23[34];
    v32 = v23;

    sub_2683CEF68();

    sub_2683CEF88();

    sub_2683CF168();
    v33 = OUTLINED_FUNCTION_14_19();
    if (__swift_getEnumTagSinglePayload(v33, 1, v23) != 1)
    {

      OUTLINED_FUNCTION_23_0();
      (*(v34 + 32))(v27, v30, v23);
      goto LABEL_7;
    }
  }

  else
  {
    sub_2683CF168();
    v35 = OUTLINED_FUNCTION_14_19();
    __swift_storeEnumTagSinglePayload(v35, 1, 1, v23);
  }

  sub_2683CFB38();

  sub_2683CF168();
  if (__swift_getEnumTagSinglePayload(v30, 1, v23) != 1)
  {
    sub_26812D9E0(v30, &unk_28024E7C0, &unk_2683D6CA0);
  }

LABEL_7:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2682CEA2C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_2682CEA9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2682CEABC);
}

uint64_t sub_2682CEABC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26834B700(v3);
}

uint64_t sub_2682CEB40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_26821AE8C(a1, a2);
}

uint64_t sub_2682CEC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_2683CE078();
  swift_allocObject();
  v8 = sub_2683CE068();
  sub_2683CDD18();
  swift_allocObject();
  sub_2683CDD08();
  a5(a1, a2);
  sub_2683CDCC8();

  sub_2683CDBF8();

  return v8;
}

uint64_t sub_2682CECC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26813D6E8;

  return sub_26832460C(a1);
}

uint64_t sub_2682CED58(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2682CED78);
}

uint64_t sub_2682CED78()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26834C1E4(v3);
}

uint64_t sub_2682CEDFC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_26821B198(a1, a2);
}

uint64_t sub_2682CEEA8(uint64_t a1, unint64_t a2)
{
  sub_2683CE078();
  swift_allocObject();
  v4 = sub_2683CE068();
  sub_26836945C(a1, a2);
  sub_2683CDBF8();

  return v4;
}

id sub_2682CEF14(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = *a1;
  sub_268129504(0, &qword_280253310, 0x277CD4220);
  v9 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  v10 = v8;
  v11 = sub_26835E66C(v8, 0, 0, 0, 0, v7, v5, 0, 0, 0, 0, 0, 0, 0);
  sub_2681828AC(&qword_28024D578, &qword_280253310, 0x277CD4220, &protocol conformance descriptor for INTask);
  return v11;
}

uint64_t sub_2682CF090(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268137D60;

  return sub_26832483C(a1);
}

uint64_t sub_2682CF128(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_2682CF1D4(a1, a2);
}

uint64_t sub_2682CF1D4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2682CF274);
}

uint64_t sub_2682CF274()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_26839D0D0(v1);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  if (v4)
  {
    sub_2683CFB38();

    v5 = sub_2683CF168();
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
    OUTLINED_FUNCTION_23_0();
    (*(v6 + 32))(v3, v2, v5);
  }

  else
  {
    v7 = sub_2683CF168();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
    sub_2683CFB38();
    if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
    {
      sub_26812D9E0(*(v0 + 40), &unk_28024E7C0, &unk_2683D6CA0);
    }
  }

  OUTLINED_FUNCTION_40();

  return v8();
}

uint64_t sub_2682CF3C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2682CF3E8);
}

uint64_t sub_2682CF3E8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26834B600(v3);
}

uint64_t sub_2682CF46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2682CF48C);
}

uint64_t sub_2682CF48C()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_4(v0);
  *v1 = v2;
  v1[1] = sub_268188BA8;

  return sub_26821B29C();
}

uint64_t sub_2682CF520()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26813D6E8;

  return sub_268324954();
}

uint64_t sub_2682CF5B0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_2682CE474(v3, v4);
}

uint64_t sub_2682CF668()
{
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return v4(v3);
}

uint64_t sub_2682CF71C()
{
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return v4(v3);
}

uint64_t sub_2682CF7D0()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_2682CEA9C(v3, v4);
}

uint64_t sub_2682CF854()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_2682CEB40(v3, v4);
}

uint64_t sub_2682CF8E8()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26813D6E0;
  v3 = OUTLINED_FUNCTION_14_19();

  return sub_2682CECC0(v3);
}

uint64_t sub_2682CF974()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_2682CE538(v3, v4);
}

uint64_t sub_2682CF9F8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_2682CE5DC(v3, v4);
}

uint64_t sub_2682CFA8C()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26813D6E0;
  v3 = OUTLINED_FUNCTION_14_19();

  return sub_2682CE76C(v3);
}

uint64_t sub_2682CFB18()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_2682CED58(v3, v4);
}