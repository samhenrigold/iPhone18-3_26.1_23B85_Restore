uint64_t sub_227B985F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227B9863C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_10();
  v8 = sub_227B985F4(v6, v7, &unk_227D521DC);

  return sub_227BA24C0(a1, a2, a3, &off_283B380B0, v8);
}

uint64_t sub_227B986F0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10();
  v4 = sub_227B985F4(v2, v3, &unk_227D522B8);

  return sub_227BA2760(a1, v4);
}

uint64_t sub_227B98774(uint64_t a1)
{
  result = sub_227D49188();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AchievementImage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AchievementImage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227B98964()
{
  result = qword_27D7EC760[0];
  if (!qword_27D7EC760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EC760);
  }

  return result;
}

unint64_t sub_227B989BC()
{
  result = qword_27D7EC870;
  if (!qword_27D7EC870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EC870);
  }

  return result;
}

unint64_t sub_227B98A14()
{
  result = qword_27D7EC878;
  if (!qword_27D7EC878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EC878);
  }

  return result;
}

uint64_t sub_227B98A8C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ChallengeImage(0);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v2, v4);
}

uint64_t type metadata accessor for ChallengeImage(uint64_t a1)
{
  result = qword_27D7ECE90;
  if (!qword_27D7ECE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227B98B44(uint64_t a1)
{
  type metadata accessor for ChallengeImage(0);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 40);

  return v5(v1 + v2, a1);
}

uint64_t sub_227B98BF8(uint64_t a1)
{
  v2 = sub_227B98E0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227B98C34(uint64_t a1)
{
  v2 = sub_227B98E0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227B98C70(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7590, &qword_227D524D8);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227B98E0C();
  sub_227D4DC08();
  v12[15] = 0;
  sub_227D4D9C8();
  if (!v1)
  {
    type metadata accessor for ChallengeImage(0);
    v12[14] = 1;
    sub_227D49188();
    OUTLINED_FUNCTION_2_12();
    sub_227B99600(v9, v10, MEMORY[0x277CC9268]);
    sub_227D4DA08();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_227B98E0C()
{
  result = qword_27D7EC900[0];
  if (!qword_27D7EC900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EC900);
  }

  return result;
}

uint64_t sub_227B98E60()
{
  sub_227D4DB58();
  type metadata accessor for ChallengeImage(0);
  OUTLINED_FUNCTION_0_11();
  sub_227B99600(v0, v1, &unk_227D52564);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227B98ED8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_227D49188();
  OUTLINED_FUNCTION_9();
  v22 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E75A0, &qword_227D524E0);
  OUTLINED_FUNCTION_9();
  v24 = v8;
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for ChallengeImage(0);
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v11);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227B98E0C();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v10;
  v14 = v25;
  v28 = 0;
  *v13 = sub_227D4D8F8();
  v13[1] = v15;
  v27 = 1;
  OUTLINED_FUNCTION_2_12();
  sub_227B99600(v16, v17, MEMORY[0x277CC9280]);
  sub_227D4D938();
  v18 = OUTLINED_FUNCTION_4_9();
  v19(v18);
  (*(v22 + 32))(v13 + *(v21 + 20), v7, v14);
  sub_227B992AC(v13, v23);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_227B99310(v13);
}

uint64_t sub_227B991B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  type metadata accessor for ChallengeImage(0);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_62_0();
  v8 = *(v7 + 32);

  return v8(&a4[v4], a3);
}

uint64_t sub_227B99230(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_11();
  v6 = sub_227B99600(v4, v5, &unk_227D5251C);

  return sub_227BA2640(a1, a2, &off_283B38218, v6);
}

uint64_t sub_227B992AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227B99310(uint64_t a1)
{
  v2 = type metadata accessor for ChallengeImage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227B9936C(uint64_t a1)
{
  *(a1 + 16) = sub_227B99600(&qword_27D7E75A8, type metadata accessor for ChallengeImage, &unk_227D5251C);
  result = sub_227B99600(&qword_27D7E75B0, type metadata accessor for ChallengeImage, &unk_227D52538);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_227B99468(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  *(a1 + 8) = sub_227B99600(a4, type metadata accessor for ChallengeImage, a5);
  result = sub_227B99600(a6, type metadata accessor for ChallengeImage, a7);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227B9950C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_0_11();
  v6 = sub_227B99600(v4, v5, &unk_227D5251C);
  result = sub_227BA2350(a1, &off_283B38218, v6, &off_283B38258);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_227B9957C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_11();
  result = sub_227B99600(v2, v3, &unk_227D5263C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227B99600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227B99648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_11();
  v8 = sub_227B99600(v6, v7, &unk_227D5251C);

  return sub_227BA24C0(a1, a2, a3, &off_283B38218, v8);
}

uint64_t sub_227B996FC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_11();
  v4 = sub_227B99600(v2, v3, &unk_227D525F8);

  return sub_227BA2760(a1, v4);
}

_BYTE *storeEnumTagSinglePayload for ChallengeImage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227B99860()
{
  result = qword_27D7ECFA0[0];
  if (!qword_27D7ECFA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7ECFA0);
  }

  return result;
}

unint64_t sub_227B998B8()
{
  result = qword_27D7ED0B0;
  if (!qword_27D7ED0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7ED0B0);
  }

  return result;
}

unint64_t sub_227B99910()
{
  result = qword_27D7ED0B8[0];
  if (!qword_27D7ED0B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7ED0B8);
  }

  return result;
}

uint64_t sub_227B99978@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for GameActivityImage(0);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v2, v4);
}

uint64_t type metadata accessor for GameActivityImage(uint64_t a1)
{
  result = qword_27D7ED6D0;
  if (!qword_27D7ED6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227B99A30(uint64_t a1)
{
  type metadata accessor for GameActivityImage(0);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 40);

  return v5(v1 + v2, a1);
}

uint64_t sub_227B99AE4(uint64_t a1)
{
  v2 = sub_227B99CF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227B99B20(uint64_t a1)
{
  v2 = sub_227B99CF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227B99B5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E75F0, &qword_227D52808);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227B99CF8();
  sub_227D4DC08();
  v12[15] = 0;
  sub_227D4D9C8();
  if (!v1)
  {
    type metadata accessor for GameActivityImage(0);
    v12[14] = 1;
    sub_227D49188();
    OUTLINED_FUNCTION_2_13();
    sub_227B9A4EC(v9, v10, MEMORY[0x277CC9268]);
    sub_227D4DA08();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_227B99CF8()
{
  result = qword_27D7ED140[0];
  if (!qword_27D7ED140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7ED140);
  }

  return result;
}

uint64_t sub_227B99D4C()
{
  sub_227D4DB58();
  type metadata accessor for GameActivityImage(0);
  OUTLINED_FUNCTION_0_12();
  sub_227B9A4EC(v0, v1, &unk_227D52894);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227B99DC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_227D49188();
  OUTLINED_FUNCTION_9();
  v22 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7600, &unk_227D52810);
  OUTLINED_FUNCTION_9();
  v24 = v8;
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for GameActivityImage(0);
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v11);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227B99CF8();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v10;
  v14 = v25;
  v28 = 0;
  *v13 = sub_227D4D8F8();
  v13[1] = v15;
  v27 = 1;
  OUTLINED_FUNCTION_2_13();
  sub_227B9A4EC(v16, v17, MEMORY[0x277CC9280]);
  sub_227D4D938();
  v18 = OUTLINED_FUNCTION_4_9();
  v19(v18);
  (*(v22 + 32))(v13 + *(v21 + 20), v7, v14);
  sub_227B9A198(v13, v23);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_227B9A1FC(v13);
}

uint64_t sub_227B9A0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  type metadata accessor for GameActivityImage(0);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_62_0();
  v8 = *(v7 + 32);

  return v8(&a4[v4], a3);
}

uint64_t sub_227B9A11C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_12();
  v6 = sub_227B9A4EC(v4, v5, &unk_227D5284C);

  return sub_227BA2640(a1, a2, &off_283B38380, v6);
}

uint64_t sub_227B9A198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameActivityImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227B9A1FC(uint64_t a1)
{
  v2 = type metadata accessor for GameActivityImage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227B9A258(uint64_t a1)
{
  *(a1 + 16) = sub_227B9A4EC(&qword_27D7E7608, type metadata accessor for GameActivityImage, &unk_227D5284C);
  result = sub_227B9A4EC(&qword_27D7E7610, type metadata accessor for GameActivityImage, &unk_227D52868);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_227B9A354(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  *(a1 + 8) = sub_227B9A4EC(a4, type metadata accessor for GameActivityImage, a5);
  result = sub_227B9A4EC(a6, type metadata accessor for GameActivityImage, a7);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227B9A3F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_0_12();
  v6 = sub_227B9A4EC(v4, v5, &unk_227D5284C);
  result = sub_227BA2350(a1, &off_283B38380, v6, &off_283B383C0);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_227B9A468(uint64_t a1)
{
  OUTLINED_FUNCTION_0_12();
  result = sub_227B9A4EC(v2, v3, &unk_227D5296C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227B9A4EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227B9A534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_12();
  v8 = sub_227B9A4EC(v6, v7, &unk_227D5284C);

  return sub_227BA24C0(a1, a2, a3, &off_283B38380, v8);
}

uint64_t sub_227B9A5E8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_12();
  v4 = sub_227B9A4EC(v2, v3, &unk_227D52928);

  return sub_227BA2760(a1, v4);
}

_BYTE *storeEnumTagSinglePayload for GameActivityImage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227B9A74C()
{
  result = qword_27D7ED7E0[0];
  if (!qword_27D7ED7E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7ED7E0);
  }

  return result;
}

unint64_t sub_227B9A7A4()
{
  result = qword_27D7ED8F0;
  if (!qword_27D7ED8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7ED8F0);
  }

  return result;
}

unint64_t sub_227B9A7FC()
{
  result = qword_27D7ED8F8[0];
  if (!qword_27D7ED8F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7ED8F8);
  }

  return result;
}

uint64_t sub_227B9A864@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LeaderboardImage(0);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v2, v4);
}

uint64_t type metadata accessor for LeaderboardImage(uint64_t a1)
{
  result = qword_27D7EDF10;
  if (!qword_27D7EDF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227B9A91C(uint64_t a1)
{
  type metadata accessor for LeaderboardImage(0);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 40);

  return v5(v1 + v2, a1);
}

uint64_t sub_227B9A9D0(uint64_t a1)
{
  v2 = sub_227B9ABE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227B9AA0C(uint64_t a1)
{
  v2 = sub_227B9ABE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227B9AA48(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7650, &qword_227D52B48);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227B9ABE4();
  sub_227D4DC08();
  v12[15] = 0;
  sub_227D4D9C8();
  if (!v1)
  {
    type metadata accessor for LeaderboardImage(0);
    v12[14] = 1;
    sub_227D49188();
    OUTLINED_FUNCTION_2_14();
    sub_227B9B3D8(v9, v10, MEMORY[0x277CC9268]);
    sub_227D4DA08();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_227B9ABE4()
{
  result = qword_27D7ED980[0];
  if (!qword_27D7ED980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7ED980);
  }

  return result;
}

uint64_t sub_227B9AC38()
{
  sub_227D4DB58();
  type metadata accessor for LeaderboardImage(0);
  OUTLINED_FUNCTION_0_13();
  sub_227B9B3D8(v0, v1, &unk_227D52BD4);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227B9ACB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_227D49188();
  OUTLINED_FUNCTION_9();
  v22 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7660, &unk_227D52B50);
  OUTLINED_FUNCTION_9();
  v24 = v8;
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for LeaderboardImage(0);
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v11);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227B9ABE4();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v10;
  v14 = v25;
  v28 = 0;
  *v13 = sub_227D4D8F8();
  v13[1] = v15;
  v27 = 1;
  OUTLINED_FUNCTION_2_14();
  sub_227B9B3D8(v16, v17, MEMORY[0x277CC9280]);
  sub_227D4D938();
  v18 = OUTLINED_FUNCTION_4_9();
  v19(v18);
  (*(v22 + 32))(v13 + *(v21 + 20), v7, v14);
  sub_227B9B084(v13, v23);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_227B9B0E8(v13);
}

uint64_t sub_227B9AF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  type metadata accessor for LeaderboardImage(0);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_62_0();
  v8 = *(v7 + 32);

  return v8(&a4[v4], a3);
}

uint64_t sub_227B9B008(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_13();
  v6 = sub_227B9B3D8(v4, v5, &unk_227D52B8C);

  return sub_227BA2640(a1, a2, &off_283B384E8, v6);
}

