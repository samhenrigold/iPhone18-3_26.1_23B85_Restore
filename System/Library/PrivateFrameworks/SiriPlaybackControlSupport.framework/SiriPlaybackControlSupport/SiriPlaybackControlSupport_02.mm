unint64_t sub_268BD9FEC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_268BDA04C(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {

    v7 = sub_268BDABC4(v6, a1);

    if (v7)
    {
      break;
    }
  }

  return i;
}

BOOL sub_268BDA100(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_268C1624C();
  sub_268C15C3C();
  v8 = sub_268C1626C();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_268C1618C() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_268BDA6D0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

unint64_t sub_268BDA24C()
{
  result = qword_2802CE1E8;
  if (!qword_2802CE1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802CE1E0, &qword_268C17B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE1E8);
  }

  return result;
}

unint64_t sub_268BDA2B4()
{
  result = qword_2802CE1F0;
  if (!qword_2802CE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE1F0);
  }

  return result;
}

unint64_t sub_268BDA30C()
{
  result = qword_2802CE1F8;
  if (!qword_2802CE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE1F8);
  }

  return result;
}

unint64_t sub_268BDA364()
{
  result = qword_2802CE200;
  if (!qword_2802CE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE200);
  }

  return result;
}

unint64_t sub_268BDA3BC()
{
  result = qword_2802CE208;
  if (!qword_2802CE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE208);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryCategory(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AccessoryCategory(uint64_t result, int a2, int a3)
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

uint64_t sub_268BDA474(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5D0, &qword_268C17D68);
  result = sub_268C1603C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_268BF7C74(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_268C1624C();
    sub_268C15C3C();
    result = sub_268C1626C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_268BDA6D0(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_268BDA474(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_268BDA990(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_268C1624C();
      sub_268C15C3C();
      result = sub_268C1626C();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_268C1618C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_268BDA838();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_268C161BC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_268BDA838()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5D0, &qword_268C17D68);
  v2 = *v0;
  v3 = sub_268C1602C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

uint64_t sub_268BDA990(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5D0, &qword_268C17D68);
  result = sub_268C1603C();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_268C1624C();

        sub_268C15C3C();
        result = sub_268C1626C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_268BDABC4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_268C1624C();

      sub_268C15C3C();
      v15 = sub_268C1626C();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_268C1618C();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_268BDAD6C()
{
  result = qword_2802CE210;
  if (!qword_2802CE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE210);
  }

  return result;
}

uint64_t sub_268BDAE70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_3_4(uint64_t a1, ...)
{

  return sub_268C1624C();
}

uint64_t CodeGenTaskBase.referencedUserEntities()()
{
  sub_268C153EC();
  v0 = sub_268C155EC();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v5 = v2;
  v3 = sub_268C155EC();
  if (!v3)
  {
    v3 = v1;
  }

  sub_268BB0078(v3);
  return v5;
}

uint64_t UsoEntitySpanBuilder.init(semantic:homeAutomationEntityType:matchInfo:payloadAttachmentInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v9;
  v10 = type metadata accessor for UsoEntitySpanBuilder(0);
  sub_268BDB0A0(a4, a6 + *(v10 + 24), &qword_2802CE238, &qword_268C17D70);
  return sub_268BDB0A0(a5, a6 + *(v10 + 28), &qword_2802CE240, &qword_268C17D78);
}

uint64_t type metadata accessor for UsoEntitySpanBuilder(uint64_t a1)
{
  result = qword_2802CE250;
  if (!qword_2802CE250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268BDB0A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_23_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_4();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t UsoEntitySpanBuilder.build()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v284 = a1;
  sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v274 = v4;
  v275 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_0();
  v273 = (v6 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE240, &qword_268C17D78);
  MEMORY[0x28223BE20](v7 - 8);
  v283 = &v270 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE238, &qword_268C17D70);
  MEMORY[0x28223BE20](v9 - 8);
  v281 = &v270 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE248, qword_268C17D80);
  MEMORY[0x28223BE20](v11 - 8);
  v279 = &v270 - v12;
  v282 = sub_268C156EC();
  OUTLINED_FUNCTION_3_0();
  v280 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_0();
  v278 = v16 - v15;
  v276 = sub_268C1561C();
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_0();
  v22 = v21 - v20;
  sub_268C1570C();
  OUTLINED_FUNCTION_3_0();
  v277 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15_0();
  sub_268C1548C();
  OUTLINED_FUNCTION_3_0();
  v286 = v26;
  v287 = v25;
  MEMORY[0x28223BE20](v25);
  v28 = &v270 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v31);
  MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v34);
  v36 = &v270 - v35;
  MEMORY[0x28223BE20](v37);
  MEMORY[0x28223BE20](v38);
  MEMORY[0x28223BE20](v39);
  v41 = &v270 - v40;
  MEMORY[0x28223BE20](v42);
  MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](&v270 - v44);
  v46 = &v270 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = &v270 - v48;
  MEMORY[0x28223BE20](v50);
  MEMORY[0x28223BE20](v51);
  v285 = v2;
  switch(*(v2 + 16))
  {
    case 0:
      v63 = v58;

      OUTLINED_FUNCTION_8_5();
      OUTLINED_FUNCTION_18_4();
      sub_268C1546C();
      v64 = *(v286 + 16);
      v277 = v63;
      v65 = v64(v36, v63, v287);
      OUTLINED_FUNCTION_12_4(v65, v66, v67, MEMORY[0x277D84F90]);
      v69 = v68;
      v71 = *(v68 + 16);
      v70 = *(v68 + 24);
      if (v71 >= v70 >> 1)
      {
        v255 = OUTLINED_FUNCTION_10_5(v70);
        sub_268BB3328(v255, v256, v257, v69);
        v69 = v258;
      }

      v73 = v283;
      v72 = v284;
      *(v69 + 16) = v71 + 1;
      v75 = v286;
      v74 = v287;
      (*(v286 + 32))(v69 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v71, v36, v287);
      v76 = v280;
      v77 = v278;
      v78 = v282;
      (*(v280 + 104))(v278, *MEMORY[0x277D5E690], v282);
      v284 = sub_268C156DC();
      (*(v76 + 8))(v77, v78);
      v79 = *MEMORY[0x277D5E480];
      v80 = sub_268C154BC();
      OUTLINED_FUNCTION_2_4();
      v82 = v279;
      (*(v81 + 104))(v279, v79, v80);
      __swift_storeEnumTagSinglePayload(v82, 0, 1, v80);
      v83 = type metadata accessor for UsoEntitySpanBuilder(0);
      v84 = v285;
      sub_268BDC5A8(v285 + *(v83 + 24), v281, &qword_2802CE238, &qword_268C17D70);
      sub_268BDC5A8(v84 + *(v83 + 28), v73, &qword_2802CE240, &qword_268C17D78);
      OUTLINED_FUNCTION_8_5();
      OUTLINED_FUNCTION_18_4();
      OUTLINED_FUNCTION_5_2();
      v274 = v73;
      v270 = v85;
      v271 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_16_4();
      sub_268C154DC();
      (*(v75 + 8))(v277, v74);
      goto LABEL_30;
    case 2:
      v273 = v56;
      v142 = v277;
      v272 = *(v277 + 104);
      v274 = v52;
      v275 = v62;
      v143 = OUTLINED_FUNCTION_13_3();
      v144(v143);
      v145 = sub_268C156FC();
      v270 = v146;
      v271 = v145;
      v147 = OUTLINED_FUNCTION_14_2(*(v142 + 8));
      v148(v147);
      v149 = OUTLINED_FUNCTION_15_4();
      v150 = v276;
      v151(v149);
      sub_268C1560C();
      (*(v18 + 8))(v22, v150);
      OUTLINED_FUNCTION_3_5();
      v152 = v274;
      sub_268C1546C();
      v153 = OUTLINED_FUNCTION_13_3();
      v272(v153);
      sub_268C156FC();
      v154 = OUTLINED_FUNCTION_6_4();
      v155(v154);
      OUTLINED_FUNCTION_17_5();
      OUTLINED_FUNCTION_0_2();
      v156 = *(v286 + 16);
      v157 = v156(v41, v152, v287);
      OUTLINED_FUNCTION_12_4(v157, v158, v159, MEMORY[0x277D84F90]);
      v161 = v160;
      v163 = *(v160 + 16);
      v162 = *(v160 + 24);
      v164 = v163 + 1;
      if (v163 >= v162 >> 1)
      {
        v259 = OUTLINED_FUNCTION_10_5(v162);
        sub_268BB3328(v259, v260, v261, v161);
        v161 = v262;
      }

      *(v161 + 16) = v164;
      v165 = *(v286 + 32);
      v166 = (*(v286 + 80) + 32) & ~*(v286 + 80);
      v167 = *(v286 + 72);
      v168 = v41;
      v169 = v287;
      v165(v161 + v166 + v167 * v163, v168, v287);
      v156(v273, v275, v169);
      v170 = *(v161 + 24);
      v171 = v163 + 2;
      if ((v163 + 2) > (v170 >> 1))
      {
        OUTLINED_FUNCTION_4_4(v170);
        v161 = v263;
      }

      v72 = v284;
      v172 = v282;
      v173 = v280;
      *(v161 + 16) = v171;
      v174 = v161 + v166 + v167 * v164;
      v175 = v287;
      v165(v174, v273, v287);
      v176 = v278;
      (*(v173 + 104))(v278, *MEMORY[0x277D5E6B0], v172);
      sub_268C156DC();
      (*(v173 + 8))(v176, v172);
      v177 = *MEMORY[0x277D5E480];
      sub_268C154BC();
      OUTLINED_FUNCTION_2_4();
      v178 = v279;
      OUTLINED_FUNCTION_22_4();
      v179();
      v135 = 1;
      OUTLINED_FUNCTION_7_4(v178);
      OUTLINED_FUNCTION_20_3();
      v180 = v285;
      sub_268BDC5A8(v285 + v181, v281, &qword_2802CE238, &qword_268C17D70);
      v182 = v180 + *(v177 + 28);
      v183 = v283;
      sub_268BDC5A8(v182, v283, &qword_2802CE240, &qword_268C17D78);
      OUTLINED_FUNCTION_19_5();
      OUTLINED_FUNCTION_19_5();
      OUTLINED_FUNCTION_5_2();
      v274 = v183;
      v270 = v184;
      v271 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_16_4();
      sub_268C154DC();
      v185 = OUTLINED_FUNCTION_9_4();
      MEMORY[0](v185, v175);
      v140 = v274;
      goto LABEL_25;
    case 3:
      v274 = &v270 - v59;
      v275 = v53;
      v95 = v277;
      v273 = *(v277 + 104);
      v96 = OUTLINED_FUNCTION_13_3();
      v97(v96);
      v98 = sub_268C156FC();
      v271 = v99;
      v272 = v98;
      v100 = OUTLINED_FUNCTION_14_2(*(v95 + 8));
      v101(v100);
      v102 = OUTLINED_FUNCTION_15_4();
      v103 = v276;
      v104(v102);
      sub_268C1560C();
      v270 = v105;
      (*(v18 + 8))(v22, v103);
      OUTLINED_FUNCTION_3_5();
      v106 = v274;
      sub_268C1546C();
      v107 = OUTLINED_FUNCTION_13_3();
      v273(v107);
      sub_268C156FC();
      v108 = OUTLINED_FUNCTION_6_4();
      v109(v108);
      OUTLINED_FUNCTION_17_5();
      OUTLINED_FUNCTION_0_2();
      v110 = *(v286 + 16);
      v111 = v110(v49, v106, v287);
      OUTLINED_FUNCTION_12_4(v111, v112, v113, MEMORY[0x277D84F90]);
      v115 = v114;
      v117 = *(v114 + 16);
      v116 = *(v114 + 24);
      if (v117 >= v116 >> 1)
      {
        sub_268BB3328(v116 > 1, v117 + 1, 1, v114);
        v115 = v253;
      }

      v277 = v117 + 1;
      *(v115 + 16) = v117 + 1;
      v118 = *(v286 + 32);
      v119 = (*(v286 + 80) + 32) & ~*(v286 + 80);
      v120 = *(v286 + 72);
      v121 = v49;
      v122 = v287;
      v118(v115 + v119 + v120 * v117, v121, v287);
      v110(v46, v275, v122);
      v123 = *(v115 + 24);
      v124 = v117 + 2;
      if ((v117 + 2) > (v123 >> 1))
      {
        OUTLINED_FUNCTION_4_4(v123);
        v115 = v254;
      }

      v126 = v281;
      v125 = v282;
      v127 = v283;
      *(v115 + 16) = v124;
      v128 = v287;
      v118(v115 + v119 + v120 * v277, v46, v287);
      v129 = v280;
      v130 = v278;
      (*(v280 + 104))(v278, *MEMORY[0x277D5E6B0], v125);
      sub_268C156DC();
      v283 = v131;
      (*(v129 + 8))(v130, v125);
      v132 = *MEMORY[0x277D5E480];
      sub_268C154BC();
      OUTLINED_FUNCTION_2_4();
      v133 = v279;
      OUTLINED_FUNCTION_22_4();
      v134();
      v135 = 1;
      OUTLINED_FUNCTION_7_4(v133);
      OUTLINED_FUNCTION_20_3();
      v136 = v285;
      sub_268BDC5A8(v285 + v137, v126, &qword_2802CE238, &qword_268C17D70);
      sub_268BDC5A8(v136 + *(v132 + 28), v127, &qword_2802CE240, &qword_268C17D78);
      OUTLINED_FUNCTION_19_5();
      OUTLINED_FUNCTION_19_5();
      OUTLINED_FUNCTION_5_2();
      v274 = v127;
      v270 = v138;
      v271 = MEMORY[0x277D84F90];
      v72 = v284;
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_16_4();
      sub_268C154DC();
      v139 = OUTLINED_FUNCTION_9_4();
      MEMORY[0](v139, v128);
      v140 = v274;
      v141 = v128;
      goto LABEL_26;
    case 4:
      v274 = v54;
      v186 = v277;
      v272 = *(v277 + 104);
      v273 = v57;
      v275 = v60;
      v187 = v61;
      v188 = OUTLINED_FUNCTION_13_3();
      v189(v188);
      v190 = sub_268C156FC();
      v270 = v191;
      v271 = v190;
      v192 = OUTLINED_FUNCTION_14_2(*(v186 + 8));
      v193(v192);
      v194 = OUTLINED_FUNCTION_15_4();
      v195 = v276;
      v196(v194);
      sub_268C1560C();
      (*(v18 + 8))(v22, v195);
      OUTLINED_FUNCTION_3_5();
      sub_268C1546C();
      v197 = OUTLINED_FUNCTION_13_3();
      v272(v197);
      sub_268C156FC();
      v198 = OUTLINED_FUNCTION_6_4();
      v199(v198);
      OUTLINED_FUNCTION_17_5();
      OUTLINED_FUNCTION_0_2();
      v200 = *(v286 + 16);
      v201 = v273;
      v277 = v187;
      v202 = v200();
      OUTLINED_FUNCTION_12_4(v202, v203, v204, MEMORY[0x277D84F90]);
      v206 = v205;
      v208 = *(v205 + 16);
      v207 = *(v205 + 24);
      v209 = v208 + 1;
      if (v208 >= v207 >> 1)
      {
        v264 = OUTLINED_FUNCTION_10_5(v207);
        sub_268BB3328(v264, v265, v266, v206);
        v206 = v267;
      }

      *(v206 + 16) = v209;
      v210 = *(v286 + 32);
      v211 = (*(v286 + 80) + 32) & ~*(v286 + 80);
      v212 = *(v286 + 72);
      v213 = v201;
      v214 = v287;
      v210(v206 + v211 + v212 * v208, v213, v287);
      (v200)(v274, v275, v214);
      v215 = *(v206 + 24);
      if ((v208 + 2) > (v215 >> 1))
      {
        OUTLINED_FUNCTION_4_4(v215);
        v206 = v268;
      }

      v216 = v282;
      *(v206 + 16) = v208 + 2;
      v217 = v206 + v211 + v212 * v209;
      v175 = v287;
      v210(v217, v274, v287);
      v218 = v280;
      v219 = v278;
      (*(v280 + 104))(v278, *MEMORY[0x277D5E6B0], v216);
      sub_268C156DC();
      (*(v218 + 8))(v219, v216);
      v220 = *MEMORY[0x277D5E480];
      sub_268C154BC();
      OUTLINED_FUNCTION_2_4();
      v221 = v279;
      OUTLINED_FUNCTION_22_4();
      v222();
      OUTLINED_FUNCTION_7_4(v221);
      OUTLINED_FUNCTION_20_3();
      v135 = v285;
      sub_268BDC5A8(v285 + v223, v281, &qword_2802CE238, &qword_268C17D70);
      v224 = v135 + *(v220 + 28);
      v225 = v283;
      sub_268BDC5A8(v224, v283, &qword_2802CE240, &qword_268C17D78);
      v288 = 1;
      OUTLINED_FUNCTION_5_2();
      v274 = v225;
      v270 = v226;
      v271 = MEMORY[0x277D84F90];
      v72 = v284;
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_16_4();
      sub_268C154DC();
      v227 = OUTLINED_FUNCTION_9_4();
      (v135)(v227, v175);
      v140 = v277;
LABEL_25:
      v141 = v175;
LABEL_26:
      (v135)(v140, v141);
      goto LABEL_30;
    case 7:
      v228 = v55;

      OUTLINED_FUNCTION_8_5();
      OUTLINED_FUNCTION_18_4();
      sub_268C1546C();
      v229 = *(v286 + 16);
      v277 = v228;
      v230 = v229(v28, v228, v287);
      OUTLINED_FUNCTION_12_4(v230, v231, v232, MEMORY[0x277D84F90]);
      v234 = v233;
      v236 = *(v233 + 16);
      v235 = *(v233 + 24);
      if (v236 >= v235 >> 1)
      {
        OUTLINED_FUNCTION_4_4(v235);
        v234 = v269;
      }

      v237 = v283;
      v72 = v284;
      v238 = v280;
      v239 = v281;
      *(v234 + 16) = v236 + 1;
      v240 = v286;
      v241 = v287;
      (*(v286 + 32))(v234 + ((*(v240 + 80) + 32) & ~*(v240 + 80)) + *(v240 + 72) * v236, v28, v287);
      v242 = v278;
      v243 = v282;
      (*(v238 + 104))(v278, *MEMORY[0x277D5E690], v282);
      sub_268C156DC();
      v284 = v244;
      (*(v238 + 8))(v242, v243);
      v245 = *MEMORY[0x277D5E480];
      sub_268C154BC();
      OUTLINED_FUNCTION_2_4();
      v246 = v279;
      OUTLINED_FUNCTION_22_4();
      v247();
      OUTLINED_FUNCTION_7_4(v246);
      OUTLINED_FUNCTION_20_3();
      v248 = v285;
      sub_268BDC5A8(v285 + v249, v239, &qword_2802CE238, &qword_268C17D70);
      sub_268BDC5A8(v248 + *(v245 + 28), v237, &qword_2802CE240, &qword_268C17D78);
      OUTLINED_FUNCTION_8_5();
      OUTLINED_FUNCTION_18_4();
      OUTLINED_FUNCTION_5_2();
      v274 = v237;
      v270 = v250;
      v271 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_16_4();
      sub_268C154DC();
      (*(v240 + 8))(v277, v241);
LABEL_30:
      v94 = 0;
      break;
    default:
      if (qword_2802CDBE0 != -1)
      {
        swift_once();
      }

      v86 = v275;
      v87 = __swift_project_value_buffer(v275, qword_2802D2F10);
      v89 = v273;
      v88 = v274;
      (*(v274 + 2))(v273, v87, v86);
      v90 = sub_268C159FC();
      v91 = sub_268C15DEC();
      v92 = os_log_type_enabled(v90, v91);
      v72 = v284;
      if (v92)
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_268BAD000, v90, v91, "Unexpected parameter while generating usoEntitySpan", v93, 2u);
        MEMORY[0x26D628010](v93, -1, -1);
      }

      v88[1](v89, v86);
      v94 = 1;
      break;
  }

  v251 = sub_268C1551C();
  return __swift_storeEnumTagSinglePayload(v72, v94, 1, v251);
}

