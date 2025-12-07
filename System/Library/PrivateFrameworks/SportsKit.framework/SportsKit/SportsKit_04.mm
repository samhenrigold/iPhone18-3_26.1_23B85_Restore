uint64_t sub_26B67DAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_7_6();
  v9 = v8;
  sub_26B675324();
  OUTLINED_FUNCTION_2_8();
  if (v12)
  {
    __break(1u);
LABEL_14:
    result = sub_26B6EA674();
    __break(1u);
    return result;
  }

  v13 = v10;
  v14 = v11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F40, &unk_26B6F1830);
  if (OUTLINED_FUNCTION_24_2(v15))
  {
    sub_26B675324();
    OUTLINED_FUNCTION_10_6();
    if (!v17)
    {
      goto LABEL_14;
    }

    v13 = v16;
  }

  v18 = *v7;
  if (v14)
  {
    v19 = v18[7] + 32 * v13;
    *v19 = v9;
    *(v19 + 8) = v5;
    *(v19 + 16) = v3;
    *(v19 + 24) = v24;
    OUTLINED_FUNCTION_131();

    return sub_26B655E0C(v20);
  }

  else
  {
    sub_26B67E050(v13, v6, v4, v9, v5, v3, v24, v18);
    OUTLINED_FUNCTION_131();
  }
}

uint64_t sub_26B67DBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_7_6();
  v9 = v8;
  sub_26B675324();
  OUTLINED_FUNCTION_2_8();
  if (v12)
  {
    __break(1u);
LABEL_14:
    result = sub_26B6EA674();
    __break(1u);
    return result;
  }

  v13 = v10;
  v14 = v11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F38, &unk_26B6F1820);
  if (OUTLINED_FUNCTION_24_2(v15))
  {
    sub_26B675324();
    OUTLINED_FUNCTION_10_6();
    if (!v17)
    {
      goto LABEL_14;
    }

    v13 = v16;
  }

  v18 = *v7;
  if (v14)
  {
    v19 = (v18[7] + 32 * v13);
    *v19 = v9;
    v19[1] = v5;
    v19[2] = v3;
    v19[3] = v23;

    OUTLINED_FUNCTION_131();
  }

  else
  {
    sub_26B67E0A4(v13, v6, v4, v9, v5, v3, v23, v18);
    OUTLINED_FUNCTION_131();
  }
}

uint64_t sub_26B67DD18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_26B675324();
  OUTLINED_FUNCTION_2_8();
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F18, &qword_26B6F17F0);
  if ((sub_26B6EA2E4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_26B675324();
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_26B6EA674();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = *(v15 + 56);
    sub_26B6E9564();
    OUTLINED_FUNCTION_16();
    v18 = *(v17 + 40);
    v20 = v19;
    v21 = v16 + *(v17 + 72) * v11;

    return v18(v21, a1, v20);
  }

  else
  {
    sub_26B67E0F4(v11, a2, a3, a1, v15);
  }
}

uint64_t sub_26B67DE78(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_26B6E9594();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  v12 = v11 - v10;
  sub_26B67552C();
  OUTLINED_FUNCTION_2_8();
  if (v15)
  {
    __break(1u);
LABEL_12:
    result = sub_26B6EA674();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409EE8, &unk_26B6F17C0);
  if (sub_26B6EA2E4())
  {
    sub_26B67552C();
    OUTLINED_FUNCTION_10_6();
    if (!v19)
    {
      goto LABEL_12;
    }

    v16 = v18;
  }

  if (v17)
  {
    *(*(*v3 + 56) + 8 * v16) = a1;
  }

  else
  {
    (*(v8 + 16))(v12, a2, v6);
    OUTLINED_FUNCTION_59_0();
    return sub_26B67E294(v21, v22, v23, v24);
  }
}

unint64_t sub_26B67E00C(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_26B67E050(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = a8[7] + 32 * result;
  *v9 = a4;
  *(v9 + 8) = a5;
  *(v9 + 16) = a6;
  *(v9 + 24) = a7;
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

unint64_t sub_26B67E0A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
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

uint64_t sub_26B67E0F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_4_7(a5 + 8 * (a1 >> 6));
  v10 = (*(v8 + 48) + 16 * v9);
  *v10 = v11;
  v10[1] = v12;
  v13 = *(v8 + 56);
  sub_26B6E9564();
  OUTLINED_FUNCTION_16();
  result = (*(v14 + 32))(v13 + *(v14 + 72) * a1, a4);
  v16 = *(a5 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v18;
  }

  return result;
}

uint64_t sub_26B67E194(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_110(a1, a2, a3, a4);
  OUTLINED_FUNCTION_16();
  (*(v6 + 16))(v4, v5);
  return v4;
}

_OWORD *sub_26B67E1E4(unint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_7(a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  sub_26B6EA2D4();
  OUTLINED_FUNCTION_16();
  (*(v10 + 32))(v9 + *(v10 + 72) * a1, a2);
  result = sub_26B643E0C(a3, (*(a4 + 56) + 32 * a1));
  v12 = *(a4 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }

  return result;
}

uint64_t sub_26B67E294(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26B6E9594();
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

uint64_t sub_26B67E34C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudChannelSubscription.CacheValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B67E3B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudChannelSubscription.CacheValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26B67E414()
{
  result = qword_2810CC810[0];
  if (!qword_2810CC810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810CC810);
  }

  return result;
}

unint64_t sub_26B67E468()
{
  result = qword_2810CC2F0;
  if (!qword_2810CC2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409F70, &qword_26B6F1910);
    sub_26B67E758(&qword_2810CD7B0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC2F0);
  }

  return result;
}

unint64_t sub_26B67E524()
{
  result = qword_2810CC2E8;
  if (!qword_2810CC2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409F78, &qword_26B6F1918);
    sub_26B67E758(&qword_2810CC8B0, type metadata accessor for CloudChannelSubscription.CacheValue, &protocol conformance descriptor for CloudChannelSubscription.CacheValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC2E8);
  }

  return result;
}

unint64_t sub_26B67E5E0()
{
  result = qword_2810CDD00;
  if (!qword_2810CDD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409F70, &qword_26B6F1910);
    sub_26B67E758(&qword_2810CEA00, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD00);
  }

  return result;
}

unint64_t sub_26B67E69C()
{
  result = qword_2810CC2E0;
  if (!qword_2810CC2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409F78, &qword_26B6F1918);
    sub_26B67E758(&qword_2810CC8A8, type metadata accessor for CloudChannelSubscription.CacheValue, &protocol conformance descriptor for CloudChannelSubscription.CacheValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC2E0);
  }

  return result;
}

uint64_t sub_26B67E758(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_9SportsKit24CloudChannelSubscriptionC6DemandO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26B67E848(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_26B67E888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_26B67E8CC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_26B67E91C(uint64_t a1)
{
  result = sub_26B6E9564();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudChannelPreferences(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SportingEventCompetitorScoreEntry.ValueContainer(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SportingEventCompetitorScoreEntry.ValueContainer(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_26B67EAFC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B67EBDC()
{
  result = qword_280409F88;
  if (!qword_280409F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409F88);
  }

  return result;
}

unint64_t sub_26B67EC34()
{
  result = qword_280409F90;
  if (!qword_280409F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409F90);
  }

  return result;
}

unint64_t sub_26B67EC8C()
{
  result = qword_2810CC800;
  if (!qword_2810CC800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC800);
  }

  return result;
}

unint64_t sub_26B67ECE4()
{
  result = qword_2810CC808;
  if (!qword_2810CC808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC808);
  }

  return result;
}

unint64_t sub_26B67ED3C()
{
  result = qword_2810CC8B8;
  if (!qword_2810CC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC8B8);
  }

  return result;
}

unint64_t sub_26B67ED94()
{
  result = qword_2810CC8C0;
  if (!qword_2810CC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC8C0);
  }

  return result;
}

uint64_t sub_26B67EDE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_110(a1, a2, a3, a4);
  OUTLINED_FUNCTION_16();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26B6EA464();
}

uint64_t OUTLINED_FUNCTION_23_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_24_2(uint64_t a1)
{

  return sub_26B6EA2E4();
}

uint64_t sub_26B67EF90()
{
  sub_26B6E98A4();
  sub_26B67F98C(&qword_2810CD750, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409FE0, &qword_26B6F17A0);
  sub_26B67F9D4(&qword_2810CC2D0, &qword_280409FE0, &qword_26B6F17A0);
  return sub_26B6EA0B4();
}

uint64_t sub_26B67F068()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v1 = sub_26B67F0C8(v0);
    *(v0 + 56) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_26B67F0C8(uint64_t a1)
{
  v28 = a1;
  v1 = sub_26B6E98A4();
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x28223BE20](v1);
  v30 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26B6E98D4();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26B6E9894();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_26B6E98F4();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26B6E9EF4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B67F928();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26B67F98C(&qword_280409FC0, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409FC8, &unk_26B6F1DC0);
  sub_26B67F9D4(&unk_280409FD0, &qword_280409FC8, &unk_26B6F1DC0);
  sub_26B6EA0B4();
  v15 = v28;
  v16 = sub_26B6E9F24();
  (*(v12 + 8))(v14, v11);
  ObjectType = swift_getObjectType();
  sub_26B6E98E4();
  v18 = *(v15 + 32);
  sub_26B67F5B8(v7);
  MEMORY[0x26D67D940](v10, v7, ObjectType, v18);
  (*(v26 + 8))(v7, v27);
  (*(v24 + 8))(v10, v25);
  v19 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_26B67F96C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26B66CB58;
  aBlock[3] = &block_descriptor_3;
  v20 = _Block_copy(aBlock);

  v21 = v29;
  sub_26B6E98B4();
  v22 = v30;
  sub_26B67EF90();
  sub_26B6E9F44();
  _Block_release(v20);
  (*(v33 + 8))(v22, v34);
  (*(v31 + 8))(v21, v32);

  return v16;
}

