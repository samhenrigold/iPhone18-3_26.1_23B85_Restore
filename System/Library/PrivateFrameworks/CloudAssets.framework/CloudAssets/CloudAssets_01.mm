unint64_t sub_2437A5E74(uint64_t a1)
{
  sub_2437AB5BC();
  sub_2437A7208(&qword_27ED85850, MEMORY[0x277CC95F0]);
  v2 = sub_2437ABA5C();

  return sub_2437A63AC(a1, v2);
}

uint64_t sub_2437A5F0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_2437AB7BC();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2437AB5BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85860, &qword_2437AD1F0);
  v47 = v4;
  result = sub_2437ABDBC();
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
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_13:
      v25 = v22 | (v13 << 6);
      v26 = *(v10 + 48);
      v50 = *(v21 + 72);
      v27 = v26 + v50 * v25;
      if (v47)
      {
        (*v49)(v53, v27, v7);
        v28 = *(v10 + 56);
        v29 = *(v46 + 72);
        (*(v46 + 32))(v51, v28 + v29 * v25, v52);
      }

      else
      {
        (*v43)(v53, v27, v7);
        v30 = *(v10 + 56);
        v29 = *(v46 + 72);
        (*(v46 + 16))(v51, v30 + v29 * v25, v52);
      }

      sub_2437A7208(&qword_27ED85850, MEMORY[0x277CC95F0]);
      result = sub_2437ABA5C();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v31) >> 6;
        while (++v33 != v36 || (v35 & 1) == 0)
        {
          v37 = v33 == v36;
          if (v33 == v36)
          {
            v33 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v33);
          if (v38 != -1)
          {
            v34 = __clz(__rbit64(~v38)) + (v33 << 6);
            goto LABEL_25;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v34 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v20 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      (*v49)((*(v12 + 48) + v50 * v34), v53, v7);
      result = (*v48)(*(v12 + 56) + v29 * v34, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v13 >= v19)
      {
        break;
      }

      v24 = v15[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_13;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      sub_2437A6568(0, (v39 + 63) >> 6, v15);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_33:
  *v3 = v12;
  return result;
}

unint64_t sub_2437A63AC(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_2437AB5BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_2437A7208(&qword_27ED85858, MEMORY[0x277CC95F0]);
    v9 = sub_2437ABA7C();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2437A6568(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2437ACF40;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_2437A65CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2437A7294(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2437A65EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_118(a1, a2, a3, a4);
  OUTLINED_FUNCTION_16_1();
  v5 = OUTLINED_FUNCTION_42();
  v6(v5);
  return v4;
}

uint64_t sub_2437A6698()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2437A66D8()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_57_0(v0);
  *v1 = v2;
  v1[1] = sub_243792248;

  return sub_2437A4F04();
}

unint64_t sub_2437A6768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ED857B0;
  if (!qword_27ED857B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED857B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetManager.AssetError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AssetManager.AssetError(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2437A68FCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2437A6950()
{
  OUTLINED_FUNCTION_30();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85780, &qword_2437AD000);
  OUTLINED_FUNCTION_5(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  OUTLINED_FUNCTION_17(v1);
  OUTLINED_FUNCTION_81_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_57_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_49_0(v3);

  return sub_24379B260();
}

uint64_t sub_2437A6A6C()
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v3 = *(v1 + 80);
  v5 = *(v4 + 64);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85778, &qword_2437ACFF8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = (((v3 + 32) & ~v3) + v5 + v8) & ~v8;
  v27 = v9;
  v11 = *(v10 + 64);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85790, &unk_2437AD250);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v14 = *(v12 + 80);
  v15 = (v9 + v11 + v14) & ~v14;
  v17 = *(v16 + 64);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857E8, &qword_2437AD170);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  v21 = v20;
  v22 = *(v19 + 80);
  v23 = (v15 + v17 + v22) & ~v22;
  v24 = v3 | v8 | v14 | v22;
  v25 = (*(v21 + 64) + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + ((v3 + 32) & ~v3), v31);
  (*(v7 + 8))(v0 + v27, v30);
  (*(v13 + 8))(v0 + v15, v29);
  (*(v19 + 8))(v0 + v23, v28);

  return MEMORY[0x2821FE8E8](v0, ((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v24 | 7);
}

uint64_t sub_2437A6CE8()
{
  OUTLINED_FUNCTION_71();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  OUTLINED_FUNCTION_5(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85778, &qword_2437ACFF8);
  OUTLINED_FUNCTION_5(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85790, &unk_2437AD250);
  OUTLINED_FUNCTION_5(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857E8, &qword_2437AD170);
  OUTLINED_FUNCTION_5(v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_57_0(v4);
  *v5 = v6;
  v5[1] = sub_243794838;

  return sub_2437A3F0C();
}

uint64_t sub_2437A6F10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85758, &qword_2437ACFD8);
  OUTLINED_FUNCTION_1();
  v2 = *(v1 + 80);
  v4 = (*(v3 + 64) + ((v2 + 32) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85818, &qword_2437AD1A8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v9 = v8;
  v10 = *(v7 + 80);
  v11 = (v4 + v10 + 8) & ~v10;
  v16 = v2 | v10;
  v12 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v13 = OUTLINED_FUNCTION_83_0();
  v14(v13);

  (*(v7 + 8))(v0 + v11, v5);

  return MEMORY[0x2821FE8E8](v0, ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v16 | 7);
}

uint64_t sub_2437A7098()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_71();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85758, &qword_2437ACFD8);
  OUTLINED_FUNCTION_5(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85818, &qword_2437AD1A8);
  OUTLINED_FUNCTION_5(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_57_0(v2);
  *v3 = v4;
  v3[1] = sub_243794838;
  OUTLINED_FUNCTION_111();

  return sub_24379F8F8();
}

uint64_t sub_2437A7208(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_96();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2437A724C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_118(a1, a2, a3, a4);
  OUTLINED_FUNCTION_16_1();
  v5 = OUTLINED_FUNCTION_42();
  v6(v5);
  return v4;
}

void *sub_2437A7294(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85870, &qword_2437AD200);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85748, &qword_2437ACFC8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85748, &qword_2437ACFC8) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2437A57FC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t objectdestroy_35Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_90();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_1();
  v9 = ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v8 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v13 = (v9 + *(v11 + 80)) & ~*(v11 + 80);
  swift_unknownObjectRelease();
  v14 = OUTLINED_FUNCTION_83_0();
  v15(v14);
  (*(v12 + 8))(v4 + v13, v10);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t sub_2437A759C()
{
  OUTLINED_FUNCTION_30();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85728, &qword_2437ACF98);
  OUTLINED_FUNCTION_5(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  OUTLINED_FUNCTION_17(v1);
  OUTLINED_FUNCTION_81_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_57_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_49_0(v3);

  return sub_2437A18C8();
}

uint64_t sub_2437A76B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v12 = (((v6 + 32) & ~v6) + v8 + *(v10 + 80)) & ~*(v10 + 80);
  swift_unknownObjectRelease();
  v13 = OUTLINED_FUNCTION_83_0();
  v14(v13);
  (*(v11 + 8))(v4 + v12, v9);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v15, v16, v17);
}

uint64_t sub_2437A77FC()
{
  OUTLINED_FUNCTION_30();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  OUTLINED_FUNCTION_5(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  OUTLINED_FUNCTION_17(v1);
  OUTLINED_FUNCTION_81_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_57_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_49_0(v3);

  return sub_24379E8D0();
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_29_0()
{

  JUMPOUT(0x245D3F7D0);
}

void OUTLINED_FUNCTION_40_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_41_0(uint64_t a1)
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2080;

  return sub_2437ABBDC();
}

uint64_t OUTLINED_FUNCTION_44_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_2437ABDAC();
}

uint64_t OUTLINED_FUNCTION_45_0()
{
}

BOOL OUTLINED_FUNCTION_51_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_65_0(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_67_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_72_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_74_0()
{
}

uint64_t OUTLINED_FUNCTION_78_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_98()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_99()
{
}

uint64_t OUTLINED_FUNCTION_100()
{
}

uint64_t OUTLINED_FUNCTION_101()
{
}

void OUTLINED_FUNCTION_102()
{

  JUMPOUT(0x245D3EEA0);
}

uint64_t OUTLINED_FUNCTION_118(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

unint64_t OUTLINED_FUNCTION_119(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_243793C54(a1, a2, &a9);
}

BOOL OUTLINED_FUNCTION_120()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_121()
{
}

uint64_t OUTLINED_FUNCTION_122()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_123()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_124(uint64_t a1)
{

  return sub_2437ABE1C();
}

void *OUTLINED_FUNCTION_126()
{
  v2 = *(v0 + 24);
  result = __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 16), *(*(v0 + 32) + 40));
  *v1 = v2;
  return result;
}

uint64_t sub_2437A81F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7();
  v9 = *(v8 + 16);

  return v9(a4, v4 + v6, v7);
}