uint64_t sub_268BDC5A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_23_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_4();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_268BDC60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE238, &qword_268C17D70);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE240, &qword_268C17D78);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_268BDC704(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE238, &qword_268C17D70);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE240, &qword_268C17D78);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_268BDC7E4(uint64_t a1)
{
  sub_268BDC8B8(319, &qword_2802CE260, MEMORY[0x277D5F490]);
  if (v1 <= 0x3F)
  {
    sub_268BDC8B8(319, &qword_2802CE268, MEMORY[0x277D5E758]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_268BDC8B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_268C15F1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_2()
{
  *(v1 - 92) = v0;
  *(v1 - 92) = v0;

  return sub_268C1546C();
}

void OUTLINED_FUNCTION_4_4(unint64_t a1@<X8>)
{

  sub_268BB3328(a1 > 1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);

  return type metadata accessor for UsoEntitySpanBuilder(0);
}

void OUTLINED_FUNCTION_12_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_268BB3328(0, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_17_5()
{
}

uint64_t OUTLINED_FUNCTION_23_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_268BDCAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8))(a2, a3);
  sub_268BDCB60(a1, v4, v5);
  v7 = v6;

  return v7;
}

void sub_268BDCB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = sub_268C1522C();
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  v49 = a3;
  v50 = 32;
  v51 = 0xE100000000000000;
  v40 = sub_268BB9A64();
  v8 = sub_268C15F3C();
  v9 = 0;
  v43 = *(v8 + 16);
  v44 = v8;
  v38 = (v6 + 8);
  v39 = v8 + 32;
  v45 = MEMORY[0x277D84F90];
  v37 = a1;
  v36 = a1 + 56;
  v10 = v41;
  v11 = v42;
  while (1)
  {
LABEL_2:
    if (v9 == v43)
    {

      return;
    }

    if (v9 >= *(v44 + 16))
    {
      break;
    }

    v13 = *(v39 + 16 * v9);
    v12 = *(v39 + 16 * v9 + 8);
    v47 = v9 + 1;
    v48 = v13;
    v49 = v12;
    v46 = v12;

    sub_268C1521C();
    v14 = sub_268C15F2C();
    v15 = *v38;
    (*v38)(v10, v11);
    v48 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5B0, &qword_268C18770);
    sub_268BDCF60();
    v16 = OUTLINED_FUNCTION_0_3();
    v18 = v17;

    v48 = v16;
    v49 = v18;
    sub_268C1520C();
    v19 = sub_268C15F2C();
    v15(v10, v11);
    v20 = v36;
    v21 = v37;

    v48 = v19;
    OUTLINED_FUNCTION_0_3();

    v22 = sub_268C15C1C();
    v24 = v23;

    if (*(v21 + 16))
    {
      sub_268C1624C();
      sub_268C15C3C();
      v25 = sub_268C1626C();
      v26 = ~(-1 << *(v21 + 32));
      while (1)
      {
        v27 = v25 & v26;
        if (((*(v20 + (((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v26)) & 1) == 0)
        {
          break;
        }

        v28 = (*(v21 + 48) + 16 * v27);
        if (*v28 != v22 || v28[1] != v24)
        {
          v30 = sub_268C1618C();
          v25 = v27 + 1;
          if ((v30 & 1) == 0)
          {
            continue;
          }
        }

        v9 = v47;
        goto LABEL_2;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_268BB2DB4();
      v45 = v34;
    }

    v31 = *(v45 + 16);
    if (v31 >= *(v45 + 24) >> 1)
    {
      sub_268BB2DB4();
      v45 = v35;
    }

    v32 = v45;
    *(v45 + 16) = v31 + 1;
    v33 = v32 + 16 * v31;
    *(v33 + 32) = v22;
    *(v33 + 40) = v24;
    v9 = v47;
  }

  __break(1u);
}

unint64_t sub_268BDCF60()
{
  result = qword_2802CE270[0];
  if (!qword_2802CE270[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2802CE5B0, &qword_268C18770);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2802CE270);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return sub_268C15B9C();
}

uint64_t sub_268BDCFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HomeKitAccessoryContainerType(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_268BDD074(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 64);
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v7 + 64) <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(v7 + 64);
  }

  v9 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v9 + 64) > v8)
  {
    v8 = *(v9 + 64);
  }

  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 64);
  if (v11 <= v8)
  {
    v11 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  v14 = *(v7 + 80) | *(v5 + 80) | *(v9 + 80) | *(v10 + 80);
  v15 = v11 + ((v14 + 17) & ~v14) + 1;
  v16 = 8 * v15;
  if (v15 > 3)
  {
    goto LABEL_15;
  }

  v18 = (a2 - 0x7FFFFFFF + ~(-1 << v16)) >> v16;
  if (v18 > 0xFFFE)
  {
    v17 = *(a1 + v15);
    if (!v17)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

  if (v18 <= 0xFE)
  {
    if (!v18)
    {
      goto LABEL_10;
    }

LABEL_15:
    v17 = *(a1 + v15);
    if (!*(a1 + v15))
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
LABEL_10:
    v12 = *(a1 + 1);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

LABEL_24:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 > 3)
    {
      LODWORD(v15) = 4;
    }

    switch(v15)
    {
      case 2:
        LODWORD(v15) = *a1;
        break;
      case 3:
        LODWORD(v15) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v15) = *a1;
        break;
      default:
        LODWORD(v15) = *a1;
        break;
    }
  }

  return (v15 | v19) ^ 0x80000000;
}

void sub_268BDD3AC(_WORD *a1, int a2, int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 64);
  swift_getAssociatedConformanceWitness();
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v9 + 64) <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v11 + 64) > v10)
  {
    v10 = *(v11 + 64);
  }

  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 64);
  if (v13 <= v10)
  {
    v13 = v10;
  }

  v14 = *(v9 + 80) | *(v7 + 80) | *(v11 + 80) | *(v12 + 80);
  v15 = v13 + ((v14 + 17) & ~v14) + 1;
  v16 = 8 * v15;
  if (a3 < 0)
  {
    if (v15 <= 3)
    {
      v18 = (a3 - 0x7FFFFFFF + ~(-1 << v16)) >> v16;
      if (v18 > 0xFFFE)
      {
        v17 = 4;
        if (a2 < 0)
        {
          goto LABEL_22;
        }

        goto LABEL_29;
      }

      if (v18 < 0xFF)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18)
      {
        v17 = v19;
      }

      else
      {
        v17 = 0;
      }

      if ((a2 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v17 = 1;
      if ((a2 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

LABEL_22:
    v20 = a2 & 0x7FFFFFFF;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v22 = a2 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v22;
          *(a1 + 2) = BYTE2(v22);
        }

        else if (v15 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = a2;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v20;
      v21 = 1;
    }

    switch(v17)
    {
      case 1:
        *(a1 + v15) = v21;
        return;
      case 2:
        *(a1 + v15) = v21;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v15) = v21;
        return;
      default:
        return;
    }
  }

  v17 = 0;
  if (a2 < 0)
  {
    goto LABEL_22;
  }

LABEL_29:
  switch(v17)
  {
    case 1:
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    case 2:
      *(a1 + v15) = 0;
      goto LABEL_33;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x268BDD74CLL);
    case 4:
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    default:
LABEL_33:
      if (a2)
      {
LABEL_34:
        *(a1 + 1) = (a2 - 1);
      }

      return;
  }
}

uint64_t sub_268BDD78C(uint64_t a1)
{
  sub_268C1606C();
  MEMORY[0x26D627230](0xD000000000000022, 0x8000000268C1C550);
  MEMORY[0x26D627230](*v1, *(v1 + 8));
  MEMORY[0x26D627230](0x203A65707974202CLL, 0xE800000000000000);
  type metadata accessor for HomeKitAccessoryContainerType(0, *(a1 + 16), *(a1 + 24), v3);
  swift_getWitnessTable();
  sub_268C1617C();
  MEMORY[0x26D627230](0x6E6572727563202CLL, 0xEF203A656D6F4874);
  if (*(v1 + 16))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v1 + 16))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x26D627230](v4, v5);

  MEMORY[0x26D627230](2129184, 0xE300000000000000);
  return 0;
}

uint64_t sub_268BDD8EC()
{
  v1 = *v0;

  return v1;
}

BOOL sub_268BDD94C(unsigned __int8 a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (v3)
  {
    v5 = a1;
    if (*v4 == 20)
    {
      if (a1 == 20)
      {
        return v3 != 0;
      }
    }

    else
    {
      v6 = 0xE400000000000000;
      v7 = 1936287860;
      switch(*v4)
      {
        case 1:
          v6 = 0xE700000000000000;
          v7 = 0x657265685F6E69;
          break;
        case 2:
          v5 = 109;
          v6 = 0xE900000000000074;
          v7 = 0x6E69685F6D6F6F72;
          break;
        case 3:
          v5 = 28015;
          v6 = 0xEA0000000000746ELL;
          v7 = 0x69685F6573756F68;
          break;
        case 4:
          v7 = 0x725F6E6F6D6D6F63;
          v6 = 0xEC000000736D6F6FLL;
          break;
        case 5:
          v7 = 1819042152;
          break;
        case 6:
          v6 = 0xE700000000000000;
          v7 = 0x6E65686374696BLL;
          break;
        case 7:
          v8 = 1769367916;
          goto LABEL_25;
        case 8:
          v8 = 1768843620;
LABEL_25:
          v7 = v8 | 0x6F72676E00000000;
          v6 = 0xEA00000000006D6FLL;
          break;
        case 9:
          v6 = 0xE800000000000000;
          v7 = 0x65636E6172746E65;
          break;
        case 0xA:
          v6 = 0xE800000000000000;
          v7 = 0x6D6F6F7268746162;
          break;
        case 0xB:
          v6 = 0xE600000000000000;
          v7 = 0x65636966666FLL;
          break;
        case 0xC:
          v6 = 0xE700000000000000;
          v7 = 0x6D6F6F72646562;
          break;
        case 0xD:
          v7 = 0x625F72657473616DLL;
          v6 = 0xEE006D6F6F726465;
          break;
        case 0xE:
          v6 = 0xE800000000000000;
          v7 = 0x746E656D65736162;
          break;
        case 0xF:
          v7 = 1685217657;
          break;
        case 0x10:
          v6 = 0xE300000000000000;
          v7 = 7174503;
          break;
        case 0x11:
          v6 = 0xE90000000000006DLL;
          v7 = 0x6F6F725F79616C70;
          break;
        case 0x12:
          v6 = 0xE700000000000000;
          v7 = 0x6D6F6F725F7674;
          break;
        case 0x13:
          v6 = 0xE800000000000000;
          v7 = 0x706F68736B726F77;
          break;
        default:
          break;
      }

      v9 = 0xE400000000000000;
      v10 = 1936287860;
      switch(v5)
      {
        case 0:
          break;
        case 1:
          v9 = 0xE700000000000000;
          v10 = 0x657265685F6E69;
          break;
        case 2:
          v9 = 0xE900000000000074;
          v10 = 0x6E69685F6D6F6F72;
          break;
        case 3:
          v9 = 0xEA0000000000746ELL;
          v10 = 0x69685F6573756F68;
          break;
        case 4:
          v10 = 0x725F6E6F6D6D6F63;
          v9 = 0xEC000000736D6F6FLL;
          break;
        case 5:
          v10 = 1819042152;
          break;
        case 6:
          v9 = 0xE700000000000000;
          v10 = 0x6E65686374696BLL;
          break;
        case 7:
          v11 = 1769367916;
          goto LABEL_46;
        case 8:
          v11 = 1768843620;
LABEL_46:
          v10 = v11 | 0x6F72676E00000000;
          v9 = 0xEA00000000006D6FLL;
          break;
        case 9:
          v9 = 0xE800000000000000;
          v10 = 0x65636E6172746E65;
          break;
        case 10:
          v9 = 0xE800000000000000;
          v10 = 0x6D6F6F7268746162;
          break;
        case 11:
          v9 = 0xE600000000000000;
          v10 = 0x65636966666FLL;
          break;
        case 12:
          v9 = 0xE700000000000000;
          v10 = 0x6D6F6F72646562;
          break;
        case 13:
          v10 = 0x625F72657473616DLL;
          v9 = 0xEE006D6F6F726465;
          break;
        case 14:
          v9 = 0xE800000000000000;
          v10 = 0x746E656D65736162;
          break;
        case 15:
          v10 = 1685217657;
          break;
        case 16:
          v9 = 0xE300000000000000;
          v10 = 7174503;
          break;
        case 17:
          v9 = 0xE90000000000006DLL;
          v10 = 0x6F6F725F79616C70;
          break;
        case 18:
          v9 = 0xE700000000000000;
          v10 = 0x6D6F6F725F7674;
          break;
        case 19:
          v9 = 0xE800000000000000;
          v10 = 0x706F68736B726F77;
          break;
        default:
          goto LABEL_53;
      }

      if (v7 == v10 && v6 == v9)
      {

        return v3 != 0;
      }

      v13 = sub_268C1618C();

      if (v13)
      {
        return v3 != 0;
      }
    }

LABEL_53:
    ++v4;
    --v3;
  }

  return v3 != 0;
}

BOOL sub_268BDDE7C(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE400000000000000;
    v8 = 1936287860;
    switch(*v4)
    {
      case 1:
        v7 = 0xE700000000000000;
        v8 = 0x657265685F6E69;
        break;
      case 2:
        v7 = 0xE900000000000074;
        v8 = 0x6E69685F6D6F6F72;
        break;
      case 3:
        v7 = 0xEA0000000000746ELL;
        v8 = 0x69685F6573756F68;
        break;
      case 4:
        v8 = 0x725F6E6F6D6D6F63;
        v7 = 0xEC000000736D6F6FLL;
        break;
      case 5:
        v8 = 1819042152;
        break;
      case 6:
        v7 = 0xE700000000000000;
        v8 = 0x6E65686374696BLL;
        break;
      case 7:
        v9 = 1769367916;
        goto LABEL_23;
      case 8:
        v9 = 1768843620;
LABEL_23:
        v8 = v9 | 0x6F72676E00000000;
        v7 = 0xEA00000000006D6FLL;
        break;
      case 9:
        v7 = 0xE800000000000000;
        v8 = 0x65636E6172746E65;
        break;
      case 0xA:
        v7 = 0xE800000000000000;
        v8 = 0x6D6F6F7268746162;
        break;
      case 0xB:
        v7 = 0xE600000000000000;
        v8 = 0x65636966666FLL;
        break;
      case 0xC:
        v7 = 0xE700000000000000;
        v8 = 0x6D6F6F72646562;
        break;
      case 0xD:
        v8 = 0x625F72657473616DLL;
        v7 = 0xEE006D6F6F726465;
        break;
      case 0xE:
        v7 = 0xE800000000000000;
        v8 = 0x746E656D65736162;
        break;
      case 0xF:
        v8 = 1685217657;
        break;
      case 0x10:
        v7 = 0xE300000000000000;
        v8 = 7174503;
        break;
      case 0x11:
        v8 = 0x6F6F725F79616C70;
        v7 = 0xE90000000000006DLL;
        break;
      case 0x12:
        v7 = 0xE700000000000000;
        v8 = 0x6D6F6F725F7674;
        break;
      case 0x13:
        v7 = 0xE800000000000000;
        v8 = 0x706F68736B726F77;
        break;
      default:
        break;
    }

    v10 = 0xE400000000000000;
    v11 = 1936287860;
    switch(a1)
    {
      case 1:
        v10 = 0xE700000000000000;
        v11 = 0x657265685F6E69;
        break;
      case 2:
        v10 = 0xE900000000000074;
        v11 = 0x6E69685F6D6F6F72;
        break;
      case 3:
        v10 = 0xEA0000000000746ELL;
        v11 = 0x69685F6573756F68;
        break;
      case 4:
        v11 = 0x725F6E6F6D6D6F63;
        v10 = 0xEC000000736D6F6FLL;
        break;
      case 5:
        v11 = 1819042152;
        break;
      case 6:
        v10 = 0xE700000000000000;
        v11 = 0x6E65686374696BLL;
        break;
      case 7:
        v12 = 1769367916;
        goto LABEL_44;
      case 8:
        v12 = 1768843620;
LABEL_44:
        v11 = v12 | 0x6F72676E00000000;
        v10 = 0xEA00000000006D6FLL;
        break;
      case 9:
        v10 = 0xE800000000000000;
        v11 = 0x65636E6172746E65;
        break;
      case 10:
        v10 = 0xE800000000000000;
        v11 = 0x6D6F6F7268746162;
        break;
      case 11:
        v10 = 0xE600000000000000;
        v11 = 0x65636966666FLL;
        break;
      case 12:
        v10 = 0xE700000000000000;
        v11 = 0x6D6F6F72646562;
        break;
      case 13:
        v11 = 0x625F72657473616DLL;
        v10 = 0xEE006D6F6F726465;
        break;
      case 14:
        v10 = 0xE800000000000000;
        v11 = 0x746E656D65736162;
        break;
      case 15:
        v11 = 1685217657;
        break;
      case 16:
        v10 = 0xE300000000000000;
        v11 = 7174503;
        break;
      case 17:
        v11 = 0x6F6F725F79616C70;
        v10 = 0xE90000000000006DLL;
        break;
      case 18:
        v10 = 0xE700000000000000;
        v11 = 0x6D6F6F725F7674;
        break;
      case 19:
        v10 = 0xE800000000000000;
        v11 = 0x706F68736B726F77;
        break;
      default:
        break;
    }

    if (v8 == v11 && v7 == v10)
    {

      return v5 != 0;
    }

    v14 = sub_268C1618C();

    ++v4;
  }

  while ((v14 & 1) == 0);
  return v5 != 0;
}