uint64_t sub_26B67F5B8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_26B6E9894();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_26B67F630(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = *(result + 24);
      sub_26B67FA28(*(result + 16), v3);

      v2(v4);
      return sub_26B67F918(v2, v3);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_26B67F6C8()
{
  sub_26B67F068();
  swift_getObjectType();
  sub_26B6E9F64();
  swift_unknownObjectRelease();
  sub_26B67F730();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_26B67F918(v1, v2);
  sub_26B67F918(*(v0 + 16), *(v0 + 24));

  swift_unknownObjectRelease();
  return v0;
}

void sub_26B67F730()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    *(v0 + 40) = 1;
    sub_26B67F068();
    swift_getObjectType();
    sub_26B6E9F74();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_26B67F78C()
{
  sub_26B67F6C8();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

_BYTE *storeEnumTagSinglePayload for RepeatingTimer.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B67F8C4()
{
  result = qword_280409FB0;
  if (!qword_280409FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409FB0);
  }

  return result;
}

uint64_t sub_26B67F918(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_26B67F928()
{
  result = qword_2810CC240;
  if (!qword_2810CC240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810CC240);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26B67F98C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B67F9D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26B67FA28(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26B67FA60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A298, &qword_26B6F2608);
  if (sub_26B6EA484())
  {
    v1 = sub_26B6EA3C4();
    if (!v0)
    {
      OUTLINED_FUNCTION_28_3(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19, v20, v21, v22);
      v9 = sub_26B68169C(&v18, type metadata accessor for SportingEventCoverageIngestion, &unk_2810CDEA8, type metadata accessor for SportingEventCoverageIngestion, &protocol conformance descriptor for SportingEventCoverageIngestion);
      OUTLINED_FUNCTION_37_3(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
    }
  }

  return OUTLINED_FUNCTION_20_2();
}

uint64_t sub_26B67FB6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v11 = a1;
  v6 = OUTLINED_FUNCTION_47_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  if (sub_26B6EA484())
  {
    sub_26B6EA3C4();
    if (!v4)
    {
      sub_26B642140(v10, v9);
      a4(v9);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  return OUTLINED_FUNCTION_20_2();
}

uint64_t sub_26B67FC84(uint64_t a1)
{
  OUTLINED_FUNCTION_34_2(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A278, &qword_26B6F25E8);
  OUTLINED_FUNCTION_8_5();
  v3 = sub_26B6EA484();
  if ((v3 & 1) == 0)
  {
    return 2;
  }

  v8 = OUTLINED_FUNCTION_5_6(v3, v4, v5, v6, v7);
  if (!v2)
  {
    OUTLINED_FUNCTION_28_3(v8, v9, v10, v11, v12, v13, v14, v15, v17[0], v17[1], v17[2], v17[3], v17[4]);
    v1 = sub_26B680D7C(v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  return v1;
}

uint64_t sub_26B67FD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v8 = OUTLINED_FUNCTION_47_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  if (sub_26B6EA484())
  {
    v10 = sub_26B6EA3C4();
    if (!v5)
    {
      OUTLINED_FUNCTION_28_3(v10, v11, v12, v13, v14, v15, v16, v17, v19[0], v19[1], v19[2], v19[3], v19[4]);
      sub_26B68114C(v19, a4, a5);
      __swift_destroy_boxed_opaque_existential_1(v20);
    }
  }

  return OUTLINED_FUNCTION_20_2();
}

uint64_t sub_26B680058(uint64_t a1)
{
  OUTLINED_FUNCTION_17_3(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A1E0, &qword_26B6F3990);
  OUTLINED_FUNCTION_8_5();
  v2 = sub_26B6EA484();
  if (v2)
  {
    v7 = OUTLINED_FUNCTION_5_6(v2, v3, v4, v5, v6);
    if (!v1)
    {
      OUTLINED_FUNCTION_28_3(v7, v8, v9, v10, v11, v12, v13, v14, v26, v27, v28, v29, v30);
      OUTLINED_FUNCTION_12_5();
      v17 = sub_26B68169C(&v26, v15, v16, type metadata accessor for SportingEventClockPeriod, &protocol conformance descriptor for SportingEventClockPeriod);
      OUTLINED_FUNCTION_37_3(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27);
    }
  }

  return OUTLINED_FUNCTION_20_2();
}

uint64_t sub_26B68010C(uint64_t a1)
{
  OUTLINED_FUNCTION_17_3(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A1E0, &qword_26B6F3990);
  OUTLINED_FUNCTION_8_5();
  v2 = sub_26B6EA484();
  if (v2)
  {
    v7 = OUTLINED_FUNCTION_5_6(v2, v3, v4, v5, v6);
    if (!v1)
    {
      OUTLINED_FUNCTION_28_3(v7, v8, v9, v10, v11, v12, v13, v14, v24, v25, v26, v27, v28);
      v15 = sub_26B680F6C(&v24, &qword_28040A1E8, &qword_26B6F2590, sub_26B685048);
      OUTLINED_FUNCTION_37_3(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25);
    }
  }

  return OUTLINED_FUNCTION_20_2();
}

uint64_t sub_26B680248(uint64_t a1)
{
  OUTLINED_FUNCTION_34_2(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A1D0, &qword_26B6F3A20);
  OUTLINED_FUNCTION_8_5();
  v2 = sub_26B6EA484();
  if (v2)
  {
    v7 = OUTLINED_FUNCTION_5_6(v2, v3, v4, v5, v6);
    if (!v1)
    {
      OUTLINED_FUNCTION_28_3(v7, v8, v9, v10, v11, v12, v13, v14, v26, v27, v28, v29, v30);
      OUTLINED_FUNCTION_12_5();
      v17 = sub_26B68169C(&v26, v15, v16, type metadata accessor for SportingEventClockPeriod, &protocol conformance descriptor for SportingEventClockPeriod);
      OUTLINED_FUNCTION_37_3(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27);
    }
  }

  return OUTLINED_FUNCTION_20_2();
}

uint64_t sub_26B680324(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_17_3(a1);
  v5 = OUTLINED_FUNCTION_47_1(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_8_5();
  v7 = sub_26B6EA484();
  if ((v7 & 1) == 0)
  {
    return 2;
  }

  v12 = OUTLINED_FUNCTION_5_6(v7, v8, v9, v10, v11);
  if (!v2)
  {
    OUTLINED_FUNCTION_28_3(v12, v13, v14, v15, v16, v17, v18, v19, v21[0], v21[1], v21[2], v21[3], v21[4]);
    v1 = sub_26B680D7C(v21);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  return v1;
}

uint64_t sub_26B680468(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_34_2(a1);
  v4 = OUTLINED_FUNCTION_47_1(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_8_5();
  v6 = sub_26B6EA484();
  if (v6)
  {
    v11 = OUTLINED_FUNCTION_5_6(v6, v7, v8, v9, v10);
    if (!v1)
    {
      OUTLINED_FUNCTION_28_3(v11, v12, v13, v14, v15, v16, v17, v18, v28, v29, v30, v31, v32);
      v19 = sub_26B68169C(&v28, type metadata accessor for SportingEventClock, &unk_2810CE420, type metadata accessor for SportingEventClock, &protocol conformance descriptor for SportingEventClock);
      OUTLINED_FUNCTION_37_3(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29);
    }
  }

  return OUTLINED_FUNCTION_20_2();
}

uint64_t sub_26B680584(uint64_t a1)
{
  OUTLINED_FUNCTION_17_3(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A180, &qword_26B6F3A90);
  OUTLINED_FUNCTION_8_5();
  v3 = sub_26B6EA484();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_5_6(v3, v4, v5, v6, v7);
  if (!v2)
  {
    OUTLINED_FUNCTION_28_3(v8, v9, v10, v11, v12, v13, v14, v15, v17[0], v17[1], v17[2], v17[3], v17[4]);
    v1 = sub_26B680BA8(v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  return v1;
}

uint64_t sub_26B68067C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_34_2(a1);
  v5 = OUTLINED_FUNCTION_47_1(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_8_5();
  v7 = sub_26B6EA484();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v12 = OUTLINED_FUNCTION_5_6(v7, v8, v9, v10, v11);
  if (!v2)
  {
    OUTLINED_FUNCTION_28_3(v12, v13, v14, v15, v16, v17, v18, v19, v21[0], v21[1], v21[2], v21[3], v21[4]);
    v1 = sub_26B680BA8(v21);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  return v1;
}

void *sub_26B680708(uint64_t a1)
{
  OUTLINED_FUNCTION_34_2(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A168, &unk_26B6F2530);
  OUTLINED_FUNCTION_8_5();
  v2 = sub_26B6EA484();
  if ((v2 & 1) == 0)
  {
    v15 = 0;
    LOBYTE(v16) = 1;
    return (v15 | (v16 << 32));
  }

  result = OUTLINED_FUNCTION_5_6(v2, v3, v4, v5, v6);
  if (!v1)
  {
    OUTLINED_FUNCTION_28_3(result, v8, v9, v10, v11, v12, v13, v14, v19[0], v19[1], v19[2], v19[3], v19[4]);
    v17 = sub_26B681CF0(v19);
    v18 = v17;
    v16 = HIDWORD(v17) & 1;
    __swift_destroy_boxed_opaque_existential_1(v20);
    v15 = v18;
    return (v15 | (v16 << 32));
  }

  return result;
}

uint64_t sub_26B6807E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6EA764();
  __swift_project_boxed_opaque_existential_1(v9, v10);
  if (sub_26B6EA614())
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v9, v10);
    sub_26B685894();
    sub_26B6EA604();
    v4 = v7;
    v5 = v8;
  }

  __swift_destroy_boxed_opaque_existential_1(v9);
  *a2 = v4;
  a2[1] = v5;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26B6809B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6EA764();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  if (sub_26B6EA614())
  {
    v4 = 1;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    sub_26B685840();
    sub_26B6EA604();
    v4 = v6;
  }

  __swift_destroy_boxed_opaque_existential_1(v7);
  *a2 = v4;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26B680BA8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6EA764();
  __swift_project_boxed_opaque_existential_1(v5, v6);
  if (sub_26B6EA614())
  {
    v2 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    sub_26B6EA604();
    v2 = v4;
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_26B680D7C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6EA764();
  __swift_project_boxed_opaque_existential_1(v5, v6);
  if (sub_26B6EA614())
  {
    v2 = 2;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    sub_26B6EA604();
    v2 = v4;
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_26B680F6C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_33_3();
  sub_26B6EA764();
  if (v4)
  {
    OUTLINED_FUNCTION_4_0(a1, a1[3]);
    sub_26B6EA774();
    OUTLINED_FUNCTION_2_9("com.apple.SportsKit.initFailureObserver", v16, v17[0], v17[1], v17[2], v18, v19, v20);

    OUTLINED_FUNCTION_31_2(v9, v10);
    v11 = v18;
    if (v18)
    {
      v12 = v19;
      OUTLINED_FUNCTION_4_0(v17, v18);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      (*(v12 + 8))(v13, v4, v11, v12);

      sub_26B684C50(v21);
      __swift_destroy_boxed_opaque_existential_1(v17);
    }

    else
    {
      sub_26B684C50(v21);

      sub_26B684C50(v17);
    }

    v14 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_0(v21, v22);
    OUTLINED_FUNCTION_33_3();
    if (sub_26B6EA614())
    {
      v14 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_4_0(v21, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      a4();
      sub_26B6EA604();
      v14 = v17[0];
    }

    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

uint64_t sub_26B68114C(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_4_8();
  sub_26B6EA764();
  if (v3)
  {
    OUTLINED_FUNCTION_0_8(a1);
    sub_26B6EA774();
    OUTLINED_FUNCTION_2_9("com.apple.SportsKit.initFailureObserver", v10, v11[0], v11[1], v11[2], v12, v13, v14);

    OUTLINED_FUNCTION_31_2(v5, v6);
    if (v12)
    {
      OUTLINED_FUNCTION_3_10(v11);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_7_7();
      v7();

      sub_26B684C50(v15);
      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    else
    {
      sub_26B684C50(v15);

      sub_26B684C50(v11);
    }

    v8 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v15);
    if (sub_26B6EA614())
    {
      v8 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_4_0(v15, v15[3]);
      sub_26B6EA604();
      v8 = v11[0];
    }

    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_26B6812CC()
{
  OUTLINED_FUNCTION_18_2();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_46_1();
  sub_26B6EA764();
  if (v1)
  {
    OUTLINED_FUNCTION_0_8(v0);
    sub_26B6EA774();
    OUTLINED_FUNCTION_2_9("com.apple.SportsKit.initFailureObserver", v9, v10[0], v10[1], v10[2], v11, v12, v13);

    OUTLINED_FUNCTION_31_2(v3, v4);
    if (v11)
    {
      OUTLINED_FUNCTION_3_10(v10);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_7_7();
      v5();

      sub_26B684C50(v14);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
      sub_26B684C50(v14);

      sub_26B684C50(v10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_8(v14);
    if ((sub_26B6EA614() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_10(v14);
      v6 = sub_26B68563C();
      OUTLINED_FUNCTION_13_6(&type metadata for SportingEventCompetitorWinOutcome, v7, v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return OUTLINED_FUNCTION_36_3();
}

uint64_t sub_26B681414()
{
  OUTLINED_FUNCTION_18_2();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_46_1();
  sub_26B6EA764();
  if (v1)
  {
    OUTLINED_FUNCTION_0_8(v0);
    sub_26B6EA774();
    OUTLINED_FUNCTION_2_9("com.apple.SportsKit.initFailureObserver", v9, v10[0], v10[1], v10[2], v11, v12, v13);

    OUTLINED_FUNCTION_31_2(v3, v4);
    if (v11)
    {
      OUTLINED_FUNCTION_3_10(v10);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_7_7();
      v5();

      sub_26B684C50(v14);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
      sub_26B684C50(v14);

      sub_26B684C50(v10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_8(v14);
    if ((sub_26B6EA614() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_10(v14);
      v6 = sub_26B6853CC();
      OUTLINED_FUNCTION_13_6(&type metadata for SportingEventCompetitorQualifier, v7, v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return OUTLINED_FUNCTION_36_3();
}

uint64_t sub_26B68169C(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_4_8();
  sub_26B6EA764();
  if (v5)
  {
    OUTLINED_FUNCTION_0_8(a1);
    sub_26B6EA774();
    OUTLINED_FUNCTION_2_9("com.apple.SportsKit.initFailureObserver", v16, v17[0], v17[1], v17[2], v18, v19, v20);

    OUTLINED_FUNCTION_31_2(v9, v10);
    if (v18)
    {
      OUTLINED_FUNCTION_3_10(v17);
      a2(0);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_7_7();
      v11();

      sub_26B684C50(v21);
      __swift_destroy_boxed_opaque_existential_1(v17);
    }

    else
    {
      sub_26B684C50(v21);

      sub_26B684C50(v17);
    }

    v12 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_0(v21, v22);
    if (sub_26B6EA614())
    {
      v12 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_4_0(v21, v22);
      a2(0);
      v13 = OUTLINED_FUNCTION_2_2();
      sub_26B6857F8(v13, v14, a5);
      OUTLINED_FUNCTION_100();
      sub_26B6EA604();
      v12 = v17[0];
    }

    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t sub_26B681884(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3)
{
  OUTLINED_FUNCTION_18_2();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_33_3();
  sub_26B6EA764();
  if (v4)
  {
    OUTLINED_FUNCTION_4_0(v3, v3[3]);
    sub_26B6EA774();
    OUTLINED_FUNCTION_2_9("com.apple.SportsKit.initFailureObserver", v14, v15[0], v15[1], v15[2], v16, v17, v18);

    OUTLINED_FUNCTION_31_2(v8, v9);
    v10 = v16;
    if (v16)
    {
      v11 = v17;
      OUTLINED_FUNCTION_4_0(v15, v16);
      (*(v11 + 8))(a3, v4, v10, v11);

      sub_26B684C50(v19);
      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      sub_26B684C50(v19);

      sub_26B684C50(v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_0(v19, v20);
    OUTLINED_FUNCTION_33_3();
    if ((sub_26B6EA614() & 1) == 0)
    {
      v12 = OUTLINED_FUNCTION_4_0(v19, v20);
      a2(v12);
      sub_26B6EA604();
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  return OUTLINED_FUNCTION_36_3();
}

uint64_t sub_26B681A10()
{
  OUTLINED_FUNCTION_18_2();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_46_1();
  sub_26B6EA764();
  if (v1)
  {
    OUTLINED_FUNCTION_0_8(v0);
    sub_26B6EA774();
    OUTLINED_FUNCTION_2_9("com.apple.SportsKit.initFailureObserver", v9, v10[0], v10[1], v10[2], v11, v12, v13);

    OUTLINED_FUNCTION_31_2(v3, v4);
    if (v11)
    {
      OUTLINED_FUNCTION_3_10(v10);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_7_7();
      v5();

      sub_26B684C50(v14);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
      sub_26B684C50(v14);

      sub_26B684C50(v10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_8(v14);
    if ((sub_26B6EA614() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_10(v14);
      v6 = sub_26B684F4C();
      OUTLINED_FUNCTION_13_6(&type metadata for SportingEventClockPeriodType, v7, v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return OUTLINED_FUNCTION_36_3();
}

uint64_t sub_26B681BA8()
{
  OUTLINED_FUNCTION_18_2();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_46_1();
  sub_26B6EA764();
  if (v1)
  {
    OUTLINED_FUNCTION_0_8(v0);
    sub_26B6EA774();
    OUTLINED_FUNCTION_2_9("com.apple.SportsKit.initFailureObserver", v9, v10[0], v10[1], v10[2], v11, v12, v13);

    OUTLINED_FUNCTION_31_2(v3, v4);
    if (v11)
    {
      OUTLINED_FUNCTION_3_10(v10);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_7_7();
      v5();

      sub_26B684C50(v14);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
      sub_26B684C50(v14);

      sub_26B684C50(v10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_8(v14);
    if ((sub_26B6EA614() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_10(v14);
      v6 = sub_26B684CB8();
      OUTLINED_FUNCTION_13_6(&type metadata for SportingEventPlayDescriptor.DescriptorType, v7, v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return OUTLINED_FUNCTION_36_3();
}

unint64_t sub_26B681CF0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6EA764();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v2 = sub_26B6EA614();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v7);
    sub_26B6EA604();
    v3 = v5;
  }

  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3 | ((v2 & 1) << 32);
}

SportsKit::SportingEventViewContext::LocalizedStrings::LocalizedName __swiftcall SportingEventViewContext.LocalizedStrings.LocalizedName.init(locale:text:)(Swift::String locale, Swift::String text)
{
  *v2 = locale;
  v2[1] = text;
  result.text = text;
  result.locale = locale;
  return result;
}

uint64_t sub_26B681F30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B681FF4(char a1)
{
  if (a1)
  {
    return 1954047348;
  }

  else
  {
    return 0x656C61636F6CLL;
  }
}

uint64_t sub_26B682028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B681F30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B682050(uint64_t a1)
{
  v2 = sub_26B68221C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B68208C(uint64_t a1)
{
  v2 = sub_26B68221C();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportingEventViewContext.LocalizedStrings.LocalizedName.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409FE8, &qword_26B6F1DD0);
  OUTLINED_FUNCTION_4();
  v11 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = v10 - v7;
  v9 = *(v0 + 16);
  v10[1] = *(v0 + 24);
  v10[2] = v9;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26B68221C();
  sub_26B6EA7C4();
  OUTLINED_FUNCTION_35_1();
  sub_26B6EA4F4();
  if (!v1)
  {
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA4F4();
  }

  (*(v11 + 8))(v8, v4);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_26B68221C()
{
  result = qword_280409FF0;
  if (!qword_280409FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409FF0);
  }

  return result;
}

void SportingEventViewContext.LocalizedStrings.LocalizedName.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409FF8, &qword_26B6F1DD8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_7();
  sub_26B68221C();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v29 = sub_26B6EA424();
    v31 = v30;
    v32 = sub_26B6EA424();
    v34 = v33;
    v37 = v32;
    v35 = OUTLINED_FUNCTION_2_2();
    v36(v35);
    *v27 = v29;
    v27[1] = v31;
    v27[2] = v37;
    v27[3] = v34;

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B682470(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6974736974617473 && a2 == 0xEA00000000007363)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B682510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B682470(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B68253C(uint64_t a1)
{
  v2 = sub_26B682738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B682578(uint64_t a1)
{
  v2 = sub_26B682738();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportingEventViewContext.LocalizedStrings.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A000, &qword_26B6F1DE0);
  OUTLINED_FUNCTION_4();
  v25 = v24;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  v28 = &a9 - v27;
  v29 = *v20;
  v30 = OUTLINED_FUNCTION_33_3();
  __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_26B682738();

  OUTLINED_FUNCTION_100();
  sub_26B6EA7C4();
  a10 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A010, &qword_26B6F1DE8);
  sub_26B6829D4(&qword_28040A018, sub_26B68278C, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_26B6EA4E4();

  (*(v25 + 8))(v28, v23);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_26B682738()
{
  result = qword_28040A008;
  if (!qword_28040A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A008);
  }

  return result;
}

unint64_t sub_26B68278C()
{
  result = qword_28040A020;
  if (!qword_28040A020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A028, &qword_26B6F1DF0);
    sub_26B682810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A020);
  }

  return result;
}

unint64_t sub_26B682810()
{
  result = qword_28040A030;
  if (!qword_28040A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A030);
  }

  return result;
}

void SportingEventViewContext.LocalizedStrings.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_18_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A038, &qword_26B6F1DF8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_3_7();
  sub_26B682738();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (!v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A010, &qword_26B6F1DE8);
    sub_26B6829D4(&qword_28040A040, sub_26B682A58, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_26B6EA414();
    v14 = OUTLINED_FUNCTION_30_2();
    v15(v14);
    *v12 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B6829D4(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A010, &qword_26B6F1DE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B682A58()
{
  result = qword_28040A048;
  if (!qword_28040A048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A028, &qword_26B6F1DF0);
    sub_26B682ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A048);
  }

  return result;
}

unint64_t sub_26B682ADC()
{
  result = qword_28040A050;
  if (!qword_28040A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A050);
  }

  return result;
}

uint64_t sub_26B682B8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656D6147657270 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B682C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B682B8C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B682C4C(uint64_t a1)
{
  v2 = sub_26B682DD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B682C88(uint64_t a1)
{
  v2 = sub_26B682DD8();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportingEventViewContext.LocalizedTitles.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A058, &qword_26B6F1E00);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_61_0();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_26B682DD8();
  sub_26B6EA7C4();
  sub_26B6EA4A4();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_26B682DD8()
{
  result = qword_28040A060;
  if (!qword_28040A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A060);
  }

  return result;
}

void SportingEventViewContext.LocalizedTitles.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_18_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A068, &qword_26B6F1E08);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_3_7();
  sub_26B682DD8();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (!v1)
  {
    v4 = sub_26B6EA3D4();
    v6 = v5;
    v7 = OUTLINED_FUNCTION_30_2();
    v8(v7);
    *v2 = v4;
    v2[1] = v6;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B682FAC@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventViewContext.mode.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B682FF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SportingEventViewContext.mode.setter(v1, v2);
}

uint64_t SportingEventViewContext.mode.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SportingEventViewContext.players.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_26B683118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = a4(a1, a2, a3, a4, a5, a6, a7);
  *a8 = result;
  return result;
}

uint64_t SportingEventViewContext.statistics.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t SportingEventViewContext.strings.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_26B64832C(v2);
}

uint64_t sub_26B6831EC@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 6);
  v4 = a1[1];
  v7 = *a1;
  v8 = v4;
  v9 = a1[2];
  v10 = v3;
  result = SportingEventViewContext.strings.getter(&v6);
  *a2 = v6;
  return result;
}

uint64_t sub_26B683240(uint64_t *a1)
{
  v2 = *a1;
  sub_26B64832C(v2);
  return SportingEventViewContext.strings.setter(&v2);
}

uint64_t SportingEventViewContext.strings.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_26B648448(*(v1 + 32));
  *(v1 + 32) = v2;
  return result;
}

uint64_t SportingEventViewContext.titles.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return sub_26B64833C(v2, v3);
}

double sub_26B6832D4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  v6[1] = *a1;
  v6[2] = v4;
  v6[3] = *(a1 + 32);
  v7 = v3;
  SportingEventViewContext.titles.getter(v6);
  result = *v6;
  *a2 = v6[0];
  return result;
}

uint64_t sub_26B683328(uint64_t *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  sub_26B64833C(v3[0], v1);
  return SportingEventViewContext.titles.setter(v3);
}

uint64_t SportingEventViewContext.titles.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_26B648458(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t SportingEventViewContext.init(mode:players:statistics:strings:titles:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v8 = *a5;
  v9 = *a6;
  v10 = a6[1];
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  sub_26B648448(1);
  a7[4] = v8;
  result = sub_26B648458(0, 1);
  a7[5] = v9;
  a7[6] = v10;
  return result;
}

uint64_t sub_26B683410(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73726579616C70 && a2 == 0xE700000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974736974617473 && a2 == 0xEA00000000007363;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73676E69727473 && a2 == 0xE700000000000000;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x73656C746974 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_26B6EA5D4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_26B6835B4(char a1)
{
  result = 1701080941;
  switch(a1)
  {
    case 1:
      v3 = 0x726579616C70;
      goto LABEL_6;
    case 2:
      result = 0x6974736974617473;
      break;
    case 3:
      v3 = 0x676E69727473;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 4:
      result = 0x73656C746974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B68364C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B683410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B683674(uint64_t a1)
{
  v2 = sub_26B683994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6836B0(uint64_t a1)
{
  v2 = sub_26B683994();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportingEventViewContext.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  v45 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A070, &unk_26B6F1E10);
  OUTLINED_FUNCTION_4();
  v29 = v28;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  v32 = &v40 - v31;
  v33 = *v23;
  v34 = v23[1];
  v35 = v23[2];
  v43 = v23[3];
  v44 = v35;
  v36 = v23[4];
  v40 = v23[5];
  v41 = v23[6];
  v42 = v36;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_26B683994();

  sub_26B6EA7C4();
  v46 = v33;
  v47 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A080, &unk_26B6F37B0);
  sub_26B6839E8();
  v37 = v45;
  sub_26B6EA534();
  if (v37)
  {
  }

  else
  {
    v39 = v42;
    v38 = v43;

    v46 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A090, &qword_26B6F1E28);
    sub_26B683A98();
    OUTLINED_FUNCTION_18_5();
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA534();
    v46 = v38;
    OUTLINED_FUNCTION_18_5();
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA534();
    v46 = v39;
    sub_26B64832C(v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A0B0, &qword_26B6F1E40);
    sub_26B683C28();
    OUTLINED_FUNCTION_18_5();
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA534();
    sub_26B648448(v46);
    v46 = v40;
    v47 = v41;
    sub_26B64833C(v40, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A0D8, &qword_26B6F1E50);
    sub_26B683D84();
    OUTLINED_FUNCTION_18_5();
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA534();
    sub_26B648458(v46, v47);
  }

  (*(v29 + 8))(v32, v27);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_26B683994()
{
  result = qword_28040A078;
  if (!qword_28040A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A078);
  }

  return result;
}

unint64_t sub_26B6839E8()
{
  result = qword_2810CE560;
  if (!qword_2810CE560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A080, &unk_26B6F37B0);
    sub_26B683BCC(&qword_2810CDCF0, &unk_28040A088, &unk_26B6F1E20, &protocol conformance descriptor for <A> A?);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE560);
  }

  return result;
}

unint64_t sub_26B683A98()
{
  result = qword_28040A098;
  if (!qword_28040A098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A090, &qword_26B6F1E28);
    sub_26B683B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A098);
  }

  return result;
}

unint64_t sub_26B683B1C()
{
  result = qword_28040A0A0;
  if (!qword_28040A0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A0A8, &unk_26B6F1E30);
    sub_26B683BCC(&qword_280409BF0, &qword_280409BE8, &qword_26B6F00D0, MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A0A0);
  }

  return result;
}

uint64_t sub_26B683BCC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_47_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B683C28()
{
  result = qword_28040A0B8;
  if (!qword_28040A0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A0B0, &qword_26B6F1E40);
    sub_26B683CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A0B8);
  }

  return result;
}

unint64_t sub_26B683CAC()
{
  result = qword_28040A0C0;
  if (!qword_28040A0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A0C8, &qword_26B6F1E48);
    sub_26B683D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A0C0);
  }

  return result;
}

unint64_t sub_26B683D30()
{
  result = qword_28040A0D0;
  if (!qword_28040A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A0D0);
  }

  return result;
}

unint64_t sub_26B683D84()
{
  result = qword_28040A0E0;
  if (!qword_28040A0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A0D8, &qword_26B6F1E50);
    sub_26B683E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A0E0);
  }

  return result;
}

unint64_t sub_26B683E08()
{
  result = qword_28040A0E8;
  if (!qword_28040A0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A0F0, &qword_26B6F1E58);
    sub_26B683E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A0E8);
  }

  return result;
}

unint64_t sub_26B683E8C()
{
  result = qword_28040A0F8;
  if (!qword_28040A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A0F8);
  }

  return result;
}

void SportingEventViewContext.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A100, &qword_26B6F1E60);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_26B683994();
  sub_26B6EA784();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);

    sub_26B648448(1);
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v8 = sub_26B68067C(0);
    v27 = v9;
    OUTLINED_FUNCTION_11_7();
    v13 = sub_26B67FB6C(1, v10, v11, v12);
    v26 = v8;
    OUTLINED_FUNCTION_11_7();
    v17 = sub_26B67FB6C(2, v14, v15, v16);
    OUTLINED_FUNCTION_15_3();
    if (sub_26B6EA484())
    {
      OUTLINED_FUNCTION_15_3();
      sub_26B6EA3C4();
      v25 = v4;
      sub_26B642140(v29, v28);
      sub_26B6809B4(v28, v30);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v18 = v30[0];
    }

    else
    {
      v25 = v4;
      v18 = 1;
    }

    sub_26B648448(1);
    OUTLINED_FUNCTION_15_3();
    if (sub_26B6EA484())
    {
      OUTLINED_FUNCTION_15_3();
      sub_26B6EA3C4();
      sub_26B642140(v29, v28);
      sub_26B6807E0(v28, v30);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v21 = OUTLINED_FUNCTION_6_7();
      v22(v21);
      v23 = v30[0];
      v24 = v30[1];
    }

    else
    {
      v19 = OUTLINED_FUNCTION_6_7();
      v20(v19);
      v23 = 0;
      v24 = 1;
    }

    sub_26B648458(0, 1);
    *v25 = v26;
    v25[1] = v27;
    v25[2] = v13;
    v25[3] = v17;
    v25[4] = v18;
    v25[5] = v23;
    v25[6] = v24;

    sub_26B64832C(v18);
    sub_26B64833C(v23, v24);
    __swift_destroy_boxed_opaque_existential_1(v2);

    sub_26B648448(v18);
    v6 = v23;
    v7 = v24;
  }

  sub_26B648458(v6, v7);
  OUTLINED_FUNCTION_37();
}

Swift::String_optional __swiftcall SportingEventViewContext.localizedStatistic(forKey:locale:)(Swift::String forKey, Swift::String locale)
{
  v3 = *(v2 + 32);
  if (v3 >= 2 && *(v3 + 16))
  {
    object = locale._object;
    countAndFlagsBits = locale._countAndFlagsBits;
    sub_26B64832C(*(v2 + 32));
    OUTLINED_FUNCTION_46_1();
    v6 = sub_26B675324();
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * v6);

      sub_26B648448(v3);
      v9 = (v8 + 56);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = *(v9 - 1);
        v12 = *v9;
        if (*(v9 - 3) != countAndFlagsBits || *(v9 - 2) != object)
        {
          v9 += 4;
          if ((sub_26B6EA5D4() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      sub_26B648448(v3);
    }
  }

  v11 = 0;
  v12 = 0;
LABEL_15:
  v14 = v11;
  v15 = v12;
  result.value._object = v15;
  result.value._countAndFlagsBits = v14;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9SportsKit24SportingEventViewContextV16LocalizedStringsVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t get_enum_tag_for_layout_string_9SportsKit24SportingEventViewContextV15LocalizedTitlesVSg(uint64_t a1)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26B684434(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_26B684488(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26B68450C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_26B684560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

_BYTE *storeEnumTagSinglePayload for SportingEventViewContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_26B6846A8(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SportingEventViewContext.LocalizedStrings.LocalizedName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B684834()
{
  result = qword_28040A108;
  if (!qword_28040A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A108);
  }

  return result;
}

unint64_t sub_26B68488C()
{
  result = qword_28040A110;
  if (!qword_28040A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A110);
  }

  return result;
}

unint64_t sub_26B6848E4()
{
  result = qword_28040A118;
  if (!qword_28040A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A118);
  }

  return result;
}

unint64_t sub_26B68493C()
{
  result = qword_28040A120;
  if (!qword_28040A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A120);
  }

  return result;
}

unint64_t sub_26B684994()
{
  result = qword_28040A128;
  if (!qword_28040A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A128);
  }

  return result;
}

unint64_t sub_26B6849EC()
{
  result = qword_28040A130;
  if (!qword_28040A130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A130);
  }

  return result;
}

unint64_t sub_26B684A44()
{
  result = qword_28040A138;
  if (!qword_28040A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A138);
  }

  return result;
}

unint64_t sub_26B684A9C()
{
  result = qword_28040A140;
  if (!qword_28040A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A140);
  }

  return result;
}

unint64_t sub_26B684AF4()
{
  result = qword_28040A148;
  if (!qword_28040A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A148);
  }

  return result;
}

unint64_t sub_26B684B4C()
{
  result = qword_28040A150;
  if (!qword_28040A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A150);
  }

  return result;
}

unint64_t sub_26B684BA4()
{
  result = qword_28040A158;
  if (!qword_28040A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A158);
  }

  return result;
}

unint64_t sub_26B684BFC()
{
  result = qword_28040A160;
  if (!qword_28040A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A160);
  }

  return result;
}

uint64_t sub_26B684C50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409280, &qword_26B6ECC28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26B684CB8()
{
  result = qword_28040A178;
  if (!qword_28040A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A178);
  }

  return result;
}

unint64_t sub_26B684D0C()
{
  result = qword_28040A198;
  if (!qword_28040A198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A190, &qword_26B6F2558);
    sub_26B684D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A198);
  }

  return result;
}

unint64_t sub_26B684D90()
{
  result = qword_28040A1A0;
  if (!qword_28040A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A1A0);
  }

  return result;
}

unint64_t sub_26B684DE4()
{
  result = qword_2810CDC88;
  if (!qword_2810CDC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A1A8, &unk_26B6F2560);
    sub_26B6857F8(&qword_2810CE130, type metadata accessor for SportingEventParticipant, &protocol conformance descriptor for SportingEventParticipant);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC88);
  }

  return result;
}

unint64_t sub_26B684E98()
{
  result = qword_28040A1B8;
  if (!qword_28040A1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A1B0, &qword_26B6F3A50);
    sub_26B6857F8(&qword_28040A1C0, type metadata accessor for SportingEventPlayDescriptor, &protocol conformance descriptor for SportingEventPlayDescriptor);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A1B8);
  }

  return result;
}