uint64_t sub_2437A8260(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2437AB92C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857F0, &qword_2437AD188);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2437A8388, v1, 0);
}

uint64_t sub_2437A8388()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85790, &unk_2437AD250);
  sub_2437ABC1C();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2437A8470(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2437A84B0(a1);
  return v2;
}

uint64_t sub_2437A84B0(uint64_t a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85788, &qword_2437AD008);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v28 = &v25 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85798, &unk_2437AD300);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85880, &qword_2437AD260);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v27 = v1;
  swift_defaultActor_initialize();
  v18 = OBJC_IVAR____TtC11CloudAssets25AssetsDownloadCoordinator__results;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v26 = a1;
  v21(v1 + v18, a1, v19);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85790, &unk_2437AD250);
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v22);
  v31 = v17;
  sub_2437AB92C();
  (*(v4 + 104))(v28, *MEMORY[0x277D858A0], v29);
  v23 = v27;
  sub_2437ABC6C();
  (*(v8 + 32))(v23 + OBJC_IVAR____TtC11CloudAssets25AssetsDownloadCoordinator__signals, v11, v30);
  sub_2437A88A8(v17, v15);
  result = __swift_getEnumTagSinglePayload(v15, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v20 + 8))(v26, v19);
    (*(*(v22 - 8) + 32))(v23 + OBJC_IVAR____TtC11CloudAssets25AssetsDownloadCoordinator_continutation, v15, v22);
    sub_2437A8918(v17);
    return v23;
  }

  return result;
}

