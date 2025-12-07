void sub_2310A15CC(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_231159888();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_23105FECC(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C898, &qword_231164A28);
      sub_2311596A8();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v11) = v8;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_2310A0F28(v14, a2 & 1);
  v16 = sub_23105FECC(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_231159588();
  MEMORY[0x231924980](0xD00000000000001BLL, 0x8000000231169A00);
  sub_231159688();
  MEMORY[0x231924980](39, 0xE100000000000000);
  sub_2311596C8();
  __break(1u);
}

unint64_t *sub_2310A18A0(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v25 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v26 = a5;
  while (1)
  {
    v24 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_2310A1AD4(v25, a2, v24, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    sub_231159918();

    sub_231158EA8();
    v14 = sub_231159948();
    v15 = ~(-1 << *(a3 + 32));
    do
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = 1 << (v14 & v15);
      if ((v18 & *(v8 + 8 * v17)) == 0)
      {

        a5 = v26;
        goto LABEL_3;
      }

      v19 = (*(a3 + 48) + 16 * v16);
      if (*v19 == v13 && v19[1] == v12)
      {
        break;
      }

      v21 = sub_231159818();
      v14 = v16 + 1;
    }

    while ((v21 & 1) == 0);

    v22 = v25[v17];
    v25[v17] = v22 & ~v18;
    a5 = v26;
    if ((v22 & v18) == 0)
    {
      goto LABEL_3;
    }

    v7 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_20;
    }

    if (v24 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t *sub_2310A1A4C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_2310A18A0(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_2310A1AD4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C8A0, &qword_231164A30);
  result = sub_231159568();
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
    sub_231159918();

    sub_231158EA8();
    result = sub_231159948();
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_2310A1D98(uint64_t a1, void *a2, uint64_t a3)
{
  sub_231158E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3D010, &qword_231162AA0);
  OUTLINED_FUNCTION_26_1();
  swift_allocObject();

  v5 = sub_23107F530();
  OUTLINED_FUNCTION_9_0();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C7E0, &unk_231166790);
  swift_allocObject();
  v7 = a2;
  sub_23109BDA0(sub_2310A1F50, v6, v5);
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3D020, &qword_2311649D0);
  swift_allocObject();
  sub_23109C61C(sub_2310E0AA0, 0, v9);
  v11 = v10;
  OUTLINED_FUNCTION_9_0();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C770, qword_2311649B0);
  swift_allocObject();

  sub_23109BD08(sub_2310A1F58, v12, v11);
}

uint64_t sub_2310A2084()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_19_3(v5);

  return sub_23109EB48(v6, v2, v3, v4);
}

uint64_t sub_2310A212C(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_51_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2310A2170()
{
  result = qword_27DD3C8E8;
  if (!qword_27DD3C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C8E8);
  }

  return result;
}

uint64_t objectdestroy_13Tm(void (*a1)(void))
{

  a1(*(v1 + 32));
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t objectdestroy_25Tm()
{

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_0_16(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_231040CB0(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_3_12(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_231040CB0(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_4_10(void *a1, uint64_t a2, ...)
{
  a1[2] = v2;
  a1[3] = v4;
  a1[4] = v3;

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_8_10(void *result)
{
  result[2] = v1;
  result[3] = v3;
  result[4] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_11()
{
  sub_231046164(v0, v1);
}

uint64_t OUTLINED_FUNCTION_10_11(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_11_8(void *result)
{
  result[2] = v3;
  result[3] = v2;
  result[4] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_9()
{

  return sub_231159358();
}

uint64_t OUTLINED_FUNCTION_19_6(uint64_t result)
{
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = v1;
  v2[3] = result;
  return result;
}

void OUTLINED_FUNCTION_21_8()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

uint64_t OUTLINED_FUNCTION_22_6(uint64_t a1)
{

  return sub_231159498();
}

uint64_t OUTLINED_FUNCTION_31_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return sub_231159328();
}

uint64_t OUTLINED_FUNCTION_33_2(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_231040CB0(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_35_2(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_231040CB0(a1, a2, a3);
}

double OUTLINED_FUNCTION_41_4()
{
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v2 - 136) = v1;
  *(v0 + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_3()
{
}

uint64_t OUTLINED_FUNCTION_56_1(uint64_t a1)
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_57_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 152) = a2 - 32;
  *(v2 - 144) = a1;
}

uint64_t OUTLINED_FUNCTION_58_2(uint64_t a1)
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_59_2(id a1, SEL a2)
{

  return [a1 a2];
}

id OUTLINED_FUNCTION_60_1(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_61_2(uint64_t a1)
{

  return sub_231158E18();
}

uint64_t OUTLINED_FUNCTION_62_2()
{

  return sub_231158D48();
}

uint64_t OUTLINED_FUNCTION_63_1()
{

  return sub_231159318();
}

uint64_t OUTLINED_FUNCTION_64_0()
{
  sub_231046164(v0, v1);
}

uint64_t OUTLINED_FUNCTION_76(uint64_t a1)
{

  return MEMORY[0x2821FBA08](v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_80(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_81(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2310A29B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2310A29F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_2310A2A40(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_2311594D8();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_2310A2A80()
{
  v1 = swift_allocObject();
  *(v1 + 16) = sub_2310A41DC;
  *(v1 + 24) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_231164BC8;
  *(v2 + 24) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD00000000000001ELL;
  *(inited + 40) = 0x8000000231169B00;
  *(inited + 48) = sub_2310A4274;
  *(inited + 56) = v1;
  *(inited + 64) = 2;
  *(inited + 72) = &unk_231164BD0;
  *(inited + 80) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BED8, &unk_2311637D0);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_231161B80;
  *(v4 + 32) = inited;
  swift_retain_n();
  v5 = static TaskBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_2310639FC();
  return v5;
}

double sub_2310A2BE0(uint64_t *a1, uint64_t a2)
{
  sub_2310A2CE8(*a1, a2);
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C970, &qword_231164A00);
  swift_allocObject();
  v4 = sub_23109C3FC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C978, &unk_231164BE0);
  swift_allocObject();
  sub_23109BED4(sub_2310A2D9C, 0, v4);
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C980, &qword_231162A18);
  swift_allocObject();
  sub_23109FDE4(v6);
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v9 = swift_allocObject();
  *&result = 1;
  *(v9 + 16) = xmmword_231161E80;
  *(v9 + 32) = v8;
  return result;
}

double sub_2310A2CE8(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v3 = sub_2310A0BF0(&unk_2845D7928);
  v4 = *(a2 + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_2310E07F4(v3, v4, &v9);
  v6 = v5;

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v7 = swift_allocObject();
  *&result = 1;
  *(v7 + 16) = xmmword_231161E80;
  *(v7 + 32) = v6;
  return result;
}

void sub_2310A2D9C(uint64_t *a1)
{
  sub_231054A0C(0, &qword_27DD3C990, 0x277D79EE8);

  v2 = sub_2310DEC64(v1);
  v3 = [v2 deletedDescriptors];

  sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
  sub_2310A431C();
  v26 = sub_231159178();

  v5 = sub_2310DEC64(v4);
  v6 = [v5 updatedDescriptors];

  v25 = sub_231159178();

  v8 = sub_2310DEC64(v7);
  v9 = [v8 insertedDescriptors];

  v10 = sub_231159178();
  if ((v10 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2311594C8();
    sub_2311591A8();
    v12 = v28;
    v11 = v29;
    v13 = v30;
    v14 = v31;
    v15 = v32;
  }

  else
  {
    v16 = -1 << *(v10 + 32);
    v11 = v10 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v10 + 56);

    v14 = 0;
    v12 = v10;
  }

  v19 = (v13 + 64) >> 6;
  while (v12 < 0)
  {
    if (!sub_2311594F8() || (swift_dynamicCast(), (v22 = v27) == 0))
    {
LABEL_19:
      sub_231043ED0(v12);

      v24 = sub_2310A2A40(v25);

      if (v24)
      {
        sub_2310A2A40(v26);

        return;
      }

      goto LABEL_21;
    }

LABEL_17:
    v23 = [v22 objectType];

    if (!v23)
    {

      sub_231043ED0(v12);
LABEL_21:

      return;
    }
  }

  v20 = v14;
  v21 = v15;
  if (v15)
  {
LABEL_13:
    v15 = (v21 - 1) & v21;
    v22 = *(*(v12 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v22)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v14 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      goto LABEL_19;
    }

    v21 = *(v11 + 8 * v14);
    ++v20;
    if (v21)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_2310A30E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2310A3170;

  return sub_2310A33A8();
}

uint64_t sub_2310A3170()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v3 + 32) = v9;
    *v9 = v5;
    v9[1] = sub_2310A32C8;

    return sub_2310A3DD0();
  }
}

uint64_t sub_2310A32C8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v2 = v1;

  OUTLINED_FUNCTION_46_0();

  return v3();
}

uint64_t sub_2310A33BC()
{
  OUTLINED_FUNCTION_4_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C600, &qword_231161B60);
  inited = swift_initStackObject();
  v0[8] = inited;
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000231169AE0;
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = inited;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_2310A34E4;

  return MEMORY[0x282200740]();
}

void sub_2310A34E4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    swift_setDeallocating();
    sub_231063A58();

    MEMORY[0x2822009F8](sub_231063774, 0, 0);
  }
}

uint64_t sub_2310A361C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310A36C4, 0, 0);
}

uint64_t sub_2310A36C4()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  for (i = (v1 + 40); ; i += 2)
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    if (!v2)
    {
      break;
    }

    v7 = *(i - 1);
    v6 = *i;
    v8 = sub_2311590C8();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    v9[5] = v6;
    sub_23106FC70(v5, v4);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v8);
    swift_bridgeObjectRetain_n();
    v11 = *(v0 + 88);
    if (EnumTagSinglePayload == 1)
    {
      sub_23106FCE0(*(v0 + 88));
    }

    else
    {
      sub_2311590B8();
      (*(*(v8 - 8) + 8))(v11, v8);
    }

    if (v9[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_231159048();
      v14 = v13;
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v15 = **(v0 + 72);

    if (v14 | v12)
    {
      v16 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v12;
      *(v0 + 40) = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(v0 + 96);
    *(v0 + 48) = 1;
    *(v0 + 56) = v16;
    *(v0 + 64) = v15;
    swift_task_create();

    sub_23106FCE0(v17);
    --v2;
  }

  OUTLINED_FUNCTION_46_0();

  return v18();
}

uint64_t sub_2310A3920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2310A3940, 0, 0);
}

uint64_t sub_2310A3940()
{
  OUTLINED_FUNCTION_21();
  sub_231158D78();
  v0[4] = sub_231158D68();
  v1 = sub_231158E58();
  v3 = v2;
  v0[5] = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2310A3A14;
  v6 = v0[2];
  v5 = v0[3];

  return sub_2310A3BA8(v6, v5, v1, v3);
}

uint64_t sub_2310A3A14()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2310A3B40, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_46_0();

    return v7();
  }
}

uint64_t sub_2310A3B40()
{
  OUTLINED_FUNCTION_4_1();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2310A3BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  return MEMORY[0x2822009F8](sub_2310A3BD0, 0, 0);
}

uint64_t sub_2310A3BD0()
{
  v1 = v0 + 16;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_2310A3CD4;
  v2 = swift_continuation_init();
  *(swift_allocObject() + 16) = v2;
  sub_231158D58();

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2310A3CD4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  OUTLINED_FUNCTION_19_5();
  *v2 = v1;
  if (*(v3 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_2310A3DE4()
{
  OUTLINED_FUNCTION_21();
  v1 = [objc_opt_self() sharedInstance];
  v2 = *MEMORY[0x277D7A2F8];
  v3 = sub_231158E28();
  sub_2310A3FF8(v2, 0xD000000000000010, 0x8000000231169AA0, v3, v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2310A3ED4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2310A3F54(void *a1, uint64_t a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
    v4 = swift_allocError();
    *v5 = a1;
    v6 = a1;

    return MEMORY[0x282200958](a2, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

void sub_2310A3FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_231158E28();
  [a5 reloadControlsForExtension:a1 kind:v8 reason:a4];
}

uint64_t sub_2310A4070()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43_0(v6);
  *v7 = v8;
  v7[1] = sub_231072874;

  return sub_2310A361C(v4, v2, v5);
}

uint64_t sub_2310A4118(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_43_0(v7);
  *v8 = v9;
  v8[1] = sub_231072874;

  return sub_2310A3920(a1, v3, v4, v6, v5);
}

uint64_t sub_2310A41E4()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_0(v3);
  *v4 = v5;
  v4[1] = sub_231072874;

  return sub_2310A30E0(v2, v0);
}

uint64_t sub_2310A427C()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_43_0(v5);
  *v6 = v7;
  v6[1] = sub_2310721C0;

  return sub_231063368(v2, v4, v3);
}

unint64_t sub_2310A431C()
{
  result = qword_280CCAEA0;
  if (!qword_280CCAEA0)
  {
    sub_231054A0C(255, &qword_280CCAEB0, 0x277D79EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCAEA0);
  }

  return result;
}

uint64_t WFConfiguredSystemActionMigrator.tasks.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  OUTLINED_FUNCTION_26_1();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2310A45D8;
  *(v3 + 24) = v1;
  OUTLINED_FUNCTION_26_1();
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_231164BF8;
  *(v4 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD000000000000028;
  *(inited + 40) = 0x8000000231169B20;
  *(inited + 48) = sub_231061688;
  *(inited + 56) = v3;
  *(inited + 64) = 0;
  *(inited + 72) = &unk_231164C00;
  *(inited + 80) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BED8, &unk_2311637D0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_231161B80;
  *(v6 + 32) = inited;
  v7 = v0;
  v8 = static TaskBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_2310639FC();
  return v8;
}

double sub_2310A4518(uint64_t *a1, void *a2)
{
  v2 = sub_2310A45E0(*a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C730, &unk_2311649A0);
  swift_allocObject();
  v3 = sub_23109C3D0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF88, &qword_231162AE0);
  swift_allocObject();
  sub_23109FB90(v3);
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v6 = swift_allocObject();
  *&result = 1;
  *(v6 + 16) = xmmword_231161E80;
  *(v6 + 32) = v5;
  return result;
}

uint64_t sub_2310A45E0(uint64_t a1, void *a2)
{
  sub_231158E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3D010, &qword_231162AA0);
  swift_allocObject();

  v4 = sub_23107F530();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C8D8, &unk_231166700);
  swift_allocObject();
  sub_23109C7E0(sub_2310E0AA0, 0, v4);
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF50, &qword_231162A80);
  swift_allocObject();
  sub_23109BE3C(sub_2310A4E60, v7, v6);
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C908, &qword_231164A48);
  swift_allocObject();
  v11 = a2;
  sub_23109C008(sub_2310A4E68, v10, v9);
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C760, &unk_231164C50);
  swift_allocObject();
  sub_23109C910(sub_2310A4E70, 0, v13);
  v15 = v14;
  v25 = a1;

  v16 = [v11 databaseProvider];
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_2310E07F4(MEMORY[0x277D84FA0], v16, &v25);
  v18 = v17;
  swift_unknownObjectRelease_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C8F8, &qword_231164A40);
  swift_allocObject();
  sub_23109BF70(sub_2310A4A44, 0, v18);
  v20 = v19;
  swift_allocObject();
  sub_23109C87C(sub_2310A4E70, 0, v20);
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_231162950;
  *(v23 + 32) = v15;
  *(v23 + 40) = v22;

  return v23;
}

void sub_2310A490C(uint64_t *a1, void *a2)
{
  v3 = sub_2310DE3B0(*a1);
  v4 = v3 + 56;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_9:
    v7 &= v7 - 1;

    v11 = sub_231158E28();
    v12 = [a2 hasSystemActionForBundleIdentifier_];

    if (v12)
    {
LABEL_10:

      return;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_10;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_2310A4A44(uint64_t *a1)
{
  sub_231054A0C(0, &qword_27DD3C990, 0x277D79EE8);

  v2 = sub_2310DEC64(v1);
  v3 = [v2 updatedDescriptors];

  sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
  sub_2310A431C();
  v4 = sub_231159178();

  LOBYTE(v3) = sub_2310A2A40(v4);

  if (v3)
  {

    v6 = sub_2310DEC64(v5);
    v7 = [v6 deletedDescriptors];

    v8 = sub_231159178();
    LOBYTE(v7) = sub_2310A2A40(v8);

    v9 = v7 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t sub_2310A4B98()
{
  [*(v0 + 16) updateActionsIfNeeded];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2310A4C04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2310A4E78;

  return sub_2310A4B78(a1, v4);
}

uint64_t sub_2310A4CC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2310A4D6C;

  return sub_231061F1C(a1, v5, v4);
}

uint64_t sub_2310A4D6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2310A4EA0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C310, &unk_231163B00);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - v3, a1);
  return sub_231158528();
}

uint64_t sub_2310A4F60()
{
  type metadata accessor for ShortcutTransformer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CA28, &unk_231164D70);
  return sub_231158E68();
}

uint64_t sub_2310A4FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[46] = a5;
  v6[47] = v5;
  v6[44] = a3;
  v6[45] = a4;
  v6[42] = a1;
  v6[43] = a2;
  v7 = sub_231158258();
  v6[48] = v7;
  v6[49] = *(v7 - 8);
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310A50B8, 0, 0);
}