BOOL sub_268BDE390(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE800000000000000;
    v8 = 0x76745F656C707061;
    switch(*v4)
    {
      case 1:
        v8 = 0x69736976656C6574;
        v7 = 0xEA00000000006E6FLL;
        break;
      case 2:
        v7 = 0xE700000000000000;
        v8 = 0x646F70656D6F68;
        break;
      case 3:
        v7 = 0xE700000000000000;
        v8 = 0x72656B61657073;
        break;
      case 4:
        v8 = 0x5F74726F70726961;
        v7 = 0xEF73736572707865;
        break;
      case 5:
        v7 = 0xE400000000000000;
        v8 = 1684099177;
        break;
      case 6:
        v7 = 0xE600000000000000;
        v8 = 0x656E6F685069;
        break;
      case 7:
        v8 = 0x5F79616C70726961;
        v7 = 0xEF72656B61657073;
        break;
      case 8:
        v8 = 0xD000000000000011;
        v7 = 0x8000000268C1B470;
        break;
      case 9:
        v8 = 0xD000000000000012;
        v7 = 0x8000000268C1B380;
        break;
      case 0xA:
        v8 = 0x636341726568746FLL;
        v7 = 0xEE0079726F737365;
        break;
      case 0xB:
        v7 = 0xE700000000000000;
        v8 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    v9 = 0xE800000000000000;
    v10 = 0x76745F656C707061;
    switch(a1)
    {
      case 1:
        v10 = 0x69736976656C6574;
        v9 = 0xEA00000000006E6FLL;
        break;
      case 2:
        v9 = 0xE700000000000000;
        v10 = 0x646F70656D6F68;
        break;
      case 3:
        v9 = 0xE700000000000000;
        v10 = 0x72656B61657073;
        break;
      case 4:
        v10 = 0x5F74726F70726961;
        v9 = 0xEF73736572707865;
        break;
      case 5:
        v9 = 0xE400000000000000;
        v10 = 1684099177;
        break;
      case 6:
        v9 = 0xE600000000000000;
        v10 = 0x656E6F685069;
        break;
      case 7:
        v10 = 0x5F79616C70726961;
        v9 = 0xEF72656B61657073;
        break;
      case 8:
        v10 = 0xD000000000000011;
        v9 = 0x8000000268C1B470;
        break;
      case 9:
        v10 = 0xD000000000000012;
        v9 = 0x8000000268C1B380;
        break;
      case 10:
        v10 = 0x636341726568746FLL;
        v9 = 0xEE0079726F737365;
        break;
      case 11:
        v9 = 0xE700000000000000;
        v10 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    if (v8 == v10 && v7 == v9)
    {

      return v5 != 0;
    }

    v12 = sub_268C1618C();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

uint64_t FilteringPredicate.deviceName.setter()
{
  OUTLINED_FUNCTION_8_6();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_268BDE808(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t FilteringPredicate.accessory.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_268BDE850(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_268BDE850(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t FilteringPredicate.room.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_268BDE850(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t FilteringPredicate.home.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_268BDE850(*(v1 + 56), *(v1 + 64));
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  return result;
}

uint64_t FilteringPredicate.zoneName.setter()
{
  OUTLINED_FUNCTION_8_6();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t FilteringPredicate.serviceGroup.setter()
{
  OUTLINED_FUNCTION_8_6();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t FilteringPredicate.routeId.setter()
{
  OUTLINED_FUNCTION_8_6();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

double FilteringPredicate.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_268C17EB0;
  *(a1 + 32) = xmmword_268C17EC0;
  *(a1 + 48) = xmmword_268C17EC0;
  *(a1 + 64) = 1;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

uint64_t FilteringPredicate.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = OUTLINED_FUNCTION_4_5();
  v5 = v4(v3);
  v56 = v6;
  v57 = v5;

  v7 = OUTLINED_FUNCTION_2_5();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v9 = OUTLINED_FUNCTION_9_5();
  if (HomeAutomationEntity.currentAccessory.getter(v9, v10))
  {
    sub_268BDE850(0, 1);
    sub_268BDE850(0, 1);
    sub_268BDE850(0, 1);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_2_5();
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v14 = OUTLINED_FUNCTION_9_5();
  if (HomeAutomationEntity.currentRoom.getter(v14, v15))
  {
    sub_268BDE850(0, v11);
    v16 = 0;
    v17 = 0;
    v59 = 0;
LABEL_8:
    v54 = v17;
    v55 = v16;
    sub_268BDE850(0, v11);
    goto LABEL_9;
  }

  v18 = OUTLINED_FUNCTION_1_3();
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v20 = OUTLINED_FUNCTION_4_5();
  v16 = v21(v20);
  if (v17)
  {
    v59 = v11;
    goto LABEL_8;
  }

  v54 = v11;
  v55 = 0;
  v59 = v11;
LABEL_9:
  v22 = OUTLINED_FUNCTION_1_3();
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v24 = OUTLINED_FUNCTION_4_5();
  v26 = v25(v24);
  v53 = v27;
  if (v27)
  {
    v52 = v26;
  }

  else
  {
    v52 = 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = OUTLINED_FUNCTION_3_6();
  v29(v28);
  if (v61 == 20 || sub_268BDDE7C(v61, &unk_287975130) || (__swift_project_boxed_opaque_existential_1(a1, a1[3]), v30 = OUTLINED_FUNCTION_3_6(), v31(v30), v61 == 20))
  {
    v32 = 0;
    v33 = 0;
  }

  else
  {
    LOBYTE(__src[0]) = v61;
    v32 = PlaceHint.rawValue.getter();
    v33 = v50;
  }

  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  v36 = (*(v35 + 32))(v34, v35);
  if (v37 || (v38 = a1[3], v39 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v38), v36 = (*(v39 + 40))(v38, v39), v37))
  {
    v32 = v36;
  }

  else
  {
    if (!v33)
    {
      goto LABEL_24;
    }

    v37 = v33;
  }

  v40 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v40 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {

LABEL_24:
    v32 = 0;
    v51 = 0;
    goto LABEL_25;
  }

  v51 = v37;

LABEL_25:
  v42 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  (*(v41 + 80))(&v61, v42, v41);
  if (v61 == 12 || (LOBYTE(__src[0]) = v61, DeviceType.rawValue.getter(), DeviceCategory.init(deviceType:)(v43), v62 == 1))
  {
    v44 = 15;
  }

  else
  {
    v44 = v61;
  }

  v45 = a1[3];
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v45);
  (*(v46 + 104))(&v61, v45, v46);
  if (v61 == 20)
  {
    v47 = v32;
  }

  else
  {
    v48 = sub_268BB0EAC(v61, 3);

    v47 = v32;
    if (v48)
    {
      sub_268BDE850(0, v59);
      v59 = 0;
    }
  }

  __src[0] = v57;
  __src[1] = v56;
  __src[2] = v44;
  __src[3] = 0;
  __src[4] = v11;
  __src[5] = v55;
  __src[6] = v54;
  __src[7] = 0;
  __src[8] = v59;
  __src[9] = v52;
  __src[10] = v53;
  __src[11] = v47;
  __src[13] = 0;
  __src[14] = 0;
  __src[12] = v51;
  memcpy(a2, __src, 0x78uLL);
  sub_268BDEF20(__src, &v61);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v61 = v57;
  v62 = v56;
  v63 = v44;
  v64 = 0;
  v65 = v11;
  v66 = v55;
  v67 = v54;
  v68 = 0;
  v69 = v59;
  v70 = v52;
  v71 = v53;
  v72 = v47;
  v74 = 0;
  v75 = 0;
  v73 = v51;
  return sub_268BDEF58(&v61);
}

uint64_t FilteringPredicate.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v10 = v0[6];
  v11 = v0[5];
  v12 = v0[8];
  v13 = v0[7];

  sub_268C1606C();
  MEMORY[0x26D627230](0xD000000000000021, 0x8000000268C1C580);
  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 7104878;
  }

  if (!v1)
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x26D627230](v5, v1);

  MEMORY[0x26D627230](0xD000000000000010, 0x8000000268C1C5B0);

  v6 = OUTLINED_FUNCTION_1_3();
  MEMORY[0x26D627230](v6);

  MEMORY[0x26D627230](0x656369766564202CLL, 0xEE00203A65707954);
  DeviceCategory.description.getter();
  OUTLINED_FUNCTION_10_6();

  MEMORY[0x26D627230](0x496574756F72202CLL, 0xEB00000000203A64);

  v7 = OUTLINED_FUNCTION_1_3();
  MEMORY[0x26D627230](v7);

  MEMORY[0x26D627230](0x737365636361202CLL, 0xED0000203A79726FLL);
  sub_268BDE808(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE560, &unk_268C17ED0);
  sub_268C15C0C();
  OUTLINED_FUNCTION_10_6();

  MEMORY[0x26D627230](0x3A6D6F6F72202C20, 0xE900000000000020);
  sub_268BDE808(v11, v10);
  sub_268C15C0C();
  OUTLINED_FUNCTION_10_6();

  MEMORY[0x26D627230](0x614E656E6F7A202CLL, 0xEC000000203A656DLL);

  v8 = OUTLINED_FUNCTION_1_3();
  MEMORY[0x26D627230](v8);

  MEMORY[0x26D627230](0x203A656D6F68202CLL, 0xE800000000000000);
  sub_268BDE808(v13, v12);
  sub_268C15C0C();
  OUTLINED_FUNCTION_10_6();

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return 0;
}

uint64_t static FilteringPredicate.Location.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_268C1618C();
}

uint64_t static FilteringPredicate.createPredicates(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  for (i = MEMORY[0x277D84F90]; v1; --v1)
  {
    sub_268BDFAE0(v2, &v25);
    v5 = v26;
    v6 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, v26);
    (*(v6 + 112))(v22, v5, v6);
    if (LOBYTE(v22[0]) == 5)
    {
      sub_268BB5BDC(&v25, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = i;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268BB4574(0, *(i + 16) + 1, 1);
        i = v28;
      }

      v9 = *(i + 16);
      v8 = *(i + 24);
      if (v9 >= v8 >> 1)
      {
        sub_268BB4574((v8 > 1), v9 + 1, 1);
      }

      v10 = v23;
      v11 = v24;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      v13 = MEMORY[0x28223BE20](v12);
      v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) + 136;
      (*(v16 + 16))(v15, v13);
      sub_268BDFB44(v9, v15, &v28, v10, v11);
      __swift_destroy_boxed_opaque_existential_0(v22);
      i = v28;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(&v25);
    }

    v2 += 40;
  }

  v28 = v3;
  v17 = *(i + 16);
  if (v17)
  {
    v18 = i + 32;
    v21 = xmmword_268C172B0;
    do
    {
      sub_268BDFAE0(v18, &v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD48, &qword_268C170F8);
      inited = swift_initStackObject();
      *(inited + 16) = v21;
      sub_268BDFAE0(&v25, v22);
      FilteringPredicate.init(from:)(v22, (inited + 32));
      __swift_destroy_boxed_opaque_existential_0(&v25);
      sub_268BB0420(inited);
      v18 += 40;
      --v17;
    }

    while (v17);
  }

  return v28;
}

uint64_t FilteringPredicate.namedEntity.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    if (v0[12])
    {
      v1 = v0[11];
    }

    else if (v0[4] > 1)
    {
      v1 = v0[3];
    }

    else if (v0[6] > 1)
    {
      v1 = v0[5];
    }

    else if (v0[8] > 1)
    {
      v1 = v0[7];
    }

    else
    {
      v1 = v0[9];
      if (!v0[10])
      {
        goto LABEL_14;
      }
    }
  }

LABEL_14:

  return v1;
}

uint64_t FilteringPredicate.name.getter()
{
  v1 = *(v0 + 64);
  result = FilteringPredicate.namedEntity.getter();
  v4 = 0x6568777972657665;
  if (v1)
  {
    v4 = 0;
  }

  if (!v3)
  {
    return v4;
  }

  return result;
}

void FilteringPredicate.groupType.getter(char *a1@<X8>)
{
  if (v1[1] || v1[12])
  {
    goto LABEL_3;
  }

  v3 = v1[4];
  if (!v3)
  {
    v2 = 2;
    goto LABEL_4;
  }

  if (v3 != 1)
  {
LABEL_3:
    v2 = 0;
  }

  else
  {
    v4 = v1[6];
    if (v4 == 1)
    {
      if (v1[2] == 15)
      {
        v2 = 5;
      }

      else
      {
        v2 = 6;
      }

      if (v1[8] != 1)
      {
        v2 = 4;
      }

      if (v1[10])
      {
        v2 = 3;
      }
    }

    else if (v4)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

LABEL_4:
  *a1 = v2;
}

SiriPlaybackControlSupport::FilteringPredicate::GroupType_optional __swiftcall FilteringPredicate.GroupType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_268C1615C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FilteringPredicate.GroupType.rawValue.getter()
{
  result = 0x726F737365636361;
  switch(*v0)
  {
    case 1:
      result = 1836019570;
      break;
    case 2:
      result = 1701995880;
      break;
    case 3:
      result = 1701736314;
      break;
    case 4:
      result = 0x6568777972657665;
      break;
    case 5:
      result = 0x63697665446C6C61;
      break;
    case 6:
      result = 0x7954656369766564;
      break;
    case 7:
      result = 0x6C61636F6CLL;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268BDF914@<X0>(uint64_t *a1@<X8>)
{
  result = FilteringPredicate.GroupType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268BDF93C(uint64_t a1)
{
  v2 = v1[6];
  if (v2 == 1)
  {
    return OUTLINED_FUNCTION_5_3();
  }

  v4 = v1[14];
  v5 = v1[12];
  v6 = v1[10];
  v7 = v1[4];
  v16[0] = v1[5];
  v16[1] = v2;
  v15[0] = 0;
  v15[1] = 0;
  v8 = OUTLINED_FUNCTION_1_3();
  sub_268BDE808(v8, v9);
  v10 = OUTLINED_FUNCTION_1_3();
  sub_268BDE808(v10, v11);
  static FilteringPredicate.Location.== infix(_:_:)(v16, v15);

  v12 = OUTLINED_FUNCTION_1_3();
  sub_268BDE850(v12, v13);
  OUTLINED_FUNCTION_6_5();
  if (v7 != 1)
  {
    v14 = 0;
  }

  if (v6)
  {
    v14 = 0;
  }

  if (v5)
  {
    v14 = 0;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t sub_268BDFA0C(uint64_t a1)
{
  v2 = v1[4];
  if (v2 == 1)
  {
    return OUTLINED_FUNCTION_5_3();
  }

  v4 = v1[14];
  v5 = v1[12];
  v6 = v1[10];
  v7 = v1[6];
  v16[0] = v1[3];
  v16[1] = v2;
  v15[0] = 0;
  v15[1] = 0;
  v8 = OUTLINED_FUNCTION_1_3();
  sub_268BDE808(v8, v9);
  v10 = OUTLINED_FUNCTION_1_3();
  sub_268BDE808(v10, v11);
  static FilteringPredicate.Location.== infix(_:_:)(v16, v15);

  v12 = OUTLINED_FUNCTION_1_3();
  sub_268BDE850(v12, v13);
  OUTLINED_FUNCTION_6_5();
  if (v7 != 1)
  {
    v14 = 0;
  }

  if (v6)
  {
    v14 = 0;
  }

  if (v5)
  {
    v14 = 0;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t sub_268BDFAE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_268BDFB44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_268BB5BDC(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_268BDFBE0()
{
  result = qword_2802CE2F8[0];
  if (!qword_2802CE2F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2802CE2F8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26SiriPlaybackControlSupport18FilteringPredicateV8LocationOSg(uint64_t a1)
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

uint64_t sub_268BDFC60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 120))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268BDFCB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_268BDFD3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268BDFD8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_268BDFDE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_268BDFDF8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilteringPredicate.GroupType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FilteringPredicate.GroupType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x268BDFF78);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_0_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_268BDE808(a1, a2);
}

uint64_t OUTLINED_FUNCTION_5_3()
{
  sub_268BDE808(v0, 1);
  sub_268BDE850(v0, 1);
  sub_268BDE850(0, 0);
  return 0;
}

void OUTLINED_FUNCTION_10_6()
{

  JUMPOUT(0x26D627230);
}

uint64_t sub_268BE00E8(char a1)
{
  result = 0x797469746E65;
  switch(a1)
  {
    case 1:
      result = 0x69746E4572657375;
      break;
    case 2:
      result = 0x636E657265666572;
      break;
    case 3:
      result = 0x73676E6974746573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t UsoTask.referencedNoEntity()()
{
  v0 = sub_268BE0238(&unk_2879746D0, MEMORY[0x277D5E220], sub_268BB0274);
  if (sub_268BC4EF4(v0))
  {
    sub_268BC4F00();
    if ((v0 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x26D627640](0, v0);
    }

    else
    {
      v1 = *(v0 + 32);
    }
  }

  else
  {

    return 0;
  }

  return v1;
}

uint64_t sub_268BE0238(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t))
{
  v6 = *(a1 + 16);
  v7 = (a1 + 32);
  for (i = MEMORY[0x277D84F90]; v6; i = v10)
  {
    v9 = *v7++;
    v10 = sub_268BE04B8(i, v9, v3, a2, a3);

    --v6;
  }

  return i;
}

uint64_t UsoTask.referencedMediaItem()()
{
  v0 = sub_268BE0238(&unk_287974680, MEMORY[0x277D5E9D8], sub_268BB0190);
  if (sub_268BC4EF4(v0))
  {
    sub_268BC4F00();
    if ((v0 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x26D627640](0, v0);
    }

    else
    {
      v1 = *(v0 + 32);
    }
  }

  else
  {

    return 0;
  }

  return v1;
}

uint64_t UsoTask.referencedSetting()()
{
  v0 = sub_268BE0238(&unk_2879746A8, MEMORY[0x277D5E8C0], sub_268BB0248);
  if (sub_268BC4EF4(v0))
  {
    sub_268BC4F00();
    if ((v0 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x26D627640](0, v0);
    }

    else
    {
      v1 = *(v0 + 32);
    }
  }

  else
  {

    return 0;
  }

  return v1;
}

uint64_t UsoTask.referencedUserEntities()()
{
  sub_268C1576C();
  if (!v3)
  {
    sub_268BE07E8(v2);
    return MEMORY[0x277D84F90];
  }

  sub_268C155FC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v0 = CodeGenTaskBase.referencedUserEntities()();

  return v0;
}

uint64_t sub_268BE04B8(uint64_t a1, char a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  v8 = sub_268C1583C();
  v9 = 0xE600000000000000;
  v10 = 0x797469746E65;
  switch(a2)
  {
    case 1:
      v9 = 0xEC00000073656974;
      v10 = 0x69746E4572657375;
      break;
    case 2:
      v9 = 0xE900000000000065;
      v10 = 0x636E657265666572;
      break;
    case 3:
      v9 = 0xE800000000000000;
      v10 = 0x73676E6974746573;
      break;
    default:
      break;
  }

  sub_268C0F218(v10, v9, v8);
  v12 = v11;

  if (v12)
  {
    v18 = a5;
    v19 = MEMORY[0x277D84F90];
    v22 = MEMORY[0x277D84F90];
    v13 = sub_268BC4EF4(v12);
    v14 = 0;
    while (v13 != v14)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D627640](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }
      }

      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        JUMPOUT(0x268BE0724);
      }

      a4(0);
      sub_268C1585C();
      sub_268C1578C();

      ++v14;
      if (v21)
      {
        MEMORY[0x26D6272B0](v16);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268C15D2C();
        }

        sub_268C15D5C();
        v19 = v22;
        v14 = v15;
      }
    }

    v18(v19);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_268BE07E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE140, &qword_268C17978);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268BE0858(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_268BE0994(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  swift_getAssociatedConformanceWitness();
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 > v7)
  {
    v7 = v8;
  }

  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_28;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 252) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_28:
      v17 = *(a1 + v10);
      if (v17 >= 4)
      {
        return (v17 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_28;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    switch(v11)
    {
      case 2:
        LODWORD(v11) = *a1;
        break;
      case 3:
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v11) = *a1;
        break;
      default:
        LODWORD(v11) = *a1;
        break;
    }
  }

  return (v11 | v16) + 253;
}

void sub_268BE0BE8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  swift_getAssociatedConformanceWitness();
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v10 > v9)
  {
    v9 = v10;
  }

  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 <= v9)
  {
    v11 = v9;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if (a3 < 0xFD)
  {
    v14 = 0;
  }

  else if (v12 <= 3)
  {
    v17 = ((a3 + ~(-1 << v13) - 252) >> v13) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (a2 > 0xFC)
  {
    v15 = a2 - 253;
    if (v12 < 4)
    {
      v16 = (v15 >> v13) + 1;
      if (v11 != -1)
      {
        v19 = v15 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v12 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v11 + 1);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v12] = v16;
        break;
      case 2:
        *&a1[v12] = v16;
        break;
      case 3:
LABEL_42:
        __break(1u);
        JUMPOUT(0x268BE0EA4);
      case 4:
        *&a1[v12] = v16;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v14)
    {
      case 1:
        a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_31;
      case 2:
        *&a1[v12] = 0;
        goto LABEL_30;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_31;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          a1[v11] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_268BE0EE4(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v5);
  v8 = 0x656D6F682ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = 0x656E6F7A2ELL;
      break;
    case 2u:
      v8 = 0x6D6F6F722ELL;
      break;
    case 3u:
      v8 = 0x6F7373656363612ELL;
      break;
    default:
      break;
  }

  (*(v3 + 8))(v7, a1);
  return v8;
}

uint64_t sub_268BE1098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HomeKitAccessoryContainerType(0, a2, a3, a4);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_3_7();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v7 + 16))(&v14 - v10, a1, v5, v9);
  v12 = 4 - swift_getEnumCaseMultiPayload();
  (*(v7 + 8))(v11, v5);
  return v12;
}

uint64_t sub_268BE1178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v93 = a1;
  v94 = a2;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v87 = v5;
  v88 = v4;
  OUTLINED_FUNCTION_3_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v81 = v7;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v85 = v9;
  v86 = v8;
  OUTLINED_FUNCTION_3_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_6();
  v80 = v11;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v83 = v13;
  v84 = v12;
  OUTLINED_FUNCTION_3_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_6();
  v79 = v15;
  v92 = swift_checkMetadataState();
  OUTLINED_FUNCTION_3_0();
  v82 = v16;
  OUTLINED_FUNCTION_3_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_6();
  v78 = v18;
  OUTLINED_FUNCTION_4_6();
  v23 = type metadata accessor for HomeKitAccessoryContainerType(v19, v20, v21, v22);
  OUTLINED_FUNCTION_3_0();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v77 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v77 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v77 - v36;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_3_0();
  v91 = v39;
  OUTLINED_FUNCTION_3_7();
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v77 - v42;
  v45 = *(v44 + 48);
  v90 = v25;
  v46 = *(v25 + 16);
  v46(&v77 - v42, v93, v23, v41);
  (v46)(&v43[v45], v94, v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_6();
      (v46)();
      if (OUTLINED_FUNCTION_8_7() == 1)
      {
        v65 = v83;
        v47 = v84;
        OUTLINED_FUNCTION_2_6();
        v66 = v79;
        v68 = v67(v79);
        OUTLINED_FUNCTION_6_6(v68, v69, v70, &protocol requirements base descriptor for HomeWrapper, &associated conformance descriptor for HomeWrapper.HomeWrapper.ZoneType: ZoneWrapper);
        LOBYTE(v45) = sub_268C15BDC();
        v46 = *(v65 + 8);
        (v46)(v66, v47);
        v56 = v34;
        goto LABEL_15;
      }

      (*(v83 + 8))(v34, v84);
      goto LABEL_13;
    case 2u:
      OUTLINED_FUNCTION_4_6();
      (v46)();
      if (OUTLINED_FUNCTION_8_7() == 2)
      {
        v47 = v86;
        OUTLINED_FUNCTION_2_6();
        v49 = v48(v80);
        v52 = OUTLINED_FUNCTION_6_6(v49, v50, v51, &protocol requirements base descriptor for HomeWrapper, &associated conformance descriptor for HomeWrapper.HomeWrapper.RoomType: RoomWrapper);
        OUTLINED_FUNCTION_5_4(v31, v53, v54, *(v52 + 16));
        v55 = OUTLINED_FUNCTION_1_4();
        (v46)(v55);
        v56 = v31;
        goto LABEL_15;
      }

      (*(v85 + 8))(v31, v86);
      goto LABEL_13;
    case 3u:
      OUTLINED_FUNCTION_4_6();
      (v46)();
      if (OUTLINED_FUNCTION_8_7() == 3)
      {
        v47 = v88;
        OUTLINED_FUNCTION_2_6();
        v58 = v57(v81);
        v61 = OUTLINED_FUNCTION_6_6(v58, v59, v60, &protocol requirements base descriptor for HomeWrapper, &associated conformance descriptor for HomeWrapper.HomeWrapper.AccessoryType: AccessoryWrapper);
        OUTLINED_FUNCTION_5_4(v28, v62, v63, *(v61 + 16));
        v64 = OUTLINED_FUNCTION_1_4();
        (v46)(v64);
        v56 = v28;
        goto LABEL_15;
      }

      (*(v87 + 8))(v28, v88);
      goto LABEL_13;
    default:
      OUTLINED_FUNCTION_4_6();
      (v46)();
      if (OUTLINED_FUNCTION_8_7())
      {
        (*(v82 + 8))(v37, v92);
LABEL_13:
        LOBYTE(v45) = 0;
        v71 = v91;
        v23 = TupleTypeMetadata2;
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        v47 = v92;
        v72(v78);
        OUTLINED_FUNCTION_5_4(v37, v73, v74, *(AssociatedConformanceWitness + 16));
        v75 = OUTLINED_FUNCTION_1_4();
        (v46)(v75);
        v56 = v37;
LABEL_15:
        (v46)(v56, v47);
        v71 = v90;
      }

      (*(v71 + 8))(v43, v23);
      return v45 & 1;
  }
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_268C15BDC();
}

uint64_t OUTLINED_FUNCTION_6_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_8_7()
{

  return swift_getEnumCaseMultiPayload();
}

SiriPlaybackControlSupport::DeviceCategory_optional __swiftcall DeviceCategory.init(deviceType:)(Swift::String deviceType)
{
  v2 = sub_268BE1AA4("Could not map device type %{public}s to a DeviceCategory. Returning nil", deviceType._countAndFlagsBits, deviceType._object, &qword_2802CDB98, &qword_2802CE388, v1);
  result.value.rawValue = v2;
  result.is_nil = v3;
  return result;
}

uint64_t sub_268BE190C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE3C0, qword_268C184D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C18270;
  *(inited + 32) = sub_268C15BFC();
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  *(inited + 56) = sub_268C15BFC();
  *(inited + 64) = v2;
  *(inited + 72) = 2;
  *(inited + 80) = sub_268C15BFC();
  *(inited + 88) = v3;
  *(inited + 96) = 4;
  *(inited + 104) = sub_268C15BFC();
  *(inited + 112) = v4;
  *(inited + 120) = 8;
  *(inited + 128) = sub_268C15BFC();
  *(inited + 136) = v5;
  *(inited + 144) = 4;
  *(inited + 152) = sub_268C15BFC();
  *(inited + 160) = v6;
  *(inited + 168) = 16;
  result = sub_268C15B7C();
  qword_2802CE380 = result;
  return result;
}

uint64_t sub_268BE1A28()
{
  result = sub_268C15B7C();
  qword_2802CE388 = result;
  return result;
}

SiriPlaybackControlSupport::DeviceCategory_optional __swiftcall DeviceCategory.init(homekitType:)(Swift::String homekitType)
{
  v2 = sub_268BE1AA4("Could not map homekitType %{public}s to a DeviceCategory. Returning nil", homekitType._countAndFlagsBits, homekitType._object, &qword_2802CDB90, &qword_2802CE380, v1);
  result.value.rawValue = v2;
  result.is_nil = v3;
  return result;
}

uint64_t sub_268BE1AA4@<X0>(const char *a1@<X4>, uint64_t a2@<X0>, unint64_t a3@<X1>, void *a4@<X2>, uint64_t *a5@<X3>, uint64_t a7@<X8>, ...)
{
  v13 = sub_268C15A1C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a4 != -1)
  {
    swift_once();
  }

  v17 = *a5;
  if (*(v17 + 16) && (v18 = sub_268BD99A0(a2, a3), (v19 & 1) != 0))
  {
    v20 = v18;

    v22 = 0;
    v23 = *(*(v17 + 56) + 8 * v20);
  }

  else
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v13, qword_2802D2F10);
    (*(v14 + 16))(v16, v24, v13);

    v25 = sub_268C159FC();
    v26 = sub_268C15DEC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33 = a7;
      v34 = v28;
      v29 = a1;
      v30 = v28;
      *v27 = 136446210;
      v31 = sub_268BB3D28(a2, a3, &v34);

      *(v27 + 4) = v31;
      v32 = v29;
      a7 = v33;
      _os_log_impl(&dword_268BAD000, v25, v26, v32, v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x26D628010](v30, -1, -1);
      MEMORY[0x26D628010](v27, -1, -1);
    }

    else
    {
    }

    result = (*(v14 + 8))(v16, v13);
    v23 = 0;
    v22 = 1;
  }

  *a7 = v23;
  *(a7 + 8) = v22;
  return result;
}