uint64_t sub_227B9B084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227B9B0E8(uint64_t a1)
{
  v2 = type metadata accessor for LeaderboardImage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227B9B144(uint64_t a1)
{
  *(a1 + 16) = sub_227B9B3D8(&qword_27D7E7668, type metadata accessor for LeaderboardImage, &unk_227D52B8C);
  result = sub_227B9B3D8(&qword_27D7E7670, type metadata accessor for LeaderboardImage, &unk_227D52BA8);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_227B9B240(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  *(a1 + 8) = sub_227B9B3D8(a4, type metadata accessor for LeaderboardImage, a5);
  result = sub_227B9B3D8(a6, type metadata accessor for LeaderboardImage, a7);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227B9B2E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_0_13();
  v6 = sub_227B9B3D8(v4, v5, &unk_227D52B8C);
  result = sub_227BA2350(a1, &off_283B384E8, v6, &off_283B38528);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_227B9B354(uint64_t a1)
{
  OUTLINED_FUNCTION_0_13();
  result = sub_227B9B3D8(v2, v3, &unk_227D52CAC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227B9B3D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227B9B420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_13();
  v8 = sub_227B9B3D8(v6, v7, &unk_227D52B8C);

  return sub_227BA24C0(a1, a2, a3, &off_283B384E8, v8);
}

uint64_t sub_227B9B4D4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_13();
  v4 = sub_227B9B3D8(v2, v3, &unk_227D52C68);

  return sub_227BA2760(a1, v4);
}

_BYTE *storeEnumTagSinglePayload for LeaderboardImage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227B9B638()
{
  result = qword_27D7EE020[0];
  if (!qword_27D7EE020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EE020);
  }

  return result;
}

unint64_t sub_227B9B690()
{
  result = qword_27D7EE130;
  if (!qword_27D7EE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EE130);
  }

  return result;
}

unint64_t sub_227B9B6E8()
{
  result = qword_27D7EE138[0];
  if (!qword_27D7EE138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EE138);
  }

  return result;
}

uint64_t sub_227B9B750@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LeaderboardSetImage(0);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v2, v4);
}

uint64_t type metadata accessor for LeaderboardSetImage(uint64_t a1)
{
  result = qword_27D7EE750;
  if (!qword_27D7EE750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227B9B808(uint64_t a1)
{
  type metadata accessor for LeaderboardSetImage(0);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 40);

  return v5(v1 + v2, a1);
}

uint64_t sub_227B9B8BC(uint64_t a1)
{
  v2 = sub_227B9BAD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227B9B8F8(uint64_t a1)
{
  v2 = sub_227B9BAD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227B9B934(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E76B0, &qword_227D52E88);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227B9BAD0();
  sub_227D4DC08();
  v12[15] = 0;
  sub_227D4D9C8();
  if (!v1)
  {
    type metadata accessor for LeaderboardSetImage(0);
    v12[14] = 1;
    sub_227D49188();
    OUTLINED_FUNCTION_2_15();
    sub_227B9C2C4(v9, v10, MEMORY[0x277CC9268]);
    sub_227D4DA08();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_227B9BAD0()
{
  result = qword_27D7EE1C0[0];
  if (!qword_27D7EE1C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EE1C0);
  }

  return result;
}

uint64_t sub_227B9BB24()
{
  sub_227D4DB58();
  type metadata accessor for LeaderboardSetImage(0);
  OUTLINED_FUNCTION_0_14();
  sub_227B9C2C4(v0, v1, &unk_227D52F14);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227B9BB9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_227D49188();
  OUTLINED_FUNCTION_9();
  v22 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E76C0, &unk_227D52E90);
  OUTLINED_FUNCTION_9();
  v24 = v8;
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for LeaderboardSetImage(0);
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v11);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227B9BAD0();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v10;
  v14 = v25;
  v28 = 0;
  *v13 = sub_227D4D8F8();
  v13[1] = v15;
  v27 = 1;
  OUTLINED_FUNCTION_2_15();
  sub_227B9C2C4(v16, v17, MEMORY[0x277CC9280]);
  sub_227D4D938();
  v18 = OUTLINED_FUNCTION_4_9();
  v19(v18);
  (*(v22 + 32))(v13 + *(v21 + 20), v7, v14);
  sub_227B9BF70(v13, v23);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_227B9BFD4(v13);
}

uint64_t sub_227B9BE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  type metadata accessor for LeaderboardSetImage(0);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_62_0();
  v8 = *(v7 + 32);

  return v8(&a4[v4], a3);
}

uint64_t sub_227B9BEF4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_14();
  v6 = sub_227B9C2C4(v4, v5, &unk_227D52ECC);

  return sub_227BA2640(a1, a2, &off_283B38650, v6);
}

uint64_t sub_227B9BF70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardSetImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227B9BFD4(uint64_t a1)
{
  v2 = type metadata accessor for LeaderboardSetImage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227B9C030(uint64_t a1)
{
  *(a1 + 16) = sub_227B9C2C4(&qword_27D7E76C8, type metadata accessor for LeaderboardSetImage, &unk_227D52ECC);
  result = sub_227B9C2C4(&qword_27D7E76D0, type metadata accessor for LeaderboardSetImage, &unk_227D52EE8);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_227B9C12C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  *(a1 + 8) = sub_227B9C2C4(a4, type metadata accessor for LeaderboardSetImage, a5);
  result = sub_227B9C2C4(a6, type metadata accessor for LeaderboardSetImage, a7);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227B9C1D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_0_14();
  v6 = sub_227B9C2C4(v4, v5, &unk_227D52ECC);
  result = sub_227BA2350(a1, &off_283B38650, v6, &off_283B38690);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_227B9C240(uint64_t a1)
{
  OUTLINED_FUNCTION_0_14();
  result = sub_227B9C2C4(v2, v3, &unk_227D52FEC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227B9C2C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227B9C30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_14();
  v8 = sub_227B9C2C4(v6, v7, &unk_227D52ECC);

  return sub_227BA24C0(a1, a2, a3, &off_283B38650, v8);
}

uint64_t sub_227B9C3C0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_14();
  v4 = sub_227B9C2C4(v2, v3, &unk_227D52FA8);

  return sub_227BA2760(a1, v4);
}

_BYTE *storeEnumTagSinglePayload for LeaderboardSetImage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227B9C524()
{
  result = qword_27D7EE860[0];
  if (!qword_27D7EE860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EE860);
  }

  return result;
}

unint64_t sub_227B9C57C()
{
  result = qword_27D7EE970;
  if (!qword_27D7EE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EE970);
  }

  return result;
}

unint64_t sub_227B9C5D4()
{
  result = qword_27D7EE978;
  if (!qword_27D7EE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EE978);
  }

  return result;
}

uint64_t sub_227B9C63C()
{
  OUTLINED_FUNCTION_104_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_227B9C69C()
{
  OUTLINED_FUNCTION_104_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_227B9C71C()
{
  OUTLINED_FUNCTION_104_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t sub_227B9C79C()
{
  OUTLINED_FUNCTION_104_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t sub_227B9C81C()
{
  OUTLINED_FUNCTION_104_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t sub_227B9C870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_227D4F750;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(v18 + 48) = a7;
  *(v18 + 56) = a8;
  sub_227D4CE58();
  sub_227BA29B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
  sub_227B9C9B0();
  v19 = sub_227D4CEC8();
  v21 = v20;

  *a9 = v19;
  a9[1] = v21;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

unint64_t sub_227B9C9B0()
{
  result = qword_27D7E7718;
  if (!qword_27D7E7718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7710, &qword_227D531D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7718);
  }

  return result;
}

uint64_t sub_227B9CA14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496C61636F6CLL && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_1(0x44496C61636F6CLL, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x8000000227D758F0 == a2;
    if (v6 || (OUTLINED_FUNCTION_5_1(0xD000000000000016, 0x8000000227D758F0) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x8000000227D75910 == a2;
      if (v7 || (OUTLINED_FUNCTION_5_1(0xD000000000000017, 0x8000000227D75910) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
        if (v8 || (OUTLINED_FUNCTION_5_1(0x656C61636F6CLL, 0xE600000000000000) & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1701667182 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = OUTLINED_FUNCTION_5_1(1701667182, 0xE400000000000000);

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

unint64_t sub_227B9CB80(char a1)
{
  result = 0x44496C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0x656C61636F6CLL;
      break;
    case 4:
      result = 1701667182;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227B9CC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227B9CA14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227B9CC58(uint64_t a1)
{
  v2 = sub_227B9CE64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227B9CC94(uint64_t a1)
{
  v2 = sub_227B9CE64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227B9CCD0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7720, &qword_227D531D8);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227B9CE64();
  sub_227D4DC08();
  v11 = *v3;
  v12 = v3[1];
  v27 = 0;
  OUTLINED_FUNCTION_4_0(v11, v12, &v27);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v26 = 1;
    OUTLINED_FUNCTION_4_0(v13, v14, &v26);
    v15 = v3[4];
    v16 = v3[5];
    v25 = 2;
    OUTLINED_FUNCTION_4_0(v15, v16, &v25);
    v17 = v3[6];
    v18 = v3[7];
    v24 = 3;
    OUTLINED_FUNCTION_4_0(v17, v18, &v24);
    v19 = v3[8];
    v20 = v3[9];
    v23 = 4;
    OUTLINED_FUNCTION_4_0(v19, v20, &v23);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_227B9CE64()
{
  result = qword_27D7EEA00[0];
  if (!qword_27D7EEA00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EEA00);
  }

  return result;
}

uint64_t sub_227B9CEB8()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_227D4DB58();
  sub_227B9D370();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

void *sub_227B9CF1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7730, &qword_227D531E0);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227B9CE64();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v32[0]) = 0;
  OUTLINED_FUNCTION_1_9();
  v11 = sub_227D4D8F8();
  v30 = v12;
  LOBYTE(v32[0]) = 1;
  OUTLINED_FUNCTION_1_9();
  v13 = sub_227D4D8F8();
  v29 = v14;
  v26 = v13;
  LOBYTE(v32[0]) = 2;
  OUTLINED_FUNCTION_1_9();
  v25 = sub_227D4D8F8();
  v28 = v15;
  LOBYTE(v32[0]) = 3;
  OUTLINED_FUNCTION_1_9();
  v24 = sub_227D4D8F8();
  v27 = v16;
  v33 = 4;
  v17 = sub_227D4D8F8();
  v19 = v18;
  (*(v7 + 8))(v10, v5);
  __src[0] = v11;
  __src[1] = v30;
  v20 = v29;
  __src[2] = v26;
  __src[3] = v29;
  v21 = v28;
  __src[4] = v25;
  __src[5] = v28;
  v22 = v27;
  __src[6] = v24;
  __src[7] = v27;
  __src[8] = v17;
  __src[9] = v19;
  sub_227B9D3C4(__src, v32);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v32[0] = v11;
  v32[1] = v30;
  v32[2] = v26;
  v32[3] = v20;
  v32[4] = v25;
  v32[5] = v21;
  v32[6] = v24;
  v32[7] = v22;
  v32[8] = v17;
  v32[9] = v19;
  sub_227B9D3FC(v32);
  return memcpy(a2, __src, 0x50uLL);
}

uint64_t sub_227B9D2A8()
{
  OUTLINED_FUNCTION_104_0();
  v2 = sub_227B9DBC8();

  return sub_227BA2640(v1, v0, &off_283B38760, v2);
}

uint64_t sub_227B9D300(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, v2, sizeof(__dst));
  sub_227D4DB58();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

unint64_t sub_227B9D370()
{
  result = qword_27D7E7728;
  if (!qword_27D7E7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7728);
  }

  return result;
}

unint64_t sub_227B9D458()
{
  result = qword_27D7E7738;
  if (!qword_27D7E7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7738);
  }

  return result;
}

unint64_t sub_227B9D4D8()
{
  result = qword_27D7E7740;
  if (!qword_27D7E7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7740);
  }

  return result;
}

unint64_t sub_227B9D52C()
{
  result = qword_27D7E7748;
  if (!qword_27D7E7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7748);
  }

  return result;
}

unint64_t sub_227B9D584()
{
  result = qword_27D7E7750;
  if (!qword_27D7E7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7750);
  }

  return result;
}

uint64_t sub_227B9D5D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227B9DBC8();
  result = sub_227BA2350(a1, &off_283B38760, v4, &off_283B387D8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_227B9D628(uint64_t a1)
{
  result = sub_227B9D650();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227B9D650()
{
  result = qword_27D7E7758;
  if (!qword_27D7E7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7758);
  }

  return result;
}

uint64_t sub_227B9D6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227B9D70C()
{
  result = qword_27D7E7760;
  if (!qword_27D7E7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7760);
  }

  return result;
}

unint64_t sub_227B9D760()
{
  result = qword_27D7E7768;
  if (!qword_27D7E7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7768);
  }

  return result;
}

uint64_t sub_227B9D7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227B9DBC8();

  return sub_227BA24C0(a1, a2, a3, &off_283B38760, v6);
}

void *sub_227B9D818@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_227B9CF1C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

uint64_t sub_227B9D87C(uint64_t a1)
{
  v2 = sub_227B9D52C();

  return sub_227BA2760(a1, v2);
}

uint64_t sub_227B9D8B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_227B9D8F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AchievementLocalization.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AchievementLocalization.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227B9DAC4()
{
  result = qword_27D7EF010[0];
  if (!qword_27D7EF010[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EF010);
  }

  return result;
}

unint64_t sub_227B9DB1C()
{
  result = qword_27D7EF120;
  if (!qword_27D7EF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EF120);
  }

  return result;
}

unint64_t sub_227B9DB74()
{
  result = qword_27D7EF128[0];
  if (!qword_27D7EF128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EF128);
  }

  return result;
}

unint64_t sub_227B9DBC8()
{
  result = qword_27D7E7770;
  if (!qword_27D7E7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7770);
  }

  return result;
}