unint64_t sub_26B684F4C()
{
  result = qword_2810CE000;
  if (!qword_2810CE000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE000);
  }

  return result;
}

unint64_t sub_26B684FA0()
{
  result = qword_2810CDD70;
  if (!qword_2810CDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD70);
  }

  return result;
}

unint64_t sub_26B684FF4()
{
  result = qword_2810CE048;
  if (!qword_2810CE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE048);
  }

  return result;
}

unint64_t sub_26B685048()
{
  result = qword_2810CDC98;
  if (!qword_2810CDC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A1E8, &qword_26B6F2590);
    sub_26B6857F8(&qword_2810CE198, type metadata accessor for SportingEventClockTime, &protocol conformance descriptor for SportingEventClockTime);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC98);
  }

  return result;
}

unint64_t sub_26B6850FC()
{
  result = qword_2810CDC68;
  if (!qword_2810CDC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A1F8, &qword_26B6F25A0);
    sub_26B6857F8(&qword_2810CDE78, type metadata accessor for SportingEventClockTimeContainer, &protocol conformance descriptor for SportingEventClockTimeContainer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC68);
  }

  return result;
}

unint64_t sub_26B6851B0()
{
  result = qword_28040A210;
  if (!qword_28040A210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A208, &unk_26B6F25B0);
    sub_26B6857F8(&qword_28040A218, type metadata accessor for SportingEventImage, &protocol conformance descriptor for SportingEventImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A210);
  }

  return result;
}

unint64_t sub_26B685264()
{
  result = qword_28040A228;
  if (!qword_28040A228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A220, &unk_26B6F38E0);
    sub_26B6857F8(&qword_28040A230, type metadata accessor for SportingEventParticipantStatistic, &protocol conformance descriptor for SportingEventParticipantStatistic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A228);
  }

  return result;
}

unint64_t sub_26B685318()
{
  result = qword_28040A240;
  if (!qword_28040A240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A238, &qword_26B6F25C0);
    sub_26B6857F8(&qword_28040A248, type metadata accessor for SportingEventParticipantMetadata, &protocol conformance descriptor for SportingEventParticipantMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A240);
  }

  return result;
}

unint64_t sub_26B6853CC()
{
  result = qword_28040A250;
  if (!qword_28040A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A250);
  }

  return result;
}

unint64_t sub_26B685420()
{
  result = qword_2810CDC00;
  if (!qword_2810CDC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A260, &qword_26B6F25D0);
    sub_26B6857F8(&qword_2810CDD88, type metadata accessor for SportingEventLocalizedDisplayName, &protocol conformance descriptor for SportingEventLocalizedDisplayName);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC00);
  }

  return result;
}

unint64_t sub_26B6854D4()
{
  result = qword_2810CDC28;
  if (!qword_2810CDC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A268, &qword_26B6F25D8);
    sub_26B6857F8(&qword_2810CDDD8, type metadata accessor for SportingEventCompetitorStatistic, &protocol conformance descriptor for SportingEventCompetitorStatistic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC28);
  }

  return result;
}

unint64_t sub_26B685588()
{
  result = qword_2810CDCA8;
  if (!qword_2810CDCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A270, &qword_26B6F25E0);
    sub_26B6857F8(&qword_2810CE2B8, type metadata accessor for SportingEventMetadata, &protocol conformance descriptor for SportingEventMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDCA8);
  }

  return result;
}

unint64_t sub_26B68563C()
{
  result = qword_2810CDDA0;
  if (!qword_2810CDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDDA0);
  }

  return result;
}

unint64_t sub_26B685690()
{
  result = qword_2810CDC50;
  if (!qword_2810CDC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A288, &unk_26B6F3790);
    sub_26B6857F8(&qword_2810CDE50, type metadata accessor for SportingEventCoverageLastUpdate, &protocol conformance descriptor for SportingEventCoverageLastUpdate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC50);
  }

  return result;
}

unint64_t sub_26B685744()
{
  result = qword_2810CDBE8;
  if (!qword_2810CDBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A290, &qword_26B6F2600);
    sub_26B6857F8(&qword_2810CDD58, type metadata accessor for SportingEventCoverageIngestionUpdate, &protocol conformance descriptor for SportingEventCoverageIngestionUpdate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDBE8);
  }

  return result;
}

uint64_t sub_26B6857F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26B685840()
{
  result = qword_28040A2A8;
  if (!qword_28040A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A2A8);
  }

  return result;
}

unint64_t sub_26B685894()
{
  result = qword_28040A2B0;
  if (!qword_28040A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A2B0);
  }

  return result;
}

unint64_t sub_26B6858E8()
{
  result = qword_280409C00;
  if (!qword_280409C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409BE8, &qword_26B6F00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C00);
  }

  return result;
}

double OUTLINED_FUNCTION_2_9@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_26B642704(0xD000000000000027, (a1 - 32) | 0x8000000000000000, v8, va);
}

void *OUTLINED_FUNCTION_5_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_26B6EA3C4();
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26B6EA604();
}

uint64_t OUTLINED_FUNCTION_14_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26B67FB6C(a1, a2, a3, sub_26B68155C);
}

uint64_t OUTLINED_FUNCTION_16_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26B67FB6C(a1, a2, a3, sub_26B6815FC);
}

uint64_t OUTLINED_FUNCTION_28_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_26B642140(va, &a9);
}

uint64_t OUTLINED_FUNCTION_31_2(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  return sub_26B6429C0(va1, va);
}

uint64_t OUTLINED_FUNCTION_36_3()
{
  *v2 = v1;

  return __swift_destroy_boxed_opaque_existential_1(v0);
}

uint64_t OUTLINED_FUNCTION_37_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t SportsScoreboardStream.Demand.key.getter()
{
  v1 = 7105633;
  if (*(v0 + 8) == 1)
  {
    v1 = 0x73746E657665;
  }

  if (*(v0 + 8))
  {
    return v1;
  }

  else
  {
    return 0x7365756761656CLL;
  }
}

void *sub_26B685BE4()
{
  type metadata accessor for SportsScoreboardStream();
  swift_allocObject();
  result = sub_26B685C7C();
  qword_2810CD600 = result;
  return result;
}

uint64_t static SportsScoreboardStream.shared.getter()
{
  if (qword_2810CD5F8 != -1)
  {
    swift_once();
  }
}

void *sub_26B685C7C()
{
  swift_defaultActor_initialize();
  type metadata accessor for XPCConnectionProvider();
  v1 = swift_allocObject();
  type metadata accessor for GuaranteedProxy();
  swift_allocObject();
  *(v1 + 16) = sub_26B6DF660();
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2F8, &qword_26B6F2838);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  v0[15] = v2;
  v0[16] = 0;
  sub_26B6E9594();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409EF0, &unk_26B6F2840);
  sub_26B689F10(&qword_2810CD7A8, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v0[17] = sub_26B6E9944();
  return v0;
}

uint64_t sub_26B685D90()
{
  OUTLINED_FUNCTION_4_9();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2B8, &qword_26B6F2628);
  OUTLINED_FUNCTION_46(v5);
  v1[9] = OUTLINED_FUNCTION_35_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2C0, &qword_26B6F2630);
  v1[10] = v6;
  OUTLINED_FUNCTION_46(v6);
  v1[11] = OUTLINED_FUNCTION_35_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2C8, &qword_26B6F2638);
  v1[12] = v7;
  v1[13] = *(v7 - 8);
  v1[14] = OUTLINED_FUNCTION_35_3();
  v8 = sub_26B6E9594();
  v1[15] = v8;
  v9 = *(v8 - 8);
  v1[16] = v9;
  v1[17] = *(v9 + 64);
  v1[18] = OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](sub_26B685F0C, v0, 0);
}

uint64_t sub_26B685F0C()
{
  v23 = v0;
  v1 = *(v0[8] + 120);
  os_unfair_lock_lock((v1 + 24));
  sub_26B6863F0((v1 + 16), v22);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v21 = v0[14];
  v18 = v0[12];
  v19 = v0[13];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  sub_26B6E9584();
  v8 = *(v3 + 16);
  v8(v2, v7, v4);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = *(v6 + 136);
  sub_26B67DE78(v5, v2, isUniquelyReferenced_nonNull_native);
  *(v6 + 136) = v22[0];
  (*(v3 + 8))(v2, v4);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2D0, &qword_26B6F2640);
  v17 = swift_allocBox();
  sub_26B6D35AC();
  v8(v2, v7, v4);
  v20 = *(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v16 = *(v3 + 32);
  v16(v10 + ((v20 + 24) & ~v20), v2, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409208, &qword_26B6EC768);
  sub_26B689EC8(&qword_2810CC290, &qword_28040A2C0, &qword_26B6F2630, MEMORY[0x277D857C0]);
  sub_26B6EA2A4();
  MEMORY[0x26D67DC10](v18);
  sub_26B6E9DB4();
  sub_26B6EA274();
  (*(v19 + 8))(v21, v18);
  sub_26B6EA284();
  v8(v2, v7, v4);
  v11 = swift_allocObject();
  *(v11 + 16) = v17;
  *(v11 + 24) = v6;
  v16(v11 + ((v20 + 32) & ~v20), v2, v4);
  v8(v2, v7, v4);
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  v16(v12 + ((v20 + 24) & ~v20), v2, v4);
  swift_retain_n();

  sub_26B6E9D74();
  v13 = sub_26B688E80(v5);
  sub_26B687E90(v13);

  OUTLINED_FUNCTION_8_6();

  return v14();
}

uint64_t sub_26B6863F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_26B6E93B4();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1)
  {
    goto LABEL_2;
  }

  if (qword_2810CE9F8 != -1)
  {
    swift_once();
  }

  v9 = sub_26B6E95C4();
  __swift_project_value_buffer(v9, qword_2810D4320);
  v10 = sub_26B6E95A4();
  v11 = sub_26B6E9E64();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26B630000, v10, v11, "initializing scoreboard file monitor", v12, 2u);
    MEMORY[0x26D67E950](v12, -1, -1);
  }

  v13 = [objc_opt_self() defaultManager];
  NSFileManager.currentContainerURL.getter(v7);

  type metadata accessor for ScoreboardsUpdateMonitor(0);
  swift_allocObject();
  result = sub_26B6D36E8(v7);
  if (!v2)
  {
    *a1 = result;
LABEL_2:
    *a2 = result;
  }

  return result;
}

uint64_t sub_26B6865A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a3;
  v5 = *a2;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_26B6865D0, 0, 0);
}

uint64_t sub_26B6865D0()
{
  OUTLINED_FUNCTION_18_6();
  if (qword_2810CE9F8 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_2810CE9F8);
  }

  v1 = sub_26B6E95C4();
  v2 = __swift_project_value_buffer(v1, qword_2810D4320);
  *(v0 + 48) = v2;

  v3 = sub_26B6E95A4();
  v4 = sub_26B6E9E64();
  if (OUTLINED_FUNCTION_25_3(v4))
  {
    v5 = OUTLINED_FUNCTION_41_0();
    *v5 = 134217984;
    *(v5 + 4) = sub_26B6B8B04();

    _os_log_impl(&dword_26B630000, v3, v2, "scoreboard stream received %ld updates", v5, 0xCu);
    OUTLINED_FUNCTION_3_4();
  }

  else
  {
  }

  v6 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_26B6866FC, v6, 0);
}