void *sub_268BE1D80()
{
  sub_268BE2218();
  result = sub_268C15B7C();
  off_2802CE390 = result;
  return result;
}

uint64_t static DeviceCategory.keys.getter()
{
  if (qword_2802CDBA0 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_2802CDBA0);
  }
}

unint64_t DeviceCategory.description.getter()
{
  v1 = *v0;
  v21 = MEMORY[0x277D84FA0];
  if (qword_2802CDBA0 != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_1_5(&qword_2802CDBA0);
  }

  v2 = off_2802CE390;
  v3 = off_2802CE390 + 64;
  v4 = 1 << *(off_2802CE390 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(off_2802CE390 + 8);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_10:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    if ((*(v2[6] + 8 * v11) & ~v1) == 0)
    {
      v12 = (v2[7] + 16 * v11);
      v14 = *v12;
      v13 = v12[1];

      sub_268BDA100(&v19, v14, v13);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *&v3[8 * v9];
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_268C1606C();

  v19 = 0xD000000000000011;
  v20 = 0x8000000268C1C5D0;
  if (*(v21 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE1E0, &qword_268C17B10);
    sub_268BDA24C();
    sub_268BB9A64();
    v15 = sub_268C15CDC();
    v17 = v16;
  }

  else
  {

    v17 = 0xE300000000000000;
    v15 = 7104878;
  }

  MEMORY[0x26D627230](v15, v17);

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return v19;
}

SiriPlaybackControlSupport::DeviceCategory sub_268BE2040@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = DeviceCategory.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_268BE2080@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceCategory.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_268BE20AC()
{
  result = qword_2802CE398;
  if (!qword_2802CE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE398);
  }

  return result;
}

unint64_t sub_268BE2104()
{
  result = qword_2802CE3A0;
  if (!qword_2802CE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE3A0);
  }

  return result;
}

unint64_t sub_268BE215C()
{
  result = qword_2802CE3A8;
  if (!qword_2802CE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE3A8);
  }

  return result;
}

unint64_t sub_268BE21B4()
{
  result = qword_2802CE3B0;
  if (!qword_2802CE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE3B0);
  }

  return result;
}

unint64_t sub_268BE2218()
{
  result = qword_2802CE3B8;
  if (!qword_2802CE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE3B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_268BE22CC@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE3C8, &qword_268C18520);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_268C157BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268C157AC();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    result = sub_268BE2498(v4);
    *a1 = 5;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    if (qword_2802CDBA8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_268C0F264(qword_2802D2EF0, a1);
    swift_endAccess();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_268BE2498(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE3C8, &qword_268C18520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268BE2500()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE3D0, &qword_268C18528);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE3D8, &unk_268C18530) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268C18510;
  v4 = v3 + v2;
  v5 = v0[14];
  v6 = *MEMORY[0x277D5EA28];
  v7 = sub_268C157BC();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = 3;
  v9 = v0[14];
  v8(v4 + v1, *MEMORY[0x277D5EA38], v7);
  *(v4 + v1 + v9) = 1;
  v10 = v0[14];
  v8(v4 + 2 * v1, *MEMORY[0x277D5EA20], v7);
  *(v4 + 2 * v1 + v10) = 4;
  v11 = v4 + 3 * v1;
  v12 = v0[14];
  v8(v11, *MEMORY[0x277D5EA50], v7);
  *(v11 + v12) = 0;
  sub_268BE26E8();
  result = sub_268C15B7C();
  qword_2802D2EF0 = result;
  return result;
}

unint64_t sub_268BE26E8()
{
  result = qword_2802CE218;
  if (!qword_2802CE218)
  {
    sub_268C157BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE218);
  }

  return result;
}

uint64_t sub_268BE2740(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40 = a8;
  v41 = a7;
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v36 = a3;
  v35 = a1;
  v38 = a11;
  v39 = a12;
  v37 = a10;
  v13 = sub_268C159EC();
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v19 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v31 - v21;
  if (qword_2802CDB60 != -1)
  {
    swift_once();
  }

  v31[1] = qword_2802D2EB8;
  sub_268C159DC();
  (*(v15 + 16))(v19, v22, v13);
  v23 = (*(v15 + 80) + 33) & ~*(v15 + 80);
  v24 = v23 + v17;
  v25 = (v23 + v17) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v35;
  *(v26 + 24) = a2;
  *(v26 + 32) = v36;
  (*(v15 + 32))(v26 + v23, v19);
  *(v26 + v24) = v32 & 1;
  v27 = v26 + v25;
  v28 = v34;
  *(v27 + 8) = v33;
  *(v27 + 16) = v28;

  sub_268C15EAC();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v29 = swift_allocObject();
  *(v29 + 16) = v38;
  *(v29 + 24) = v26;

  v41(v39, v29);

  return (*(v15 + 8))(v22, v13);
}

void sub_268BE2A14(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, char a7)
{
  v10 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v16 = __swift_project_value_buffer(v10, qword_2802D2F10);
  (*(v12 + 16))(v15, v16, v10);
  v17 = sub_268C159FC();
  v18 = sub_268C15DEC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_268BAD000, v17, v18, a6, v19, 2u);
    MEMORY[0x26D628010](v19, -1, -1);
  }

  (*(v12 + 8))(v15, v10);
  sub_268BD7C38();
  v20 = swift_allocError();
  *v21 = a7;
  a2(v20, 1);
}

double sub_268BE2BDC()
{
  qword_2802CE450 = 0;
  result = 0.0;
  xmmword_2802CE430 = 0u;
  unk_2802CE440 = 0u;
  xmmword_2802CE410 = 0u;
  unk_2802CE420 = 0u;
  xmmword_2802CE3F0 = 0u;
  unk_2802CE400 = 0u;
  xmmword_2802CE3E0 = 0u;
  return result;
}

void *static DeviceResolutionProvider.current.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  if (qword_2802CDBB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_268BE4B6C(&xmmword_2802CE3E0, v25);
  if (*(&v25[1] + 1))
  {
    memcpy(v26, v25, sizeof(v26));
    v11 = type metadata accessor for DeviceSelector(0);
    static DeviceSelector.current.getter();
    *(&v25[1] + 1) = v11;
    *&v25[2] = &protocol witness table for DeviceSelector;
    *&v25[0] = v12;
    __swift_destroy_boxed_opaque_existential_0(v26);
    sub_268BB5BDC(v25, v26);
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_2802CDBE0);
    }

    v13 = __swift_project_value_buffer(v2, qword_2802D2F10);
    (*(v4 + 16))(v10, v13, v2);
    v14 = sub_268C159FC();
    v15 = sub_268C15DFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_268BAD000, v14, v15, "DeviceResolutionProvider returning existing shared instance", v16, 2u);
      MEMORY[0x26D628010](v16, -1, -1);
    }

    (*(v4 + 8))(v10, v2);
    return memcpy(a1, v26, 0x78uLL);
  }

  else
  {
    sub_268BE4BDC(v25);
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_2802CDBE0);
    }

    v18 = __swift_project_value_buffer(v2, qword_2802D2F10);
    (*(v4 + 16))(v7, v18, v2);
    v19 = sub_268C159FC();
    v20 = sub_268C15DFC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_268BAD000, v19, v20, "DeviceResolutionProvider creating a new shared instance", v21, 2u);
      MEMORY[0x26D628010](v21, -1, -1);
    }

    (*(v4 + 8))(v7, v2);
    v22 = type metadata accessor for DeviceSelector(0);
    static DeviceSelector.current.getter();
    a1[3] = v22;
    a1[4] = &protocol witness table for DeviceSelector;
    *a1 = v23;
    a1[8] = &type metadata for EncryptionProvider;
    a1[9] = &protocol witness table for EncryptionProvider;
    sub_268C1534C();
    sub_268BE4C44(a1, v26);
    swift_beginAccess();
    sub_268BE4C7C(v26, &xmmword_2802CE3E0);
    return swift_endAccess();
  }
}

uint64_t DeviceResolutionProvider.resolveDevices(for:with:)()
{
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_22_0();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v0;
  v10 = v3;
  v11 = v1;

  OUTLINED_FUNCTION_5_5("resolveDevicesDRP", 17, v5, v6, sub_268BE4D20, v7, sub_268BE4D24, v9, &unk_287978080, &unk_2879780A8, sub_268BE5050, sub_268BE5068);
}

uint64_t sub_268BE3098(uint64_t (*a1)(void **), uint64_t a2, void *a3, void *a4)
{
  v45 = a4;
  v7 = sub_268C15A1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = a3[3];
  v16 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v15);

  v17 = HomeAutomationEntityProviding.extractEntities()(v15, v16);
  v18 = v17;
  if (*(v17 + 16))
  {
    v19 = static FilteringPredicate.createPredicates(from:)(v17);
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v7, qword_2802D2F10);
    (*(v8 + 16))(v13, v20, v7);

    v21 = sub_268C159FC();
    v22 = sub_268C15DFC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v44 = v19;
      v24 = v23;
      v25 = swift_slowAlloc();
      v46 = v25;
      *v24 = 136315138;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD58, "ȡ");
      v27 = MEMORY[0x26D6272E0](v18, v26);
      v43 = v7;
      v29 = v28;

      v30 = sub_268BB3D28(v27, v29, &v46);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_268BAD000, v21, v22, "DeviceResolutionProvider.resolveDevices Getting destination devices for homeAutomationEntity provider with HomeAutomationEntities: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x26D628010](v25, -1, -1);
      v31 = v24;
      v19 = v44;
      MEMORY[0x26D628010](v31, -1, -1);

      (*(v8 + 8))(v13, v43);
    }

    else
    {

      (*(v8 + 8))(v13, v7);
    }

    v38 = v45;
    v39 = v45[3];
    v40 = v45[4];
    __swift_project_boxed_opaque_existential_1(v45, v39);
    v41 = swift_allocObject();
    *(v41 + 16) = sub_268BE52A8;
    *(v41 + 24) = v14;
    (*(v40 + 8))(v19, v38 + 10, sub_268BE52AC, v41, v39, v40);
  }

  else
  {

    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v7, qword_2802D2F10);
    v33 = v7;
    (*(v8 + 16))(v10, v32, v7);
    v34 = sub_268C159FC();
    v35 = sub_268C15DFC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_268BAD000, v34, v35, "DeviceResolutionProvider.resolveDevices No HomeAutomation nodes specified in the intent. Returning no routes", v36, 2u);
      MEMORY[0x26D628010](v36, -1, -1);
    }

    (*(v8 + 8))(v10, v33);
    v46 = MEMORY[0x277D84F90];
    v47 = 0;
    return a1(&v46);
  }
}

uint64_t sub_268BE3534(uint64_t a1, uint64_t (*a2)(void, void))
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_2802D2F10);
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_268C159FC();
  v10 = sub_268C15DFC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = v5;
    v12 = v11;
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    v14 = type metadata accessor for Device(0);
    v15 = MEMORY[0x26D6272E0](a1, v14);
    v17 = sub_268BB3D28(v15, v16, &v24);
    v22 = v4;
    v18 = a2;
    v19 = v17;

    *(v12 + 4) = v19;
    a2 = v18;
    _os_log_impl(&dword_268BAD000, v9, v10, "DeviceResolutionProvider.resolveDevices Found devices: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26D628010](v13, -1, -1);
    MEMORY[0x26D628010](v12, -1, -1);

    (*(v23 + 8))(v7, v22);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return a2(a1, 0);
}

uint64_t DeviceResolutionProvider.resolveDestinationRouteIds(for:with:)()
{
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_6_7(v0);
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_5_5("resolveDestinationRouteIdsDRP", 29, v1, v2, sub_268BE52F0, v3, sub_268BE4D2C, v6, &unk_287977FB8, &unk_287977FE0, sub_268BE5050, v5);
}

uint64_t sub_268BE3864(uint64_t a1, uint64_t a2)
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = qword_2802CDBE0;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_2802D2F10);
  (*(v5 + 16))(v7, v10, v4);
  v11 = sub_268C159FC();
  v12 = sub_268C15DFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_268BAD000, v11, v12, "DeviceResolutionProvider.destinationRouteIds Getting destination devices for intent", v13, 2u);
    MEMORY[0x26D628010](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_268BE52F4;
  *(v14 + 24) = v8;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_268BE5070;
  *(v15 + 24) = v14;
  MEMORY[0x28223BE20](v15);

  sub_268BE2740("resolveDevicesDRP", 17, 2u, 1, sub_268BE52F0, v15, sub_268BE52B8, &v17, &unk_287978080, &unk_2879780A8, sub_268BE5050, sub_268BE5068);
}

uint64_t sub_268BE3B5C(void *a1, char a2, void (*a3)(void, void), uint64_t a4)
{
  v78 = a4;
  v7 = type metadata accessor for Device(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_268C15A1C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v76 = &v68 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v68 - v18;
  if (a2)
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v11, qword_2802D2F10);
    (*(v12 + 16))(v14, v20, v11);
    v21 = a1;
    v22 = v11;
    v23 = sub_268C159FC();
    v24 = sub_268C15DEC();
    sub_268BE507C(a1, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v77 = a3;
      v27 = v26;
      v79 = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v28 = sub_268C161DC();
      v30 = sub_268BB3D28(v28, v29, &v79);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_268BAD000, v23, v24, "DeviceResolutionProvider.destinationRouteIds Failed to get destinationRouteIds: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v31 = v27;
      a3 = v77;
      MEMORY[0x26D628010](v31, -1, -1);
      MEMORY[0x26D628010](v25, -1, -1);
    }

    (*(v12 + 8))(v14, v22);
    return (a3)(a1, 1);
  }

  else
  {
    v70 = v8;
    v77 = a3;
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v11, qword_2802D2F10);
    v72 = *(v12 + 16);
    v73 = v33;
    v72(v19);

    v34 = sub_268C159FC();
    v35 = sub_268C15DFC();
    sub_268BE507C(a1, 0);
    v36 = os_log_type_enabled(v34, v35);
    v74 = v12 + 16;
    v75 = v12;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v79 = v38;
      *v37 = 136315138;
      v39 = MEMORY[0x26D6272E0](a1, v7);
      v41 = sub_268BB3D28(v39, v40, &v79);
      v69 = a1;
      v42 = v11;
      v43 = v41;

      *(v37 + 4) = v43;
      _os_log_impl(&dword_268BAD000, v34, v35, "DeviceResolutionProvider.destinationRouteIds Found devices: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x26D628010](v38, -1, -1);
      MEMORY[0x26D628010](v37, -1, -1);

      v44 = *(v12 + 8);
      v45 = v19;
      v46 = v42;
      v47 = v42;
      a1 = v69;
    }

    else
    {

      v44 = *(v12 + 8);
      v45 = v19;
      v46 = v11;
      v47 = v11;
    }

    v71 = v44;
    v44(v45, v47);
    v48 = a1[2];
    if (v48)
    {
      v49 = a1 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
      v50 = *(v70 + 72);
      v51 = MEMORY[0x277D84F90];
      do
      {
        sub_268BE5088(v49, v10);
        v53 = *v10;
        v52 = v10[1];

        sub_268BE50EC(v10);
        if (v52)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_268BB2DB4();
            v51 = v56;
          }

          v54 = *(v51 + 16);
          if (v54 >= *(v51 + 24) >> 1)
          {
            sub_268BB2DB4();
            v51 = v57;
          }

          *(v51 + 16) = v54 + 1;
          v55 = v51 + 16 * v54;
          *(v55 + 32) = v53;
          *(v55 + 40) = v52;
        }

        v49 += v50;
        --v48;
      }

      while (v48);
    }

    else
    {
      v51 = MEMORY[0x277D84F90];
    }

    v58 = sub_268BE6F40(v51);
    v59 = sub_268BE420C(v58);
    v60 = v76;
    (v72)(v76, v73, v46);
    v61 = sub_268C159FC();
    v62 = sub_268C15DFC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v79 = v64;
      *v63 = 136315138;
      v65 = MEMORY[0x26D6272E0](v59, MEMORY[0x277D837D0]);
      v67 = sub_268BB3D28(v65, v66, &v79);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_268BAD000, v61, v62, "DeviceResolutionProvider.destinationRouteIds Decoded routes: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x26D628010](v64, -1, -1);
      MEMORY[0x26D628010](v63, -1, -1);
    }

    v71(v60, v46);
    v77(v59, 0);
  }
}

void *sub_268BE420C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_268BB3A80(*(a1 + 16), 0);
  v4 = sub_268BE4EF0(&v6, v3 + 4, v2, a1);
  sub_268BE5148();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t DeviceResolutionProvider.resolveDestinationHashedRouteIds(for:with:)()
{
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_6_7(v0);
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_5_5("resolveDestinationHashedRouteIdsDRP", 35, v1, v2, sub_268BE52F0, v3, sub_268BE4D34, v6, &unk_287977FB8, &unk_287977FE0, sub_268BE5050, v5);
}

uint64_t sub_268BE4358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_268BE4C44(a3, __src);
  v9 = swift_allocObject();
  v9[2] = sub_268BE52F4;
  v9[3] = v8;
  memcpy(v9 + 4, __src, 0x78uLL);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_268BE4E74;
  *(v10 + 24) = v9;
  v13 = a3;
  v14 = a4;

  sub_268BE2740("resolveDestinationRouteIdsDRP", 29, 2u, 1, sub_268BE52F0, v10, sub_268BE52B4, v12, &unk_287977FB8, &unk_287977FE0, sub_268BE5050, sub_268BE5068);
}

uint64_t sub_268BE44D4(void *a1, char a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  v10 = sub_268C15A1C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  if (a2)
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v10, qword_2802D2F10);
    (*(v11 + 16))(v13, v17, v10);
    v18 = a1;
    v19 = sub_268C159FC();
    v20 = sub_268C15DEC();
    sub_268BE507C(a1, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v40 = a4;
      v22 = v21;
      v39 = swift_slowAlloc();
      v41 = v39;
      *v22 = 136315138;
      swift_getErrorValue();
      v23 = sub_268C161DC();
      v25 = sub_268BB3D28(v23, v24, &v41);

      *(v22 + 4) = v25;
      _os_log_impl(&dword_268BAD000, v19, v20, "DeviceResolutionProvider.destinationHashedRouteIds Failed to get destinationRouteIds: %s", v22, 0xCu);
      v26 = v39;
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x26D628010](v26, -1, -1);
      MEMORY[0x26D628010](v22, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    v27 = a1;
    v28 = 1;
    return a3(v27, v28);
  }

  if (!a1[2])
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v10, qword_2802D2F10);
    (*(v11 + 16))(v16, v34, v10);
    v35 = sub_268C159FC();
    v36 = sub_268C15DDC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_268BAD000, v35, v36, "DeviceResolutionProvider.destinationHashedRouteIds Unable to find any destination route ids", v37, 2u);
      MEMORY[0x26D628010](v37, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
    v27 = MEMORY[0x277D84F90];
    v28 = 0;
    return a3(v27, v28);
  }

  v29 = a5[8];
  v30 = a5[9];
  __swift_project_boxed_opaque_existential_1(a5 + 5, v29);
  v31 = swift_allocObject();
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;
  v32 = *(v30 + 8);

  v32(a1, sub_268BE4E84, v31, v29, v30);
}

uint64_t sub_268BE48F0(uint64_t a1, uint64_t (*a2)(void, void))
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_2802D2F10);
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_268C159FC();
  v10 = sub_268C15DFC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = v5;
    v12 = v11;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = MEMORY[0x26D6272E0](a1, MEMORY[0x277D837D0]);
    v16 = sub_268BB3D28(v14, v15, &v23);
    v21 = v4;
    v17 = a2;
    v18 = v16;

    *(v12 + 4) = v18;
    a2 = v17;
    _os_log_impl(&dword_268BAD000, v9, v10, "DeviceResolutionProvider.destinationHashedRouteIds Encoded routes: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26D628010](v13, -1, -1);
    MEMORY[0x26D628010](v12, -1, -1);

    (*(v22 + 8))(v7, v21);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return a2(a1, 0);
}