uint64_t sub_2437A8810(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_2437A8918(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85790, &unk_2437AD250);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(v3, a1, v4);

  return __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
}

uint64_t sub_2437A88A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85880, &qword_2437AD260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437A8918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85880, &qword_2437AD260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AssetsDownloadCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC11CloudAssets25AssetsDownloadCoordinator__results;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC11CloudAssets25AssetsDownloadCoordinator__signals;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85798, &unk_2437AD300);
  OUTLINED_FUNCTION_7();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC11CloudAssets25AssetsDownloadCoordinator_continutation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85790, &unk_2437AD250);
  OUTLINED_FUNCTION_7();
  (*(v6 + 8))(v0 + v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetsDownloadCoordinator.__deallocating_deinit()
{
  AssetsDownloadCoordinator.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AssetsDownloadCoordinator(uint64_t a1)
{
  result = qword_27ED86260;
  if (!qword_27ED86260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2437A8B20(uint64_t a1)
{
  sub_2437A8EDC(319);
  if (v1 <= 0x3F)
  {
    sub_2437A8F64(319, &qword_27ED85890, MEMORY[0x277D858D8]);
    if (v2 <= 0x3F)
    {
      sub_2437A8F64(319, &qword_27ED85898, MEMORY[0x277D858B0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of AssetsDownloadCoordinator.receive(signal:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2437A8DE8;

  return v6(a1);
}

uint64_t sub_2437A8DE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_2437A8EDC(uint64_t a1)
{
  if (!qword_27ED85888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED856C0, &unk_2437AD2F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED85538, qword_2437AD390);
    v1 = sub_2437ABC5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED85888);
    }
  }
}

void sub_2437A8F64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_2437AB92C();
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED85538, qword_2437AD390);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2437A9028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_2437A9080(a1, a2, a3);
  return v6;
}

uint64_t sub_2437A9080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  *(v3 + 112) = a1;
  v7 = OBJC_IVAR____TtC11CloudAssets23AssetsUploadCoordinator__signals;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85798, &unk_2437AD300);
  OUTLINED_FUNCTION_7();
  (*(v8 + 32))(v3 + v7, a2);
  v9 = OBJC_IVAR____TtC11CloudAssets23AssetsUploadCoordinator__results;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  OUTLINED_FUNCTION_7();
  (*(v10 + 32))(v3 + v9, a3);
  return v3;
}

uint64_t AssetsUploadCoordinator.deinit()
{

  v1 = OBJC_IVAR____TtC11CloudAssets23AssetsUploadCoordinator__signals;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85798, &unk_2437AD300);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC11CloudAssets23AssetsUploadCoordinator__results;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  OUTLINED_FUNCTION_7();
  (*(v4 + 8))(v0 + v3);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetsUploadCoordinator.__deallocating_deinit()
{
  AssetsUploadCoordinator.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AssetsUploadCoordinator(uint64_t a1)
{
  result = qword_27ED86310;
  if (!qword_27ED86310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2437A92C0(uint64_t a1)
{
  sub_2437A9428(319);
  if (v1 <= 0x3F)
  {
    sub_2437A8EDC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2437A9428(uint64_t a1)
{
  if (!qword_27ED85890)
  {
    sub_2437AB92C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED85538, qword_2437AD390);
    v1 = sub_2437ABC5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED85890);
    }
  }
}

uint64_t sub_2437A94A4()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED858A0, qword_2437AD3A8);
  v1[4] = OUTLINED_FUNCTION_43();

  return MEMORY[0x2822009F8](sub_2437A9534, v0, 0);
}

uint64_t sub_2437A9534()
{
  v1 = *(v0[3] + 112);
  v0[5] = v1;
  v2 = (*v1 + 112) & 0xFFFFFFFFFFFFLL | 0x1877000000000000;
  v0[6] = *(*v1 + 112);
  v0[7] = v2;
  return OUTLINED_FUNCTION_0_3(sub_2437A9570, v1);
}

uint64_t sub_2437A9570()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 24);
  *(v0 + 64) = (*(v0 + 48))();

  return MEMORY[0x2822009F8](sub_2437A95E0, v1, 0);
}