uint64_t sub_2310A50B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  v12[57] = *MEMORY[0x277D7A4C8];
  sub_2311581C8();

  v14 = sub_231158238();
  v15 = sub_2311592C8();
  if (OUTLINED_FUNCTION_20_2(v15))
  {
    OUTLINED_FUNCTION_40_4();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_101(v16, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v17, v18, "Starting indexing %ld items");
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
  }

  v19 = v12[42];
  OUTLINED_FUNCTION_115();
  v12[58] = v20;
  v12[59] = v21;
  v20();
  v22 = MEMORY[0x277D84F90];
  v12[41] = MEMORY[0x277D84F90];
  v23 = *(v19 + 16);
  v12[60] = v23;
  v12[61] = v22;
  if (v23)
  {
    v12[62] = 1;
    OUTLINED_FUNCTION_28_5(v12[42]);

    OUTLINED_FUNCTION_0_9();
    a9 = v24;
    swift_task_alloc();
    OUTLINED_FUNCTION_27_1();
    v12[63] = v25;
    *v25 = v26;
    OUTLINED_FUNCTION_8_11(v25);
    OUTLINED_FUNCTION_39_1();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }

  if (!sub_23106FF58(MEMORY[0x277D84F90]))
  {

    OUTLINED_FUNCTION_70_1();

    v48 = sub_231158238();
    v49 = sub_2311592B8();
    if (OUTLINED_FUNCTION_20_2(v49))
    {
      OUTLINED_FUNCTION_40_4();
      v50 = swift_slowAlloc();
      OUTLINED_FUNCTION_144(v50, 3.852e-34);
      OUTLINED_FUNCTION_17_3(&dword_23103C000, v51, v52, "Done indexing %ld items");
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
    }

    else
    {
    }

    v53 = OUTLINED_FUNCTION_10_12();
    v54(v53);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_39_1();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_140();
  sub_231158238();
  v35 = sub_2311592C8();
  if (OUTLINED_FUNCTION_60_2(v35))
  {
    v36 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_56_0(v36);
    OUTLINED_FUNCTION_25_2(&dword_23103C000, v37, v38, "Finished generating searchable items, triggering final index");
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  OUTLINED_FUNCTION_64_1();
  v39 = OUTLINED_FUNCTION_51_1();
  v13(v39);
  v40 = sub_231054A0C(0, &qword_280CCAF38, 0x277CC34B0);
  v41 = OUTLINED_FUNCTION_119(v40);
  OUTLINED_FUNCTION_147(v41);
  OUTLINED_FUNCTION_52_1();
  v12[10] = v42;
  OUTLINED_FUNCTION_22_7();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  OUTLINED_FUNCTION_6_5(v43);
  OUTLINED_FUNCTION_74(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_4_5();
  v44 = OUTLINED_FUNCTION_23_3();
  [v44 v45];
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x282200938](v46);
}

uint64_t sub_2310A541C()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  v5 = v4;
  OUTLINED_FUNCTION_2_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v5 + 512) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 520) = v3;
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2310A5C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_152();

  OUTLINED_FUNCTION_33_3();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_85();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_2310A5D24()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 544) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2310A5E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  v14 = *(v12 + 536);

  v16 = MEMORY[0x277D84F90];
  *(v12 + 328) = MEMORY[0x277D84F90];
  v17 = *(v12 + 496);
  *(v12 + 488) = v16;
  v18 = *(v12 + 480);
  if (v17 == v18)
  {
    if (sub_23106FF58(MEMORY[0x277D84F90]))
    {
      OUTLINED_FUNCTION_140();
      sub_231158238();
      v19 = sub_2311592C8();
      if (OUTLINED_FUNCTION_60_2(v19))
      {
        v20 = OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_56_0(v20);
        OUTLINED_FUNCTION_25_2(&dword_23103C000, v21, v22, "Finished generating searchable items, triggering final index");
        OUTLINED_FUNCTION_40();
        MEMORY[0x2319267C0]();
      }

      OUTLINED_FUNCTION_64_1();
      v23 = OUTLINED_FUNCTION_51_1();
      v13(v23);
      v24 = sub_231054A0C(0, &qword_280CCAF38, 0x277CC34B0);
      v25 = OUTLINED_FUNCTION_119(v24);
      OUTLINED_FUNCTION_147(v25);
      OUTLINED_FUNCTION_52_1();
      *(v12 + 80) = v26;
      OUTLINED_FUNCTION_22_7();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
      OUTLINED_FUNCTION_6_5(v27);
      OUTLINED_FUNCTION_74(COERCE_DOUBLE(1107296256));
      OUTLINED_FUNCTION_4_5();
      v28 = OUTLINED_FUNCTION_23_3();
      [v28 v29];
      OUTLINED_FUNCTION_39_1();

      return MEMORY[0x282200938](v15);
    }

    OUTLINED_FUNCTION_70_1();

    v43 = sub_231158238();
    v44 = sub_2311592B8();
    if (OUTLINED_FUNCTION_20_2(v44))
    {
      OUTLINED_FUNCTION_40_4();
      v45 = swift_slowAlloc();
      OUTLINED_FUNCTION_61_3(v45, 3.852e-34);
      OUTLINED_FUNCTION_17_3(&dword_23103C000, v46, v47, "Done indexing %ld items");
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
    }

    else
    {
    }

    v48 = OUTLINED_FUNCTION_10_12();
    v49(v48);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_39_1();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
  }

  if (v17 >= v18)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 496) = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      OUTLINED_FUNCTION_28_5(*(v12 + 336) + 56 * v17);

      OUTLINED_FUNCTION_0_9();
      a9 = v31;
      swift_task_alloc();
      OUTLINED_FUNCTION_27_1();
      *(v12 + 504) = v32;
      *v32 = v33;
      OUTLINED_FUNCTION_8_11(v32);
      OUTLINED_FUNCTION_39_1();

      return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
    }
  }

  __break(1u);
  return MEMORY[0x282200938](v15);
}

uint64_t sub_2310A6148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  v11 = *(v10 + 536);
  v12 = *(v10 + 520);
  swift_willThrow();

  OUTLINED_FUNCTION_152();

  OUTLINED_FUNCTION_33_3();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_85();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_2310A620C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 560) = *(v3 + 112);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310A6308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();

  OUTLINED_FUNCTION_70_1();

  v11 = sub_231158238();
  v12 = sub_2311592B8();
  if (OUTLINED_FUNCTION_20_2(v12))
  {
    OUTLINED_FUNCTION_40_4();
    v13 = swift_slowAlloc();
    OUTLINED_FUNCTION_61_3(v13, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v14, v15, "Done indexing %ld items");
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
  }

  v16 = OUTLINED_FUNCTION_10_12();
  v17(v16);

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_85();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_2310A6418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  v11 = *(v10 + 552);
  swift_willThrow();

  OUTLINED_FUNCTION_33_3();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_85();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_2310A64C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[41] = a5;
  v6[42] = v5;
  v6[39] = a3;
  v6[40] = a4;
  v6[37] = a1;
  v6[38] = a2;
  v7 = sub_231158258();
  v6[43] = v7;
  v6[44] = *(v7 - 8);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310A65D0, 0, 0);
}

uint64_t sub_2310A65D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  v12[52] = *MEMORY[0x277D7A4C8];
  sub_2311581C8();

  v14 = sub_231158238();
  v15 = sub_2311592C8();
  if (OUTLINED_FUNCTION_20_2(v15))
  {
    OUTLINED_FUNCTION_40_4();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_101(v16, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v17, v18, "Starting indexing %ld items");
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
  }

  v19 = v12[37];
  OUTLINED_FUNCTION_115();
  v12[53] = v20;
  v12[54] = v21;
  v20();
  v22 = MEMORY[0x277D84F90];
  v12[36] = MEMORY[0x277D84F90];
  v23 = *(v19 + 16);
  v12[55] = v23;
  v12[56] = v22;
  if (v23)
  {
    v24 = v12[37];
    v25 = *(v24 + 40);
    v12[57] = v25;
    v12[58] = 1;
    v12[34] = *(v24 + 32);
    v12[35] = v25;

    OUTLINED_FUNCTION_0_9();
    a9 = v26;
    swift_task_alloc();
    OUTLINED_FUNCTION_27_1();
    v12[59] = v27;
    *v27 = v28;
    OUTLINED_FUNCTION_7_12(v27);
    OUTLINED_FUNCTION_39_1();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
  }

  if (!sub_23106FF58(MEMORY[0x277D84F90]))
  {

    OUTLINED_FUNCTION_69_1();

    v50 = sub_231158238();
    v51 = sub_2311592B8();
    if (OUTLINED_FUNCTION_20_2(v51))
    {
      OUTLINED_FUNCTION_40_4();
      v52 = swift_slowAlloc();
      OUTLINED_FUNCTION_144(v52, 3.852e-34);
      OUTLINED_FUNCTION_17_3(&dword_23103C000, v53, v54, "Done indexing %ld items");
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
    }

    else
    {
    }

    v55 = OUTLINED_FUNCTION_9_12();
    v56(v55);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_39_1();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_137();
  sub_231158238();
  v37 = sub_2311592C8();
  if (OUTLINED_FUNCTION_60_2(v37))
  {
    v38 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_56_0(v38);
    OUTLINED_FUNCTION_25_2(&dword_23103C000, v39, v40, "Finished generating searchable items, triggering final index");
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  OUTLINED_FUNCTION_63_2();
  v41 = OUTLINED_FUNCTION_51_1();
  v13(v41);
  v42 = sub_231054A0C(0, &qword_280CCAF38, 0x277CC34B0);
  v43 = OUTLINED_FUNCTION_119(v42);
  OUTLINED_FUNCTION_145(v43);
  OUTLINED_FUNCTION_52_1();
  v12[10] = v44;
  OUTLINED_FUNCTION_21_9();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  OUTLINED_FUNCTION_6_5(v45);
  OUTLINED_FUNCTION_74(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_4_5();
  v46 = OUTLINED_FUNCTION_23_3();
  [v46 v47];
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x282200938](v48);
}

uint64_t sub_2310A6930()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  v5 = v4;
  OUTLINED_FUNCTION_2_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v5 + 480) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 488) = v3;
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2310A7158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();

  OUTLINED_FUNCTION_32_5();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_85();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_2310A71F8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 512) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2310A7300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  v14 = v12[63];
  v15 = v12[61];

  v17 = MEMORY[0x277D84F90];
  v12[36] = MEMORY[0x277D84F90];
  v18 = v12[58];
  v12[56] = v17;
  v19 = v12[55];
  if (v18 == v19)
  {
    if (sub_23106FF58(MEMORY[0x277D84F90]))
    {
      OUTLINED_FUNCTION_137();
      sub_231158238();
      v20 = sub_2311592C8();
      if (OUTLINED_FUNCTION_60_2(v20))
      {
        v21 = OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_56_0(v21);
        OUTLINED_FUNCTION_25_2(&dword_23103C000, v22, v23, "Finished generating searchable items, triggering final index");
        OUTLINED_FUNCTION_40();
        MEMORY[0x2319267C0]();
      }

      OUTLINED_FUNCTION_63_2();
      v24 = OUTLINED_FUNCTION_51_1();
      v13(v24);
      v25 = sub_231054A0C(0, &qword_280CCAF38, 0x277CC34B0);
      v26 = OUTLINED_FUNCTION_119(v25);
      OUTLINED_FUNCTION_145(v26);
      OUTLINED_FUNCTION_52_1();
      v12[10] = v27;
      OUTLINED_FUNCTION_21_9();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
      OUTLINED_FUNCTION_6_5(v28);
      OUTLINED_FUNCTION_74(COERCE_DOUBLE(1107296256));
      OUTLINED_FUNCTION_4_5();
      v29 = OUTLINED_FUNCTION_23_3();
      [v29 v30];
      OUTLINED_FUNCTION_39_1();

      return MEMORY[0x282200938](v16);
    }

    OUTLINED_FUNCTION_69_1();

    v47 = sub_231158238();
    v48 = sub_2311592B8();
    if (OUTLINED_FUNCTION_20_2(v48))
    {
      OUTLINED_FUNCTION_40_4();
      v49 = swift_slowAlloc();
      OUTLINED_FUNCTION_61_3(v49, 3.852e-34);
      OUTLINED_FUNCTION_17_3(&dword_23103C000, v50, v51, "Done indexing %ld items");
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
    }

    else
    {
    }

    v52 = OUTLINED_FUNCTION_9_12();
    v53(v52);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_39_1();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
  }

  if (v18 >= v19)
  {
    __break(1u);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_175(v18);
    v12[57] = v16;
    v12[58] = v33;
    if (!v34)
    {
      v12[34] = *(v32 + 32);
      v12[35] = v16;

      OUTLINED_FUNCTION_0_9();
      a9 = v35;
      swift_task_alloc();
      OUTLINED_FUNCTION_27_1();
      v12[59] = v36;
      *v36 = v37;
      OUTLINED_FUNCTION_7_12(v36);
      OUTLINED_FUNCTION_39_1();

      return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
    }
  }

  __break(1u);
  return MEMORY[0x282200938](v16);
}

uint64_t sub_2310A75EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  v11 = *(v10 + 504);
  v12 = *(v10 + 488);
  swift_willThrow();

  OUTLINED_FUNCTION_32_5();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_85();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_2310A76A4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 528) = *(v3 + 112);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310A77A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();

  OUTLINED_FUNCTION_69_1();

  v11 = sub_231158238();
  v12 = sub_2311592B8();
  if (OUTLINED_FUNCTION_20_2(v12))
  {
    OUTLINED_FUNCTION_40_4();
    v13 = swift_slowAlloc();
    OUTLINED_FUNCTION_61_3(v13, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v14, v15, "Done indexing %ld items");
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
  }

  v16 = OUTLINED_FUNCTION_9_12();
  v17(v16);

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_85();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_2310A78B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  v11 = *(v10 + 520);
  swift_willThrow();

  OUTLINED_FUNCTION_32_5();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_85();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_2310A7958()
{
  OUTLINED_FUNCTION_4_1();
  v1[39] = v2;
  v1[40] = v0;
  v1[37] = v3;
  v1[38] = v4;
  v1[35] = v5;
  v1[36] = v6;
  v7 = sub_231158258();
  v1[41] = v7;
  OUTLINED_FUNCTION_5(v7);
  v1[42] = v8;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2310A7A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  v12[50] = *MEMORY[0x277D7A4C8];
  sub_2311581C8();

  v14 = sub_231158238();
  v15 = sub_2311592C8();
  if (OUTLINED_FUNCTION_20_2(v15))
  {
    OUTLINED_FUNCTION_40_4();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_101(v16, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v17, v18, "Starting indexing %ld items");
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
  }

  v19 = v12[35];
  OUTLINED_FUNCTION_115();
  v12[51] = v20;
  v12[52] = v21;
  v20();
  v22 = MEMORY[0x277D84F90];
  v12[34] = MEMORY[0x277D84F90];
  v23 = *(v19 + 16);
  v12[53] = v23;
  v12[54] = v22;
  if (v23)
  {
    v24 = sub_231159228();
    OUTLINED_FUNCTION_19(v24);
    v12[55] = 1;
    OUTLINED_FUNCTION_4_11();
    a9 = v25;
    swift_task_alloc();
    OUTLINED_FUNCTION_27_1();
    v12[56] = v26;
    *v26 = v27;
    v26[1] = sub_2310A7E00;
    OUTLINED_FUNCTION_39_1();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }

  if (!sub_23106FF58(MEMORY[0x277D84F90]))
  {

    OUTLINED_FUNCTION_71_1();

    v49 = sub_231158238();
    v50 = sub_2311592B8();
    if (OUTLINED_FUNCTION_20_2(v50))
    {
      OUTLINED_FUNCTION_40_4();
      v51 = swift_slowAlloc();
      OUTLINED_FUNCTION_144(v51, 3.852e-34);
      OUTLINED_FUNCTION_17_3(&dword_23103C000, v52, v53, "Done indexing %ld items");
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
    }

    else
    {
    }

    v54 = OUTLINED_FUNCTION_11_9();
    v55(v54);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_39_1();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_149();
  sub_231158238();
  v36 = sub_2311592C8();
  if (OUTLINED_FUNCTION_60_2(v36))
  {
    v37 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_56_0(v37);
    OUTLINED_FUNCTION_25_2(&dword_23103C000, v38, v39, "Finished generating searchable items, triggering final index");
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  OUTLINED_FUNCTION_65_1();
  v40 = OUTLINED_FUNCTION_51_1();
  v13(v40);
  v41 = sub_231054A0C(0, &qword_280CCAF38, 0x277CC34B0);
  v42 = OUTLINED_FUNCTION_119(v41);
  OUTLINED_FUNCTION_146(v42);
  OUTLINED_FUNCTION_52_1();
  v12[10] = v43;
  OUTLINED_FUNCTION_23_7();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  OUTLINED_FUNCTION_6_5(v44);
  OUTLINED_FUNCTION_74(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_4_5();
  v45 = OUTLINED_FUNCTION_23_3();
  [v45 v46];
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x282200938](v47);
}

uint64_t sub_2310A7E00()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  v5 = v4;
  OUTLINED_FUNCTION_2_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v5 + 456) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 480) = v3;
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2310A7F14()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 472) = *(v3 + 112);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310A8010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();

  OUTLINED_FUNCTION_71_1();

  v11 = sub_231158238();
  v12 = sub_2311592B8();
  if (OUTLINED_FUNCTION_20_2(v12))
  {
    OUTLINED_FUNCTION_40_4();
    v13 = swift_slowAlloc();
    OUTLINED_FUNCTION_61_3(v13, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v14, v15, "Done indexing %ld items");
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
  }

  v16 = OUTLINED_FUNCTION_11_9();
  v17(v16);

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_85();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_2310A8120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  v11 = *(v10 + 464);
  swift_willThrow();

  OUTLINED_FUNCTION_35_3();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_85();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_2310A8900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_35_3();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_85();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_2310A8998()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 504) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2310A8AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  v14 = *(v12 + 480);

  v16 = MEMORY[0x277D84F90];
  *(v12 + 272) = MEMORY[0x277D84F90];
  v17 = *(v12 + 440);
  *(v12 + 432) = v16;
  v18 = *(v12 + 424);
  if (v17 == v18)
  {
    if (sub_23106FF58(MEMORY[0x277D84F90]))
    {
      OUTLINED_FUNCTION_149();
      sub_231158238();
      v19 = sub_2311592C8();
      if (OUTLINED_FUNCTION_60_2(v19))
      {
        v20 = OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_56_0(v20);
        OUTLINED_FUNCTION_25_2(&dword_23103C000, v21, v22, "Finished generating searchable items, triggering final index");
        OUTLINED_FUNCTION_40();
        MEMORY[0x2319267C0]();
      }

      OUTLINED_FUNCTION_65_1();
      v23 = OUTLINED_FUNCTION_51_1();
      v13(v23);
      v24 = sub_231054A0C(0, &qword_280CCAF38, 0x277CC34B0);
      v25 = OUTLINED_FUNCTION_119(v24);
      OUTLINED_FUNCTION_146(v25);
      OUTLINED_FUNCTION_52_1();
      *(v12 + 80) = v26;
      OUTLINED_FUNCTION_23_7();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
      OUTLINED_FUNCTION_6_5(v27);
      OUTLINED_FUNCTION_74(COERCE_DOUBLE(1107296256));
      OUTLINED_FUNCTION_4_5();
      v28 = OUTLINED_FUNCTION_23_3();
      [v28 v29];
      OUTLINED_FUNCTION_39_1();

      return MEMORY[0x282200938](v15);
    }

    OUTLINED_FUNCTION_71_1();

    v42 = sub_231158238();
    v43 = sub_2311592B8();
    if (OUTLINED_FUNCTION_20_2(v43))
    {
      OUTLINED_FUNCTION_40_4();
      v44 = swift_slowAlloc();
      OUTLINED_FUNCTION_61_3(v44, 3.852e-34);
      OUTLINED_FUNCTION_17_3(&dword_23103C000, v45, v46, "Done indexing %ld items");
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
    }

    else
    {
    }

    v47 = OUTLINED_FUNCTION_11_9();
    v48(v47);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_39_1();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }

  if (v17 >= v18)
  {
    __break(1u);
  }

  else
  {
    v15 = sub_231159228() - 8;
    *(v12 + 440) = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      OUTLINED_FUNCTION_4_11();
      a9 = v31;
      v32 = swift_task_alloc();
      *(v12 + 448) = v32;
      *v32 = v12;
      OUTLINED_FUNCTION_57_2(v32);
      OUTLINED_FUNCTION_39_1();

      return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
    }
  }

  __break(1u);
  return MEMORY[0x282200938](v15);
}