uint64_t sub_268BE4B6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802CE458, &qword_268C18540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268BE4BDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802CE458, &qword_268C18540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268BE4C7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802CE458, &qword_268C18540);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_268BE4CEC()
{

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_268BE4D78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_268BE4DB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268BE4E24()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

void *sub_268BE4EF0(void *result, void *a2, unint64_t a3, uint64_t a4)
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

void sub_268BE507C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_268BE5088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268BE50EC(uint64_t a1)
{
  v2 = type metadata accessor for Device(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_23Tm()
{
  v1 = sub_268C159EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_268BE51EC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_268C159EC() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + v6);
  v10 = v2 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v2 + 32);

  return a2(a1, v7, v8, v13, v2 + v5, v9, v11, v12);
}

uint64_t OUTLINED_FUNCTION_5_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_268BE2740(a1, a2, 2u, 1, a5, v12, a7, a8, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_6_7(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t AccessoryVolumeController.__allocating_init()()
{
  v0 = type metadata accessor for DeviceSelector(0);
  static DeviceSelector.current.getter();
  v4 = v0;
  v5 = &protocol witness table for DeviceSelector;
  *&v3 = v1;
  return sub_268BE53B0(&v3);
}

uint64_t sub_268BE53B0(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_268BB5BDC(a1, v2 + 16);
  return v2;
}

uint64_t sub_268BE5414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_7();
  v10 = swift_allocObject();
  v10[2] = *(v6 + 80);
  v10[3] = *(v6 + 88);
  v10[4] = v5;
  v10[5] = v4;
  v10[6] = a3;
  v10[7] = a4;
  v11 = *(v7 + 16);

  v12 = OUTLINED_FUNCTION_0_5();
  v11(v12);
}

uint64_t sub_268BE5500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v58 = a5;
  v59 = a4;
  v54 = a2;
  v55 = a3;
  v10 = sub_268C15A1C();
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v53 = &v53 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  v18 = sub_268C15F1C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v53 - v20;
  v22 = *(a6 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, a1, v18, v24);
  if (__swift_getEnumTagSinglePayload(v21, 1, a6) == 1)
  {
    (*(v19 + 8))(v21, v18);
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v27 = v57;
    v28 = __swift_project_value_buffer(v57, qword_2802D2F10);
    v29 = v56;
    (*(v56 + 16))(v12, v28, v27);
    v30 = v55;

    v31 = sub_268C159FC();
    v32 = sub_268C15DEC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v62 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_268BB3D28(v54, v30, &v62);
      _os_log_impl(&dword_268BAD000, v31, v32, "Failed to get volume. Could not find accessory matching routeId: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x26D628010](v34, -1, -1);
      MEMORY[0x26D628010](v33, -1, -1);
    }

    (*(v29 + 8))(v12, v27);
    v63 = 1;
    return v59(0x100000000);
  }

  else
  {
    (*(v22 + 32))(v26, v21, a6);
    v36 = (*(a7 + 128))(a6, a7);
    v37 = v26;
    if ((v36 & 0x100000000) != 0)
    {
      v48 = v56;
      v47 = v57;
      if (qword_2802CDBE0 != -1)
      {
        swift_once();
      }

      v49 = __swift_project_value_buffer(v47, qword_2802D2F10);
      (*(v48 + 16))(v17, v49, v47);
      v50 = sub_268C159FC();
      v51 = sub_268C15DEC();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_268BAD000, v50, v51, "Failed to get volume. Error getting volume level from accessory", v52, 2u);
        MEMORY[0x26D628010](v52, -1, -1);
      }

      (*(v48 + 8))(v17, v47);
      v61 = 1;
      v59(0x100000000);
      return (*(v22 + 8))(v37, a6);
    }

    else
    {
      v38 = *&v36;
      v39 = v26;
      v41 = v56;
      v40 = v57;
      if (qword_2802CDBE0 != -1)
      {
        swift_once();
      }

      v42 = __swift_project_value_buffer(v40, qword_2802D2F10);
      v43 = v53;
      (*(v41 + 16))(v53, v42, v40);
      v44 = sub_268C159FC();
      v45 = sub_268C15DFC();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 134217984;
        *(v46 + 4) = v38;
        _os_log_impl(&dword_268BAD000, v44, v45, "Current volume level of accessory: %f", v46, 0xCu);
        MEMORY[0x26D628010](v46, -1, -1);
      }

      (*(v41 + 8))(v43, v40);
      v60 = 0;
      v59(LODWORD(v38));
      return (*(v22 + 8))(v39, a6);
    }
  }
}

uint64_t sub_268BE5B68(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_7();
  v12 = swift_allocObject();
  *(v12 + 16) = *(v7 + 80);
  *(v12 + 24) = *(v7 + 88);
  *(v12 + 32) = v6;
  *(v12 + 40) = v5;
  *(v12 + 48) = a4;
  *(v12 + 56) = a5;
  *(v12 + 64) = a1;
  v13 = *(v8 + 16);

  v14 = OUTLINED_FUNCTION_0_5();
  v13(v14);
}

uint64_t sub_268BE5C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  v38 = a7;
  v39 = a3;
  v37 = a2;
  v13 = sub_268C15A1C();
  v40 = *(v13 - 8);
  v41 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_268C15F1C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - v18;
  v20 = *(a6 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a1, v16, v22);
  if (__swift_getEnumTagSinglePayload(v19, 1, a6) == 1)
  {
    (*(v17 + 8))(v19, v16);
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v25 = v41;
    v26 = __swift_project_value_buffer(v41, qword_2802D2F10);
    v27 = v40;
    (*(v40 + 16))(v15, v26, v25);
    v28 = v39;

    v29 = sub_268C159FC();
    v30 = sub_268C15DEC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_268BB3D28(v37, v28, &v42);
      _os_log_impl(&dword_268BAD000, v29, v30, "Failed to set volume: Could not find accessory matching routeId: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x26D628010](v32, -1, -1);
      MEMORY[0x26D628010](v31, -1, -1);
    }

    (*(v27 + 8))(v15, v25);
    return a4(0);
  }

  else
  {
    (*(v20 + 32))(v24, v19, a6);
    v34 = swift_allocObject();
    *(v34 + 16) = a4;
    *(v34 + 24) = a5;
    v35 = v38;
    v36 = *(v38 + 136);

    v36(sub_268BE6600, v34, a6, v35, a8);

    return (*(v20 + 8))(v24, a6);
  }
}

uint64_t objectdestroyTm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_268BE60E4(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  if (a1)
  {
    v13 = a1;
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, qword_2802D2F10);
    (*(v7 + 16))(v9, v14, v6);
    v15 = a1;
    v16 = sub_268C159FC();
    v17 = sub_268C15DEC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v32 = a2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v31 = a3;
      v21 = v20;
      v33 = a1;
      v34 = v20;
      *v19 = 136446210;
      v22 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4E0, &qword_268C19100);
      v23 = sub_268C15C0C();
      v25 = sub_268BB3D28(v23, v24, &v34);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_268BAD000, v16, v17, "Failed to set volume: Error setting volume level on accessory: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x26D628010](v21, -1, -1);
      v26 = v19;
      a2 = v32;
      MEMORY[0x26D628010](v26, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    a2(0);
  }

  else
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v6, qword_2802D2F10);
    (*(v7 + 16))(v12, v27, v6);
    v28 = sub_268C159FC();
    v29 = sub_268C15DFC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_268BAD000, v28, v29, "Accessory volume set successfully", v30, 2u);
      MEMORY[0x26D628010](v30, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    a2(1);
  }
}

uint64_t AccessoryVolumeController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_268BE65C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268BE6660(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  result = sub_268BC4EF4(a3);
  v7 = result;
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
      return v5;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D627640](i, a3);
      v9 = result;
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v9 = *(a3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v12 = v9;
    a1(&v11, &v12);
    if (v3)
    {

      return v5;
    }

    if (v11)
    {
      MEMORY[0x26D6272B0](result);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268C15D2C();
      }

      result = sub_268C15D5C();
      v5 = v13;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_268BE67C0(uint64_t a1, uint64_t *a2)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE558, &unk_268C18730);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for Device(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v29 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v28 = &v25 - v11;
  v12 = 0;
  v13 = *(a1 + 16);
  v30 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v13 == v12)
    {
      return v30;
    }

    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v15 = *(v8 + 72);
    sub_268C0204C((a1 + v14 + v15 * v12), v31, v6);
    if (v2)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_268BF2790(v6, &qword_2802CE558, &unk_268C18730);
      ++v12;
    }

    else
    {
      v27 = type metadata accessor for Device;
      sub_268BF2540(v6, v28, type metadata accessor for Device);
      sub_268BF2540(v28, v29, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268BB35B0(0, *(v30 + 16) + 1, 1, v30);
        v30 = v21;
      }

      v17 = *(v30 + 16);
      v16 = *(v30 + 24);
      v18 = (v17 + 1);
      if (v17 >= v16 >> 1)
      {
        v26 = *(v30 + 16);
        v27 = (v17 + 1);
        sub_268BB35B0(v16 > 1, v17 + 1, 1, v30);
        v17 = v26;
        v18 = v27;
        v30 = v22;
      }

      ++v12;
      v19 = v29;
      v20 = v30;
      *(v30 + 16) = v18;
      sub_268BF2540(v19, v20 + v14 + v17 * v15, type metadata accessor for Device);
    }
  }

  v23 = v30;

  return v23;
}

uint64_t sub_268BE6A64(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE558, &unk_268C18730);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Device(0);
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v30 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v28 = &v27 - v12;
  v13 = 0;
  v14 = *(a3 + 16);
  v31 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v14 == v13)
    {
      return v31;
    }

    v15 = *(type metadata accessor for MediaGroup(0) - 8);
    a1(a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_268BF2790(v8, &qword_2802CE558, &unk_268C18730);
      ++v13;
    }

    else
    {
      v27 = type metadata accessor for Device;
      v16 = v28;
      sub_268BF2540(v8, v28, type metadata accessor for Device);
      sub_268BF2540(v16, v30, v27);
      v17 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268BB35B0(0, *(v17 + 16) + 1, 1, v17);
        v17 = v23;
      }

      v18 = v17;
      v19 = *(v17 + 16);
      v31 = v18;
      v20 = *(v18 + 24);
      v21 = (v19 + 1);
      if (v19 >= v20 >> 1)
      {
        v27 = (v19 + 1);
        sub_268BB35B0(v20 > 1, v19 + 1, 1, v31);
        v21 = v27;
        v31 = v24;
      }

      ++v13;
      v22 = v31;
      *(v31 + 16) = v21;
      sub_268BF2540(v30, v22 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v19, type metadata accessor for Device);
    }
  }

  v25 = v31;

  return v25;
}

uint64_t sub_268BE6D80(uint64_t *a1, __int128 *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  sub_268BDCB60(a3, *a2, *(a2 + 1));
  v11 = sub_268BE6F40(v10);
  v12 = a4[3];
  v13 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v12);
  v14 = sub_268BDCAFC(a3, v12, v13);
  v15 = sub_268BEFAC0(v14, v11);

  if (!v15[2])
  {
  }

  sub_268C0F58C(v15, *a1);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_268BB35EC();
    v17 = v27;
  }

  v18 = *(v17 + 16);
  if (v18 >= *(v17 + 24) >> 1)
  {
    sub_268BB35EC();
    v17 = v28;
  }

  *(v17 + 16) = v18 + 1;
  v19 = v17 + 40 * v18;
  v20 = *a2;
  v21 = a2[1];
  *(v19 + 64) = *(a2 + 32);
  *(v19 + 32) = v20;
  *(v19 + 48) = v21;
  sub_268BDC5A8(a2, v29, &unk_2802CDCF0, &qword_268C170B8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29[0] = *a1;
  sub_268BEF3D4(v17, v15, isUniquelyReferenced_nonNull_native);
  *a1 = v29[0];
  v23 = *a5;
  v24 = v15[2];

  if (v24 <= v23)
  {
    v26 = v23;
  }

  else
  {
    v26 = v24;
  }

  *a5 = v26;
  return result;
}

uint64_t sub_268BE6F40(uint64_t a1)
{
  result = MEMORY[0x26D627380](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
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

    sub_268BDA100(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_268BE7000(uint64_t a1, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v6 = *(a4 + 16);
  v7 = (a4 + 64);
  if (!v6)
  {
    return v19;
  }

  while (1)
  {
    v8 = *v7;
    v9 = *(v7 - 1);
    v10 = *(v7 - 16);
    v11 = *(v7 - 3);
    v15[0] = *(v7 - 4);
    v15[1] = v11;
    v16 = v10;
    v17 = v9;
    v18 = v8;
    v12 = v9;

    a2(&v19, v15);
    v13 = v17;

    if (v4)
    {
      break;
    }

    v7 += 40;
    if (!--v6)
    {
      return v19;
    }
  }
}

uint64_t sub_268BE70C8(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
      v24 = a1;
      v14 = a1;
      Zone.rooms.getter();
      v16 = v15;
      v17 = 0;
      v23 = MEMORY[0x277D84F90];
      v18 = *(v15 + 16);
      while (2)
      {
        if (v18 == v17)
        {
          goto LABEL_12;
        }

        if (v17 < *(v16 + 16))
        {
          v19 = v17 + 1;
          v20 = *(v16 + 8 * v17 + 32);
          v21 = Room.accessories.getter();
          sub_268BB05D0(v21);

          v17 = v19;
          continue;
        }

        goto LABEL_15;
      }

    case 2:
      v11 = a1;
      v12 = Room.accessories.getter();

      return v12;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCE0, &qword_268C18780);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_268C172B0;
      *(v12 + 32) = a1;
      v13 = a1;
      return v12;
    default:
      v24 = a1;
      v3 = a1;
      Home.rooms.getter();
      v5 = v4;
      v6 = 0;
      v23 = MEMORY[0x277D84F90];
      v7 = *(v4 + 16);
      while (v7 != v6)
      {
        if (v6 >= *(v5 + 16))
        {
          __break(1u);
LABEL_15:
          __break(1u);
          JUMPOUT(0x268BE7280);
        }

        v8 = v6 + 1;
        v9 = *(v5 + 8 * v6 + 32);
        v10 = Room.accessories.getter();
        sub_268BB05D0(v10);

        v6 = v8;
      }

LABEL_12:

      return v23;
  }
}

void static DeviceSelector.current.getter()
{
  v1 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  type metadata accessor for LifeCycleManager();
  sub_268C10428();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  sub_268C10784(0x6553656369766544, 0xEE00726F7463656CLL, sub_268BE7650, v10, 300);

  if (qword_2802CDBB8 != -1)
  {
    swift_once();
  }

  v11 = sub_268C15ECC();
  if (qword_2802CE4F0)
  {
    v12 = *(qword_2802CE4F0 + OBJC_IVAR____TtC26SiriPlaybackControlSupport14DeviceSelector_homeProvider);

    v13 = v12;
    sub_268BBD464();

    if (qword_2802CDBE0 != -1)
    {
      v14 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
    }

    OUTLINED_FUNCTION_13_4(v14, qword_2802D2F10);
    (*(v3 + 16))(v9);
    v15 = sub_268C159FC();
    v16 = sub_268C15DFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_268BAD000, v15, v16, "Device selector returning existing shared instance", v17, 2u);
      OUTLINED_FUNCTION_30();
    }

    (*(v3 + 8))(v9, v1);
  }

  else
  {
    if (qword_2802CDBE0 != -1)
    {
      v11 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
    }

    OUTLINED_FUNCTION_13_4(v11, qword_2802D2F10);
    (*(v3 + 16))(v6);
    v18 = sub_268C159FC();
    v19 = sub_268C15DFC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_268BAD000, v18, v19, "Device selector creating new shared instance", v20, 2u);
      OUTLINED_FUNCTION_30();
    }

    (*(v3 + 8))(v6, v1);
    type metadata accessor for DeviceSelector(0);
    swift_allocObject();
    qword_2802CE4F0 = sub_268BE7850();
  }

  sub_268C15EDC();
  OUTLINED_FUNCTION_14_3();
}

dispatch_semaphore_t sub_268BE761C()
{
  result = dispatch_semaphore_create(1);
  qword_2802D2EF8 = result;
  return result;
}

uint64_t sub_268BE7674()
{
  v0 = sub_268C15A1C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_2802D2F10);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_268C159FC();
  v6 = sub_268C15DFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_268BAD000, v5, v6, "Clearing DeviceSelector shared instance", v7, 2u);
    MEMORY[0x26D628010](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  if (qword_2802CDBB8 != -1)
  {
    swift_once();
  }

  sub_268C15ECC();
  qword_2802CE4F0 = 0;

  return sub_268C15EDC();
}

uint64_t sub_268BE7850()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for HomeManager(0));
  sub_268BBCDD0();
  v4 = v3;
  v5 = (v1 + OBJC_IVAR____TtC26SiriPlaybackControlSupport14DeviceSelector_homeProvider);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0);
  v7 = *(v6 + 36);
  v8 = sub_268C1533C();
  __swift_storeEnumTagSinglePayload(v5 + v7, 1, 1, v8);
  v9 = v5 + *(v6 + 40);
  *(v9 + 3) = &type metadata for PlaybackControlsFeatureFlagProvider;
  *(v9 + 4) = &protocol witness table for PlaybackControlsFeatureFlagProvider;
  *v5 = v4;
  return v1;
}

void sub_268BE7904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v12 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  OUTLINED_FUNCTION_13_4(v12, qword_2802D2F10);
  (*(v10 + 16))(v4);

  v13 = sub_268C159FC();
  v14 = sub_268C15DFC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v8;
    v27 = v24;
    *v15 = 136315138;
    v16 = MEMORY[0x26D6272E0](a1, &type metadata for FilteringPredicate);
    v18 = v10;
    v19 = a3;
    v20 = a4;
    v21 = a1;
    v22 = sub_268BB3D28(v16, v17, &v27);

    *(v15 + 4) = v22;
    a1 = v21;
    a4 = v20;
    a3 = v19;
    _os_log_impl(&dword_268BAD000, v13, v14, ">>>>>> Device selector finding devices for predicates: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v18 + 8))(v4, v25);
  }

  else
  {

    (*(v10 + 8))(v4, v8);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;

  sub_268BE7DF0(a1, a2, sub_268BEF10C, v23);

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BE7B80(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_2802D2F10);
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_268C159FC();
  v10 = sub_268C15DFC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = v5;
    v12 = v11;
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    v14 = type metadata accessor for Device(0);
    v15 = MEMORY[0x26D6272E0](a1, v14);
    v17 = sub_268BB3D28(v15, v16, &v24);
    v22 = v4;
    v18 = a2;
    v19 = v17;

    *(v12 + 4) = v19;
    a2 = v18;
    _os_log_impl(&dword_268BAD000, v9, v10, "<<<<<< Device selector found devices: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26D628010](v13, -1, -1);
    MEMORY[0x26D628010](v12, -1, -1);

    (*(v23 + 8))(v7, v22);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return a2(a1);
}

uint64_t sub_268BE7DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v18 - v13;
  sub_268BDC5A8(v5, &v18 - v13, &unk_2802CE4F8, &qword_268C186B0);
  sub_268BDFAE0(a2, v19);
  v15 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a1;
  sub_268BF1FFC(v14, v16 + v15);
  sub_268BB5BDC(v19, v16 + ((v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_268BBE518();
}

void sub_268BE7F74(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a4;
  v39 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0);
  v12 = OUTLINED_FUNCTION_28(v11);
  v37 = v13;
  v38 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v40 = &v36 - v15;
  v16 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v20 = __swift_project_value_buffer(v16, qword_2802D2F10);
  (*(v18 + 16))(v6, v20, v16);

  v21 = sub_268C159FC();
  v22 = sub_268C15DFC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v36 = a3;
    v24 = a6;
    v25 = v23;
    v26 = swift_slowAlloc();
    v43 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_268BB3D28(a1, a2, &v43);
    _os_log_impl(&dword_268BAD000, v21, v22, ">>>>>> Device selector finding accessory matching routeId: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_30();
    a6 = v24;
    a3 = v36;
    OUTLINED_FUNCTION_30();
  }

  (*(v18 + 8))(v6, v16);
  v27 = OBJC_IVAR____TtC26SiriPlaybackControlSupport14DeviceSelector_homeProvider;
  v28 = swift_allocObject();
  v28[2] = v39;
  v28[3] = a6;
  v30 = v41;
  v29 = v42;
  v28[4] = a3;
  v28[5] = v29;
  v31 = v40;
  sub_268BDC5A8(v30 + v27, v40, &unk_2802CE4F8, &qword_268C186B0);
  v32 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v33 = (v38 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_268BEF14C;
  *(v34 + 24) = v28;
  sub_268BF1FFC(v31, v34 + v32);
  v35 = (v34 + v33);
  *v35 = a1;
  v35[1] = a2;

  sub_268BBE518();

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BE82C0(void **a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v37 = a2;
  v6 = sub_268C15F1C();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = sub_268C15A1C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_2802D2F10);
  (*(v10 + 16))(v12, v14, v9);
  v15 = v13;
  v16 = sub_268C159FC();
  v17 = v13;
  v18 = sub_268C15DFC();
  v38 = v15;

  v19 = os_log_type_enabled(v16, v18);
  v34 = v17;
  if (v19)
  {
    v33 = a3;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v40 = v21;
    *v20 = 136315138;
    v32 = v6;
    if (v17)
    {
      v39 = v38;
      v22 = Accessory.description.getter();
      v24 = v23;
    }

    else
    {
      v24 = 0xE500000000000000;
      v22 = 0x3E6C696E3CLL;
    }

    v26 = sub_268BB3D28(v22, v24, &v40);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_268BAD000, v16, v18, "<<<<<< Device selector found accessory: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x26D628010](v21, -1, -1);
    MEMORY[0x26D628010](v20, -1, -1);

    (*(v10 + 8))(v12, v9);
    v25 = v37;
    v6 = v32;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v25 = v37;
  }

  v40 = v34;
  v27 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE538, &qword_268C18718);
  v28 = v36;
  v29 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v8, v29 ^ 1u, 1, v28);
  v25(v8);
  return (*(v35 + 8))(v8, v6);
}

uint64_t sub_268BE8634()
{
  v1 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v5 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  OUTLINED_FUNCTION_13_4(v5, qword_2802D2F10);
  (*(v3 + 16))(v0);
  v6 = sub_268C159FC();
  v7 = sub_268C15DEC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_268BAD000, v6, v7, "DeviceSelector.usersInCurrentHome called from a non-tvOS device. Returning unsupported platform", v8, 2u);
    OUTLINED_FUNCTION_30();
  }

  (*(v3 + 8))(v0, v1);
  return 1002;
}

uint64_t DeviceSelector.__deallocating_deinit()
{
  sub_268BF2790(v0 + OBJC_IVAR____TtC26SiriPlaybackControlSupport14DeviceSelector_homeProvider, &unk_2802CE4F8, &qword_268C186B0);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_268BE8898(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_268C1606C();

      v8 = 0xD000000000000012;
      goto LABEL_12;
    case 2:
      v3 = 0x614D797A7A75662ELL;
      goto LABEL_4;
    case 3:
      v4 = 0xD00000000000001ALL;
      if (a1 != 1)
      {
        v4 = 0x686374614D6F6E2ELL;
      }

      if (a1)
      {
        return v4;
      }

      else
      {
        return 0x6F756769626D612ELL;
      }

    default:
      sub_268C1606C();

      v3 = 0x746365667265702ELL;
LABEL_4:
      v8 = v3;
LABEL_12:
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
      v7 = MEMORY[0x26D6272E0](a1, v6);
      MEMORY[0x26D627230](v7);

      MEMORY[0x26D627230](41, 0xE100000000000000);
      return v8;
  }
}