uint64_t sub_2437A95E0()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[4];
  sub_2437A96B4(v0[8], v1);

  v2 = sub_2437AB71C();
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v2 - 8) + 32))(v0[2], v0[4], v2);

    OUTLINED_FUNCTION_14();

    return v4();
  }

  return result;
}

uint64_t sub_2437A96B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_2437AB71C();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_2437A975C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_3(sub_2437A9778, v1);
}

uint64_t sub_2437A9778()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v2 = (*v1 + 120) & 0xFFFFFFFFFFFFLL | 0xB676000000000000;
  v0[5] = *(*v1 + 120);
  v0[6] = v2;
  return OUTLINED_FUNCTION_0_3(sub_2437A97B4, v1);
}

uint64_t sub_2437A97B4()
{
  OUTLINED_FUNCTION_15();
  (*(v0 + 40))();
  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_2437A9814()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  v1[7] = OUTLINED_FUNCTION_43();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C8, &unk_2437ACE90);
  v1[8] = OUTLINED_FUNCTION_43();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D8, qword_2437ACEA0);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = OUTLINED_FUNCTION_43();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = OUTLINED_FUNCTION_43();

  return MEMORY[0x2822009F8](sub_2437A9998, v0, 0);
}

uint64_t sub_2437A9998()
{
  v1 = *(v0[5] + 112);
  v0[15] = v1;
  v2 = (*v1 + 128) & 0xFFFFFFFFFFFFLL | 0x5BC5000000000000;
  v0[16] = *(*v1 + 128);
  v0[17] = v2;
  return OUTLINED_FUNCTION_0_3(sub_2437A99D4, v1);
}