uint64_t sub_2310A8DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  v11 = *(v10 + 496);
  v12 = *(v10 + 480);
  swift_willThrow();

  OUTLINED_FUNCTION_35_3();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_85();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_2310A8E6C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2310B2D14(result, 1, sub_2310CC07C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2310A8F44(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2310B2D14(result, 1, sub_2310CC18C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2310A9018(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2310B2D14(result, 1, sub_2310CC36C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CA60, qword_231164E50);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_2310A9108(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = *(*v2 + 16);
  if (__OFADD__(v6, v5))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2310B2D14(v6 + v5, 1, sub_2310CC36C);
  v1 = *v2;
  v7 = *(*v2 + 16);
  v8 = (*(*v2 + 24) >> 1) - v7;
  v9 = sub_231093880(&v45, *v2 + 40 * v7 + 32, v8, a1);
  if (v9 < v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v9);
    v13 = v9 + v11;
    if (v12)
    {
      __break(1u);
LABEL_24:
      *(v1 + 16) = v10 + v3 + 1;
      goto LABEL_7;
    }

    *(v1 + 16) = v13;
  }

  if (v9 != v8)
  {
LABEL_7:

    *v2 = v1;
    return;
  }

LABEL_10:
  if (!v46)
  {
    goto LABEL_7;
  }

  v14 = v46 - 1;
  if (__OFSUB__(v46, 1))
  {
    goto LABEL_26;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v14 < *(v45 + 16))
  {
    v15 = *(v1 + 16);
    v16 = v45 + 40 * v14;
    v17 = *(v16 + 48);
    v18 = *(v16 + 56);
    v19 = *(v16 + 64);
    v20 = *(v16 + 65);
    OUTLINED_FUNCTION_128();
    v22 = v21;
    v24 = v23;
    sub_231079464(v25, v26, v27);
    v10 = v15;
    v28 = v22;
    v38 = v24 + 25;
    v39 = v24;
LABEL_15:
    v41 = v28;
    v42 = *(v1 + 24) >> 1;
    v40 = v10;
    if (v42 < v10 + 1)
    {
      sub_2310CC36C();
      v10 = v40;
      v28 = v41;
      v1 = v37;
      v42 = *(v37 + 24) >> 1;
    }

    v3 = 0;
    v29 = 40 * v10;
    v30 = (v38 + 40 * v28);
    for (i = -1; ; --i)
    {
      if (v10 + v3 >= v42)
      {
        *(v1 + 16) = v10 + v3;
        v28 -= v3;
        v10 += v3;
        goto LABEL_15;
      }

      v32 = v1 + v29;
      *(v32 + 32) = v44;
      *(v32 + 40) = v43;
      *(v32 + 48) = v17;
      *(v32 + 56) = v18;
      *(v32 + 64) = v19;
      *(v32 + 65) = v20 & 1;
      if (v28 == v3)
      {
        goto LABEL_24;
      }

      if (v28 + i >= *(v39 + 16))
      {
        break;
      }

      v17 = *(v30 - 17);
      v18 = *(v30 - 9);
      v19 = *(v30 - 1);
      v33 = *v30;
      v30 -= 40;
      v20 = v33;
      OUTLINED_FUNCTION_128();
      sub_231079464(v34, v35, v36);
      v10 = v40;
      v28 = v41;
      ++v3;
      v29 += 40;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_2310A9360(unint64_t a1)
{
  v3 = sub_23106FF58(a1);
  v4 = sub_23106FF58(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2310B2C74(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2310B2D8C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2310A940C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2310B2D14(result, 1, sub_2310CC5C8);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_231159228();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2310A9520()
{
  OUTLINED_FUNCTION_4_1();
  *(v1 + 336) = v2;
  *(v1 + 344) = v0;
  *(v1 + 408) = v3;
  *(v1 + 320) = v4;
  *(v1 + 328) = v5;
  v6 = sub_231158C58();
  *(v1 + 352) = v6;
  OUTLINED_FUNCTION_5(v6);
  *(v1 + 360) = v7;
  *(v1 + 368) = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2310A95D8()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_181();
  *(v0 + 376) = v1;
  OUTLINED_FUNCTION_132();
  v2 = swift_task_alloc();
  *(v0 + 384) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_90(v2);

  return v4(v3);
}

uint64_t sub_2310A96DC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 392) = v5;
  *(v3 + 400) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_2310A97E4()
{
  v1 = *(v0 + 320);
  if (*(v0 + 408))
  {
    v2 = *(v1 + 16);
    v119 = *(v0 + 328);
    if (v2)
    {
      v3 = *(v0 + 392);
      v4 = (v1 + 40);
      v5 = MEMORY[0x277D84F90];
      v120 = v3;
      v122 = MEMORY[0x277D84F90];
      v6 = MEMORY[0x277D84F90];
      do
      {
        v8 = *(v4 - 1);
        v7 = *v4;
        v9 = *(v3 + 16);

        if (v9 && (, v9 = sub_23105FECC(v8, v7), v11 = v10, , (v11 & 1) != 0))
        {
          v12 = OUTLINED_FUNCTION_164(*(v3 + 56));
          sub_2310548A0(v12, v0 + 56);
          sub_231093C48((v0 + 56), v0 + 16);
          v13 = *(v0 + 40);
          v14 = *(v0 + 48);
          __swift_project_boxed_opaque_existential_0((v0 + 16), v13);
          *(v0 + 120) = &type metadata for ToolTransformer.Item;
          *(v0 + 128) = &off_2845D9018;
          *(v0 + 96) = v8;
          *(v0 + 104) = v7;

          v15 = sub_231090444((v0 + 96), v13, v14);
          __swift_destroy_boxed_opaque_existential_0((v0 + 96));
          if (v15)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = OUTLINED_FUNCTION_17_8();
              sub_2310CC18C(v35, v36, v37, v6);
              v6 = v38;
            }

            v3 = v120;
            v16 = *(v6 + 16);
            OUTLINED_FUNCTION_107();
            if (v18)
            {
              v39 = OUTLINED_FUNCTION_3_13(v17);
              sub_2310CC18C(v39, v40, v41, v6);
              v6 = v19;
            }

            else
            {
              v19 = v6;
            }
          }

          else
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v23 = v122;
            }

            else
            {
              v42 = OUTLINED_FUNCTION_17_8();
              sub_2310CC18C(v42, v43, v44, v45);
              v23 = v46;
            }

            v3 = v120;
            v16 = *(v23 + 16);
            OUTLINED_FUNCTION_107();
            if (v18)
            {
              v47 = OUTLINED_FUNCTION_3_13(v25);
              sub_2310CC18C(v47, v48, v49, v50);
              v122 = v19;
            }

            else
            {
              v122 = v24;
              v19 = v24;
            }
          }

          *(v19 + 16) = v15;
          v26 = v19 + 16 * v16;
          *(v26 + 32) = v8;
          *(v26 + 40) = v7;
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = OUTLINED_FUNCTION_17_8();
            sub_2310CC18C(v27, v28, v29, v5);
            v5 = v30;
          }

          v20 = *(v5 + 16);
          OUTLINED_FUNCTION_107();
          if (v18)
          {
            v31 = OUTLINED_FUNCTION_3_13(v21);
            sub_2310CC18C(v31, v32, v33, v5);
            v5 = v34;
          }

          *(v5 + 16) = v9;
          v22 = v5 + 16 * v20;
          *(v22 + 32) = v8;
          *(v22 + 40) = v7;
        }

        v4 += 2;
        --v2;
      }

      while (v2);
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
      v122 = MEMORY[0x277D84F90];
    }

    v121 = 0xE700000000000000;
    OUTLINED_FUNCTION_163();
  }

  else
  {
    v51 = *(v1 + 16);
    if (v51)
    {
      v52 = *(v0 + 392);
      v53 = (v1 + 40);
      v5 = MEMORY[0x277D84F90];
      v122 = MEMORY[0x277D84F90];
      v54 = MEMORY[0x277D84F90];
      do
      {
        v55 = *(v53 - 1);
        v56 = *v53;
        v57 = *(v52 + 16);

        if (v57 && (, v57 = sub_23105FECC(v55, v56), v59 = v58, , (v59 & 1) != 0))
        {
          v60 = OUTLINED_FUNCTION_164(*(v52 + 56));
          sub_2310548A0(v60, v0 + 176);
          sub_231093C48((v0 + 176), v0 + 136);
          v61 = *(v0 + 160);
          v62 = *(v0 + 168);
          __swift_project_boxed_opaque_existential_0((v0 + 136), v61);
          *(v0 + 240) = &type metadata for ToolTransformer.Item;
          *(v0 + 248) = &off_2845D9018;
          *(v0 + 216) = v55;
          *(v0 + 224) = v56;

          v63 = sub_231090444((v0 + 216), v61, v62);
          __swift_destroy_boxed_opaque_existential_0((v0 + 216));

          if (v63)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v85 = OUTLINED_FUNCTION_17_8();
              sub_2310CC18C(v85, v86, v87, v54);
              v54 = v88;
            }

            v64 = *(v54 + 16);
            OUTLINED_FUNCTION_107();
            if (v18)
            {
              v89 = OUTLINED_FUNCTION_3_13(v65);
              sub_2310CC18C(v89, v90, v91, v54);
              v54 = v66;
            }

            else
            {
              v66 = v54;
            }
          }

          else
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v70 = v122;
            }

            else
            {
              v92 = OUTLINED_FUNCTION_17_8();
              sub_2310CC18C(v92, v93, v94, v95);
              v70 = v96;
            }

            v64 = *(v70 + 16);
            OUTLINED_FUNCTION_107();
            if (v18)
            {
              v97 = OUTLINED_FUNCTION_3_13(v72);
              sub_2310CC18C(v97, v98, v99, v100);
              v122 = v66;
            }

            else
            {
              v122 = v71;
              v66 = v71;
            }
          }

          *(v66 + 16) = v63;
          v73 = v66 + 16 * v64;
          *(v73 + 32) = v55;
          *(v73 + 40) = v56;

          v74 = sub_23105FECC(v55, v56);
          v76 = v75;

          if (v76)
          {
            swift_isUniquelyReferenced_nonNull_native();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C558, &qword_231164430);
            sub_231159698();

            sub_231093C48((*(v52 + 56) + 40 * v74), v0 + 256);
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DD3C560, &qword_231164438);
            sub_2311596B8();
          }

          else
          {

            *(v0 + 288) = 0;
            *(v0 + 256) = 0u;
            *(v0 + 272) = 0u;
          }

          sub_231093B90(v0 + 256, &qword_27DD3C550, &qword_231164428);
          __swift_destroy_boxed_opaque_existential_0((v0 + 136));
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = OUTLINED_FUNCTION_17_8();
            sub_2310CC18C(v77, v78, v79, v5);
            v5 = v80;
          }

          v67 = *(v5 + 16);
          OUTLINED_FUNCTION_107();
          if (v18)
          {
            v81 = OUTLINED_FUNCTION_3_13(v68);
            sub_2310CC18C(v81, v82, v83, v5);
            v5 = v84;
          }

          *(v5 + 16) = v57;
          v69 = v5 + 16 * v67;
          *(v69 + 32) = v55;
          *(v69 + 40) = v56;
        }

        v53 += 2;
        --v51;
      }

      while (v51);
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
      v122 = MEMORY[0x277D84F90];
    }

    v119 = sub_2310927B4(v102);
    v121 = 0xE400000000000000;
    v101 = 1819047270;
  }

  v118 = v101;
  v104 = *(v0 + 360);
  v103 = *(v0 + 368);
  v117 = *(v0 + 352);
  sub_231158B68();
  sub_231158B58();
  *(v0 + 296) = *(v5 + 16);
  v105 = sub_2311597C8();
  v115 = v106;
  v116 = v105;
  *(v0 + 304) = *(v122 + 16);
  v107 = sub_2311597C8();
  v109 = v108;
  *(v0 + 312) = *(v119 + 16);
  v110 = sub_2311597C8();
  *v103 = v118;
  v103[1] = v121;
  v103[2] = v116;
  v103[3] = v115;
  v103[4] = v107;
  v103[5] = v109;
  v103[6] = v110;
  v103[7] = v111;
  OUTLINED_FUNCTION_127();
  v112(v103);
  sub_231158B48();

  (*(v104 + 8))(v103, v117);

  OUTLINED_FUNCTION_21_4();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_2310A9EFC()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310A9F60(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 336) = a4;
  *(v5 + 344) = v4;
  *(v5 + 488) = a3;
  *(v5 + 320) = a1;
  *(v5 + 328) = a2;
  v6 = sub_231159228();
  *(v5 + 352) = v6;
  *(v5 + 360) = *(v6 - 8);
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  v7 = sub_231158C58();
  *(v5 + 432) = v7;
  *(v5 + 440) = *(v7 - 8);
  *(v5 + 448) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310AA0D8, 0, 0);
}

uint64_t sub_2310AA0D8()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_181();
  *(v0 + 456) = v1;
  OUTLINED_FUNCTION_132();
  v2 = swift_task_alloc();
  *(v0 + 464) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_90(v2);

  return v4(v3);
}

uint64_t sub_2310AA1DC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 472) = v5;
  *(v3 + 480) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2310AA2E4()
{
  v1 = *(v0 + 320);
  if ((*(v0 + 488) & 1) == 0)
  {
    v39 = *(v1 + 16);
    if (!v39)
    {
      v112 = MEMORY[0x277D84F90];
      v110 = MEMORY[0x277D84F90];
LABEL_58:

      v85 = sub_2310927B4(v87);
      v104 = 0xE400000000000000;
      v86 = 1819047270;
      goto LABEL_59;
    }

    v40 = *(v0 + 360);
    v42 = *(v40 + 16);
    v40 += 16;
    v41 = v42;
    v43 = v1 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v0 + 472);
    v110 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    v109 = v42;
    v111 = *(v40 + 56);
    while (1)
    {
      v41(*(v0 + 424), v43, *(v0 + 352));
      v45 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      if (!*(v44 + 16))
      {
        break;
      }

      sub_23105FECC(v45, v46);
      v48 = v47;

      if ((v48 & 1) == 0)
      {
        goto LABEL_37;
      }

      v49 = *(v0 + 424);
      v50 = *(v0 + 352);
      v51 = OUTLINED_FUNCTION_164(*(v44 + 56));
      sub_2310548A0(v51, v0 + 176);
      sub_231093C48((v0 + 176), v0 + 136);
      v52 = v41;
      v53 = *(v0 + 160);
      v54 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_0((v0 + 136), v53);
      *(v0 + 240) = v50;
      *(v0 + 248) = &protocol witness table for WFDatabase.SpotlightSyncableWorkflow;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
      v52(boxed_opaque_existential_1, v49, v50);
      LOBYTE(v53) = sub_231090444((v0 + 216), v53, v54);
      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
      v56 = *(v0 + 424);
      v57 = *(v0 + 352);
      if (v53)
      {
        v52(*(v0 + 408), v56, v57);
        v58 = v105;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_17_8();
          sub_2310CC5C8();
          v58 = v83;
        }

        v60 = *(v58 + 16);
        v59 = *(v58 + 24);
        v61 = v60 + 1;
        if (v60 >= v59 >> 1)
        {
          OUTLINED_FUNCTION_55_3(v59);
          sub_2310CC5C8();
          v105 = v62;
        }

        else
        {
          v105 = v58;
          v62 = v58;
        }
      }

      else
      {
        v52(*(v0 + 400), v56, v57);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v68 = v110;
        }

        else
        {
          OUTLINED_FUNCTION_17_8();
          sub_2310CC5C8();
          v68 = v84;
        }

        v70 = *(v68 + 16);
        v69 = *(v68 + 24);
        v61 = v70 + 1;
        if (v70 >= v69 >> 1)
        {
          OUTLINED_FUNCTION_55_3(v69);
          sub_2310CC5C8();
          v110 = v62;
        }

        else
        {
          v110 = v68;
          v62 = v68;
        }
      }

      *(v62 + 16) = v61;
      OUTLINED_FUNCTION_171();
      v71();
      v72 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      v74 = sub_23105FECC(v72, v73);
      v76 = v75;

      v77 = *(v0 + 424);
      v78 = *(v0 + 352);
      if (v76)
      {
        swift_isUniquelyReferenced_nonNull_native();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C558, &qword_231164430);
        sub_231159698();

        sub_231093C48((*(v44 + 56) + 40 * v74), v0 + 256);
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DD3C560, &qword_231164438);
        sub_2311596B8();
        OUTLINED_FUNCTION_131();
        v79(v77, v78);
      }

      else
      {
        OUTLINED_FUNCTION_131();
        v80(v77, v78);
        *(v0 + 288) = 0;
        *(v0 + 256) = 0u;
        *(v0 + 272) = 0u;
      }

      v41 = v109;
      sub_231093B90(v0 + 256, &qword_27DD3C550, &qword_231164428);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      v66 = v111;
LABEL_50:
      v43 += v66;
      if (!--v39)
      {

        goto LABEL_58;
      }
    }

LABEL_37:
    v41(*(v0 + 416), *(v0 + 424), *(v0 + 352));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_17_8();
      sub_2310CC5C8();
      v112 = v81;
    }

    v64 = *(v112 + 16);
    v63 = *(v112 + 24);
    if (v64 >= v63 >> 1)
    {
      OUTLINED_FUNCTION_3_13(v63);
      sub_2310CC5C8();
      v112 = v82;
    }

    OUTLINED_FUNCTION_131();
    v65();
    *(v112 + 16) = v64 + 1;
    v66 = v111;
    OUTLINED_FUNCTION_171();
    v67();
    v41 = v109;
    goto LABEL_50;
  }

  v2 = *(v0 + 328);
  v3 = *(v1 + 16);
  if (v3)
  {
    v102 = *(v0 + 328);
    v4 = *(v0 + 472);
    v5 = *(v0 + 360);
    v7 = *(v5 + 16);
    v5 += 16;
    v6 = v7;
    v8 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v110 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v106 = v7;
    v107 = MEMORY[0x277D84F90];
    v108 = *(v5 + 56);
    while (1)
    {
      (v6)(*(v0 + 392), v8, *(v0 + 352));
      v9 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      if (!v4[2])
      {
        break;
      }

      sub_23105FECC(v9, v10);
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_12;
      }

      v13 = *(v0 + 392);
      v14 = *(v0 + 352);
      v15 = OUTLINED_FUNCTION_164(v4[7]);
      sub_2310548A0(v15, v0 + 56);
      sub_231093C48((v0 + 56), v0 + 16);
      v16 = *(v0 + 40);
      v17 = *(v0 + 48);
      v4 = v6;
      __swift_project_boxed_opaque_existential_0((v0 + 16), v16);
      *(v0 + 120) = v14;
      *(v0 + 128) = &protocol witness table for WFDatabase.SpotlightSyncableWorkflow;
      v18 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
      (v6)(v18, v13, v14);
      v19 = sub_231090444((v0 + 96), v16, v17);
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      v20 = *(v0 + 392);
      v21 = *(v0 + 352);
      if (v19)
      {
        (v6)(*(v0 + 376), v20, v21);
        v22 = v107;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_17_8();
          sub_2310CC5C8();
          v22 = v35;
        }

        OUTLINED_FUNCTION_172();
        if (v24)
        {
          OUTLINED_FUNCTION_3_13(v23);
          sub_2310CC5C8();
          v22 = v36;
          v107 = v36;
        }

        else
        {
          v107 = v22;
        }
      }

      else
      {
        (v6)(*(v0 + 368), v20, v21);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v22 = v110;
        }

        else
        {
          OUTLINED_FUNCTION_17_8();
          sub_2310CC5C8();
          v22 = v37;
        }

        OUTLINED_FUNCTION_172();
        if (v24)
        {
          OUTLINED_FUNCTION_3_13(v30);
          sub_2310CC5C8();
          v22 = v38;
          v110 = v38;
        }

        else
        {
          v110 = v22;
        }
      }

      OUTLINED_FUNCTION_171();
      v31();
      *(v22 + 16) = v19;
      v28 = v108;
      OUTLINED_FUNCTION_131();
      v32();
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v6 = v106;
LABEL_22:
      v8 += v28;
      if (!--v3)
      {

        v2 = v102;
        goto LABEL_56;
      }
    }

LABEL_12:
    (v6)(*(v0 + 384), *(v0 + 392), *(v0 + 352));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_17_8();
      sub_2310CC5C8();
      v112 = v33;
    }

    v26 = *(v112 + 16);
    v25 = *(v112 + 24);
    if (v26 >= v25 >> 1)
    {
      OUTLINED_FUNCTION_3_13(v25);
      sub_2310CC5C8();
      v112 = v34;
    }

    OUTLINED_FUNCTION_171();
    v27();
    *(v112 + 16) = v26 + 1;
    v28 = v108;
    OUTLINED_FUNCTION_131();
    v29();
    goto LABEL_22;
  }

  v112 = MEMORY[0x277D84F90];
  v110 = MEMORY[0x277D84F90];
LABEL_56:
  v85 = v2;

  v104 = 0xE700000000000000;
  OUTLINED_FUNCTION_163();
LABEL_59:
  v103 = v86;
  v89 = *(v0 + 440);
  v88 = *(v0 + 448);
  v101 = *(v0 + 432);
  sub_231158B68();
  sub_231158B58();
  *(v0 + 296) = *(v112 + 16);
  OUTLINED_FUNCTION_51_1();
  v90 = sub_2311597C8();
  v99 = v91;
  v100 = v90;
  *(v0 + 304) = *(v110 + 16);
  OUTLINED_FUNCTION_51_1();
  v92 = sub_2311597C8();
  v94 = v93;
  *(v0 + 312) = *(v85 + 16);
  OUTLINED_FUNCTION_51_1();
  v95 = sub_2311597C8();
  *v88 = v103;
  v88[1] = v104;
  v88[2] = v100;
  v88[3] = v99;
  v88[4] = v92;
  v88[5] = v94;
  v88[6] = v95;
  v88[7] = v96;
  (*(v89 + 104))(v88, *MEMORY[0x277D73270], v101);
  sub_231158B48();

  (*(v89 + 8))(v88, v101);

  v97 = *(v0 + 8);

  return v97(v112, v110, v85);
}