uint64_t sub_268BE8A3C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v99 = a6;
  v102 = a2;
  v103 = a4;
  v101 = a3;
  v8 = *a1;
  v7 = *(a1 + 8);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = sub_268C15A1C();
  v105 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v100 = &v89 - v14;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v20 = &v89 - v19;
  v21 = *(a1 + 40);
  v104 = v22;
  if (v21)
  {
    if (qword_2802CDB68 == -1)
    {
LABEL_3:
      v23 = __swift_project_value_buffer(v12, qword_2802D2EC0);
      v24 = v105;
      (*(v105 + 16))(v20, v23, v12);
      v25 = sub_268C159FC();
      v26 = sub_268C15DEC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_268BAD000, v25, v26, "Error finding homeData. Returning empty device list", v27, 2u);
        v28 = v27;
        v12 = v104;
        MEMORY[0x26D628010](v28, -1, -1);
      }

      (*(v24 + 8))(v20, v12);
      return v102(MEMORY[0x277D84F90]);
    }

LABEL_38:
    swift_once();
    goto LABEL_3;
  }

  v30 = v18;
  v90 = v17;
  v91 = v10;
  v93 = v8;
  v94 = v7;
  v108[0] = v8;
  v108[1] = v7;
  v108[2] = v10;
  v108[3] = v9;
  v92 = v9;
  v108[4] = v11;
  v31 = v11;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v12, qword_2802D2F10);
  v33 = v105;
  v34 = *(v105 + 16);
  v35 = v30;
  v96 = v105 + 16;
  v97 = v32;
  v95 = v34;
  (v34)(v30);
  v36 = v103;

  v37 = sub_268C159FC();
  v38 = sub_268C15DFC();

  LODWORD(v98) = v38;
  v39 = os_log_type_enabled(v37, v38);
  v40 = v99;
  if (v39)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v89 = v31;
    v43 = v42;
    __dst[0] = v42;
    *v41 = 136315138;
    v44 = MEMORY[0x26D6272E0](v36, &type metadata for FilteringPredicate);
    v46 = sub_268BB3D28(v44, v45, __dst);
    v12 = v104;

    *(v41 + 4) = v46;
    _os_log_impl(&dword_268BAD000, v37, v98, "HomeProvider.devices Searching for predicates: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x26D628010](v43, -1, -1);
    v47 = v41;
    v33 = v105;
    MEMORY[0x26D628010](v47, -1, -1);
  }

  v98 = *(v33 + 8);
  v98(v35, v12);
  v48 = v93;
  v49 = v100;
  v95(v100, v97, v12);
  v50 = v91;

  v51 = v48;
  v52 = v94;
  v53 = sub_268C159FC();
  v54 = sub_268C15DFC();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    __dst[0] = v94;
    *v55 = 136315138;
    sub_268BE92C0();
    v57 = v56;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
    v59 = MEMORY[0x26D6272E0](v57, v58);
    v61 = v60;
    sub_268BF2790(a1, &unk_2802CE540, &unk_268C18720);

    v62 = sub_268BB3D28(v59, v61, __dst);

    *(v55 + 4) = v62;
    _os_log_impl(&dword_268BAD000, v53, v54, "HomeProvider.devices Search across all available devices in HomeKit: %s", v55, 0xCu);
    v63 = v94;
    __swift_destroy_boxed_opaque_existential_0(v94);
    MEMORY[0x26D628010](v63, -1, -1);
    MEMORY[0x26D628010](v55, -1, -1);

    v64 = v104;
    v65 = v100;
  }

  else
  {
    sub_268BF2790(a1, &unk_2802CE540, &unk_268C18720);

    v65 = v49;
    v64 = v12;
  }

  v98(v65, v64);
  v66 = *(v103 + 16);
  if (v66)
  {
    v67 = (v103 + 32);
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      memcpy(__dst, v67, sizeof(__dst));
      sub_268BDEF20(__dst, v106);
      v68 = sub_268BE99F0(__dst, v108, v40);
      sub_268BDEF58(__dst);
      v69 = *(v68 + 16);
      v70 = *(v12 + 16);
      v20 = (v70 + v69);
      if (__OFADD__(v70, v69))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v20 > *(v12 + 24) >> 1)
      {
        if (v70 <= v20)
        {
          v72 = v70 + v69;
        }

        else
        {
          v72 = v70;
        }

        sub_268BB35B0(isUniquelyReferenced_nonNull_native, v72, 1, v12);
        v12 = v73;
      }

      if (*(v68 + 16))
      {
        v20 = ((*(v12 + 24) >> 1) - *(v12 + 16));
        type metadata accessor for Device(0);
        if (v20 < v69)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        v74 = &loc_268C16000;
        if (v69)
        {
          v75 = *(v12 + 16);
          v76 = __OFADD__(v75, v69);
          v77 = v75 + v69;
          if (v76)
          {
            goto LABEL_37;
          }

          *(v12 + 16) = v77;
        }
      }

      else
      {

        v74 = &loc_268C16000;
        if (v69)
        {
          goto LABEL_35;
        }
      }

      v67 += 120;
      if (!--v66)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = MEMORY[0x277D84F90];
  v74 = &loc_268C16000;
LABEL_31:
  v106[0] = MEMORY[0x277D84FA0];
  v78 = sub_268BE67C0(v12, v106);

  v79 = v90;
  v80 = v104;
  v95(v90, v97, v104);

  v81 = sub_268C159FC();
  v82 = sub_268C15DFC();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v106[0] = v84;
    *v83 = v74[422];
    v85 = type metadata accessor for Device(0);
    v86 = MEMORY[0x26D6272E0](v78, v85);
    v88 = sub_268BB3D28(v86, v87, v106);

    *(v83 + 4) = v88;
    _os_log_impl(&dword_268BAD000, v81, v82, "====== Found matches: %s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v84);
    MEMORY[0x26D628010](v84, -1, -1);
    MEMORY[0x26D628010](v83, -1, -1);
  }

  v98(v79, v80);
  v102(v78);
}

void sub_268BE92C0()
{
  v86 = sub_268C15A1C();
  v1 = MEMORY[0x28223BE20](v86);
  v3 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 0;
  v5 = *(v0 + 24);
  v81 = v5 + 32;
  v82 = v0;
  v87 = (v6 + 8);
  v88 = (v6 + 16);
  v94 = MEMORY[0x277D84F90];
  v83 = *(v5 + 16);
  v1.n128_u64[0] = 136315138;
  v85 = v1;
  v92 = v3;
  while (v4 != v83)
  {
    v7 = *(v81 + 8 * v4);
    v8 = *(v82 + 16);
    v98 = v7;
    v99[0] = v8;
    v84 = v4;
    if (v7)
    {
      if (v8)
      {
        sub_268BB9B44(0, &qword_2802CE550, 0x277D82BB8);
        v9 = v7;
        sub_268BDC5A8(v99, &v97, &qword_2802CE530, &qword_268C18710);
        v10 = v9;
        v11 = sub_268C15EEC();

        v12 = v98;
        goto LABEL_10;
      }

      v13 = v7;
    }

    else if (!v8)
    {
      sub_268BDC5A8(v99, &v97, &qword_2802CE530, &qword_268C18710);
      v12 = 0;
      v11 = 1;
      goto LABEL_10;
    }

    sub_268BDC5A8(v99, &v97, &qword_2802CE530, &qword_268C18710);

    v11 = 0;
    v12 = v7;
LABEL_10:
    v14 = [v7 name];
    v15 = sub_268C15BFC();
    v17 = v16;

    v18 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_268BB35EC();
      v94 = v79;
    }

    v19 = *(v94 + 16);
    if (v19 >= *(v94 + 24) >> 1)
    {
      sub_268BB35EC();
      v94 = v80;
    }

    ++v84;
    v20 = v94;
    *(v94 + 16) = v19 + 1;
    v21 = v20 + 40 * v19;
    *(v21 + 32) = v15;
    *(v21 + 40) = v17;
    v93 = v11 & 1;
    *(v21 + 48) = v11 & 1;
    *(v21 + 56) = v12;
    *(v21 + 64) = 0;
    Home.rooms.getter();
    v23 = v22;
    v24 = 0;
    v91 = *(v22 + 16);
LABEL_15:
    v25 = v86;
    while (v91 != v24)
    {
      if (v24 >= *(v23 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      v97 = *(v23 + 8 * v24 + 32);
      v26 = v97;
      v27 = *(Room.accessories.getter() + 16);

      if (v27)
      {
        v90 = v23;
        v38 = [v26 name];
        v39 = sub_268C15BFC();
        v41 = v40;

        v42 = v97;
        v43 = *(v94 + 16);
        v44 = *(v94 + 24);
        v45 = v97;
        if (v43 >= v44 >> 1)
        {
          sub_268BB35EC();
          v94 = v62;
        }

        ++v24;
        v46 = v94;
        *(v94 + 16) = v43 + 1;
        v47 = v46 + 40 * v43;
        *(v47 + 32) = v39;
        *(v47 + 40) = v41;
        *(v47 + 48) = v93;
        *(v47 + 56) = v42;
        *(v47 + 64) = 2;
        v48 = Room.accessories.getter();
        v49 = 0;
        v89 = *(v48 + 16);
        while (1)
        {
          v3 = v92;
          v23 = v90;
          if (v89 == v49)
          {
            break;
          }

          if (v49 >= *(v48 + 16))
          {
            goto LABEL_44;
          }

          v50 = *(v48 + 8 * v49 + 32);
          v51 = [v50 name];
          v52 = sub_268C15BFC();
          v54 = v53;

          v55 = *(v94 + 16);
          v56 = *(v94 + 24);
          v57 = v50;
          if (v55 >= v56 >> 1)
          {
            sub_268BB35EC();
            v94 = v60;
          }

          v58 = v94;
          *(v94 + 16) = v55 + 1;
          v59 = v58 + 40 * v55;
          *(v59 + 32) = v52;
          *(v59 + 40) = v54;
          *(v59 + 48) = v93;
          *(v59 + 56) = v50;
          *(v59 + 64) = 3;
          ++v49;
        }

        v61 = v97;

        goto LABEL_15;
      }

      if (qword_2802CDBE0 != -1)
      {
        swift_once();
      }

      v28 = __swift_project_value_buffer(v25, qword_2802D2F10);
      (*v88)(v3, v28, v25);
      v29 = v97;
      v30 = sub_268C159FC();
      v31 = sub_268C15DFC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v95 = v29;
        v96 = v33;
        *v32 = v85.n128_u32[0];
        v34 = Room.description.getter();
        v36 = v35;

        v37 = sub_268BB3D28(v34, v36, &v96);
        v25 = v86;

        *(v32 + 4) = v37;
        _os_log_impl(&dword_268BAD000, v30, v31, "Room %s has no accessories. Dropping from flat graph", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x26D628010](v33, -1, -1);
        MEMORY[0x26D628010](v32, -1, -1);
      }

      else
      {
      }

      (*v87)(v3, v25);

      ++v24;
    }

    Home.zones.getter();
    v64 = v63;
    v65 = 0;
    v66 = *(v63 + 16);
    while (v66 != v65)
    {
      if (v65 >= *(v64 + 16))
      {
        goto LABEL_43;
      }

      v67 = *(v64 + 8 * v65 + 32);
      v68 = [v67 name];
      v69 = sub_268C15BFC();
      v71 = v70;

      v72 = *(v94 + 16);
      v73 = *(v94 + 24);
      v74 = v67;
      if (v72 >= v73 >> 1)
      {
        sub_268BB35EC();
        v94 = v77;
      }

      v75 = v94;
      *(v94 + 16) = v72 + 1;
      v76 = v75 + 40 * v72;
      *(v76 + 32) = v69;
      *(v76 + 40) = v71;
      *(v76 + 48) = v93;
      *(v76 + 56) = v67;
      *(v76 + 64) = 1;
      ++v65;
      v3 = v92;
    }

    v78 = v98;

    v4 = v84;
  }
}

uint64_t sub_268BE99F0(char *a1, id *a2, void *a3)
{
  v4 = v3;
  v104 = a2;
  v7 = sub_268C15A1C();
  v103 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v100 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v102 = &v93 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v93 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v93 - v15;
  v105 = a1;
  v112[0] = *(a1 + 24);
  v17 = v112[0];
  if (*(&v112[0] + 1) == 1)
  {
    sub_268BDC5A8(v112, v109, &qword_2802CE560, &unk_268C17ED0);
    sub_268BDE850(v17, 1);
    sub_268BDE850(0, 0);
  }

  else
  {
    *v109 = v112[0];
    v107[0] = 0;
    v107[1] = 0;
    sub_268BDC5A8(v112, &v111, &qword_2802CE560, &unk_268C17ED0);
    sub_268BDE808(v17, *(&v17 + 1));
    v18 = static FilteringPredicate.Location.== infix(_:_:)(v109, v107);

    sub_268BDE850(v17, *(&v17 + 1));
    if (v18)
    {
      return sub_268BEAE44(v105, v104, a3);
    }
  }

  v111 = *(v105 + 40);
  v20 = v111;
  if (*(&v111 + 1) == 1)
  {
    sub_268BDC5A8(&v111, v109, &qword_2802CE560, &unk_268C17ED0);
    sub_268BDE850(v20, 1);
    sub_268BDE850(0, 0);
  }

  else
  {
    *v109 = v111;
    v107[0] = 0;
    v107[1] = 0;
    sub_268BDC5A8(&v111, &v110, &qword_2802CE560, &unk_268C17ED0);
    sub_268BDE808(v20, *(&v20 + 1));
    v21 = static FilteringPredicate.Location.== infix(_:_:)(v109, v107);

    sub_268BDE850(v20, *(&v20 + 1));
    if (v21)
    {
      return sub_268BEB658(v105, v104, a3);
    }
  }

  v22 = v105;
  v110 = *(v105 + 56);
  v23 = v110;
  if (*(&v110 + 1) != 1)
  {
    *v109 = v110;
    v107[0] = 0;
    v107[1] = 0;
    sub_268BDC5A8(&v110, &v106, &qword_2802CE560, &unk_268C17ED0);
    sub_268BDE808(v23, *(&v23 + 1));
    v25 = static FilteringPredicate.Location.== infix(_:_:)(v109, v107);

    sub_268BDE850(v23, *(&v23 + 1));
    v24 = v103;
    if ((v25 & 1) == 0)
    {
      goto LABEL_14;
    }

    return sub_268BEBEA4(v22, v104);
  }

  sub_268BDC5A8(&v110, v109, &qword_2802CE560, &unk_268C17ED0);
  sub_268BDE850(v23, 1);
  sub_268BDE850(0, 0);
  v24 = v103;
LABEL_14:
  v106 = MEMORY[0x277D84F90];
  v27 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0) + 40));
  v28 = v27[3];
  v29 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v30 = (*(v29 + 48))(v28, v29);
  v99 = v7;
  v101 = v4;
  if (v30)
  {
    if (qword_2802CDB68 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v7, qword_2802D2EC0);
    (*(v24 + 16))(v16, v31, v7);
    sub_268BDEF20(v22, v109);
    v32 = sub_268C159FC();
    v33 = sub_268C15DCC();
    sub_268BDEF58(v22);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v108 = v35;
      *v34 = 136315138;
      memcpy(v107, v22, sizeof(v107));
      sub_268BDEF20(v22, v109);
      v36 = v33;
      v37 = FilteringPredicate.description.getter();
      v39 = v38;
      memcpy(v109, v107, sizeof(v109));
      sub_268BDEF58(v109);
      v40 = sub_268BB3D28(v37, v39, &v108);
      v24 = v103;

      *(v34 + 4) = v40;
      _os_log_impl(&dword_268BAD000, v32, v36, "Searching media groups for groups matching predicate: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      v7 = v99;
      MEMORY[0x26D628010](v35, -1, -1);
      MEMORY[0x26D628010](v34, -1, -1);
    }

    (*(v24 + 8))(v16, v7);
    v41 = sub_268BEC174(v22, v104);
    sub_268BB04CC(v41);
  }

  if (qword_2802CDB68 != -1)
  {
LABEL_56:
    swift_once();
  }

  v42 = __swift_project_value_buffer(v7, qword_2802D2EC0);
  v95 = *(v24 + 16);
  v96 = v24 + 16;
  v95(v13, v42, v7);
  sub_268BDEF20(v22, v109);
  v43 = sub_268C159FC();
  v44 = sub_268C15DCC();
  sub_268BDEF58(v22);
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = v22;
    v47 = swift_slowAlloc();
    v108 = v47;
    *v45 = 136315138;
    memcpy(v107, v46, sizeof(v107));
    sub_268BDEF20(v46, v109);
    v48 = FilteringPredicate.description.getter();
    v49 = v24;
    v51 = v50;
    memcpy(v109, v107, sizeof(v109));
    sub_268BDEF58(v109);
    v52 = sub_268BB3D28(v48, v51, &v108);

    *(v45 + 4) = v52;
    _os_log_impl(&dword_268BAD000, v43, v44, "Searching current home for devices matching predicate: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x26D628010](v47, -1, -1);
    MEMORY[0x26D628010](v45, -1, -1);

    v53 = v49;
  }

  else
  {

    v53 = v24;
  }

  v94 = *(v53 + 8);
  v94(v13, v7);
  v22 = v104;
  sub_268BE92C0();
  v55 = v54;
  v24 = 0;
  v56 = *(v54 + 16);
  v57 = MEMORY[0x277D84F90];
LABEL_25:
  v58 = 40 * v24;
  while (v56 != v24)
  {
    if (v24 >= *(v55 + 16))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    ++v24;
    v59 = v58 + 40;
    v60 = *(v55 + v58 + 48);
    v58 += 40;
    if (v60)
    {
      v62 = *(v55 + v59 - 8);
      v61 = *(v55 + v59);
      v13 = *(v55 + v59 + 16);
      v63 = *(v55 + v59 + 24);
      v64 = v13;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v109 = v57;
      LODWORD(v98) = v63;
      v97 = v62;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268BB4AD8(0, *(v57 + 16) + 1, 1);
        v57 = *v109;
      }

      v7 = *(v57 + 16);
      v66 = *(v57 + 24);
      if (v7 >= v66 >> 1)
      {
        sub_268BB4AD8((v66 > 1), v7 + 1, 1);
        v57 = *v109;
      }

      *(v57 + 16) = v7 + 1;
      v67 = v57 + 40 * v7;
      *(v67 + 32) = v97;
      *(v67 + 40) = v61;
      *(v67 + 48) = 1;
      *(v67 + 56) = v13;
      *(v67 + 64) = v98;
      v22 = v104;
      goto LABEL_25;
    }
  }

  v7 = v101;
  v68 = sub_268BEC440(v105, v22, v57);

  sub_268BB04CC(v68);
  v26 = v106;
  if (!*(v106 + 16))
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v69 = v99;
    v70 = __swift_project_value_buffer(v99, qword_2802D2F10);
    v71 = v102;
    v97 = v70;
    (v95)(v102);
    v72 = sub_268C159FC();
    v73 = sub_268C15DFC();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_268BAD000, v72, v73, "Couldn't find any devices matching the user's query in current home. Searching in other homes", v74, 2u);
      MEMORY[0x26D628010](v74, -1, -1);
    }

    v93 = v103 + 8;
    v94(v71, v69);
    sub_268BE92C0();
    v22 = v75;
    v24 = 0;
    v13 = v75[2];
    v76 = MEMORY[0x277D84F90];
LABEL_40:
    v77 = 5 * v24;
    while (v13 != v24)
    {
      if (v24 >= v22[2])
      {
        goto LABEL_55;
      }

      ++v24;
      v78 = v77 * 8 + 40;
      v79 = v22[v77 + 6];
      v77 += 5;
      if ((v79 & 1) == 0)
      {
        v80 = *(v22 + v78);
        v98 = *(v22 + v78 - 8);
        v81 = *(v22 + v78 + 16);
        v82 = *(v22 + v78 + 24);
        v83 = v81;

        v84 = swift_isUniquelyReferenced_nonNull_native();
        *v109 = v76;
        v103 = v81;
        LODWORD(v102) = v82;
        if ((v84 & 1) == 0)
        {
          sub_268BB4AD8(0, *(v76 + 16) + 1, 1);
          v76 = *v109;
        }

        v86 = *(v76 + 16);
        v85 = *(v76 + 24);
        if (v86 >= v85 >> 1)
        {
          sub_268BB4AD8((v85 > 1), v86 + 1, 1);
          v76 = *v109;
        }

        *(v76 + 16) = v86 + 1;
        v87 = v76 + 40 * v86;
        *(v87 + 32) = v98;
        *(v87 + 40) = v80;
        *(v87 + 48) = 0;
        *(v87 + 56) = v103;
        *(v87 + 64) = v102;
        v69 = v99;
        v7 = v101;
        goto LABEL_40;
      }
    }

    v26 = sub_268BEC440(v105, v104, v76);

    if (!*(v26 + 16))
    {
      v88 = v100;
      v95(v100, v97, v69);
      v89 = sub_268C159FC();
      v90 = sub_268C15DEC();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_268BAD000, v89, v90, "Couldn't find any devices matching the user's query in any home.", v91, 2u);
        MEMORY[0x26D628010](v91, -1, -1);
      }

      v94(v88, v69);
    }
  }

  return v26;
}

void sub_268BEA59C(uint64_t a1, void (*a2)(id *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = *(a1 + 24);
  v11 = sub_268C15A1C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 40))
  {
    if (qword_2802CDB68 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v11, qword_2802D2EC0);
    (*(v12 + 16))(v14, v15, v11);
    v16 = sub_268C159FC();
    v17 = sub_268C15DEC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_268BAD000, v16, v17, "Error finding homeData. Returning empty device list", v18, 2u);
      MEMORY[0x26D628010](v18, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    v20 = 0;
  }

  else
  {
    sub_268BEA798(a5, a6, v10, &v20);
  }

  a2(&v20);
}