uint64_t sub_2437A99D4()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 40);
  (*(v0 + 128))();

  return MEMORY[0x2822009F8](sub_2437A9A40, v1, 0);
}

uint64_t sub_2437A9A40()
{
  OUTLINED_FUNCTION_30();
  sub_2437ABC3C();
  sub_2437A9F14();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_2437A9B04;
  v2 = *(v0 + 64);

  return MEMORY[0x2822005A8](v2);
}

uint64_t sub_2437A9B04()
{
  OUTLINED_FUNCTION_15();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v3 = v2;

  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_2437A9E5C;
  }

  else
  {
    v5 = sub_2437A9C0C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2437A9C0C()
{
  v1 = v0[8];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[6]) == 1)
  {
    v3 = v0[13];
    v2 = v0[14];
    v4 = v0[12];
    v5 = (*(v0[10] + 8))(v0[11], v0[9]);
    sub_24379A874(v5, v6, v7);
    swift_allocError();
    swift_willThrow();
    (*(v3 + 8))(v2, v4);
LABEL_5:

    OUTLINED_FUNCTION_14();
    goto LABEL_7;
  }

  sub_24379A8C8(v1, v0[7]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[11];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[10];
  if (EnumCaseMultiPayload == 1)
  {
    v0[3] = *v0[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85538, qword_2437AD390);
    swift_willThrowTypedImpl();
    (*(v14 + 8))(v11, v13);
    (*(v10 + 8))(v9, v12);
    goto LABEL_5;
  }

  v16 = v0[7];
  v17 = v0[4];
  (*(v14 + 8))(v0[11], v0[9]);
  (*(v10 + 8))(v9, v12);
  v18 = sub_2437AB91C();
  (*(*(v18 - 8) + 32))(v17, v16, v18);

  OUTLINED_FUNCTION_14();
LABEL_7:

  return v15();
}

uint64_t sub_2437A9E5C()
{
  OUTLINED_FUNCTION_30();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_14();

  return v4();
}

unint64_t sub_2437A9F14()
{
  result = qword_27ED858A8;
  if (!qword_27ED858A8)
  {
    type metadata accessor for AssetUploadCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED858A8);
  }

  return result;
}

uint64_t AssetUploadCoordinator.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetUploadCoordinator.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of AssetUploadCoordinator.assetSkeleton.getter()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_5_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of AssetUploadCoordinator.signals.getter()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_5_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of AssetUploadCoordinator.result()()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_5_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_0(v1);

  return v4(v3);
}

uint64_t sub_2437AA35C(unint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  v3 = MEMORY[0x277D84F90];
  v5 = a1;
  v6 = HIDWORD(a1);
  v7 = BYTE6(a2);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_43;
      }

      v8 = HIDWORD(a1) - a1;