uint64_t sub_227B9DC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_227D4F750;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 56) = a4;
  sub_227D4CE58();
  sub_227BA29B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
  sub_227B9C9B0();
  v15 = sub_227D4CEC8();
  v17 = v16;

  *a7 = v15;
  a7[1] = v17;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_227B9DD4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496C61636F6CLL && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_1(0x44496C61636F6CLL, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_1(0x656C61636F6CLL, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701667182 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_5_1(1701667182, 0xE400000000000000);

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_227B9DE34(char a1)
{
  if (!a1)
  {
    return 0x44496C61636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x656C61636F6CLL;
  }

  return 1701667182;
}

uint64_t sub_227B9DE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227B9DD4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227B9DEBC(uint64_t a1)
{
  v2 = sub_227B9E090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227B9DEF8(uint64_t a1)
{
  v2 = sub_227B9E090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227B9DF34(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7778, &qword_227D53548);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227B9E090();
  sub_227D4DC08();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  OUTLINED_FUNCTION_4_0(v11, v12, &v21);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v20 = 1;
    OUTLINED_FUNCTION_4_0(v13, v14, &v20);
    v15 = v3[4];
    v16 = v3[5];
    v19 = 2;
    OUTLINED_FUNCTION_4_0(v15, v16, &v19);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_227B9E090()
{
  result = qword_27D7EF1B0[0];
  if (!qword_27D7EF1B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EF1B0);
  }

  return result;
}

uint64_t sub_227B9E0E4()
{
  sub_227D4DB58();
  sub_227B9E434();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227B9E148@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7788, &qword_227D53550);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227B9E090();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  v11 = sub_227D4D8F8();
  v24 = v12;
  v26 = 1;
  v22 = sub_227D4D8F8();
  v23 = v13;
  v25 = 2;
  v14 = sub_227D4D8F8();
  v15 = v10;
  v17 = v16;
  (*(v7 + 8))(v15, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v19 = v24;
  *a2 = v11;
  a2[1] = v19;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v14;
  a2[5] = v17;
  return result;
}

uint64_t sub_227B9E374()
{
  OUTLINED_FUNCTION_104_0();
  v2 = sub_227B9EBC8();

  return sub_227BA2640(v1, v0, &off_283B38948, v2);
}

uint64_t sub_227B9E3CC(uint64_t a1, uint64_t a2)
{
  sub_227D4DB58();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

unint64_t sub_227B9E434()
{
  result = qword_27D7E7780;
  if (!qword_27D7E7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7780);
  }

  return result;
}

unint64_t sub_227B9E4B4()
{
  result = qword_27D7E7790;
  if (!qword_27D7E7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7790);
  }

  return result;
}

unint64_t sub_227B9E534()
{
  result = qword_27D7E7798;
  if (!qword_27D7E7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7798);
  }

  return result;
}

unint64_t sub_227B9E588()
{
  result = qword_27D7E77A0;
  if (!qword_27D7E77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77A0);
  }

  return result;
}

unint64_t sub_227B9E5E0()
{
  result = qword_27D7E77A8;
  if (!qword_27D7E77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77A8);
  }

  return result;
}

uint64_t sub_227B9E634@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227B9EBC8();
  result = sub_227BA2350(a1, &off_283B38948, v4, &off_283B389C0);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_227B9E684(uint64_t a1)
{
  result = sub_227B9E6AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227B9E6AC()
{
  result = qword_27D7E77B0;
  if (!qword_27D7E77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77B0);
  }

  return result;
}

uint64_t sub_227B9E72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227B9E768()
{
  result = qword_27D7E77B8;
  if (!qword_27D7E77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77B8);
  }

  return result;
}

unint64_t sub_227B9E7BC()
{
  result = qword_27D7E77C0;
  if (!qword_27D7E77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77C0);
  }

  return result;
}

uint64_t sub_227B9E810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227B9EBC8();

  return sub_227BA24C0(a1, a2, a3, &off_283B38948, v6);
}

double sub_227B9E874@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_227B9E148(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_227B9E8D0(uint64_t a1)
{
  v2 = sub_227B9E588();

  return sub_227BA2760(a1, v2);
}

uint64_t sub_227B9E90C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t getEnumTagSinglePayload for ChallengeLocalization.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ChallengeLocalization.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227B9EAC4()
{
  result = qword_27D7EF7C0[0];
  if (!qword_27D7EF7C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EF7C0);
  }

  return result;
}

unint64_t sub_227B9EB1C()
{
  result = qword_27D7EF8D0;
  if (!qword_27D7EF8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EF8D0);
  }

  return result;
}

unint64_t sub_227B9EB74()
{
  result = qword_27D7EF8D8[0];
  if (!qword_27D7EF8D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EF8D8);
  }

  return result;
}

unint64_t sub_227B9EBC8()
{
  result = qword_27D7E77C8;
  if (!qword_27D7E77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77C8);
  }

  return result;
}

uint64_t sub_227B9EC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_227D4F750;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = a3;
  *(v16 + 56) = a4;
  sub_227D4CE58();
  sub_227BA29B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
  sub_227B9C9B0();
  v17 = sub_227D4CEC8();
  v19 = v18;

  *a9 = v17;
  a9[1] = v19;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_227B9ED58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496C61636F6CLL && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_1(0x44496C61636F6CLL, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_1(0x656C61636F6CLL, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (OUTLINED_FUNCTION_5_1(1701667182, 0xE400000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_7_2();
        if (a1 == v8 && a2 == v9)
        {

          return 3;
        }

        else
        {
          v11 = OUTLINED_FUNCTION_5_1(v8, v9);

          if (v11)
          {
            return 3;
          }

          else
          {
            return 4;
          }
        }
      }
    }
  }
}

uint64_t sub_227B9EE68(char a1)
{
  result = 0x44496C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x656C61636F6CLL;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = OUTLINED_FUNCTION_7_2();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227B9EEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227B9ED58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227B9EF1C(uint64_t a1)
{
  v2 = sub_227B9F10C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227B9EF58(uint64_t a1)
{
  v2 = sub_227B9F10C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227B9EF94(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E77D0, &qword_227D538A8);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227B9F10C();
  sub_227D4DC08();
  v11 = *v3;
  v12 = v3[1];
  v24 = 0;
  OUTLINED_FUNCTION_4_0(v11, v12, &v24);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v23 = 1;
    OUTLINED_FUNCTION_4_0(v13, v14, &v23);
    v15 = v3[4];
    v16 = v3[5];
    v22 = 2;
    OUTLINED_FUNCTION_4_0(v15, v16, &v22);
    v17 = v3[6];
    v18 = v3[7];
    v21 = 3;
    OUTLINED_FUNCTION_4_0(v17, v18, &v21);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_227B9F10C()
{
  result = qword_27D7EF960[0];
  if (!qword_27D7EF960[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EF960);
  }

  return result;
}

uint64_t sub_227B9F160()
{
  OUTLINED_FUNCTION_6_4();
  sub_227D4DB58();
  sub_227B9F518();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227B9F1B4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E77E0, &qword_227D538B0);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227B9F10C();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v34[0]) = 0;
  OUTLINED_FUNCTION_5_9();
  v11 = sub_227D4D8F8();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  OUTLINED_FUNCTION_5_9();
  v13 = sub_227D4D8F8();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  OUTLINED_FUNCTION_5_9();
  v25 = sub_227D4D8F8();
  v27 = v15;
  v35 = 3;
  v16 = sub_227D4D8F8();
  v18 = v17;
  (*(v7 + 8))(v10, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_227B9F56C(&v30, v34);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_227B9F5A4(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

uint64_t sub_227B9F468()
{
  OUTLINED_FUNCTION_104_0();
  v2 = sub_227B9FD3C();

  return sub_227BA2640(v1, v0, &off_283B38B28, v2);
}

uint64_t sub_227B9F4C0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_4();
  sub_227D4DB58();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

unint64_t sub_227B9F518()
{
  result = qword_27D7E77D8;
  if (!qword_27D7E77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77D8);
  }

  return result;
}

unint64_t sub_227B9F600()
{
  result = qword_27D7E77E8;
  if (!qword_27D7E77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77E8);
  }

  return result;
}

unint64_t sub_227B9F680()
{
  result = qword_27D7E77F0;
  if (!qword_27D7E77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77F0);
  }

  return result;
}

unint64_t sub_227B9F6D4()
{
  result = qword_27D7E77F8;
  if (!qword_27D7E77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77F8);
  }

  return result;
}

unint64_t sub_227B9F72C()
{
  result = qword_27D7E7800;
  if (!qword_27D7E7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7800);
  }

  return result;
}

uint64_t sub_227B9F780@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227B9FD3C();
  result = sub_227BA2350(a1, &off_283B38B28, v4, &off_283B38BA0);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_227B9F7D0(uint64_t a1)
{
  result = sub_227B9F7F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227B9F7F8()
{
  result = qword_27D7E7808;
  if (!qword_27D7E7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7808);
  }

  return result;
}

uint64_t sub_227B9F878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227B9F8B4()
{
  result = qword_27D7E7810;
  if (!qword_27D7E7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7810);
  }

  return result;
}

unint64_t sub_227B9F908()
{
  result = qword_27D7E7818;
  if (!qword_27D7E7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7818);
  }

  return result;
}

uint64_t sub_227B9F95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227B9FD3C();

  return sub_227BA24C0(a1, a2, a3, &off_283B38B28, v6);
}

double sub_227B9F9C0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_227B9F1B4(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
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

uint64_t sub_227B9FA30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_227B9FA70(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for GameActivityLocalization.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GameActivityLocalization.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227B9FC38()
{
  result = qword_27D7EFF70[0];
  if (!qword_27D7EFF70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EFF70);
  }

  return result;
}

unint64_t sub_227B9FC90()
{
  result = qword_27D7F0080;
  if (!qword_27D7F0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F0080);
  }

  return result;
}

unint64_t sub_227B9FCE8()
{
  result = qword_27D7F0088[0];
  if (!qword_27D7F0088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F0088);
  }

  return result;
}

unint64_t sub_227B9FD3C()
{
  result = qword_27D7E7820;
  if (!qword_27D7E7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7820);
  }

  return result;
}