uint64_t sub_268BEA798@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, char **a4@<X8>)
{
  v63 = a1;
  v61 = a4;
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v53 - v10);
  if (qword_2802CDB68 != -1)
  {
LABEL_39:
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_2802D2EC0);
  v54 = *(v7 + 16);
  v55 = v12;
  v54(v11);

  v13 = sub_268C159FC();
  v14 = sub_268C15DCC();

  v15 = os_log_type_enabled(v13, v14);
  v62 = a2;
  v58 = v6;
  v60 = v7;
  v56 = v7 + 16;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = v7;
    v18 = swift_slowAlloc();
    v68 = v18;
    *v16 = 136315394;
    *(v16 + 4) = sub_268BB3D28(v63, a2, &v68);
    *(v16 + 12) = 2080;
    a2 = a3;
    v19 = MEMORY[0x26D6272E0](a3, &type metadata for Home);
    v21 = sub_268BB3D28(v19, v20, &v68);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_268BAD000, v13, v14, "Searching for devices matching routeId: %s in homes: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D628010](v18, -1, -1);
    MEMORY[0x26D628010](v16, -1, -1);

    v59 = *(v17 + 8);
  }

  else
  {

    v59 = *(v7 + 8);
  }

  v59(v11, v6);
  v22 = 0;
  v68 = MEMORY[0x277D84F90];
  v23 = a3[2];
  v64 = a3 + 4;
  v65 = v23;
LABEL_6:
  if (v22 == v65)
  {
    v6 = 0;
    v34 = v68;
    v7 = *(v68 + 16);
    while (v7 != v6)
    {
      if (v6 >= *(v34 + 16))
      {
        __break(1u);
        goto LABEL_39;
      }

      v11 = *(v34 + 8 * v6 + 32);
      v35 = [v11 deviceIdentifier];
      v36 = sub_268C15BFC();
      a3 = v37;

      if (v36 == v63 && a3 == v62)
      {

LABEL_33:

        v43 = v57;
        v42 = v58;
        (v54)(v57, v55, v58);
        v44 = v62;

        v41 = v11;
        v45 = sub_268C159FC();
        v46 = sub_268C15DCC();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v68 = v48;
          *v47 = 136315394;
          *(v47 + 4) = sub_268BB3D28(v63, v44, &v68);
          *(v47 + 12) = 2080;
          v67 = [v41 home];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE530, &qword_268C18710);
          v49 = sub_268C15C0C();
          v51 = v50;

          v52 = sub_268BB3D28(v49, v51, &v68);

          *(v47 + 14) = v52;
          _os_log_impl(&dword_268BAD000, v45, v46, "Found device matching routeId: %s in home: %s", v47, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D628010](v48, -1, -1);
          MEMORY[0x26D628010](v47, -1, -1);
        }

        else
        {
        }

        result = (v59)(v43, v42);
        goto LABEL_37;
      }

      v39 = sub_268C1618C();

      if (v39)
      {
        goto LABEL_33;
      }

      ++v6;
    }
  }

  else
  {
    v24 = v64[v22++];
    v66 = v24;
    a3 = [v66 accessories];
    sub_268BB9B44(0, &qword_2802CE528, 0x277CD1650);
    v25 = sub_268C15D0C();

    v26 = sub_268BC4EF4(v25);
    v27 = 0;
    a2 = (v25 & 0xFFFFFFFFFFFFFF8);
    v28 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v26 == v27)
      {

        v11 = &v68;
        sub_268BB05D0(v28);
        goto LABEL_6;
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x26D627640](v27, v25);
      }

      else
      {
        if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v29 = *(v25 + 8 * v27 + 32);
      }

      a3 = v29;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268BB3594(0, *(v28 + 16) + 1, 1, v28);
        v28 = v32;
      }

      v31 = *(v28 + 16);
      v30 = *(v28 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_268BB3594(v30 > 1, v31 + 1, 1, v28);
        v28 = v33;
      }

      *(v28 + 16) = v31 + 1;
      *(v28 + 8 * v31 + 32) = a3;
      ++v27;
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  v41 = 0;
LABEL_37:
  *v61 = v41;
  return result;
}

uint64_t sub_268BEAE44(void *__src, uint64_t a2, void *a3)
{
  v60 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v5 = sub_268C15A1C();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE568, &unk_268C18740);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v58 - v15;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_268C1537C();
  __swift_project_boxed_opaque_existential_1(v63, v63[3]);
  v17 = sub_268C1538C();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    __swift_destroy_boxed_opaque_existential_0(v63);
    sub_268BEA798(v19, v20, *(a2 + 24), v61);

    v21 = v61[0];
    if (v61[0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE570, &qword_268C170C0);
      v22 = *(type metadata accessor for Device(0) - 8);
      v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_268C172B0;
      memcpy(v63, __dst, sizeof(v63));
      v25 = type metadata accessor for MediaGroup(0);
      __swift_storeEnumTagSinglePayload(v16, 1, 1, v25);
      v26 = v21;
      sub_268BDEF20(v60, v62);
      sub_268BEDC48(v26, 1, v63, v16, v24 + v23);

      return v24;
    }

    if (qword_2802CDB68 != -1)
    {
      swift_once();
    }

    v32 = v59;
    v33 = __swift_project_value_buffer(v59, qword_2802D2EC0);
    v34 = v58;
    (*(v58 + 16))(v13, v33, v32);
    v35 = sub_268C159FC();
    v36 = sub_268C15DEC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_268BAD000, v35, v36, "SideKick device not found in homes", v37, 2u);
      MEMORY[0x26D628010](v37, -1, -1);
    }

    (*(v34 + 8))(v13, v32);
    return MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_0(v63);
  v27 = *a2;
  if (*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE570, &qword_268C170C0);
    v28 = *(type metadata accessor for Device(0) - 8);
    v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_268C172B0;
    memcpy(v63, __dst, sizeof(v63));
    v30 = v27;
    sub_268BDEF20(v60, v62);
    v31 = v30;
    sub_268BEDB0C(v31, a2, v16);
    sub_268BEDC48(v31, 1, v63, v16, v24 + v29);

    return v24;
  }

  v38 = v60;
  v39 = memcpy(v63, v60, sizeof(v63));
  if ((sub_268BDFA0C(v39) & 1) == 0)
  {
    v52 = v58;
    v51 = v59;
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v51, qword_2802D2F10);
    (*(v52 + 16))(v7, v53, v51);
    v54 = sub_268C159FC();
    v55 = sub_268C15DEC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_268BAD000, v54, v55, "Unable to get current accessory from home data", v56, 2u);
      MEMORY[0x26D628010](v56, -1, -1);
    }

    (*(v52 + 8))(v7, v51);
    return MEMORY[0x277D84F90];
  }

  v41 = v58;
  v40 = v59;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v40, qword_2802D2F10);
  (*(v41 + 16))(v10, v42, v40);
  v43 = sub_268C159FC();
  v44 = sub_268C15DCC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_268BAD000, v43, v44, "Request to control the current accessory on non tvOS. Returning the local device", v45, 2u);
    MEMORY[0x26D628010](v45, -1, -1);
  }

  (*(v41 + 8))(v10, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE570, &qword_268C170C0);
  v46 = (type metadata accessor for Device(0) - 8);
  v47 = (*(*v46 + 80) + 32) & ~*(*v46 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_268C172B0;
  v48 = v24 + v47;
  memcpy(v62, __dst, sizeof(v62));
  *(v48 + 88) = xmmword_268C16D40;
  *(v48 + 104) = 0u;
  *(v48 + 120) = 0u;
  *(v48 + 136) = 0u;
  *(v48 + 152) = 0u;
  *(v48 + 168) = 0u;
  *(v48 + 184) = 0u;
  *(v48 + 200) = 0;
  v49 = v46[13];
  v50 = type metadata accessor for MediaGroup(0);
  __swift_storeEnumTagSinglePayload(v24 + v47 + v49, 1, 1, v50);
  *(v48 + v46[14]) = 0;
  *(v48 + v46[15]) = 0;
  *v48 = xmmword_268C18690;
  *(v48 + 16) = 0u;
  *(v48 + 80) = 1;
  *(v48 + 32) = 0u;
  *(v48 + 48) = 0u;
  *(v48 + 64) = 0u;
  memcpy(v63, (v24 + v47 + 88), sizeof(v63));
  sub_268BDEF20(v38, v61);
  sub_268BF2790(v63, &qword_2802CE578, &qword_268C18750);
  memcpy((v24 + v47 + 88), v62, 0x78uLL);
  return v24;
}

uint64_t sub_268BEB658(char *__src, uint64_t a2, void *a3)
{
  v4 = v3;
  memcpy(__dst, __src, sizeof(__dst));
  v8 = sub_268C15A1C();
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v71 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - v15;
  v17 = *(a2 + 16);
  v82[0] = *a2;
  v82[1] = v17;
  v83 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_268C1537C();
  __swift_project_boxed_opaque_existential_1(v84, *&v84[24]);
  v18 = sub_268C1538C();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    v22 = *(a2 + 24);
    __swift_destroy_boxed_opaque_existential_0(v84);
    sub_268BEA798(v20, v21, v22, v84);

    v23 = *v84;
    if (*v84)
    {
      v24 = [*v84 room];
      if (v24)
      {
        v25 = v24;
        v76 = v24;
        v26 = *(__src + 1);
        v73 = *__src;
        v74 = v26;
        v27 = *(__src + 5);
        v75 = *(__src + 4);
        v28 = *(__src + 6);
        v29 = *(__src + 72);
        v77 = *(__src + 56);
        v78 = v29;
        v30 = *(__src + 104);
        v79 = *(__src + 88);
        v80 = v30;
        sub_268BDEF20(__src, v84);
        v31 = [v25 name];
        v32 = sub_268C15BFC();
        v34 = v33;

        sub_268BDE850(v27, v28);
        v35 = Room.accessories.getter();
        *v84 = v73;
        *&v84[16] = v74;
        *&v84[56] = v77;
        *&v84[72] = v78;
        *&v84[88] = v79;
        *&v84[32] = v75;
        *&v84[40] = v32;
        *&v84[48] = v34;
        *&v84[104] = v80;
        v36 = sub_268BED1A0(v84, v35);

        MEMORY[0x28223BE20](v37);
        *(&v71 - 4) = v4;
        *(&v71 - 3) = v82;
        *(&v71 - 2) = __src;
        sub_268BB2470(sub_268BF2824, (&v71 - 6), v36);
        v39 = v38;

        v40 = v76;

        v81[0] = v73;
        v81[1] = v74;
        *(&v81[3] + 8) = v77;
        *(&v81[4] + 8) = v78;
        *(&v81[5] + 8) = v79;
        *&v81[2] = v75;
        *(&v81[2] + 1) = v32;
        *&v81[3] = v34;
        *(&v81[6] + 8) = v80;
        sub_268BDEF58(v81);
        return v39;
      }
    }

    v47 = v71;
    v46 = v72;
    if (qword_2802CDB68 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v46, qword_2802D2EC0);
    (*(v47 + 16))(v16, v48, v46);
    v49 = sub_268C159FC();
    v50 = sub_268C15DEC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_268BAD000, v49, v50, "SideKick device not found or does not have a room", v51, 2u);
      MEMORY[0x26D628010](v51, -1, -1);
    }

    (*(v47 + 8))(v16, v46);
    return MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_0(v84);
  if (*(&v82[0] + 1))
  {
    *v84 = *(&v82[0] + 1);
    v41 = *(&v82[0] + 1);
    v42 = Room.accessories.getter();
    v43 = sub_268BED1A0(__src, v42);

    MEMORY[0x28223BE20](v44);
    *(&v71 - 4) = v4;
    *(&v71 - 3) = v82;
    *(&v71 - 2) = __src;
    sub_268BB2470(sub_268BF2824, (&v71 - 6), v43);
    v39 = v45;

    return v39;
  }

  v53 = memcpy(v84, __src, sizeof(v84));
  if ((sub_268BDF93C(v53) & 1) == 0)
  {
    v65 = v72;
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v66 = __swift_project_value_buffer(v65, qword_2802D2F10);
    v67 = v71;
    (*(v71 + 16))(v10, v66, v65);
    v68 = sub_268C159FC();
    v69 = sub_268C15DEC();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_268BAD000, v68, v69, "Unable to get current room from home data", v70, 2u);
      MEMORY[0x26D628010](v70, -1, -1);
    }

    (*(v67 + 8))(v10, v65);
    return MEMORY[0x277D84F90];
  }

  v54 = v72;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v55 = __swift_project_value_buffer(v54, qword_2802D2F10);
  v56 = v71;
  (*(v71 + 16))(v13, v55, v54);
  v57 = sub_268C159FC();
  v58 = sub_268C15DCC();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_268BAD000, v57, v58, "Request to control the current room on non tvOS. Returning the local device", v59, 2u);
    MEMORY[0x26D628010](v59, -1, -1);
  }

  (*(v56 + 8))(v13, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE570, &qword_268C170C0);
  v60 = (type metadata accessor for Device(0) - 8);
  v61 = (*(*v60 + 80) + 32) & ~*(*v60 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_268C172B0;
  v62 = v39 + v61;
  memcpy(v81, __dst, 0x78uLL);
  *(v62 + 88) = xmmword_268C16D40;
  *(v62 + 104) = 0u;
  *(v62 + 120) = 0u;
  *(v62 + 136) = 0u;
  *(v62 + 152) = 0u;
  *(v62 + 168) = 0u;
  *(v62 + 184) = 0u;
  *(v62 + 200) = 0;
  v63 = v60[13];
  v64 = type metadata accessor for MediaGroup(0);
  __swift_storeEnumTagSinglePayload(v39 + v61 + v63, 1, 1, v64);
  *(v62 + v60[14]) = 0;
  *(v62 + v60[15]) = 0;
  *v62 = xmmword_268C18690;
  *(v62 + 16) = 0u;
  *(v62 + 80) = 1;
  *(v62 + 32) = 0u;
  *(v62 + 48) = 0u;
  *(v62 + 64) = 0u;
  memcpy(v84, (v39 + v61 + 88), sizeof(v84));
  sub_268BDEF20(__src, &v77);
  sub_268BF2790(v84, &qword_2802CE578, &qword_268C18750);
  memcpy((v39 + v61 + 88), v81, 0x78uLL);
  return v39;
}

uint64_t sub_268BEBEA4(id *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a2 + 16);
  v30[0] = *a2;
  v30[1] = v10;
  v31 = *(a2 + 32);
  if (v10)
  {
    v29 = v10;
    v11 = v10;
    v9 = &v29;
    Home.rooms.getter();
    v6 = v12;
    v13 = 0;
    v28 = MEMORY[0x277D84F90];
    v7 = *(v12 + 16);
    while (1)
    {
      if (v7 == v13)
      {

        v17 = sub_268BED1A0(a1, v28);

        MEMORY[0x28223BE20](v18);
        *(&v26 - 4) = v3;
        *(&v26 - 3) = v30;
        *(&v26 - 2) = a1;
        sub_268BB2470(sub_268BF2660, (&v26 - 6), v17);
        v20 = v19;

        return v20;
      }

      if (v13 >= *(v6 + 16))
      {
        break;
      }

      v14 = v13 + 1;
      v27 = *(v6 + 8 * v13 + 32);
      v15 = v27;
      v16 = Room.accessories.getter();
      v9 = &v28;
      sub_268BB05D0(v16);

      v13 = v14;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (qword_2802CDBE0 != -1)
  {
LABEL_13:
    swift_once();
  }

  v21 = __swift_project_value_buffer(v6, qword_2802D2F10);
  (*(v7 + 16))(v9, v21, v6);
  v22 = sub_268C159FC();
  v23 = sub_268C15DEC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_268BAD000, v22, v23, "Unable to get current home from home data", v24, 2u);
    MEMORY[0x26D628010](v24, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  return MEMORY[0x277D84F90];
}

uint64_t sub_268BEC174(const void *a1, uint64_t a2)
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v8;
  v28 = *(a2 + 32);
  if (qword_2802CDB68 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_2802D2EC0);
  (*(v5 + 16))(v7, v9, v4);
  sub_268BDEF20(a1, v26);
  v10 = sub_268C159FC();
  v11 = sub_268C15DDC();
  sub_268BDEF58(a1);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315138;
    memcpy(v24, a1, sizeof(v24));
    sub_268BDEF20(a1, v26);
    v15 = FilteringPredicate.description.getter();
    v23 = a1;
    v17 = v16;
    memcpy(v26, v24, sizeof(v26));
    sub_268BDEF58(v26);
    v18 = sub_268BB3D28(v15, v17, &v25);
    a1 = v23;

    *(v13 + 4) = v18;
    _os_log_impl(&dword_268BAD000, v10, v11, "Searching for media groups matching predicate: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26D628010](v14, -1, -1);
    MEMORY[0x26D628010](v13, -1, -1);
  }

  v19 = (*(v5 + 8))(v7, v4);
  MEMORY[0x28223BE20](v19);
  *(&v22 - 2) = a1;
  *(&v22 - 1) = v27;
  return sub_268BE6A64(sub_268BF2684, (&v22 - 4), v20);
}

uint64_t sub_268BEC440(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v87 = 0;
  v89 = sub_268C15A1C();
  v9 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v11 = &v72[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v72[-v13];
  v15 = *(a2 + 16);
  v92[0] = *a2;
  v92[1] = v15;
  v93 = *(a2 + 32);
  memcpy(v91, a1, sizeof(v91));
  memcpy(__dst, a1, 0x78uLL);
  v16 = FilteringPredicate.namedEntity.getter();
  v86 = v5;
  if (!v17)
  {
    sub_268BDEF20(a1, __dst);
    v89 = *(a3 + 16);

    v9 = a3;
    goto LABEL_27;
  }

  v18 = v16;
  v4 = v17;
  v78 = v11;
  sub_268BDEF20(a1, __dst);
  v79 = v18;
  v19 = sub_268BECD64(v18, v4, a3);
  v20 = v19;
  v21 = *(v19 + 16);
  v84 = v14;
  v85 = v4;
  i = v9;
  v81 = a1;
  if (!v21)
  {

    v20 = 0;
    v11 = 0;
    v83 = 0;
    v5 = 0;
LABEL_12:
    a3 = v89;
    if (qword_2802CDBE0 != -1)
    {
      goto LABEL_52;
    }

    goto LABEL_13;
  }

  v4 = *(v19 + 32);
  v9 = *(v19 + 40);
  v83 = *(v19 + 48);
  v5 = *(v19 + 64);
  v82 = *(v19 + 56);
  v22 = v82;
  v11 = v9;

  v14 = 1;
LABEL_4:
  v23 = 40 * v14;
  while (1)
  {
    if (v21 == v14)
    {

      v14 = v84;
      v83 &= 1u;
      v21 = v5;
      v20 = v4;
      v4 = v85;
      v5 = v82;
      v9 = i;
      goto LABEL_12;
    }

    if (v14 >= *(v20 + 2))
    {
      break;
    }

    ++v14;
    v24 = v23 + 40;
    a3 = v20[v23 + 64];
    v23 += 40;
    if (4 - v5 < 4 - a3)
    {
      v4 = *&v20[v24 - 8];
      v25 = *&v20[v24];
      v83 = v20[v24 + 8];
      v9 = *&v20[v24 + 16];
      v26 = v9;

      v11 = v25;
      v82 = v9;
      v5 = a3;
      goto LABEL_4;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
LABEL_13:
    v27 = __swift_project_value_buffer(a3, qword_2802D2F10);
    v28 = *(v9 + 16);
    v75 = v27;
    v76 = v9 + 16;
    v74 = v28;
    v28(v14);

    v29 = v20;
    v30 = v83;
    v14 = v5;
    sub_268BF26E4(v20, v11, v83, v5);
    v31 = sub_268C159FC();
    v32 = sub_268C15DFC();

    v33 = os_log_type_enabled(v31, v32);
    v77 = v21;
    if (!v33)
    {
      break;
    }

    v34 = swift_slowAlloc();
    v73 = v32;
    v35 = v4;
    v82 = v29;
    v36 = v34;
    v37 = swift_slowAlloc();
    v80 = v11;
    v38 = v37;
    v90[0] = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_268BB3D28(v79, v35, v90);
    *(v36 + 12) = 2080;
    __dst[0] = v82;
    __dst[1] = v80;
    __dst[2] = v30;
    __dst[3] = v14;
    LOBYTE(__dst[4]) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE5A0, &qword_268C18760);
    v39 = sub_268C15F0C();
    v41 = v40;
    sub_268BF2724(v82, v80, v30, v14);
    v42 = sub_268BB3D28(v39, v41, v90);
    v43 = v81;

    *(v36 + 14) = v42;
    _os_log_impl(&dword_268BAD000, v31, v73, "======= Closest match to the requested query: %s: %s", v36, 0x16u);
    swift_arrayDestroy();
    v11 = v80;
    MEMORY[0x26D628010](v38, -1, -1);
    v44 = v36;
    v45 = v82;
    MEMORY[0x26D628010](v44, -1, -1);

    v46 = v89;
    v47 = *(i + 8);
    v47(v84, v89);
    v48 = v46;
    if (!v11)
    {
      goto LABEL_21;
    }

LABEL_15:
    v95 = *(v43 + 88);
    v4 = v85;
    if (*(&v95 + 1))
    {
      v74(v78, v75, v48);
      v49 = v14;

      v50 = sub_268C159FC();
      v51 = sub_268C15DFC();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_268BAD000, v50, v51, "Overriding service group to the more specific container type", v52, 2u);
        MEMORY[0x26D628010](v52, -1, -1);
      }

      v47(v78, v89);
      sub_268BF2790(&v95, &qword_2802CE098, &qword_268C177C0);
      v91[11] = 0;
      v91[12] = 0;
      v5 = v77;
      v53 = v83;
      switch(v77)
      {
        case 1:
          v94 = *(v43 + 72);
          sub_268BF2790(&v94, &qword_2802CE098, &qword_268C177C0);
          v91[9] = v79;
          v91[10] = v4;
          break;
        case 2:
          sub_268BDE850(v91[5], v91[6]);
          v91[5] = v79;
          v91[6] = v4;
          break;
        case 3:
          v94 = *v43;
          sub_268BF2790(&v94, &qword_2802CE098, &qword_268C177C0);
          v91[0] = v79;
          v91[1] = v4;
          break;
        default:
          sub_268BDE850(v91[7], v91[8]);
          v91[7] = v79;
          v91[8] = v4;
          break;
      }
    }

    else
    {
      v56 = v14;

      v53 = v83;
      v5 = v77;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE590, &qword_268C170B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_268C172B0;
    *(v9 + 32) = v45;
    *(v9 + 40) = v11;
    *(v9 + 48) = v53;
    *(v9 + 56) = v14;
    *(v9 + 64) = v5;
    sub_268BF2724(v45, v11, v53, v14);
    v89 = 1;
LABEL_27:
    a3 = 0;
    v20 = (v9 + 64);
    v21 = MEMORY[0x277D84F90];
    for (i = v9; ; v9 = i)
    {
      if (v89 == a3)
      {

        memcpy(__dst, v91, 0x78uLL);
        v67 = v86;
        v68 = sub_268BED1A0(__dst, v21);

        MEMORY[0x28223BE20](v69);
        *&v72[-32] = v67;
        *&v72[-24] = v92;
        *&v72[-16] = v91;
        sub_268BB2470(sub_268BF26C0, &v72[-48], v68);
        v55 = v70;

        goto LABEL_45;
      }

      if (a3 >= *(v9 + 16))
      {
        break;
      }

      v9 = *(v20 - 3);
      v57 = *(v20 - 1);
      v4 = *v20;
      v11 = v57;

      v58 = sub_268BE70C8(v57, v4);
      v14 = *(v58 + 16);
      v5 = *(v21 + 16);
      v59 = v5 + v14;
      if (__OFADD__(v5, v14))
      {
        goto LABEL_47;
      }

      v4 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v61 = *(v21 + 24) >> 1, v61 < v59))
      {
        if (v5 <= v59)
        {
          v62 = v5 + v14;
        }

        else
        {
          v62 = v5;
        }

        sub_268BB3594(isUniquelyReferenced_nonNull_native, v62, 1, v21);
        v21 = v63;
        v61 = *(v63 + 24) >> 1;
      }

      if (v4[2])
      {
        if (v61 - *(v21 + 16) < v14)
        {
          goto LABEL_49;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v64 = *(v21 + 16);
          v65 = __OFADD__(v64, v14);
          v66 = v64 + v14;
          if (v65)
          {
            goto LABEL_51;
          }

          *(v21 + 16) = v66;
        }
      }

      else
      {

        if (v14)
        {
          goto LABEL_48;
        }
      }

      v20 += 40;
      ++a3;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  v45 = v29;
  sub_268BF2724(v29, v11, v30, v14);

  v54 = v89;
  v47 = *(i + 8);
  v47(v84, v89);
  v48 = v54;
  v43 = v81;
  if (v11)
  {
    goto LABEL_15;
  }

LABEL_21:

  v55 = MEMORY[0x277D84F90];
LABEL_45:
  memcpy(v90, v91, 0x78uLL);
  sub_268BDEF58(v90);
  return v55;
}