LABEL_6:
      if (!v8)
      {
        goto LABEL_35;
      }

      v46 = MEMORY[0x277D84F90];
      sub_2437AA9FC(0, v8 & ~(v8 >> 63), 0);
      v37 = v7;
      v38 = v5;
      v35 = v6;
      if (v2)
      {
        if (v2 == 2)
        {
          v11 = *(v5 + 16);
        }

        else
        {
          v11 = v5;
        }
      }

      else
      {
        v11 = 0;
      }

      if (v8 < 0)
      {
        goto LABEL_42;
      }

      v3 = v46;
      v36 = v5 >> 32;
      v33 = v5 >> 16;
      v34 = v5 >> 8;
      v31 = v5 >> 40;
      v32 = v5 >> 24;
      v29 = HIBYTE(v5);
      v30 = HIWORD(v5);
      v39 = v5;
      break;
    case 2uLL:
      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_6;
      }

      goto LABEL_44;
    case 3uLL:
      goto LABEL_35;
    default:
      v8 = BYTE6(a2);
      goto LABEL_6;
  }

  do
  {
    if (v2 == 1)
    {
      if (v11 < v38 || v11 >= v36)
      {
        goto LABEL_38;
      }

      v14 = sub_2437AB44C();
      if (!v14)
      {
        goto LABEL_45;
      }

      v15 = v14;
      v16 = sub_2437AB45C();
      v17 = v11 - v16;
      if (__OFSUB__(v11, v16))
      {
        goto LABEL_40;
      }

LABEL_31:
      v12 = *(v15 + v17);
      goto LABEL_32;
    }

    if (v2)
    {
      if (v11 < *(v5 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      if (v11 >= *(v5 + 24))
      {
        goto LABEL_39;
      }

      v18 = sub_2437AB44C();
      if (!v18)
      {
        goto LABEL_46;
      }

      v15 = v18;
      v19 = sub_2437AB45C();
      v17 = v11 - v19;
      if (__OFSUB__(v11, v19))
      {
        goto LABEL_41;
      }

      goto LABEL_31;
    }

    if (v11 >= v37)
    {
      goto LABEL_37;
    }

    LOBYTE(v40) = v5;
    BYTE1(v40) = v34;
    BYTE2(v40) = v33;
    BYTE3(v40) = v32;
    BYTE4(v40) = v35;
    BYTE5(v40) = v31;
    BYTE6(v40) = v30;
    HIBYTE(v40) = v29;
    v41 = a2;
    v42 = BYTE2(a2);
    v43 = BYTE3(a2);
    v44 = BYTE4(a2);
    v45 = BYTE5(a2);
    v12 = *(&v40 + v11);
LABEL_32:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED858B0, &qword_2437AD440);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2437ACF30;
    *(v20 + 56) = MEMORY[0x277D84B78];
    *(v20 + 64) = MEMORY[0x277D84BC0];
    *(v20 + 32) = v12;
    v21 = sub_2437ABAAC();
    v23 = v22;
    v46 = v3;
    v25 = *(v3 + 16);
    v24 = *(v3 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_2437AA9FC((v24 > 1), v25 + 1, 1);
      v3 = v46;
    }

    *(v3 + 16) = v25 + 1;
    v26 = v3 + 16 * v25;
    *(v26 + 32) = v21;
    *(v26 + 40) = v23;
    ++v11;
    --v8;
    v5 = v39;
  }

  while (v8);
LABEL_35:
  v40 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED858B8, &qword_2437AD448);
  sub_2437AAA1C();
  v27 = sub_2437ABA6C();

  return v27;
}

void sub_2437AA6F4()
{
  v2 = v0;
  v21[11] = *MEMORY[0x277D85DE8];
  v3 = sub_2437AB52C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2437AAA80();
  v7 = *(v4 + 16);
  v7(v6, v2, v3);
  v8 = sub_24378D810(v6);
  if (!v1)
  {
    v9 = v8;
    v10 = [v8 fileDescriptor];
    v21[0] = 65542;
    v11 = ffsctl(v10, 0xC0084A44uLL, v21, 0);
    if (v11)
    {
      v12 = v11;
      v13 = sub_2437ABA9C();
      v15 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED858C8, &qword_2437AD450);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2437ACF30;
      *(inited + 32) = sub_2437ABA9C();
      *(inited + 40) = v17;
      *(inited + 72) = v3;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
      v7(boxed_opaque_existential_1, v2, v3);
      v19 = sub_2437ABA4C();
      v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_2437AA94C(v13, v15, v12, v19);
      swift_willThrow();
    }

    [v9 closeFile];
  }
}