uint64_t sub_2310AACF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_39_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

void sub_2310AADB4(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      OUTLINED_FUNCTION_89();
      break;
    case 1:
    case 2:
    case 3:
    case 4:
      OUTLINED_FUNCTION_46_3();
      break;
    default:
      sub_231159588();

      OUTLINED_FUNCTION_14_6();
      MEMORY[0x231924980](a1, a2);
      break;
  }
}

uint64_t sub_2310AAEC8()
{
  OUTLINED_FUNCTION_4_1();
  v1 = sub_231158C58();
  v0[5] = v1;
  OUTLINED_FUNCTION_5(v1);
  v0[6] = v2;
  v0[7] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_2310AAFAC;

  return sub_2310AB220();
}

uint64_t sub_2310AAFAC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v10();
  }
}

uint64_t sub_2310AB0C8()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0[9];
  v2 = v0[7];
  sub_231158B68();
  sub_231158B58();
  v3 = sub_231159588();
  OUTLINED_FUNCTION_159(v3, v4, v5, v6, v7, v8, v9, v10, v18, 0, 0xE000000000000000);
  OUTLINED_FUNCTION_89();
  MEMORY[0x231924980](0xD00000000000002BLL);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  sub_231159688();
  v11 = v0[3];
  *v2 = v19;
  v2[1] = v11;
  OUTLINED_FUNCTION_127();
  v12 = OUTLINED_FUNCTION_62_3();
  v13(v12);
  sub_231158B48();

  v14 = OUTLINED_FUNCTION_17();
  v15(v14);

  OUTLINED_FUNCTION_1();

  return v16();
}

uint64_t sub_2310AB220()
{
  OUTLINED_FUNCTION_4_1();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310AB2AC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC14VoiceShortcuts28ShortcutSpotlightCoordinator_databaseProvider);
  *(v0 + 40) = 0;
  v2 = [v1 databaseWithError_];
  *(v0 + 72) = v2;
  v3 = *(v0 + 40);
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    *(v0 + 16) = sub_231159248();
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    v9 = [objc_allocWithZone(MEMORY[0x277D7A1F0]) init];
    *(v0 + 80) = v9;
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *v10 = v0;
    v10[1] = sub_2310AB488;
    v11 = *(v0 + 56);
    v12 = *(v0 + 48);

    return sub_2310AB6E0(v12, v11, v0 + 16, v4, v9);
  }

  else
  {
    v6 = v3;
    sub_231157938();

    swift_willThrow();
    OUTLINED_FUNCTION_1();

    return v7();
  }
}

uint64_t sub_2310AB488()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  v2[12] = v0;

  v6 = v2[2];
  v2 += 2;
  v7 = v2[8];
  sub_231092F7C(v6, v2[1], *(v2 + 16));

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2310AB5D0()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_2310AB658()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_2310AB6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  *(v6 + 56) = *a3;
  *(v6 + 96) = *(a3 + 16);
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_2310AB70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  v14 = *(v12 + 96);
  v16 = *(v12 + 56);
  v15 = *(v12 + 64);
  v17 = *(v12 + 40);
  v18 = *(v12 + 24);
  v19 = *(v12 + 32);
  v20 = *(v12 + 16);
  v35 = *(*(v12 + 48) + OBJC_IVAR____TtC14VoiceShortcuts28ShortcutSpotlightCoordinator_queue);
  OUTLINED_FUNCTION_9_0();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_135(v21);
  v22 = swift_allocObject();
  *(v12 + 72) = v22;
  *(v22 + 16) = v13;
  *(v22 + 24) = v16;
  *(v22 + 32) = v15;
  *(v22 + 40) = v14;
  *(v22 + 48) = v19;
  *(v22 + 56) = v17;
  *(v22 + 64) = v20;
  *(v22 + 72) = v18;
  sub_2310B28B8(v16, v15, v14);
  v23 = v19;
  v24 = v17;
  sub_2310B28F4(v20, v18);
  v25 = swift_task_alloc();
  *(v12 + 80) = v25;
  *v25 = v12;
  v25[1] = sub_2310AB858;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x2821E1890](v26, v27, v28, v29, v30, v31, v32, v33, v35, a10, a11, a12);
}

uint64_t sub_2310AB858()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310AB958()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310AB9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a8;
  *(v8 + 88) = v16;
  *(v8 + 64) = a6;
  *(v8 + 72) = a7;
  *(v8 + 336) = a5;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 40) = a2;
  *(v8 + 96) = type metadata accessor for ShortcutTransformer(0);
  *(v8 + 104) = swift_task_alloc();
  v9 = sub_231158368();
  *(v8 + 112) = v9;
  *(v8 + 120) = *(v9 - 8);
  *(v8 + 128) = swift_task_alloc();
  v10 = sub_231157A38();
  *(v8 + 136) = v10;
  *(v8 + 144) = *(v10 - 8);
  *(v8 + 152) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C310, &unk_231163B00);
  *(v8 + 160) = v11;
  *(v8 + 168) = *(v11 - 8);
  *(v8 + 176) = swift_task_alloc();
  v12 = sub_231158538();
  *(v8 + 184) = v12;
  *(v8 + 192) = *(v12 - 8);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCE0, &qword_231161D10);
  *(v8 + 216) = swift_task_alloc();
  v13 = sub_231158418();
  *(v8 + 224) = v13;
  *(v8 + 232) = *(v13 - 8);
  *(v8 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310ABC7C, 0, 0);
}

uint64_t sub_2310ABC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_166();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v19[31] = Strong;
  if (!Strong)
  {
LABEL_4:
    OUTLINED_FUNCTION_106();

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_32();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  OUTLINED_FUNCTION_173();
  sub_231158888();
  v21 = sub_231158878();
  v19[32] = v21;
  v22 = v21;
  v23 = v19[24];
  v24 = v19[22];
  a13 = v19[27];
  v57 = v19[23];
  v25 = v19[21];
  a9 = v19[20];
  a10 = v19[25];
  a12 = v19[19];
  sub_231158508();
  swift_getKeyPath();
  a11 = v22;
  OUTLINED_FUNCTION_26_1();
  swift_allocObject();
  OUTLINED_FUNCTION_14_6();
  *(v26 + 16) = 0xD00000000000001FLL;
  *(v26 + 24) = v27;
  *v24 = v26;
  OUTLINED_FUNCTION_127();
  v28(v24);
  sub_231051AE0();
  sub_231051E04(&qword_27DD3BCE8, &unk_27DD3C310, &unk_231163B00, MEMORY[0x277D721D8]);
  sub_2311588F8();

  (*(v25 + 8))(v24, a9);
  v29 = *(v23 + 8);
  v30 = v57;
  a14 = v23 + 8;
  v29(a10, v30);
  sub_231157A28();
  sub_2311586D8();
  v31 = v19[27];
  v32 = v19[28];
  v33 = v19[26];
  v34 = v19[23];
  (*(v19[18] + 8))(v19[19], v19[17]);
  v29(v33, v34);
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    v35 = v19[27];

    sub_231093B90(v35, &qword_27DD3BCE0, &qword_231161D10);
    goto LABEL_4;
  }

  v46 = v19[15];
  v45 = v19[16];
  v47 = v19[14];
  (*(v19[29] + 32))(v19[30], v19[27], v19[28]);
  (*(v46 + 104))(v45, *MEMORY[0x277D72200], v47);
  v48 = swift_task_alloc();
  v19[33] = v48;
  *v48 = v19;
  v48[1] = sub_2310AC09C;
  OUTLINED_FUNCTION_32();

  return v53(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, v22, a12, a13, sub_2310A9F60, a15, a16, a17, a18);
}

uint64_t sub_2310AC09C()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v9[34] = v7;
  v9[35] = v8;
  v9[36] = v10;
  v9[37] = v0;

  (*(v2[15] + 8))(v2[16], v2[14]);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2310AC1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  v11 = v10[31];
  v13 = v10[12];
  v12 = v10[13];
  v15 = v10[10];
  v14 = v10[11];
  v17 = v10[8];
  v16 = v10[9];
  (*(v10[29] + 16))(v12, v10[30], v10[28]);
  *(v12 + *(v13 + 20)) = v17;
  *(v12 + *(v13 + 24)) = v16;
  v18 = *(v11 + OBJC_IVAR____TtC14VoiceShortcuts28ShortcutSpotlightCoordinator_indexer);
  v10[38] = v18;
  v19 = v17;
  v20 = v16;
  v18;
  sub_2310AADB4(v15, v14);
  v10[39] = v21;
  v22 = swift_task_alloc();
  v10[40] = v22;
  *v22 = v10;
  v22[1] = sub_2310AC324;
  OUTLINED_FUNCTION_85();

  return v29(v23, v24, v25, v26, v27, v28, v29, v30, sub_2310AE3DC, a10);
}

uint64_t sub_2310AC324()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 328) = v0;

  v5 = *(v2 + 304);
  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2310AC488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  v11 = v10[31];
  v13 = v10[29];
  v12 = v10[30];
  v14 = v10[28];
  v15 = v10[13];

  sub_2310B2908(v15);
  (*(v13 + 8))(v12, v14);
  OUTLINED_FUNCTION_106();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_85();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_2310AC554()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0[31];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];

  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_76_0();

  OUTLINED_FUNCTION_1();

  return v5();
}

uint64_t sub_2310AC630()
{
  OUTLINED_FUNCTION_28_0();
  v1 = *(v0 + 248);
  v2 = *(v0 + 104);

  sub_2310B2908(v2);
  v3 = OUTLINED_FUNCTION_21_2();
  v4(v3);
  OUTLINED_FUNCTION_76_0();

  OUTLINED_FUNCTION_1();

  return v5();
}

uint64_t sub_2310AC734()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v2);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v6 = sub_231158258();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311581C8();
  v12 = sub_231158238();
  v13 = sub_2311592F8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_53();
    *v14 = 0;
    _os_log_impl(&dword_23103C000, v12, v13, "Database changed. Syncing shortcuts to Spotlight", v14, 2u);
    v15 = OUTLINED_FUNCTION_24_4();
    MEMORY[0x2319267C0](v15);
  }

  (*(v8 + 8))(v11, v6);
  v16 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v1;
  v18 = v1;
  v19 = OUTLINED_FUNCTION_114();
  sub_23105ED1C(v19, v20, v5, v21, v17);
}

uint64_t sub_2310AC90C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23106044C;

  return sub_2310AB220();
}

uint64_t sub_2310ACA8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v1);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - v3;
  v5 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  v8 = OUTLINED_FUNCTION_114();
  sub_23105ED1C(v8, v9, v4, v10, v6);
}

uint64_t sub_2310ACB5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23106044C;

  return sub_2310AB220();
}

void sub_2310ACC54(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v5 = sub_231158C58();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = (&v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280CCB3B8 != -1)
  {
    swift_once();
  }

  sub_2310548A0(*(off_280CCB3C0 + 11) + 16, v29);
  __swift_project_boxed_opaque_existential_0(v29, v29[3]);
  DynamicType = swift_getDynamicType();
  v12 = v29[4];

  __swift_destroy_boxed_opaque_existential_0(v29);
  v28[3] = &type metadata for VCDaemon.DaemonBackgroundTasks;
  v28[4] = sub_231086674();
  LOBYTE(v28[0]) = 4;
  (*(v12 + 40))(&v30, v28, DynamicType, v12);
  __swift_destroy_boxed_opaque_existential_0(v28);
  OUTLINED_FUNCTION_93();
  LOBYTE(v29[0]) = 2;
  OUTLINED_FUNCTION_168();
  v13();
  OUTLINED_FUNCTION_93();
  (*(v3 + 104))(v12, v3, 5.0);
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_168();
  v14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C600, &qword_231161B60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_231161B80;
  *(v15 + 32) = sub_231158E58();
  *(v15 + 40) = v16;
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_168();
  v17();
  OUTLINED_FUNCTION_93();
  v29[0] = 5;
  OUTLINED_FUNCTION_168();
  v18();
  sub_2310ADC14(&v30);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(&v30);
    v30 = v2;
    v19 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
    if ((swift_dynamicCast() & 1) != 0 && (v29[0] & 1) == 0)
    {

      sub_231158B68();
      sub_231158B58();
      OUTLINED_FUNCTION_14_6();
      *v10 = 0xD00000000000004ALL;
      v10[1] = v24;
      v25 = OUTLINED_FUNCTION_165();
      v26(v25);
      sub_231158B48();

      (*(v7 + 8))(v10, v5);
    }

    else
    {
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v30);
    sub_231158B68();
    sub_231158B58();
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_231159588();

    OUTLINED_FUNCTION_14_6();
    v30 = 0xD00000000000002FLL;
    v31 = v20;
    sub_2310AADB4(a1, v32);
    MEMORY[0x231924980]();

    v21 = v31;
    *v10 = v30;
    v10[1] = v21;
    v22 = OUTLINED_FUNCTION_165();
    v23(v22);
    sub_231158B48();

    (*(v7 + 8))(v10, v5);
  }
}

uint64_t sub_2310AD0BC()
{
  OUTLINED_FUNCTION_4_1();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_231157F18();
  v1[4] = v3;
  OUTLINED_FUNCTION_5(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2310AD16C()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D79C58])
  {
    v5 = v0[6];
    (*(v0[5] + 96))(v5, v0[4]);
    v7 = *v5;
    v6 = v5[1];

    v8 = sub_231158E58();
    v10 = sub_23106EED8(v8, v9, v7);

    if (v10)
    {
    }

    else
    {
      v13 = sub_231158E58();
      v15 = sub_23106EED8(v13, v14, v6);

      if (!v15)
      {
LABEL_10:

        OUTLINED_FUNCTION_46_0();

        return v16();
      }
    }

    OUTLINED_FUNCTION_89();
    v11 = 0xD00000000000001BLL;
LABEL_8:
    sub_2310ACC54(v11, v12);
    goto LABEL_10;
  }

  if (v4 == *MEMORY[0x277D79C48])
  {
    v11 = 0x696572206C6C7546;
    v12 = 0xEC0000007865646ELL;
    goto LABEL_8;
  }

  if (v4 == *MEMORY[0x277D79C50])
  {
    goto LABEL_10;
  }

  return sub_231159808();
}

uint64_t sub_2310AD36C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v1);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2);
  v4 = v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE70, &qword_2311626F0);
  OUTLINED_FUNCTION_19(v5);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  v8 = v26 - v7;
  v9 = sub_231157F18();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v26 - v17;
  sub_2310DC330();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_231093B90(v8, &unk_27DD3CE70, &qword_2311626F0);
  }

  v20 = v4;
  v26[1] = v4;
  v21 = *(v11 + 32);
  v21(v18, v8, v9);
  v22 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v22);
  (*(v11 + 16))(v16, v18, v9);
  v23 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = v0;
  v21(&v24[v23], v16, v9);
  v25 = v0;
  OUTLINED_FUNCTION_114();
  sub_2310798FC();

  return (*(v11 + 8))(v18, v9);
}

uint64_t sub_2310AD5F0()
{
  v1 = sub_231158C58();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_2310AD6EC;

  return sub_2310AD0BC();
}

uint64_t sub_2310AD6EC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v10();
  }
}

uint64_t sub_2310AD808()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0[9];
  v2 = v0[7];
  v3 = sub_231159588();
  OUTLINED_FUNCTION_159(v3, v4, v5, v6, v7, v8, v9, v10, v18, 0, 0xE000000000000000);
  MEMORY[0x231924980](0xD000000000000034, 0x8000000231169BC0);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  sub_231159688();
  OUTLINED_FUNCTION_89();
  MEMORY[0x231924980](0xD000000000000025);
  v11 = v0[3];
  sub_231158B68();
  sub_231158B58();
  *v2 = v19;
  v2[1] = v11;
  v12 = OUTLINED_FUNCTION_62_3();
  v13(v12);
  sub_231158B48();

  v14 = OUTLINED_FUNCTION_17();
  v15(v14);

  OUTLINED_FUNCTION_1();

  return v16();
}

id sub_2310ADA28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShortcutSpotlightCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2310ADB3C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_173();
  v0 = sub_231157F18();
  OUTLINED_FUNCTION_19(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = sub_23105FDEC;
  OUTLINED_FUNCTION_11_0();

  return sub_2310AD5F0();
}

uint64_t sub_2310ADC14(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_2311592F8();
  if (qword_280CCB568 != -1)
  {
    swift_once();
  }

  v7 = qword_280CCB570;
  sub_2310548A0(a1, v30);
  v8 = &off_231161000;
  if (os_log_type_enabled(v7, v6))
  {
    OUTLINED_FUNCTION_40_4();
    swift_slowAlloc();
    OUTLINED_FUNCTION_43_3();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v2 = 136315138;
    v11 = v31;
    v10 = v32;
    __swift_project_boxed_opaque_existential_0(v30, v31);
    v12 = v11;
    v8 = &off_231161000;
    v13 = (*(v10 + 16))(v12, v10);
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0(v30);
    v16 = sub_2310488F8(v13, v15, &v33);

    *(v2 + 4) = v16;
    _os_log_impl(&dword_23103C000, v7, v6, "task '%s': submitting to run", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    v3 = v2;
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  v17 = v4[5];
  v18 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v17);
  result = (*(v18 + 16))(a1, v17, v18);
  if (!v3)
  {
    v20 = sub_2311592F8();
    sub_2310548A0(a1, v30);
    if (os_log_type_enabled(v7, v20))
    {
      OUTLINED_FUNCTION_40_4();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_54_3();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = *(v8 + 8);
      v23 = v31;
      v24 = v32;
      __swift_project_boxed_opaque_existential_0(v30, v31);
      v25 = (*(v24 + 16))(v23, v24);
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_0(v30);
      v28 = sub_2310488F8(v25, v27, &v33);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_23103C000, v7, v20, "task '%s': submitted to run", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v29 = OUTLINED_FUNCTION_24_4();
      MEMORY[0x2319267C0](v29);
      OUTLINED_FUNCTION_40();
      return MEMORY[0x2319267C0]();
    }

    else
    {
      return __swift_destroy_boxed_opaque_existential_0(v30);
    }
  }

  return result;
}

uint64_t sub_2310ADED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_2310ADEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_170();
  *(v13 + 72) = *(v12 + OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_syncingQueue);
  OUTLINED_FUNCTION_9_0();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_135(v14);
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_109(v15);

  v16 = swift_task_alloc();
  *(v13 + 88) = v16;
  *v16 = v13;
  v16[1] = sub_2310AE020;
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x2821E1890](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_2310AE020()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310AE128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_2310AE148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_170();
  *(v13 + 72) = *(v12 + OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_syncingQueue);
  OUTLINED_FUNCTION_9_0();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_135(v14);
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_109(v15);

  v16 = swift_task_alloc();
  *(v13 + 88) = v16;
  *v16 = v13;
  v16[1] = sub_2310AE270;
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x2821E1890](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_2310AE270()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310AE378()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310AE3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(type metadata accessor for ShortcutTransformer(0) - 8);
  v7[9] = v8;
  v7[10] = *(v8 + 64);
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310AE4AC, 0, 0);
}

uint64_t sub_2310AE4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  v13 = v12[11];
  v14 = v12[9];
  v15 = v12[7];
  v33 = v12[10];
  v34 = v12[6];
  v16 = v12[4];
  v17 = v12[5];
  v19 = v12[2];
  v18 = v12[3];
  v35 = *(v12[8] + OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_syncingQueue);
  v12[12] = v35;
  OUTLINED_FUNCTION_9_0();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2310B2964(v17, v13);
  v21 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v22 = swift_allocObject();
  v12[13] = v22;
  v22[2] = v20;
  v22[3] = v34;
  v22[4] = v15;
  v22[5] = v19;
  v22[6] = v18;
  v22[7] = v16;
  sub_2310B29C8(v13, v22 + v21);

  v23 = swift_task_alloc();
  v12[14] = v23;
  *v23 = v12;
  v23[1] = sub_2310AE630;
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_10();

  return MEMORY[0x2821E1890](v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, v35, a12);
}