uint64_t sub_26B6866FC()
{
  OUTLINED_FUNCTION_4_9();
  *(v0 + 56) = sub_26B687E08();
  OUTLINED_FUNCTION_14_6();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

char *sub_26B686760()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = MEMORY[0x277D84F90];
  if (v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = sub_26B689188(v4);
  v7 = v6;

  v33 = v3;
  result = sub_26B6542CC();
  v9 = result;
  v10 = 0;
  v11 = v2 & 0xC000000000000001;
  v12 = v2 & 0xFFFFFFFFFFFFFF8;
  v31 = result;
  v32 = v2 + 32;
  v30 = v2 & 0xFFFFFFFFFFFFFF8;
  while (v10 != v9)
  {
    if (v11)
    {
      result = MEMORY[0x26D67DB30](v10, *(v29 + 40));
    }

    else
    {
      if (v10 >= *(v12 + 16))
      {
        goto LABEL_30;
      }

      result = *(v32 + 8 * v10);
    }

    v13 = result;
    if (__OFADD__(v10++, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    if ((v5 & 1) != 0 || !*(v7 + 16))
    {
LABEL_20:
      sub_26B6EA1F4();
      sub_26B6EA224();
      sub_26B6EA234();
      result = sub_26B6EA204();
    }

    else
    {
      v15 = v11;
      v16 = v5;
      v18 = *&result[OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId];
      v17 = *&result[OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId + 8];
      sub_26B6EA714();

      sub_26B6E9AE4();
      v19 = sub_26B6EA744();
      v20 = ~(-1 << *(v7 + 32));
      while (1)
      {
        v21 = v19 & v20;
        if (((*(v7 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          break;
        }

        v22 = (*(v7 + 48) + 16 * v21);
        if (*v22 != v18 || v22[1] != v17)
        {
          v24 = sub_26B6EA5D4();
          v19 = v21 + 1;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

        v5 = v16;
        v11 = v15;
        v12 = v30;
        v9 = v31;
        goto LABEL_20;
      }

      v5 = v16;
      v11 = v15;
      v12 = v30;
      v9 = v31;
    }
  }

  v25 = sub_26B6E95A4();
  v26 = sub_26B6E9E64();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_41_0();
    *v27 = 134217984;
    *(v27 + 4) = sub_26B6B8B04();

    _os_log_impl(&dword_26B630000, v25, v26, "scoreboard stream publishing %ld filtered events", v27, 0xCu);
    OUTLINED_FUNCTION_3_4();
  }

  else
  {
  }

  **(v29 + 16) = v33;
  OUTLINED_FUNCTION_16_5();

  return v28();
}

uint64_t sub_26B686A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  v4[8] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_26B686AC0, 0, 0);
}

uint64_t sub_26B686AC0()
{
  OUTLINED_FUNCTION_4_9();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_26B686B74;

  return sub_26B686E24();
}

uint64_t sub_26B686B74()
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 80) = v5;

  if (!v0)
  {
    swift_endAccess();
  }

  OUTLINED_FUNCTION_14_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26B686C80(uint64_t a1)
{
  if (*(v1 + 80))
  {
    return OUTLINED_FUNCTION_11_8(a1, *(v1 + 48));
  }

  **(v1 + 40) = MEMORY[0x277D84F90];
  return OUTLINED_FUNCTION_7_8();
}

uint64_t sub_26B686CB0()
{
  OUTLINED_FUNCTION_4_9();
  *(v0 + 88) = sub_26B687E08();
  OUTLINED_FUNCTION_14_6();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26B686D14()
{
  OUTLINED_FUNCTION_4_9();
  v1 = v0[6];
  if (v0[11])
  {
    v2 = v0[11];
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v0[12] = sub_26B688E80(v2);

  return MEMORY[0x2822009F8](sub_26B686D9C, v1, 0);
}

uint64_t sub_26B686D9C()
{
  OUTLINED_FUNCTION_4_9();
  sub_26B687E90(*(v0 + 96));

  OUTLINED_FUNCTION_14_6();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26B686E44()
{
  OUTLINED_FUNCTION_18_6();
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2D0, &qword_26B6F2640);
  v0[11] = sub_26B6EA264();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2B8, &qword_26B6F2628);
  v2 = sub_26B689EC8(&qword_2810CC298, &qword_28040A2B8, &qword_26B6F2628, MEMORY[0x277D857B0]);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_26B686F64;

  return MEMORY[0x282200308](v0 + 7, v1, v2);
}

uint64_t sub_26B686F64()
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_11();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
    (*(v3 + 88))();
  }

  OUTLINED_FUNCTION_14_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B687078()
{
  OUTLINED_FUNCTION_18_6();
  v1 = v0[7];
  v0[14] = v1;
  if (v1)
  {
    v0[6] = v1;
    v2 = sub_26B6EA274();
    v0[15] = v3;
    v7 = (v2 + *v2);
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_26B687238;

    return (v7)(v0 + 8, v0 + 6);
  }

  else
  {
    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_26B6871CC()
{
  OUTLINED_FUNCTION_4_9();
  (*(v0 + 88))();
  OUTLINED_FUNCTION_16_5();

  return v1();
}

uint64_t sub_26B687238()
{
  OUTLINED_FUNCTION_13_7();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_11();
  *v3 = v2;
  *v3 = *v0;

  *(v2 + 136) = *(v1 + 64);
  OUTLINED_FUNCTION_14_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26B6873A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B6E9594();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2E0, &qword_26B6F27E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  if (qword_2810CE9F8 != -1)
  {
    swift_once();
  }

  v10 = sub_26B6E95C4();
  __swift_project_value_buffer(v10, qword_2810D4320);
  v11 = sub_26B6E95A4();
  v12 = sub_26B6E9E64();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26B630000, v11, v12, "scoreboard stream terminated", v13, 2u);
    MEMORY[0x26D67E950](v13, -1, -1);
  }

  v14 = sub_26B6E9D44();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  (*(v5 + 16))(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a1;
  (*(v5 + 32))(&v16[v15], &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_26B687690(0, 0, v9, &unk_26B6F2828, v16);
}

uint64_t sub_26B687618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_26B687638, a4, 0);
}

uint64_t sub_26B687638()
{
  OUTLINED_FUNCTION_4_9();
  sub_26B687B6C(*(v0 + 24));
  OUTLINED_FUNCTION_16_5();

  return v1();
}

uint64_t sub_26B687690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2E0, &qword_26B6F27E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_26B689C6C(a3, v24 - v10);
  v12 = sub_26B6E9D44();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_26B689CDC(v11);
  }

  else
  {
    sub_26B6E9D34();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26B6E9D14();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_26B6E9AA4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_26B689CDC(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26B689CDC(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_26B687934(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_26B6E9594();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_5();
  if (qword_2810CE9F8 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_2810CE9F8);
  }

  v11 = sub_26B6E95C4();
  __swift_project_value_buffer(v11, qword_2810D4320);
  (*(v9 + 16))(v3, a2, v7);
  v12 = sub_26B6E95A4();
  v13 = sub_26B6E9E64();
  if (os_log_type_enabled(v12, v13))
  {
    v29 = a2;
    v14 = OUTLINED_FUNCTION_41_0();
    v15 = OUTLINED_FUNCTION_39_2();
    v32[0] = v15;
    *v14 = 136315138;
    v16 = sub_26B6E9574();
    v30 = a1;
    v18 = v17;
    v19 = OUTLINED_FUNCTION_10_7();
    v20(v19);
    v21 = sub_26B6D22D8(v16, v18, v32);
    a1 = v30;

    *(v14 + 4) = v21;
    OUTLINED_FUNCTION_30_3(&dword_26B630000, v22, v23, "updating demand for stream with identifier:%s");
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_3_4();
    a2 = v29;
    OUTLINED_FUNCTION_3_4();
  }

  else
  {

    v24 = OUTLINED_FUNCTION_10_7();
    v25(v24);
  }

  OUTLINED_FUNCTION_29_3();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v4 + 136);
  sub_26B67DE78(a1, a2, isUniquelyReferenced_nonNull_native);
  *(v4 + 136) = v31;
  swift_endAccess();
  v27 = sub_26B688E80(a1);
  sub_26B687E90(v27);
}

void sub_26B687B6C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_26B6E9594();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_5();
  if (qword_2810CE9F8 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_2810CE9F8);
  }

  v9 = sub_26B6E95C4();
  __swift_project_value_buffer(v9, qword_2810D4320);
  (*(v7 + 16))(v2, a1, v5);
  v10 = sub_26B6E95A4();
  v11 = sub_26B6E9E64();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_41_0();
    v13 = OUTLINED_FUNCTION_39_2();
    v34[0] = v13;
    *v12 = 136315138;
    v14 = sub_26B6E9574();
    v33 = v3;
    v15 = a1;
    v17 = v16;
    v18 = OUTLINED_FUNCTION_10_7();
    v19(v18);
    v20 = sub_26B6D22D8(v14, v17, v34);
    a1 = v15;
    v3 = v33;

    *(v12 + 4) = v20;
    OUTLINED_FUNCTION_30_3(&dword_26B630000, v21, v22, "removing stream with identifier:%s");
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_3_4();
  }

  else
  {

    v23 = OUTLINED_FUNCTION_10_7();
    v24(v23);
  }

  OUTLINED_FUNCTION_29_3();
  sub_26B676204(a1, v25, v26, v27, v28);
  swift_endAccess();

  if (!*(*(v3 + 136) + 16))
  {
    v29 = sub_26B6E95A4();
    v30 = sub_26B6E9E64();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26B630000, v29, v30, "no remaining scoreboard streams are active. Tearing down scoreboard file monitor", v31, 2u);
      OUTLINED_FUNCTION_3_4();
    }

    v32 = *(v3 + 120);
    os_unfair_lock_lock((v32 + 24));

    *(v32 + 16) = 0;
    os_unfair_lock_unlock((v32 + 24));
  }
}

uint64_t sub_26B687E08()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_26B67552C();
  if (v3)
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_26B687E90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2E0, &qword_26B6F27E0);
  v4 = OUTLINED_FUNCTION_46(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  if (*(v1 + 128))
  {

    sub_26B6E9D94();
  }

  v7 = sub_26B6E9D44();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v9 = sub_26B689F10(&unk_2810CD5E8, v8, type metadata accessor for SportsScoreboardStream, &protocol conformance descriptor for SportsScoreboardStream);
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = v9;
  v10[4] = v1;
  v10[5] = a1;
  swift_retain_n();

  *(v1 + 128) = sub_26B687690(0, 0, v6, &unk_26B6F27F0, v10);
}

uint64_t sub_26B688004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_26B688024, a4, 0);
}

uint64_t sub_26B688024()
{
  OUTLINED_FUNCTION_18_6();
  if (qword_2810CE9F8 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_2810CE9F8);
  }

  v1 = sub_26B6E95C4();
  __swift_project_value_buffer(v1, qword_2810D4320);
  v2 = sub_26B6E95A4();
  v3 = sub_26B6E9E64();
  if (OUTLINED_FUNCTION_25_3(v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_32_3(&dword_26B630000, v4, v5, "debouncing new demand signal for 1 second...");
    OUTLINED_FUNCTION_3_4();
  }

  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_26B688140;

  return MEMORY[0x282200480](1000000000);
}

uint64_t sub_26B688140()
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_11();
  *v6 = v5;
  v3[5] = v0;

  if (v0)
  {
    v7 = v3[2];

    return MEMORY[0x2822009F8](sub_26B68837C, v7, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[6] = v8;
    *v8 = v5;
    v8[1] = sub_26B68829C;
    v9 = v3[3];

    return sub_26B688450(v9);
  }
}

uint64_t sub_26B68829C()
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_11();
  *v2 = v1;

  OUTLINED_FUNCTION_16_5();

  return v3();
}

uint64_t sub_26B68837C()
{
  OUTLINED_FUNCTION_4_9();
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2E8, &qword_26B6F2810);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D837D0];
  *(v2 + 16) = xmmword_26B6EBA50;
  *(v2 + 56) = v3;
  strcpy((v2 + 32), "debounced...");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  sub_26B6EA704();

  OUTLINED_FUNCTION_16_5();

  return v4();
}

uint64_t sub_26B688450(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return OUTLINED_FUNCTION_11_8(a1, v1);
}

uint64_t sub_26B688468()
{
  OUTLINED_FUNCTION_13_7();
  if (qword_2810CE9F8 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_2810CE9F8);
  }

  v1 = sub_26B6E95C4();
  v0[8] = v1;
  __swift_project_value_buffer(v1, qword_2810D4320);
  v2 = sub_26B6E95A4();
  v3 = sub_26B6E9E64();
  if (OUTLINED_FUNCTION_25_3(v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_32_3(&dword_26B630000, v4, v5, "passing demand to sportsd");
    OUTLINED_FUNCTION_3_4();
  }

  v6 = v0[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E10, &qword_26B6F1460);
  swift_allocObject();

  v8 = sub_26B675164(v7);
  v9 = *(v8 + qword_2810D4248);
  v0[9] = *(v8 + qword_2810D4248 + 8);

  v10 = swift_allocObject();
  v0[10] = v10;
  *(v10 + 16) = v6;

  v13 = (v9 + *v9);
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_26B688684;

  return v13(&unk_26B6F27C0, v10);
}

uint64_t sub_26B688684()
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_11();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    v7 = *(v3 + 56);

    return MEMORY[0x2822009F8](sub_26B6887B0, v7, 0);
  }

  else
  {

    OUTLINED_FUNCTION_16_5();

    return v8();
  }
}

uint64_t sub_26B6887B0()
{
  v17 = v0;

  if (qword_2810CD798 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  __swift_project_value_buffer(*(v0 + 64), qword_2810D4250);
  v2 = v1;
  v3 = sub_26B6E95A4();
  v4 = sub_26B6E9E74();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 96);
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_41_0();
    v8 = OUTLINED_FUNCTION_39_2();
    v16 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_26B6EA6B4();
    v11 = sub_26B6D22D8(v9, v10, &v16);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_27_3(&dword_26B630000, v12, v13, "signaling demand over xpc encountered an error: %s");
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_3_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_16_5();

  return v14();
}

uint64_t sub_26B688948(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 176) = a2;
  *(v2 + 184) = v3;
  return MEMORY[0x2822009F8](sub_26B68896C, 0, 0);
}

uint64_t sub_26B68896C()
{
  OUTLINED_FUNCTION_13_7();
  v1 = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409248, &qword_26B6ECA18);
  v2 = sub_26B6E9914();
  v0[24] = v2;
  v0[2] = v0;
  v0[3] = sub_26B688AC0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2D8, &unk_26B6F27D0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26B688DA0;
  v0[13] = &block_descriptor_4;
  v0[14] = v3;
  [v1 signalWithDemand:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26B688AC0()
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_6_8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  OUTLINED_FUNCTION_14_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26B688BC0()
{
  OUTLINED_FUNCTION_4_9();

  OUTLINED_FUNCTION_8_6();

  return v1();
}

uint64_t sub_26B688C18(uint64_t a1)
{
  v20 = v1;
  v2 = *(v1 + 192);
  swift_willThrow();

  if (qword_2810CE9F8 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_2810CE9F8);
  }

  v3 = *(v1 + 200);
  v4 = sub_26B6E95C4();
  __swift_project_value_buffer(v4, qword_2810D4320);
  v5 = v3;
  v6 = sub_26B6E95A4();
  v7 = sub_26B6E9E74();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 200);
  if (v8)
  {
    v10 = OUTLINED_FUNCTION_41_0();
    v11 = OUTLINED_FUNCTION_39_2();
    v19 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_26B6EA6B4();
    v14 = sub_26B6D22D8(v12, v13, &v19);

    *(v10 + 4) = v14;
    OUTLINED_FUNCTION_27_3(&dword_26B630000, v15, v16, "signaling demand encountered an error: %s");
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_3_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_8_6();

  return v17();
}