uint64_t sub_227B9FDC0()
{
  OUTLINED_FUNCTION_104_0();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t sub_227B9FE40()
{
  OUTLINED_FUNCTION_104_0();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t sub_227B9FEC0()
{
  OUTLINED_FUNCTION_104_0();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t sub_227B9FF40()
{
  OUTLINED_FUNCTION_104_0();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

void *sub_227B9FF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_227D4F750;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = a8;
  *(v17 + 56) = a10;
  sub_227D4CE58();
  sub_227BA29B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
  sub_227B9C9B0();
  v18 = sub_227D4CEC8();
  v20 = v19;

  *(&__src[4] + 1) = *v29;
  HIDWORD(__src[4]) = *&v29[3];
  __src[0] = v18;
  __src[1] = v20;
  __src[2] = a13;
  __src[3] = a14;
  LOBYTE(__src[4]) = a3;
  __src[5] = a4;
  __src[6] = a5;
  __src[7] = a6;
  __src[8] = a7;
  __src[9] = a8;
  __src[10] = a10;
  __src[11] = a11;
  __src[12] = a12;
  v31[0] = v18;
  v31[1] = v20;
  v31[2] = a13;
  v31[3] = a14;
  v32 = a3;
  *v33 = *v29;
  *&v33[3] = *&v29[3];
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v39 = a10;
  v40 = a11;
  v41 = a12;
  sub_227BA0148(__src, v28);
  sub_227BA0180(v31);
  return memcpy(a9, __src, 0x68uLL);
}

uint64_t sub_227BA01B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496C61636F6CLL && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_1(0x44496C61636F6CLL, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_7_2();
    v8 = a1 == v6 && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_5_1(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == 0xD000000000000011 && 0x8000000227D75930 == a2;
      if (v9 || (OUTLINED_FUNCTION_5_1(0xD000000000000011, 0x8000000227D75930) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_7_7();
        v12 = a1 == v10 && a2 == v11;
        if (v12 || (OUTLINED_FUNCTION_5_1(v10, v11) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v13 = a1 == 0xD000000000000017 && 0x8000000227D75950 == a2;
          if (v13 || (OUTLINED_FUNCTION_5_1(0xD000000000000017, 0x8000000227D75950) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v14 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
            if (v14 || (OUTLINED_FUNCTION_5_1(0x656C61636F6CLL, 0xE600000000000000) & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 1701667182 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v16 = OUTLINED_FUNCTION_5_1(1701667182, 0xE400000000000000);

              if (v16)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_227BA036C(char a1)
{
  result = 0x44496C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_7_2();
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = OUTLINED_FUNCTION_7_7();
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x656C61636F6CLL;
      break;
    case 6:
      result = 1701667182;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227BA0440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BA01B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BA0474(uint64_t a1)
{
  v2 = sub_227BA06F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BA04B0(uint64_t a1)
{
  v2 = sub_227BA06F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227BA04EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7828, &qword_227D53C18);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA06F4();
  sub_227D4DC08();
  v12[15] = 0;
  OUTLINED_FUNCTION_2_5();
  sub_227D4D9C8();
  if (!v2)
  {
    v12[14] = 1;
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    v12[13] = *(v3 + 32);
    v12[12] = 2;
    sub_227BA0748();
    sub_227D4D9A8();
    v12[11] = 3;
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    v12[10] = 4;
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    v12[9] = 5;
    OUTLINED_FUNCTION_2_5();
    sub_227D4D9C8();
    v12[8] = 6;
    OUTLINED_FUNCTION_2_5();
    sub_227D4D9C8();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_227BA06F4()
{
  result = qword_27D7F0110[0];
  if (!qword_27D7F0110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F0110);
  }

  return result;
}

unint64_t sub_227BA0748()
{
  result = qword_27D7E7830;
  if (!qword_27D7E7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7830);
  }

  return result;
}

uint64_t sub_227BA079C()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_227D4DB58();
  sub_227BA0D38();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

void *sub_227BA0800@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7840, &qword_227D53C20);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA06F4();
  sub_227D4DBF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v41[0]) = 0;
    v11 = sub_227D4D8F8();
    v38 = a2;
    v39 = v12;
    OUTLINED_FUNCTION_0_17(1);
    v13 = sub_227D4D8A8();
    v15 = v14;
    LOBYTE(__src[0]) = 2;
    sub_227BA0D8C();
    sub_227D4D8D8();
    v51 = LOBYTE(v41[0]);
    OUTLINED_FUNCTION_0_17(3);
    v35 = sub_227D4D8A8();
    v36 = v13;
    v37 = v16;
    OUTLINED_FUNCTION_0_17(4);
    v17 = sub_227D4D8A8();
    v19 = v18;
    v34 = v17;
    v33 = v11;
    OUTLINED_FUNCTION_0_17(5);
    v20 = sub_227D4D8F8();
    v22 = v21;
    v32 = v20;
    v52 = 6;
    v23 = sub_227D4D8F8();
    v24 = *(v7 + 8);
    v25 = v23;
    v31 = v26;
    v24(v10, v5);
    v27 = v33;
    __src[0] = v33;
    __src[1] = v39;
    __src[2] = v36;
    __src[3] = v15;
    LOBYTE(__src[4]) = v51;
    v28 = v37;
    __src[5] = v35;
    __src[6] = v37;
    __src[7] = v34;
    __src[8] = v19;
    __src[9] = v32;
    __src[10] = v22;
    v29 = v31;
    __src[11] = v25;
    __src[12] = v31;
    sub_227BA0148(__src, v41);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v41[0] = v27;
    v41[1] = v39;
    v41[2] = v36;
    v41[3] = v15;
    v42 = v51;
    v43 = v35;
    v44 = v28;
    v45 = v34;
    v46 = v19;
    v47 = v32;
    v48 = v22;
    v49 = v25;
    v50 = v29;
    sub_227BA0180(v41);
    return memcpy(v38, __src, 0x68uLL);
  }
}

uint64_t sub_227BA0C70()
{
  OUTLINED_FUNCTION_104_0();
  v2 = sub_227BA1588();

  return sub_227BA2640(v1, v0, &off_283B38D08, v2);
}

uint64_t sub_227BA0CC8(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, v2, sizeof(__dst));
  sub_227D4DB58();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

unint64_t sub_227BA0D38()
{
  result = qword_27D7E7838;
  if (!qword_27D7E7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7838);
  }

  return result;
}

unint64_t sub_227BA0D8C()
{
  result = qword_27D7E7848;
  if (!qword_27D7E7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7848);
  }

  return result;
}

unint64_t sub_227BA0E0C()
{
  result = qword_27D7E7850;
  if (!qword_27D7E7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7850);
  }

  return result;
}

unint64_t sub_227BA0E8C()
{
  result = qword_27D7E7858;
  if (!qword_27D7E7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7858);
  }

  return result;
}

unint64_t sub_227BA0EE0()
{
  result = qword_27D7E7860;
  if (!qword_27D7E7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7860);
  }

  return result;
}

unint64_t sub_227BA0F38()
{
  result = qword_27D7E7868;
  if (!qword_27D7E7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7868);
  }

  return result;
}

uint64_t sub_227BA0F8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227BA1588();
  result = sub_227BA2350(a1, &off_283B38D08, v4, &off_283B38D80);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_227BA0FDC(uint64_t a1)
{
  result = sub_227BA1004();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227BA1004()
{
  result = qword_27D7E7870;
  if (!qword_27D7E7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7870);
  }

  return result;
}

uint64_t sub_227BA1084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227BA10C0()
{
  result = qword_27D7E7878;
  if (!qword_27D7E7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7878);
  }

  return result;
}

unint64_t sub_227BA1114()
{
  result = qword_27D7E7880;
  if (!qword_27D7E7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7880);
  }

  return result;
}

uint64_t sub_227BA1168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227BA1588();

  return sub_227BA24C0(a1, a2, a3, &off_283B38D08, v6);
}

void *sub_227BA11CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_227BA0800(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

uint64_t sub_227BA1230(uint64_t a1)
{
  v2 = sub_227BA0EE0();

  return sub_227BA2760(a1, v2);
}

uint64_t sub_227BA1274(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_227BA12B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LeaderboardLocalization.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LeaderboardLocalization.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227BA1484()
{
  result = qword_27D7F0720[0];
  if (!qword_27D7F0720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F0720);
  }

  return result;
}

unint64_t sub_227BA14DC()
{
  result = qword_27D7F0830;
  if (!qword_27D7F0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F0830);
  }

  return result;
}

unint64_t sub_227BA1534()
{
  result = qword_27D7F0838[0];
  if (!qword_27D7F0838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F0838);
  }

  return result;
}

unint64_t sub_227BA1588()
{
  result = qword_27D7E7888;
  if (!qword_27D7E7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7888);
  }

  return result;
}

uint64_t sub_227BA15F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_227D4F750;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 56) = a4;
  sub_227D4CE58();
  sub_227BA29B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
  sub_227B9C9B0();
  v15 = sub_227D4CEC8();
  v17 = v16;

  *a7 = v15;
  a7[1] = v17;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_227BA170C(uint64_t a1)
{
  v2 = sub_227BA18E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BA1748(uint64_t a1)
{
  v2 = sub_227BA18E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227BA1784(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7890, &qword_227D53F98);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA18E0();
  sub_227D4DC08();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  OUTLINED_FUNCTION_4_0(v11, v12, &v21);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v20 = 1;
    OUTLINED_FUNCTION_4_0(v13, v14, &v20);
    v15 = v3[4];
    v16 = v3[5];
    v19 = 2;
    OUTLINED_FUNCTION_4_0(v15, v16, &v19);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_227BA18E0()
{
  result = qword_27D7F08C0[0];
  if (!qword_27D7F08C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F08C0);
  }

  return result;
}

uint64_t sub_227BA1934()
{
  sub_227D4DB58();
  sub_227BA1C1C();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227BA1998@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E78A0, &qword_227D53FA0);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA18E0();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  v11 = sub_227D4D8F8();
  v24 = v12;
  v26 = 1;
  v22 = sub_227D4D8F8();
  v23 = v13;
  v25 = 2;
  v14 = sub_227D4D8F8();
  v15 = v10;
  v17 = v16;
  (*(v7 + 8))(v15, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v19 = v24;
  *a2 = v11;
  a2[1] = v19;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v14;
  a2[5] = v17;
  return result;
}

uint64_t sub_227BA1BC4()
{
  OUTLINED_FUNCTION_104_0();
  v2 = sub_227BA22E8();

  return sub_227BA2640(v1, v0, &off_283B38EF8, v2);
}

unint64_t sub_227BA1C1C()
{
  result = qword_27D7E7898;
  if (!qword_27D7E7898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7898);
  }

  return result;
}

unint64_t sub_227BA1C9C()
{
  result = qword_27D7E78A8;
  if (!qword_27D7E78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E78A8);
  }

  return result;
}

unint64_t sub_227BA1D1C()
{
  result = qword_27D7E78B0;
  if (!qword_27D7E78B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E78B0);
  }

  return result;
}

unint64_t sub_227BA1D70()
{
  result = qword_27D7E78B8;
  if (!qword_27D7E78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E78B8);
  }

  return result;
}

unint64_t sub_227BA1DC8()
{
  result = qword_27D7E78C0;
  if (!qword_27D7E78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E78C0);
  }

  return result;
}

uint64_t sub_227BA1E1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227BA22E8();
  result = sub_227BA2350(a1, &off_283B38EF8, v4, &off_283B38F70);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_227BA1E6C(uint64_t a1)
{
  result = sub_227BA1E94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227BA1E94()
{
  result = qword_27D7E78C8;
  if (!qword_27D7E78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E78C8);
  }

  return result;
}

uint64_t sub_227BA1F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227BA1F50()
{
  result = qword_27D7E78D0;
  if (!qword_27D7E78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E78D0);
  }

  return result;
}

unint64_t sub_227BA1FA4()
{
  result = qword_27D7E78D8;
  if (!qword_27D7E78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E78D8);
  }

  return result;
}

uint64_t sub_227BA1FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227BA22E8();

  return sub_227BA24C0(a1, a2, a3, &off_283B38EF8, v6);
}

double sub_227BA205C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_227BA1998(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_227BA20B8(uint64_t a1)
{
  v2 = sub_227BA1D70();

  return sub_227BA2760(a1, v2);
}

_BYTE *storeEnumTagSinglePayload for LeaderboardSetLocalization.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227BA21E4()
{
  result = qword_27D7F0ED0[0];
  if (!qword_27D7F0ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F0ED0);
  }

  return result;
}

unint64_t sub_227BA223C()
{
  result = qword_27D7F0FE0;
  if (!qword_27D7F0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F0FE0);
  }

  return result;
}

unint64_t sub_227BA2294()
{
  result = qword_27D7F0FE8[0];
  if (!qword_27D7F0FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F0FE8);
  }

  return result;
}

unint64_t sub_227BA22E8()
{
  result = qword_27D7E78E0;
  if (!qword_27D7E78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E78E0);
  }

  return result;
}

uint64_t sub_227BA2350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_227D4F750;
  BYTE8(v11) = 0;
  *&v11 = (*(a2 + 8))(a1, a2);
  sub_227D4D7B8();
  *(v7 + 32) = *(&v11 + 1);
  *(v7 + 40) = 0xE000000000000000;
  *(v7 + 48) = (*(a4 + 8))(a1, a4);
  *(v7 + 56) = v8;
  (*(a4 + 16))(a1, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
  sub_227B9C9B0();
  v9 = sub_227D4CEC8();

  return v9;
}

uint64_t sub_227BA24C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  sub_227D4D678();
  sub_227D4D678();
  swift_getAssociatedConformanceWitness();
  v14 = sub_227D4CF38();
  v15 = *(v7 + 8);
  v15(v11, AssociatedTypeWitness);
  v15(v13, AssociatedTypeWitness);
  return v14 & 1;
}

uint64_t sub_227BA2640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_227D4D678();
  swift_getAssociatedConformanceWitness();
  sub_227D4CEA8();
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_227BA2760(uint64_t a1, uint64_t a2)
{
  v2 = sub_227D4CFE8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_227D48DB8();
  MEMORY[0x28223BE20](v3 - 8);
  sub_227D48DF8();
  swift_allocObject();
  sub_227D48DE8();
  sub_227D48DA8();
  sub_227D48DC8();
  v4 = sub_227D48DD8();
  v6 = v5;
  sub_227D4CFD8();
  v7 = sub_227D4CFB8();
  v9 = v8;
  sub_227B728BC(v4, v6);

  if (!v9)
  {
    return 0xD000000000000015;
  }

  return v7;
}

uint64_t sub_227BA29FC@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v45 = sub_227D4DA38();
  v46 = v4;
  v5 = sub_227BA2B5C();
  v6 = MEMORY[0x277D837D0];
  v14 = OUTLINED_FUNCTION_1_10(v5, v7, v8, v9, v10, v11, v12, v13, MEMORY[0x277D837D0], v5, v5, v5, a2, a3, v45, v46, 123);
  OUTLINED_FUNCTION_0_18(v14, v15);

  v16 = sub_227D4DA38();
  v24 = OUTLINED_FUNCTION_1_10(v16, v17, v18, v19, v20, v21, v22, v23, v37, v38, v5, v5, v40, v43, v16, v17, 123);
  OUTLINED_FUNCTION_0_18(v24, v25);

  v34 = OUTLINED_FUNCTION_1_10(v26, v27, v28, v29, v30, v31, v32, v33, v6, v5, v5, v5, v41, v44, a1, v41, 123);
  OUTLINED_FUNCTION_0_18(v34, v35);

  sub_227D49168();
}

unint64_t sub_227BA2B5C()
{
  result = qword_27D7E78E8;
  if (!qword_27D7E78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E78E8);
  }

  return result;
}

uint64_t sub_227BA2BB0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_227D4F750;
  v9[8] = 0;
  *v9 = (*(*(a2 + 8) + 8))(a1);
  sub_227D4D7B8();
  *(v4 + 32) = *&v9[1];
  *(v4 + 40) = 0xE000000000000000;
  v5 = *(a2 + 32);
  *&v9[1] = (*(v5 + 8))(a1, v5);
  *&v9[9] = v6;
  MEMORY[0x22AAA5DA0](1735290926, 0xE400000000000000);
  *(v4 + 48) = *&v9[1];
  *(v4 + 56) = *&v9[9];
  (*(v5 + 16))(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
  sub_227B9C9B0();
  v7 = sub_227D4CEC8();

  return v7;
}