uint64_t sub_2310AE630()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310AE738()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_46_0();

  return v0();
}

uint64_t sub_2310AE790()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310AE800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a7;
  v8[29] = a8;
  v8[26] = a5;
  v8[27] = a6;
  v8[24] = a3;
  v8[25] = a4;
  v8[23] = a2;
  v9 = sub_231158258();
  v8[30] = v9;
  v8[31] = *(v9 - 8);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v10 = sub_231158C58();
  v8[34] = v10;
  v8[35] = *(v10 - 8);
  v8[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310AE934, 0, 0);
}

uint64_t sub_2310AEDBC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 400) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310AEEB8()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[49];
  v2 = v0[48];
  v3 = v0[37];
  swift_willThrow();

  OUTLINED_FUNCTION_180();

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_2310AEF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_87();
  v18 = *(v16 + 392);
  v19 = *(v16 + 224);

  v20 = *(v19 + 16);
  v21 = *MEMORY[0x277D73268];
  for (i = v19 + 40; v20; --v20)
  {
    v23 = *(v16 + 344);
    v17 = *(v16 + 272);
    v24 = OUTLINED_FUNCTION_44_2();
    v25(v24);
    swift_bridgeObjectRetain_n();
    sub_231158B48();

    v26 = OUTLINED_FUNCTION_45();
    v23(v26);
    i += 16;
  }

  OUTLINED_FUNCTION_134();
  v55 = v18;

  v27 = v21;
  sub_2310A8E6C(v17);
  *(v16 + 416) = v18;
  v28 = *(v17 + 16);
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    a9 = v18;
    a10 = v27;
    v30 = *(v16 + 216);
    v54 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_141();
    v29 = v54;
    v31 = v30 + 80;
    do
    {
      v32 = *(v31 - 40);
      v33 = *(v31 - 32);
      v34 = *(v31 - 16);
      if (v34)
      {
        v35 = *(v31 - 24);
        v55 = *(v31 - 40);
        a13 = *(v31 - 32);

        swift_bridgeObjectRetain_n();

        MEMORY[0x231924980](45, 0xE100000000000000);

        MEMORY[0x231924980](v35, v34);

        v32 = v55;
      }

      else
      {
      }

      a11 = v29;
      v37 = *(v29 + 16);
      v36 = *(v29 + 24);
      if (v37 >= v36 >> 1)
      {
        v39 = OUTLINED_FUNCTION_55_3(v36);
        sub_23104CA0C(v39, v37 + 1, 1);
      }

      *(v29 + 16) = v37 + 1;
      v38 = v29 + 16 * v37;
      *(v38 + 32) = v32;
      *(v38 + 40) = v33;
      v31 += 56;
      --v28;
    }

    while (v28);
  }

  v40 = *(v16 + 296);
  v41 = *(v16 + 232);
  *(v16 + 424) = sub_2310BE194(v29);
  OUTLINED_FUNCTION_26_1();
  v42 = swift_allocObject();
  *(v16 + 432) = v42;
  *(v42 + 16) = v41;
  *(v42 + 24) = v40;
  OUTLINED_FUNCTION_151();
  v43 = v40;
  v44 = swift_task_alloc();
  *(v16 + 440) = v44;
  *v44 = v16;
  v44[1] = sub_2310AF1E8;
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_23_0();

  return v50(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, v55, a13, a14, a15, a16);
}

uint64_t sub_2310AF1E8()
{
  OUTLINED_FUNCTION_22_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 448) = v0;

  v5 = *(v2 + 408);
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2310AF384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_87();
  v44 = *(v16 + 352);
  v45 = *(v16 + 360);
  v43 = *(v16 + 344);
  v17 = *(v16 + 328);
  v18 = *(v16 + 288);
  v19 = *(v16 + 272);
  v21 = *(v16 + 192);
  v20 = *(v16 + 200);
  *(v16 + 176) = *(v16 + 312);
  v46 = sub_231158E68();
  v47 = v22;
  OUTLINED_FUNCTION_92();
  MEMORY[0x231924980](v21, v20);
  *v18 = v46;
  v18[1] = v47;
  v17(v18, *MEMORY[0x277D732B0], v19);
  sub_231158B48();
  v23 = OUTLINED_FUNCTION_21_2();
  v43(v23);
  sub_2311581C8();
  v24 = sub_231158238();
  v25 = sub_2311592F8();
  v26 = OUTLINED_FUNCTION_20_2(v25);
  v27 = *(v16 + 296);
  if (v26)
  {
    v28 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_65_0(v28);
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_126(v29, v30, v31, v32);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    v33 = v24;
  }

  else
  {
    v33 = *(v16 + 296);
    v27 = v24;
  }

  (*(v16 + 368))(*(v16 + 256), *(v16 + 240));

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_23_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, v44, v45, v46, v47, a14, a15, a16);
}

uint64_t sub_2310AF510()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_180();

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_2310AF588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a7;
  v8[29] = a8;
  v8[26] = a5;
  v8[27] = a6;
  v8[24] = a3;
  v8[25] = a4;
  v8[23] = a2;
  v9 = sub_231158258();
  v8[30] = v9;
  v8[31] = *(v9 - 8);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v10 = sub_231158C58();
  v8[34] = v10;
  v8[35] = *(v10 - 8);
  v8[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310AF6BC, 0, 0);
}

uint64_t sub_2310AFB44()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 400) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310AFC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  v16 = *(v14 + 392);
  v17 = *(v14 + 224);

  v18 = *(v17 + 16);
  v19 = *MEMORY[0x277D73268];
  for (i = v17 + 40; v18; --v18)
  {
    v21 = *(v14 + 344);
    v15 = *(v14 + 272);
    v22 = OUTLINED_FUNCTION_44_2();
    v23(v22);
    swift_bridgeObjectRetain_n();
    sub_231158B48();

    v24 = OUTLINED_FUNCTION_45();
    v21(v24);
    i += 16;
  }

  OUTLINED_FUNCTION_134();
  v51 = v16;

  v25 = v19;
  sub_2310A8F44(v15);
  v26 = v16;
  *(v14 + 416) = v16;
  v27 = *(v15 + 16);
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    a9 = v26;
    a10 = v25;
    v29 = *(v14 + 216);
    v52 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_141();
    v28 = v52;
    v30 = *(v52 + 16);
    v31 = 16 * v30;
    v32 = (v29 + 40);
    do
    {
      v34 = *(v32 - 1);
      v33 = *v32;
      v51 = v28;
      v35 = *(v28 + 24);

      if (v30 >= v35 >> 1)
      {
        sub_23104CA0C((v35 > 1), v30 + 1, 1);
      }

      *(v28 + 16) = v30 + 1;
      v36 = v28 + v31;
      *(v36 + 32) = v34;
      *(v36 + 40) = v33;
      v31 += 16;
      v32 += 2;
      ++v30;
      --v27;
    }

    while (v27);
  }

  v37 = *(v14 + 296);
  v38 = *(v14 + 232);
  *(v14 + 424) = sub_2310BE194(v28);
  OUTLINED_FUNCTION_26_1();
  v39 = swift_allocObject();
  *(v14 + 432) = v39;
  *(v39 + 16) = v38;
  *(v39 + 24) = v37;
  OUTLINED_FUNCTION_151();
  v40 = v37;
  v41 = swift_task_alloc();
  *(v14 + 440) = v41;
  *v41 = v14;
  v41[1] = sub_2310AFE68;
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_10();

  return v47(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v51, a12, a13, a14);
}

uint64_t sub_2310AFE68()
{
  OUTLINED_FUNCTION_22_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 448) = v0;

  v5 = *(v2 + 408);
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2310B0004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a7;
  v8[29] = a8;
  v8[26] = a5;
  v8[27] = a6;
  v8[24] = a3;
  v8[25] = a4;
  v8[23] = a2;
  v9 = sub_231159228();
  v8[30] = v9;
  v8[31] = *(v9 - 8);
  v8[32] = swift_task_alloc();
  v10 = type metadata accessor for ShortcutTransformer(0);
  v8[33] = v10;
  v11 = *(v10 - 8);
  v8[34] = v11;
  v8[35] = *(v11 + 64);
  v8[36] = swift_task_alloc();
  v12 = sub_231158258();
  v8[37] = v12;
  v8[38] = *(v12 - 8);
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v13 = sub_231158C58();
  v8[41] = v13;
  v8[42] = *(v13 - 8);
  v8[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310B01F8, 0, 0);
}

uint64_t sub_2310B01F8(uint64_t a1)
{
  v68 = v1;
  OUTLINED_FUNCTION_77_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[44] = Strong;
  if (!Strong)
  {
    v42 = v1[42];
    sub_231158B68();
    sub_231158B58();
    OUTLINED_FUNCTION_41_5();
    v43 = *(v42 + 104);
    v44 = OUTLINED_FUNCTION_62_3();
    v43(v44);
    sub_231158B48();

    v45 = *(v42 + 8);
    v46 = OUTLINED_FUNCTION_17();
    v45(v46);
    sub_231158B58();
    OUTLINED_FUNCTION_41_5();
    v47 = OUTLINED_FUNCTION_62_3();
    v43(v47);
    sub_231158B48();

    v48 = OUTLINED_FUNCTION_17();
    v45(v48);
    sub_2310B2AF8();
    v49 = swift_allocError();
    OUTLINED_FUNCTION_104(v49, v50);
    OUTLINED_FUNCTION_100();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_21_4();

    __asm { BRAA            X1, X16 }
  }

  v3 = v1[42];
  v4 = v1[43];
  v5 = v1[41];
  v6 = v1[33];
  v7 = v1[25];
  v8 = v1[24];
  v9 = OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_logger;
  v1[45] = OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_logger;
  v65 = Strong;
  v10 = *(Strong + v9);
  v1[21] = v6;
  v1[46] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CA28, &unk_231164D70);
  v66 = sub_231158E68();
  v67 = v11;
  OUTLINED_FUNCTION_92();
  MEMORY[0x231924980](v8, v7);
  v12 = v67;
  *v4 = v66;
  v4[1] = v12;
  OUTLINED_FUNCTION_75_0();
  v1[47] = v13;
  v1[48] = v14;
  v13(v4);
  sub_231158B48();
  v15 = *(v3 + 8);
  v1[49] = v15;
  v1[50] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v4, v5);
  v1[51] = *MEMORY[0x277D7A4C8];
  sub_2311581C8();
  swift_bridgeObjectRetain_n();

  v16 = sub_231158238();
  sub_2311592F8();

  v17 = OUTLINED_FUNCTION_26_4();
  v18 = v1[40];
  v19 = v1[37];
  v20 = v1[38];
  if (v17)
  {
    v21 = v1[30];
    v63 = v1[28];
    v22 = v1[26];
    OUTLINED_FUNCTION_54_3();
    swift_slowAlloc();
    v66 = OUTLINED_FUNCTION_156();
    *v10 = 136315650;
    MEMORY[0x231924A30](v22, v21);
    v64 = v18;
    OUTLINED_FUNCTION_105();

    v23 = OUTLINED_FUNCTION_45();
    v26 = sub_2310488F8(v23, v24, v25);

    *(v10 + 4) = v26;
    v27 = OUTLINED_FUNCTION_112();
    MEMORY[0x231924A30](v27, v21);
    OUTLINED_FUNCTION_103();
    v28 = OUTLINED_FUNCTION_17();
    v31 = sub_2310488F8(v28, v29, v30);

    *(v10 + 14) = v31;
    *(v10 + 22) = v19;
    v32 = MEMORY[0x231924A30](v63, MEMORY[0x277D837D0]);
    v34 = sub_2310488F8(v32, v33, &v66);

    *(v10 + 24) = v34;
    OUTLINED_FUNCTION_42_4();
    _os_log_impl(v35, v36, v37, v38, v39, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    v40 = OUTLINED_FUNCTION_24_4();
    MEMORY[0x2319267C0](v40);

    v41 = *(v20 + 8);
    v41(v64, v19);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v41 = *(v20 + 8);
    v53 = OUTLINED_FUNCTION_45();
    v41(v53, v54);
  }

  OUTLINED_FUNCTION_116();
  v55 = OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_index;
  v1[52] = v41;
  v1[53] = v55;
  v56 = *(v65 + v55);
  v1[54] = v56;
  v57 = v56;
  v1[55] = sub_231158F38();
  v1[2] = v1;
  v1[3] = sub_2310B06E8;
  OUTLINED_FUNCTION_102();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  OUTLINED_FUNCTION_16_6(v58);
  v1[11] = 1107296256;
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_148(v59, sel_deleteSearchableItemsWithIdentifiers_completionHandler_);
  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x282200938](v60);
}

uint64_t sub_2310B06E8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 448) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310B07E4()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[55];
  v2 = v0[54];
  v3 = v0[44];
  swift_willThrow();

  OUTLINED_FUNCTION_100();

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_2310B0888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t (*a13)(uint64_t, uint64_t, uint64_t), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_166();
  v19 = *(v18 + 440);
  v20 = *(v18 + 224);

  v21 = *(v20 + 16);
  for (i = v20 + 40; v21; --v21)
  {
    v23 = *(v18 + 392);
    v24 = OUTLINED_FUNCTION_44_2();
    v25(v24);
    swift_bridgeObjectRetain_n();
    sub_231158B48();

    v26 = OUTLINED_FUNCTION_45();
    v23(v26);
    i += 16;
  }

  v27 = *(v18 + 208);
  v28 = *(v18 + 216);
  v29 = *(*(v18 + 352) + *(v18 + 424));
  *(v18 + 456) = v29;
  v64 = v27;

  v30 = v29;
  sub_2310A940C(v28);
  *(v18 + 464) = v27;
  v31 = *(v28 + 16);
  v32 = MEMORY[0x277D84F90];
  if (v31)
  {
    a10 = v27;
    a11 = v30;
    v33 = *(v18 + 248);
    v34 = *(v18 + 216);
    v65 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_141();
    v32 = v65;
    v35 = *(v33 + 16);
    v33 += 16;
    v36 = v34 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
    a12 = *(v33 + 56);
    a13 = v35;
    v37 = (v33 - 8);
    do
    {
      v38 = *(v18 + 256);
      v39 = *(v18 + 240);
      a13(v38, v36, v39);
      v40 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      v42 = v41;
      (*v37)(v38, v39);
      v64 = v32;
      v44 = *(v32 + 16);
      v43 = *(v32 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_23104CA0C((v43 > 1), v44 + 1, 1);
      }

      *(v32 + 16) = v44 + 1;
      v45 = v32 + 16 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v42;
      v36 += a12;
      --v31;
    }

    while (v31);
  }

  v46 = *(v18 + 352);
  v47 = *(v18 + 280);
  v48 = *(v18 + 288);
  v49 = *(v18 + 272);
  v50 = *(v18 + 232);
  *(v18 + 472) = sub_2310BE194(v32);
  sub_2310B2964(v50, v48);
  v51 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v52 = swift_allocObject();
  *(v18 + 480) = v52;
  sub_2310B29C8(v48, v52 + v51);
  *(v52 + ((v47 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)) = v46;
  v53 = v46;
  v54 = swift_task_alloc();
  *(v18 + 488) = v54;
  *v54 = v18;
  v54[1] = sub_2310B0B74;
  OUTLINED_FUNCTION_32();

  return v60(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, sub_2310A7958, v64, a16, a17, a18);
}

uint64_t sub_2310B0B74()
{
  OUTLINED_FUNCTION_22_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 496) = v0;

  v5 = *(v2 + 456);
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2310B0D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_87();
  v44 = *(v16 + 400);
  v45 = *(v16 + 408);
  v43 = *(v16 + 392);
  v17 = *(v16 + 376);
  v18 = *(v16 + 344);
  v19 = *(v16 + 328);
  v21 = *(v16 + 192);
  v20 = *(v16 + 200);
  *(v16 + 176) = *(v16 + 264);
  v46 = sub_231158E68();
  v47 = v22;
  OUTLINED_FUNCTION_92();
  MEMORY[0x231924980](v21, v20);
  *v18 = v46;
  v18[1] = v47;
  v17(v18, *MEMORY[0x277D732B0], v19);
  sub_231158B48();
  v23 = OUTLINED_FUNCTION_21_2();
  v43(v23);
  sub_2311581C8();
  v24 = sub_231158238();
  v25 = sub_2311592F8();
  v26 = OUTLINED_FUNCTION_20_2(v25);
  v27 = *(v16 + 352);
  if (v26)
  {
    v28 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_65_0(v28);
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_126(v29, v30, v31, v32);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    v33 = v24;
  }

  else
  {
    v33 = *(v16 + 352);
    v27 = v24;
  }

  (*(v16 + 416))(*(v16 + 312), *(v16 + 296));

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_23_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, v44, v45, v46, v47, a14, a15, a16);
}

uint64_t sub_2310B0EB8()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_100();

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_2310B0F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[26] = a1;
  v3[27] = a3;
  v5 = sub_231158C58();
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v6 = sub_231158258();
  v3[32] = v6;
  v3[33] = *(v6 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[36] = v7;
  *v7 = v3;
  v7[1] = sub_2310B10BC;

  return sub_23104D9D8(a1);
}

uint64_t sub_2310B10BC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 296) = v4;
  *(v2 + 304) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2310B11BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_14();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_17_2();
  a20 = v22;
  v27 = v22[35];
  v28 = v22[26];
  sub_2311581C8();
  sub_2310B33F0(v28, (v22 + 9));
  v29 = sub_231158238();
  v30 = sub_2311592B8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v22[26];
    OUTLINED_FUNCTION_40_4();
    v32 = swift_slowAlloc();
    OUTLINED_FUNCTION_54_3();
    v33 = swift_slowAlloc();
    a9 = v33;
    OUTLINED_FUNCTION_160(4.8149e-34);
    if (v23)
    {
      v34 = *(v31 + 24);
      a10 = v24;
      a11 = v27;

      OUTLINED_FUNCTION_136();

      MEMORY[0x231924980](v34, v23);

      sub_2310B344C(v31);
      v24 = a10;
      v27 = a11;
    }

    else
    {

      sub_2310B344C(v31);
    }

    v39 = sub_2310488F8(v24, v27, &a9);

    *(v32 + 4) = v39;
    OUTLINED_FUNCTION_179(&dword_23103C000, v40, v41, "Created searchable item from tool %s");
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();

    v42 = OUTLINED_FUNCTION_51_1();
    v43(v42);
  }

  else
  {
    v35 = v22[35];
    v36 = v22[32];
    v37 = v22[33];
    v38 = v22[26];

    (*(v37 + 8))(v35, v36);
    sub_2310B344C(v38);
  }

  v44 = v22[26];
  v45 = v44[4];
  if (v45)
  {
    v46 = v44[2];
    v47 = v44[3];
    a10 = v44[1];
    a11 = v46;

    OUTLINED_FUNCTION_136();

    MEMORY[0x231924980](v47, v45);

    v49 = a10;
    v48 = a11;
  }

  else
  {
    v49 = v44[1];
  }

  v50 = v22[31];
  v51 = v22[28];
  v52 = v22[29];
  *v50 = v49;
  v50[1] = v48;
  (*(v52 + 104))(v50, *MEMORY[0x277D73260], v51);
  sub_231158B48();
  (*(v22[29] + 8))(v22[31], v22[28]);

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_10();

  return v55(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2310B1478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_14();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_17_2();
  a20 = v22;
  v27 = *(v22 + 272);
  v28 = *(v22 + 208);
  sub_2311581C8();
  sub_2310B33F0(v28, v22 + 16);
  v29 = sub_231158238();
  v30 = sub_2311592B8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v22 + 208);
    OUTLINED_FUNCTION_40_4();
    v32 = swift_slowAlloc();
    OUTLINED_FUNCTION_54_3();
    v33 = swift_slowAlloc();
    a9 = v33;
    OUTLINED_FUNCTION_160(4.8149e-34);
    if (v23)
    {
      v34 = *(v31 + 24);
      a10 = v24;
      a11 = v27;

      OUTLINED_FUNCTION_136();

      MEMORY[0x231924980](v34, v23);

      sub_2310B344C(v31);
      v24 = a10;
      v27 = a11;
    }

    else
    {

      sub_2310B344C(v31);
    }

    v38 = sub_2310488F8(v24, v27, &a9);

    *(v32 + 4) = v38;
    OUTLINED_FUNCTION_179(&dword_23103C000, v39, v40, "could not create searchable item from tool %s");
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();

    v41 = OUTLINED_FUNCTION_51_1();
    v42(v41);
  }

  else
  {
    v36 = *(v22 + 264);
    v35 = *(v22 + 272);
    v32 = *(v22 + 256);
    v37 = *(v22 + 208);

    (*(v36 + 8))(v35, v32);
    sub_2310B344C(v37);
  }

  v43 = *(v22 + 304);
  *(v22 + 192) = v43;
  v44 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CA30, &qword_231164D98);
  if (swift_dynamicCast())
  {
    v32 = *(v22 + 152);
    v45 = __swift_project_boxed_opaque_existential_0((v22 + 128), v32);
    OUTLINED_FUNCTION_45();
    sub_231157858();
    OUTLINED_FUNCTION_111();
    __swift_destroy_boxed_opaque_existential_0((v22 + 128));
    if (v32)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(v22 + 160) = 0;
    *(v22 + 128) = 0u;
    *(v22 + 144) = 0u;
    sub_231093B90(v22 + 128, &qword_27DD3CA38, &unk_231164DA0);
  }

  swift_getErrorValue();
  v45 = *(v22 + 168);
  sub_2311598B8();
  OUTLINED_FUNCTION_111();