uint64_t sub_26B688DA0(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_26B688E10(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_26B688E10(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409EE0, &qword_26B6F17B8);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_26B688E80(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = (a1 + 40);
  v5 = MEMORY[0x277D84F98];
  while (1)
  {
    v6 = *(v4 - 1);
    if (!*v4)
    {
      swift_bridgeObjectRetain_n();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_23_3();
      OUTLINED_FUNCTION_19_2();
      if (__OFADD__(v17, v18))
      {
        goto LABEL_37;
      }

      v19 = OUTLINED_FUNCTION_33_4();
      if (OUTLINED_FUNCTION_26_4(v19))
      {
        v20 = OUTLINED_FUNCTION_23_3();
        if ((v2 & 1) != (v21 & 1))
        {
          goto LABEL_41;
        }

        v1 = v20;
      }

      if ((v2 & 1) == 0)
      {
        OUTLINED_FUNCTION_9_6(v5 + 8 * (v1 >> 6));
        v31 = (v30 + 16 * v1);
        *v31 = 0x7365756761656CLL;
        OUTLINED_FUNCTION_28_4(v31);
        v32 = *(v5 + 16);
        v15 = __OFADD__(v32, 1);
        v16 = v32 + 1;
        if (v15)
        {
          goto LABEL_40;
        }

LABEL_30:
        *(v5 + 16) = v16;
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (*v4 == 1)
    {
      break;
    }

    LOBYTE(v2) = swift_isUniquelyReferenced_nonNull_native();
    sub_26B675324();
    OUTLINED_FUNCTION_19_2();
    if (__OFADD__(v25, v26))
    {
      goto LABEL_36;
    }

    v27 = v23;
    v1 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2F0, &qword_26B6F2818);
    if (sub_26B6EA2E4())
    {
      v28 = sub_26B675324();
      if ((v1 & 1) != (v29 & 1))
      {
        goto LABEL_41;
      }

      v27 = v28;
    }

    if ((v1 & 1) == 0)
    {
      OUTLINED_FUNCTION_9_6(v5 + 8 * (v27 >> 6));
      v34 = (v33 + 16 * v27);
      *v34 = 7105633;
      v34[1] = 0xE300000000000000;
      *(*(v5 + 56) + 8 * v27) = MEMORY[0x277D84FA0];
      v35 = *(v5 + 16);
      v15 = __OFADD__(v35, 1);
      v16 = v35 + 1;
      if (v15)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    *(*(v5 + 56) + 8 * v27) = MEMORY[0x277D84FA0];
LABEL_25:

LABEL_31:
    v4 += 16;
    if (!--v3)
    {
      return v5;
    }
  }

  swift_bridgeObjectRetain_n();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_19_2();
  if (!__OFADD__(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_33_4();
    if (OUTLINED_FUNCTION_26_4(v9))
    {
      v10 = OUTLINED_FUNCTION_31_3();
      if ((v2 & 1) != (v11 & 1))
      {
        goto LABEL_41;
      }

      v1 = v10;
    }

    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_9_6(v5 + 8 * (v1 >> 6));
      v13 = (v12 + 16 * v1);
      *v13 = 0x73746E657665;
      OUTLINED_FUNCTION_28_4(v13);
      v14 = *(v5 + 16);
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_39;
      }

      goto LABEL_30;
    }

LABEL_18:
    v22 = *(v5 + 56);
    v2 = *(v22 + 8 * v1);
    *(v22 + 8 * v1) = v6;

    goto LABEL_25;
  }

  __break(1u);
LABEL_36:
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
  result = sub_26B6EA674();
  __break(1u);
  return result;
}

uint64_t sub_26B689188(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = *(result + 16);
  v4 = result + 40;
  v5 = MEMORY[0x277D84FA0];
  v6 = MEMORY[0x277D84FA0];
LABEL_2:
  v7 = (v4 + 16 * v1);
  for (i = v1; ; ++i)
  {
    if (v3 == i)
    {
      return v2 & 1;
    }

    if (i >= v3)
    {
      break;
    }

    v1 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_13;
    }

    result = *(v7 - 1);
    if (*v7)
    {
      if (*v7 == 1)
      {

        result = sub_26B64D7FC(v10, v5);
        v5 = result;
      }

      else
      {
        v2 = 1;
      }

      goto LABEL_2;
    }

    result = sub_26B64D7FC(v9, v6);
    v6 = result;
    v7 += 16;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *SportsScoreboardStream.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SportsScoreboardStream.__deallocating_deinit()
{
  SportsScoreboardStream.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26B6892EC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26B6893E4;

  return v6(a1);
}

uint64_t sub_26B6893E4()
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_11();
  *v2 = v1;

  OUTLINED_FUNCTION_8_6();

  return v3();
}

uint64_t sub_26B6894C4()
{
  OUTLINED_FUNCTION_13_7();
  v2 = v1;
  v4 = v3;
  v5 = sub_26B6E9594();
  OUTLINED_FUNCTION_46(v5);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v0 + 16);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_11(v9);
  *v10 = v11;
  v10[1] = sub_26B689F58;

  return sub_26B6865A8(v4, v2, v8, v0 + v7);
}

uint64_t sub_26B6895A8()
{
  OUTLINED_FUNCTION_13_7();
  v1 = sub_26B6E9594();
  OUTLINED_FUNCTION_46(v1);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_11(v3);
  *v4 = v5;
  v4[1] = sub_26B689F58;
  v6 = OUTLINED_FUNCTION_5_7();

  return sub_26B686A4C(v6, v7, v2, v8);
}

uint64_t objectdestroyTm()
{
  sub_26B6E9594();
  OUTLINED_FUNCTION_4();

  v0 = OUTLINED_FUNCTION_20_3();
  v1(v0);
  v2 = OUTLINED_FUNCTION_21_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_26B689728()
{
  v1 = sub_26B6E9594();
  OUTLINED_FUNCTION_46(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_26B6873A0(v3, v4);
}

uint64_t dispatch thunk of SportsScoreboardStream.stream(demand:)()
{
  OUTLINED_FUNCTION_13_7();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v11 = (*(*v0 + 176) + **(*v0 + 176));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_11(v7);
  *v8 = v9;
  v8[1] = sub_26B6898F4;

  return v11(v6, v4, v2);
}

uint64_t sub_26B6898F4()
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_11();
  *v2 = v1;

  OUTLINED_FUNCTION_16_5();

  return v3();
}

uint64_t get_enum_tag_for_layout_string_9SportsKit0A16ScoreboardStreamC6DemandO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_26B689A24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26B689A74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26B689AC8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26B689AE0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_26B689B10()
{
  OUTLINED_FUNCTION_4_9();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26B689F58;

  return sub_26B688948(v3, v4);
}

uint64_t sub_26B689BC0()
{
  OUTLINED_FUNCTION_13_7();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_11(v4);
  *v5 = v6;
  v5[1] = sub_26B6898F4;
  v7 = OUTLINED_FUNCTION_5_7();

  return sub_26B688004(v7, v8, v1, v3, v2);
}

uint64_t sub_26B689C6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2E0, &qword_26B6F27E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B689CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2E0, &qword_26B6F27E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B689D44()
{
  OUTLINED_FUNCTION_18_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_11(v0);
  *v1 = v2;
  v1[1] = sub_26B689F58;
  v3 = OUTLINED_FUNCTION_5_7();

  return v4(v3);
}

uint64_t sub_26B689DE8()
{
  OUTLINED_FUNCTION_13_7();
  v1 = sub_26B6E9594();
  OUTLINED_FUNCTION_46(v1);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_11(v4);
  *v5 = v6;
  v5[1] = sub_26B689F58;
  v7 = OUTLINED_FUNCTION_5_7();

  return sub_26B687618(v7, v8, v2, v3, v9);
}

uint64_t sub_26B689EC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26B689F10(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_23_3()
{

  return sub_26B675324();
}

BOOL OUTLINED_FUNCTION_25_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_26_4(uint64_t a1)
{

  return sub_26B6EA2E4();
}

void OUTLINED_FUNCTION_27_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_28_4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = v1;
  *(*(v2 + 56) + 8 * v4) = v3;
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_30_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

unint64_t OUTLINED_FUNCTION_31_3()
{

  return sub_26B675324();
}

void OUTLINED_FUNCTION_32_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_33_4()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_35_3()
{

  return swift_task_alloc();
}

uint64_t sub_26B68A2A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804092A0, &qword_26B6F2850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B68A310(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804092A0, &qword_26B6F2850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26B68A378()
{
  result = qword_28040A310;
  if (!qword_28040A310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28040A310);
  }

  return result;
}

id SportingEventCompetitorStatistic.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_26B68A450(uint64_t a1)
{
  v2 = sub_26B68A634();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B68A48C(uint64_t a1)
{
  v2 = sub_26B68A634();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B68A4EC()
{
  OUTLINED_FUNCTION_24_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A318, &qword_26B6F2858);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_20_0();
  v3 = sub_26B68A634();
  OUTLINED_FUNCTION_49_0(&type metadata for SportingEventCompetitorStatistic.CodingKeys, v4, v3);
  OUTLINED_FUNCTION_25_4();
  if (!v0)
  {
    v14 = *(v1 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorStatistic_statisticType);
    OUTLINED_FUNCTION_36_4();
    type metadata accessor for SportingEventCompetitorStatisticType();
    OUTLINED_FUNCTION_5_8();
    v7 = sub_26B68B7BC(v5, v6, &protocol conformance descriptor for SportingEventCompetitorStatisticType);
    OUTLINED_FUNCTION_18_7(&v14, &v13, v8, v9, v7);
  }

  v10 = OUTLINED_FUNCTION_21_2();
  return v11(v10);
}

unint64_t sub_26B68A634()
{
  result = qword_28040A320;
  if (!qword_28040A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A320);
  }

  return result;
}

void SportingEventCompetitorStatistic.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A330, &qword_26B6F2860);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  v24 = sub_26B68A634();
  OUTLINED_FUNCTION_12_7(&type metadata for SportingEventCompetitorStatistic.CodingKeys, v25, v24);
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    v30 = type metadata accessor for SportingEventCompetitorStatistic();
    OUTLINED_FUNCTION_7_9(v30);
  }

  else
  {
    LOBYTE(a10) = 0;
    OUTLINED_FUNCTION_20_4();
    sub_26B6EA444();
    *&v22[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorStatistic_value] = v26;
    type metadata accessor for SportingEventCompetitorStatisticType();
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_5_8();
    v29 = sub_26B68B7BC(v27, v28, &protocol conformance descriptor for SportingEventCompetitorStatisticType);
    OUTLINED_FUNCTION_17_4(v29);
    *&v22[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorStatistic_statisticType] = a10;
    v33.receiver = v22;
    v33.super_class = type metadata accessor for SportingEventCompetitorStatistic();
    objc_msgSendSuper2(&v33, sel_init);
    v31 = OUTLINED_FUNCTION_10_8();
    v32(v31);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B68A874@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventCompetitorStatistic.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_26B68A940(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), void *a5)
{
  if (a3)
  {
    v8 = a1;
    swift_unknownObjectRetain();
    sub_26B6EA084();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v9 = a1;
  }

  v10 = sub_26B68B950(v12, a4, a5);

  sub_26B68A310(v12);
  return v10 & 1;
}

SportsKit::SportingEventCompetitorStatisticType::StatisticName_optional __swiftcall SportingEventCompetitorStatisticType.StatisticName.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  v2 = sub_26B6EA394();

  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void SportingEventCompetitorStatisticType.StatisticName.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
    case 3:
      OUTLINED_FUNCTION_11_4();
      break;
    default:
      return;
  }
}

void sub_26B68AB2C(void *a1@<X8>)
{
  SportingEventCompetitorStatisticType.StatisticName.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26B68AC50(uint64_t a1)
{
  v2 = sub_26B68ADDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B68AC8C(uint64_t a1)
{
  v2 = sub_26B68ADDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B68ACEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A348, &qword_26B6F2868);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_20_0();
  v1 = sub_26B68ADDC();
  OUTLINED_FUNCTION_49_0(&type metadata for SportingEventCompetitorStatisticType.CodingKeys, v2, v1);
  OUTLINED_FUNCTION_29_4();
  v3 = OUTLINED_FUNCTION_38_2();
  return v4(v3);
}

unint64_t sub_26B68ADDC()
{
  result = qword_28040A350;
  if (!qword_28040A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A350);
  }

  return result;
}

void SportingEventCompetitorStatisticType.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_4_10();
  SportingEventCompetitorStatisticType.init(from:)();
}

void SportingEventCompetitorStatisticType.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A358, &qword_26B6F2870);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  v4 = sub_26B68ADDC();
  OUTLINED_FUNCTION_31_4(&type metadata for SportingEventCompetitorStatisticType.CodingKeys, v5, v4);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    v7 = type metadata accessor for SportingEventCompetitorStatisticType();
    OUTLINED_FUNCTION_7_9(v7);
  }

  else
  {
    v6 = sub_26B6EA424();
    v8 = &v2[OBJC_IVAR____TtC9SportsKit36SportingEventCompetitorStatisticType_name];
    *v8 = v6;
    v8[1] = v9;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for SportingEventCompetitorStatisticType();
    objc_msgSendSuper2(&v12, sel_init);
    v10 = OUTLINED_FUNCTION_13_3();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_37();
}

void sub_26B68AFAC(uint64_t *a1@<X8>)
{
  SportingEventCompetitorStatisticType.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

id sub_26B68B084(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(void), double a5)
{
  *&v5[*a2] = a5;
  *&v5[*a3] = a1;
  v7.receiver = v5;
  v7.super_class = a4();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_26B68B0F0(uint64_t a1, uint64_t (*a2)(uint64_t), void *a3, uint64_t *a4)
{
  v8 = sub_26B68A2A0(a1, v14);
  if (!v15)
  {
    sub_26B68A310(v14);
    goto LABEL_7;
  }

  v9 = a2(v8);
  if ((OUTLINED_FUNCTION_19_3(v9) & 1) == 0)
  {
LABEL_7:
    v11 = 0;
    return v11 & 1;
  }

  if (*(v4 + *a3) != *&v13[*a3])
  {

    goto LABEL_7;
  }

  sub_26B68A378();
  v10 = *&v13[*a4];
  v11 = sub_26B6E9FA4();

  return v11 & 1;
}

uint64_t sub_26B68B1F4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), void *a5, uint64_t *a6)
{
  if (a3)
  {
    v10 = a1;
    swift_unknownObjectRetain();
    sub_26B6EA084();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v11 = a1;
  }

  v12 = sub_26B68B0F0(v14, a4, a5, a6);

  sub_26B68A310(v14);
  return v12 & 1;
}

uint64_t sub_26B68B2CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974736974617473 && a2 == 0xED00006570795463)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B68B398(uint64_t a1)
{
  v2 = sub_26B68B57C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B68B3D4(uint64_t a1)
{
  v2 = sub_26B68B57C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B68B434()
{
  OUTLINED_FUNCTION_24_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A370, &qword_26B6F2878);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_20_0();
  v3 = sub_26B68B57C();
  OUTLINED_FUNCTION_49_0(&type metadata for SportingEventParticipantStatistic.CodingKeys, v4, v3);
  OUTLINED_FUNCTION_25_4();
  if (!v0)
  {
    v14 = *(v1 + OBJC_IVAR____TtC9SportsKit33SportingEventParticipantStatistic_statisticType);
    OUTLINED_FUNCTION_36_4();
    type metadata accessor for SportingEventParticipantStatisticType();
    OUTLINED_FUNCTION_6_9();
    v7 = sub_26B68B7BC(v5, v6, &protocol conformance descriptor for SportingEventParticipantStatisticType);
    OUTLINED_FUNCTION_18_7(&v14, &v13, v8, v9, v7);
  }

  v10 = OUTLINED_FUNCTION_21_2();
  return v11(v10);
}

unint64_t sub_26B68B57C()
{
  result = qword_28040A378;
  if (!qword_28040A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A378);
  }

  return result;
}

void SportingEventParticipantStatistic.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A388, &qword_26B6F2880);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  v24 = sub_26B68B57C();
  OUTLINED_FUNCTION_12_7(&type metadata for SportingEventParticipantStatistic.CodingKeys, v25, v24);
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    v30 = type metadata accessor for SportingEventParticipantStatistic();
    OUTLINED_FUNCTION_7_9(v30);
  }

  else
  {
    LOBYTE(a10) = 0;
    OUTLINED_FUNCTION_20_4();
    sub_26B6EA444();
    *&v22[OBJC_IVAR____TtC9SportsKit33SportingEventParticipantStatistic_value] = v26;
    type metadata accessor for SportingEventParticipantStatisticType();
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_6_9();
    v29 = sub_26B68B7BC(v27, v28, &protocol conformance descriptor for SportingEventParticipantStatisticType);
    OUTLINED_FUNCTION_17_4(v29);
    *&v22[OBJC_IVAR____TtC9SportsKit33SportingEventParticipantStatistic_statisticType] = a10;
    v33.receiver = v22;
    v33.super_class = type metadata accessor for SportingEventParticipantStatistic();
    objc_msgSendSuper2(&v33, sel_init);
    v31 = OUTLINED_FUNCTION_10_8();
    v32(v31);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B68B7BC(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B68B800@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventParticipantStatistic.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id sub_26B68B88C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[*a3];
  *v8 = a1;
  *(v8 + 1) = a2;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_26B68B90C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v5 = &v4[*a3];
  *v5 = a1;
  *(v5 + 1) = a2;
  v7.receiver = v4;
  v7.super_class = a4();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_26B68B950(uint64_t a1, uint64_t (*a2)(uint64_t), void *a3)
{
  v6 = sub_26B68A2A0(a1, v14);
  if (!v15)
  {
    sub_26B68A310(v14);
    goto LABEL_9;
  }

  v7 = a2(v6);
  if ((OUTLINED_FUNCTION_19_3(v7) & 1) == 0)
  {
LABEL_9:
    v11 = 0;
    return v11 & 1;
  }

  v8 = (v3 + *a3);
  v9 = &v13[*a3];
  if (*v8 == *v9 && v8[1] == *(v9 + 1))
  {

    v11 = 1;
  }

  else
  {
    v11 = sub_26B6EA5D4();
  }

  return v11 & 1;
}

SportsKit::SportingEventParticipantStatisticType::StatisticName_optional __swiftcall SportingEventParticipantStatisticType.StatisticName.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  v2 = sub_26B6EA394();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void SportingEventParticipantStatisticType.StatisticName.rawValue.getter()
{
  switch(*v0)
  {
    case 3:
      OUTLINED_FUNCTION_11_4();
      break;
    default:
      return;
  }
}

void sub_26B68BB88(void *a1@<X8>)
{
  SportingEventParticipantStatisticType.StatisticName.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26B68BBE8(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B68BC60(uint64_t a1)
{
  v2 = sub_26B68BDEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B68BC9C(uint64_t a1)
{
  v2 = sub_26B68BDEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B68BCFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A3A0, &qword_26B6F2888);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_20_0();
  v1 = sub_26B68BDEC();
  OUTLINED_FUNCTION_49_0(&type metadata for SportingEventParticipantStatisticType.CodingKeys, v2, v1);
  OUTLINED_FUNCTION_29_4();
  v3 = OUTLINED_FUNCTION_38_2();
  return v4(v3);
}

unint64_t sub_26B68BDEC()
{
  result = qword_28040A3A8;
  if (!qword_28040A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A3A8);
  }

  return result;
}

void SportingEventParticipantStatisticType.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_4_10();
  SportingEventParticipantStatisticType.init(from:)();
}

void SportingEventParticipantStatisticType.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A3B0, &qword_26B6F2890);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  v4 = sub_26B68BDEC();
  OUTLINED_FUNCTION_31_4(&type metadata for SportingEventParticipantStatisticType.CodingKeys, v5, v4);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    v7 = type metadata accessor for SportingEventParticipantStatisticType();
    OUTLINED_FUNCTION_7_9(v7);
  }

  else
  {
    v6 = sub_26B6EA424();
    v8 = &v2[OBJC_IVAR____TtC9SportsKit37SportingEventParticipantStatisticType_name];
    *v8 = v6;
    v8[1] = v9;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for SportingEventParticipantStatisticType();
    objc_msgSendSuper2(&v12, sel_init);
    v10 = OUTLINED_FUNCTION_13_3();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_37();
}