uint64_t sub_268BECD64(void (*a1)(char *, uint64_t), void *a2, uint64_t a3)
{
  v44 = a1;
  v5 = sub_268C15A1C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_2802D2F10);
  v41 = *(v6 + 16);
  v42 = v12;
  v41(v11);

  v13 = sub_268C159FC();
  v14 = sub_268C15DFC();

  v15 = os_log_type_enabled(v13, v14);
  v45 = v6;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v40 = v8;
    v17 = v6;
    v18 = v16;
    v19 = swift_slowAlloc();
    v39 = a3;
    v20 = v19;
    v46 = v19;
    *v18 = 136315138;
    v21 = v44;
    *(v18 + 4) = sub_268BB3D28(v44, a2, &v46);
    _os_log_impl(&dword_268BAD000, v13, v14, "Finding closest match to user query: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v22 = v20;
    a3 = v39;
    MEMORY[0x26D628010](v22, -1, -1);
    MEMORY[0x26D628010](v18, -1, -1);

    v23 = v17;
    v8 = v40;
    v24 = *(v23 + 8);
    v24(v11, v5);
  }

  else
  {

    v24 = *(v6 + 8);
    v24(v11, v5);
    v21 = v44;
  }

  type metadata accessor for LocalizationProvider();
  inited = swift_initStaticObject();
  v26 = sub_268BF019C(v21, a2, a3, inited, 2, v43);
  v28 = v27;
  (v41)(v8, v42, v5);
  sub_268BF2768(v26, v28);
  v29 = sub_268C159FC();
  v30 = sub_268C15DFC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v46 = v32;
    *v31 = 136315138;
    v33 = sub_268BE8898(v26, v28);
    v44 = v24;
    v34 = v33;
    v36 = v35;
    sub_268BF277C(v26, v28);
    v37 = sub_268BB3D28(v34, v36, &v46);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_268BAD000, v29, v30, "Closest match to the requested entity: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x26D628010](v32, -1, -1);
    MEMORY[0x26D628010](v31, -1, -1);

    v44(v8, v5);
  }

  else
  {
    sub_268BF277C(v26, v28);

    v24(v8, v5);
  }

  result = MEMORY[0x277D84F90];
  if (v28 != 3)
  {
    return v26;
  }

  return result;
}

uint64_t sub_268BED1A0(id *a1, unint64_t a2)
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - v9;
  MEMORY[0x28223BE20](v11);
  v70 = &v65 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = (&v65 - v14);
  if (qword_2802CDB68 != -1)
  {
LABEL_37:
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_2802D2EC0);
  v17 = *(v5 + 16);
  v77 = v16;
  v78 = v5 + 16;
  v76 = v17;
  (v17)(v15);

  v18 = sub_268C159FC();
  v19 = sub_268C15DDC();
  v20 = os_log_type_enabled(v18, v19);
  v65 = v7;
  v66 = v10;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v75 = a1;
    v23 = a2;
    v24 = v22;
    v81 = v22;
    *v21 = 136315138;
    v25 = MEMORY[0x26D6272E0](v23, &type metadata for Accessory);
    v10 = v26;

    v27 = sub_268BB3D28(v25, v10, &v81);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_268BAD000, v18, v19, "Searching for devices matching predicate across accessories: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v28 = v24;
    a2 = v23;
    a1 = v75;
    MEMORY[0x26D628010](v28, -1, -1);
    MEMORY[0x26D628010](v21, -1, -1);
  }

  else
  {
  }

  v29 = *(v5 + 8);
  v5 += 8;
  v79 = v29;
  v30 = (v29)(v15, v4);
  v31 = 0;
  v68 = a1[2];
  v7 = a1[14];
  v71 = a1[13];
  v74 = a2 + 32;
  a2 = *(a2 + 16);
  v67 = MEMORY[0x277D84F90];
  v30.n128_u64[0] = 136315138;
  v69 = v30;
  v32 = v70;
  v75 = v7;
  v73 = a2;
LABEL_6:
  a1 = v71;
  while (a2 != v31)
  {
    if (v31 >= a2)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (__OFADD__(v31, 1))
    {
      goto LABEL_36;
    }

    v72 = v31 + 1;
    v83 = *(v74 + 8 * v31);
    v33 = v83;
    v76(v32, v77, v4);
    v34 = v83;
    v35 = v33;
    v36 = sub_268C159FC();
    v37 = sub_268C15DDC();

    if (os_log_type_enabled(v36, v37))
    {
      v10 = swift_slowAlloc();
      v38 = v5;
      v39 = v4;
      v40 = swift_slowAlloc();
      v80 = v34;
      v81 = v40;
      *v10 = v69.n128_u32[0];
      v41 = Accessory.description.getter();
      v43 = v42;

      v44 = sub_268BB3D28(v41, v43, &v81);
      v32 = v70;

      *(v10 + 4) = v44;
      _os_log_impl(&dword_268BAD000, v36, v37, "Checking if predicate matches device: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      v45 = v40;
      v4 = v39;
      v5 = v38;
      a1 = v71;
      MEMORY[0x26D628010](v45, -1, -1);
      MEMORY[0x26D628010](v10, -1, -1);
    }

    else
    {
    }

    v79(v32, v4);
    v7 = v75;
    a2 = v73;
    if (v75)
    {
      v10 = [v34 deviceIdentifier];
      v46 = sub_268C15BFC();
      v15 = v47;

      if (a1 == v46 && v7 == v15)
      {
      }

      else
      {
        v49 = sub_268C1618C();

        if ((v49 & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    v15 = &v83;
    Accessory.type.getter();
    DeviceCategory.init(homekitType:)(v50);
    if ((v82 & 1) == 0 && (v81 & ~v68) == 0)
    {
      v51 = v65;
      v76(v65, v77, v4);
      v52 = sub_268C159FC();
      v53 = sub_268C15DCC();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_268BAD000, v52, v53, "Predicate matches, adding device", v54, 2u);
        MEMORY[0x26D628010](v54, -1, -1);
      }

      v79(v51, v4);
      v15 = v83;
      v55 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268BB3594(0, *(v55 + 16) + 1, 1, v55);
        v55 = v57;
      }

      v10 = *(v55 + 16);
      v56 = *(v55 + 24);
      if (v10 >= v56 >> 1)
      {
        sub_268BB3594(v56 > 1, v10 + 1, 1, v55);
        v55 = v58;
      }

      *(v55 + 16) = v10 + 1;
      v67 = v55;
      *(v55 + 8 * v10 + 32) = v15;
      v31 = v72;
      goto LABEL_6;
    }

LABEL_23:

    ++v31;
  }

  v59 = v66;
  v76(v66, v77, v4);
  v60 = v67;

  v61 = sub_268C159FC();
  v62 = sub_268C15DCC();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 134217984;
    *(v63 + 4) = *(v60 + 16);

    _os_log_impl(&dword_268BAD000, v61, v62, "Found %ld devices", v63, 0xCu);
    MEMORY[0x26D628010](v63, -1, -1);

    v79(v59, v4);
  }

  else
  {

    v79(v59, v4);
  }

  return v60;
}

uint64_t sub_268BED8F4@<X0>(void *a1@<X0>, void **a3@<X2>, const void *a4@<X3>, uint64_t x8_0@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE568, &unk_268C18740);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15[-v10];
  v12 = a1;
  v13 = sub_268BEDA0C(v12, a3);
  memcpy(__dst, a4, 0x78uLL);
  memcpy(v16, a4, sizeof(v16));
  sub_268BDEF20(__dst, v15);
  sub_268BEDB0C(v12, a3, v11);
  return sub_268BEDC48(v12, v13 & 1, v16, v11, x8_0);
}

uint64_t sub_268BEDA0C(void *a1, void **a2)
{
  v3 = *a2;
  v10 = *a2;
  if (!a1)
  {
    if (!v3)
    {
      sub_268BDC5A8(&v10, &v9, &qword_2802CE538, &qword_268C18718);
      v6 = 1;
      return v6 & 1;
    }

LABEL_7:
    sub_268BDC5A8(&v10, &v9, &qword_2802CE538, &qword_268C18718);

    v6 = 0;
    return v6 & 1;
  }

  if (!v3)
  {
    v7 = a1;
    goto LABEL_7;
  }

  sub_268BB9B44(0, &qword_2802CE550, 0x277D82BB8);
  v4 = a1;
  sub_268BDC5A8(&v10, &v9, &qword_2802CE538, &qword_268C18718);
  v5 = v4;
  v6 = sub_268C15EEC();

  return v6 & 1;
}

uint64_t sub_268BEDB0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0) + 40));
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  if ((*(v9 + 48))(v8, v9))
  {
    v10 = sub_268BEED54(a2);
    v11 = [a1 deviceIdentifier];
    v12 = sub_268C15BFC();
    v14 = v13;

    sub_268C0F4DC(v12, v14, v10, a3);
  }

  else
  {
    v16 = type metadata accessor for MediaGroup(0);

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v16);
  }
}

uint64_t sub_268BEDC48@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 88) = xmmword_268C16D40;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  v7 = type metadata accessor for Device(0);
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  *(a5 + 136) = 0u;
  *(a5 + 152) = 0u;
  *(a5 + 168) = 0u;
  *(a5 + 184) = 0u;
  *(a5 + 200) = 0;
  v8 = v7[11];
  v9 = type metadata accessor for MediaGroup(0);
  __swift_storeEnumTagSinglePayload(a5 + v8, 1, 1, v9);
  v10 = v7[12];
  *(a5 + v10) = 0;
  v11 = [a1 name];
  v12 = sub_268C15BFC();
  v14 = v13;

  *(a5 + 32) = v12;
  *(a5 + 40) = v14;
  v15 = [a1 deviceIdentifier];
  v16 = sub_268C15BFC();
  v18 = v17;

  *a5 = v16;
  *(a5 + 8) = v18;
  Accessory.mediaSystemIdentifier.getter();
  *(a5 + 16) = v19;
  *(a5 + 24) = v20;
  v21 = [a1 room];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 name];
    v24 = sub_268C15BFC();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  *(a5 + 48) = v24;
  *(a5 + 56) = v26;
  Accessory.type.getter();
  DeviceCategory.init(homekitType:)(v27);
  if ((v39 & 1) == 0)
  {
    if (v38 == 16 && [a1 supportsNativeMatter])
    {
      if (qword_2802CDB88 != -1)
      {
        swift_once();
      }

      *(a5 + 64) = sub_268C0F474(1, off_2802CE1D8);
      *(a5 + 72) = v28;
      *(a5 + v10) = 1;
    }

    else
    {
      if (qword_2802CDBA0 != -1)
      {
        swift_once();
      }

      *(a5 + 64) = sub_268C0F474(v38, off_2802CE390);
      *(a5 + 72) = v29;
    }
  }

  v30 = [a1 siriEndpointProfile];
  v31 = v30;
  if (v30)
  {
  }

  v32 = v31 != 0;
  v33 = v7[13];

  *(a5 + v33) = v32;
  *(a5 + 80) = a2 & 1;
  sub_268BF248C(a3, a5 + 88, &qword_2802CE578, &qword_268C18750);
  return sub_268BF248C(a4, a5 + v8, &qword_2802CE568, &unk_268C18740);
}

uint64_t sub_268BEDF18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a2;
  memcpy(__dst, a2, sizeof(__dst));
  v8 = type metadata accessor for MediaGroup(0);
  MEMORY[0x28223BE20](v8);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  v13 = sub_268C15A1C();
  v73 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v65 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v16;
  v17 = *(a3 + 16);
  v70[0] = *a3;
  v70[1] = v17;
  v71 = *(a3 + 32);
  if (qword_2802CDB68 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, qword_2802D2EC0);
  v19 = *(v73 + 16);
  v62 = v18;
  v63 = v73 + 16;
  v61 = v19;
  (v19)(v68);
  v66 = a1;
  sub_268BF24DC(a1, v12);
  v20 = sub_268C159FC();
  v21 = sub_268C15DDC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v59 = a4;
    v23 = v22;
    v24 = swift_slowAlloc();
    v60 = v4;
    v25 = v24;
    v69[0] = v24;
    *v23 = 136315138;
    v26 = MediaGroup.description.getter();
    v58 = v8;
    v28 = v27;
    sub_268BF25A0(v12);
    v29 = sub_268BB3D28(v26, v28, v69);
    v8 = v58;

    *(v23 + 4) = v29;
    _os_log_impl(&dword_268BAD000, v20, v21, "Checking if predicate matches media group: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x26D628010](v25, -1, -1);
    v30 = v23;
    a4 = v59;
    MEMORY[0x26D628010](v30, -1, -1);
  }

  else
  {

    sub_268BF25A0(v12);
  }

  v31 = *(v73 + 8);
  v31(v68, v13);
  v32 = v66;
  v33 = *(v66 + 16);
  if (v33 && (v34 = v67[1]) != 0 && (v35 = *(v66 + 8), v69[0] = *v67, v69[1] = v34, v69[15] = v35, v69[16] = v33, sub_268BB9A64(), !sub_268C15F5C()))
  {
    v61(v65, v62, v13);
    v40 = sub_268C159FC();
    v41 = sub_268C15DCC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_268BAD000, v40, v41, "Predicate matches, adding group", v42, 2u);
      v43 = v42;
      v32 = v66;
      MEMORY[0x26D628010](v43, -1, -1);
    }

    v44 = (v31)(v65, v13);
    MEMORY[0x28223BE20](v44);
    *(&v58 - 2) = v70;
    v46 = sub_268BC499C(sub_268BF26A0, (&v58 - 4), v45);
    v47 = v64;
    sub_268BF24DC(v32, v64);
    Device.init()(a4);
    v49 = *(v47 + 8);
    v48 = *(v47 + 16);
    sub_268BDEF20(v67, v69);

    *(a4 + 32) = v49;
    *(a4 + 40) = v48;
    v50 = sub_268C152EC();
    v52 = v51;

    *a4 = v50;
    *(a4 + 8) = v52;
    if (qword_2802CDBA0 != -1)
    {
      swift_once();
    }

    v53 = sub_268C0F474(4, off_2802CE390);
    v55 = v54;

    *(a4 + 64) = v53;
    *(a4 + 72) = v55;
    *(a4 + 80) = v46;
    memcpy(v69, (a4 + 88), 0x78uLL);
    sub_268BF2790(v69, &qword_2802CE578, &qword_268C18750);
    memcpy((a4 + 88), __dst, 0x78uLL);
    v56 = type metadata accessor for Device(0);
    v57 = *(v56 + 44);
    sub_268BF2790(a4 + v57, &qword_2802CE568, &unk_268C18740);
    sub_268BF2540(v47, a4 + v57, type metadata accessor for MediaGroup);
    __swift_storeEnumTagSinglePayload(a4 + v57, 0, 1, v8);
    v37 = a4;
    v38 = 0;
    v36 = v56;
  }

  else
  {
    v36 = type metadata accessor for Device(0);
    v37 = a4;
    v38 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v37, v38, 1, v36);
}

uint64_t sub_268BEE518(void *a1, void **a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 88))(v3, v4);
  v7 = v6;
  v8 = *a2;
  v18 = v8;
  if (v8)
  {
    v9 = v5;
    sub_268BDC5A8(&v18, v17, &qword_2802CE538, &qword_268C18718);
    v10 = [v8 deviceIdentifier];
    v11 = sub_268C15BFC();
    v13 = v12;

    if (v9 == v11 && v7 == v13)
    {

      v15 = 1;
    }

    else
    {
      v15 = sub_268C1618C();
    }
  }

  else
  {
    sub_268BDC5A8(&v18, v17, &qword_2802CE538, &qword_268C18718);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_268BEE660@<X0>(void *__src@<X3>, void *a2@<X0>, void **a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE568, &unk_268C18740);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14[-v9];
  v11 = a2;
  v12 = sub_268BEDA0C(v11, a3);
  sub_268BDEF20(__src, v14);
  sub_268BEDB0C(v11, a3, v10);
  return sub_268BEDC48(v11, v12 & 1, __dst, v10, a4);
}

uint64_t sub_268BEE764(uint64_t a1)
{
  v1 = sub_268C061B4();
  v2 = sub_268C062D4();
  sub_268BB0378(v2);

  return sub_268BE6F40(v1);
}

uint64_t sub_268BEE7C4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_268BDA100(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_268BEE8C8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  sub_268BDCB60(a2, *a1, *(a1 + 1));
  v9 = v8;
  v10 = 0;
  v54 = *(v8 + 16);
  v52 = v8 + 32;
  v11 = MEMORY[0x277D84F90];
  v51 = v8;
LABEL_2:
  while (v10 != v54)
  {
    if (v10 >= *(v9 + 16))
    {
LABEL_35:
      __break(1u);
      return;
    }

    v12 = (v52 + 16 * v10);
    v13 = *v12;
    v14 = v12[1];
    ++v10;
    if (*(a3 + 16))
    {
      sub_268C1624C();

      sub_268C15C3C();
      v15 = sub_268C1626C();
      v16 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v17 = v15 & v16;
        if (((*(a3 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        v18 = (*(a3 + 48) + 16 * v17);
        if (*v18 != v13 || v18[1] != v14)
        {
          v20 = sub_268C1618C();
          v15 = v17 + 1;
          if ((v20 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_2;
      }
    }

    else
    {
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_268BB4AB8(0, *(v11 + 16) + 1, 1);
    }

    v22 = *(v11 + 16);
    v21 = *(v11 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_268BB4AB8((v21 > 1), v22 + 1, 1);
    }

    *(v11 + 16) = v22 + 1;
    v23 = v11 + 16 * v22;
    *(v23 + 32) = v13;
    *(v23 + 40) = v14;
    v9 = v51;
  }

  v53[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5B0, &qword_268C18770);
  sub_268BDCF60();
  v24 = sub_268C15B9C();
  v26 = v25;

  v27 = 1 << *(a4 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(a4 + 56);
  v30 = (v27 + 63) >> 6;

  v31 = 0;
  v54 = v26;
  if (v29)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v32 >= v30)
    {
      break;
    }

    v29 = *(a4 + 56 + 8 * v32);
    ++v31;
    if (v29)
    {
      v31 = v32;
      do
      {
LABEL_27:
        v29 &= v29 - 1;
        v53[0] = v24;
        v53[1] = v26;
        sub_268BB9A64();

        v24 = sub_268C15F4C();
        v34 = v33;

        v26 = v34;
      }

      while (v29);
      continue;
    }
  }

  swift_beginAccess();
  v35 = *a5;
  v36 = a5[1];

  v37 = sub_268C0E254(v35, v36, 0, v24, v26);

  if (v37 >= *a6)
  {
    if (v37 == *a6)
    {
      sub_268BBADD4();
      v41 = *(*a7 + 16);
      sub_268BBAEF0(v41);
      v42 = *a7;
      *(v42 + 16) = v41 + 1;
      v43 = v42 + 40 * v41;
      v44 = *a1;
      v45 = a1[1];
      *(v43 + 64) = *(a1 + 32);
      *(v43 + 32) = v44;
      *(v43 + 48) = v45;
      sub_268BDC5A8(a1, v53, &unk_2802CDCF0, &qword_268C170B8);
    }
  }

  else
  {
    *a6 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE590, &qword_268C170B0);
    v38 = swift_allocObject();
    v39 = *a1;
    v40 = a1[1];
    *(v38 + 16) = xmmword_268C172B0;
    *(v38 + 32) = v39;
    *(v38 + 48) = v40;
    *(v38 + 64) = *(a1 + 32);
    *a7 = v38;
    sub_268BDC5A8(a1, v53, &unk_2802CDCF0, &qword_268C170B8);
  }
}