LABEL_12:
  v46 = *(v22 + 304);
  v47 = *(v22 + 232);
  v48 = *(v22 + 240);
  v49 = *(v22 + 224);
  *v48 = v45;
  v48[1] = v32;
  (*(v47 + 104))(v48, *MEMORY[0x277D732A0], v49);
  sub_231158B48();

  (*(*(v22 + 232) + 8))(*(v22 + 240), *(v22 + 224));

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_10();

  return v52(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2310B17B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a2;
  v4[14] = a4;
  v4[12] = a1;
  v7 = sub_231158C58();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = sub_231158258();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[23] = v9;
  *v9 = v4;
  v9[1] = sub_2310B1938;

  return sub_23108E0D8(a1, a2);
}

uint64_t sub_2310B1938()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v4;
  *(v2 + 200) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2310B1E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a1;
  v3[13] = a3;
  v5 = sub_231158C58();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = sub_231159228();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = sub_231158258();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[26] = v8;
  *v8 = v3;
  v8[1] = sub_2310B2048;

  return ShortcutTransformer.transform(item:)(a1);
}

uint64_t sub_2310B2048()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v4;
  *(v2 + 224) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2310B2674()
{
  OUTLINED_FUNCTION_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = sub_23106044C;
  OUTLINED_FUNCTION_11_0();

  return sub_2310ACB5C();
}

uint64_t objectdestroy_20Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2310B2750()
{
  OUTLINED_FUNCTION_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = sub_23106044C;
  OUTLINED_FUNCTION_11_0();

  return sub_2310AC90C();
}

uint64_t sub_2310B27EC()
{
  OUTLINED_FUNCTION_6_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = sub_23106044C;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_39_1();

  return sub_2310AB9B4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2310B28B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    v3 = vars8;
  }
}

uint64_t sub_2310B28F4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_2310B2908(uint64_t a1)
{
  v2 = type metadata accessor for ShortcutTransformer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2310B2964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutTransformer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2310B29C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutTransformer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2310B2A2C(uint64_t a1)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  v1 = OUTLINED_FUNCTION_173();
  v2 = type metadata accessor for ShortcutTransformer(v1);
  OUTLINED_FUNCTION_19(v2);
  OUTLINED_FUNCTION_121();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v4[1] = sub_23106044C;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_39_1();

  return sub_2310B0004(v6, v7, v8, v9, v10, v11, v12, v13);
}

unint64_t sub_2310B2AF8()
{
  result = qword_27DD3CA20;
  if (!qword_27DD3CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CA20);
  }

  return result;
}

uint64_t sub_2310B2B68()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_173();
  v2 = type metadata accessor for ShortcutTransformer(v1);
  OUTLINED_FUNCTION_5(v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2310B3958;
  v4 = OUTLINED_FUNCTION_62_3();

  return sub_2310B1E68(v4, v5, v6);
}

uint64_t sub_2310B2C74(uint64_t a1, char a2)
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

  sub_2311594D8();
LABEL_9:
  result = sub_2311595C8();
  *v2 = result;
  return result;
}

uint64_t sub_2310B2D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_2310B2D8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_2311594D8();
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
    result = sub_23106FF58(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_231054A0C(0, &qword_27DD3C168, 0x277D7A1C0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_231051E04(&qword_27DD3CA48, &qword_27DD3CA40, &qword_231164DB0, MEMORY[0x277D83988]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CA40, &qword_231164DB0);
          v9 = sub_23107936C(v12, i, a3);
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

uint64_t sub_2310B2F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v16 = *a8;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_23105FDEC;

  return sub_2310AE800(a1, a2, a3, a4, a5, a6, a7, v16);
}

uint64_t sub_2310B300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_121();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_2(v12);
  *v13 = v14;
  v13[1] = sub_23105FDEC;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_39_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_2310B30B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = *(a1 + 48);
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 72) = v7;
  *v7 = v3;
  v7[1] = sub_2310B3170;

  return sub_2310B0F48(v3 + 16, v6, a3);
}

uint64_t sub_2310B3170()
{
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;

  OUTLINED_FUNCTION_14_7();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_2310B325C()
{
  OUTLINED_FUNCTION_21();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2310B3308;
  v2 = OUTLINED_FUNCTION_62_3();

  return v3(v2);
}

uint64_t sub_2310B3308()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  v3 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v4 = v3;

  OUTLINED_FUNCTION_14_7();

  return v5(v2);
}

uint64_t sub_2310B34A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v16 = *a8;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_23106044C;

  return sub_2310AF588(a1, a2, a3, a4, a5, a6, a7, v16);
}

uint64_t objectdestroy_77Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2310B35E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_121();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_2(v12);
  *v13 = v14;
  v13[1] = sub_23106044C;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_39_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_2310B3690(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2310B3740;

  return sub_2310B17B8(v5, v6, v7, a3);
}

uint64_t sub_2310B3740()
{
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;

  OUTLINED_FUNCTION_14_7();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t objectdestroy_88Tm()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2310B3868()
{
  OUTLINED_FUNCTION_21();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2310B3958;
  v2 = OUTLINED_FUNCTION_62_3();

  return v3(v2);
}

void OUTLINED_FUNCTION_15_7()
{
  v1[12] = sub_23106F314;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_16_6(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

void OUTLINED_FUNCTION_18_6(uint64_t a1@<X8>)
{
  v1[20] = sub_23106FF5C;
  v1[21] = a1;
  v1[22] = v2;
}

uint64_t OUTLINED_FUNCTION_19_7(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_21_9()
{
  *(v0 + 88) = sub_2310A76A4;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_22_7()
{
  *(v0 + 88) = sub_2310A620C;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_23_7()
{
  *(v0 + 88) = sub_2310A7F14;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_28_5@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 80);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  *(v1 + 272) = *(a1 + 32);
  *(v1 + 280) = v6;
  *(v1 + 288) = v5;
  *(v1 + 296) = v4;
  *(v1 + 304) = v7;
  *(v1 + 320) = v3;
}

void *OUTLINED_FUNCTION_44_2()
{
  v2 = *v1;
  *v0 = *(v1 - 1);
  v0[1] = v2;
  return v0;
}

BOOL OUTLINED_FUNCTION_60_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_61_3(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = v2;
}

void OUTLINED_FUNCTION_63_2()
{
}

void OUTLINED_FUNCTION_64_1()
{
}

void OUTLINED_FUNCTION_65_1()
{
}

uint64_t OUTLINED_FUNCTION_69_1()
{

  return sub_2311581C8();
}

uint64_t OUTLINED_FUNCTION_70_1()
{

  return sub_2311581C8();
}

uint64_t OUTLINED_FUNCTION_71_1()
{

  return sub_2311581C8();
}

uint64_t OUTLINED_FUNCTION_76_0()
{
}

uint64_t OUTLINED_FUNCTION_77_0()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_92()
{

  JUMPOUT(0x231924980);
}

uint64_t OUTLINED_FUNCTION_93()
{
  v2 = *(v0 - 96);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 120, v2);
}

void OUTLINED_FUNCTION_94(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_100()
{
}

uint64_t OUTLINED_FUNCTION_101(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_102()
{

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_103()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_104(uint64_t a1, _BYTE *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_106()
{
}

void *OUTLINED_FUNCTION_109(void *result)
{
  *(v2 + 80) = result;
  result[2] = v7;
  result[3] = v8;
  result[4] = v4;
  result[5] = v6;
  result[6] = v5;
  result[7] = v3;
  result[8] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_110()
{
  *(v1 + 176) = *(v0 + 8);
  *(v1 + 184) = (v0 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v2;
}

uint64_t OUTLINED_FUNCTION_119(uint64_t a1)
{

  return sub_231158F38();
}

void OUTLINED_FUNCTION_126(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_135(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

void OUTLINED_FUNCTION_136()
{

  JUMPOUT(0x231924980);
}

uint64_t OUTLINED_FUNCTION_137()
{

  return sub_2311581C8();
}

BOOL OUTLINED_FUNCTION_138(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_139(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_140()
{

  return sub_2311581C8();
}

char *OUTLINED_FUNCTION_141()
{

  return sub_23104CA0C(0, v0, 0);
}

void OUTLINED_FUNCTION_142(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, os_log_type_t a11)
{

  _os_log_impl(a1, v11, a11, a4, v12, 0xCu);
}

uint64_t OUTLINED_FUNCTION_143()
{

  return sub_2311594D8();
}

uint64_t OUTLINED_FUNCTION_144(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = v2;
}

uint64_t OUTLINED_FUNCTION_145(uint64_t a1)
{
  *(v1 + 520) = a1;
}

uint64_t OUTLINED_FUNCTION_146(uint64_t a1)
{
  *(v1 + 464) = a1;
}

uint64_t OUTLINED_FUNCTION_147(uint64_t a1)
{
  *(v1 + 552) = a1;
}

id OUTLINED_FUNCTION_148(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_149()
{

  return sub_2311581C8();
}

id OUTLINED_FUNCTION_150(float a1)
{
  *v2 = a1;

  return [v1 (v3 + 2040)];
}

uint64_t OUTLINED_FUNCTION_151()
{
}

uint64_t OUTLINED_FUNCTION_152()
{
}

void OUTLINED_FUNCTION_153()
{
}

uint64_t OUTLINED_FUNCTION_154(uint64_t a1)
{

  return sub_231158E58();
}

uint64_t OUTLINED_FUNCTION_156()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_158()
{
}

id OUTLINED_FUNCTION_177@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[46] = v5;
  v6[47] = a1;
  v8 = *(a5 + a1);
  v6[48] = v8;

  return v8;
}

unint64_t OUTLINED_FUNCTION_178(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_2310488F8(v11, v10, &a10);
}

void OUTLINED_FUNCTION_179(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_180()
{
}

uint64_t OUTLINED_FUNCTION_181()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 344) + 16), *(*(v0 + 344) + 40));

  return sub_231158CA8();
}

uint64_t sub_2310B466C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t BackgroundTaskScheduler.cancel<A>(_:)()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  OUTLINED_FUNCTION_1_14();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v17[-1] - v7;
  v10 = OUTLINED_FUNCTION_29_4(v6, v9);
  v11(v10);
  v12 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v12);
  v17[3] = v2;
  v17[4] = *(v1 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(v4 + 16))(boxed_opaque_existential_1, v8, v2);
  (*(v13 + 24))(v17, v12, v13);
  (*(v4 + 8))(v8, v2);
  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t BackgroundTaskScheduler.isScheduled<A>(_:)()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  OUTLINED_FUNCTION_1_14();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v18[-1] - v7;
  v10 = OUTLINED_FUNCTION_29_4(v6, v9);
  v11(v10);
  v12 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v12);
  v18[3] = v2;
  v18[4] = *(v1 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(v4 + 16))(boxed_opaque_existential_1, v8, v2);
  v15 = (*(v13 + 32))(v18, v12, v13);
  (*(v4 + 8))(v8, v2);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return v15 & 1;
}

uint64_t sub_2310B49B4()
{
  sub_2310B88F0();
  result = sub_231159438();
  qword_280CCB570 = result;
  return result;
}

uint64_t BackgroundTaskScheduler.__allocating_init(scheduler:reschedulingDelay:)(__int128 *a1, double a2)
{
  v4 = swift_allocObject();
  sub_23104613C(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t BackgroundTaskScheduler.init(scheduler:reschedulingDelay:)(__int128 *a1, double a2)
{
  sub_23104613C(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

Swift::Void __swiftcall BackgroundTaskScheduler.checkInTasks()()
{
  OUTLINED_FUNCTION_77();
  v1 = *v0;
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_2_13();
  v21 = v3;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  v6 = v19 - v5;
  v7 = sub_231159448();
  OUTLINED_FUNCTION_19(v7);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  v19[1] = *(*(v1 + 88) + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v11);
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_13();
  v20 = v13;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v14);
  v16 = v19 - v15;
  sub_231159598();
  sub_231158EF8();
  swift_getAssociatedConformanceWitness();
  v17 = (v21 + 32);
  for (i = (v21 + 8); ; (*i)(v6, v2))
  {
    sub_231159458();
    if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
    {
      break;
    }

    (*v17)(v6, v10, v2);
    sub_2310B4DA8();
  }

  (*(v20 + 8))(v16, AssociatedTypeWitness);
  OUTLINED_FUNCTION_78();
}

void sub_2310B4DA8()
{
  OUTLINED_FUNCTION_77();
  v1 = v0;
  v3 = v2;
  v39 = *v0;
  v4 = v39[10];
  OUTLINED_FUNCTION_1_14();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v40 = v36 - v12;
  v37 = v13;
  MEMORY[0x28223BE20](v11);
  v15 = v36 - v14;
  v16 = sub_2311592F8();
  if (qword_280CCB568 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v17 = qword_280CCB570;
  v42 = *(v6 + 16);
  v38 = v6 + 16;
  v42(v15, v3, v4);
  v18 = os_log_type_enabled(v17, v16);
  v36[2] = v17;
  v36[3] = v10;
  v41 = v3;
  if (v18)
  {
    OUTLINED_FUNCTION_40_4();
    v19 = swift_slowAlloc();
    OUTLINED_FUNCTION_54_3();
    v20 = swift_slowAlloc();
    v43 = v20;
    *v19 = 136315138;
    v21 = v39;
    sub_231158F18();
    v22 = OUTLINED_FUNCTION_21_10();
    v23(v22);
    v24 = sub_2310488F8(v44[0], v44[1], &v43);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_23103C000, v17, v16, "task '%s': checking-in", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v3 = v41;
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
    v25 = OUTLINED_FUNCTION_21_10();
    v26(v25);
    v21 = v39;
  }

  v27 = v1[5];
  v28 = v1[6];
  v39 = __swift_project_boxed_opaque_existential_0(v1 + 2, v27);
  v29 = v21[11];
  v44[3] = v4;
  v44[4] = v29;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  v31 = v42;
  v42(boxed_opaque_existential_1, v3, v4);
  v32 = v40;
  v31(v40, v3, v4);
  v33 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v34 = swift_allocObject();
  *(v34 + 2) = v4;
  *(v34 + 3) = v29;
  v36[0] = v29;
  *(v34 + 4) = v1;
  v37 = v6;
  (*(v6 + 32))(&v34[v33], v32, v4);
  v35 = *(v28 + 8);

  v35(v44, sub_2310B907C, v34, v27, v28);

  __swift_destroy_boxed_opaque_existential_0(v44);
  OUTLINED_FUNCTION_78();
}

void sub_2310B5320()
{
  OUTLINED_FUNCTION_77();
  v49 = v2;
  v50 = v1;
  v4 = v3;
  v5 = *v0;
  v6 = *v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v7);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v8);
  v47 = v0;
  v48 = v43 - v9;
  v10 = *(v5 + 80);
  OUTLINED_FUNCTION_2_13();
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v15);
  v45 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v43 - v17;
  v19 = sub_2311592F8();
  if (qword_280CCB568 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v20 = qword_280CCB570;
  v46 = *(v12 + 16);
  v46(v18, v4, v10);
  v21 = os_log_type_enabled(v20, v19);
  v44 = v6;
  if (v21)
  {
    OUTLINED_FUNCTION_40_4();
    v22 = swift_slowAlloc();
    v43[1] = v4;
    v23 = v22;
    OUTLINED_FUNCTION_54_3();
    v24 = swift_slowAlloc();
    v53 = v24;
    *v23 = 136315138;
    sub_231158F18();
    v25 = OUTLINED_FUNCTION_30_5();
    v26(v25);
    v27 = sub_2310488F8(v51, v52, &v53);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_23103C000, v20, v19, "task '%s': running", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
    v28 = OUTLINED_FUNCTION_30_5();
    v29(v28);
  }

  sub_2311590C8();
  v30 = v48;
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v35 = v45;
  v36 = OUTLINED_FUNCTION_17();
  v37(v36);
  v38 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v39 = (v14 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 4) = v10;
  *(v40 + 5) = *(v44 + 88);
  (*(v12 + 32))(&v40[v38], v35, v10);
  v41 = &v40[v39];
  v42 = v49;
  *v41 = v50;
  *(v41 + 1) = v42;
  *&v40[(v39 + 23) & 0xFFFFFFFFFFFFFFF8] = v47;
  swift_unknownObjectRetain();

  sub_23105ED1C(0, 0, v30, &unk_231165320, v40);

  OUTLINED_FUNCTION_78();
}

uint64_t sub_2310B568C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = *a7;
  v7[20] = *a7;
  v9 = *(v8 + 80);
  v7[21] = v9;
  v10 = *(v9 - 8);
  v7[22] = v10;
  v7[23] = *(v10 + 64);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC10, &unk_2311658F0);
  v7[27] = v11;
  v7[28] = *(v11 - 8);
  v7[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAC0, &unk_231165330);
  v7[30] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  v7[31] = v12;
  v13 = *(v12 - 8);
  v7[32] = v13;
  v7[33] = *(v13 + 64);
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310B58C0, 0, 0);
}

uint64_t sub_2310B58C0()
{
  v1 = *(v0 + 168);
  v2 = *(*(v0 + 160) + 88);
  *(v0 + 288) = v2;
  v3 = (*(v2 + 32))(v1, v2);
  v5 = v4;
  v6 = *(v4 + 24);
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  v6(v3, v5);
  v7 = *(v0 + 280);
  v37 = *(v0 + 256);
  v38 = *(v0 + 264);
  v9 = *(v0 + 240);
  v8 = *(v0 + 248);
  v11 = *(v0 + 224);
  v10 = *(v0 + 232);
  v34 = *(v0 + 208);
  v35 = *(v0 + 272);
  v36 = *(v0 + 184);
  v29 = *(v0 + 176);
  v30 = *(v0 + 216);
  v33 = *(v0 + 168);
  v39 = *(v0 + 144);
  v32 = *(v0 + 128);
  v12 = *(v8 + 40);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA8, &qword_2311652D8);
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC30, &unk_231163850);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v7 + *(v8 + 36)) = v17;
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v13);
  *(swift_task_alloc() + 16) = v9;
  (*(v11 + 104))(v10, *MEMORY[0x277D85778], v30);
  sub_231159108();

  v28 = v7;
  sub_2310B8DA8(v9, v7 + v12);
  ObjectType = swift_getObjectType();
  *(v0 + 296) = ObjectType;
  (*(v39 + 32))(v0 + 16, ObjectType);
  v21 = *(v29 + 16);
  *(v0 + 304) = v21;
  *(v0 + 312) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v34, v32, v33);
  sub_2310B901C(v7, v35, &unk_27DD3CC20, &unk_231165900);
  sub_23107E8A4(v0 + 16, v0 + 56);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = (v36 + *(v37 + 80) + v22) & ~*(v37 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v33;
  *(v24 + 24) = v2;
  (*(v29 + 32))(v24 + v22, v34, v33);
  sub_2310B8934(v35, v24 + v23);
  sub_23104613C((v0 + 56), v24 + ((v38 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  (*(v39 + 16))(sub_2310B8E18, v24, ObjectType);
  v25 = swift_task_alloc();
  *(v0 + 320) = v25;
  *(v25 + 16) = v28;
  *(v25 + 24) = v0 + 16;
  v26 = swift_task_alloc();
  *(v0 + 328) = v26;
  *v26 = v0;
  v26[1] = sub_2310B5D3C;

  return MEMORY[0x282200740]();
}

uint64_t sub_2310B5D3C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v3 + 336) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2310B5E44()
{
  v2 = OUTLINED_FUNCTION_24_5();
  v3(v2);
  OUTLINED_FUNCTION_31_5();
  sub_2310B8FC8(v0, &unk_27DD3CC20);
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_2310B5F20()
{
  v28 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);

  v5 = *(v4 + 56);
  v6 = *(v3 + 48);
  v7 = v1;
  v6(v2, v3, v5);
  v8 = sub_2311592D8();
  if (qword_280CCB568 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v9 = qword_280CCB570;
  (*(v0 + 304))(*(v0 + 200), *(v0 + 128), *(v0 + 168));
  v10 = os_log_type_enabled(v9, v8);
  v11 = *(v0 + 336);
  if (v10)
  {
    v26 = v8;
    v12 = *(v0 + 200);
    v14 = *(v0 + 168);
    v13 = *(v0 + 176);
    OUTLINED_FUNCTION_54_3();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_54_3();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v15 = 136315650;
    sub_231158F18();
    (*(v13 + 8))(v12, v14);
    v18 = *(v0 + 120);
    v19 = sub_2310488F8(*(v0 + 112), v18, &v27);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    v20 = v11;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v16 = v21;
    *(v15 + 22) = 2048;
    *(v15 + 24) = v5;
    _os_log_impl(&dword_23103C000, v9, v26, "task '%s': ran into error '%@'. scheduler accepted our request to run again in %fs", v15, 0x20u);
    sub_2310B8FC8(v16, &unk_27DD3CC40);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
    v18 = *(v0 + 200);
    v22 = *(v0 + 168);
    v23 = *(v0 + 176);

    (*(v23 + 8))(v18, v22);
  }

  OUTLINED_FUNCTION_31_5();
  sub_2310B8FC8(v18, &unk_27DD3CC20);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_1();

  return v24();
}

uint64_t sub_2310B6414(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v35 = a4;
  v36 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAC0, &unk_231165330);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAC8, &unk_231165350);
  v12 = *(v34 - 8);
  v13 = MEMORY[0x28223BE20](v34);
  v15 = &v33 - v14;
  v16 = *(a5 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a1;
  v19 = sub_2311592D8();
  if (qword_280CCB568 != -1)
  {
    swift_once();
  }

  v20 = qword_280CCB570;
  (*(v16 + 16))(v18, a2, a5);
  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39 = v22;
    *v21 = 136315394;
    sub_231158F18();
    (*(v16 + 8))(v18, a5);
    v23 = sub_2310488F8(v38[0], v38[1], &v39);

    *(v21 + 4) = v23;
    *(v21 + 12) = 2080;
    LOBYTE(v38[0]) = v37;
    v24 = sub_231158E68();
    v26 = sub_2310488F8(v24, v25, &v39);

    *(v21 + 14) = v26;
    _os_log_impl(&dword_23103C000, v20, v19, "task '%s': expired with reason '%s'", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319267C0](v22, -1, -1);
    MEMORY[0x2319267C0](v21, -1, -1);
  }

  else
  {
    (*(v16 + 8))(v18, a5);
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  v28 = v36;
  atomic_store(1u, (*(**(v36 + *(v27 + 36)) + 136))(v27));
  sub_2310B901C(v28 + *(v27 + 40), v11, &qword_27DD3CAC0, &unk_231165330);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA8, &qword_2311652D8);
  result = __swift_getEnumTagSinglePayload(v11, 1, v29);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v38[0]) = 1;
    sub_2311590D8();
    (*(v12 + 8))(v15, v34);
    (*(*(v29 - 8) + 8))(v11, v29);
    v31 = v35[3];
    v32 = v35[4];
    __swift_project_boxed_opaque_existential_0(v35, v31);
    LOBYTE(v38[0]) = v37;
    return (*(v32 + 48))(v38, v31, v32);
  }

  return result;
}

uint64_t sub_2310B688C()
{
  OUTLINED_FUNCTION_4_1();
  v0[8] = v1;
  v0[9] = v2;
  v0[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  OUTLINED_FUNCTION_5(v4);
  v0[10] = v5;
  v0[11] = *(v6 + 64);
  v0[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v7);
  v0[13] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2310B6984()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v20 = v5;
  v7 = sub_2311590C8();
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  sub_2310B901C(v5, v2, &unk_27DD3CC20, &unk_231165900);
  sub_23107E8A4(v6, v0 + 16);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = (v11 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_2310B8934(v2, v13 + v11);
  sub_23104613C((v0 + 16), v13 + v12);
  sub_2310CF430(v1, &unk_2311652E0, v13);
  sub_2310B8FC8(v1, &qword_27DD3C1D0);
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v7);
  sub_2310B901C(v20, v2, &unk_27DD3CC20, &unk_231165900);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_2310B8934(v2, v17 + v11);
  sub_2310CF430(v1, &unk_2311652F0, v17);
  sub_2310B8FC8(v1, &qword_27DD3C1D0);
  v18 = swift_task_alloc();
  *(v0 + 112) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAB0, &unk_2311652F8);
  *v18 = v0;
  v18[1] = sub_2310B6BC4;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822004D0]();
}

uint64_t sub_2310B6BC4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v2 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  *(v4 + 120) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2310B6CC4()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  sub_231159138();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310B6D70()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310B6DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_2311577C8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310B6E94, 0, 0);
}