void sub_26B68BFBC(uint64_t *a1@<X8>)
{
  SportingEventParticipantStatisticType.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

id SportingEventCompetitorScoreStatisticType.__allocating_init(name:isUpdated:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_allocWithZone(v3);
  return SportingEventCompetitorScoreStatisticType.init(name:isUpdated:)(a1, a2, v4);
}

id SportingEventCompetitorScoreStatisticType.init(name:isUpdated:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType__isUpdated;
  v3[OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType__isUpdated] = 2;
  v5 = &v3[OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType_name];
  *v5 = a1;
  v5[1] = a2;
  v3[v4] = a3;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for SportingEventCompetitorScoreStatisticType();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_26B68C124(uint64_t a1)
{
  sub_26B68A2A0(a1, v10);
  if (!v11)
  {
    sub_26B68A310(v10);
    goto LABEL_17;
  }

  v2 = type metadata accessor for SportingEventCompetitorScoreStatisticType();
  if ((OUTLINED_FUNCTION_19_3(v2) & 1) == 0)
  {
LABEL_17:
    v6 = 0;
    return v6 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType_name) == *&v9[OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType_name] && *(v1 + OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType_name + 8) == *&v9[OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType_name + 8];
  if (!v3 && (sub_26B6EA5D4() & 1) == 0)
  {

    goto LABEL_17;
  }

  v4 = *(v1 + OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType__isUpdated);
  v5 = v9[OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType__isUpdated];

  v6 = v5 == 2 && v4 == 2;
  if (v4 != 2 && v5 != 2)
  {
    v6 = v5 ^ v4 ^ 1;
  }

  return v6 & 1;
}

SportsKit::SportingEventCompetitorScoreStatisticType::StatisticName_optional __swiftcall SportingEventCompetitorScoreStatisticType.StatisticName.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  v2 = sub_26B6EA394();

  v4 = 9;
  if (v2 < 9)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t SportingEventCompetitorScoreStatisticType.StatisticName.rawValue.getter()
{
  result = 0x65726F6353;
  switch(*v0)
  {
    case 1:
      result = 1936618834;
      break;
    case 2:
      result = 1937008968;
      break;
    case 3:
      result = 0x73726F727245;
      break;
    case 4:
      result = 0x73656B69727453;
      break;
    case 5:
      result = 0x736C6C6142;
      break;
    case 6:
      result = 1937012047;
      break;
    case 7:
      result = 0x74756F746F6F6853;
      break;
    case 8:
      result = 0x736C616F47;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B68C3CC@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventCompetitorScoreStatisticType.StatisticName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B68C4DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574616470557369 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B68C5AC(char a1)
{
  if (a1)
  {
    return 0x6574616470557369;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_26B68C5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B68C4DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B68C610(uint64_t a1)
{
  v2 = sub_26B68C83C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B68C64C(uint64_t a1)
{
  v2 = sub_26B68C83C();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_26B68C6A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26B68C6E4()
{
  OUTLINED_FUNCTION_24_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A3C8, &qword_26B6F2898);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_20_0();
  v3 = sub_26B68C83C();
  OUTLINED_FUNCTION_49_0(&type metadata for SportingEventCompetitorScoreStatisticType.CodingKeys, v4, v3);
  v12[1] = 0;
  sub_26B6EA4F4();
  if (!v1)
  {
    v12[0] = *(v0 + OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType__isUpdated);
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A3D0, &qword_26B6F28A0);
    v5 = sub_26B68C890();
    OUTLINED_FUNCTION_18_7(v12, &v11, v6, v7, v5);
  }

  v8 = OUTLINED_FUNCTION_21_2();
  return v9(v8);
}

unint64_t sub_26B68C83C()
{
  result = qword_2810CDD30;
  if (!qword_2810CDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD30);
  }

  return result;
}

unint64_t sub_26B68C890()
{
  result = qword_2810CE508;
  if (!qword_2810CE508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A3D0, &qword_26B6F28A0);
    sub_26B68C914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE508);
  }

  return result;
}

unint64_t sub_26B68C914()
{
  result = qword_2810CDBD0;
  if (!qword_2810CDBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A3D8, &qword_26B6F37E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDBD0);
  }

  return result;
}

void SportingEventCompetitorScoreStatisticType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2A0, &qword_26B6F2610);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_26_1();
  v28 = OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType__isUpdated;
  v23[OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType__isUpdated] = 2;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v29 = sub_26B68C83C();
  OUTLINED_FUNCTION_12_7(&type metadata for SportingEventCompetitorScoreStatisticType.CodingKeys, v30, v29);
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
    type metadata accessor for SportingEventCompetitorScoreStatisticType();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_20_4();
    v31 = sub_26B6EA424();
    v32 = &v23[OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType_name];
    *v32 = v31;
    v32[1] = v33;
    OUTLINED_FUNCTION_20_4();
    v23[v28] = sub_26B67FA38(v34);
    v37.receiver = v23;
    v37.super_class = type metadata accessor for SportingEventCompetitorScoreStatisticType();
    objc_msgSendSuper2(&v37, sel_init);
    v35 = OUTLINED_FUNCTION_22_6();
    v36(v35);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  OUTLINED_FUNCTION_37();
}

unint64_t sub_26B68CB90()
{
  result = qword_28040A3E0;
  if (!qword_28040A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A3E0);
  }

  return result;
}

unint64_t sub_26B68CBE8()
{
  result = qword_28040A3E8;
  if (!qword_28040A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A3E8);
  }

  return result;
}

unint64_t sub_26B68CC40()
{
  result = qword_28040A3F0;
  if (!qword_28040A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A3F0);
  }

  return result;
}

uint64_t sub_26B68CC94@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventCompetitorScoreStatisticType.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportingEventCompetitorStatisticType.StatisticName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportingEventParticipantStatisticType.StatisticName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportingEventCompetitorScoreStatisticType.StatisticName(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_26B68D2C8(_BYTE *result, int a2, int a3)
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

_BYTE *sub_26B68D374(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B68D454()
{
  result = qword_28040A3F8;
  if (!qword_28040A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A3F8);
  }

  return result;
}

unint64_t sub_26B68D4AC()
{
  result = qword_28040A400;
  if (!qword_28040A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A400);
  }

  return result;
}

unint64_t sub_26B68D504()
{
  result = qword_28040A408;
  if (!qword_28040A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A408);
  }

  return result;
}

unint64_t sub_26B68D55C()
{
  result = qword_28040A410;
  if (!qword_28040A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A410);
  }

  return result;
}

unint64_t sub_26B68D5B4()
{
  result = qword_28040A418;
  if (!qword_28040A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A418);
  }

  return result;
}

unint64_t sub_26B68D60C()
{
  result = qword_2810CDD20;
  if (!qword_2810CDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD20);
  }

  return result;
}

unint64_t sub_26B68D664()
{
  result = qword_2810CDD28;
  if (!qword_2810CDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD28);
  }

  return result;
}

unint64_t sub_26B68D6BC()
{
  result = qword_28040A420;
  if (!qword_28040A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A420);
  }

  return result;
}

unint64_t sub_26B68D714()
{
  result = qword_28040A428;
  if (!qword_28040A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A428);
  }

  return result;
}

unint64_t sub_26B68D76C()
{
  result = qword_28040A430;
  if (!qword_28040A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A430);
  }

  return result;
}

unint64_t sub_26B68D7C4()
{
  result = qword_28040A438;
  if (!qword_28040A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A438);
  }

  return result;
}

unint64_t sub_26B68D81C()
{
  result = qword_28040A440;
  if (!qword_28040A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A440);
  }

  return result;
}

unint64_t sub_26B68D874()
{
  result = qword_28040A448;
  if (!qword_28040A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A448);
  }

  return result;
}

unint64_t sub_26B68D8CC()
{
  result = qword_28040A450;
  if (!qword_28040A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A450);
  }

  return result;
}

unint64_t sub_26B68D924()
{
  result = qword_28040A458;
  if (!qword_28040A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A458);
  }

  return result;
}

unint64_t sub_26B68D978()
{
  result = qword_28040A460;
  if (!qword_28040A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A460);
  }

  return result;
}

unint64_t sub_26B68D9CC()
{
  result = qword_28040A468;
  if (!qword_28040A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A468);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_9(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t OUTLINED_FUNCTION_12_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26B6EA784();
}

id OUTLINED_FUNCTION_14_7()
{

  return objc_allocWithZone(v0);
}

uint64_t OUTLINED_FUNCTION_17_4(uint64_t a1)
{

  return sub_26B6EA464();
}

uint64_t OUTLINED_FUNCTION_18_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26B6EA534();
}

uint64_t OUTLINED_FUNCTION_19_3(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_25_4()
{
  *(v2 - 65) = 0;

  return sub_26B6EA514();
}

uint64_t OUTLINED_FUNCTION_29_4()
{

  return sub_26B6EA4F4();
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26B6EA784();
}

uint64_t OUTLINED_FUNCTION_35_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _swift_stdlib_reportUnimplementedInitializer();
}

char *sub_26B68DC8C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_26B692974((result - 1), (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x26D67DB30](v3, a1);
  }

  result = sub_26B6EA324();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t PlaysStore.__allocating_init(storeUrl:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PlaysStore.init(storeUrl:)(a1);
  return v2;
}

uint64_t PlaysStore.init(storeUrl:)(uint64_t a1)
{
  v2 = v1;
  v15 = sub_26B6E9EA4();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v8 = v7 - v6;
  sub_26B6E9E84();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_6();
  v10 = sub_26B6E98D4();
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_5_0();
  v14 = OBJC_IVAR____TtC9SportsKit10PlaysStore_queue;
  sub_26B67826C(0, &qword_2810CDBA8, 0x277D85C78);
  sub_26B6E98C4();
  sub_26B693620(&qword_2810CDBB0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A470, &qword_26B6FA190);
  sub_26B689EC8(&qword_2810CDBD8, &qword_28040A470, &qword_26B6FA190, MEMORY[0x277D83970]);
  sub_26B6EA0B4();
  (*(v4 + 104))(v8, *MEMORY[0x277D85260], v15);
  *(v1 + v14) = sub_26B6E9EE4();
  *(v1 + OBJC_IVAR____TtC9SportsKit10PlaysStore_cancellables) = MEMORY[0x277D84FA0];
  v11 = OBJC_IVAR____TtC9SportsKit10PlaysStore_storeUrl;
  sub_26B6E93B4();
  OUTLINED_FUNCTION_16();
  (*(v12 + 32))(v2 + v11, a1);
  return v2;
}

void sub_26B68E00C()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v64 = *MEMORY[0x277D85DE8];
  v10 = sub_26B6E93B4();
  OUTLINED_FUNCTION_4();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_30_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  if (v9 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26B6EA324())
  {
    v59 = i;
    v60 = v9;
    *&v63 = v7;
    *(&v63 + 1) = v5;
    OUTLINED_FUNCTION_15_5();
    v61 = v21;
    v62 = v22;
    sub_26B641414();
    if (sub_26B6EA074())
    {
      if (qword_2810CE9F0 != -1)
      {
        goto LABEL_49;
      }

      goto LABEL_5;
    }

    v50 = v3;
    sub_26B6E9344();
    v52 = v19;
    OUTLINED_FUNCTION_4_11();
    sub_26B6E9354();
    v28 = *(v12 + 8);
    v12 += 8;
    v53 = v12;
    v54 = v10;
    v51 = v28;
    v28(v16, v10);
    sub_26B6E90D4();
    OUTLINED_FUNCTION_11_9();
    v9 = swift_allocObject();
    v29 = sub_26B6E90C4();
    v16 = 0;
    v30 = v60;
    v57 = v60 & 0xC000000000000001;
    v58 = v29;
    v56 = v60 & 0xFFFFFFFFFFFFFF8;
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v59 == v16)
      {
        *&v63 = v3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BE8, &qword_26B6F00D0);
        sub_26B689EC8(&qword_2810CC2A8, &qword_280409BE8, &qword_26B6F00D0, MEMORY[0x277D83958]);
        v43 = sub_26B6E9994();
        v45 = v44;

        MEMORY[0x28223BE20](v46);
        *(&v50 - 4) = v43;
        *(&v50 - 3) = v45;
        v47 = v52;
        *(&v50 - 2) = v52;
        sub_26B6E9EC4();
        if (v2)
        {

          v48 = v54;
          goto LABEL_37;
        }

        v49 = v47;
        v48 = v54;
LABEL_38:
        v51(v49, v48);
        goto LABEL_39;
      }

      if (v57)
      {
        v31 = MEMORY[0x26D67DB30](v16);
      }

      else
      {
        if (v16 >= *(v56 + 16))
        {
          goto LABEL_42;
        }

        v31 = *(v30 + 8 * v16 + 32);
      }

      v7 = v31;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      *&v63 = v31;
      type metadata accessor for SportingEventPlay();
      OUTLINED_FUNCTION_5_9();
      sub_26B693620(&qword_2810CE450, v32, &protocol conformance descriptor for SportingEventPlay);
      v9 = v58;
      v33 = sub_26B6E90B4();
      if (v2)
      {

        v48 = v54;
        v47 = v52;
LABEL_37:
        v49 = v47;
        goto LABEL_38;
      }

      v5 = v34;
      v12 = v33;
      switch(v34 >> 62)
      {
        case 1uLL:
          v55 = 0;
          v2 = v33 >> 32;
          if (v33 >> 32 < v33)
          {
            goto LABEL_43;
          }

          if (sub_26B6E91D4() && __OFSUB__(v12, sub_26B6E91F4()))
          {
            goto LABEL_48;
          }

          goto LABEL_27;
        case 2uLL:
          v55 = 0;
          v35 = *(v33 + 16);
          v2 = *(v33 + 24);
          v9 = v34 & 0x3FFFFFFFFFFFFFFFLL;
          v19 = sub_26B6E91D4();
          if (!v19)
          {
            goto LABEL_20;
          }

          v9 = v5 & 0x3FFFFFFFFFFFFFFFLL;
          v36 = sub_26B6E91F4();
          if (__OFSUB__(v35, v36))
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            OUTLINED_FUNCTION_0_10();
            swift_once();
LABEL_5:
            v23 = sub_26B6E95C4();
            __swift_project_value_buffer(v23, qword_2810D4308);
            v24 = sub_26B6E95A4();
            v25 = sub_26B6E9E74();
            if (os_log_type_enabled(v24, v25))
            {
              OUTLINED_FUNCTION_28_5();
              *swift_slowAlloc() = 0;
              OUTLINED_FUNCTION_34_3(&dword_26B630000, v26, v27, "canonicalId cannot contain parental traversal string patterns");
              OUTLINED_FUNCTION_14_8();
              MEMORY[0x26D67E950]();
            }

            goto LABEL_39;
          }

          v19 += v35 - v36;
LABEL_20:
          v37 = __OFSUB__(v2, v35);
          v10 = v2 - v35;
          if (v37)
          {
            goto LABEL_44;
          }

LABEL_27:
          sub_26B6E91E4();
          v9 = sub_26B6E9AC4();
          v19 = v39;

          sub_26B645A94(v12, v5);
          v2 = v55;
LABEL_28:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26B63A80C();
            v3 = v41;
          }

          v10 = *(v3 + 16);
          v5 = v10 + 1;
          if (v10 >= *(v3 + 24) >> 1)
          {
            sub_26B63A80C();
            v3 = v42;
          }

          *(v3 + 16) = v5;
          v40 = v3 + 16 * v10;
          *(v40 + 32) = v9;
          *(v40 + 40) = v19;
          ++v16;
          v30 = v60;
          break;
        case 3uLL:
          *(&v63 + 6) = 0;
          *&v63 = 0;
          goto LABEL_23;
        default:
          *&v63 = v33;
          WORD4(v63) = v34;
          BYTE10(v63) = BYTE2(v34);
          BYTE11(v63) = BYTE3(v34);
          BYTE12(v63) = BYTE4(v34);
          BYTE13(v63) = BYTE5(v34);
LABEL_23:
          v9 = sub_26B6E9AC4();
          v19 = v38;

          sub_26B645A94(v12, v5);
          goto LABEL_28;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

LABEL_39:
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B68E69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26B6E9A64();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = a1;
  v10[1] = a2;
  sub_26B6E9A54();
  sub_26B641414();
  sub_26B6EA064();
  return (*(v6 + 8))(v8, v5);
}

void sub_26B68E7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  v40[0] = v21;
  v40[1] = v22;
  v23 = sub_26B6E93B4();
  OUTLINED_FUNCTION_4();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_30_0();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v40 - v31;
  sub_26B6E90D4();
  OUTLINED_FUNCTION_11_9();
  swift_allocObject();
  sub_26B6E90C4();
  type metadata accessor for SportingEventPlay();
  OUTLINED_FUNCTION_5_9();
  sub_26B693620(v33, v34, &protocol conformance descriptor for SportingEventPlay);
  v35 = sub_26B6E90B4();
  v37 = v36;

  if (!v20)
  {
    sub_26B6E9344();
    OUTLINED_FUNCTION_4_11();
    sub_26B6E9354();
    v38 = *(v25 + 8);
    v39 = v38(v29, v23);
    MEMORY[0x28223BE20](v39);
    v40[-4] = v32;
    v40[-3] = v35;
    v40[-2] = v37;
    sub_26B6E9EC4();
    sub_26B645A94(v35, v37);
    v38(v32, v23);
  }

  OUTLINED_FUNCTION_37();
}

void sub_26B68E9C8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_26B6E9A64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B67826C(0, &qword_2810CC278, 0x277CCA9F8);
  v10 = sub_26B6E9384();
  v12 = sub_26B68ED04(v10, v11);
  if (!v12)
  {
    sub_26B6E9484();
    return;
  }

  v13 = v12;
  v30 = v7;
  v14 = sub_26B6ADC5C(a2, a3);
  if (v15)
  {
    goto LABEL_10;
  }

  v25 = a2;
  v26 = a3;
  sub_26B645A3C(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409308, &unk_26B6F3650);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_26B650BBC(v23, &qword_280409310, &qword_26B6ED010);
LABEL_9:
    v14 = sub_26B6AD08C(a2, a3);
LABEL_10:
    v17 = v14;
    v16 = v15;
    goto LABEL_11;
  }

  sub_26B645C80(v23, &v27);
  __swift_project_boxed_opaque_existential_1(&v27, v29);
  if ((sub_26B6EA374() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v27);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(&v27, v29);
  sub_26B6EA364();
  v16 = *(&v23[0] + 1);
  v17 = *&v23[0];
  __swift_destroy_boxed_opaque_existential_1(&v27);
LABEL_11:
  v27 = 10;
  v28 = 0xE100000000000000;
  MEMORY[0x26D67D4D0](v17, v16);

  sub_26B6E9E54();
  if (v3)
  {
  }

  else
  {
    sub_26B6E9A54();
    v18 = sub_26B6E9A34();
    v20 = v19;

    (*(v30 + 8))(v9, v6);
    if (v20 >> 60 == 15)
    {
      v21 = 0;
    }

    else
    {
      v21 = v18;
    }

    v22 = 0xC000000000000000;
    if (v20 >> 60 != 15)
    {
      v22 = v20;
    }

    v27 = v21;
    v28 = v22;
    sub_26B693BA8();
    sub_26B6E9E44();
    sub_26B645A94(v27, v28);
  }

  [v13 closeFile];
}

id sub_26B68ED04(uint64_t a1, uint64_t a2)
{
  v2 = sub_26B6E99F4();

  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingAtPath_];

  return v3;
}