id sub_227BA2D3C(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = sub_227D49188();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  (*(a2 + 56))(a1, a2);
  sub_227D49148();
  (*(v5 + 8))(v7, v4);
  v9 = sub_227D4CF78();

  v16 = 0;
  v10 = [v8 attributesOfItemAtPath:v9 error:&v16];

  v11 = v16;
  if (v10)
  {
    type metadata accessor for FileAttributeKey();
    sub_227BA3824(&qword_27D7E78F0, &unk_227D545E8);
    v12 = sub_227D4CE18();
    v13 = v11;

    sub_227BA3010(v12, &v17, *MEMORY[0x277CCA1C0]);

    if (v18)
    {
      if (swift_dynamicCast())
      {
        return v16;
      }
    }

    else
    {
      sub_227BA3074(&v17);
    }

    return 0;
  }

  else
  {
    v15 = v16;
    sub_227D49098();

    return swift_willThrow();
  }
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_27D7E78F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27D7E78F8);
    }
  }
}

double sub_227BA3010@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_227BA3868(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_227B1B268(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_227BA3074(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C80, &unk_227D4F780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227BA30F0(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227BA3208;

  return v7(a1, a2);
}

uint64_t sub_227BA3208(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_227BA336C(uint64_t a1)
{
  v1 = sub_227D4CFA8();
  v2 = MEMORY[0x22AAA5E20](v1);

  return v2;
}

uint64_t sub_227BA33AC(uint64_t a1, uint64_t a2)
{
  sub_227D4CFA8();
  sub_227D4D048();
}

uint64_t sub_227BA3408(uint64_t a1, uint64_t a2)
{
  sub_227D4CFA8();
  sub_227D4DB58();
  sub_227D4D048();
  v2 = sub_227D4DB98();

  return v2;
}

uint64_t sub_227BA348C(uint64_t a1, id *a2)
{
  result = sub_227D4CF88();
  *a2 = 0;
  return result;
}

uint64_t sub_227BA3508(uint64_t a1, id *a2)
{
  v3 = sub_227D4CF98();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_227BA3588@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227BA35B0(a2);
  *a1 = result;
  return result;
}

uint64_t sub_227BA35B0(uint64_t a1)
{
  sub_227D4CFA8();
  v1 = sub_227D4CF78();

  return v1;
}

uint64_t sub_227BA35F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_227D4CFA8();
  v4 = v3;
  if (v2 == sub_227D4CFA8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_227D4DA78();
  }

  return v7 & 1;
}

uint64_t sub_227BA3678@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_227D4CF78();

  *a2 = v3;
  return result;
}

uint64_t sub_227BA36C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BA36EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BA36F0(uint64_t a1)
{
  v2 = sub_227BA3824(&qword_27D7E78F0, &unk_227D545E8);
  v3 = sub_227BA3824(&qword_27D7E7918, &unk_227D5453C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_227BA3824(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileAttributeKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227BA3868(uint64_t a1)
{
  sub_227D4CFA8();
  sub_227D4DB58();
  sub_227D4D048();
  v2 = sub_227D4DB98();

  return sub_227BA38FC(a1, v2);
}

unint64_t sub_227BA38FC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_227D4CFA8();
    v7 = v6;
    if (v5 == sub_227D4CFA8() && v7 == v8)
    {

      return i;
    }

    v10 = sub_227D4DA78();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_227BA39F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_227D4D6E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7920, &unk_227D54630);
  swift_getTupleTypeMetadata2();
  sub_227D4D208();
  v37 = sub_227D4CE28();
  result = (*(a4 + 24))(a3, a4);
  v7 = 0;
  v9 = result + 64;
  v8 = *(result + 64);
  v32 = result;
  v10 = 1 << *(result + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v30 = v13;
  v31 = result + 64;
  if ((v11 & v8) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      return v37;
    }

    v12 = *(v9 + 8 * v14);
    ++v7;
    if (v12)
    {
      v7 = v14;
      do
      {
LABEL_8:
        v33 = v12;
        v34 = v7;
        v15 = *(*(v32 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v12)))));

        sub_227D4CE58();
        swift_getAtPartialKeyPath();
        v16 = *(v15 + 16);
        if (v16)
        {
          v17 = v15 + 56;
          do
          {
            v18 = *(v17 - 24);
            v19 = *(v17 - 16);
            v20 = *(v17 - 8);
            sub_227B1B268(v36, v35);
            sub_227D4CE58();

            LOBYTE(v20) = sub_227BADC0C(v35, v18, v19, v20);
            sub_227BA3074(v35);
            if (v20)
            {
            }

            else
            {
              v35[0] = sub_227D4CE58();
              OUTLINED_FUNCTION_0_19();
              sub_227D4CE48();
              swift_getWitnessTable();
              v21 = sub_227D4D138();

              if ((v21 & 1) == 0)
              {
                v35[0] = MEMORY[0x277D84F90];
                OUTLINED_FUNCTION_0_19();
                sub_227D4CE68();

                sub_227D4CE88();
              }

              OUTLINED_FUNCTION_0_19();
              sub_227D4CE68();
              v23 = sub_227D4CE78();
              v24 = *v22;
              if (*v22)
              {
                v25 = v22;
                sub_227D4CE58();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *v25 = v24;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v24 = sub_227BA3E28(0, *(v24 + 2) + 1, 1, v24);
                  *v25 = v24;
                }

                v28 = *(v24 + 2);
                v27 = *(v24 + 3);
                if (v28 >= v27 >> 1)
                {
                  v24 = sub_227BA3E28((v27 > 1), v28 + 1, 1, v24);
                  *v25 = v24;
                }

                *(v24 + 2) = v28 + 1;
                v29 = &v24[16 * v28];
                *(v29 + 4) = v18;
                *(v29 + 5) = v19;
                v23(v35, 0);
              }

              else
              {
                v23(v35, 0);
              }
            }

            v17 += 32;
            --v16;
          }

          while (v16);
        }

        v12 = (v33 - 1) & v33;

        result = __swift_destroy_boxed_opaque_existential_0(v36);
        v13 = v30;
        v9 = v31;
        v7 = v34;
      }

      while (v12);
    }
  }

  __break(1u);
  return result;
}

char *sub_227BA3E28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7928, qword_227D546B8);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_227BA3F3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_227BA3F7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_227BA3FF0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v2, a1);
  return sub_227BAD8EC(v6, a1, a2);
}