id sub_2437AA94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2437ABA8C();

  if (a4)
  {
    v8 = sub_2437ABA2C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

char *sub_2437AA9FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2437AAAD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2437AAA1C()
{
  result = qword_27ED858C0;
  if (!qword_27ED858C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED858B8, &qword_2437AD448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED858C0);
  }

  return result;
}

unint64_t sub_2437AAA80()
{
  result = qword_27ED85548;
  if (!qword_27ED85548)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED85548);
  }

  return result;
}

char *sub_2437AAAD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED858D0, &qword_2437AD468);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2437AABDC()
{
  qword_27ED863B8 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

os_activity_t sub_2437AAC18(char *description, int a2, char a3, void *dso)
{
  if ((a3 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (_MergedGlobals_5 == -1)
        {
LABEL_5:
          v6 = qword_27ED863B8;

          return _os_activity_create(dso, description, v6, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        OUTLINED_FUNCTION_0_5(&_MergedGlobals_5);
        goto LABEL_5;
      }

LABEL_28:
      result = sub_2437ABDAC();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v8 = description + 1;
    goto LABEL_13;
  }

  v9 = (description & 0x3F) << 8;
  v10 = (description >> 6) + v9 + 33217;
  v11 = (v9 | (description >> 6) & 0x3F) << 8;
  v12 = (description >> 18) + ((v11 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v13 = (description >> 12) + v11 + 8487393;
  if (description >> 16)
  {
    v8 = v12;
  }

  else
  {
    v8 = v13;
  }

  if (description < 0x800)
  {
    v8 = v10;
  }

LABEL_13:
  *descriptiona = (v8 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v8) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (_MergedGlobals_5 != -1)
  {
    OUTLINED_FUNCTION_0_5(&_MergedGlobals_5);
  }

  return _os_activity_create(dso, descriptiona, qword_27ED863B8, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_2437AAE08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED858E0, &unk_2437AD500);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  qword_27ED864C8 = result;
  return result;
}

void static TestConfigurations.testConfigurations()(_BYTE *a1@<X8>)
{
  if (_MergedGlobals_6 != -1)
  {
    OUTLINED_FUNCTION_0_6(&_MergedGlobals_6);
  }

  v2 = qword_27ED864C8;
  os_unfair_lock_lock((qword_27ED864C8 + 20));
  *a1 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 20));
}

void sub_2437AAED0(char a1)
{
  if (_MergedGlobals_6 != -1)
  {
    OUTLINED_FUNCTION_0_6(&_MergedGlobals_6);
  }

  v2 = qword_27ED864C8;
  os_unfair_lock_lock((qword_27ED864C8 + 20));
  *(v2 + 16) = a1;

  os_unfair_lock_unlock((v2 + 20));
}

BOOL static TestConfigurations.isSystemInstalledBinary()()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_2437ABA3C();
  sub_2437AB000(0xD000000000000011, 0x80000002437ADC40, v2);
  v4 = v3;

  if (v4)
  {
  }

  return v4 == 0;
}

uint64_t sub_2437AB000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2437AB2D0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t TestConfigurations.hashValue.getter()
{
  v1 = *v0;
  sub_2437ABEAC();
  MEMORY[0x245D3F230](v1);
  return sub_2437ABECC();
}

unint64_t sub_2437AB0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ED858D8;
  if (!qword_27ED858D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED858D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TestConfigurations(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TestConfigurations(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x2437AB298);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2437AB2D0(uint64_t a1, uint64_t a2)
{
  sub_2437ABEAC();
  sub_2437ABADC();
  v4 = sub_2437ABECC();

  return sub_2437AB348(a1, a2, v4);
}

unint64_t sub_2437AB348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2437ABE3C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  return swift_once();
}