uint64_t sub_26B68ED68(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11)
{
  v142 = a6;
  v136 = a5;
  LODWORD(v132) = a4;
  v128 = a3;
  v124 = sub_26B6E9104();
  OUTLINED_FUNCTION_4();
  v123 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  v122 = v18 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A478, &qword_26B6F3398);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_71();
  v125 = v20;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A480, &qword_26B6F33A0);
  OUTLINED_FUNCTION_4();
  v127 = v21;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_71();
  v126 = v23;
  OUTLINED_FUNCTION_109_0();
  v134 = sub_26B6E9A64();
  OUTLINED_FUNCTION_4();
  v121 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_30_0();
  v133 = (v26 - v27);
  OUTLINED_FUNCTION_29_5();
  MEMORY[0x28223BE20](v28);
  v131 = &v114 - v29;
  OUTLINED_FUNCTION_109_0();
  v137 = sub_26B6E93B4();
  OUTLINED_FUNCTION_4();
  v135 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_30_0();
  v130 = v32 - v33;
  OUTLINED_FUNCTION_29_5();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v114 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v114 - v38;
  OUTLINED_FUNCTION_20_5();
  v40 = swift_allocObject();
  v40[2] = a7;
  v40[3] = a8;
  v40[4] = a9;
  v40[5] = a10;
  v138 = v40;
  v40[6] = a11;
  v143 = a1;
  v144 = a2;
  OUTLINED_FUNCTION_15_5();
  v145 = v41;
  v146 = v42;
  v43 = sub_26B641414();
  v140 = a8;

  v139 = a9;

  v141 = a10;

  v44 = a11;
  if ((sub_26B6EA074() & 1) == 0)
  {
    v119 = v43;
    v50 = v142;
    sub_26B6E9344();
    OUTLINED_FUNCTION_4_11();
    sub_26B6E9354();
    v51 = v135;
    v52 = v135 + 8;
    v53 = *(v135 + 8);
    v54 = v137;
    v53(v37, v137);
    v55 = [objc_opt_self() defaultManager];
    sub_26B6E9384();
    v56 = sub_26B6E99F4();

    v57 = [v55 fileExistsAtPath_];

    if (v57)
    {
      v116 = v53;
      v117 = v52;
      v58 = MEMORY[0x277D84F90];
      sub_26B6E9054();
      OUTLINED_FUNCTION_11_9();
      swift_allocObject();
      v120 = sub_26B6E9044();
      v118 = v39;
      if (v132)
      {
        sub_26B6E9384();
        sub_26B6E9A54();
        v72 = sub_26B6E99E4();
        v74 = v73;
        v115 = v44;

        v143 = v72;
        v144 = v74;
        v75 = v122;
        sub_26B6E90F4();
        v44 = sub_26B6EA014();
        (*(v123 + 8))(v75, v124);

        v76 = *(v44 + 16);
        if (!v76)
        {
          v127 = 0;

          v81 = MEMORY[0x277D84F90];
LABEL_24:
          v143 = v58;
          v132 = sub_26B6542CC();
          v131 = (v81 & 0xC000000000000001);
          v130 = v81 & 0xFFFFFFFFFFFFFF8;
          v128 = v81;
          v129 = v81 + 32;
          v134 = v136 + 32;
          swift_bridgeObjectRetain_n();
          v44 = 0;
          while (1)
          {
            if (v44 == v132)
            {

              swift_bridgeObjectRelease_n();
              v44 = v115;
              sub_26B63DE50(v115, v143);

              OUTLINED_FUNCTION_7_10();
              v113();
              goto LABEL_10;
            }

            if (v131)
            {
              MEMORY[0x26D67DB30](v44, v128);
            }

            else
            {
              if (v44 >= *(v130 + 16))
              {
                goto LABEL_59;
              }

              v97 = *(v129 + 8 * v44);
            }

            if (__OFADD__(v44++, 1))
            {
              break;
            }

            OUTLINED_FUNCTION_13_8();
            if (v100)
            {
              v133 = v99;
              v101 = *&v99[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__levels];
              v102 = *(v136 + 16);
              v142 = v101 + 32;

              v103 = 0;
              v135 = v102;
LABEL_32:
              if (v103 == v102)
              {

                sub_26B6EA1F4();
                sub_26B6EA224();
                sub_26B6EA234();
                sub_26B6EA204();
              }

              else
              {
                v104 = *(v134 + v103++);
                v105 = *(v101 + 16);
                v106 = v142;
                while (v105)
                {
                  v107 = 0xE600000000000000;
                  v108 = 0x737472656C41;
                  switch(*v106)
                  {
                    case 1:
                      v107 = 0xE300000000000000;
                      v108 = 7105601;
                      break;
                    case 2:
                      v108 = OUTLINED_FUNCTION_12_8();
                      break;
                    case 3:
                      v108 = OUTLINED_FUNCTION_19_4();
                      break;
                    case 4:
                      v108 = OUTLINED_FUNCTION_18_8();
                      break;
                    default:
                      break;
                  }

                  v109 = 0xE600000000000000;
                  v110 = 0x737472656C41;
                  switch(v104)
                  {
                    case 1:
                      v109 = 0xE300000000000000;
                      v110 = 7105601;
                      break;
                    case 2:
                      OUTLINED_FUNCTION_16_7();
                      break;
                    case 3:
                      OUTLINED_FUNCTION_22_7();
                      break;
                    case 4:
                      OUTLINED_FUNCTION_23_5();
                      break;
                    default:
                      break;
                  }

                  if (v108 == v110 && v107 == v109)
                  {

LABEL_52:
                    v102 = v135;
                    goto LABEL_32;
                  }

                  v112 = sub_26B6EA5D4();

                  ++v106;
                  --v105;
                  if (v112)
                  {
                    goto LABEL_52;
                  }
                }
              }
            }

            else
            {
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v143 = v58;
        sub_26B6EA214();
        v142 = type metadata accessor for SportingEventPlay();
        v77 = 0;
        v78 = (v121 + 8);
        v79 = v44 + 40;
        while (v77 < *(v44 + 16))
        {

          v80 = v133;
          sub_26B6E9A54();
          sub_26B6E9A34();
          (*v78)(v80, v134);
          sub_26B693620(&qword_2810CE448, type metadata accessor for SportingEventPlay, &protocol conformance descriptor for SportingEventPlay);
          sub_26B6E9024();
          ++v77;
          OUTLINED_FUNCTION_35_5();

          sub_26B6EA1F4();
          v53 = v143[2];
          sub_26B6EA224();
          sub_26B6EA234();
          sub_26B6EA204();
          v79 += 16;
          if (v76 == v77)
          {
            v127 = 0;

            v81 = v143;
            v58 = MEMORY[0x277D84F90];
            goto LABEL_24;
          }
        }

        __break(1u);
        OUTLINED_FUNCTION_0_10();
        swift_once();
        v61 = sub_26B6E95C4();
        __swift_project_value_buffer(v61, qword_2810D4308);
        v62 = v53;
        v63 = sub_26B6E95A4();
        v64 = sub_26B6E9E74();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = v44;
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v143 = v67;
          *v66 = 136315138;
          swift_getErrorValue();
          v68 = sub_26B6EA6B4();
          v70 = sub_26B6D22D8(v68, v69, &v143);

          *(v66 + 4) = v70;
          _os_log_impl(&dword_26B630000, v63, v64, "SportsManager.updatePlaysPublishersWithLatestState error - %s", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v67);
          OUTLINED_FUNCTION_14_8();
          MEMORY[0x26D67E950]();
          v44 = v65;
          OUTLINED_FUNCTION_14_8();
          MEMORY[0x26D67E950]();
        }

        OUTLINED_FUNCTION_7_10();
        v71(v118, v137);
      }

      else
      {
        v59 = v130;
        (*(v51 + 16))(v130, v39, v54);
        v60 = *(v50 + OBJC_IVAR____TtC9SportsKit10PlaysStore_queue);
        type metadata accessor for ReverseChronologicalStreamReader(0);
        OUTLINED_FUNCTION_11_9();
        swift_allocObject();
        v82 = sub_26B644504(v59, 4096, v60);
        v83 = swift_allocObject();
        *(v83 + 16) = v58;
        v143 = sub_26B643F9C();
        sub_26B67826C(0, &qword_2810CDBA8, 0x277D85C78);
        v84 = sub_26B6E9EB4();
        v115 = v44;
        v85 = v84;
        v145 = v84;
        v86 = sub_26B6E9E94();
        v87 = v125;
        __swift_storeEnumTagSinglePayload(v125, 1, 1, v86);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A488, &qword_26B6F33A8);
        OUTLINED_FUNCTION_6_10(&qword_28040A490);
        sub_26B6936A8();
        v88 = v126;
        sub_26B6E96C4();
        sub_26B650BBC(v87, &qword_28040A478, &qword_26B6F3398);

        v89 = swift_allocObject();
        v90 = v138;
        v89[2] = sub_26B693BFC;
        v89[3] = v90;
        v91 = v136;
        v89[4] = v83;
        v89[5] = v91;
        OUTLINED_FUNCTION_20_5();
        v92 = swift_allocObject();
        v92[2] = v120;
        v92[3] = v91;
        v93 = v128;
        v92[4] = v83;
        v92[5] = v93;
        v92[6] = v82;
        OUTLINED_FUNCTION_9_7(&qword_28040A4A0, &qword_28040A480, &qword_26B6F33A0);
        swift_retain_n();
        swift_bridgeObjectRetain_n();

        v94 = v129;
        sub_26B6E96A4();

        v44 = v115;

        (*(v127 + 8))(v88, v94);
        swift_beginAccess();
        sub_26B6E95D4();
        swift_endAccess();

        sub_26B64481C();

        OUTLINED_FUNCTION_7_10();
        v95();
      }
    }

    else
    {
      sub_26B63DE50(v44, MEMORY[0x277D84F90]);
      v53(v39, v54);
LABEL_10:
    }

    goto LABEL_22;
  }

  if (qword_2810CE9F0 != -1)
  {
LABEL_60:
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v45 = sub_26B6E95C4();
  __swift_project_value_buffer(v45, qword_2810D4308);
  v46 = sub_26B6E95A4();
  v47 = sub_26B6E9E74();
  if (os_log_type_enabled(v46, v47))
  {
    OUTLINED_FUNCTION_28_5();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_33_5(&dword_26B630000, v48, v49, "canonicalId cannot contain parental traversal string patterns");
    OUTLINED_FUNCTION_14_8();
    MEMORY[0x26D67E950]();
  }

LABEL_22:
}

void sub_26B68FCDC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void (*a6)(uint64_t, void), uint64_t a7)
{
  v115 = a6;
  v116 = a7;
  v119 = a5;
  LODWORD(v117) = a4;
  v113 = a3;
  sub_26B6E9104();
  OUTLINED_FUNCTION_4();
  v107 = v11;
  v108 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v106 = v13 - v12;
  OUTLINED_FUNCTION_109_0();
  v120 = sub_26B6E9A64();
  OUTLINED_FUNCTION_4();
  v105 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_30_0();
  v118 = v16 - v17;
  OUTLINED_FUNCTION_29_5();
  MEMORY[0x28223BE20](v18);
  v114 = v99 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A478, &qword_26B6F3398);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_71();
  v109 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A480, &qword_26B6F33A0);
  OUTLINED_FUNCTION_4();
  v111 = v23;
  v112 = v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_71();
  v110 = v25;
  OUTLINED_FUNCTION_109_0();
  v26 = sub_26B6E93B4();
  OUTLINED_FUNCTION_4();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_30_0();
  v32 = v30 - v31;
  v34 = MEMORY[0x28223BE20](v33);
  v36 = v99 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = v99 - v37;
  v121 = a1;
  v122 = a2;
  OUTLINED_FUNCTION_15_5();
  v123 = v39;
  v124 = v40;
  sub_26B641414();
  if (sub_26B6EA074())
  {
    if (qword_2810CE9F0 == -1)
    {
LABEL_3:
      v41 = sub_26B6E95C4();
      __swift_project_value_buffer(v41, qword_2810D4308);
      v42 = sub_26B6E95A4();
      v43 = sub_26B6E9E74();
      if (os_log_type_enabled(v42, v43))
      {
        OUTLINED_FUNCTION_28_5();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_33_5(&dword_26B630000, v44, v45, "canonicalId cannot contain parental traversal string patterns");
        OUTLINED_FUNCTION_14_8();
        MEMORY[0x26D67E950]();
      }

      return;
    }

LABEL_53:
    OUTLINED_FUNCTION_0_10();
    swift_once();
    goto LABEL_3;
  }

  v103 = v7;
  OUTLINED_FUNCTION_30_4();
  sub_26B6E9344();
  OUTLINED_FUNCTION_4_11();
  sub_26B6E9354();
  v101 = v28;
  v48 = *(v28 + 8);
  v46 = v28 + 8;
  v47 = v48;
  v48(v36, v26);
  v49 = [objc_opt_self() defaultManager];
  sub_26B6E9384();
  v50 = sub_26B6E99F4();

  v51 = [v49 fileExistsAtPath_];

  if (!v51)
  {
    v115(MEMORY[0x277D84F90], 0);
    v47(v38, v26);
    return;
  }

  v99[1] = v47;
  v99[0] = v46;
  v102 = v38;
  v100 = v26;
  v52 = MEMORY[0x277D84F90];
  sub_26B6E9054();
  OUTLINED_FUNCTION_11_9();
  swift_allocObject();
  v104 = sub_26B6E9044();
  if ((v117 & 1) == 0)
  {
    (*(v101 + 16))(v32, v102, v100);
    v53 = *(v103 + OBJC_IVAR____TtC9SportsKit10PlaysStore_queue);
    type metadata accessor for ReverseChronologicalStreamReader(0);
    OUTLINED_FUNCTION_11_9();
    swift_allocObject();
    v65 = sub_26B644504(v32, 4096, v53);
    v66 = swift_allocObject();
    *(v66 + 16) = v52;
    v121 = sub_26B643F9C();
    sub_26B67826C(0, &qword_2810CDBA8, 0x277D85C78);
    v67 = sub_26B6E9EB4();
    v123 = v67;
    v68 = sub_26B6E9E94();
    v69 = v109;
    __swift_storeEnumTagSinglePayload(v109, 1, 1, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A488, &qword_26B6F33A8);
    OUTLINED_FUNCTION_6_10(&qword_28040A490);
    sub_26B6936A8();
    v70 = v110;
    sub_26B6E96C4();
    sub_26B650BBC(v69, &qword_28040A478, &qword_26B6F3398);

    v71 = swift_allocObject();
    v72 = v116;
    v71[2] = v115;
    v71[3] = v72;
    v73 = v119;
    v71[4] = v66;
    v71[5] = v73;
    OUTLINED_FUNCTION_20_5();
    v74 = swift_allocObject();
    v74[2] = v104;
    v74[3] = v73;
    v75 = v113;
    v74[4] = v66;
    v74[5] = v75;
    v74[6] = v65;
    OUTLINED_FUNCTION_9_7(&qword_28040A4A0, &qword_28040A480, &qword_26B6F33A0);
    swift_retain_n();
    swift_bridgeObjectRetain_n();

    v76 = v112;
    sub_26B6E96A4();

    (*(v111 + 8))(v70, v76);
    swift_beginAccess();
    sub_26B6E95D4();
    swift_endAccess();

    sub_26B64481C();

    v77 = OUTLINED_FUNCTION_10_9();
    v78(v77);

    return;
  }

  sub_26B6E9384();
  sub_26B6E9A54();
  v54 = sub_26B6E99E4();
  v56 = v55;

  v121 = v54;
  v122 = v56;
  v57 = v106;
  sub_26B6E90F4();
  v58 = sub_26B6EA014();
  (*(v107 + 8))(v57, v108);

  v59 = *(v58 + 16);
  if (!v59)
  {
    v108 = 0;

    v64 = MEMORY[0x277D84F90];
LABEL_17:
    v121 = v52;
    v79 = sub_26B6542CC();
    v112 = v64 & 0xC000000000000001;
    v113 = v79;
    v109 = v64;
    v110 = v64 + 32;
    v111 = v64 & 0xFFFFFFFFFFFFFF8;
    v117 = v119 + 32;
    swift_bridgeObjectRetain_n();
    v80 = 0;
    while (1)
    {
      if (v80 == v113)
      {

        swift_bridgeObjectRelease_n();
        v115(v121, 0);

        v97 = OUTLINED_FUNCTION_10_9();
        v98(v97);
        return;
      }

      if (v112)
      {
        MEMORY[0x26D67DB30](v80, v109);
      }

      else
      {
        if (v80 >= *(v111 + 16))
        {
          goto LABEL_52;
        }

        v81 = *(v110 + 8 * v80);
      }

      if (__OFADD__(v80++, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_13_8();
      if (v84)
      {
        v114 = v83;
        v85 = *&v83[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__levels];
        v86 = *(v119 + 16);
        v120 = v85 + 32;

        v87 = 0;
        v118 = v86;
LABEL_25:
        if (v87 == v86)
        {

          sub_26B6EA1F4();
          sub_26B6EA224();
          sub_26B6EA234();
          sub_26B6EA204();
        }

        else
        {
          v88 = *(v117 + v87++);
          v89 = *(v85 + 16);
          v90 = v120;
          while (v89)
          {
            v91 = 0xE600000000000000;
            v92 = 0x737472656C41;
            switch(*v90)
            {
              case 1:
                v91 = 0xE300000000000000;
                v92 = 7105601;
                break;
              case 2:
                v92 = OUTLINED_FUNCTION_12_8();
                break;
              case 3:
                v92 = OUTLINED_FUNCTION_19_4();
                break;
              case 4:
                v92 = OUTLINED_FUNCTION_18_8();
                break;
              default:
                break;
            }

            v93 = 0xE600000000000000;
            v94 = 0x737472656C41;
            switch(v88)
            {
              case 1:
                v93 = 0xE300000000000000;
                v94 = 7105601;
                break;
              case 2:
                OUTLINED_FUNCTION_16_7();
                break;
              case 3:
                OUTLINED_FUNCTION_22_7();
                break;
              case 4:
                OUTLINED_FUNCTION_23_5();
                break;
              default:
                break;
            }

            if (v92 == v94 && v91 == v93)
            {

LABEL_45:
              v86 = v118;
              goto LABEL_25;
            }

            v96 = sub_26B6EA5D4();

            ++v90;
            --v89;
            if (v96)
            {
              goto LABEL_45;
            }
          }
        }
      }

      else
      {
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v121 = v52;
  sub_26B6EA214();
  v117 = type metadata accessor for SportingEventPlay();
  v60 = 0;
  v61 = (v105 + 8);
  v62 = v58 + 40;
  while (v60 < *(v58 + 16))
  {

    v63 = v118;
    sub_26B6E9A54();
    sub_26B6E9A34();
    (*v61)(v63, v120);
    sub_26B693620(&qword_2810CE448, type metadata accessor for SportingEventPlay, &protocol conformance descriptor for SportingEventPlay);
    sub_26B6E9024();
    ++v60;
    OUTLINED_FUNCTION_35_5();

    sub_26B6EA1F4();
    sub_26B6EA224();
    sub_26B6EA234();
    sub_26B6EA204();
    v62 += 16;
    if (v59 == v60)
    {
      v108 = 0;

      v64 = v121;
      v52 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_26B6909DC(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v7 = *(a4 + 16);
  v13 = MEMORY[0x277D84F90];
  v8 = sub_26B6542CC();
  swift_bridgeObjectRetain_n();

  while (1)
  {
    if (!v8)
    {

      swift_bridgeObjectRelease_n();
      a2(v13, 0);

      return;
    }

    if (__OFSUB__(v8--, 1))
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D67DB30](v8, v7);
    }

    else
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_14;
      }

      if (v8 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v10 = *(v7 + 32 + 8 * v8);
    }

    v11 = v10;
    if (sub_26B6C2CD0(v10, a5))
    {
      sub_26B6EA1F4();
      sub_26B6EA224();
      sub_26B6EA234();
      sub_26B6EA204();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_26B690B48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a3;
  v9 = sub_26B6E9A64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B6E9A54();
  v13 = sub_26B6E9A34();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  if (v15 >> 60 != 15)
  {
    type metadata accessor for SportingEventPlay();
    sub_26B693620(&qword_2810CE448, type metadata accessor for SportingEventPlay, &protocol conformance descriptor for SportingEventPlay);
    sub_26B6E9024();
    v32 = a4;
    v33 = v13;
    v34 = a6;
    v31 = v39;
    v16 = *&v39[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__levels];
    v17 = *(v38 + 16);
    v35 = (v16 + 32);
    v36 = v38 + 32;
    v38 = v16;

    v18 = 0;
    v37 = a5;
LABEL_3:
    if (v18 == v17)
    {

      v29 = v32;
      v30 = swift_beginAccess();
      MEMORY[0x26D67D5D0](v30);
      sub_26B6CB2CC(*((*(v29 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_26B6E9CB4();
      swift_endAccess();
      sub_26B645C4C(v33, v15);
    }

    else
    {
      v19 = v35;
      v20 = *(v36 + v18++);
      v21 = *(v38 + 16);
      while (v21)
      {
        v22 = 0xE600000000000000;
        v23 = 0x737472656C41;
        switch(*v19)
        {
          case 1:
            v22 = 0xE300000000000000;
            v23 = 7105601;
            break;
          case 2:
            v23 = 0x6867696C68676948;
            v22 = 0xE900000000000074;
            break;
          case 3:
            v22 = 0xE700000000000000;
            v23 = 0x79616C5079654BLL;
            break;
          case 4:
            v22 = 0xE700000000000000;
            v23 = 0x6E6F6973736553;
            break;
          default:
            break;
        }

        v24 = 0xE600000000000000;
        v25 = 0x737472656C41;
        switch(v20)
        {
          case 1:
            v24 = 0xE300000000000000;
            v25 = 7105601;
            break;
          case 2:
            v25 = 0x6867696C68676948;
            v24 = 0xE900000000000074;
            break;
          case 3:
            v24 = 0xE700000000000000;
            v25 = 0x79616C5079654BLL;
            break;
          case 4:
            v24 = 0xE700000000000000;
            v25 = 0x6E6F6973736553;
            break;
          default:
            break;
        }

        if (v23 == v25 && v22 == v24)
        {

LABEL_23:
          a5 = v37;
          goto LABEL_3;
        }

        v27 = sub_26B6EA5D4();

        ++v19;
        --v21;
        if (v27)
        {
          goto LABEL_23;
        }
      }

      sub_26B645C4C(v33, v15);

      a5 = v37;
    }
  }

  swift_beginAccess();
  if (sub_26B6B8B04() == a5)
  {
    return sub_26B6449D0();
  }

  else
  {
    return sub_26B64481C();
  }
}

void sub_26B690F78()
{
  OUTLINED_FUNCTION_38();
  v1 = v0;
  v3 = v2;
  v4 = sub_26B6E93B4();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_0();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  v26[2] = v3;
  v26[3] = v1;
  OUTLINED_FUNCTION_15_5();
  v26[0] = v14;
  v26[1] = v15;
  sub_26B641414();
  OUTLINED_FUNCTION_17_5();
  if (sub_26B6EA074())
  {
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v16 = sub_26B6E95C4();
    __swift_project_value_buffer(v16, qword_2810D4308);
    v17 = sub_26B6E95A4();
    v18 = sub_26B6E9E74();
    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_28_5();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_34_3(&dword_26B630000, v19, v20, "canonicalId cannot contain parental traversal string patterns");
      OUTLINED_FUNCTION_14_8();
      MEMORY[0x26D67E950]();
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_4();
    sub_26B6E9344();
    OUTLINED_FUNCTION_4_11();
    sub_26B6E9354();
    v21 = *(v6 + 8);
    v21(v10, v4);
    v22 = [objc_opt_self() defaultManager];
    sub_26B6E9384();
    v23 = sub_26B6E99F4();

    v24 = [v22 fileExistsAtPath_];

    if (v24)
    {
      MEMORY[0x28223BE20](v25);
      v26[-2] = v22;
      v26[-1] = v13;
      sub_26B6E9EC4();
    }

    v21(v13, v4);
  }

  OUTLINED_FUNCTION_37();
}

id sub_26B691230(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = sub_26B6E9324();
  v5[0] = 0;
  LODWORD(a1) = [a1 removeItemAtURL:v2 error:v5];

  if (a1)
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_26B6E92B4();

  return swift_willThrow();
}

uint64_t PlaysStore.deinit()
{
  v1 = OBJC_IVAR____TtC9SportsKit10PlaysStore_storeUrl;
  sub_26B6E93B4();
  OUTLINED_FUNCTION_16();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t PlaysStore.__deallocating_deinit()
{
  PlaysStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26B6913C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_26B6E93B4();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_6();
  sub_26B6E9344();
  OUTLINED_FUNCTION_4_11();
  sub_26B6E9354();
  return (*(v5 + 8))(v2, v3);
}

void sub_26B6914AC()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v5 = v4;
  sub_26B6E9104();
  OUTLINED_FUNCTION_4();
  v37 = v7;
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v10 = v9 - v8;
  v40 = sub_26B6E9A64();
  OUTLINED_FUNCTION_4();
  v36 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_0();
  v39 = v13 - v14;
  OUTLINED_FUNCTION_29_5();
  MEMORY[0x28223BE20](v15);
  v16 = sub_26B6E93B4();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_15_5();
  sub_26B641414();
  OUTLINED_FUNCTION_17_5();
  if (sub_26B6EA074())
  {
    sub_26B693B54();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
LABEL_7:
    OUTLINED_FUNCTION_37();
    return;
  }

  sub_26B6913C4(v5, v3);
  v19 = [objc_opt_self() defaultManager];
  sub_26B6E9384();
  v20 = sub_26B6E99F4();

  v21 = [v19 fileExistsAtPath_];

  if (!v21)
  {
    sub_26B693B54();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_54_0();
    v24(v1, v16);
    goto LABEL_7;
  }

  sub_26B6E9384();
  sub_26B6E9A54();
  sub_26B6E99E4();
  if (v0)
  {
    OUTLINED_FUNCTION_54_0();
    v22(v1, v16);

    goto LABEL_7;
  }

  v35 = v1;

  sub_26B6E90F4();
  v25 = sub_26B6EA014();
  (*(v37 + 8))(v10, v38);

  sub_26B6E9054();
  OUTLINED_FUNCTION_11_9();
  swift_allocObject();
  sub_26B6E9044();
  v26 = *(v25 + 16);
  if (!v26)
  {

    OUTLINED_FUNCTION_54_0();
    v34(v1, v16);
    goto LABEL_7;
  }

  sub_26B6EA214();
  v27 = 0;
  type metadata accessor for SportingEventPlay();
  v28 = v25 + 40;
  while (v27 < *(v25 + 16))
  {

    sub_26B6E9A54();
    v29 = sub_26B6E9A34();
    v31 = v30;
    (*(v36 + 8))(v39, v40);
    if (v31 >> 60 == 15)
    {
      v32 = 0;
    }

    else
    {
      v32 = v29;
    }

    if (v31 >> 60 == 15)
    {
      v31 = 0xC000000000000000;
    }

    sub_26B693620(&qword_2810CE448, type metadata accessor for SportingEventPlay, &protocol conformance descriptor for SportingEventPlay);
    sub_26B6E9024();
    ++v27;
    sub_26B645A94(v32, v31);

    sub_26B6EA1F4();
    sub_26B6EA224();
    sub_26B6EA234();
    sub_26B6EA204();
    v28 += 16;
    if (v26 == v27)
    {
      OUTLINED_FUNCTION_54_0();
      v33(v35, v16);

      goto LABEL_7;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PlaysStore.refreshAllPlays(for:with:)(Swift::String a1, Swift::OpaquePointer with)
{
  OUTLINED_FUNCTION_38();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_26B6E93B4();
  OUTLINED_FUNCTION_4();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_6();
  v43 = v9;
  v44 = v7;
  OUTLINED_FUNCTION_15_5();
  v42[0] = v14;
  v42[1] = v15;
  sub_26B641414();
  OUTLINED_FUNCTION_17_5();
  if (sub_26B6EA074())
  {
    goto LABEL_57;
  }

  v39 = v10;
  v41 = v3;
  v16 = sub_26B6542CC();
  if (!v16)
  {
    goto LABEL_57;
  }

  v17 = v16;
  sub_26B6913C4(v9, v7);
  v18 = [objc_opt_self() defaultManager];
  sub_26B6E9384();
  v19 = sub_26B6E99F4();

  v20 = [v18 fileExistsAtPath_];

  if (!v20)
  {
    sub_26B68E00C();
    (*(v12 + 8))(v41, v39);
    goto LABEL_57;
  }

  v43 = v5;
  v42[0] = MEMORY[0x277D84F90];

  for (i = 0; v17 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x26D67DB30](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v22 = *(v5 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:

      __break(1u);
      return;
    }

    if (*(v22 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8) == 1)
    {
    }

    else
    {
      sub_26B6EA1F4();
      sub_26B6EA224();
      sub_26B6EA234();
      sub_26B6EA204();
    }
  }

  v42[0] = sub_26B69373C(v23);
  sub_26B6929F4(v42);
  i = v2;
  if (v2)
  {
    goto LABEL_67;
  }

  v24 = sub_26B68DC8C(v42[0]);

  if (v24)
  {
    v40 = *&v24[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp];
    v25 = v24[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8];
  }

  else
  {
    v40 = 0;
    v25 = 1;
  }

  v45 = v25;
  sub_26B692038(v24, 0xD000000000000028, 0x800000026B6FC330);
  sub_26B6914AC();
  i = v26;
  v42[0] = MEMORY[0x277D84F90];
  v27 = sub_26B6542CC();
  for (j = 0; v27 != j; ++j)
  {
    if ((i & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x26D67DB30](j, i);
    }

    else
    {
      if (j >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v29 = *(i + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_60;
    }

    if (*(v29 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8) == 1)
    {
    }

    else
    {
      sub_26B6EA1F4();
      sub_26B6EA224();
      OUTLINED_FUNCTION_30_4();
      sub_26B6EA234();
      sub_26B6EA204();
    }
  }

  v30 = v42[0];
  v42[0] = MEMORY[0x277D84F90];
  v31 = sub_26B6542CC();
  for (i = 0; v31 != i; ++i)
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x26D67DB30](i, v30);
    }

    else
    {
      if (i >= *(v30 + 16))
      {
        goto LABEL_63;
      }

      v32 = *(v30 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_62;
    }

    if (v32[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8])
    {
      goto LABEL_66;
    }

    v33 = *&v32[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp];
    if (v45)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v40 < v33)
    {
LABEL_40:
      sub_26B6EA1F4();
      sub_26B6EA224();
      OUTLINED_FUNCTION_30_4();
      sub_26B6EA234();
      sub_26B6EA204();
      continue;
    }
  }

  i = v42[0];
  v34 = sub_26B6542CC();
  if (v34)
  {
    v35 = v34;
    for (k = 0; v35 != k; ++k)
    {
      if ((i & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x26D67DB30](k, i);
      }

      else
      {
        if (k >= *(i + 16))
        {
          goto LABEL_65;
        }

        v37 = *(i + 8 * k + 32);
      }

      v38 = v37;
      if (__OFADD__(k, 1))
      {
        goto LABEL_64;
      }

      sub_26B692038(v37, 0x64656E616870724FuLL, 0xED000079616C5020);
    }

    sub_26B6927B0(i);
  }

  else
  {
  }

  sub_26B68E00C();
  (*(v12 + 8))(v41, v39);

LABEL_57:
  OUTLINED_FUNCTION_37();
}

void sub_26B692038(char *a1, unint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v5 = a1;
  v6 = *&a1[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__clock];
  if (!v6 || (v7 = (v6 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__minutes), *(v6 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__minutes + 8) == 1) || (v8 = (v6 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__seconds), *(v8 + 8) == 1))
  {
    v9 = a1;
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v49 = *v8;
    v66 = *v7;
    v50 = a1;
    v51 = MEMORY[0x277D83B88];
    v64 = sub_26B6EA564();
    v65 = v52;
    MEMORY[0x26D67D4D0](58, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A4B8, &qword_26B6F33D0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_26B6EBA50;
    v54 = MEMORY[0x277D83C10];
    *(v53 + 56) = v51;
    *(v53 + 64) = v54;
    *(v53 + 32) = v49;
    v55 = sub_26B6E9A44();
    MEMORY[0x26D67D4D0](v55);

    v10 = v64;
    v11 = v65;
  }

  v12 = *&v5[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__competitors];
  v13 = sub_26B6542CC();
  v58 = a2;
  v59 = v11;
  v60 = v10;
  if (!v13)
  {
LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BE8, &qword_26B6F00D0);
    sub_26B689EC8(&qword_2810CC2A8, &qword_280409BE8, &qword_26B6F00D0, MEMORY[0x277D83958]);
    v29 = sub_26B6E9994();
    v31 = v30;

    v64 = 0;
    v65 = 0xE000000000000000;
    sub_26B6EA134();
    MEMORY[0x26D67D4D0](0x5B79616C50, 0xE500000000000000);
    v32 = *&v5[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__id + 8];
    if (v32)
    {
      v33 = *&v5[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__id];
    }

    else
    {
      v33 = 0;
    }

    if (v32)
    {
      v34 = *&v5[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__id + 8];
    }

    else
    {
      v34 = 0xE000000000000000;
    }

    MEMORY[0x26D67D4D0](v33, v34);

    MEMORY[0x26D67D4D0](0x706D617473202C5DLL, 0xEA0000000000203ALL);
    if (v5[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8])
    {
      v35 = -1;
    }

    else
    {
      v35 = *&v5[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp];
    }

    v66 = v35;
    v36 = sub_26B6EA564();
    MEMORY[0x26D67D4D0](v36);

    MEMORY[0x26D67D4D0](0x632079616C70202CLL, 0xEE00203A6B636F6CLL);
    MEMORY[0x26D67D4D0](v60, v59);

    MEMORY[0x26D67D4D0](0x732079616C70202CLL, 0xEE00203A65726F63);
    MEMORY[0x26D67D4D0](v29, v31);

    MEMORY[0x26D67D4D0](2108704, 0xE300000000000000);
    v37 = *&v5[OBJC_IVAR____TtC9SportsKit17SportingEventPlay_playDescription];
    v38 = *&v5[OBJC_IVAR____TtC9SportsKit17SportingEventPlay_playDescription + 8];

    MEMORY[0x26D67D4D0](v37, v38);

    MEMORY[0x26D67D4D0](0x6C2079616C70202CLL, 0xEF203A736C657665);

    v40 = MEMORY[0x26D67D610](v39, &type metadata for SportingEventPlayLevel);
    v42 = v41;

    MEMORY[0x26D67D4D0](v40, v42);

    v19 = v64;
    a2 = v65;
    if (qword_2810CE9F0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_36;
  }

  v14 = v13;
  v56 = a3;
  v57 = v5;
  v66 = MEMORY[0x277D84F90];
  v15 = v13 & ~(v13 >> 63);

  sub_26B63B9EC(0, v15, 0);
  v16 = v66;
  v17 = sub_26B6542CC();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

  v18 = 0;
  v62 = v12 & 0xC000000000000001;
  v63 = v12;
  v61 = v12 & 0xFFFFFFFFFFFFFF8;
  v19 = v17 + 3;
  a3 = v14;
  v20 = v17;
  while ((v17 ^ v18) != 0x8000000000000000)
  {
    v21 = v19 - 4;
    if (v62)
    {
      v22 = MEMORY[0x26D67DB30](v21, v63);
    }

    else
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v21 >= *(v61 + 16))
      {
        goto LABEL_45;
      }

      v22 = *(v63 + 8 * v19);
    }

    v23 = v22;
    v64 = 0;
    v65 = 0xE000000000000000;
    v24 = *(*&v22[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_score] + OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries);
    if (v24 >> 62)
    {
      if (!sub_26B6EA324())
      {
        goto LABEL_21;
      }
    }

    else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {

      MEMORY[0x26D67DB30](0, v24);

      swift_unknownObjectRelease();
    }

    else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

LABEL_21:
    v25 = sub_26B6EA564();
    MEMORY[0x26D67D4D0](v25);

    v26 = v64;
    v5 = v65;
    v66 = v16;
    a2 = *(v16 + 16);
    v27 = *(v16 + 24);
    if (a2 >= v27 >> 1)
    {
      sub_26B63B9EC((v27 > 1), a2 + 1, 1);
      v16 = v66;
    }

    ++v18;
    *(v16 + 16) = a2 + 1;
    v28 = v16 + 16 * a2;
    *(v28 + 32) = v26;
    *(v28 + 40) = v5;
    --v19;
    v17 = v20;
    if (a3 == v18)
    {

      a3 = v56;
      v5 = v57;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  swift_once();
LABEL_36:
  v43 = sub_26B6E95C4();
  __swift_project_value_buffer(v43, qword_2810D4308);

  v44 = sub_26B6E95A4();
  v45 = sub_26B6E9E64();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v64 = v47;
    *v46 = 136315394;
    *(v46 + 4) = sub_26B6D22D8(v58, a3, &v64);
    *(v46 + 12) = 2080;
    v48 = sub_26B6D22D8(v19, a2, &v64);

    *(v46 + 14) = v48;
    _os_log_impl(&dword_26B630000, v44, v45, "%s: %s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D67E950](v47, -1, -1);
    MEMORY[0x26D67E950](v46, -1, -1);
  }

  else
  {
  }
}