uint64_t sub_227BA40EC(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_227BA4158()
{
  v1 = *(v0 + 24);
  sub_227D4CE58();
  return v1;
}

uint64_t sub_227BA4188(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_227BA4220()
{
  v1 = *(v0 + 48);
  sub_227D4CE58();
  return v1;
}

uint64_t sub_227BA4250(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_227BA4288@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 41) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  return result;
}

uint64_t sub_227BA42AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000227D75990 == a2;
  if (v3 || (OUTLINED_FUNCTION_5_1(0xD000000000000012, 0x8000000227D75990) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465766968637261 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_1(0x6465766968637261, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73746E696F70 && a2 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_5_1(0x73746E696F70, 0xE600000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_5_6();
        v10 = a1 == v8 && a2 == v9;
        if (v10 || (OUTLINED_FUNCTION_5_1(v8, v9) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == 0x6261746165706572 && a2 == 0xEA0000000000656CLL;
          if (v11 || (OUTLINED_FUNCTION_5_1(0x6261746165706572, 0xEA0000000000656CLL) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = a1 == 0xD000000000000010 && 0x8000000227D759B0 == a2;
            if (v12 || (OUTLINED_FUNCTION_5_1(0xD000000000000010, 0x8000000227D759B0) & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000010 && 0x8000000227D759D0 == a2)
            {

              return 6;
            }

            else
            {
              v14 = OUTLINED_FUNCTION_5_1(0xD000000000000010, 0x8000000227D759D0);

              if (v14)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_227BA4494(char a1)
{
  result = 0x6465766968637261;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x73746E696F70;
      break;
    case 3:
      result = OUTLINED_FUNCTION_5_6();
      break;
    case 4:
      result = 0x6261746165706572;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_227BA4570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BA42AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BA4598(uint64_t a1)
{
  v2 = sub_227BA4984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BA45D4(uint64_t a1)
{
  v2 = sub_227BA4984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227BA4610@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7930, &qword_227D546F8);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA4984();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7940, &qword_227D54700);
  LOBYTE(v31) = 0;
  sub_227BA4C90(&qword_27D7E7948, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_227D4D8D8();
  v12 = v35;
  if (!v35)
  {
    v12 = sub_227D4CE28();
  }

  OUTLINED_FUNCTION_0_20(1);
  v13 = sub_227D4D908();
  OUTLINED_FUNCTION_0_20(2);
  v29 = sub_227D4D928();
  OUTLINED_FUNCTION_0_20(3);
  v28 = sub_227D4D8F8();
  v30 = v14;
  OUTLINED_FUNCTION_0_20(4);
  v44 = sub_227D4D908();
  OUTLINED_FUNCTION_0_20(5);
  v27 = sub_227D4D908();
  v45 = 6;
  v15 = sub_227D4D8F8();
  v26 = v13 & 1;
  v44 &= 1u;
  v16 = v27 & 1;
  v17 = v15;
  v18 = v10;
  v20 = v19;
  (*(v7 + 8))(v18, v5);
  *&v31 = v12;
  BYTE8(v31) = v26;
  v21 = v28;
  *&v32 = v29;
  *(&v32 + 1) = v28;
  v22 = v30;
  *&v33 = v30;
  BYTE8(v33) = v44;
  BYTE9(v33) = v16;
  *&v34 = v17;
  *(&v34 + 1) = v20;
  sub_227BA49D8(&v31, &v35);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v35 = v12;
  v36 = v26;
  v37 = v29;
  v38 = v21;
  v39 = v22;
  v40 = v44;
  v41 = v16;
  v42 = v17;
  v43 = v20;
  result = sub_227BA4A10(&v35);
  v23 = v32;
  *a2 = v31;
  a2[1] = v23;
  v24 = v34;
  a2[2] = v33;
  a2[3] = v24;
  return result;
}

unint64_t sub_227BA4984()
{
  result = qword_27D7E7938;
  if (!qword_27D7E7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7938);
  }

  return result;
}

uint64_t sub_227BA4A40(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7950, &qword_227D54708);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA4984();
  sub_227D4DC08();
  v13 = *v3;
  v12[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7940, &qword_227D54700);
  sub_227BA4C90(&qword_27D7E7958, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_227D4DA08();
  if (!v2)
  {
    v12[6] = 1;
    OUTLINED_FUNCTION_2_1();
    sub_227D4D9D8();
    v12[5] = 2;
    OUTLINED_FUNCTION_2_1();
    sub_227D4D9F8();
    v12[4] = 3;
    sub_227D4D9C8();
    v12[3] = 4;
    OUTLINED_FUNCTION_2_1();
    sub_227D4D9D8();
    v12[2] = 5;
    OUTLINED_FUNCTION_2_1();
    sub_227D4D9D8();
    v12[1] = 6;
    sub_227D4D9C8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_227BA4C90(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7940, &qword_227D54700);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227BA4CFC()
{
  OUTLINED_FUNCTION_6_4();
  sub_227D4DB58();
  sub_227BA4DB4();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227BA4D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_227BA5510();

  return sub_227BA2640(a1, a2, &off_283B391B0, v4);
}

unint64_t sub_227BA4DB4()
{
  result = qword_27D7E7960;
  if (!qword_27D7E7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7960);
  }

  return result;
}

unint64_t sub_227BA4E0C()
{
  result = qword_27D7E7968;
  if (!qword_27D7E7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7968);
  }

  return result;
}

unint64_t sub_227BA4E64()
{
  result = qword_27D7E7970;
  if (!qword_27D7E7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7970);
  }

  return result;
}

unint64_t sub_227BA4EBC()
{
  result = qword_27D7E7978;
  if (!qword_27D7E7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7978);
  }

  return result;
}

unint64_t sub_227BA4F3C()
{
  result = qword_27D7E7980;
  if (!qword_27D7E7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7980);
  }

  return result;
}

unint64_t sub_227BA4FBC()
{
  result = qword_27D7E7988;
  if (!qword_27D7E7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7988);
  }

  return result;
}

unint64_t sub_227BA5010()
{
  result = qword_27D7E7990;
  if (!qword_27D7E7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7990);
  }

  return result;
}

unint64_t sub_227BA5068()
{
  result = qword_27D7E7998;
  if (!qword_27D7E7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7998);
  }

  return result;
}

uint64_t sub_227BA50BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227BA5510();
  result = sub_227BA2350(a1, &off_283B391B0, v4, &off_283B391F0);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_227BA510C(uint64_t a1)
{
  result = sub_227BA5134();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227BA5134()
{
  result = qword_27D7E79A0;
  if (!qword_27D7E79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E79A0);
  }

  return result;
}

uint64_t sub_227BA51B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227BA51F0()
{
  result = qword_27D7E79A8;
  if (!qword_27D7E79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E79A8);
  }

  return result;
}

unint64_t sub_227BA5244()
{
  result = qword_27D7E79B0;
  if (!qword_27D7E79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E79B0);
  }

  return result;
}

uint64_t sub_227BA5298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227BA5510();

  return sub_227BA24C0(a1, a2, a3, &off_283B391B0, v6);
}

double sub_227BA52FC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_227BA4610(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_227BA5358(uint64_t a1)
{
  v2 = sub_227BA5010();

  return sub_227BA2760(a1, v2);
}

uint64_t sub_227BA5394(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_227BA53D4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for Achievement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227BA5510()
{
  result = qword_27D7E79B8;
  if (!qword_27D7E79B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E79B8);
  }

  return result;
}

BOOL sub_227BA5578(uint64_t a1, uint64_t a2)
{
  v2 = sub_227D4D868();

  return v2 != 0;
}

uint64_t sub_227BA55F0(unsigned __int8 a1, char a2)
{
  v2 = 0x5941445F454E4FLL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x41445F4545524854;
    }

    else
    {
      v4 = 0x4B4545575F454E4FLL;
    }

    if (v3 == 1)
    {
      v5 = 0xEA00000000005359;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x5941445F454E4FLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x41445F4545524854;
    }

    else
    {
      v2 = 0x4B4545575F454E4FLL;
    }

    if (a2 == 1)
    {
      v6 = 0xEA00000000005359;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

BOOL sub_227BA56F4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227BA5578(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_227BA575C()
{
  OUTLINED_FUNCTION_0_21();
  sub_227BA74A0();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D198();
}

uint64_t sub_227BA57A4()
{
  OUTLINED_FUNCTION_0_21();
  sub_227BA74A0();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D158();
}

uint64_t sub_227BA57E0()
{
  sub_227D4DB58();
  sub_227D4D048();
  return sub_227D4DB98();
}

uint64_t sub_227BA584C(uint64_t a1, unsigned __int8 a2)
{
  sub_227D4D048();
}

uint64_t sub_227BA5900(uint64_t a1)
{
  sub_227D4DB58();
  sub_227D4D048();
  return sub_227D4DB98();
}

uint64_t sub_227BA5958(uint64_t a1, char a2)
{
  sub_227D4DB58();
  sub_227D4D048();

  return sub_227D4DB98();
}

unint64_t sub_227BA59FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_227D4D868();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_227BA5A54(char a1)
{
  if (!a1)
  {
    return 0x5941445F454E4FLL;
  }

  if (a1 == 1)
  {
    return 0x41445F4545524854;
  }

  return 0x4B4545575F454E4FLL;
}

unint64_t sub_227BA5ABC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227BA59FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_227BA5AEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BA5A54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BA5B28()
{
  OUTLINED_FUNCTION_0_21();
  sub_227BA744C();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D198();
}

uint64_t sub_227BA5B70()
{
  OUTLINED_FUNCTION_0_21();
  sub_227BA744C();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D158();
}

uint64_t sub_227BA5BC0()
{
  v1 = *(v0 + 16);
  sub_227D4CE58();
  return v1;
}

uint64_t sub_227BA5BF0(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_227BA5C28()
{
  v1 = *(v0 + 40);
  sub_227D4CE58();
  return v1;
}

uint64_t sub_227BA5C58(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_227BA5C90@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_227BA5CA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000227D75A20 == a2;
  if (v3 || (OUTLINED_FUNCTION_5_1(0xD000000000000010, 0x8000000227D75A20) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465766968637261 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_1(0x6465766968637261, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_5_6();
      v9 = a1 == v7 && a2 == v8;
      if (v9 || (OUTLINED_FUNCTION_5_1(v7, v8) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == 0x6261746165706572 && a2 == 0xEA0000000000656CLL;
        if (v10 || (OUTLINED_FUNCTION_5_1(0x6261746165706572, 0xEA0000000000656CLL) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = OUTLINED_FUNCTION_7_8();
          v13 = a1 == v11 && a2 == v12;
          if (v13 || (OUTLINED_FUNCTION_5_1(v11, v12) & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x8000000227D759D0 == a2)
          {

            return 5;
          }

          else
          {
            v15 = OUTLINED_FUNCTION_5_1(0xD000000000000010, 0x8000000227D759D0);

            if (v15)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_227BA5E38(char a1)
{
  result = 0x6465766968637261;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = OUTLINED_FUNCTION_5_6();
      break;
    case 3:
      result = 0x6261746165706572;
      break;
    case 4:
      result = OUTLINED_FUNCTION_7_8();
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_227BA5EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BA5CA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BA5F2C(uint64_t a1)
{
  v2 = sub_227BA61EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BA5F68(uint64_t a1)
{
  v2 = sub_227BA61EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227BA5FA4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E79C0, &qword_227D54A38);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA61EC();
  sub_227D4DC08();
  v13 = *v3;
  v12[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E79C8, &qword_227D54A40);
  sub_227BA67F4(&qword_27D7E79D0, sub_227BA6240, MEMORY[0x277D83948]);
  OUTLINED_FUNCTION_5_0();
  sub_227D4DA08();
  if (!v2)
  {
    v12[6] = 1;
    OUTLINED_FUNCTION_5_0();
    sub_227D4D9D8();
    v12[5] = 2;
    OUTLINED_FUNCTION_5_0();
    sub_227D4D9C8();
    v12[4] = 3;
    OUTLINED_FUNCTION_5_0();
    sub_227D4D9D8();
    v12[3] = 4;
    sub_227BA6294();
    OUTLINED_FUNCTION_5_0();
    sub_227D4DA08();
    v12[2] = 5;
    OUTLINED_FUNCTION_5_0();
    sub_227D4D9C8();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_227BA61EC()
{
  result = qword_27D7F1AF0[0];
  if (!qword_27D7F1AF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F1AF0);
  }

  return result;
}

unint64_t sub_227BA6240()
{
  result = qword_27D7E79D8;
  if (!qword_27D7E79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E79D8);
  }

  return result;
}

unint64_t sub_227BA6294()
{
  result = qword_27D7E79E0;
  if (!qword_27D7E79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E79E0);
  }

  return result;
}

uint64_t sub_227BA62E8()
{
  sub_227D4DB58();
  sub_227BA67A0();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227BA6354@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E79F0, &qword_227D54A48);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA61EC();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E79C8, &qword_227D54A40);
  v29 = 0;
  sub_227BA67F4(&qword_27D7E79F8, sub_227BA686C, MEMORY[0x277D83978]);
  sub_227D4D938();
  v11 = v30;
  v28 = 1;
  OUTLINED_FUNCTION_4_10();
  v23 = sub_227D4D908();
  v27 = 2;
  OUTLINED_FUNCTION_4_10();
  v21 = sub_227D4D8F8();
  v22 = v12;
  v26 = 3;
  OUTLINED_FUNCTION_4_10();
  v20 = sub_227D4D908();
  v25 = 4;
  sub_227BA68C0();
  sub_227D4D938();
  v24 = 5;
  OUTLINED_FUNCTION_4_10();
  v13 = sub_227D4D8F8();
  v15 = v14;
  v23 &= 1u;
  v20 &= 1u;
  v16 = v13;
  (*(v7 + 8))(v10, v5);
  sub_227D4CE58();
  v17 = v22;
  sub_227D4CE58();
  sub_227D4CE58();
  __swift_destroy_boxed_opaque_existential_0(a1);

  *a2 = v11;
  *(a2 + 8) = v23;
  *(a2 + 16) = v21;
  *(a2 + 24) = v17;
  *(a2 + 32) = v20;
  *(a2 + 40) = v16;
  *(a2 + 48) = v15;
  return result;
}

uint64_t sub_227BA66C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_227BA73F8();

  return sub_227BA2640(a1, a2, &off_283B39458, v4);
}

uint64_t sub_227BA6720(uint64_t a1, uint64_t a2)
{
  sub_227D4DB58();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

unint64_t sub_227BA67A0()
{
  result = qword_27D7E79E8;
  if (!qword_27D7E79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E79E8);
  }

  return result;
}

uint64_t sub_227BA67F4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E79C8, &qword_227D54A40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227BA686C()
{
  result = qword_27D7E7A00;
  if (!qword_27D7E7A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A00);
  }

  return result;
}

unint64_t sub_227BA68C0()
{
  result = qword_27D7E7A08;
  if (!qword_27D7E7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A08);
  }

  return result;
}

unint64_t sub_227BA6948()
{
  result = qword_27D7E7A20;
  if (!qword_27D7E7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A20);
  }

  return result;
}

uint64_t sub_227BA69CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_227BA6A24()
{
  result = qword_27D7E7A30;
  if (!qword_27D7E7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A30);
  }

  return result;
}

unint64_t sub_227BA6AA4()
{
  result = qword_27D7E7A38;
  if (!qword_27D7E7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A38);
  }

  return result;
}

unint64_t sub_227BA6B24()
{
  result = qword_27D7E7A40;
  if (!qword_27D7E7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A40);
  }

  return result;
}

unint64_t sub_227BA6B78()
{
  result = qword_27D7E7A48;
  if (!qword_27D7E7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A48);
  }

  return result;
}

unint64_t sub_227BA6BD0()
{
  result = qword_27D7E7A50;
  if (!qword_27D7E7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A50);
  }

  return result;
}

uint64_t sub_227BA6C24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227BA73F8();
  result = sub_227BA2350(a1, &off_283B39458, v4, &off_283B39498);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_227BA6C74(uint64_t a1)
{
  result = sub_227BA6C9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227BA6C9C()
{
  result = qword_27D7E7A58;
  if (!qword_27D7E7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A58);
  }

  return result;
}

uint64_t sub_227BA6D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227BA6D58()
{
  result = qword_27D7E7A60;
  if (!qword_27D7E7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A60);
  }

  return result;
}

unint64_t sub_227BA6DAC()
{
  result = qword_27D7E7A68;
  if (!qword_27D7E7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A68);
  }

  return result;
}

uint64_t sub_227BA6E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227BA73F8();

  return sub_227BA24C0(a1, a2, a3, &off_283B39458, v6);
}

double sub_227BA6E64@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_227BA6354(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_227BA6ECC(uint64_t a1)
{
  v2 = sub_227BA6B78();

  return sub_227BA2760(a1, v2);
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

uint64_t sub_227BA6F24(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_227BA6F64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Constants(unsigned int *a1, int a2)
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

_BYTE *sub_227BA7010(_BYTE *result, int a2, int a3)
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

_BYTE *sub_227BA70B8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_227BA7190(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_227BA7218(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227BA72F4()
{
  result = qword_27D7F2700[0];
  if (!qword_27D7F2700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F2700);
  }

  return result;
}

unint64_t sub_227BA734C()
{
  result = qword_27D7F2810;
  if (!qword_27D7F2810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F2810);
  }

  return result;
}

unint64_t sub_227BA73A4()
{
  result = qword_27D7F2818[0];
  if (!qword_27D7F2818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F2818);
  }

  return result;
}

unint64_t sub_227BA73F8()
{
  result = qword_27D7E7A70;
  if (!qword_27D7E7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A70);
  }

  return result;
}

unint64_t sub_227BA744C()
{
  result = qword_27D7E7A78;
  if (!qword_27D7E7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A78);
  }

  return result;
}

unint64_t sub_227BA74A0()
{
  result = qword_27D7E7A80;
  if (!qword_27D7E7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A80);
  }

  return result;
}

uint64_t sub_227BA7570(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496C61636F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_227D4DA78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000227D75A40 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_227D4DA78();

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

uint64_t sub_227BA7640(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x44496C61636F6CLL;
  }
}

uint64_t sub_227BA7684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BA7570(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BA76AC(uint64_t a1)
{
  v2 = sub_227BA7890();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BA76E8(uint64_t a1)
{
  v2 = sub_227BA7890();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227BA7724(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7A88, &qword_227D54FE0);
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA7890();
  sub_227D4DC08();
  v16 = 0;
  sub_227D4D9C8();
  if (!v5)
  {
    v15 = 1;
    sub_227D4D9C8();
  }

  return (*(v9 + 8))(v12, v7);
}

unint64_t sub_227BA7890()
{
  result = qword_27D7F28A0[0];
  if (!qword_27D7F28A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F28A0);
  }

  return result;
}

uint64_t sub_227BA78E4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7A90, qword_227D54FE8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA7890();
  sub_227D4DBF8();
  if (!v1)
  {
    v4 = sub_227D4D8F8();
    sub_227D4D8F8();
    v6 = OUTLINED_FUNCTION_0_22();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

unint64_t sub_227BA7AD0()
{
  result = qword_27D7E7A98;
  if (!qword_27D7E7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A98);
  }

  return result;
}

unint64_t sub_227BA7B24()
{
  result = qword_27D7E7AA0;
  if (!qword_27D7E7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AA0);
  }

  return result;
}

unint64_t sub_227BA7B78(uint64_t a1)
{
  result = sub_227BA7BA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227BA7BA0()
{
  result = qword_27D7E7AA8;
  if (!qword_27D7E7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AA8);
  }

  return result;
}

uint64_t sub_227BA7C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227BA7C5C()
{
  result = qword_27D7E7AB0;
  if (!qword_27D7E7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AB0);
  }

  return result;
}

unint64_t sub_227BA7CB0()
{
  result = qword_27D7E7AB8;
  if (!qword_27D7E7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AB8);
  }

  return result;
}