uint64_t sub_2310B6E94()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  v3 = atomic_load((*(**(v1 + *(v2 + 36)) + 136))());
  if (v3)
  {
    *(v0 + 64) = 89;
    sub_23105FAA4(MEMORY[0x277D84F90]);
    v9 = sub_2310B8BD0();
    OUTLINED_FUNCTION_17_9(v9);
    sub_2311577B8();
    v10 = OUTLINED_FUNCTION_17();
    v11(v10);
    swift_willThrow();

    OUTLINED_FUNCTION_1();

    return v12();
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = v4[4];
    __swift_project_boxed_opaque_existential_0(v4, v4[3]);
    v13 = (*(v5 + 40) + **(v5 + 40));
    v6 = swift_task_alloc();
    *(v0 + 56) = v6;
    *v6 = v0;
    v6[1] = sub_2310B7098;
    v7 = OUTLINED_FUNCTION_17();

    return v13(v7);
  }
}

uint64_t sub_2310B7098()
{
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2310B71A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2311577C8();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA0, &qword_2311652D0);
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAB8, &qword_231165308);
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310B7334, 0, 0);
}

uint64_t sub_2310B7334()
{
  OUTLINED_FUNCTION_21();
  (*(v0[7] + 16))(v0[8], v0[2], v0[6]);
  sub_2310B8B8C(&qword_280CCAF98, &qword_27DD3CAA0, &qword_2311652D0, MEMORY[0x277D857C0]);
  sub_231159708();
  v1 = swift_task_alloc();
  v0[12] = v1;
  v2 = sub_2310B8B8C(&qword_280CCAE50, &qword_27DD3CAB8, &qword_231165308, MEMORY[0x277D859A0]);
  *v1 = v0;
  v1[1] = sub_2310B7490;
  v3 = v0[9];

  return MEMORY[0x2821E18C8](v0 + 116, v3, v2);
}

uint64_t sub_2310B7490()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  v2 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  *(v4 + 104) = v0;

  v5 = OUTLINED_FUNCTION_17();
  v6(v5);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310B75E8()
{
  OUTLINED_FUNCTION_22_0();
  *(v0 + 112) = 89;
  sub_23105FAA4(MEMORY[0x277D84F90]);
  v1 = sub_2310B8BD0();
  OUTLINED_FUNCTION_17_9(v1);
  sub_2311577B8();
  v2 = OUTLINED_FUNCTION_17();
  v3(v2);
  swift_willThrow();

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_2310B76BC()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310B7750(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_2311592F8();
  if (qword_280CCB568 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v7 = qword_280CCB570;
  sub_23107E8A4(a1, v30);
  v8 = &off_231161000;
  if (os_log_type_enabled(v7, v6))
  {
    OUTLINED_FUNCTION_40_4();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_54_3();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315138;
    v12 = v31;
    v11 = v32;
    __swift_project_boxed_opaque_existential_0(v30, v31);
    v13 = v12;
    v8 = &off_231161000;
    v14 = (*(v11 + 16))(v13, v11);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_0(v30);
    v17 = sub_2310488F8(v14, v16, &v33);

    *(v9 + 4) = v17;
    _os_log_impl(&dword_23103C000, v7, v6, "task '%s': submitting to run", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    v3 = v2;
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  v18 = v4[5];
  v19 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v18);
  result = (*(v19 + 16))(a1, v18, v19);
  if (!v3)
  {
    v21 = sub_2311592F8();
    sub_23107E8A4(a1, v30);
    if (os_log_type_enabled(v7, v21))
    {
      OUTLINED_FUNCTION_40_4();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_54_3();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = *(v8 + 8);
      v24 = v31;
      v25 = v32;
      __swift_project_boxed_opaque_existential_0(v30, v31);
      v26 = (*(v25 + 16))(v24, v25);
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_0(v30);
      v29 = sub_2310488F8(v26, v28, &v33);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_23103C000, v7, v21, "task '%s': submitted to run", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
      OUTLINED_FUNCTION_40();
      return MEMORY[0x2319267C0]();
    }

    else
    {
      return __swift_destroy_boxed_opaque_existential_0(v30);
    }
  }

  return result;
}

uint64_t sub_2310B7A28(uint64_t a1, void (*a2)(void *))
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  OUTLINED_FUNCTION_1_14();
  v7 = v6;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-1] - v9;
  (*(v11 + 32))(v12, v11);
  sub_23107E8A4((v2 + 2), v19);
  __swift_project_boxed_opaque_existential_0(v19, v19[3]);
  DynamicType = swift_getDynamicType();
  v14 = v19[4];
  __swift_destroy_boxed_opaque_existential_0(v19);
  v18[3] = v5;
  v18[4] = *(v4 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(v7 + 16))(boxed_opaque_existential_1, v10, v5);
  (*(v14 + 40))(v20, v18, DynamicType, v14);
  __swift_destroy_boxed_opaque_existential_0(v18);
  a2(v20);
  sub_2310B7750(v20);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return (*(v7 + 8))(v10, v5);
}

uint64_t BackgroundTaskScheduler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t Urgency.hashValue.getter()
{
  v1 = *v0;
  sub_231159918();
  MEMORY[0x2319253F0](v1);
  return sub_231159948();
}

uint64_t sub_2310B7D74@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_2310B7DA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

VoiceShortcuts::SystemResource sub_2310B7E78@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SystemResource.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2310B7EB8@<X0>(uint64_t *a1@<X8>)
{
  result = SystemResource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2310B7F2C()
{
  v1 = *v0;
  sub_231159918();
  MEMORY[0x2319253F0](v1);
  return sub_231159948();
}

unint64_t sub_2310B7F78()
{
  result = qword_27DD3CA68;
  if (!qword_27DD3CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CA68);
  }

  return result;
}

unint64_t sub_2310B7FD0()
{
  result = qword_27DD3CA70;
  if (!qword_27DD3CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CA70);
  }

  return result;
}

unint64_t sub_2310B8028()
{
  result = qword_27DD3CA78;
  if (!qword_27DD3CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CA78);
  }

  return result;
}

unint64_t sub_2310B8080()
{
  result = qword_27DD3CA80;
  if (!qword_27DD3CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CA80);
  }

  return result;
}

unint64_t sub_2310B80D8()
{
  result = qword_27DD3CA88;
  if (!qword_27DD3CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CA88);
  }

  return result;
}

unint64_t sub_2310B8130()
{
  result = qword_27DD3CA90;
  if (!qword_27DD3CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CA90);
  }

  return result;
}

unint64_t sub_2310B8188()
{
  result = qword_27DD3CA98;
  if (!qword_27DD3CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CA98);
  }

  return result;
}

uint64_t dispatch thunk of Schedulable.main()()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1;
  v4 = v3;
  v7 = (*(v1 + 40) + **(v1 + 40));
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_23105FDEC;

  return v7(v4, v2);
}

_BYTE *storeEnumTagSinglePayload for Urgency(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemResource(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SystemResource(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

_BYTE *sub_2310B878C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2310B88F0()
{
  result = qword_280CCAE58;
  if (!qword_280CCAE58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CCAE58);
  }

  return result;
}

uint64_t sub_2310B8934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2310B89A4()
{
  OUTLINED_FUNCTION_22_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  OUTLINED_FUNCTION_5(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = sub_23106044C;
  v4 = OUTLINED_FUNCTION_11_0();

  return sub_2310B6DD4(v4, v5, v6, v7, v8);
}

uint64_t sub_2310B8AAC()
{
  OUTLINED_FUNCTION_22_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  OUTLINED_FUNCTION_19(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = sub_23106044C;
  v4 = OUTLINED_FUNCTION_11_0();

  return sub_2310B71A4(v4, v5, v6, v7);
}

uint64_t sub_2310B8B8C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_29_4(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2310B8BD0()
{
  result = qword_27DD3BE58;
  if (!qword_27DD3BE58)
  {
    sub_2311577C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BE58);
  }

  return result;
}

uint64_t sub_2310B8C28()
{
  v1 = (*(*(*(v0 + 32) - 8) + 64) + ((*(*(*(v0 + 32) - 8) + 80) + 48) & ~*(*(*(v0 + 32) - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = (v1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v0 + v1);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v0 + v2);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_2(v7);
  *v8 = v9;
  v8[1] = sub_23106044C;
  v10 = OUTLINED_FUNCTION_11_0();

  return sub_2310B568C(v10, v11, v12, v13, v4, v5, v6);
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x2319267C0);
  }

  return result;
}

uint64_t sub_2310B8DA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAC0, &unk_231165330);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2310B8E18(unsigned __int8 *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_2_13();
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  OUTLINED_FUNCTION_5(v9);
  v11 = v10;
  v13 = v12;
  v14 = (v6 + v8 + *(v11 + 80)) & ~*(v11 + 80);
  v15 = (v1 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2310B6414(a1, v1 + v6, v1 + v14, v15, v3, v4);
}

uint64_t sub_2310B8F20()
{
  OUTLINED_FUNCTION_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = sub_23106044C;

  return sub_2310B688C();
}

uint64_t sub_2310B8FC8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_29_4(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_13_0();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2310B901C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_13_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_17_9(uint64_t a1)
{

  return sub_231157918();
}

uint64_t OUTLINED_FUNCTION_21_10()
{
  result = v0;
  *(v2 - 232) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

void sub_2310B9260(uint64_t a1)
{
  v3 = sub_2311580D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_2310BDD00(&unk_280CCB0F0, MEMORY[0x277D79D00], MEMORY[0x277D79CF8]);
  v11[1] = sub_231157C98();
  if (qword_280CCBF80 != -1)
  {
    swift_once();
  }

  v6 = qword_280CCBF90;
  (*(v4 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  (*(v4 + 32))(v8 + v7, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_2310BDCD4;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2310BD9E4;
  aBlock[3] = &block_descriptor_36;
  v9 = _Block_copy(aBlock);

  v10 = sub_231158E88();

  xpc_set_event_stream_handler((v10 + 32), v6, v9);

  _Block_release(v9);
}

void sub_2310B94C4(uint64_t a1)
{
  v3 = sub_231157E28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_2310BDD00(&unk_280CCB148, MEMORY[0x277D79B98], MEMORY[0x277D79B90]);
  v11[1] = sub_231157C98();
  if (qword_280CCBF80 != -1)
  {
    swift_once();
  }

  v6 = qword_280CCBF90;
  (*(v4 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  (*(v4 + 32))(v8 + v7, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_2310BDAA8;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2310BD9E4;
  aBlock[3] = &block_descriptor_6_0;
  v9 = _Block_copy(aBlock);

  v10 = sub_231158E88();

  xpc_set_event_stream_handler((v10 + 32), v6, v9);

  _Block_release(v9);
}

void sub_2310B9728(uint64_t a1)
{
  v3 = sub_231157F78();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_2310BDD00(&qword_27DD3CB48, MEMORY[0x277D79C98], MEMORY[0x277D79C90]);
  v11[1] = sub_231157C98();
  if (qword_280CCBF80 != -1)
  {
    swift_once();
  }

  v6 = qword_280CCBF90;
  (*(v4 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  (*(v4 + 32))(v8 + v7, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_2310BDAD4;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2310BD9E4;
  aBlock[3] = &block_descriptor_12_1;
  v9 = _Block_copy(aBlock);

  v10 = sub_231158E88();

  xpc_set_event_stream_handler((v10 + 32), v6, v9);

  _Block_release(v9);
}

void sub_2310B998C(uint64_t a1)
{
  v3 = sub_231158098();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_2310BDD00(&unk_280CCB128, MEMORY[0x277D79CD8], MEMORY[0x277D79CD0]);
  v11[1] = sub_231157C98();
  if (qword_280CCBF80 != -1)
  {
    swift_once();
  }

  v6 = qword_280CCBF90;
  (*(v4 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  (*(v4 + 32))(v8 + v7, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_2310BDBB8;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2310BD9E4;
  aBlock[3] = &block_descriptor_24;
  v9 = _Block_copy(aBlock);

  v10 = sub_231158E88();

  xpc_set_event_stream_handler((v10 + 32), v6, v9);

  _Block_release(v9);
}

void sub_2310B9BF0(uint64_t a1)
{
  v3 = sub_231158138();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_2310BDD00(&qword_280CCB0C0, MEMORY[0x277D79D30], MEMORY[0x277D79D28]);
  v11[1] = sub_231157C98();
  if (qword_280CCBF80 != -1)
  {
    swift_once();
  }

  v6 = qword_280CCBF90;
  (*(v4 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  (*(v4 + 32))(v8 + v7, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_2310BDB8C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2310BD9E4;
  aBlock[3] = &block_descriptor_18;
  v9 = _Block_copy(aBlock);

  v10 = sub_231158E88();

  xpc_set_event_stream_handler((v10 + 32), v6, v9);

  _Block_release(v9);
}

void sub_2310B9E54(uint64_t a1)
{
  v3 = sub_231158188();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_2310BDD00(&unk_280CCB0A0, MEMORY[0x277D79D58], MEMORY[0x277D79D50]);
  v11[1] = sub_231157C98();
  if (qword_280CCBF80 != -1)
  {
    swift_once();
  }

  v6 = qword_280CCBF90;
  (*(v4 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  (*(v4 + 32))(v8 + v7, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_2310BDBE4;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2310BD9E4;
  aBlock[3] = &block_descriptor_30_0;
  v9 = _Block_copy(aBlock);

  v10 = sub_231158E88();

  xpc_set_event_stream_handler((v10 + 32), v6, v9);

  _Block_release(v9);
}

void DaemonXPCEventStream.start(scheduler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_13();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v12 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = sub_231157C98();
  if (qword_280CCBF80 != -1)
  {
    swift_once();
  }

  v13 = qword_280CCBF90;
  (*(v8 + 16))(v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a1;
  (*(v8 + 32))(&v15[v14], v12, a2);
  aBlock[4] = sub_2310BD9A4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2310BD9E4;
  aBlock[3] = &block_descriptor_13;
  v16 = _Block_copy(aBlock);

  v17 = sub_231158E88();

  xpc_set_event_stream_handler((v17 + 32), v13, v16);

  _Block_release(v16);
}

uint64_t sub_2310BA310()
{
  v0 = sub_231159328();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_231159318();
  MEMORY[0x28223BE20](v4);
  v5 = sub_231158D48();
  MEMORY[0x28223BE20](v5 - 8);
  sub_23104CA2C();
  sub_231158D28();
  v7[1] = MEMORY[0x277D84F90];
  sub_2310BDD00(&unk_280CCAF10, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC00, &unk_231161AB0);
  sub_23106028C();
  sub_231159498();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = sub_231159358();
  qword_280CCBF90 = result;
  return result;
}

void sub_2310BA548(void *a1, uint64_t a2)
{
  v45 = a2;
  v3 = sub_2311580B8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v39[-v8];
  v10 = sub_2311581F8();
  isa = v10[-1].isa;
  MEMORY[0x28223BE20](v10);
  v13 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_231158268();
  if (xpc_dictionary_get_string(a1, v14))
  {
    v46 = v10;
    v15 = sub_231158EC8();
    v17 = v16;
    sub_2311581E8();
    sub_2310BDD00(&qword_280CCB118, MEMORY[0x277D79CE0], MEMORY[0x277D79CE8]);
    sub_2311581D8();
    v42 = v15;
    v44 = v17;
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v43 = isa;
    v25 = sub_231158258();
    __swift_project_value_buffer(v25, qword_280CCDF80);
    (*(v4 + 16))(v7, v9, v3);
    v26 = sub_231158238();
    v27 = sub_2311592F8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48 = v41;
      *v28 = 136315138;
      sub_2310BDD00(&qword_280CCB110, MEMORY[0x277D79CE0], MEMORY[0x277D79CF0]);
      v40 = v27;
      v29 = sub_2311597C8();
      v31 = v30;
      v32 = *(v4 + 8);
      v32(v7, v3);
      v33 = sub_2310488F8(v29, v31, &v48);

      *(v28 + 4) = v33;
      v34 = v28;
      _os_log_impl(&dword_23103C000, v26, v40, "Dispatching XPC event: %s", v28, 0xCu);
      v35 = v41;
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x2319267C0](v35, -1, -1);
      MEMORY[0x2319267C0](v34, -1, -1);
    }

    else
    {

      v32 = *(v4 + 8);
      v32(v7, v3);
    }

    sub_2311580D8();
    sub_2310BDD00(&unk_280CCB0F0, MEMORY[0x277D79D00], MEMORY[0x277D79CF8]);
    sub_231157CA8();

    v37 = sub_2311580A8();
    sub_23107AF20(v9, v37, v38);

    v32(v9, v3);
    (*(v43 + 1))(v13, v46);
  }

  else
  {
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v18 = sub_231158258();
    __swift_project_value_buffer(v18, qword_280CCDF80);
    swift_unknownObjectRetain();
    v46 = sub_231158238();
    v19 = sub_2311592D8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v46, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v47 = a1;
      v48 = v21;
      *v20 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CB30, &qword_231165388);
      v22 = sub_231158E68();
      v24 = sub_2310488F8(v22, v23, &v48);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_23103C000, v46, v19, "Unable to decode XPC event: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x2319267C0](v21, -1, -1);
      MEMORY[0x2319267C0](v20, -1, -1);
    }

    else
    {
      v36 = v46;
    }
  }
}

void sub_2310BACA4(void *a1, uint64_t a2)
{
  v45 = a2;
  v3 = sub_231157E08();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v39[-v8];
  v10 = sub_2311581F8();
  isa = v10[-1].isa;
  MEMORY[0x28223BE20](v10);
  v13 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_231158268();
  if (xpc_dictionary_get_string(a1, v14))
  {
    v46 = v10;
    v15 = sub_231158EC8();
    v17 = v16;
    sub_2311581E8();
    sub_2310BDD00(&qword_27DD3CB38, MEMORY[0x277D79B78], MEMORY[0x277D79B80]);
    sub_2311581D8();
    v42 = v15;
    v44 = v17;
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v43 = isa;
    v25 = sub_231158258();
    __swift_project_value_buffer(v25, qword_280CCDF80);
    (*(v4 + 16))(v7, v9, v3);
    v26 = sub_231158238();
    v27 = sub_2311592F8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48 = v41;
      *v28 = 136315138;
      sub_2310BDD00(&qword_27DD3CB40, MEMORY[0x277D79B78], MEMORY[0x277D79B88]);
      v40 = v27;
      v29 = sub_2311597C8();
      v31 = v30;
      v32 = *(v4 + 8);
      v32(v7, v3);
      v33 = sub_2310488F8(v29, v31, &v48);

      *(v28 + 4) = v33;
      v34 = v28;
      _os_log_impl(&dword_23103C000, v26, v40, "Dispatching XPC event: %s", v28, 0xCu);
      v35 = v41;
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x2319267C0](v35, -1, -1);
      MEMORY[0x2319267C0](v34, -1, -1);
    }

    else
    {

      v32 = *(v4 + 8);
      v32(v7, v3);
    }

    sub_231157E28();
    sub_2310BDD00(&unk_280CCB148, MEMORY[0x277D79B98], MEMORY[0x277D79B90]);
    sub_231157CA8();

    v37 = sub_231157DF8();
    sub_23107B168(v9, v37, v38);

    v32(v9, v3);
    (*(v43 + 1))(v13, v46);
  }

  else
  {
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v18 = sub_231158258();
    __swift_project_value_buffer(v18, qword_280CCDF80);
    swift_unknownObjectRetain();
    v46 = sub_231158238();
    v19 = sub_2311592D8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v46, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v47 = a1;
      v48 = v21;
      *v20 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CB30, &qword_231165388);
      v22 = sub_231158E68();
      v24 = sub_2310488F8(v22, v23, &v48);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_23103C000, v46, v19, "Unable to decode XPC event: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x2319267C0](v21, -1, -1);
      MEMORY[0x2319267C0](v20, -1, -1);
    }

    else
    {
      v36 = v46;
    }
  }
}

void sub_2310BB400(void *a1, uint64_t a2)
{
  v45 = a2;
  v3 = sub_231157F58();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v39[-v8];
  v10 = sub_2311581F8();
  isa = v10[-1].isa;
  MEMORY[0x28223BE20](v10);
  v13 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_231158268();
  if (xpc_dictionary_get_string(a1, v14))
  {
    v46 = v10;
    v15 = sub_231158EC8();
    v17 = v16;
    sub_2311581E8();
    sub_2310BDD00(&qword_27DD3CB50, MEMORY[0x277D79C78], MEMORY[0x277D79C80]);
    sub_2311581D8();
    v42 = v15;
    v44 = v17;
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v43 = isa;
    v25 = sub_231158258();
    __swift_project_value_buffer(v25, qword_280CCDF80);
    (*(v4 + 16))(v7, v9, v3);
    v26 = sub_231158238();
    v27 = sub_2311592F8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48 = v41;
      *v28 = 136315138;
      sub_2310BDD00(&qword_27DD3CB58, MEMORY[0x277D79C78], MEMORY[0x277D79C88]);
      v40 = v27;
      v29 = sub_2311597C8();
      v31 = v30;
      v32 = *(v4 + 8);
      v32(v7, v3);
      v33 = sub_2310488F8(v29, v31, &v48);

      *(v28 + 4) = v33;
      v34 = v28;
      _os_log_impl(&dword_23103C000, v26, v40, "Dispatching XPC event: %s", v28, 0xCu);
      v35 = v41;
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x2319267C0](v35, -1, -1);
      MEMORY[0x2319267C0](v34, -1, -1);
    }

    else
    {

      v32 = *(v4 + 8);
      v32(v7, v3);
    }

    sub_231157F78();
    sub_2310BDD00(&qword_27DD3CB48, MEMORY[0x277D79C98], MEMORY[0x277D79C90]);
    sub_231157CA8();

    v37 = sub_231157F38();
    sub_23107B1B0(v9, v37, v38);

    v32(v9, v3);
    (*(v43 + 1))(v13, v46);
  }

  else
  {
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v18 = sub_231158258();
    __swift_project_value_buffer(v18, qword_280CCDF80);
    swift_unknownObjectRetain();
    v46 = sub_231158238();
    v19 = sub_2311592D8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v46, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v47 = a1;
      v48 = v21;
      *v20 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CB30, &qword_231165388);
      v22 = sub_231158E68();
      v24 = sub_2310488F8(v22, v23, &v48);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_23103C000, v46, v19, "Unable to decode XPC event: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x2319267C0](v21, -1, -1);
      MEMORY[0x2319267C0](v20, -1, -1);
    }

    else
    {
      v36 = v46;
    }
  }
}

void sub_2310BBB5C(void *a1, uint64_t a2)
{
  v4 = sub_231158078();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = sub_2311581F8();
  isa = v11[-1].isa;
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_231158268();
  if (xpc_dictionary_get_string(a1, v15))
  {
    v46 = isa;
    v47 = v11;
    v16 = sub_231158EC8();
    v18 = v17;
    sub_2311581E8();
    sub_2310BDD00(&unk_27DD3CB60, MEMORY[0x277D79CC0], MEMORY[0x277D79CC8]);
    sub_2311581D8();
    v43 = v16;
    v44 = v18;
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v45 = a2;
    v26 = sub_231158258();
    __swift_project_value_buffer(v26, qword_280CCDF80);
    (*(v5 + 16))(v8, v10, v4);
    v27 = sub_231158238();
    v28 = sub_2311592F8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v49 = v42;
      *v29 = 136315138;
      v41 = v28;
      v40 = XPCAppProtectionEventStream.Event.description.getter();
      v31 = v30;
      v32 = *(v5 + 8);
      v32(v8, v4);
      v33 = sub_2310488F8(v40, v31, &v49);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_23103C000, v27, v41, "Dispatching XPC event: %s", v29, 0xCu);
      v34 = v42;
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x2319267C0](v34, -1, -1);
      MEMORY[0x2319267C0](v29, -1, -1);
    }

    else
    {

      v32 = *(v5 + 8);
      v32(v8, v4);
    }

    v36 = v46;
    sub_231158098();
    sub_2310BDD00(&unk_280CCB128, MEMORY[0x277D79CD8], MEMORY[0x277D79CD0]);
    sub_231157CA8();

    v37 = sub_231158068();
    sub_23107B348(v10, v37, v38);

    v32(v10, v4);
    (*(v36 + 1))(v14, v47);
  }

  else
  {
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v19 = sub_231158258();
    __swift_project_value_buffer(v19, qword_280CCDF80);
    swift_unknownObjectRetain();
    v47 = sub_231158238();
    v20 = sub_2311592D8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v47, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48 = a1;
      v49 = v22;
      *v21 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CB30, &qword_231165388);
      v23 = sub_231158E68();
      v25 = sub_2310488F8(v23, v24, &v49);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_23103C000, v47, v20, "Unable to decode XPC event: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x2319267C0](v22, -1, -1);
      MEMORY[0x2319267C0](v21, -1, -1);
    }

    else
    {
      v35 = v47;
    }
  }
}

void sub_2310BC268(void *a1, uint64_t a2)
{
  v45 = a2;
  v3 = sub_231158118();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v39[-v8];
  v10 = sub_2311581F8();
  isa = v10[-1].isa;
  MEMORY[0x28223BE20](v10);
  v13 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_231158268();
  if (xpc_dictionary_get_string(a1, v14))
  {
    v46 = v10;
    v15 = sub_231158EC8();
    v17 = v16;
    sub_2311581E8();
    sub_2310BDD00(&qword_280CCB0D8, MEMORY[0x277D79D10], MEMORY[0x277D79D18]);
    sub_2311581D8();
    v42 = v15;
    v44 = v17;
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v43 = isa;
    v25 = sub_231158258();
    __swift_project_value_buffer(v25, qword_280CCDF80);
    (*(v4 + 16))(v7, v9, v3);
    v26 = sub_231158238();
    v27 = sub_2311592F8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48 = v41;
      *v28 = 136315138;
      sub_2310BDD00(&qword_280CCB0D0, MEMORY[0x277D79D10], MEMORY[0x277D79D20]);
      v40 = v27;
      v29 = sub_2311597C8();
      v31 = v30;
      v32 = *(v4 + 8);
      v32(v7, v3);
      v33 = sub_2310488F8(v29, v31, &v48);

      *(v28 + 4) = v33;
      v34 = v28;
      _os_log_impl(&dword_23103C000, v26, v40, "Dispatching XPC event: %s", v28, 0xCu);
      v35 = v41;
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x2319267C0](v35, -1, -1);
      MEMORY[0x2319267C0](v34, -1, -1);
    }

    else
    {

      v32 = *(v4 + 8);
      v32(v7, v3);
    }

    sub_231158138();
    sub_2310BDD00(&qword_280CCB0C0, MEMORY[0x277D79D30], MEMORY[0x277D79D28]);
    sub_231157CA8();

    v37 = sub_2311580F8();
    sub_23107B390(v9, v37, v38);

    v32(v9, v3);
    (*(v43 + 1))(v13, v46);
  }

  else
  {
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v18 = sub_231158258();
    __swift_project_value_buffer(v18, qword_280CCDF80);
    swift_unknownObjectRetain();
    v46 = sub_231158238();
    v19 = sub_2311592D8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v46, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v47 = a1;
      v48 = v21;
      *v20 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CB30, &qword_231165388);
      v22 = sub_231158E68();
      v24 = sub_2310488F8(v22, v23, &v48);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_23103C000, v46, v19, "Unable to decode XPC event: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x2319267C0](v21, -1, -1);
      MEMORY[0x2319267C0](v20, -1, -1);
    }

    else
    {
      v36 = v46;
    }
  }
}

void sub_2310BC9C4(void *a1, uint64_t a2)
{
  v45 = a2;
  v3 = sub_231158168();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v39[-v8];
  v10 = sub_2311581F8();
  isa = v10[-1].isa;
  MEMORY[0x28223BE20](v10);
  v13 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_231158268();
  if (xpc_dictionary_get_string(a1, v14))
  {
    v46 = v10;
    v15 = sub_231158EC8();
    v17 = v16;
    sub_2311581E8();
    sub_2310BDD00(&qword_27DD3CB70, MEMORY[0x277D79D38], MEMORY[0x277D79D40]);
    sub_2311581D8();
    v42 = v15;
    v44 = v17;
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v43 = isa;
    v25 = sub_231158258();
    __swift_project_value_buffer(v25, qword_280CCDF80);
    (*(v4 + 16))(v7, v9, v3);
    v26 = sub_231158238();
    v27 = sub_2311592F8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48 = v41;
      *v28 = 136315138;
      sub_2310BDD00(&qword_27DD3C4E8, MEMORY[0x277D79D38], MEMORY[0x277D79D48]);
      v40 = v27;
      v29 = sub_2311597C8();
      v31 = v30;
      v32 = *(v4 + 8);
      v32(v7, v3);
      v33 = sub_2310488F8(v29, v31, &v48);

      *(v28 + 4) = v33;
      v34 = v28;
      _os_log_impl(&dword_23103C000, v26, v40, "Dispatching XPC event: %s", v28, 0xCu);
      v35 = v41;
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x2319267C0](v35, -1, -1);
      MEMORY[0x2319267C0](v34, -1, -1);
    }

    else
    {

      v32 = *(v4 + 8);
      v32(v7, v3);
    }

    sub_231158188();
    sub_2310BDD00(&unk_280CCB0A0, MEMORY[0x277D79D58], MEMORY[0x277D79D50]);
    sub_231157CA8();

    v37 = sub_231158148();
    sub_23107B3D8(v9, v37, v38);

    v32(v9, v3);
    (*(v43 + 1))(v13, v46);
  }

  else
  {
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v18 = sub_231158258();
    __swift_project_value_buffer(v18, qword_280CCDF80);
    swift_unknownObjectRetain();
    v46 = sub_231158238();
    v19 = sub_2311592D8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v46, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v47 = a1;
      v48 = v21;
      *v20 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CB30, &qword_231165388);
      v22 = sub_231158E68();
      v24 = sub_2310488F8(v22, v23, &v48);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_23103C000, v46, v19, "Unable to decode XPC event: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x2319267C0](v21, -1, -1);
      MEMORY[0x2319267C0](v20, -1, -1);
    }

    else
    {
      v36 = v46;
    }
  }
}

void sub_2310BD120(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  v71 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v68 = &v56 - v10;
  v11 = *(a5 + 8);
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v67 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  v21 = sub_2311581F8();
  isa = v21[-1].isa;
  v73 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_231158268();
  if (xpc_dictionary_get_string(a1, v24))
  {
    v64 = v18;
    v65 = a5;
    v66 = a2;
    v25 = sub_231158EC8();
    v27 = v26;
    sub_2311581E8();
    swift_getAssociatedConformanceWitness();
    sub_2311581D8();
    v61 = v25;
    v62 = v11;
    v60 = v27;
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v35 = sub_231158258();
    __swift_project_value_buffer(v35, qword_280CCDF80);
    v36 = v64;
    v59 = *(v13 + 16);
    v59(v64, v20, v12);
    v37 = sub_231158238();
    v38 = sub_2311592F8();
    v63 = v37;
    v39 = os_log_type_enabled(v37, v38);
    v40 = v65;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v57 = v41;
      v58 = swift_slowAlloc();
      v75[0] = v58;
      *v41 = 136315138;
      v59(v67, v36, v12);
      swift_getAssociatedConformanceWitness();
      v42 = sub_231158E78();
      v44 = v43;
      LODWORD(v59) = v38;
      v45 = *(v13 + 8);
      v67 = ((v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v45(v36, v12);
      v46 = v45;
      v47 = sub_2310488F8(v42, v44, v75);

      v48 = v57;
      *(v57 + 1) = v47;
      v49 = v63;
      _os_log_impl(&dword_23103C000, v63, v59, "Dispatching XPC event: %s", v48, 0xCu);
      v50 = v58;
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x2319267C0](v50, -1, -1);
      MEMORY[0x2319267C0](v48, -1, -1);
    }

    else
    {

      v52 = *(v13 + 8);
      v67 = ((v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v52(v36, v12);
      v46 = v52;
    }

    sub_231157CA8();

    v53 = v68;
    (*(v40 + 40))(v20, a4, v40);
    v54 = v71;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_23107B530(v20, v53, v12, v54, AssociatedConformanceWitness);
    (*(v70 + 8))(v53, v54);
    v46(v20, v12);
    (*(isa + 1))(v23, v73);
  }

  else
  {
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v28 = sub_231158258();
    __swift_project_value_buffer(v28, qword_280CCDF80);
    swift_unknownObjectRetain();
    v73 = sub_231158238();
    v29 = sub_2311592D8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v73, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v74 = a1;
      v75[0] = v31;
      *v30 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CB30, &qword_231165388);
      v32 = sub_231158E68();
      v34 = sub_2310488F8(v32, v33, v75);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_23103C000, v73, v29, "Unable to decode XPC event: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x2319267C0](v31, -1, -1);
      MEMORY[0x2319267C0](v30, -1, -1);
    }

    else
    {
      v51 = v73;
    }
  }
}

uint64_t sub_2310BD9E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2310BDB00(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t objectdestroy_2Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_2_13();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 24) & ~v5;
  v8 = *(v7 + 64);

  (*(v4 + 8))(v1 + v6, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + v8, v5 | 7);
}

uint64_t sub_2310BDD00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2310BDD78(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_2311591C8();
  if (!v19)
  {
    return sub_231158FB8();
  }

  v41 = v19;
  v45 = sub_231159658();
  v32 = sub_231159668();
  sub_231159608();
  result = sub_2311591B8();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_2311591E8();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_231159648();
      result = sub_2311591D8();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2310BE194(uint64_t a1)
{
  result = MEMORY[0x231924C60](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_2310DF3EC(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

unint64_t sub_2310BE254(uint64_t a1, uint64_t a2)
{
  v2 = sub_231159758();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2310BE2A0(char a1)
{
  result = 0x6F69737365536F6ELL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      return result;
    case 3:
      result = 0x666C65536F6ELL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}