uint64_t sub_227BA7D04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_227BA78E4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_227BA7D54(uint64_t a1)
{
  v2 = sub_227BA7B24();

  return sub_227BA2760(a1, v2);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_227BA7D9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_227BA7DDC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for ChallengeLeaderboardRelationship.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227BA7F0C()
{
  result = qword_27D7F2CB0[0];
  if (!qword_27D7F2CB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F2CB0);
  }

  return result;
}

unint64_t sub_227BA7F64()
{
  result = qword_27D7F2DC0;
  if (!qword_27D7F2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F2DC0);
  }

  return result;
}

unint64_t sub_227BA7FBC()
{
  result = qword_27D7F2DC8[0];
  if (!qword_27D7F2DC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F2DC8);
  }

  return result;
}

uint64_t sub_227BA8040(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t sub_227BA805C(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t sub_227BA807C(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_227BA8104()
{
  OUTLINED_FUNCTION_104_0();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

void *sub_227BA8178@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18[128] = a3 & 1;
  v18[120] = a5 & 1;
  LOBYTE(__src[0]) = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = a3 & 1;
  __src[3] = a4;
  LOBYTE(__src[4]) = a5 & 1;
  __src[5] = a6;
  __src[6] = a7;
  __src[7] = a8;
  __src[8] = a10;
  __src[9] = a11;
  LOBYTE(__src[10]) = a12;
  __src[11] = a13;
  __src[12] = a14;
  __src[13] = a15;
  __src[14] = a16;
  v20[0] = a1;
  v21 = a2;
  v22 = a3 & 1;
  v23 = a4;
  v24 = a5 & 1;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a10;
  v29 = a11;
  v30 = a12;
  v31 = a13;
  v32 = a14;
  v33 = a15;
  v34 = a16;
  sub_227BA823C(__src, v18);
  sub_227BA8274(v20);
  return memcpy(a9, __src, 0x78uLL);
}

uint64_t sub_227BA82A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465766968637261 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_1(0x6465766968637261, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000227D75A60 == a2;
    if (v6 || (OUTLINED_FUNCTION_5_1(0xD000000000000013, 0x8000000227D75A60) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000227D75A80 == a2;
      if (v7 || (OUTLINED_FUNCTION_5_1(0xD000000000000013, 0x8000000227D75A80) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C79745379616C70 && a2 == 0xE900000000000065;
        if (v8 || (OUTLINED_FUNCTION_5_1(0x6C79745379616C70, 0xE900000000000065) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365;
          if (v9 || (OUTLINED_FUNCTION_5_1(0x69747265706F7270, 0xEA00000000007365) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = OUTLINED_FUNCTION_5_6();
            v12 = a1 == v10 && a2 == v11;
            if (v12 || (OUTLINED_FUNCTION_5_1(v10, v11) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = a1 == 0xD000000000000011 && 0x8000000227D75AA0 == a2;
              if (v13 || (OUTLINED_FUNCTION_5_1(0xD000000000000011, 0x8000000227D75AA0) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v14 = a1 == 0xD000000000000010 && 0x8000000227D759D0 == a2;
                if (v14 || (OUTLINED_FUNCTION_5_1(0xD000000000000010, 0x8000000227D759D0) & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000023 && 0x8000000227D75AC0 == a2)
                {

                  return 8;
                }

                else
                {
                  v16 = OUTLINED_FUNCTION_5_1(0xD000000000000023, 0x8000000227D75AC0);

                  if (v16)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_227BA84F8(char a1)
{
  result = 0x6465766968637261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x6C79745379616C70;
      break;
    case 4:
      result = 0x69747265706F7270;
      break;
    case 5:
      result = OUTLINED_FUNCTION_5_6();
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227BA861C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BA82A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BA8650(uint64_t a1)
{
  v2 = sub_227BA8910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BA868C(uint64_t a1)
{
  v2 = sub_227BA8910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227BA86C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7AC0, &unk_227D55268);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA8910();
  sub_227D4DC08();
  v11 = *v3;
  LOBYTE(v15) = 0;
  OUTLINED_FUNCTION_11_7(v11);
  if (!v2)
  {
    OUTLINED_FUNCTION_1_1(1);
    sub_227D4D998();
    OUTLINED_FUNCTION_1_1(2);
    sub_227D4D998();
    OUTLINED_FUNCTION_1_1(3);
    sub_227D4D978();
    v15 = *(v3 + 7);
    v14[7] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7940, &qword_227D54700);
    sub_227BA4C90(&qword_27D7E7958, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_227D4DA08();
    OUTLINED_FUNCTION_1_1(5);
    sub_227D4D9C8();
    v12 = v3[80];
    LOBYTE(v15) = 6;
    OUTLINED_FUNCTION_11_7(v12);
    OUTLINED_FUNCTION_1_1(7);
    sub_227D4D9C8();
    OUTLINED_FUNCTION_1_1(8);
    sub_227D4D978();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_227BA8910()
{
  result = qword_27D7F2E50[0];
  if (!qword_27D7F2E50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F2E50);
  }

  return result;
}

uint64_t sub_227BA8964()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_227D4DB58();
  sub_227BA8F30();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

void *sub_227BA89C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7AD0, &qword_227D55278);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA8910();
  sub_227D4DBF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v38[0]) = 0;
    v33 = sub_227D4D908();
    OUTLINED_FUNCTION_0_23(1);
    v6 = sub_227D4D8C8();
    v53 = v7 & 1;
    OUTLINED_FUNCTION_0_23(2);
    v32 = sub_227D4D8C8();
    v8 = v6;
    v52 = v9 & 1;
    OUTLINED_FUNCTION_0_23(3);
    v10 = sub_227D4D8A8();
    v12 = v11;
    v31 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7940, &qword_227D54700);
    LOBYTE(v37[0]) = 4;
    sub_227BA4C90(&qword_27D7E7948, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_227D4D938();
    v30 = v38[0];
    OUTLINED_FUNCTION_0_23(5);
    v29 = sub_227D4D8F8();
    v35 = v13;
    OUTLINED_FUNCTION_0_23(6);
    v27 = sub_227D4D908();
    OUTLINED_FUNCTION_0_23(7);
    v14 = sub_227D4D8F8();
    v16 = v15;
    v26 = v14;
    v54 = 8;
    v17 = sub_227D4D8A8();
    v24 = v18;
    v25 = v17;
    v19 = v33 & 1;
    v23 = v33 & 1;
    v34 = v27 & 1;
    v20 = OUTLINED_FUNCTION_6_5();
    v21(v20);
    LOBYTE(v37[0]) = v19;
    v37[1] = v8;
    v36 = v53;
    LOBYTE(v37[2]) = v53;
    v37[3] = v32;
    v28 = v52;
    LOBYTE(v37[4]) = v52;
    v37[5] = v31;
    v37[6] = v12;
    v37[7] = v30;
    v37[8] = v29;
    v37[9] = v35;
    LOBYTE(v37[10]) = v34;
    v37[11] = v26;
    v37[12] = v16;
    v37[13] = v25;
    v37[14] = v24;
    sub_227BA823C(v37, v38);
    __swift_destroy_boxed_opaque_existential_0(a1);
    LOBYTE(v38[0]) = v23;
    v38[1] = v8;
    v39 = v36;
    v40 = v32;
    v41 = v28;
    v42 = v31;
    v43 = v12;
    v44 = v30;
    v45 = v29;
    v46 = v35;
    v47 = v34;
    v48 = v26;
    v49 = v16;
    v50 = v25;
    v51 = v24;
    sub_227BA8274(v38);
    return memcpy(a2, v37, 0x78uLL);
  }
}

uint64_t sub_227BA8E68()
{
  OUTLINED_FUNCTION_104_0();
  v2 = sub_227BA9728();

  return sub_227BA2640(v1, v0, &off_283B39890, v2);
}

uint64_t sub_227BA8EC0(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, v2, sizeof(__dst));
  sub_227D4DB58();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

unint64_t sub_227BA8F30()
{
  result = qword_27D7E7AC8;
  if (!qword_27D7E7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AC8);
  }

  return result;
}

unint64_t sub_227BA8FB0()
{
  result = qword_27D7E7AD8;
  if (!qword_27D7E7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AD8);
  }

  return result;
}

unint64_t sub_227BA9030()
{
  result = qword_27D7E7AE0;
  if (!qword_27D7E7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AE0);
  }

  return result;
}

unint64_t sub_227BA9084()
{
  result = qword_27D7E7AE8;
  if (!qword_27D7E7AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AE8);
  }

  return result;
}

unint64_t sub_227BA90DC()
{
  result = qword_27D7E7AF0;
  if (!qword_27D7E7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AF0);
  }

  return result;
}

uint64_t sub_227BA9130@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227BA9728();
  result = sub_227BA2350(a1, &off_283B39890, v4, &off_283B398D0);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_227BA9180(uint64_t a1)
{
  result = sub_227BA91A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227BA91A8()
{
  result = qword_27D7E7AF8;
  if (!qword_27D7E7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AF8);
  }

  return result;
}

uint64_t sub_227BA9228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227BA9264()
{
  result = qword_27D7E7B00;
  if (!qword_27D7E7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B00);
  }

  return result;
}

unint64_t sub_227BA92B8()
{
  result = qword_27D7E7B08;
  if (!qword_27D7E7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B08);
  }

  return result;
}

uint64_t sub_227BA930C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227BA9728();

  return sub_227BA24C0(a1, a2, a3, &off_283B39890, v6);
}

void *sub_227BA9370@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_227BA89C8(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x78uLL);
  }

  return result;
}

uint64_t sub_227BA93D4(uint64_t a1)
{
  v2 = sub_227BA9084();

  return sub_227BA2760(a1, v2);
}

uint64_t sub_227BA9418(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_227BA9458(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_227BA94C0(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_227BA9548(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227BA9624()
{
  result = qword_27D7F3460[0];
  if (!qword_27D7F3460[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F3460);
  }

  return result;
}

unint64_t sub_227BA967C()
{
  result = qword_27D7F3570;
  if (!qword_27D7F3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F3570);
  }

  return result;
}

unint64_t sub_227BA96D4()
{
  result = qword_27D7F3578[0];
  if (!qword_27D7F3578[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F3578);
  }

  return result;
}

unint64_t sub_227BA9728()
{
  result = qword_27D7E7B10;
  if (!qword_27D7E7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B10);
  }

  return result;
}

uint64_t sub_227BA97E4()
{
  OUTLINED_FUNCTION_104_0();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t sub_227BA9844()
{
  OUTLINED_FUNCTION_104_0();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t sub_227BA98C4()
{
  OUTLINED_FUNCTION_104_0();

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

void *sub_227BA9918@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a17)
  {
    v21 = 0xEA00000000004552;
    v22 = 0x4F43535F54534542;
    v23 = 0xE300000000000000;
    v24 = 4412225;
  }

  else
  {
    v21 = 0x8000000227D75AF0;
    v22 = 0xD000000000000011;
    v23 = 0xE400000000000000;
    v24 = 1129530692;
  }

  __src[0] = a1;
  v25 = 0x524F465F574F4853;
  v26 = a2 & 1;
  LOBYTE(__src[1]) = v26;
  if (a20)
  {
    v25 = 0x524F465F45444948;
  }

  BYTE1(__src[1]) = a3;
  __src[2] = a4;
  __src[3] = a5;
  __src[4] = a6;
  __src[5] = a7;
  __src[6] = a8;
  __src[7] = a10;
  __src[8] = a11;
  __src[9] = a12;
  __src[10] = a13;
  __src[11] = a14;
  __src[12] = a15;
  __src[13] = a16;
  __src[14] = v24;
  __src[15] = v23;
  __src[16] = v22;
  __src[17] = v21;
  __src[18] = a18;
  __src[19] = a19;
  __src[20] = v25;
  __src[21] = 0xEC0000004C4C415FLL;
  v30 = a1;
  v31 = v26;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v38 = a10;
  v39 = a11;
  v40 = a12;
  v41 = a13;
  v42 = a14;
  v43 = a15;
  v44 = a16;
  v45 = v24;
  v46 = v23;
  v47 = v22;
  v48 = v21;
  v49 = a18;
  v50 = a19;
  v51 = v25;
  v52 = 0xEC0000004C4C415FLL;
  sub_227BA9A88(__src, &v28);
  sub_227BA9AC0(&v30);
  return memcpy(a9, __src, 0xB0uLL);
}

uint64_t sub_227BA9AF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000227D75990 == a2;
  if (v3 || (OUTLINED_FUNCTION_5_1(0xD000000000000012, 0x8000000227D75990) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465766968637261 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_1(0x6465766968637261, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000227D75B10 == a2;
      if (v7 || (OUTLINED_FUNCTION_5_1(0xD000000000000010, 0x8000000227D75B10) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x8000000227D75B30 == a2;
        if (v8 || (OUTLINED_FUNCTION_5_1(0xD000000000000012, 0x8000000227D75B30) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = OUTLINED_FUNCTION_15_4();
          v11 = a1 == v9 && a2 == v10;
          if (v11 || (OUTLINED_FUNCTION_5_1(v9, v10) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = a1 == 0xD000000000000013 && 0x8000000227D75B50 == a2;
            if (v12 || (OUTLINED_FUNCTION_5_1(0xD000000000000013, 0x8000000227D75B50) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = OUTLINED_FUNCTION_5_6();
              v15 = a1 == v13 && a2 == v14;
              if (v15 || (OUTLINED_FUNCTION_5_1(v13, v14) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v16 = a1 == 0x6E615265726F6373 && a2 == 0xED0000646E456567;
                if (v16 || (OUTLINED_FUNCTION_5_1(0x6E615265726F6373, 0xED0000646E456567) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v17 = a1 == 0x6E615265726F6373 && a2 == 0xEF74726174536567;
                  if (v17 || (OUTLINED_FUNCTION_5_1(0x6E615265726F6373, 0xEF74726174536567) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v18 = OUTLINED_FUNCTION_13_8();
                    v20 = a1 == v18 && a2 == v19;
                    if (v20 || (OUTLINED_FUNCTION_5_1(v18, v19) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v21 = OUTLINED_FUNCTION_12_4();
                      v23 = a1 == v21 && a2 == v22;
                      if (v23 || (OUTLINED_FUNCTION_5_1(v21, v22) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v24 = a1 == 0xD000000000000010 && 0x8000000227D759D0 == a2;
                        if (v24 || (OUTLINED_FUNCTION_5_1(0xD000000000000010, 0x8000000227D759D0) & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974)
                        {

                          return 12;
                        }

                        else
                        {
                          v26 = OUTLINED_FUNCTION_5_1(0x696C696269736976, 0xEA00000000007974);

                          if (v26)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_227BA9E0C(char a1)
{
  result = 0x6465766968637261;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 4:
      result = OUTLINED_FUNCTION_15_4();
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = OUTLINED_FUNCTION_5_6();
      break;
    case 7:
    case 8:
      result = 0x6E615265726F6373;
      break;
    case 9:
      result = OUTLINED_FUNCTION_13_8();
      break;
    case 10:
      result = OUTLINED_FUNCTION_12_4();
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x696C696269736976;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_227BA9F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BA9AF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BA9FB4(uint64_t a1)
{
  v2 = sub_227BAA6E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BA9FF0(uint64_t a1)
{
  v2 = sub_227BAA6E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_227BAA02C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7B18, &unk_227D555C8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BAA6E8();
  sub_227D4DBF8();
  if (v2)
  {
    OUTLINED_FUNCTION_11_8();
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7940, &qword_227D54700);
    LOBYTE(v51[0]) = 0;
    sub_227BA4C90(&qword_27D7E7948, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_7_9();
    sub_227D4D8D8();
    if (v52)
    {
      v47 = v52;
    }

    else
    {
      v47 = sub_227D4CE28();
    }

    OUTLINED_FUNCTION_1_11(1);
    v7 = sub_227D4D908();
    LOBYTE(v51[0]) = 2;
    sub_227BA0D8C();
    OUTLINED_FUNCTION_7_9();
    sub_227D4D8D8();
    v8 = v52;
    OUTLINED_FUNCTION_1_11(3);
    v9 = sub_227D4D8A8();
    LOBYTE(v75) = v7;
    v42 = v10;
    OUTLINED_FUNCTION_1_11(4);
    v11 = sub_227D4D8A8();
    v13 = v12;
    v40 = v11;
    v41 = v9;
    OUTLINED_FUNCTION_1_11(5);
    v14 = sub_227D4D8A8();
    v16 = v15;
    v39 = v14;
    OUTLINED_FUNCTION_1_11(6);
    v38 = sub_227D4D8F8();
    v43 = v17;
    v48 = v16;
    v49 = v13;
    OUTLINED_FUNCTION_1_11(7);
    v18 = sub_227D4D8A8();
    v20 = v19;
    v37 = v18;
    OUTLINED_FUNCTION_1_11(8);
    v36 = sub_227D4D8A8();
    v22 = v21;
    OUTLINED_FUNCTION_7_9();
    v23 = sub_227D4D8F8();
    v46 = v24;
    v25 = v23;
    OUTLINED_FUNCTION_7_9();
    v35 = sub_227D4D8F8();
    v45 = v26;
    LOBYTE(v52) = 11;
    OUTLINED_FUNCTION_7_9();
    v34 = sub_227D4D8F8();
    v44 = v27;
    v76 = 12;
    OUTLINED_FUNCTION_7_9();
    v32 = sub_227D4D8A8();
    v33 = v28;
    v29 = v75 & 1;
    v75 &= 1u;
    v30 = OUTLINED_FUNCTION_3_10();
    v31(v30);
    v51[0] = v47;
    LOBYTE(v51[1]) = v29;
    BYTE1(v51[1]) = v8;
    v51[2] = v41;
    v51[3] = v42;
    v51[4] = v40;
    v51[5] = v49;
    v51[6] = v39;
    v51[7] = v48;
    v51[8] = v38;
    v51[9] = v43;
    v51[10] = v37;
    v51[11] = v20;
    v51[12] = v36;
    v51[13] = v22;
    v51[14] = v25;
    v51[15] = v46;
    v51[16] = v35;
    v51[17] = v45;
    v51[18] = v34;
    v51[19] = v44;
    v51[20] = v32;
    v51[21] = v33;
    sub_227BA9A88(v51, &v52);
    __swift_destroy_boxed_opaque_existential_0(v50);
    v52 = v47;
    v53 = v75;
    v54 = v8;
    v55 = v41;
    v56 = v42;
    v57 = v40;
    v58 = v49;
    v59 = v39;
    v60 = v48;
    v61 = v38;
    v62 = v43;
    v63 = v37;
    v64 = v20;
    v65 = v36;
    v66 = v22;
    v67 = v25;
    v68 = v46;
    v69 = v35;
    v70 = v45;
    v71 = v34;
    v72 = v44;
    v73 = v32;
    v74 = v33;
    sub_227BA9AC0(&v52);
    return memcpy(a2, v51, 0xB0uLL);
  }
}

unint64_t sub_227BAA6E8()
{
  result = qword_27D7E7B20;
  if (!qword_27D7E7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B20);
  }

  return result;
}

uint64_t sub_227BAA73C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7B28, &qword_227D555D8);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BAA6E8();
  sub_227D4DC08();
  v13 = *v3;
  HIBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7940, &qword_227D54700);
  sub_227BA4C90(&qword_27D7E7958, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_227D4DA08();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_227D4D9D8();
    LOBYTE(v13) = *(v3 + 9);
    HIBYTE(v12) = 2;
    sub_227BA0748();
    sub_227D4D9A8();
    OUTLINED_FUNCTION_1_1(3);
    sub_227D4D978();
    OUTLINED_FUNCTION_1_1(4);
    sub_227D4D978();
    OUTLINED_FUNCTION_1_1(5);
    sub_227D4D978();
    OUTLINED_FUNCTION_1_1(6);
    sub_227D4D9C8();
    OUTLINED_FUNCTION_1_1(7);
    sub_227D4D978();
    OUTLINED_FUNCTION_1_1(8);
    sub_227D4D978();
    OUTLINED_FUNCTION_1_1(9);
    sub_227D4D9C8();
    OUTLINED_FUNCTION_1_1(10);
    sub_227D4D9C8();
    OUTLINED_FUNCTION_1_1(11);
    sub_227D4D9C8();
    OUTLINED_FUNCTION_1_1(12);
    sub_227D4D978();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_227BAAA14()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_227D4DB58();
  sub_227BAAB48();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227BAAA80()
{
  OUTLINED_FUNCTION_104_0();
  v2 = sub_227BAB770();

  return sub_227BA2640(v1, v0, &off_283B39A50, v2);
}

uint64_t sub_227BAAAD8(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, v2, sizeof(__dst));
  sub_227D4DB58();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

unint64_t sub_227BAAB48()
{
  result = qword_27D7E7B30;
  if (!qword_27D7E7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B30);
  }

  return result;
}

uint64_t sub_227BAAB9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227BAB770();
  result = sub_227BA2350(a1, &off_283B39A50, v4, &off_283B39A90);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_227BAABEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227BAB770();

  return sub_227BA24C0(a1, a2, a3, &off_283B39A50, v6);
}

void *sub_227BAAC50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_227BAA02C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0xB0uLL);
  }

  return result;
}

uint64_t sub_227BAACB4(uint64_t a1)
{
  v2 = sub_227BAB310();

  return sub_227BA2760(a1, v2);
}

uint64_t sub_227BAACF0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  if (v1 == 4412225 && v2 == 0xE300000000000000)
  {
    return OUTLINED_FUNCTION_51();
  }

  else
  {
    return OUTLINED_FUNCTION_4_11(v1, v2, 4412225, 0xE300000000000000);
  }
}

uint64_t sub_227BAAD20(char a1)
{
  if (a1)
  {
    v2 = 4412225;
  }

  else
  {
    v2 = 1129530692;
  }

  if (a1)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
  return result;
}

uint64_t (*sub_227BAAD74(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *a1 = v1;
  *(a1 + 8) = v4;
  if (v3 == 4412225 && v4 == 0xE300000000000000)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_227D4DA78();
  }

  *(a1 + 16) = v6 & 1;
  return sub_227BAADF4;
}

uint64_t sub_227BAADF4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_17_8(a1);
  v4 = 1129530692;
  if (v2)
  {
    v4 = 4412225;
  }

  v5 = 0xE400000000000000;
  if (v2)
  {
    v5 = 0xE300000000000000;
  }

  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  return result;
}

uint64_t sub_227BAAE3C()
{
  v0 = OUTLINED_FUNCTION_20_2();
  if (v0 == v2 && v1 == v3)
  {
    return OUTLINED_FUNCTION_51();
  }

  else
  {
    return OUTLINED_FUNCTION_4_11(v0, v1, v2, 0xEA00000000004552);
  }
}

uint64_t sub_227BAAE6C(char a1)
{
  if (a1)
  {
    v2 = 0x4F43535F54534542;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (a1)
  {
    v3 = 0xEA00000000004552;
  }

  else
  {
    v3 = 0x8000000227D75AF0;
  }

  *(v1 + 128) = v2;
  *(v1 + 136) = v3;
  return result;
}

uint64_t (*sub_227BAAED8(uint64_t a1))(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_20_2();
  *a1 = v1;
  *(a1 + 8) = v4;
  if (v3 == v6 && v4 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  *(a1 + 16) = v8 & 1;
  return sub_227BAAF48;
}

uint64_t sub_227BAAF48(uint64_t a1)
{
  result = OUTLINED_FUNCTION_17_8(a1);
  v4 = 0x8000000227D75AF0;
  v5 = 0xD000000000000011;
  if (v2)
  {
    v5 = 0x4F43535F54534542;
    v4 = 0xEA00000000004552;
  }

  *(v1 + 128) = v5;
  *(v1 + 136) = v4;
  return result;
}

uint64_t sub_227BAAFA8()
{
  if (!*(v0 + 168))
  {
    return 0;
  }

  OUTLINED_FUNCTION_16_5();
  v5 = v5 && v2 == v4;
  if (v5)
  {
    return OUTLINED_FUNCTION_51();
  }

  else
  {
    return OUTLINED_FUNCTION_4_11(v1, v2, v3, v4);
  }
}

uint64_t sub_227BAAFE0(char a1)
{
  if (a1)
  {
    v2 = 0x524F465F45444948;
  }

  else
  {
    v2 = 0x524F465F574F4853;
  }

  *(v1 + 160) = v2;
  *(v1 + 168) = 0xEC0000004C4C415FLL;
  return result;
}

uint64_t (*sub_227BAB03C(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 168);
  *a1 = v1;
  *(a1 + 8) = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_16_5();
    v6 = v6 && v4 == v5;
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_227D4DA78();
    }
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 16) = v7 & 1;
  return sub_227BAB0B0;
}

uint64_t sub_227BAB0B0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_17_8(a1);
  v4 = 0x524F465F574F4853;
  if (v2)
  {
    v4 = 0x524F465F45444948;
  }

  *(v1 + 160) = v4;
  *(v1 + 168) = 0xEC0000004C4C415FLL;
  return result;
}

unint64_t sub_227BAB10C()
{
  result = qword_27D7E7B38;
  if (!qword_27D7E7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B38);
  }

  return result;
}

unint64_t sub_227BAB164()
{
  result = qword_27D7E7B40;
  if (!qword_27D7E7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B40);
  }

  return result;
}

unint64_t sub_227BAB1BC()
{
  result = qword_27D7E7B48;
  if (!qword_27D7E7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B48);
  }

  return result;
}

unint64_t sub_227BAB23C()
{
  result = qword_27D7E7B50;
  if (!qword_27D7E7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B50);
  }

  return result;
}

unint64_t sub_227BAB2BC()
{
  result = qword_27D7E7B58;
  if (!qword_27D7E7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B58);
  }

  return result;
}

unint64_t sub_227BAB310()
{
  result = qword_27D7E7B60;
  if (!qword_27D7E7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B60);
  }

  return result;
}

unint64_t sub_227BAB368()
{
  result = qword_27D7E7B68;
  if (!qword_27D7E7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B68);
  }

  return result;
}

unint64_t sub_227BAB3BC(uint64_t a1)
{
  result = sub_227BAB3E4();
  *(a1 + 8) = result;
  return result;
}