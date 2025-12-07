uint64_t String.firstConditionallyCapitalized(with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F198, &qword_2694253A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v22 - v7;
  if (sub_269424198() < 2 || (sub_2694241B8(), sub_269424228(), v9 = sub_2694240D8(), , (v9 & 1) != 0))
  {
  }

  else
  {

    v23 = sub_2693CB144(1, a2, a3);
    v24 = v10;
    v25 = v11;
    v26 = v12;
    v13 = sub_269422D48();
    (*(*(v13 - 8) + 16))(v8, a1, v13);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
    sub_2693CB22C();
    v14 = sub_269424418();
    v16 = v15;
    sub_2693CB280(v8);

    v17 = sub_2693CB2E8(1uLL, a2, a3);
    v22[0] = v14;
    v22[1] = v16;
    v23 = v17;
    v24 = v18;
    v25 = v19;
    v26 = v20;
    sub_2693CB3BC();

    sub_2694241C8();

    return v22[0];
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2693CB144(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2694241A8();
    v3 = sub_269424248();

    return v3;
  }

  return result;
}

unint64_t sub_2693CB22C()
{
  result = qword_28030F1A0;
  if (!qword_28030F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F1A0);
  }

  return result;
}

uint64_t sub_2693CB280(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F198, &qword_2694253A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2693CB2E8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_2694241A8();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_269424248();

      return v7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2693CB3BC()
{
  result = qword_28030F1A8;
  if (!qword_28030F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F1A8);
  }

  return result;
}

uint64_t variable initialization expression of SiriTranslationModels.SiriTranslationResultModel._visualID()
{
  v0 = sub_269422D18();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269422D08();
  v4 = sub_269422CF8();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_2693CB514@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2693ECB88();
  *a1 = result;
  return result;
}

void *sub_2693CB558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t sub_2693CB56C(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_269424688() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (sub_269424688() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] == a2[6] && a1[7] == a2[7])
  {
    return 1;
  }

  return sub_269424688();
}

uint64_t sub_2693CB614(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614C746567726174 && a2 == 0xEE0065676175676ELL;
  if (v4 || (sub_269424688() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1954047348 && a2 == 0xE400000000000000;
    if (v6 || (sub_269424688() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x8000000269429020 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_269424688();

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

uint64_t sub_2693CB774(unsigned __int8 a1)
{
  sub_269424738();
  MEMORY[0x26D63C2F0](a1);
  return sub_269424758();
}

uint64_t sub_2693CB7C8(char a1)
{
  if (!a1)
  {
    return 0x614C746567726174;
  }

  if (a1 == 1)
  {
    return 1954047348;
  }

  return 0xD000000000000016;
}

uint64_t sub_2693CB844(uint64_t a1)
{
  v2 = *v1;
  sub_269424738();
  MEMORY[0x26D63C2F0](v2);
  return sub_269424758();
}

uint64_t sub_2693CB890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2693CB614(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2693CB8D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2693CB734();
  *a1 = result;
  return result;
}

uint64_t sub_2693CB900(uint64_t a1)
{
  v2 = sub_2693CBF3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693CB93C(uint64_t a1)
{
  v2 = sub_2693CBF3C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2693CB978()
{

  return v0;
}

uint64_t sub_2693CB9A8()
{
  sub_2693CB978();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2693CBA00(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F598, &qword_269425490);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2693CBF3C();
  sub_269424788();
  v11 = v3[2];
  v12 = v3[3];
  v21 = 0;
  OUTLINED_FUNCTION_1(v11, v12, &v21);
  if (!v2)
  {
    v13 = v3[4];
    v14 = v3[5];
    v20 = 1;
    OUTLINED_FUNCTION_1(v13, v14, &v20);
    v15 = v3[6];
    v16 = v3[7];
    v19 = 2;
    OUTLINED_FUNCTION_1(v15, v16, &v19);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_2693CBB5C(void *a1)
{
  v2 = swift_allocObject();
  sub_2693CBBAC(a1);
  return v2;
}

void *sub_2693CBBAC(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F588, &qword_269425488);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2693CBF3C();
  sub_269424778();
  if (v2)
  {
    type metadata accessor for SpeakAction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[2] = sub_2694245E8();
    v1[3] = v6;
    v1[4] = sub_2694245E8();
    v1[5] = v7;
    v9 = sub_2694245E8();
    v11 = v10;
    v12 = OUTLINED_FUNCTION_0_0();
    v13(v12);
    v3[6] = v9;
    v3[7] = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_2693CBDB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2693CBB5C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2693CBE2C(void *a1)
{
  a1[1] = sub_2693CBEB8(&qword_28030F570, &unk_269425444);
  a1[2] = sub_2693CBEB8(&qword_28030F578, &unk_26942541C);
  result = sub_2693CBEB8(&qword_28030F580, &unk_2694253F4);
  a1[3] = result;
  return result;
}

uint64_t sub_2693CBEB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SpeakAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2693CBF3C()
{
  result = qword_28030F590;
  if (!qword_28030F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F590);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t getEnumTagSinglePayload for SpeakAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SpeakAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2693CC140);
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

unint64_t sub_2693CC190()
{
  result = qword_28030F5A0;
  if (!qword_28030F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F5A0);
  }

  return result;
}

unint64_t sub_2693CC1E8()
{
  result = qword_28030F5A8;
  if (!qword_28030F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F5A8);
  }

  return result;
}

unint64_t sub_2693CC240()
{
  result = qword_28030F5B0;
  if (!qword_28030F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F5B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_269424638();
}

uint64_t sub_2693CC2DC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2693CC2FC, 0, 0);
}

uint64_t sub_2693CC2FC()
{
  sub_269423138();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2693CC368(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TranslationDecisionFlow(0);
  sub_2693CC954();
  return sub_269422F88();
}

uint64_t sub_2693CC3C8()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents23TranslationDecisionFlow_log;
  v2 = sub_269423FC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents23TranslationDecisionFlow_featureManager));
  return v0;
}

uint64_t sub_2693CC458()
{
  sub_2693CC3C8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for TranslationDecisionFlow(uint64_t a1)
{
  result = qword_28030F5D8;
  if (!qword_28030F5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693CC504(uint64_t a1)
{
  result = sub_269423FC8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2693CC5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2693CC664;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2693CC664(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2693CC784(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2693CC820;

  return sub_2693CC2DC(a1);
}

uint64_t sub_2693CC820()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2693CC914(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TranslationDecisionFlow(0);

  return sub_269422FC8();
}

unint64_t sub_2693CC954()
{
  result = qword_28030F5E8;
  if (!qword_28030F5E8)
  {
    type metadata accessor for TranslationDecisionFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F5E8);
  }

  return result;
}

uint64_t sub_2693CCA24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F600, &qword_269425750);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_269425690;
  OUTLINED_FUNCTION_1_0();
  *(v2 + 32) = 0xD000000000000017;
  *(v2 + 40) = v3;
  v4 = MEMORY[0x277D839B0];
  *(v2 + 48) = *v0;
  *(v2 + 72) = v4;
  *(v2 + 80) = 0x6E69577473726966;
  *(v2 + 88) = 0xEF657A6953776F64;
  if (*(v0 + 16))
  {
    v5 = 0;
    v6 = 0;
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
  }

  else
  {
    v5 = *(v0 + 8);
    v6 = MEMORY[0x277D839F8];
  }

  *(v1 + 96) = v5;
  *(v1 + 120) = v6;
  strcpy((v1 + 128), "isConclusion");
  *(v1 + 141) = 0;
  *(v1 + 142) = -5120;
  *(v1 + 144) = *(v0 + 17);
  *(v1 + 168) = v4;
  strcpy((v1 + 176), "isFirstWindow");
  *(v1 + 190) = -4864;
  *(v1 + 192) = *(v0 + 18);
  *(v1 + 216) = v4;
  strcpy((v1 + 224), "isLastWindow");
  *(v1 + 237) = 0;
  *(v1 + 238) = -5120;
  *(v1 + 240) = *(v0 + 19);
  *(v1 + 264) = v4;
  *(v1 + 272) = 0xD000000000000016;
  *(v1 + 280) = 0x8000000269429120;
  *(v1 + 288) = *(v0 + 20);
  *(v1 + 312) = v4;
  *(v1 + 320) = 0x65676175676E616CLL;
  *(v1 + 328) = 0xE900000000000073;
  v18 = *(v0 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F608, &qword_269425758);
  *(v1 + 336) = v18;
  *(v1 + 360) = v7;
  strcpy((v1 + 368), "languageGroup");
  *(v1 + 382) = -4864;
  v17 = *(v0 + 32);
  v8 = MEMORY[0x277D837D0];
  *(v1 + 384) = v17;
  *(v1 + 408) = v8;
  *(v1 + 416) = 0xD000000000000013;
  *(v1 + 424) = 0x8000000269429140;
  if (*(v0 + 56))
  {
    v9 = 0;
    v10 = 0;
    *(v1 + 440) = 0;
    *(v1 + 448) = 0;
  }

  else
  {
    v9 = *(v0 + 48);
    v10 = MEMORY[0x277D839F8];
  }

  *(v1 + 432) = v9;
  *(v1 + 456) = v10;
  *(v1 + 464) = 0x6574496C61746F74;
  *(v1 + 472) = 0xEA0000000000736DLL;
  if (*(v0 + 72))
  {
    v11 = 0;
    v12 = 0;
    *(v1 + 488) = 0;
    *(v1 + 496) = 0;
  }

  else
  {
    v11 = *(v0 + 64);
    v12 = MEMORY[0x277D839F8];
  }

  *(v1 + 480) = v11;
  *(v1 + 504) = v12;
  *(v1 + 512) = 0x6953776F646E6977;
  *(v1 + 520) = 0xEA0000000000657ALL;
  if (*(v0 + 88))
  {
    v13 = 0;
    v14 = 0;
    *(v1 + 536) = 0u;
  }

  else
  {
    v13 = *(v0 + 80);
    v14 = MEMORY[0x277D839F8];
  }

  *(v1 + 528) = v13;
  *(v1 + 552) = v14;
  sub_2693CDA24(&v18, v16, &qword_28030F608, &qword_269425758);
  sub_2693CD8C8(&v17, v16);
  return v1;
}

uint64_t sub_2693CCD38(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v45 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v45 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F600, &qword_269425750);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2694256A0;
  OUTLINED_FUNCTION_1_0();
  *(v16 + 32) = 0xD000000000000020;
  *(v16 + 40) = v17;
  v18 = MEMORY[0x277D839B0];
  *(v16 + 48) = *v1;
  OUTLINED_FUNCTION_1_0();
  *(v19 + 72) = v18;
  *(v19 + 80) = 0xD000000000000017;
  *(v19 + 88) = v20;
  *(v19 + 96) = *(v1 + 1);
  *(v19 + 120) = v18;
  *(v19 + 128) = 0x6E69577473726966;
  *(v19 + 136) = 0xEF657A6953776F64;
  if (*(v1 + 16))
  {
    v21 = 0;
    *(v15 + 152) = 0;
    *(v15 + 160) = 0;
    v22 = 0;
  }

  else
  {
    v22 = *(v1 + 8);
    v21 = MEMORY[0x277D839F8];
  }

  *(v15 + 144) = v22;
  *(v15 + 168) = v21;
  strcpy((v15 + 176), "isConclusion");
  *(v15 + 189) = 0;
  *(v15 + 190) = -5120;
  *(v15 + 192) = *(v1 + 17);
  *(v15 + 216) = v18;
  strcpy((v15 + 224), "isFirstWindow");
  *(v15 + 238) = -4864;
  *(v15 + 240) = *(v1 + 18);
  *(v15 + 264) = v18;
  strcpy((v15 + 272), "isLastWindow");
  *(v15 + 285) = 0;
  *(v15 + 286) = -5120;
  *(v15 + 288) = *(v1 + 19);
  OUTLINED_FUNCTION_1_0();
  *(v15 + 312) = v18;
  *(v15 + 320) = 0xD000000000000016;
  *(v15 + 328) = v23;
  *(v15 + 336) = *(v1 + 20);
  *(v15 + 360) = v18;
  *(v15 + 368) = 0x736D657469;
  *(v15 + 376) = 0xE500000000000000;
  v24 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F618, &qword_269425768);
  *(v15 + 384) = v24;
  OUTLINED_FUNCTION_1_0();
  *(v15 + 408) = v25;
  *(v15 + 416) = 0xD000000000000013;
  *(v15 + 424) = v26;
  if (*(v1 + 40))
  {
    v27 = 0;
    *(v15 + 440) = 0;
    *(v15 + 448) = 0;
    v28 = 0;
  }

  else
  {
    v28 = *(v1 + 32);
    v27 = MEMORY[0x277D839F8];
  }

  *(v15 + 432) = v28;
  *(v15 + 456) = v27;
  *(v15 + 464) = 0x657361726870;
  *(v15 + 472) = 0xE600000000000000;
  v29 = a1(0);
  sub_2693CDA24(v1 + v29[13], v14, &qword_28030F610, &qword_269425760);
  v30 = sub_269423DA8();
  OUTLINED_FUNCTION_2_0(v14);
  if (v31)
  {

    sub_2693CDA8C(v14, &qword_28030F610, &qword_269425760);
    *(v15 + 480) = 0u;
    *(v15 + 496) = 0u;
  }

  else
  {
    *(v15 + 504) = v30;
    __swift_allocate_boxed_opaque_existential_0((v15 + 480));
    OUTLINED_FUNCTION_0_1();
    (*(v32 + 32))();
  }

  OUTLINED_FUNCTION_1_0();
  *(v15 + 512) = 0xD000000000000011;
  *(v15 + 520) = v33;
  sub_2693CDA24(v1 + v29[14], v12, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_2_0(v12);
  if (v31)
  {
    sub_2693CDA8C(v12, &qword_28030F610, &qword_269425760);
    *(v15 + 528) = 0u;
    *(v15 + 544) = 0u;
  }

  else
  {
    *(v15 + 552) = v30;
    __swift_allocate_boxed_opaque_existential_0((v15 + 528));
    OUTLINED_FUNCTION_0_1();
    (*(v34 + 32))();
  }

  OUTLINED_FUNCTION_1_0();
  *(v15 + 560) = 0xD000000000000012;
  *(v15 + 568) = v35;
  LOBYTE(v35) = *(v1 + v29[15]);
  *(v15 + 600) = v18;
  *(v15 + 576) = v35;
  strcpy((v15 + 608), "sourceLanguage");
  *(v15 + 623) = -18;
  sub_2693CDA24(v1 + v29[16], v9, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_2_0(v9);
  if (v31)
  {
    sub_2693CDA8C(v9, &qword_28030F610, &qword_269425760);
    *(v15 + 624) = 0u;
    *(v15 + 640) = 0u;
  }

  else
  {
    *(v15 + 648) = v30;
    __swift_allocate_boxed_opaque_existential_0((v15 + 624));
    OUTLINED_FUNCTION_0_1();
    (*(v36 + 32))();
  }

  strcpy((v15 + 656), "targetLanguage");
  *(v15 + 671) = -18;
  sub_2693CDA24(v1 + v29[17], v6, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_2_0(v6);
  if (v31)
  {
    sub_2693CDA8C(v6, &qword_28030F610, &qword_269425760);
    *(v15 + 672) = 0u;
    *(v15 + 688) = 0u;
  }

  else
  {
    *(v15 + 696) = v30;
    __swift_allocate_boxed_opaque_existential_0((v15 + 672));
    OUTLINED_FUNCTION_0_1();
    (*(v37 + 32))();
  }

  *(v15 + 704) = 0x6574496C61746F74;
  *(v15 + 712) = 0xEA0000000000736DLL;
  v38 = (v1 + v29[18]);
  if (v38[1])
  {
    v39 = 0;
    *(v15 + 728) = 0u;
    v40 = 0;
  }

  else
  {
    v40 = *v38;
    v39 = MEMORY[0x277D839F8];
  }

  *(v15 + 720) = v40;
  *(v15 + 744) = v39;
  *(v15 + 752) = 0x6953776F646E6977;
  *(v15 + 760) = 0xEA0000000000657ALL;
  v41 = (v1 + v29[19]);
  if (v41[1])
  {
    v42 = 0;
    *(v15 + 776) = 0u;
    v43 = 0;
  }

  else
  {
    v43 = *v41;
    v42 = MEMORY[0x277D839F8];
  }

  *(v15 + 768) = v43;
  *(v15 + 792) = v42;
  return v15;
}

uint64_t sub_2693CD3A4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_2693CD3C8, 0, 0);
}

uint64_t sub_2693CD3C8()
{
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F600, &qword_269425750);
  v2 = swift_allocObject();
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_2694256B0;
  OUTLINED_FUNCTION_1_0();
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = v4;
  *(v3 + 72) = MEMORY[0x277D839B0];
  *(v3 + 48) = v1;
  v7 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_2693CD4F4;

  return v7(0xD000000000000016, 0x80000002694291D0, v2);
}

uint64_t sub_2693CD4F4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2693CD64C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_2693CD64C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2693CD704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_269423EB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F620, &unk_269425770);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2693CDA24(a1, &v13 - v10, &qword_28030F620, &unk_269425770);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_269423CB8();
  (*(v6 + 8))(a2, v5);
  sub_2693CDA8C(a1, &qword_28030F620, &unk_269425770);
  return v11;
}

uint64_t sub_2693CD890()
{
  v0 = sub_269423CE8();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2693CD9EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693CDA24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2693CDA8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2693CDB20()
{
  if (!qword_28030F638)
  {
    v0 = sub_269424408();
    if (!v1)
    {
      atomic_store(v0, &qword_28030F638);
    }
  }
}

void sub_2693CDB70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2693CDD1C(uint64_t a1)
{
  sub_2693CDB20();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2693CDB70(319, &qword_28030F640, type metadata accessor for TranslationItem, MEMORY[0x277D83940]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_2693CDB70(319, &qword_28030F648, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_2693CDE6C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_2693CDEAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2693CE058(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_269423FC8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_269423FB8();
}

uint64_t sub_2693CE0D0()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314E58);
  OUTLINED_FUNCTION_0_2();
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_2693CE124()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314E70);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  return sub_269423FB8();
}

uint64_t sub_2693CE194()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314E88);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  return sub_269423FB8();
}

uint64_t sub_2693CE204()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314EA0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  return sub_269423FB8();
}

uint64_t sub_2693CE274()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314EB8);
  __swift_project_value_buffer(v0, qword_280314EB8);
  return sub_269423FB8();
}

uint64_t sub_2693CE2F4()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314ED0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  return sub_269423FB8();
}

uint64_t sub_2693CE364()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314EE8);
  OUTLINED_FUNCTION_0_2();
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_2693CE3B8()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314F00);
  OUTLINED_FUNCTION_0_2();
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_2693CE40C()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314F18);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  return sub_269423FB8();
}

uint64_t sub_2693CE47C()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314F30);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  return sub_269423FB8();
}

uint64_t sub_2693CE4EC()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, static TranslationLog.smartAdoptionLog);
  __swift_project_value_buffer(v0, static TranslationLog.smartAdoptionLog);
  return sub_269423FB8();
}

uint64_t sub_2693CE598(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_269423FC8();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_2693CE614@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_269423FC8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return sub_269423FB8();
}

uint64_t sub_2693CE7A4()
{
  v1 = OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_text;
  v2 = sub_269423DA8();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  OUTLINED_FUNCTION_2_2(OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_wordType);
  OUTLINED_FUNCTION_2_2(OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_definition);
  OUTLINED_FUNCTION_2_2(OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_speakAction);
  OUTLINED_FUNCTION_2_2(OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_stopSpeakAction);
  OUTLINED_FUNCTION_2_2(OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_identifier);
  OUTLINED_FUNCTION_2_2(OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_romanization);
  return v0;
}

uint64_t sub_2693CE83C()
{
  sub_2693D033C(v0 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_text);
  sub_2693D033C(v0 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_wordType);
  sub_2693D033C(v0 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_definition);
  sub_2693D033C(v0 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_speakAction);
  sub_2693D033C(v0 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_stopSpeakAction);
  sub_2693D033C(v0 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_identifier);
  sub_2693D033C(v0 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_romanization);
  return v0;
}

uint64_t sub_2693CE900(uint64_t a1)
{
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_13(a1 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_text, v16);
  OUTLINED_FUNCTION_12(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_text);
  OUTLINED_FUNCTION_13(a1 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_wordType, v15);
  OUTLINED_FUNCTION_12(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_wordType);
  OUTLINED_FUNCTION_13(a1 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_definition, v14);
  OUTLINED_FUNCTION_12(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_definition);
  OUTLINED_FUNCTION_13(a1 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_speakAction, v13);
  OUTLINED_FUNCTION_12(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_speakAction);
  OUTLINED_FUNCTION_13(a1 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_stopSpeakAction, v12);
  OUTLINED_FUNCTION_12(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_stopSpeakAction);
  OUTLINED_FUNCTION_13(a1 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_identifier, v11);
  OUTLINED_FUNCTION_12(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_identifier);
  OUTLINED_FUNCTION_13(a1 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_romanization, v10);
  OUTLINED_FUNCTION_12(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_romanization);
  if (!sub_2693CEB14())
  {
    v3 = sub_269423E88();
    sub_269424378();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F690, &qword_269425988);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2694256B0;
    v9 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F698, &qword_269425990);
    v5 = sub_269424128();
    v7 = v6;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_2693D02E8();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_269423F98("Building an instance of %s without all required inputs", v9);
  }

  return v1;
}

BOOL sub_2693CEB14()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_10();
  v6 = v4 - v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  sub_2693D0278(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_text, &v25 - v16);
  sub_269423DA8();
  v18 = OUTLINED_FUNCTION_16(v17);
  sub_2693D033C(v17);
  if (v18 == 1)
  {
    return 0;
  }

  sub_2693D0278(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_wordType, v2);
  v19 = OUTLINED_FUNCTION_16(v2);
  sub_2693D033C(v2);
  if (v19 == 1)
  {
    return 0;
  }

  sub_2693D0278(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_definition, v14);
  v20 = OUTLINED_FUNCTION_16(v14);
  sub_2693D033C(v14);
  if (v20 == 1)
  {
    return 0;
  }

  sub_2693D0278(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_speakAction, v1);
  v21 = OUTLINED_FUNCTION_16(v1);
  sub_2693D033C(v1);
  if (v21 == 1)
  {
    return 0;
  }

  sub_2693D0278(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_stopSpeakAction, v10);
  v22 = OUTLINED_FUNCTION_16(v10);
  sub_2693D033C(v10);
  if (v22 == 1)
  {
    return 0;
  }

  sub_2693D0278(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_identifier, v6);
  v23 = OUTLINED_FUNCTION_16(v6) != 1;
  sub_2693D033C(v6);
  return v23;
}

uint64_t sub_2693CED58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v60 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_10();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v59 - v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  v23 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v23 || (OUTLINED_FUNCTION_6(1954047348, 0xE400000000000000) & 1) != 0)
  {
    v24 = OUTLINED_FUNCTION_9(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_text);
    sub_2693D0278(v24, v22);
    v25 = sub_269423DA8();
    if (__swift_getEnumTagSinglePayload(v22, 1, v25) == 1)
    {
      v26 = v22;
LABEL_8:
      result = sub_2693D033C(v26);
LABEL_9:
      v28 = v60;
      *v60 = 0u;
      *(v28 + 1) = 0u;
      return result;
    }

    v29 = v60;
    v60[3] = v25;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    return (*(*(v25 - 8) + 32))(boxed_opaque_existential_0, v22, v25);
  }

  else
  {
    v31 = a1 == 0x6570795464726F77 && a2 == 0xE800000000000000;
    if (v31 || (OUTLINED_FUNCTION_6(0x6570795464726F77, 0xE800000000000000) & 1) != 0)
    {
      v32 = OUTLINED_FUNCTION_9(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_wordType);
      sub_2693D0278(v32, v6);
      v33 = sub_269423DA8();
      OUTLINED_FUNCTION_3_0(v6);
      if (v23)
      {
        v26 = v6;
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_1_2();
      v36 = *(v35 + 32);
      v37 = v6;
    }

    else
    {
      v38 = a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL;
      if (v38 || (OUTLINED_FUNCTION_6(0x6974696E69666564, 0xEA00000000006E6FLL) & 1) != 0)
      {
        v39 = OUTLINED_FUNCTION_9(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_definition);
        sub_2693D0278(v39, v5);
        v33 = sub_269423DA8();
        OUTLINED_FUNCTION_3_0(v5);
        if (v23)
        {
          v26 = v5;
          goto LABEL_8;
        }

        OUTLINED_FUNCTION_15();
        OUTLINED_FUNCTION_1_2();
        v36 = *(v40 + 32);
        v37 = v5;
      }

      else
      {
        v41 = OUTLINED_FUNCTION_17();
        v43 = a1 == v41 && a2 == v42;
        if (v43 || (OUTLINED_FUNCTION_6(v41, v42) & 1) != 0)
        {
          v44 = OUTLINED_FUNCTION_9(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_speakAction);
          sub_2693D0278(v44, v18);
          v33 = sub_269423DA8();
          OUTLINED_FUNCTION_3_0(v18);
          if (v23)
          {
            v26 = v18;
            goto LABEL_8;
          }

          OUTLINED_FUNCTION_15();
          OUTLINED_FUNCTION_1_2();
          v36 = *(v45 + 32);
          v37 = v18;
        }

        else
        {
          v46 = OUTLINED_FUNCTION_14();
          v48 = a1 == v46 && a2 == v47;
          if (v48 || (OUTLINED_FUNCTION_6(v46, v47) & 1) != 0)
          {
            v49 = OUTLINED_FUNCTION_9(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_stopSpeakAction);
            sub_2693D0278(v49, v4);
            v33 = sub_269423DA8();
            OUTLINED_FUNCTION_3_0(v4);
            if (v23)
            {
              v26 = v4;
              goto LABEL_8;
            }

            OUTLINED_FUNCTION_15();
            OUTLINED_FUNCTION_1_2();
            v36 = *(v50 + 32);
            v37 = v4;
          }

          else
          {
            v51 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
            if (v51 || (OUTLINED_FUNCTION_6(0x696669746E656469, 0xEA00000000007265) & 1) != 0)
            {
              v52 = OUTLINED_FUNCTION_9(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_identifier);
              sub_2693D0278(v52, v3);
              v33 = sub_269423DA8();
              OUTLINED_FUNCTION_3_0(v3);
              if (v23)
              {
                v26 = v3;
                goto LABEL_8;
              }

              OUTLINED_FUNCTION_15();
              OUTLINED_FUNCTION_1_2();
              v36 = *(v53 + 32);
              v37 = v3;
            }

            else
            {
              v54 = OUTLINED_FUNCTION_18();
              if (a1 != v54 || a2 != v55)
              {
                result = OUTLINED_FUNCTION_6(v54, v55);
                if ((result & 1) == 0)
                {
                  goto LABEL_9;
                }
              }

              v57 = OUTLINED_FUNCTION_9(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_romanization);
              sub_2693D0278(v57, v12);
              v33 = sub_269423DA8();
              OUTLINED_FUNCTION_3_0(v12);
              if (v23)
              {
                v26 = v12;
                goto LABEL_8;
              }

              OUTLINED_FUNCTION_15();
              OUTLINED_FUNCTION_1_2();
              v36 = *(v58 + 32);
              v37 = v12;
            }
          }
        }
      }
    }

    return v36(v34, v37, v33);
  }
}

unint64_t sub_2693CF204(uint64_t a1, uint64_t a2)
{
  v2 = sub_2694245A8();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2693CF25C(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0x6570795464726F77;
      break;
    case 2:
      result = 0x6974696E69666564;
      break;
    case 3:
      result = OUTLINED_FUNCTION_17();
      break;
    case 4:
      result = OUTLINED_FUNCTION_14();
      break;
    case 5:
      result = 0x696669746E656469;
      break;
    case 6:
      result = OUTLINED_FUNCTION_18();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2693CF36C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2693CF204(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2693CF39C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2693CF25C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2693CF3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2693CF250(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2693CF404(uint64_t a1)
{
  v2 = sub_2693D03A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693CF440(uint64_t a1)
{
  v2 = sub_2693D03A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2693CF47C()
{
  sub_2693D033C(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_text);
  sub_2693D033C(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_wordType);
  sub_2693D033C(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_definition);
  sub_2693D033C(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_speakAction);
  sub_2693D033C(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_stopSpeakAction);
  sub_2693D033C(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_identifier);
  sub_2693D033C(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_romanization);
  return v0;
}

uint64_t sub_2693CF524(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_2693CF5A8(uint64_t a1)
{
  sub_2693CF8D8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2693CF650(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F6C0, &qword_2694259A0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2693D03A4();
  sub_269424788();
  v11 = OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_text;
  v22 = 0;
  sub_269423DA8();
  OUTLINED_FUNCTION_5();
  sub_2693D0230(v12, v13, MEMORY[0x277D55C50]);
  OUTLINED_FUNCTION_0_3(v3 + v11, &v22);
  if (!v2)
  {
    v21 = 1;
    OUTLINED_FUNCTION_0_3(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_wordType, &v21);
    v20 = 2;
    OUTLINED_FUNCTION_0_3(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_definition, &v20);
    v19 = 3;
    OUTLINED_FUNCTION_0_3(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_speakAction, &v19);
    v18 = 4;
    OUTLINED_FUNCTION_0_3(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_stopSpeakAction, &v18);
    v17 = 5;
    OUTLINED_FUNCTION_0_3(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_identifier, &v17);
    v16 = 6;
    OUTLINED_FUNCTION_0_3(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_romanization, &v16);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_2693CF888(void *a1)
{
  v2 = swift_allocObject();
  sub_2693CF9F4(a1);
  return v2;
}

void sub_2693CF8D8(uint64_t a1)
{
  if (!qword_28030F648)
  {
    sub_269423DA8();
    v1 = sub_269424408();
    if (!v2)
    {
      atomic_store(v1, &qword_28030F648);
    }
  }
}

void sub_2693CF958(uint64_t a1)
{
  sub_2693CF8D8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2693CF9F4(void *a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_10();
  v44 = v7 - v8;
  v10 = MEMORY[0x28223BE20](v9);
  v45 = v41 - v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v41 - v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v47 = v41 - v18;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F6A8, &qword_269425998);
  OUTLINED_FUNCTION_2();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v49 = v1;
  v50 = a1;
  *(v1 + 16) = 0;
  v22 = a1[3];
  v23 = a1;
  v25 = v41 - v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_2693D03A4();
  v26 = v48;
  sub_269424778();
  if (v26)
  {
    v34 = v49;

    type metadata accessor for TranslationItem(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = v2;
    v48 = v3;
    v42 = v4;
    v43 = v15;
    v28 = v20;
    v29 = sub_269423DA8();
    v57 = 0;
    OUTLINED_FUNCTION_5();
    v32 = sub_2693D0230(v30, v31, MEMORY[0x277D55C60]);
    sub_2694245D8();
    v34 = v49;
    sub_2693D03F8(v47, v49 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_text);
    v56 = 1;
    v47 = v29;
    v41[2] = v32;
    v35 = v25;
    sub_2694245D8();
    sub_2693D03F8(v27, v34 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_wordType);
    v55 = 2;
    v36 = v48;
    OUTLINED_FUNCTION_8();
    v41[1] = 0;
    sub_2694245D8();
    sub_2693D03F8(v36, v34 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_definition);
    v54 = 3;
    v37 = v43;
    OUTLINED_FUNCTION_8();
    sub_2694245D8();
    sub_2693D03F8(v37, v34 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_speakAction);
    v53 = 4;
    v38 = v42;
    sub_2694245D8();
    sub_2693D03F8(v38, v34 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_stopSpeakAction);
    v52 = 5;
    v39 = v45;
    OUTLINED_FUNCTION_8();
    sub_2694245D8();
    sub_2693D03F8(v39, v34 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_identifier);
    v51 = 6;
    v40 = v44;
    sub_2694245D8();
    (*(v28 + 8))(v35, v46);
    sub_2693D03F8(v40, v34 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_romanization);
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
  return v34;
}

void *sub_2693D0040()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_2693D0088(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t sub_2693D0150@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2693CF888(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2693D0230(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2693D0278(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2693D02E8()
{
  result = qword_28030F6A0;
  if (!qword_28030F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F6A0);
  }

  return result;
}

uint64_t sub_2693D033C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2693D03A4()
{
  result = qword_28030F6B0;
  if (!qword_28030F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F6B0);
  }

  return result;
}

uint64_t sub_2693D03F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for TranslationItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for TranslationItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2693D05BCLL);
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

unint64_t sub_2693D05F8()
{
  result = qword_28030F6D0;
  if (!qword_28030F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F6D0);
  }

  return result;
}

unint64_t sub_2693D0650()
{
  result = qword_28030F6D8;
  if (!qword_28030F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F6D8);
  }

  return result;
}

unint64_t sub_2693D06A8()
{
  result = qword_28030F6E0;
  if (!qword_28030F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F6E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FDAF0](a1, a2, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_2_2@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1, uint64_t a2)
{

  return sub_269424688();
}

uint64_t OUTLINED_FUNCTION_12@<X0>(uint64_t a1@<X8>)
{

  return sub_2693D0278(v1 + v3, v2 + a1);
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t *OUTLINED_FUNCTION_15()
{
  v3 = *(v1 - 88);
  v3[3] = v0;

  return __swift_allocate_boxed_opaque_existential_0(v3);
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

id sub_2693D090C()
{
  if (qword_28030F0E8 != -1)
  {
    swift_once();
  }

  v0 = qword_280314FD8;

  sub_269423468();
  v1 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentHandler(0));
  result = sub_2693EE41C(v0, v3);
  qword_280314FD0 = result;
  return result;
}

uint64_t sub_2693D099C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC22SiriTranslationIntents23TranslatePhraseStrategy_log;
  if (qword_28030F0A0 != -1)
  {
    swift_once();
  }

  v6 = sub_269423FC8();
  v7 = __swift_project_value_buffer(v6, qword_280314EA0);
  (*(*(v6 - 8) + 16))(v2 + v5, v7, v6);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_2693D0A5C@<X0>(char *a1@<X8>)
{
  sub_2694234E8();
  OUTLINED_FUNCTION_2();
  v81 = v3;
  v82 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10();
  v79[1] = v4 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = v79 - v7;
  sub_269423488();
  OUTLINED_FUNCTION_2();
  v83 = v10;
  v84 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10();
  v80 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v85 = v79 - v14;
  v15 = sub_269423458();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v79 - v23;
  v86 = OBJC_IVAR____TtC22SiriTranslationIntents23TranslatePhraseStrategy_log;
  v25 = sub_269423FA8();
  v26 = sub_269424368();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_12_0();
    v79[0] = v8;
    *v27 = 0;
    _os_log_impl(&dword_2693C9000, v25, v26, "Action for input", v27, 2u);
    v8 = v79[0];
    OUTLINED_FUNCTION_6_0();
  }

  sub_269423408();
  v28 = OUTLINED_FUNCTION_22();
  if (v29(v28) != *MEMORY[0x277D5C160])
  {
    sub_269423408();
    sub_26940E444();
    v36 = v35;
    v37 = *(v17 + 8);
    v38 = v37(v21, v15);
    if (v36)
    {
      sub_26941C0F8(v36);
      if (!v39)
      {
        sub_26941C104(v36);
        if (!v40)
        {
          v67 = v36;
          v68 = OUTLINED_FUNCTION_18_0(v67);
          v69 = sub_269424378();

          LODWORD(v86) = v69;
          if (os_log_type_enabled(v68, v69))
          {
            v70 = OUTLINED_FUNCTION_17_0();
            v84 = OUTLINED_FUNCTION_16_0();
            v87 = v84;
            *v70 = 136315138;
            v71 = v67;
            v72 = [v71 description];
            v73 = sub_269424118();
            v85 = a1;
            v75 = v74;

            v76 = sub_2693DB6E0(v73, v75, &v87);

            *(v70 + 4) = v76;
            OUTLINED_FUNCTION_13_0(&dword_2693C9000, v77, v86, "Ignoring because phrase and/or targeLanguage is missing: %s");
            __swift_destroy_boxed_opaque_existential_1(v84);
            OUTLINED_FUNCTION_1_3();
            OUTLINED_FUNCTION_6_0();
          }

          else
          {
          }

          v78 = OUTLINED_FUNCTION_22();
          (v37)(v78);
          return sub_2694230B8();
        }
      }

      v42 = OUTLINED_FUNCTION_18_0(v41);
      v43 = sub_269424368();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = OUTLINED_FUNCTION_12_0();
        *v44 = 0;
        _os_log_impl(&dword_2693C9000, v42, v43, "Handling intent.", v44, 2u);
        OUTLINED_FUNCTION_1_3();
      }

      sub_2694230A8();
    }

    else
    {
      v50 = OUTLINED_FUNCTION_18_0(v38);
      v51 = sub_269424378();
      if (OUTLINED_FUNCTION_23(v51))
      {
        v52 = OUTLINED_FUNCTION_12_0();
        *v52 = 0;
        _os_log_impl(&dword_2693C9000, v50, v51, "Could not parse intent. Ignoring.", v52, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      sub_2694230B8();
    }

    v53 = OUTLINED_FUNCTION_22();
    return (v37)(v53);
  }

  v30 = OUTLINED_FUNCTION_22();
  v31(v30);
  v33 = v83;
  v32 = v84;
  v34 = v85;
  (*(v83 + 32))(v85, v24, v84);
  type metadata accessor for ConverterUtils();
  sub_269423478();
  v45 = sub_269410C20();
  v46 = (*(v81 + 8))(v8, v82);
  if (v45)
  {
    v47 = OUTLINED_FUNCTION_18_0(v46);
    v48 = sub_269424378();
    if (OUTLINED_FUNCTION_23(v48))
    {
      v49 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_20_0(v49);
      _os_log_impl(&dword_2693C9000, v47, v48, "Supported translation uso parse.", 0, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    sub_2694230A8();
  }

  else
  {
    v55 = v80;
    v56 = (*(v33 + 16))(v80, v34, v32);
    v57 = OUTLINED_FUNCTION_18_0(v56);
    v58 = sub_269424378();
    if (OUTLINED_FUNCTION_23(v58))
    {
      v59 = OUTLINED_FUNCTION_17_0();
      v60 = v55;
      v61 = OUTLINED_FUNCTION_16_0();
      v87 = v61;
      *v59 = 136315138;
      sub_269423478();
      v62 = sub_269424128();
      v64 = v63;
      (*(v33 + 8))(v60, v32);
      v65 = sub_2693DB6E0(v62, v64, &v87);

      *(v59 + 4) = v65;
      OUTLINED_FUNCTION_13_0(&dword_2693C9000, v66, v58, "Unsupported uso parse: %s.");
      __swift_destroy_boxed_opaque_existential_1(v61);
      OUTLINED_FUNCTION_1_3();
      v34 = v85;
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      (*(v33 + 8))(v55, v32);
    }

    sub_2694230B8();
  }

  return (*(v33 + 8))(v34, v32);
}

uint64_t sub_2693D1274()
{
  OUTLINED_FUNCTION_11_0();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2694234E8();
  v1[5] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[6] = v4;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = sub_269423488();
  v1[10] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[11] = v6;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v7 = sub_269423458();
  v1[14] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[15] = v8;
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2693D13F4, 0, 0);
}

uint64_t sub_2693D13F4(uint64_t a1)
{
  v110 = v1;
  v2 = v1;
  v3 = sub_269423FA8();
  v4 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v4))
  {
    v5 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v5);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v12 = v1 + 16;
  v11 = v2[16];
  v14 = v2 + 15;
  v13 = v2[15];
  v16 = v2 + 14;
  v15 = v2[14];
  v17 = v2[3];

  v105 = *(v13 + 16);
  v105(v11, v17, v15);
  if ((*(v13 + 88))(v11, v15) == *MEMORY[0x277D5C160])
  {
    v12 = v2 + 13;
    v18 = v2[13];
    v19 = v2[16];
    v14 = v2 + 11;
    v20 = v2[11];
    v16 = v2 + 10;
    v21 = v2[10];
    (*(v2[15] + 96))(v19, v2[14]);
    (*(v20 + 32))(v18, v19, v21);
    type metadata accessor for ConverterUtils();
    sub_269423478();
    v22 = sub_269410C20();
    v23 = *(v2[6] + 8);
    v23(v2[9], v2[5]);
    if ((v22 & 1) == 0)
    {
      (*(v2[11] + 16))(v2[12], *v12, v2[10]);
      v93 = sub_269423FA8();
      v94 = sub_269424378();
      v95 = OUTLINED_FUNCTION_23(v94);
      v97 = v2[11];
      v96 = v2[12];
      v98 = v2[10];
      if (v95)
      {
        v99 = OUTLINED_FUNCTION_17_0();
        v100 = OUTLINED_FUNCTION_16_0();
        v109[0] = v100;
        *v99 = 136315138;
        sub_269423478();
        v101 = sub_269424128();
        v108 = v94;
        v103 = v102;
        (*(v97 + 8))(v96, v98);
        v104 = sub_2693DB6E0(v101, v103, v109);

        *(v99 + 4) = v104;
        _os_log_impl(&dword_2693C9000, v93, v108, "Unsupported uso parse: %s.", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v100);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_1_3();
      }

      else
      {

        (*(v97 + 8))(v96, v98);
      }

LABEL_15:
      v50 = v2[13];
      v52 = v2[10];
      v51 = v2[11];
      type metadata accessor for TranslatePhraseStrategy.IntentConversionError(0);
      OUTLINED_FUNCTION_0_4();
      v55 = sub_2693D2D08(v53, v54, &unk_269425D28);
      v56 = OUTLINED_FUNCTION_7_0(v55);
      v58 = OUTLINED_FUNCTION_21_0(v56, v57);
      v59(v58);
      swift_willThrow();
      (*(v51 + 8))(v50, v52);
LABEL_24:

      v92 = v2[1];

      return v92();
    }

    v60 = v2[8];
    sub_269423478();
    v39 = sub_2694062B0(v60, 1);
    v23(v2[8], v2[5]);
    if (!v39)
    {
      v61 = sub_269423FA8();
      v62 = sub_269424378();
      if (OUTLINED_FUNCTION_15_0(v62))
      {
        v63 = OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_20_0(v63);
        OUTLINED_FUNCTION_3_1();
        _os_log_impl(v64, v65, v66, v67, v68, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      type metadata accessor for TranslatePhraseStrategy.IntentConversionError(0);
      OUTLINED_FUNCTION_0_4();
      v71 = sub_2693D2D08(v69, v70, &unk_269425D28);
      v72 = OUTLINED_FUNCTION_7_0(v71);
      v74 = OUTLINED_FUNCTION_21_0(v72, v73);
      v75(v74);
      swift_willThrow();
      v24 = v72;
      v25 = sub_269423FA8();
      v26 = sub_269424378();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_17_0();
        v28 = OUTLINED_FUNCTION_16_0();
        v109[0] = v28;
        *v27 = 136315138;
        v2[2] = v72;
        v29 = v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310180, &unk_269425CC0);
        v30 = sub_269424128();
        v32 = sub_2693DB6E0(v30, v31, v109);

        *(v27 + 4) = v32;
        OUTLINED_FUNCTION_3_1();
        _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_26940E444();
    if (!v38)
    {
      v76 = sub_269423FA8();
      v77 = sub_269424378();
      if (OUTLINED_FUNCTION_15_0(v77))
      {
        v78 = OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_20_0(v78);
        OUTLINED_FUNCTION_3_1();
        _os_log_impl(v79, v80, v81, v82, v83, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v85 = v2[15];
      v84 = v2[16];
      v86 = v2[14];
      v87 = v2[3];

      type metadata accessor for TranslatePhraseStrategy.IntentConversionError(0);
      OUTLINED_FUNCTION_0_4();
      v90 = sub_2693D2D08(v88, v89, &unk_269425D28);
      OUTLINED_FUNCTION_7_0(v90);
      v105(v91, v87, v86);
      swift_willThrow();
      (*(v85 + 8))(v84, v86);
      goto LABEL_24;
    }

    v39 = v38;
    v40 = sub_269423FA8();
    v41 = sub_269424368();

    v107 = v41;
    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_17_0();
      v106 = OUTLINED_FUNCTION_16_0();
      v109[0] = v106;
      *v42 = 136315138;
      v39 = v39;
      v43 = [(uint8_t *)v39 description];
      v44 = sub_269424118();
      v46 = v45;

      v47 = sub_2693DB6E0(v44, v46, v109);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_2693C9000, v40, v107, "Resulting intent: %s.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v106);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_1_3();
    }
  }

  (*(*v14 + 8))(*v12, *v16);

  v48 = v2[1];

  return v48(v39);
}

uint64_t sub_2693D1C08()
{
  v1 = type metadata accessor for TranslatePhraseStrategy.IntentConversionError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101C0, &qword_269425D68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2694256B0;
  *(inited + 32) = sub_269424118();
  *(inited + 40) = v5;
  sub_2693D2FA0(v0, v3);
  v6 = sub_269424128();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  return sub_2694240B8();
}

uint64_t sub_2693D1D08(uint64_t a1)
{
  v2 = sub_2693D2D08(&qword_28030F730, type metadata accessor for TranslatePhraseStrategy.IntentConversionError, &unk_269425CE8);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2693D1D74(uint64_t a1)
{
  v2 = sub_2693D2D08(&qword_28030F730, type metadata accessor for TranslatePhraseStrategy.IntentConversionError, &unk_269425CE8);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2693D1DF4()
{

  v1 = OBJC_IVAR____TtC22SiriTranslationIntents23TranslatePhraseStrategy_log;
  v2 = sub_269423FC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_2693D1E64()
{
  sub_2693D1DF4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2693D1EE4(uint64_t a1)
{
  result = sub_269423FC8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2693D1FA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2693D2040;

  return sub_2693D1274();
}

uint64_t sub_2693D2040()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_2693D2134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TranslatePhraseStrategy(0);

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_2693D2184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2693D3004;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_2693D2248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for TranslatePhraseStrategy(0);
  *v10 = v5;
  v10[1] = sub_2693D3004;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t sub_2693D2318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for TranslatePhraseStrategy(0);
  *v10 = v5;
  v10[1] = sub_2693D3004;

  return MEMORY[0x2821B9D88](a1, a2, a3, v11, a5);
}

uint64_t sub_2693D23E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for TranslatePhraseStrategy(0);
  *v10 = v5;
  v10[1] = sub_2693D3004;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t sub_2693D24B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for TranslatePhraseStrategy(0);
  *v12 = v6;
  v12[1] = sub_2693D2598;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_2693D2598()
{
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2693D2680(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2693D2734;

  return sub_2693D281C(a1, a2);
}

uint64_t sub_2693D2734()
{
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10_0();

  return v4(v3);
}

uint64_t sub_2693D281C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_269422FE8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2693D28DC, 0, 0);
}

uint64_t sub_2693D28DC()
{
  sub_269423008();
  v1 = qword_28030F0E0;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v3 = qword_280314FD0;
  type metadata accessor for TranslatePhraseIntent();
  v4 = v3;
  OUTLINED_FUNCTION_14_0(v2);
  sub_269422FF8();
  v5 = OUTLINED_FUNCTION_19_0();
  v6(v5);

  v7 = OUTLINED_FUNCTION_10_0();

  return v8(v7);
}

uint64_t sub_2693D29E0()
{
  OUTLINED_FUNCTION_11_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_269422FE8();
  v0[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v0[5] = v4;
  v0[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2693D2A94, 0, 0);
}

uint64_t sub_2693D2A94()
{
  sub_269423008();
  v1 = qword_28030F0F8;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v3 = qword_280314FF0;
  type metadata accessor for TranslatePhraseIntent();
  v4 = v3;
  OUTLINED_FUNCTION_14_0(v2);
  sub_269422FF8();
  v5 = OUTLINED_FUNCTION_19_0();
  v6(v5);

  v7 = OUTLINED_FUNCTION_10_0();

  return v8(v7);
}

uint64_t sub_2693D2B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for TranslatePhraseStrategy(0);
  *v12 = v6;
  v12[1] = sub_2693D3004;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_2693D2D08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2693D2D50(uint64_t a1)
{
  result = sub_2693D2D08(&qword_28030F700, type metadata accessor for TranslatePhraseStrategy, &unk_269425B98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2693D2E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_269423458();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2693D2E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269423458();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_2693D2EB0(uint64_t a1)
{
  v2 = sub_269423458();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_2693D2FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslatePhraseStrategy.IntentConversionError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_1_3()
{

  JUMPOUT(0x26D63C8E0);
}

void OUTLINED_FUNCTION_4_1()
{

  JUMPOUT(0x26D63C8E0);
}

void OUTLINED_FUNCTION_6_0()
{

  JUMPOUT(0x26D63C8E0);
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_13_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1)
{

  return MEMORY[0x2821BA738](v1, v3, a1, v2);
}

BOOL OUTLINED_FUNCTION_15_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_0(uint64_t a1)
{

  return sub_269423FA8();
}

BOOL OUTLINED_FUNCTION_23(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2693D31F0()
{
  type metadata accessor for TranslationApiClient(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents20TranslationApiClient_log;
  if (qword_28030F088 != -1)
  {
    swift_once();
  }

  v2 = sub_269423FC8();
  v3 = __swift_project_value_buffer(v2, qword_280314E58);
  result = (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  qword_280314FD8 = v0;
  return result;
}

id sub_2693D32B8()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = sub_269424118();
    v4 = sub_2693D53B8(v2, v3, v1);

    return (v4 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2693D3328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v50 = a8;
  v48 = a7;
  v12 = sub_269422D48();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v49 = [objc_allocWithZone(MEMORY[0x277CE1C40]) init];

  sub_269422D28();

  sub_269422D28();
  v18 = objc_allocWithZone(MEMORY[0x277CE1BF0]);
  v19 = sub_2693D518C(v17, v15);
  [v19 setTaskHint_];
  sub_2693D554C(0, &qword_28030F768, 0x277CCA898);

  v20 = sub_2693D380C(a1, a2);
  [v19 setText_];

  [v19 setCensorSpeech_];
  sub_269423C48();
  sub_269423C38();
  sub_269423C18();

  sub_269423F08();
  v24 = v23;

  if (!v24)
  {
    v25 = [v19 uniqueID];
    sub_269424118();
  }

  v26 = sub_269424108();

  [v19 setUniqueID_];

  v27 = v19;
  v28 = sub_269423FA8();
  v29 = sub_269424368();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_17_0();
    v31 = OUTLINED_FUNCTION_16_0();
    aBlock[0] = v31;
    *v30 = 136315138;
    v32 = [v27 uniqueID];
    v33 = sub_269424118();
    v35 = v34;

    v36 = sub_2693DB6E0(v33, v35, aBlock);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_2693C9000, v28, v29, "Request unique id is %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v37 = v27;
  v38 = sub_269423FA8();
  v39 = sub_269424368();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 67109378;
    *(v40 + 4) = [v37 censorSpeech];

    *(v40 + 8) = 2112;
    v42 = [v37 text];
    *(v40 + 10) = v42;
    *v41 = v42;
    _os_log_impl(&dword_2693C9000, v38, v39, "Censor speech flag is %{BOOL}d for %@", v40, 0x12u);
    sub_2693D5350(v41);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v38 = v37;
  }

  v43 = swift_allocObject();
  v44 = v48;
  v43[2] = v9;
  v43[3] = v44;
  v43[4] = v50;
  OUTLINED_FUNCTION_0_5(v43);
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2693D44D0;
  aBlock[3] = &block_descriptor_9;
  v45 = _Block_copy(aBlock);

  [v37 setTextTranslationHandler:v45];
  _Block_release(v45);
  v46 = v49;
  [v49 translate_];
}

id sub_2693D380C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_269424108();

  v4 = [v2 initWithString_];

  return v4;
}

void sub_2693D3880(void *a1, void *a2, id a3, uint64_t a4, void (*a5)(void))
{
  if (a3)
  {
    v7 = a3;
    v8 = sub_269423FA8();
    v9 = sub_269424378();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v116 = a3;
      v117 = v11;
      *v10 = 136315138;
      v12 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F760, &qword_269425DC8);
      v13 = sub_269424128();
      v15 = sub_2693DB6E0(v13, v14, &v117);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_2693C9000, v8, v9, "Translation call failed with error: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x26D63C8E0](v11, -1, -1);
      MEMORY[0x26D63C8E0](v10, -1, -1);
    }

    v16 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentResponse());
    v17 = TranslatePhraseIntentResponse.init(code:userActivity:)(101, 0);
    a5();
LABEL_5:

    return;
  }

  v20 = type metadata accessor for TranslatePhraseIntentResponse();
  v21 = objc_allocWithZone(v20);
  v22 = TranslatePhraseIntentResponse.init(code:userActivity:)(4, 0);
  v23 = MEMORY[0x277D84F90];
  v112 = v22;
  if (!a2)
  {
    if (!a1)
    {
      v102 = sub_269423FA8();
      v103 = sub_269424378();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v116 = 0;
        v117 = v105;
        *v104 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F770, &qword_269425DD8);
        v106 = sub_269424128();
        v108 = sub_2693DB6E0(v106, v107, &v117);

        *(v104 + 4) = v108;
        _os_log_impl(&dword_2693C9000, v102, v103, "Translation call failed with unexpected result: %s and nil text.", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v105);
        MEMORY[0x26D63C8E0](v105, -1, -1);
        MEMORY[0x26D63C8E0](v104, -1, -1);
      }

      v109 = objc_allocWithZone(v20);
      v17 = TranslatePhraseIntentResponse.init(code:userActivity:)(101, 0);
      a5();

      goto LABEL_5;
    }

    v111 = a5;
    v117 = MEMORY[0x277D84F90];
    v25 = type metadata accessor for TranslationResultItem();
    v20 = a1;
    v76 = [v20 string];
    v77 = sub_269424118();
    v79 = v78;

    v80 = [v20 string];
    v81 = sub_269424118();
    v83 = v82;

    v84 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v85 = sub_2693D50F8(v77, v79, v81, v83);
    v86 = [v20 string];
    v87 = sub_269424118();
    v89 = v88;

    sub_2693D5414(v87, v89, v85);
    [v85 setWordType_];
    [v85 setDefinition_];
    [v85 setTranslatedSantitizedText_];
    v28 = v85;
    MEMORY[0x26D63BE10]();
    if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_48;
    }

    goto LABEL_61;
  }

  v24 = a2;
  v25 = &off_279C57000;
  v26 = [v24 translations];
  sub_2693D554C(0, &qword_28030F778, 0x277CE1BF8);
  sub_269424288();

  v27 = sub_26941C9D4();

  if (v27)
  {
    v28 = v24;
    v29 = sub_269423FA8();
    v30 = sub_269424368();

    if (os_log_type_enabled(v29, v30))
    {
      v20 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v117 = v113;
      *v20 = 136315138;
      v31 = v28;
      v32 = [v31 description];
      v33 = a5;
      v34 = sub_269424118();
      v36 = v35;

      v37 = v34;
      a5 = v33;
      v25 = &off_279C57000;
      v38 = sub_2693DB6E0(v37, v36, &v117);

      *(v20 + 4) = v38;
      _os_log_impl(&dword_2693C9000, v29, v30, "Received translation result: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v113);
      MEMORY[0x26D63C8E0](v113, -1, -1);
      MEMORY[0x26D63C8E0](v20, -1, -1);
    }

    v117 = v23;
    v39 = [v28 translations];
    v40 = sub_269424288();

    v41 = sub_26941C9D4();
    if (!v41)
    {
LABEL_51:

      sub_2693D5478(v23, v112);
      (a5)(v112);

      return;
    }

    v42 = v41;
    v110 = v28;
    v111 = a5;
    type metadata accessor for TranslationResultItem();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (v42 >= 1)
    {
      v43 = 0;
      while (1)
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x26D63C060](v43, v40);
        }

        else
        {
          v44 = *(v40 + 8 * v43 + 32);
        }

        v45 = v44;
        v46 = [v44 formattedString];
        v47 = sub_269424118();
        v49 = v48;

        v50 = [v45 formattedString];
        v51 = sub_269424118();
        v53 = v52;

        v54 = objc_allocWithZone(ObjCClassFromMetadata);
        v55 = sub_2693D50F8(v47, v49, v51, v53);
        v56 = [v45 formattedString];
        v57 = sub_269424118();
        v59 = v58;

        sub_2693D5414(v57, v59, v55);
        v60 = [v45 senses];
        sub_2693D554C(0, &qword_28030F780, 0x277CE1C20);
        v61 = sub_269424288();

        if (v61 >> 62)
        {
          if (!sub_269424588())
          {
            goto LABEL_24;
          }
        }

        else if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        sub_26942008C();
        if ((v61 & 0xC000000000000001) != 0)
        {
          v62 = MEMORY[0x26D63C060](0, v61);
        }

        else
        {
          v62 = *(v61 + 32);
        }

        v63 = v62;

        v64 = [v63 labels];

        v65 = sub_269424288();
        if (*(v65 + 16))
        {

          v66 = sub_269424108();

          goto LABEL_25;
        }

LABEL_24:

        v66 = 0;
LABEL_25:
        [v55 setWordType_];

        v67 = [v45 senses];
        v68 = sub_269424288();

        if (v68 >> 62)
        {
          if (!sub_269424588())
          {
LABEL_32:
            v71 = 0;
            goto LABEL_33;
          }
        }

        else if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        sub_26942008C();
        if ((v68 & 0xC000000000000001) != 0)
        {
          v69 = MEMORY[0x26D63C060](0, v68);
        }

        else
        {
          v69 = *(v68 + 32);
        }

        v70 = v69;

        v71 = [v70 definition];

        if (v71)
        {
          goto LABEL_34;
        }

        sub_269424118();
        v71 = sub_269424108();
LABEL_33:

LABEL_34:
        [v55 setDefinition_];

        sub_2693D54EC(v45, &selRef_sanitizedFormattedString);
        if (v72)
        {
          v73 = sub_269424108();
        }

        else
        {
          v73 = 0;
        }

        [v55 setTranslatedSantitizedText_];

        sub_2693D54EC(v45, &selRef_romanization);
        if (v74)
        {
          v75 = sub_269424108();
        }

        else
        {
          v75 = 0;
        }

        [v55 setRomanization_];

        MEMORY[0x26D63BE10]();
        if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2694242A8();
        }

        ++v43;
        sub_2694242C8();
        v23 = v117;

        if (v42 == v43)
        {
          v28 = v110;
          goto LABEL_51;
        }
      }
    }

    __break(1u);
LABEL_61:
    sub_2694242A8();
LABEL_48:
    sub_2694242C8();
    v90 = v117;

    v91 = sub_269423FA8();
    v92 = sub_269424368();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v116 = v94;
      *v93 = 136315138;
      v95 = MEMORY[0x26D63BE40](v90, v25);
      v97 = sub_2693DB6E0(v95, v96, &v116);

      *(v93 + 4) = v97;
      _os_log_impl(&dword_2693C9000, v91, v92, "Constructed translation result object using special TEXT callback parameter: %s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v94);
      MEMORY[0x26D63C8E0](v94, -1, -1);
      MEMORY[0x26D63C8E0](v93, -1, -1);
    }

    sub_2693D5478(v90, v112);
    (v111)(v112);

    return;
  }

  v98 = sub_269423FA8();
  v99 = sub_269424378();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&dword_2693C9000, v98, v99, "Translation result is empty", v100, 2u);
    MEMORY[0x26D63C8E0](v100, -1, -1);
  }

  v101 = objc_allocWithZone(v20);
  v115 = TranslatePhraseIntentResponse.init(code:userActivity:)(101, 0);
  a5();
}

void sub_2693D44D0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

void sub_2693D4578(uint64_t a1, uint64_t a2, NSObject *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v83 = a6;
  v84 = a7;
  v82 = a5;
  v88 = a3;
  v8 = sub_269422D48();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v87 = v78 - v13;

  v14._countAndFlagsBits = OUTLINED_FUNCTION_22();
  TranslationLanguages.init(rawValue:)(v14);
  OUTLINED_FUNCTION_5_1();
  if (!v21 || (v16 = OUTLINED_FUNCTION_22(), static TranslationLanguages.getByLocale(locale:)(v16, v17), OUTLINED_FUNCTION_5_1(), !v21))
  {
    countAndFlagsBits = 0x4B485F687ALL;
    v19 = sub_2693D6D00(v15);
    v21 = sub_26940C22C(v19) == 6649209 && v20 == 0xE300000000000000;
    if (v21)
    {
      v80 = v8;

      object = 0xE500000000000000;
      goto LABEL_18;
    }

    v22 = sub_269424688();

    if (v22)
    {
      v80 = v8;
      object = 0xE500000000000000;
      countAndFlagsBits = 0x4B485F687ALL;
LABEL_18:

      v34 = v87;
      sub_269422D28();

      v81 = object;
      sub_269422D28();
      v35 = objc_allocWithZone(MEMORY[0x277CE1B38]);
      v36 = sub_2693D518C(v34, v12);
      v37 = OBJC_IVAR____TtC22SiriTranslationIntents20TranslationApiClient_log;
      v38 = v36;
      v85 = v37;
      v39 = sub_269423FA8();
      v40 = sub_269424368();

      v41 = os_log_type_enabled(v39, v40);
      v86 = v38;
      v78[1] = countAndFlagsBits;
      v79 = v9;
      if (v41)
      {
        v42 = OUTLINED_FUNCTION_17_0();
        v43 = OUTLINED_FUNCTION_16_0();
        aBlock[0] = v43;
        *v42 = 136315138;
        v44 = a4;
        v45 = v38;
        v46 = [v45 description];
        v47 = sub_269424118();
        v49 = v48;

        a4 = v44;
        v50 = sub_2693DB6E0(v47, v49, aBlock);
        v38 = v86;

        *(v42 + 4) = v50;
        _os_log_impl(&dword_2693C9000, v39, v40, "Speak request locale: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      v51 = [objc_allocWithZone(MEMORY[0x277CE1B78]) initWithLocalePair_];
      [v51 setTaskHint:4];
      v52 = sub_269424108();
      [v51 setText:v52];

      v53 = v82;
      if ((v82 & 0x100000000) != 0)
      {
        sub_269423C48();
        sub_269423C38();
        sub_269423C18();

        v53 = sub_269423F38();
      }

      [v51 setAudioSessionID:v53];
      v54 = sub_269423FA8();
      v55 = sub_269424368();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 67109120;
        *(v56 + 4) = [v51 audioSessionID];

        _os_log_impl(&dword_2693C9000, v54, v55, "Voice session id is %u", v56, 8u);
        OUTLINED_FUNCTION_6_0();
      }

      else
      {

        v54 = v51;
      }

      v57 = swift_allocObject();
      v58 = v84;
      *(v57 + 16) = v83;
      *(v57 + 24) = v58;
      OUTLINED_FUNCTION_0_5(v57);
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2693D4E04;
      aBlock[3] = &block_descriptor;
      v59 = _Block_copy(aBlock);

      [v51 setCompletionHandler:v59];
      _Block_release(v59);

      v60 = sub_269423FA8();
      v61 = sub_269424368();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = OUTLINED_FUNCTION_17_0();
        v63 = OUTLINED_FUNCTION_16_0();
        v84 = a4;
        v64 = v63;
        aBlock[0] = v63;
        *v62 = 136315138;
        v65 = v87;
        sub_269422D28();
        sub_2693D52AC();
        v66 = v80;
        v67 = sub_269424668();
        v69 = v68;
        (*(v79 + 8))(v65, v66);
        v70 = sub_2693DB6E0(v67, v69, aBlock);

        *(v62 + 4) = v70;
        _os_log_impl(&dword_2693C9000, v60, v61, "Speak request API locale pair is : %s.", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        a4 = v84;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      v71 = sub_269423FA8();
      v72 = sub_269424368();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = OUTLINED_FUNCTION_17_0();
        v74 = OUTLINED_FUNCTION_16_0();
        aBlock[0] = v74;
        *v73 = 136315138;
        *(v73 + 4) = sub_2693DB6E0(v88, a4, aBlock);
        _os_log_impl(&dword_2693C9000, v71, v72, "Speak request text : %s.", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v74);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      v75 = v86;
      v76 = [objc_allocWithZone(MEMORY[0x277CE1C40]) init];
      [v76 translate_];

      return;
    }
  }

  v24 = OUTLINED_FUNCTION_22();
  static TranslationLanguages.getByLocale(locale:)(v24, v25);
  OUTLINED_FUNCTION_5_1();
  if (!v21 || (, v26._countAndFlagsBits = OUTLINED_FUNCTION_22(), TranslationLanguages.init(rawValue:)(v26), OUTLINED_FUNCTION_5_1(), !v21))
  {
    v80 = v8;
    v33 = TranslationLanguages.getLocaleString()();
    countAndFlagsBits = v33._countAndFlagsBits;
    object = v33._object;
    goto LABEL_18;
  }

  v88 = sub_269423FA8();
  v27 = sub_269424368();

  if (os_log_type_enabled(v88, v27))
  {
    v28 = OUTLINED_FUNCTION_17_0();
    v29 = OUTLINED_FUNCTION_16_0();
    aBlock[0] = v29;
    *v28 = 136315138;
    v30 = OUTLINED_FUNCTION_22();
    *(v28 + 4) = sub_2693DB6E0(v30, v31, v32);
    _os_log_impl(&dword_2693C9000, v88, v27, "Unsupported language error for given language: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v77 = v88;
  }
}

uint64_t sub_2693D4D84(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F760, &qword_269425DC8);
    a1 = sub_269424128();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  a2(a1, v5);
}

void sub_2693D4E04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_2693D4E70()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE1C40]) init];
  [v0 cleanup];
}

uint64_t sub_2693D4F24()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents20TranslationApiClient_log;
  v2 = sub_269423FC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for TranslationApiClient(uint64_t a1)
{
  result = qword_28030F740;
  if (!qword_28030F740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693D5014(uint64_t a1)
{
  result = sub_269423FC8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_2693D50A4()
{
  result = qword_28030F750;
  if (!qword_28030F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F750);
  }

  return result;
}

id sub_2693D50F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = sub_269424108();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_269424108();

  v7 = [v4 initWithIdentifier:v5 displayString:v6];

  return v7;
}

id sub_2693D518C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_269422D38();
  v7 = sub_269422D38();
  v8 = [v3 initWithSourceLocale:v6 targetLocale:v7];

  v9 = sub_269422D48();
  v10 = *(*(v9 - 8) + 8);
  v10(a2, v9);
  v10(a1, v9);
  return v8;
}

uint64_t sub_2693D5254()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2693D52AC()
{
  result = qword_28030F758;
  if (!qword_28030F758)
  {
    sub_269422D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F758);
  }

  return result;
}

uint64_t sub_2693D5304()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2693D5350(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310170, &qword_269425DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2693D53B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269424108();

  v5 = [a3 effectiveBoolValueForSetting_];

  return v5;
}

void sub_2693D5414(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269424108();

  [a3 setTranslatedText_];
}

void sub_2693D5478(uint64_t a1, void *a2)
{
  type metadata accessor for TranslationResultItem();
  v3 = sub_269424278();

  [a2 setTranslationResultItems_];
}

uint64_t sub_2693D54EC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_269424118();

  return v4;
}

uint64_t sub_2693D554C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t type metadata accessor for TranslateCATsSimple(uint64_t a1)
{
  result = qword_28030F788;
  if (!qword_28030F788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693D5670(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, char a7, uint64_t a8)
{
  *(v9 + 93) = v13;
  *(v9 + 48) = v12;
  *(v9 + 56) = v8;
  *(v9 + 92) = v11;
  *(v9 + 91) = a7;
  *(v9 + 90) = a6;
  *(v9 + 89) = a5;
  *(v9 + 88) = a4;
  *(v9 + 32) = a3;
  *(v9 + 40) = a8;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2693D56C0, 0, 0);
}

uint64_t sub_2693D56C0()
{
  v19 = *(v0 + 92);
  v1 = *(v0 + 91);
  v2 = *(v0 + 90);
  v3 = *(v0 + 89);
  v4 = *(v0 + 88);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F600, &qword_269425750);
  v8 = swift_allocObject();
  *(v0 + 64) = v8;
  *(v8 + 16) = xmmword_269425E80;
  *(v8 + 32) = 0x65676175676E616CLL;
  *(v8 + 40) = 0xE900000000000073;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F608, &qword_269425758);
  *(v8 + 48) = v7;
  *(v8 + 72) = v9;
  strcpy((v8 + 80), "languageGroup");
  v10 = MEMORY[0x277D837D0];
  *(v8 + 94) = -4864;
  *(v8 + 96) = v5;
  *(v8 + 104) = v6;
  *(v8 + 120) = v10;
  strcpy((v8 + 128), "isConclusion");
  v11 = MEMORY[0x277D839B0];
  *(v8 + 141) = 0;
  *(v8 + 142) = -5120;
  *(v8 + 144) = v4;
  *(v8 + 168) = v11;
  strcpy((v8 + 176), "isFirstWindow");
  *(v8 + 190) = -4864;
  *(v8 + 192) = v3;
  *(v8 + 216) = v11;
  strcpy((v8 + 224), "isLastWindow");
  *(v8 + 237) = 0;
  *(v8 + 238) = -5120;
  *(v8 + 240) = v2;
  *(v8 + 264) = v11;
  *(v8 + 272) = 0xD000000000000016;
  *(v8 + 280) = 0x8000000269429120;
  *(v8 + 288) = v1;
  *(v8 + 312) = v11;
  *(v8 + 320) = 0xD000000000000013;
  *(v8 + 328) = 0x8000000269429140;
  if (v19)
  {
    v12 = 0;
    v13 = 0;
    *(v8 + 344) = 0;
    *(v8 + 352) = 0;
  }

  else
  {
    v12 = *(v0 + 40);
    v13 = MEMORY[0x277D839F8];
  }

  v14 = *(v0 + 93);
  *(v8 + 336) = v12;
  *(v8 + 360) = v13;
  *(v8 + 368) = 0x6574496C61746F74;
  *(v8 + 376) = 0xEA0000000000736DLL;
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    *(v8 + 392) = 0;
    *(v8 + 400) = 0;
  }

  else
  {
    v15 = *(v0 + 48);
    v16 = MEMORY[0x277D839F8];
  }

  *(v8 + 384) = v15;
  *(v8 + 408) = v16;
  v20 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v17 = swift_task_alloc();
  *(v0 + 72) = v17;
  *v17 = v0;
  v17[1] = sub_2693D59A4;

  return v20(0xD000000000000027, 0x80000002694295F0, v8);
}

uint64_t sub_2693D59A4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2693D5AFC, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_2693D5AFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2693D5BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269423EB8();
  OUTLINED_FUNCTION_0_6();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F620, &unk_269425770);
  MEMORY[0x28223BE20](v11 - 8);
  sub_2693D5E48(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_269423DB8();
  (*(v7 + 8))(a2, v3);
  sub_2693D5EB8(a1);
  return v13;
}

uint64_t sub_2693D5D10(uint64_t a1, uint64_t a2)
{
  sub_269423EB8();
  OUTLINED_FUNCTION_0_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_269423DC8();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_2693D5E10()
{
  v0 = sub_269423DE8();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_2693D5E48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F620, &unk_269425770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2693D5EB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F620, &unk_269425770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2693D5F38@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v7 = v6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F798, "JM");
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v7, a4);
  sub_2693D609C(a3, v15);

  return sub_2693D610C(v17, v15, a4, a5, x8_0);
}

uint64_t sub_2693D609C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F798, "JM");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2693D610C@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F798, "JM");
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  if ((*(a6 + 16))(a5, a6))
  {
    (*(a6 + 8))(a5, a6);
    v15 = sub_269423FF8();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
    sub_269424018();
    sub_2693D63F8(a4);
    (*(*(a5 - 8) + 8))(a1, a5);
    v16 = sub_269424038();
    return __swift_storeEnumTagSinglePayload(a7, 0, 1, v16);
  }

  else
  {

    if (qword_28030F0B8 != -1)
    {
      swift_once();
    }

    v18 = sub_269423FC8();
    __swift_project_value_buffer(v18, qword_280314EE8);
    v19 = sub_269423FA8();
    v20 = sub_269424388();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2693C9000, v19, v20, "RREntityConvertible did not produce a USOEntity", v21, 2u);
      MEMORY[0x26D63C8E0](v21, -1, -1);
    }

    sub_2693D63F8(a4);
    (*(*(a5 - 8) + 8))(a1, a5);
    v22 = sub_269424038();

    return __swift_storeEnumTagSinglePayload(a7, 1, 1, v22);
  }
}

uint64_t sub_2693D63F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F798, "JM");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2693D6460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[4] = a5;
  v18[5] = a6;
  v18[2] = a3;
  v18[3] = a4;
  v18[1] = a2;
  v6 = 0x74616C736E617274;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F620, &unk_269425770);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  v10 = sub_269422C38();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269422C28();
  sub_269422C18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F7A0, &unk_269425F70);
  sub_269422BC8();
  *(swift_allocObject() + 16) = xmmword_269425F30;
  sub_269422BB8();
  sub_269422BB8();
  sub_269422BB8();
  sub_269422BF8();
  sub_269422C08();
  v16 = sub_269422C88();
  if (__swift_getEnumTagSinglePayload(v9, 1, v16) == 1)
  {
    sub_2693D5EB8(v9);
  }

  else
  {
    v6 = sub_269422C58();
    (*(*(v16 - 8) + 8))(v9, v16);
  }

  (*(v12 + 8))(v15, v10);
  return v6;
}

id sub_2693D6744(uint64_t a1, uint64_t a2)
{
  v2 = sub_269422D18();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F620, &unk_269425770);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_269422C78();
  v12 = sub_269422C88();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) != 1)
  {
    v13 = sub_269422C68();
    (*(*(v12 - 8) + 8))(v10, v12);
  }

  [v11 setPunchOutUri_];

  v14 = v11;
  sub_269422D08();
  v15 = sub_269422CF8();
  v17 = v16;
  (*(v4 + 8))(v7, v2);
  sub_2693D6BAC(v15, v17, v14);

  return v14;
}

void sub_2693D6934(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30[1] = *MEMORY[0x277D85DE8];
  sub_2693D6C10();
  v14 = sub_2693D6460(a1, a2, a3, a4, a5, a6);
  v29 = sub_2693D6744(v14, v15);

  v16 = [v29 dictionary];
  if (v16)
  {
    v17 = v16;
    v30[0] = 0;
    v18 = [objc_opt_self() dataWithPropertyList:v16 format:200 options:0 error:v30];
    v19 = v30[0];
    if (v18)
    {
      v20 = sub_269422CB8();
      v22 = v21;

      sub_269422CA8();
      sub_2693D6C54(v20, v22);

      sub_269423D78();

      v23 = sub_269423DA8();
      v24 = a7;
      v25 = 0;
    }

    else
    {
      v27 = v19;
      v28 = sub_269422C48();

      swift_willThrow();
      v23 = sub_269423DA8();
      v24 = a7;
      v25 = 1;
    }

    __swift_storeEnumTagSinglePayload(v24, v25, 1, v23);
  }

  else
  {
    v26 = sub_269423DA8();
    __swift_storeEnumTagSinglePayload(a7, 1, 1, v26);
  }
}

void sub_2693D6BAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269424108();

  [a3 setAceId_];
}

unint64_t sub_2693D6C10()
{
  result = qword_28030F7A8;
  if (!qword_28030F7A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28030F7A8);
  }

  return result;
}

uint64_t sub_2693D6C54(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

SiriTranslationIntents::TranslationLanguages_optional __swiftcall TranslationLanguages.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_2694246B8();

  if (v1 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v1;
  }
}

uint64_t static TranslationLanguages.getByLocale(locale:)(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  while (1)
  {
    v6 = byte_2879F39D8[v5++ + 32];
    v7 = 0xE500000000000000;
    v8 = 0x41535F7261;
    switch(v6)
    {
      case 1:
        v8 = 0x42475F6E65;
        break;
      case 2:
        v7 = 0xE600000000000000;
        v8 = 0x4E435F657579;
        break;
      case 3:
        v8 = 0x4B485F687ALL;
        break;
      case 4:
        v12 = 1130326138;
        goto LABEL_28;
      case 5:
        v8 = 0x57545F687ALL;
        break;
      case 6:
        v11 = 1314876526;
        goto LABEL_14;
      case 7:
        v13 = 1432317541;
        goto LABEL_26;
      case 8:
        v10 = 1180660326;
        goto LABEL_17;
      case 9:
        v9 = 1147102564;
        goto LABEL_24;
      case 10:
        v8 = 0x54495F7469;
        break;
      case 11:
        v8 = 0x44495F6469;
        break;
      case 12:
        v8 = 0x504A5F616ALL;
        break;
      case 13:
        v10 = 1264545643;
        goto LABEL_17;
      case 14:
        v11 = 1348430960;
LABEL_14:
        v8 = v11 & 0xFFFF0000FFFFFFFFLL | 0x4C00000000;
        break;
      case 15:
        v10 = 1113551984;
        goto LABEL_17;
      case 16:
        v8 = 0x55525F7572;
        break;
      case 17:
        v13 = 1163883365;
LABEL_26:
        v8 = v13 & 0xFFFF0000FFFFFFFFLL | 0x5300000000;
        break;
      case 18:
        v8 = 0x48545F6874;
        break;
      case 19:
        v10 = 1415541364;
LABEL_17:
        v8 = v10 & 0xFFFF0000FFFFFFFFLL | 0x5200000000;
        break;
      case 20:
        v12 = 1449093494;
        goto LABEL_28;
      case 21:
        v12 = 1230989672;
LABEL_28:
        v8 = v12 & 0xFFFF0000FFFFFFFFLL | 0x4E00000000;
        break;
      case 22:
        break;
      default:
        v9 = 1096774241;
LABEL_24:
        v8 = v9 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
        break;
    }

    if (v8 == a1 && v7 == a2)
    {
      break;
    }

    OUTLINED_FUNCTION_36(v8);
    OUTLINED_FUNCTION_17_1();
    if (v2)
    {
      return v6;
    }

    v15 = 0xE600000000000000;
    v16 = 0x636962617261;
    switch(v6)
    {
      case 1:
        OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_30();
        break;
      case 2:
        v16 = OUTLINED_FUNCTION_24();
        break;
      case 3:
        v16 = 0xD000000000000011;
        v15 = 0x8000000269428CD0;
        break;
      case 4:
        OUTLINED_FUNCTION_19_1();
        OUTLINED_FUNCTION_25();
        break;
      case 5:
        v16 = 0xD000000000000011;
        v15 = 0x8000000269428D00;
        break;
      case 6:
        v16 = OUTLINED_FUNCTION_23_0();
        break;
      case 7:
        v15 = 0xE700000000000000;
        v19 = 1818717797;
        goto LABEL_60;
      case 8:
        v16 = 0x68636E657266;
        break;
      case 9:
        v18 = 1836213607;
        goto LABEL_52;
      case 10:
        v15 = 0xE700000000000000;
        v17 = 1818326121;
        goto LABEL_56;
      case 11:
        v16 = OUTLINED_FUNCTION_12_1();
        break;
      case 12:
        v15 = 0xE800000000000000;
        v16 = OUTLINED_FUNCTION_16_1();
        break;
      case 13:
        v18 = 1701998443;
LABEL_52:
        v16 = v18 & 0xFFFF0000FFFFFFFFLL | 0x6E6100000000;
        break;
      case 14:
        v16 = 0x6873696C6F70;
        break;
      case 15:
        v16 = OUTLINED_FUNCTION_14_1();
        break;
      case 16:
        v15 = 0xE700000000000000;
        v17 = 1936946546;
LABEL_56:
        v16 = v17 | 0x6E616900000000;
        break;
      case 17:
        v15 = 0xE700000000000000;
        v19 = 1851879539;
        goto LABEL_60;
      case 18:
        v15 = 0xE400000000000000;
        v16 = 1767991412;
        break;
      case 19:
        v15 = 0xE700000000000000;
        v19 = 1802663284;
LABEL_60:
        v16 = v19 | 0x68736900000000;
        break;
      case 20:
        v16 = OUTLINED_FUNCTION_13_1();
        break;
      case 21:
        v16 = OUTLINED_FUNCTION_22_0();
        break;
      case 22:
        v16 = 0xD000000000000011;
        v15 = 0x8000000269428DA0;
        break;
      default:
        break;
    }

    if (v16 == a1 && v15 == a2)
    {
      break;
    }

    OUTLINED_FUNCTION_36(v16);
    OUTLINED_FUNCTION_17_1();
    if (v2)
    {
      return v6;
    }

    if (v5 == 23)
    {
      return 23;
    }
  }

  return v6;
}

Swift::String __swiftcall TranslationLanguages.getLocaleString()()
{
  v1 = v0;
  v2 = 0xE500000000000000;
  v3 = 0x41535F7261;
  switch(v1)
  {
    case 1:
      v3 = 0x42475F6E65;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x4E435F657579;
      break;
    case 3:
      v3 = 0x4B485F687ALL;
      break;
    case 4:
      v6 = 1130326138;
      goto LABEL_18;
    case 5:
      v3 = 0x57545F687ALL;
      break;
    case 6:
      v5 = 1314876526;
      goto LABEL_22;
    case 7:
      v8 = 1432317541;
      goto LABEL_16;
    case 8:
      v7 = 1180660326;
      goto LABEL_28;
    case 9:
      v4 = 1147102564;
      goto LABEL_9;
    case 10:
      v3 = 0x54495F7469;
      break;
    case 11:
      v3 = 0x44495F6469;
      break;
    case 12:
      v3 = 0x504A5F616ALL;
      break;
    case 13:
      v7 = 1264545643;
      goto LABEL_28;
    case 14:
      v5 = 1348430960;
LABEL_22:
      v3 = v5 & 0xFFFF0000FFFFFFFFLL | 0x4C00000000;
      break;
    case 15:
      v7 = 1113551984;
      goto LABEL_28;
    case 16:
      v3 = 0x55525F7572;
      break;
    case 17:
      v8 = 1163883365;
LABEL_16:
      v3 = v8 & 0xFFFF0000FFFFFFFFLL | 0x5300000000;
      break;
    case 18:
      v3 = 0x48545F6874;
      break;
    case 19:
      v7 = 1415541364;
LABEL_28:
      v3 = v7 & 0xFFFF0000FFFFFFFFLL | 0x5200000000;
      break;
    case 20:
      v6 = 1449093494;
LABEL_18:
      v3 = v6 & 0xFFFF0000FFFFFFFFLL | 0x4E00000000;
      break;
    case 21:
      v3 = 0x4E495F6968;
      break;
    case 22:
      break;
    default:
      v4 = 1096774241;
LABEL_9:
      v3 = v4 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
      break;
  }

  result._object = v2;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_2693D737C()
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  do
  {
    v3 = byte_2879F39D8[v1++ + 32];
    v4 = 0x8000000269428DA0;
    switch(v3)
    {
      case 1:
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_20_1();
        goto LABEL_17;
      case 2:
        OUTLINED_FUNCTION_24();
        goto LABEL_17;
      case 3:
        v4 = 0x8000000269428CD0;
        goto LABEL_13;
      case 4:
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_19_1();
        goto LABEL_17;
      case 5:
        v4 = 0x8000000269428D00;
        goto LABEL_13;
      case 6:
        OUTLINED_FUNCTION_23_0();
        goto LABEL_17;
      case 11:
        OUTLINED_FUNCTION_12_1();
        goto LABEL_17;
      case 12:
        OUTLINED_FUNCTION_16_1();
        goto LABEL_17;
      case 15:
        OUTLINED_FUNCTION_14_1();
        goto LABEL_17;
      case 20:
        OUTLINED_FUNCTION_13_1();
        goto LABEL_17;
      case 21:
        OUTLINED_FUNCTION_22_0();
        goto LABEL_17;
      case 22:
LABEL_13:
        if (0x8000000269428DA0 != v4)
        {
          goto LABEL_17;
        }

        break;
      default:
LABEL_17:
        sub_269424688();
        OUTLINED_FUNCTION_17_1();
        if ((v0 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26941EF94(0, *(v2 + 16) + 1, 1, v2);
            v2 = v6;
          }

          v0 = *(v2 + 16);
          v5 = *(v2 + 24);
          if (v0 >= v5 >> 1)
          {
            sub_26941EF94(v5 > 1, v0 + 1, 1, v2);
            v2 = v7;
          }

          *(v2 + 16) = v0 + 1;
          *(v2 + v0 + 32) = v3;
        }

        break;
    }
  }

  while (v1 != 23);
  return v2;
}

void sub_2693D768C(char a1)
{
  switch(a1)
  {
    case 6:
      OUTLINED_FUNCTION_3_2();
      break;
    case 7:
      OUTLINED_FUNCTION_11_1(0x6C676E65u);
      break;
    case 8:
      OUTLINED_FUNCTION_6_1();
      break;
    case 9:
      OUTLINED_FUNCTION_21_1(1836213607);
      break;
    case 10:
      OUTLINED_FUNCTION_10_1(0x6C617469u);
      break;
    case 11:
      OUTLINED_FUNCTION_0_7();
      break;
    case 12:
      OUTLINED_FUNCTION_1_4();
      break;
    case 13:
      OUTLINED_FUNCTION_21_1(1701998443);
      break;
    case 14:
      OUTLINED_FUNCTION_5_2();
      break;
    case 15:
    case 20:
      OUTLINED_FUNCTION_9_1();
      break;
    case 16:
      OUTLINED_FUNCTION_10_1(0x73737572u);
      break;
    case 17:
      OUTLINED_FUNCTION_11_1(0x6E617073u);
      break;
    case 18:
      OUTLINED_FUNCTION_4_2();
      break;
    case 19:
      OUTLINED_FUNCTION_11_1(0x6B727574u);
      break;
    default:
      return;
  }
}

Swift::String __swiftcall TranslationLanguages.getCoreLanguage()()
{
  v1 = v0;
  v2 = 0x636962617261;
  v3 = 0xE600000000000000;
  switch(v1)
  {
    case 1:
    case 7:
      v2 = OUTLINED_FUNCTION_11_1(0x6C676E65u);
      break;
    case 2:
    case 3:
      v2 = 0x73656E6F746E6163;
      v3 = 0xE900000000000065;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v2 = 0x6573656E696863;
      break;
    case 5:
      v3 = 0x8000000269429650;
      v2 = 0xD000000000000012;
      break;
    case 6:
      v2 = OUTLINED_FUNCTION_3_2();
      break;
    case 8:
      v2 = OUTLINED_FUNCTION_6_1();
      break;
    case 9:
      v2 = OUTLINED_FUNCTION_21_1(1836213607);
      break;
    case 10:
      v2 = OUTLINED_FUNCTION_10_1(0x6C617469u);
      break;
    case 11:
      v2 = OUTLINED_FUNCTION_0_7();
      break;
    case 12:
      v2 = OUTLINED_FUNCTION_1_4();
      break;
    case 13:
      v2 = OUTLINED_FUNCTION_21_1(1701998443);
      break;
    case 14:
      v2 = OUTLINED_FUNCTION_5_2();
      break;
    case 15:
    case 20:
      OUTLINED_FUNCTION_9_1();
      break;
    case 16:
      v2 = OUTLINED_FUNCTION_10_1(0x73737572u);
      break;
    case 17:
      v2 = OUTLINED_FUNCTION_11_1(0x6E617073u);
      break;
    case 18:
      v2 = OUTLINED_FUNCTION_4_2();
      break;
    case 19:
      v2 = OUTLINED_FUNCTION_11_1(0x6B727574u);
      break;
    case 21:
      v3 = 0xE500000000000000;
      v2 = 0x69646E6968;
      break;
    default:
      break;
  }

  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_2693D7A2C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a3;
  v7 = TranslationLanguages.getLocaleString()();
  if (v7._countAndFlagsBits == a1 && v7._object == a2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_7_1(v7._countAndFlagsBits, v7._object);
  OUTLINED_FUNCTION_17_1();
  if (v3)
  {
    goto LABEL_29;
  }

  v9 = OUTLINED_FUNCTION_29();
  v11 = sub_26940BCAC(v9, v10);
  if (v11 == 40)
  {
    goto LABEL_29;
  }

  v12 = sub_26940BD00(v11);
  v13 = sub_26940C22C(v12);
  if (v13 == 6649209 && v14 == 0xE300000000000000)
  {
  }

  else
  {
    OUTLINED_FUNCTION_8_0(v13, v14);
    OUTLINED_FUNCTION_17_1();
    if ((v3 & 1) == 0)
    {
      v16 = sub_26940C22C(v12);
      if (v16 == 28261 && v17 == 0xE200000000000000)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_34(v16);
      OUTLINED_FUNCTION_17_1();
      if (v3)
      {
        goto LABEL_50;
      }

      v19 = OUTLINED_FUNCTION_37();
      if (v19 == v3 && v20 == 0xE500000000000000)
      {
LABEL_49:
      }

      else
      {
        v22 = OUTLINED_FUNCTION_35(v19);

        if ((v22 & 1) == 0)
        {
          v23 = sub_2693D6D00(v4);
          v24 = sub_26940C22C(v23);
          if (v24 != 6649209 || v25 != 0xE300000000000000)
          {
            v27 = OUTLINED_FUNCTION_8_0(v24, v25);

            if (v27)
            {
LABEL_29:
              v28 = 0;
              return v28 & 1;
            }

            goto LABEL_50;
          }

LABEL_28:

          goto LABEL_29;
        }
      }

LABEL_50:
      if (sub_26940C22C(v12) != 26984 || v42 != 0xE200000000000000)
      {
        v44 = sub_269424688();

        v28 = 0;
        if ((v44 & 1) != 0 || v4 == 22)
        {
          return v28 & 1;
        }

        v45 = sub_2693D6D00(v4);
        v46 = sub_26940C22C(v45);
        v48 = v47;
        v49 = sub_26940C22C(v12);
        if (v46 != v49 || v48 != v50)
        {
          v52 = OUTLINED_FUNCTION_18_1(v49);

          v28 = v52 ^ 1;
          return v28 & 1;
        }
      }

      goto LABEL_28;
    }
  }

  TranslationLanguages.rawValue.getter(v4);
  v32 = v31;
  if (v30 == 0x6873696C676E65 && v31 == 0xE700000000000000)
  {
    goto LABEL_47;
  }

  v34 = v30;
  v35 = sub_269424688();

  if (v35)
  {
    goto LABEL_48;
  }

  if (v34 == 0x6568736974697262 && v32 == 0xEE006873696C676ELL)
  {
    goto LABEL_47;
  }

  v37 = sub_269424688();

  if (v37)
  {
LABEL_48:
    v28 = 1;
    return v28 & 1;
  }

  OUTLINED_FUNCTION_28();
  if (v34 == v39 && v32 == v38)
  {
LABEL_47:

    goto LABEL_48;
  }

  v41 = sub_269424688();

  return v41 & 1;
}

void TranslationLanguages.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_20_1();
      break;
    case 4:
      OUTLINED_FUNCTION_19_1();
      break;
    case 6:
      OUTLINED_FUNCTION_3_2();
      break;
    case 7:
      OUTLINED_FUNCTION_11_1(0x6C676E65u);
      break;
    case 8:
      OUTLINED_FUNCTION_6_1();
      break;
    case 9:
      OUTLINED_FUNCTION_21_1(1836213607);
      break;
    case 10:
      OUTLINED_FUNCTION_10_1(0x6C617469u);
      break;
    case 11:
      OUTLINED_FUNCTION_0_7();
      break;
    case 12:
      OUTLINED_FUNCTION_1_4();
      break;
    case 13:
      OUTLINED_FUNCTION_21_1(1701998443);
      break;
    case 14:
      OUTLINED_FUNCTION_5_2();
      break;
    case 15:
    case 20:
      OUTLINED_FUNCTION_9_1();
      break;
    case 16:
      OUTLINED_FUNCTION_10_1(0x73737572u);
      break;
    case 17:
      OUTLINED_FUNCTION_11_1(0x6E617073u);
      break;
    case 18:
      OUTLINED_FUNCTION_4_2();
      break;
    case 19:
      OUTLINED_FUNCTION_11_1(0x6B727574u);
      break;
    default:
      return;
  }
}

unint64_t sub_2693D7F58()
{
  result = qword_28030F7B0;
  if (!qword_28030F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F7B0);
  }

  return result;
}

SiriTranslationIntents::TranslationLanguages_optional sub_2693D7FC4@<W0>(Swift::String *a1@<X0>, SiriTranslationIntents::TranslationLanguages_optional *a2@<X8>)
{
  result.value = TranslationLanguages.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_2693D7FF4(uint64_t *a1@<X8>)
{
  TranslationLanguages.rawValue.getter(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_2693D8024()
{
  result = qword_28030F7B8;
  if (!qword_28030F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F7B8);
  }

  return result;
}

unint64_t sub_2693D807C()
{
  result = qword_28030F7C0;
  if (!qword_28030F7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030F7C8, &qword_269426048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F7C0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2693D813C()
{
  result = qword_28030F7D0;
  if (!qword_28030F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F7D0);
  }

  return result;
}

uint64_t sub_2693D8190(uint64_t a1, uint64_t a2)
{
  v4 = sub_2693D8D38();
  v5 = sub_2693D8D8C();
  v6 = sub_2693D8DE0();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for TranslationLanguages(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TranslationLanguages(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
        JUMPOUT(0x2693D8358);
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
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2693D8390(uint64_t a1)
{
  type metadata accessor for NLConverter(0);
  sub_269423468();
  sub_26940D5B8(v17);
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (!a1)
  {
    OUTLINED_FUNCTION_15_1();
    if (v4)
    {
      OUTLINED_FUNCTION_26();
      v8 = v5 && v4 == 0xE600000000000000;
      if (!v8 && (OUTLINED_FUNCTION_7_1(a1, 0xE600000000000000) & 1) == 0)
      {
        OUTLINED_FUNCTION_32();
        if (!v5 || v4 != 0xE500000000000000)
        {
          v10 = OUTLINED_FUNCTION_2_3();

          if (v10)
          {
            return a1;
          }

          return v1;
        }
      }

LABEL_50:

      return a1;
    }

    return v1;
  }

  if (a1 != 1)
  {
    v1 = 0x6573656E696863;
    if (v4)
    {
      OUTLINED_FUNCTION_26();
      v11 = v5 && v4 == 0xE600000000000000;
      if (v11 || (OUTLINED_FUNCTION_7_1(a1, 0xE600000000000000) & 1) != 0)
      {
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_33();
      v12 = v5 && v4 == 0xE500000000000000;
      if (v12 || (OUTLINED_FUNCTION_2_3() & 1) != 0)
      {
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_32();
      v13 = v5 && v4 == 0xE500000000000000;
      if (v13 || (OUTLINED_FUNCTION_2_3() & 1) != 0)
      {
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_31();
      if (v5 && v4 == 0xE500000000000000)
      {
        goto LABEL_50;
      }

      v15 = OUTLINED_FUNCTION_2_3();

      if (v15)
      {
        return a1;
      }
    }

    return v1;
  }

  v1 = 0x6E697261646E616DLL;
  if (!v4)
  {
    return v1;
  }

  OUTLINED_FUNCTION_33();
  v5 = v5 && v4 == 0xE500000000000000;
  if (v5 || (OUTLINED_FUNCTION_2_3() & 1) != 0)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_31();
  if (v5 && v4 == 0xE500000000000000)
  {
    goto LABEL_50;
  }

  v7 = OUTLINED_FUNCTION_2_3();

  if ((v7 & 1) == 0)
  {
    return v1;
  }

  return a1;
}

uint64_t sub_2693D856C(char a1)
{
  if (!a1)
  {
    return 19;
  }

  if (a1 == 1)
  {
    return 2;
  }

  type metadata accessor for NLConverter(0);
  sub_269423468();
  v2 = sub_26940D5B8(v11);
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(v11);
  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = sub_26940BCAC(v5, v6);
  v1 = 21;
  if (v7 != 40)
  {
    v8 = sub_26940BD00(v7);
    if (v8 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 21;
    }

    if (v8 == 19)
    {
      return 19;
    }

    else
    {
      return v9;
    }
  }

  return v1;
}

void *sub_2693D861C(char a1)
{
  result = &unk_2879F3F80;
  if (a1)
  {
    if (a1 == 1)
    {
      return &unk_2879F3FA8;
    }

    else
    {
      sub_2693D8C18(&unk_2879F3FA8);
      return &unk_2879F3F80;
    }
  }

  return result;
}

uint64_t sub_2693D8684(uint64_t a1, uint64_t a2, char a3)
{

  v6 = sub_26940BCAC(a1, a2);

  v7 = sub_26940C010(a1, a2);
  if (v6 == 40)
  {
    if (v7 == 3)
    {
      goto LABEL_37;
    }

    v8 = sub_2693D856C(v7);
    OUTLINED_FUNCTION_27();
    if (v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v8 = sub_26940BD00(v6);
  }

  v9 = sub_26940C22C(v8);
  v11 = v9 == 28261 && v10 == 0xE200000000000000;
  if (v11)
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_34(v9);
  OUTLINED_FUNCTION_17_1();
  if (v6)
  {
    goto LABEL_27;
  }

  if (v6 != 40)
  {
    v17 = OUTLINED_FUNCTION_37();
    if (v17 != v6 || v18 != 0xE500000000000000)
    {
      v20 = OUTLINED_FUNCTION_35(v17);

      if (v20)
      {
        goto LABEL_27;
      }

      goto LABEL_13;
    }

LABEL_26:

    goto LABEL_27;
  }

LABEL_13:
  sub_2693D856C(a3);
  OUTLINED_FUNCTION_27();
  if (!v11)
  {
    v13 = sub_26940C22C(v12);
    if (v13 == 6649209 && v14 == 0xE300000000000000)
    {
      goto LABEL_36;
    }

    v16 = OUTLINED_FUNCTION_8_0(v13, v14);

    if (v16)
    {
      goto LABEL_37;
    }
  }

LABEL_27:
  sub_2693D856C(a3);
  OUTLINED_FUNCTION_27();
  if (!v11)
  {
    v23 = sub_26940C22C(v21);
    v25 = v24;
    v26 = sub_26940C22C(v8);
    if (v23 != v26 || v25 != v27)
    {
      v29 = OUTLINED_FUNCTION_18_1(v26);

      v22 = v29 ^ 1;
      return v22 & 1;
    }

LABEL_36:

LABEL_37:
    v22 = 0;
    return v22 & 1;
  }

  v22 = 1;
  return v22 & 1;
}

uint64_t sub_2693D8858(uint64_t a1, uint64_t a2, char a3)
{

  v4 = OUTLINED_FUNCTION_29();
  v6 = sub_26940BCAC(v4, v5);
  v7 = v6;

  v8 = OUTLINED_FUNCTION_29();
  v10 = sub_26940C010(v8, v9);
  if (v6 == 40)
  {
    if (v10 == 3)
    {
      return 0;
    }

    sub_2693D856C(v10);
    OUTLINED_FUNCTION_27();
    if (v14)
    {
      return 0;
    }
  }

  else
  {
    sub_26940BD00(v6);
  }

  OUTLINED_FUNCTION_15_1();
  v12 = sub_26940C22C(v11);
  v14 = v12 == 6649209 && v13 == 0xE300000000000000;
  if (v14)
  {

LABEL_14:
    if (a3 == 1)
    {
      countAndFlagsBits = 0x4E435F687ALL;
    }

    else
    {
      OUTLINED_FUNCTION_28();
      v17 = sub_269424688();

      if ((v17 & 1) == 0)
      {
        goto LABEL_18;
      }

      return 0x4E435F687ALL;
    }

    return countAndFlagsBits;
  }

  v15 = OUTLINED_FUNCTION_8_0(v12, v13);

  if (v15)
  {
    goto LABEL_14;
  }

LABEL_18:
  if (a3)
  {
    if (a3 == 1)
    {
      v7 = 0x6E697261646E616DLL;
    }

    else
    {
      v7 = 0x6573656E696863;
    }

    if (a3 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  type metadata accessor for RecentInteractionUtils();
  v18 = OUTLINED_FUNCTION_29();
  sub_2693DCD6C(v18, v19, v7, v6);
  v21 = v20;
  v23 = v22;

  if (v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0;
  }

  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  if (TranslationLanguages.init(rawValue:)(*&v24).value == SiriTranslationIntents_TranslationLanguages_unknownDefault)
  {
    return 0;
  }

  v26 = TranslationLanguages.getLocaleString()();
  countAndFlagsBits = v26._countAndFlagsBits;
  result = sub_2693D861C(a3);
  v28 = result;
  v29 = *(result + 16);
  if (!v29)
  {
LABEL_42:

    return 0;
  }

  v30 = 0;
  while (v30 < *(v28 + 16))
  {
    v31 = *(v28 + v30 + 32);
    result = static TranslationLanguages.getByLocale(locale:)(v26._countAndFlagsBits, v26._object);
    if (result != 23)
    {
      v32 = result;
      TranslationLanguages.rawValue.getter(v31);
      v34 = v33;
      v36 = v35;
      TranslationLanguages.rawValue.getter(v32);
      if (v34 == v38 && v36 == v37)
      {

LABEL_46:

        return countAndFlagsBits;
      }

      v40 = sub_269424688();

      if (v40)
      {
        goto LABEL_46;
      }
    }

    if (v29 == ++v30)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2693D8B44(char a1)
{
  if (!a1)
  {
    return 0x73656E6F746E6163;
  }

  if (a1 == 1)
  {
    return 0x6E697261646E616DLL;
  }

  return 0x6573656E696863;
}

unint64_t sub_2693D8BA0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2694245A8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2693D8BEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2693D8B44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_2693D8C18(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2693D8CD0(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = *(v5 + 16);
  if ((*(v5 + 24) >> 1) - v6 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + v6 + 32), (a1 + 32), v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v7 = *(v5 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v5 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2693D8CD0(uint64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_26941EF94(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5);
    *v2 = v8;
  }
}

unint64_t sub_2693D8D38()
{
  result = qword_28030F7D8;
  if (!qword_28030F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F7D8);
  }

  return result;
}

unint64_t sub_2693D8D8C()
{
  result = qword_28030F7E0;
  if (!qword_28030F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F7E0);
  }

  return result;
}

unint64_t sub_2693D8DE0()
{
  result = qword_28030F7E8;
  if (!qword_28030F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F7E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return sub_269424688();
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1, uint64_t a2)
{

  return sub_269424688();
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1, uint64_t a2)
{

  return sub_269424688();
}

uint64_t OUTLINED_FUNCTION_17_1()
{
}

uint64_t OUTLINED_FUNCTION_18_1(uint64_t a1)
{

  return sub_269424688();
}

uint64_t OUTLINED_FUNCTION_34(uint64_t a1)
{

  return sub_269424688();
}

uint64_t OUTLINED_FUNCTION_35(uint64_t a1)
{

  return sub_269424688();
}

uint64_t OUTLINED_FUNCTION_36(uint64_t a1)
{

  return sub_269424688();
}

uint64_t OUTLINED_FUNCTION_37()
{

  return sub_26940BD14(v0);
}

uint64_t sub_2693D9188()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_28030F7F0);
  v1 = __swift_project_value_buffer(v0, qword_28030F7F0);
  if (qword_28030F080 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280314E40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static TranslationFlowProvider.getRCHFlow(parse:)@<X0>(uint64_t *a1@<X8>)
{
  v164 = a1;
  v1 = sub_269423EB8();
  MEMORY[0x28223BE20](v1 - 8);
  v156 = &v148[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v158 = sub_2694234E8();
  OUTLINED_FUNCTION_2();
  v161 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v8);
  v157 = &v148[-v9];
  sub_269423488();
  OUTLINED_FUNCTION_2();
  v159 = v11;
  v160 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v12);
  v162 = &v148[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F808, &qword_269426110);
  MEMORY[0x28223BE20](v14 - 8);
  v150 = &v148[-v15];
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F810, &unk_269426118);
  OUTLINED_FUNCTION_2();
  v152 = v16;
  MEMORY[0x28223BE20](v17);
  v151 = &v148[-v18];
  v19 = sub_269423448();
  OUTLINED_FUNCTION_2();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v23);
  v25 = &v148[-v24];
  v26 = sub_269423458();
  OUTLINED_FUNCTION_2();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10();
  v32 = v30 - v31;
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v148[-v35];
  MEMORY[0x28223BE20](v34);
  v37 = *(v28 + 16);
  v39 = &v148[-v38];
  v37();
  v40 = (*(v28 + 88))(v39, v26);
  v41 = 0x28030F000;
  if (v40 == *MEMORY[0x277D5C150])
  {
    v163 = v39;
    (v37)(v36, v39, v26);
    v161 = v26;
    v162 = v28;
    (*(v28 + 96))(v36, v26);
    v42 = OUTLINED_FUNCTION_18_2();
    v43(v42);
    v44 = sub_269423428();
    v46 = v45;
    *&v167 = 0xD00000000000002BLL;
    *(&v167 + 1) = 0x80000002694296D0;
    MEMORY[0x26D63BD80](46, 0xE100000000000000);
    MEMORY[0x26D63BD80](0x7463416B61657053, 0xEB000000006E6F69);
    v47 = v44 == v167 && v46 == *(&v167 + 1);
    v48 = v19;
    if (v47)
    {
      v50 = v21;
    }

    else
    {
      v49 = sub_269424688();

      v50 = v21;
      if (v49)
      {
        goto LABEL_27;
      }

      sub_269423428();
      OUTLINED_FUNCTION_8_1();
      MEMORY[0x26D63BD80](0x61657053706F7453, 0xEF6E6F697463416BLL);
      if (v21 != v167 || v46 != *(&v167 + 1))
      {
        v52 = sub_269424688();

        if ((v52 & 1) == 0)
        {
          v159 = *(v21 + 8);
          v160 = v21 + 8;
          (v159)(v25, v48);
          v53 = v154;
          v54 = OUTLINED_FUNCTION_18_2();
          v55(v54);
          v56 = v53;
          sub_269423428();
          OUTLINED_FUNCTION_8_1();
          MEMORY[0x26D63BD80](0x74616C736E617254, 0xEF6E6F6974634165);
          if (v52 == v167 && v46 == *(&v167 + 1))
          {

            v26 = v161;
            v58 = v162;
          }

          else
          {
            v56 = sub_269424688();

            v26 = v161;
            v58 = v162;
            if ((v56 & 1) == 0)
            {
              v59 = OUTLINED_FUNCTION_18_2();
              (v159)(v59);
              v39 = v163;
              v41 = 0x28030F000uLL;
LABEL_20:
              if (*(v41 + 240) != -1)
              {
                OUTLINED_FUNCTION_0_8(&qword_28030F0F0);
              }

              v66 = sub_269423FC8();
              OUTLINED_FUNCTION_20_2(v66, qword_28030F7F0);
              v67 = sub_269423FA8();
              v68 = sub_269424368();
              if (OUTLINED_FUNCTION_11_2(v68))
              {
                *OUTLINED_FUNCTION_12_0() = 0;
                OUTLINED_FUNCTION_9_2(&dword_2693C9000, v69, v70, "Returning RCH Flow for default case of parse.");
                OUTLINED_FUNCTION_6_0();
              }

              sub_2693DAB58(0, v164);
              v71 = v39;
              return (*(v58 + 1))(v71, v26);
            }
          }

          sub_269423468();
          if (qword_28030F0F0 != -1)
          {
            OUTLINED_FUNCTION_0_8(&qword_28030F0F0);
          }

          v118 = sub_269423FC8();
          OUTLINED_FUNCTION_20_2(v118, qword_28030F7F0);
          v119 = sub_269423FA8();
          v120 = sub_269424368();
          if (OUTLINED_FUNCTION_11_2(v120))
          {
            v121 = OUTLINED_FUNCTION_12_0();
            *v121 = 0;
            _os_log_impl(&dword_2693C9000, v119, v56, "Returning RCH Flow for direct invocation of TranslateAction.", v121, 2u);
            OUTLINED_FUNCTION_6_0();
          }

          if (qword_28030F158 != -1)
          {
            OUTLINED_FUNCTION_4_3(&qword_28030F158);
          }

          v122 = qword_280315088;
          v123 = qword_28030F150;

          if (v123 != -1)
          {
            OUTLINED_FUNCTION_1_5(&qword_28030F150);
          }

          v124 = qword_280315070;
          v125 = type metadata accessor for TranslatePhraseStrategy(0);
          OUTLINED_FUNCTION_10_2(v125);

          v165 = sub_2693D099C(v122, v124);
          sub_2693DBDF8(&v167, &v166);
          if (qword_28030F0E8 != -1)
          {
            OUTLINED_FUNCTION_5_3(&qword_28030F0E8);
          }

          v126 = qword_280314FD8;

          sub_2693DA6C0(&v166, v126);
          v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F830, &qword_269426130);
          OUTLINED_FUNCTION_10_2(v127);
          sub_269422F68();
          sub_2693DC0D8(&qword_28030F838, type metadata accessor for TranslatePhraseStrategy, &unk_269425C68);
          v128 = v151;
          sub_2694230E8();
          v129 = v153;
          sub_2694230C8();
          (*(v152 + 8))(v128, v129);
          v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F840, qword_269426138);
          v164[3] = v130;
          v131 = sub_2693DBE5C();
          OUTLINED_FUNCTION_19_2(v131);
          __swift_destroy_boxed_opaque_existential_1(&v167);
          v132 = OUTLINED_FUNCTION_18_2();
          (v159)(v132);
LABEL_30:
          v71 = v163;
          return (*(v58 + 1))(v71, v26);
        }

LABEL_27:
        if (qword_28030F0E8 != -1)
        {
          OUTLINED_FUNCTION_5_3(&qword_28030F0E8);
        }

        v72 = type metadata accessor for SpeakFlow(0);
        v73 = OUTLINED_FUNCTION_10_2(v72);

        sub_2693E94EC(v74);
        OUTLINED_FUNCTION_16_2();
        *(v73 + 24) = v72;
        v75 = sub_2693DC0D8(&qword_28030F850, type metadata accessor for SpeakFlow, &unk_269427080);
        OUTLINED_FUNCTION_19_2(v75);
        v76 = *(v50 + 8);
        v76(v25, v48);
        v76(v36, v48);
        v26 = v161;
        v58 = v162;
        goto LABEL_30;
      }
    }

    goto LABEL_27;
  }

  v58 = v28;
  if (v40 != *MEMORY[0x277D5C160])
  {
    goto LABEL_20;
  }

  v163 = v39;
  (v37)(v32, v39, v26);
  (*(v28 + 96))(v32, v26);
  v60 = v159;
  v61 = OUTLINED_FUNCTION_17_2();
  v62 = v160;
  v63(v61);
  v64 = type metadata accessor for ConverterUtils();
  v65 = v157;
  sub_269423478();
  v79 = sub_269411038(v65);
  v80 = *(v161 + 8);
  v161 += 8;
  (v80)(v65, v158);
  if (v79)
  {
    if (qword_28030F0F0 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_28030F0F0);
    }

    v81 = sub_269423FC8();
    OUTLINED_FUNCTION_20_2(v81, qword_28030F7F0);
    v82 = sub_269423FA8();
    v83 = sub_269424368();
    if (OUTLINED_FUNCTION_11_2(v83))
    {
      *OUTLINED_FUNCTION_12_0() = 0;
      OUTLINED_FUNCTION_9_2(&dword_2693C9000, v84, v85, "Repeat task successfully identified.");
      OUTLINED_FUNCTION_6_0();
    }

    if (qword_28030F0E8 != -1)
    {
      OUTLINED_FUNCTION_5_3(&qword_28030F0E8);
    }

    v86 = qword_280314FD8;
    v87 = qword_28030F110;

    if (v87 != -1)
    {
      swift_once();
    }

    v88 = qword_28030F158;
    v89 = qword_280315010;
    if (v88 != -1)
    {
      OUTLINED_FUNCTION_4_3(&qword_28030F158);
    }

    v90 = qword_280315088;
    v91 = qword_28030F170;

    if (v91 != -1)
    {
      OUTLINED_FUNCTION_2_4(&qword_28030F170);
    }

    v92 = qword_2803150B8;

    sub_269423EA8();
    sub_269423468();
    v93 = type metadata accessor for TemplatingResultProvider(0);
    OUTLINED_FUNCTION_10_2(v93);
    sub_2693F2808();
    v95 = v94;
    sub_2694232D8();
    v96 = type metadata accessor for RepeatFlow(0);
    v97 = OUTLINED_FUNCTION_10_2(v96);
    v98 = v95;
    v99 = v97;
    sub_269403784(v86, v89, v90, v92, v98, &v167);
    OUTLINED_FUNCTION_16_2();
    *(v99 + 24) = v96;
    v100 = sub_2693DC0D8(&qword_28030F828, type metadata accessor for RepeatFlow, &unk_269427E58);
    OUTLINED_FUNCTION_19_2(v100);
    v101 = OUTLINED_FUNCTION_17_2();
    v102(v101);
    goto LABEL_30;
  }

  v103 = v155;
  sub_269423478();
  sub_269411078(v103);
  v104 = OUTLINED_FUNCTION_15_2();
  v80(v104);
  if (v64)
  {
    if (qword_28030F0F0 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_28030F0F0);
    }

    v105 = sub_269423FC8();
    OUTLINED_FUNCTION_20_2(v105, qword_28030F7F0);
    v106 = sub_269423FA8();
    v107 = sub_269424368();
    v108 = OUTLINED_FUNCTION_11_2(v107);
    v109 = v162;
    if (v108)
    {
      *OUTLINED_FUNCTION_12_0() = 0;
      OUTLINED_FUNCTION_9_2(&dword_2693C9000, v110, v111, "Returning GetSupportedLanguagesFlow.");
      OUTLINED_FUNCTION_6_0();
    }

    sub_269423468();
    sub_269423EA8();
    sub_269423468();
    v112 = type metadata accessor for TemplatingResultProvider(0);
    OUTLINED_FUNCTION_10_2(v112);
    sub_2693F2808();
    v114 = v113;
    sub_2694232D8();
    v115 = type metadata accessor for SupportedLanguagesFlow(0);
    v116 = OUTLINED_FUNCTION_10_2(v115);
    sub_2693ED31C(&v167, v114, &v166);
    OUTLINED_FUNCTION_16_2();
    *(v116 + 24) = v115;
    v117 = sub_2693DC0D8(&qword_28030F820, type metadata accessor for SupportedLanguagesFlow, &unk_269427198);
    OUTLINED_FUNCTION_19_2(v117);
    (*(v60 + 8))(v109, v62);
    goto LABEL_30;
  }

  sub_269423478();
  sub_269410C20();
  v133 = OUTLINED_FUNCTION_15_2();
  v80(v133);
  if (qword_28030F0F0 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_28030F0F0);
  }

  v134 = sub_269423FC8();
  OUTLINED_FUNCTION_20_2(v134, qword_28030F7F0);
  v135 = v149;
  (*(v60 + 16))(v149, v162, v62);
  v136 = sub_269423FA8();
  v137 = sub_269424378();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v161 = v26;
    v139 = v138;
    v140 = v135;
    v158 = swift_slowAlloc();
    *&v167 = v158;
    *v139 = 136315138;
    sub_269423478();
    v141 = sub_269424128();
    v143 = v142;
    v144 = *(v159 + 8);
    v144(v140, v62);
    v145 = sub_2693DB6E0(v141, v143, &v167);

    *(v139 + 4) = v145;
    _os_log_impl(&dword_2693C9000, v136, v137, "Unsupported uso parse: %s.", v139, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v158);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v26 = v161;
    v144(v162, v62);
  }

  else
  {

    v146 = *(v60 + 8);
    v146(v135, v62);
    v147 = OUTLINED_FUNCTION_17_2();
    (v146)(v147);
  }

  v71 = v163;
  v77 = v164;
  v164[4] = 0;
  *v77 = 0u;
  *(v77 + 1) = 0u;
  return (*(v58 + 1))(v71, v26);
}

uint64_t sub_2693DA6C0(void *a1, uint64_t a2)
{
  v4 = sub_269423EB8();
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for TranslatePhraseIntent();
  type metadata accessor for TranslatePhraseIntentResponse();
  sub_269422F58();
  sub_269423EA8();
  sub_269423468();
  v5 = type metadata accessor for TemplatingResultProvider(0);
  OUTLINED_FUNCTION_10_2(v5);
  sub_2693F2808();
  v7 = v6;
  sub_2693DBDF8(a1, v28);
  v8 = type metadata accessor for TranslatePhraseHandleIntentFlowStrategy(0);
  OUTLINED_FUNCTION_10_2(v8);
  v24 = a1;
  *&v25 = sub_2693DC378(v7, v28);
  sub_2693DBDF8(a1, v28);
  v9 = swift_allocObject();
  sub_2693DBCC8(v28, v9 + 16);
  *(v9 + 56) = a2;
  sub_2693DC0D8(&qword_28030F858, type metadata accessor for TranslatePhraseHandleIntentFlowStrategy, &unk_2694262E0);

  sub_269422F08();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F808, &qword_269426110);
  sub_269422F38();
  sub_269423EA8();
  sub_269423468();
  swift_allocObject();
  sub_2693F2808();
  v11 = v10;
  if (qword_28030F158 != -1)
  {
    OUTLINED_FUNCTION_4_3(&qword_28030F158);
  }

  v12 = qword_280315088;
  v13 = qword_28030F150;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_28030F150);
  }

  v14 = qword_280315070;
  v15 = qword_28030F170;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_2_4(&qword_28030F170);
  }

  v16 = qword_2803150B8;

  sub_269423468();
  v17 = type metadata accessor for TranslatePhraseNeedsValueFlowStrategy(0);
  v18 = OUTLINED_FUNCTION_10_2(v17);
  v26 = &type metadata for SiriTranslationPluginFeatureFlagsImpl;
  v27 = &protocol witness table for SiriTranslationPluginFeatureFlagsImpl;
  v19 = OBJC_IVAR____TtC22SiriTranslationIntents37TranslatePhraseNeedsValueFlowStrategy_log;
  if (qword_28030F0C8 != -1)
  {
    swift_once();
  }

  v20 = sub_269423FC8();
  v21 = __swift_project_value_buffer(v20, qword_280314F18);
  (*(*(v20 - 8) + 16))(&v18[v19], v21, v20);
  *(v18 + 2) = v12;
  *(v18 + 3) = v14;
  *(v18 + 4) = v11;
  sub_2693DBCC8(v28, &v18[OBJC_IVAR____TtC22SiriTranslationIntents37TranslatePhraseNeedsValueFlowStrategy_deviceState]);
  *(v18 + 5) = v16;
  sub_2693DBCC8(&v25, &v18[OBJC_IVAR____TtC22SiriTranslationIntents37TranslatePhraseNeedsValueFlowStrategy_featureFlags]);
  *&v28[0] = v18;
  sub_2693DC0D8(&qword_28030F860, type metadata accessor for TranslatePhraseNeedsValueFlowStrategy, &unk_2694276B8);
  sub_269422EF8();

  sub_269422F28();
  v22 = sub_269423EE8();
  OUTLINED_FUNCTION_10_2(v22);
  sub_269423EC8();
  sub_269422F18();

  sub_269422F48();

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_2693DAB58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F808, &qword_269426110);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F810, &unk_269426118);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-1] - v7;
  sub_269423468();
  if (qword_28030F158 != -1)
  {
    swift_once();
  }

  v9 = qword_280315088;
  v10 = qword_28030F150;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_280315070;
  type metadata accessor for TranslatePhraseStrategy(0);
  swift_allocObject();

  v19[5] = sub_2693D099C(v9, v11);
  sub_2693DBDF8(v20, v19);
  if (qword_28030F0E8 != -1)
  {
    swift_once();
  }

  v12 = qword_280314FD8;

  sub_2693DA6C0(v19, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F830, &qword_269426130);
  swift_allocObject();
  sub_269422F68();
  sub_2693DC0D8(&qword_28030F838, type metadata accessor for TranslatePhraseStrategy, &unk_269425C68);
  sub_2694230E8();
  if (a1)
  {
    sub_269423EE8();
    v13 = a1;
    sub_269423ED8();
    v14 = sub_2694230D8();

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F840, qword_269426138);
  }

  else
  {
    v14 = sub_2694230C8();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F840, qword_269426138);
  }

  v16 = sub_2693DBE5C();
  a2[3] = v15;
  a2[4] = v16;
  *a2 = v14;
  (*(v6 + 8))(v8, v5);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_2693DAEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  sub_269423EB8();
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2693DAF5C, 0, 0);
}

uint64_t sub_2693DAF5C(uint64_t a1)
{
  v2 = *(v1 + 160);
  sub_269423EA8();
  sub_269423468();
  v3 = type metadata accessor for TemplatingResultProvider(0);
  OUTLINED_FUNCTION_10_2(v3);
  sub_2693F2808();
  v5 = v4;
  sub_2693DBDF8(v2, v1 + 16);
  sub_2694232D8();
  if (qword_28030F170 != -1)
  {
    OUTLINED_FUNCTION_2_4(&qword_28030F170);
  }

  v6 = qword_2803150B8;
  v7 = type metadata accessor for TranslatePhraseResponseFlow(0);
  v8 = OUTLINED_FUNCTION_10_2(v7);
  *(v1 + 120) = &type metadata for SiriTranslationPluginFeatureFlagsImpl;
  *(v1 + 128) = &protocol witness table for SiriTranslationPluginFeatureFlagsImpl;
  v9 = OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_log;
  v10 = qword_28030F0A8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *(v1 + 168);
  v12 = *(v1 + 144);
  v13 = *(v1 + 152);
  v14 = sub_269423FC8();
  v15 = __swift_project_value_buffer(v14, qword_280314EB8);
  (*(*(v14 - 8) + 16))(v8 + v9, v15, v14);
  *(v8 + 16) = v12;
  *(v8 + 24) = v13;
  *(v8 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_templatingResultProvider) = v5;
  sub_2693DBCC8((v1 + 16), v8 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_deviceState);
  sub_2693DBCC8((v1 + 56), v8 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher);
  *(v8 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_translationApiClient) = v11;
  *(v8 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_nlContextProvider) = v6;
  sub_2693DBCC8((v1 + 96), v8 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_featureFlags);
  *(v1 + 136) = v8;
  sub_2693DC0D8(&qword_28030F868, type metadata accessor for TranslatePhraseResponseFlow, &unk_2694286A0);
  v16 = v12;
  v17 = v13;

  v18 = sub_269422F78();

  v19 = *(v1 + 8);

  return v19(v18);
}

uint64_t sub_2693DB26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2693DB31C;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2693DB31C(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_2693DB434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2693DB4E8;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_2693DB4E8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2693DB5D4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NoOpFlow();

  return sub_269422FC8();
}

uint64_t sub_2693DB610(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2693DB684(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2693DB6E0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_2693DB6E0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2693DB7A4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2693DC120(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2693DB7A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2693DB8A4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2694244E8();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2693DB8A4(uint64_t a1, unint64_t a2)
{
  v3 = sub_2693DB8F0(a1, a2);
  sub_2693DBA08(&unk_2879F39B0);
  return v3;
}

uint64_t sub_2693DB8F0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2694241E8())
  {
    result = sub_2693DBAEC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2694244A8();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2694244E8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2693DBA08(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2693DBB5C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2693DBAEC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F870, qword_269426200);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2693DBB5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F870, qword_269426200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_2693DBC50(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2693DBC60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F818, &qword_269426128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2693DBCC8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2693DBCE0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = &type metadata for TranslateFeatureFlags;
  v15 = &protocol witness table for TranslateFeatureFlags;
  v8 = OBJC_IVAR____TtC22SiriTranslationIntents23TranslationDecisionFlow_log;
  if (qword_28030F080 != -1)
  {
    swift_once();
  }

  v9 = sub_269423FC8();
  v10 = __swift_project_value_buffer(v9, qword_280314E40);
  (*(*(v9 - 8) + 16))(a4 + v8, v10, v9);
  *(a4 + OBJC_IVAR____TtC22SiriTranslationIntents23TranslationDecisionFlow_mainFlow) = a1;
  v11 = a4 + OBJC_IVAR____TtC22SiriTranslationIntents23TranslationDecisionFlow_translateIntentResult;
  *v11 = a2;
  *(v11 + 8) = a3 & 1;
  sub_2693DBCC8(&v13, a4 + OBJC_IVAR____TtC22SiriTranslationIntents23TranslationDecisionFlow_featureManager);
  return a4;
}

uint64_t sub_2693DBDF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2693DBE5C()
{
  result = qword_28030F848;
  if (!qword_28030F848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030F840, qword_269426138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F848);
  }

  return result;
}

uint64_t sub_2693DBEF4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2693DBF34(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2693DBFE4;

  return sub_2693DAEC8(a1, a2, v2 + 16, v6);
}

uint64_t sub_2693DBFE4(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_2693DC0D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2693DC120(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_8_1()
{
  *(v1 - 136) = 0xD00000000000002BLL;
  *(v1 - 128) = v0;

  JUMPOUT(0x26D63BD80);
}

void OUTLINED_FUNCTION_9_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1)
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_11_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_19_2(uint64_t result)
{
  v2[4] = result;
  *v2 = v1;
  return result;
}

id sub_2693DC314()
{
  if (qword_28030F110 != -1)
  {
    swift_once();
  }

  v1 = qword_280315010;
  qword_280314FF0 = qword_280315010;

  return v1;
}

uint64_t sub_2693DC378(uint64_t a1, __int128 *a2)
{
  v5 = OBJC_IVAR____TtC22SiriTranslationIntents39TranslatePhraseHandleIntentFlowStrategy_log;
  if (qword_28030F0A8 != -1)
  {
    swift_once();
  }

  v6 = sub_269423FC8();
  v7 = __swift_project_value_buffer(v6, qword_280314EB8);
  (*(*(v6 - 8) + 16))(v2 + v5, v7, v6);
  *(v2 + OBJC_IVAR____TtC22SiriTranslationIntents39TranslatePhraseHandleIntentFlowStrategy_templatingResultProvider) = a1;
  sub_2693DC180(a2, v2 + OBJC_IVAR____TtC22SiriTranslationIntents39TranslatePhraseHandleIntentFlowStrategy_deviceState);
  return v2;
}

uint64_t sub_2693DC454()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents39TranslatePhraseHandleIntentFlowStrategy_log;
  v2 = sub_269423FC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents39TranslatePhraseHandleIntentFlowStrategy_deviceState));
  return v0;
}

uint64_t sub_2693DC4D4()
{
  sub_2693DC454();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for TranslatePhraseHandleIntentFlowStrategy(uint64_t a1)
{
  result = qword_28030F890;
  if (!qword_28030F890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693DC580(uint64_t a1)
{
  result = sub_269423FC8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2693DC62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TranslatePhraseHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_2693DCD68;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_2693DC6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TranslatePhraseHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_2693DCD68;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_2693DC7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TranslatePhraseHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_2693DCD68;

  return MEMORY[0x2821B9C48](a1, a2, v9, a4);
}

uint64_t sub_2693DC884(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for TranslatePhraseHandleIntentFlowStrategy(0);
  v7 = sub_2693DCD24(&qword_28030F8A8, &unk_26942636C);
  *v5 = v2;
  v5[1] = sub_2693DCD68;

  return MEMORY[0x2821B9FD8](a1, a2, v6, v7);
}

uint64_t sub_2693DC96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TranslatePhraseHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_2693DCD68;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_2693DCA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TranslatePhraseHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_2693DCD68;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_2693DCAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TranslatePhraseHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_2693CC820;

  return MEMORY[0x2821B9C38](a1, a2, v9, a4);
}

uint64_t sub_2693DCBC4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2693CC664;

  return (sub_2693D29E0)(a1, a2);
}

uint64_t sub_2693DCCAC(uint64_t a1)
{
  result = sub_2693DCD24(&qword_28030F8A0, &unk_269426278);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2693DCD24(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TranslatePhraseHandleIntentFlowStrategy(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2693DCD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_3();
  v103 = v4;
  v104 = v5;
  v99 = v6;
  v100 = v7;
  v95 = sub_269423B48();
  OUTLINED_FUNCTION_2();
  v98 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10();
  v12 = v10 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v88 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v96 = &v88 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v88 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v97 = &v88 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v88 - v24;
  v101 = sub_269423A18();
  OUTLINED_FUNCTION_2();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10();
  v31 = (v29 - v30);
  MEMORY[0x28223BE20](v32);
  v102 = &v88 - v33;
  v34 = sub_269423B68();
  OUTLINED_FUNCTION_2();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_5();
  v40 = v39 - v38;
  sub_269423B58();
  v91 = v36;
  v94 = v34;
  sub_269423A08();
  OUTLINED_FUNCTION_4_4();
  v89 = v21;
  sub_2694239F8();
  v41 = *(v27 + 8);
  v92 = v27 + 8;
  v93 = v41;
  v41(v31, v101);
  sub_269423B38();
  sub_269423B08();
  v42 = v95;
  v90 = v25;
  v43 = *(v98 + 8);
  v43(v12, v95);
  sub_269423AF8();
  v43(v16, v42);
  v105 = v99;
  v106 = v100;
  v44 = v89;
  sub_269423B18();
  v45 = OUTLINED_FUNCTION_15_3();
  (v43)(v45);
  v105 = v103;
  v106 = v104;
  v46 = v97;
  sub_269423B18();
  v43(v44, v42);
  v105 = 1919251285;
  v106 = 0xE400000000000000;
  sub_269423B18();
  v43(v46, v42);
  v56 = sub_269423B28();
  v57 = v100;
  v58 = v101;
  v59 = OUTLINED_FUNCTION_15_3();
  (v43)(v59);
  v64 = v94;
  if (*(v56 + 16))
  {
    v98 = v40;
    sub_2693DE6A4(v56, v60, v61, v62, v63);
    v66 = v65;
    v68 = v67;

    if (v68)
    {
      v69 = v91;
      if (qword_28030F100 != -1)
      {
        OUTLINED_FUNCTION_0_9(&qword_28030F100);
      }

      v70 = sub_269423FC8();
      __swift_project_value_buffer(v70, qword_28030F8B0);

      v71 = sub_269423FA8();
      v72 = sub_269424358();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *v73 = 136315394;
        *(v73 + 4) = OUTLINED_FUNCTION_10_3();
        *(v73 + 12) = 2080;
        *(v73 + 14) = sub_2693DB6E0(v66, v68, &v105);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v74, v75, v76, v77, v73, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      v93(v102, v58);
      (*(v69 + 8))(v98, v94);
      goto LABEL_7;
    }

    v93(v102, v58);
    OUTLINED_FUNCTION_13_2();
    v86 = v98;
  }

  else
  {
    if (qword_28030F100 != -1)
    {
      OUTLINED_FUNCTION_0_9(&qword_28030F100);
    }

    v78 = sub_269423FC8();
    __swift_project_value_buffer(v78, qword_28030F8B0);

    v79 = v57;

    v80 = sub_269423FA8();
    v81 = sub_269424358();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = v79;
      v83 = OUTLINED_FUNCTION_16_0();
      v105 = swift_slowAlloc();
      *v83 = 134218498;
      v98 = v40;
      v84 = *(v56 + 16);

      *(v83 + 4) = v84;

      *(v83 + 12) = 2080;
      *(v83 + 14) = sub_2693DB6E0(v99, v82, &v105);
      *(v83 + 22) = 2080;
      *(v83 + 24) = OUTLINED_FUNCTION_10_3();
      _os_log_impl(&dword_2693C9000, v80, v81, "%ld relevant history interactions for %s-%s, not enough to resolve the ambiguity", v83, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_5_4();

      v93(v102, v101);
      OUTLINED_FUNCTION_13_2();
      v86 = v98;
      v87 = v64;
      goto LABEL_22;
    }

    swift_bridgeObjectRelease_n();
    v93(v102, v58);
    OUTLINED_FUNCTION_13_2();
    v86 = v40;
  }

  v87 = v64;
LABEL_22:
  v85(v86, v87);
  if (qword_28030F100 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_28030F100);
  }

  v47 = sub_269423FC8();
  __swift_project_value_buffer(v47, qword_28030F8B0);

  v48 = sub_269423FA8();
  v49 = sub_269424358();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = OUTLINED_FUNCTION_16_0();
    v105 = v51;
    *v50 = 136315138;
    *(v50 + 4) = OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v52, v53, v54, v55, v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_6_0();
  }

LABEL_7:
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2693DD768()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_28030F8B0);
  __swift_project_value_buffer(v0, qword_28030F8B0);
  return sub_269423FB8();
}

uint64_t sub_2693DD7E8()
{
  v0 = sub_269422CE8();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_5();
  sub_269422D18();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_5();
  sub_269423AD8();
  sub_269423A68();
  sub_269423A58();
  sub_269423AA8();
  sub_269422D08();
  sub_269422CF8();
  v3 = OUTLINED_FUNCTION_15_3();
  v4(v3);
  sub_269423A38();
  sub_269423A28();
  sub_269422CD8();
  return sub_269423AC8();
}

void sub_2693DD97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_17_3();
  v6 = v5;
  v103 = v7;
  v102 = v8;
  v112 = v9;
  v104 = v10;
  v101 = sub_269423BE8();
  OUTLINED_FUNCTION_2();
  v100 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_5();
  v108 = v14 - v13;
  v15 = sub_269423BA8();
  OUTLINED_FUNCTION_2();
  v107 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F8D0, &unk_269427290);
  v22 = OUTLINED_FUNCTION_12_2(v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v99 - v23;
  sub_269423AE8();
  OUTLINED_FUNCTION_2();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10();
  *&v111 = v28 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v99 - v31;
  v105 = v26;
  v33 = *(v26 + 16);
  v113 = v34;
  v110 = v33;
  (v33)(&v99 - v31, v6);
  if (!*(sub_269423A88() + 16))
  {

    goto LABEL_5;
  }

  sub_2693FCEE8(0x6465766C6F736572, 0xEA00000000007942);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_5:
    sub_269424158();
    sub_269423C08();
    v37 = OUTLINED_FUNCTION_3_3();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    v41 = OUTLINED_FUNCTION_18_3();
    OUTLINED_FUNCTION_9_3();
    v42 = OUTLINED_FUNCTION_8_2();
    v41(v42);
  }

  v106 = v20;
  v109 = v15;
  if (!*(sub_269423A88() + 16))
  {

    goto LABEL_10;
  }

  sub_2693FCEE8(0x65676175676E616CLL, 0xED000070756F7247);
  v44 = v43;

  if ((v44 & 1) == 0)
  {
LABEL_10:
    sub_269424158();
    v45 = sub_269423C08();
    v46 = OUTLINED_FUNCTION_3_3();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
    v49 = OUTLINED_FUNCTION_18_3();
    sub_2693DE1AC(v24, 0x65676175676E616CLL, 0xED000070756F7247);
    v50 = OUTLINED_FUNCTION_8_2();
    v49(v50);
    sub_269424158();
    v51 = OUTLINED_FUNCTION_3_3();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v45);
    v54 = OUTLINED_FUNCTION_18_3();
    OUTLINED_FUNCTION_9_3();
    v55 = OUTLINED_FUNCTION_8_2();
    v54(v55);
  }

  sub_269424158();
  v56 = sub_269423C08();
  v57 = OUTLINED_FUNCTION_3_3();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v56);
  v60 = OUTLINED_FUNCTION_18_3();
  sub_2693DE1AC(v24, 0x6369666963657073, 0xEE00656C61636F4CLL);
  v61 = OUTLINED_FUNCTION_8_2();
  v60(v61);
  sub_269424158();
  v62 = OUTLINED_FUNCTION_3_3();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v56);
  v112 = v32;
  v65 = sub_269423A78();
  sub_2693DE1AC(v24, 0x6F4C656372756F73, 0xEC000000656C6163);
  v66 = OUTLINED_FUNCTION_8_2();
  v65(v66);
  if (qword_28030F100 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_28030F100);
  }

  v67 = sub_269423FC8();
  v104 = __swift_project_value_buffer(v67, qword_28030F8B0);
  v68 = sub_269423FA8();
  v69 = sub_269424358();
  v70 = os_log_type_enabled(v68, v69);
  v71 = v113;
  v72 = v111;
  if (v70)
  {
    v73 = swift_slowAlloc();
    v74 = OUTLINED_FUNCTION_16_0();
    v114 = v74;
    *v73 = 136315138;
    v75 = v112;
    swift_beginAccess();
    v110(v72, v75, v71);
    v76 = sub_269424128();
    v78 = sub_2693DB6E0(v76, v77, &v114);
    v72 = v111;

    *(v73 + 4) = v78;
    v71 = v113;
    _os_log_impl(&dword_2693C9000, v68, v69, "The interaction for donation: %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v74);
    v79 = v110;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v80 = v107;
  }

  else
  {

    v80 = v107;
    v79 = v110;
    v75 = v112;
  }

  v81 = v106;
  sub_269423B98();
  OUTLINED_FUNCTION_4_4();
  sub_269423B88();
  sub_269423B78();
  swift_beginAccess();
  v79(v72, v75, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F8D8, &qword_2694263F0);
  inited = swift_initStackObject();
  v111 = xmmword_2694256B0;
  *(inited + 16) = xmmword_2694256B0;
  *(inited + 32) = 0x65676175676E616CLL;
  *(inited + 40) = 0xE900000000000073;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F8E0, &qword_2694263F8);
  v83 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = v111;
  v85 = v84 + v83;
  v86 = v109;
  (*(v80 + 16))(v85, v81, v109);
  *(inited + 48) = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F8E8, &qword_269426400);
  sub_2694240B8();
  v87 = v108;
  v88 = sub_269423BB8();
  sub_2693DE340(v88, v89, v90, v91, v92);
  v93 = sub_269423FA8();
  LOBYTE(inited) = sub_269424358();
  if (os_log_type_enabled(v93, inited))
  {
    v94 = swift_slowAlloc();
    *v94 = 0;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v95, v96, v97, v98, v94, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v100 + 8))(v87, v101);
  (*(v80 + 8))(v81, v86);
  (*(v105 + 8))(v112, v113);
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2693DE1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F8D0, &unk_269427290);
  v9 = OUTLINED_FUNCTION_12_2(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = sub_269423C08();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_5();
  v18 = v17 - v16;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) == 1)
  {
    sub_2693DF81C(a1);
    sub_2693DF884(a2, a3, v11);

    return sub_2693DF81C(v11);
  }

  else
  {
    (*(v14 + 32))(v18, a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;
    sub_2693DF9CC(v18, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v22;
  }

  return result;
}

void sub_2693DE340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_17_3();
  v6 = sub_269424058();
  OUTLINED_FUNCTION_2();
  v29 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_5();
  v11 = v10 - v9;
  v28 = sub_269424088();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_5();
  v17 = v16 - v15;
  v18 = sub_269423BE8();
  OUTLINED_FUNCTION_2();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  if (qword_28030F108 != -1)
  {
    swift_once();
  }

  v27 = qword_28030F8C8;
  (*(v20 + 16))(&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v18);
  v24 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v25 = swift_allocObject();
  (*(v20 + 32))(v25 + v24, &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v31[4] = sub_2693DF704;
  v31[5] = v25;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 1107296256;
  v31[2] = sub_2693DF638;
  v31[3] = &block_descriptor_0;
  v26 = _Block_copy(v31);
  sub_269424068();
  v30 = MEMORY[0x277D84F90];
  sub_2693E18D0(&qword_28030F8F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F8F8, &qword_269426408);
  sub_2693DF7C8(&qword_28030F900, &qword_28030F8F8, &qword_269426408);
  sub_269424468();
  MEMORY[0x26D63BF60](0, v17, v11, v26);
  _Block_release(v26);
  (*(v29 + 8))(v11, v6);
  (*(v13 + 8))(v17, v28);

  OUTLINED_FUNCTION_16_3();
}

void sub_2693DE6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_17_3();
  v6 = v5;
  sub_269423C08();
  OUTLINED_FUNCTION_2();
  v66 = v7;
  v67 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_5();
  v65 = v10 - v9;
  v11 = sub_269423AE8();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_5();
  v68 = v16 - v15;
  if (qword_28030F100 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_28030F100);
  }

  v17 = sub_269423FC8();
  __swift_project_value_buffer(v17, qword_28030F8B0);
  v18 = sub_269423FA8();
  v19 = sub_269424368();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2693C9000, v18, v19, "determining if language can be identified", v20, 2u);
    OUTLINED_FUNCTION_5_4();
  }

  v70 = v6;

  sub_2693DFBF0(&v70);
  v21 = sub_2693DEDE0(1, v70);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  if ((v26 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_2694246A8();
  swift_unknownObjectRetain_n();
  v30 = swift_dynamicCastClass();
  if (!v30)
  {
    swift_unknownObjectRelease();
    v30 = MEMORY[0x277D84F90];
  }

  v31 = *(v30 + 16);

  if (__OFSUB__(v27 >> 1, v25))
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v31 != (v27 >> 1) - v25)
  {
LABEL_42:
    swift_unknownObjectRelease();
LABEL_6:
    sub_2693DFC98(v21, v23, v25, v27);
    v29 = v28;
    goto LABEL_13;
  }

  v29 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v29)
  {
    goto LABEL_14;
  }

  v29 = MEMORY[0x277D84F90];
LABEL_13:
  swift_unknownObjectRelease();
LABEL_14:

  v32 = sub_269423FA8();
  v33 = sub_269424358();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = OUTLINED_FUNCTION_16_0();
    v70 = v35;
    *v34 = 134218242;
    *(v34 + 4) = 1;
    *(v34 + 12) = 2080;
    v36 = MEMORY[0x26D63BE40](v29, v11);
    v38 = sub_2693DB6E0(v36, v37, &v70);

    *(v34 + 14) = v38;
    _os_log_impl(&dword_2693C9000, v32, v33, "The most recent %ld translation interactions for are: %s", v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_6_0();
  }

  v39 = v68;
  v40 = *(v29 + 16);
  if (v40)
  {
    v43 = *(v13 + 16);
    v42 = v13 + 16;
    v41 = v43;
    v44 = v29 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
    v45 = *(v42 + 56);
    v46 = (v42 - 8);
    v47 = MEMORY[0x277D84F90];
    v63 = v45;
    v64 = v43;
    do
    {
      v41(v39, v44, v11);
      v48 = sub_269423A88();
      if (*(v48 + 16) && (v49 = sub_2693FCEE8(0x6369666963657073, 0xEE00656C61636F4CLL), (v50 & 1) != 0))
      {
        (*(v67 + 16))(v65, *(v48 + 56) + *(v67 + 72) * v49, v66);

        v69 = sub_269423BF8();
        v51 = v39;
        v53 = v52;
        (*v46)(v51, v11);
        (*(v67 + 8))(v65, v66);
        if (v53)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26941F074(0, *(v47 + 16) + 1, 1, v47);
            v47 = v57;
          }

          v55 = *(v47 + 16);
          v54 = *(v47 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_26941F074(v54 > 1, v55 + 1, 1, v47);
            v47 = v58;
          }

          *(v47 + 16) = v55 + 1;
          v56 = v47 + 16 * v55;
          *(v56 + 32) = v69;
          *(v56 + 40) = v53;
        }

        v39 = v68;
        v45 = v63;
        v41 = v64;
      }

      else
      {

        (*v46)(v39, v11);
      }

      v44 += v45;
      --v40;
    }

    while (v40);
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
  }

  v59 = *(v47 + 16);
  v60 = (v47 + 40);
  v61 = v59;
  if (v59)
  {
    while (1)
    {
      v62 = *(v60 - 1) == *(v47 + 32) && *v60 == *(v47 + 40);
      if (!v62 && (sub_269424688() & 1) == 0)
      {
        break;
      }

      v60 += 2;
      if (!--v61)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    if (v59)
    {
    }
  }

  OUTLINED_FUNCTION_16_3();
}

BOOL sub_2693DEC68()
{
  v0 = sub_269422CE8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  sub_269423AB8();
  sub_269423AB8();
  sub_2693E18D0(&qword_28030F930, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v7 = sub_2694240E8();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return (v7 & 1) == 0;
}

uint64_t sub_2693DEDE0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2693E1870(v3, -result, 0);
    if (v4)
    {
      result = 0;
    }

    if (v3 >= result)
    {
      v5 = sub_2693E17C8(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2693DEE9C()
{
  v7 = sub_2694243A8();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_269424398();
  MEMORY[0x28223BE20](v3);
  v4 = sub_269424088();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2693DF784();
  sub_269424078();
  v8 = MEMORY[0x277D84F90];
  sub_2693E18D0(&qword_28030F910, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F918, &qword_269426410);
  sub_2693DF7C8(&qword_28030F920, &qword_28030F918, &qword_269426410);
  sub_269424468();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_2694243C8();
  qword_28030F8C8 = result;
  return result;
}

uint64_t sub_2693DF0EC(uint64_t a1)
{
  v2 = sub_269423AE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269423BE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28030F100 != -1)
  {
    swift_once();
  }

  v10 = sub_269423FC8();
  __swift_project_value_buffer(v10, qword_28030F8B0);
  (*(v7 + 16))(v9, a1, v6);
  v11 = sub_269423FA8();
  v12 = sub_269424368();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = v2;
    v14 = v13;
    v22 = swift_slowAlloc();
    v24 = v22;
    *v14 = 136315138;
    sub_269423BC8();
    v15 = sub_269423A48();
    v23 = a1;
    v17 = v16;
    (*(v3 + 8))(v5, v21);
    (*(v7 + 8))(v9, v6);
    v18 = sub_2693DB6E0(v15, v17, &v24);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2693C9000, v11, v12, "#Donation+Utilities: Donating %s to Siri Remembers", v14, 0xCu);
    v19 = v22;
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x26D63C8E0](v19, -1, -1);
    MEMORY[0x26D63C8E0](v14, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return sub_269423BD8();
}

void sub_2693DF3E8(void *a1, char a2)
{
  if (a2)
  {
    if (qword_28030F100 != -1)
    {
      swift_once();
    }

    v3 = sub_269423FC8();
    __swift_project_value_buffer(v3, qword_28030F8B0);
    v4 = a1;
    oslog = sub_269423FA8();
    v5 = sub_269424378();
    sub_2693DF778(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_269424708();
      v10 = sub_2693DB6E0(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_2693C9000, oslog, v5, "#Donation+Utilities: Error donating to Siri Remembers %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x26D63C8E0](v7, -1, -1);
      MEMORY[0x26D63C8E0](v6, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_28030F100 != -1)
    {
      swift_once();
    }

    v11 = sub_269423FC8();
    __swift_project_value_buffer(v11, qword_28030F8B0);
    oslog = sub_269423FA8();
    v12 = sub_269424368();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2693C9000, oslog, v12, "#Donation+Utilities: Donated successfully to Siri Remembers", v13, 2u);
      MEMORY[0x26D63C8E0](v13, -1, -1);
    }
  }
}

uint64_t sub_2693DF638(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2693DF67C()
{
  v1 = sub_269423BE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2693DF704()
{
  v1 = sub_269423BE8();
  OUTLINED_FUNCTION_12_2(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_2693DF0EC(v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2693DF778(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_2693DF784()
{
  result = qword_28030F908;
  if (!qword_28030F908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28030F908);
  }

  return result;
}

uint64_t sub_2693DF7C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2693DF81C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F8D0, &unk_269427290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2693DF884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_2693FCEE8(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F928, &qword_269426418);
    sub_269424548();

    v8 = *(v14 + 56);
    v9 = sub_269423C08();
    (*(*(v9 - 8) + 32))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    sub_269424558();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_269423C08();
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_2693DF9CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_2693FCEE8(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F928, &qword_269426418);
  if ((sub_269424548() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_2693FCEE8(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_2694246D8();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = sub_269423C08();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v12;

    return v20(v22, a1, v21);
  }

  else
  {
    sub_2693DFB40(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_2693DFB40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_269423C08();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
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

uint64_t sub_2693DFBF0(uint64_t *a1)
{
  v2 = *(sub_269423AE8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2693E18BC(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_2693DFD78(v7);
  *a1 = v3;
  return result;
}

void sub_2693DFC98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_26941F360((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      sub_269423AE8();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_2693DFD78(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_269424658();
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
        sub_269423AE8();
        v6 = sub_2694242B8();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_269423AE8() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_2693E0280(v8, v9, a1, v4);
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
    return sub_2693DFEA8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2693DFEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v59 = sub_269422CE8();
  v8 = *(v59 - 8);
  v9 = MEMORY[0x28223BE20](v59);
  v58 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v57 = &v39[-v11];
  v12 = sub_269423AE8();
  v13 = MEMORY[0x28223BE20](v12);
  v49 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v56 = &v39[-v16];
  result = MEMORY[0x28223BE20](v15);
  v55 = &v39[-v19];
  v41 = a2;
  if (a3 != a2)
  {
    v21 = *(v18 + 16);
    v20 = v18 + 16;
    v22 = *a4;
    v23 = *(v20 + 56);
    v51 = (v8 + 8);
    v52 = v21;
    v50 = (v20 - 8);
    v53 = v12;
    v54 = v20;
    v24 = v22 + v23 * (a3 - 1);
    v46 = -v23;
    v47 = (v20 + 16);
    v25 = a1 - a3;
    v48 = v22;
    v40 = v23;
    v26 = v22 + v23 * a3;
    while (2)
    {
      v44 = v24;
      v45 = a3;
      v42 = v26;
      v43 = v25;
      v60 = v25;
      do
      {
        v27 = v55;
        v28 = v52;
        v52(v55, v26, v12);
        v29 = v56;
        v28(v56, v24, v12);
        v30 = v57;
        sub_269423AB8();
        v31 = v58;
        sub_269423AB8();
        sub_2693E18D0(&qword_28030F930, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v32 = v59;
        v61 = sub_2694240E8();
        v33 = *v51;
        v34 = v31;
        v12 = v53;
        (*v51)(v34, v32);
        v33(v30, v32);
        v35 = *v50;
        (*v50)(v29, v12);
        result = v35(v27, v12);
        if (v61)
        {
          break;
        }

        if (!v48)
        {
          __break(1u);
          return result;
        }

        v36 = *v47;
        v37 = v49;
        (*v47)(v49, v26, v12);
        swift_arrayInitWithTakeFrontToBack();
        result = v36(v24, v37, v12);
        v24 += v46;
        v26 += v46;
      }

      while (!__CFADD__(v60++, 1));
      a3 = v45 + 1;
      v24 = v44 + v40;
      v25 = v43 - 1;
      v26 = v42 + v40;
      if (v45 + 1 != v41)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2693E0280(char **a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v137 = a1;
  v157 = sub_269422CE8();
  v6 = *(v157 - 8);
  v7 = MEMORY[0x28223BE20](v157);
  v156 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v155 = &v132 - v9;
  v10 = sub_269423AE8();
  v11 = MEMORY[0x28223BE20](v10);
  v140 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v132 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v154 = &v132 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v161 = &v132 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v23 = &v132 - v20;
  v24 = *(a3 + 1);
  v141 = a3;
  v145 = v21;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_102:
    v163 = *v137;
    if (!v163)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_104;
    }

    goto LABEL_139;
  }

  v132 = a4;
  v25 = 0;
  v159 = v21 + 16;
  v160 = (v21 + 8);
  v152 = (v21 + 32);
  v153 = (v6 + 8);
  v26 = MEMORY[0x277D84F90];
  v158 = v10;
  v133 = v22;
  v136 = &v132 - v20;
  while (1)
  {
    v27 = v25 + 1;
    if (v25 + 1 < v24)
    {
      v151 = v24;
      v28 = *a3;
      v29 = *(v145 + 72);
      v147 = v25 + 1;
      a3 = *(v145 + 16);
      v30 = v22;
      v31 = v28 + v29 * (v25 + 1);
      (a3)(v23);
      v163 = v28;
      v148 = a3;
      (a3)(v30, v28 + v29 * v25, v10);
      v32 = v136;
      v33 = v146;
      LODWORD(v149) = sub_2693DEC68();
      v146 = v33;
      if (v33)
      {
        v131 = *v160;
        (*v160)(v30, v10);
        (v131)(v32, v10);
LABEL_114:

        return;
      }

      v134 = v26;
      v26 = *v160;
      (*v160)(v30, v10);
      v143 = v26;
      (v26)(v32, v10);
      v135 = v25;
      v34 = v25 + 2;
      v35 = v163 + v29 * (v25 + 2);
      v27 = v147;
      v36 = v151;
      v144 = v29;
      while (1)
      {
        v37 = v34;
        v38 = v27 + 1;
        if (v38 >= v36)
        {
          break;
        }

        v39 = v158;
        v40 = v148;
        v163 = v34;
        (v148)();
        v41 = v154;
        v40(v154, v31, v39);
        v26 = v155;
        v147 = v38;
        sub_269423AB8();
        v42 = v156;
        v43 = v41;
        sub_269423AB8();
        sub_2693E18D0(&qword_28030F930, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v44 = v157;
        LODWORD(v162) = sub_2694240E8();
        a3 = *v153;
        (*v153)(v42, v44);
        a3(v26, v44);
        v45 = v143;
        (v143)(v43, v39);
        v29 = v144;
        (v45)(v161, v39);
        v37 = v163;
        v36 = v151;
        v27 = v147;
        v35 += v29;
        v31 += v29;
        v34 = v163 + 1;
        if (((v149 ^ v162) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v27 = v36;
LABEL_10:
      if (v149)
      {
        v25 = v135;
        v10 = v158;
        if (v27 < v135)
        {
          goto LABEL_138;
        }

        a3 = v141;
        if (v135 >= v27)
        {
          v26 = v134;
          goto LABEL_33;
        }

        if (v36 >= v37)
        {
          v46 = v37;
        }

        else
        {
          v46 = v36;
        }

        v47 = v29 * (v46 - 1);
        v48 = v29 * v46;
        v49 = v135;
        v50 = v135 * v29;
        v147 = v27;
        do
        {
          if (v49 != --v27)
          {
            v51 = *a3;
            if (!v51)
            {
              goto LABEL_143;
            }

            v163 = *v152;
            (v163)(v140, v51 + v50, v10);
            v52 = v50 < v47 || v51 + v50 >= (v51 + v48);
            if (v52)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v50 != v47)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v163)(v51 + v47, v140, v10);
            a3 = v141;
          }

          ++v49;
          v47 -= v29;
          v48 -= v29;
          v50 += v29;
        }

        while (v49 < v27);
        v26 = v134;
        v27 = v147;
      }

      else
      {
        a3 = v141;
        v26 = v134;
        v10 = v158;
      }

      v25 = v135;
    }

LABEL_33:
    v53 = *(a3 + 1);
    if (v27 < v53)
    {
      if (__OFSUB__(v27, v25))
      {
        goto LABEL_135;
      }

      if (v27 - v25 < v132)
      {
        break;
      }
    }

LABEL_49:
    if (v27 < v25)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v147 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26941F15C(0, *(v26 + 2) + 1, 1, v26);
      v26 = v121;
    }

    v76 = *(v26 + 2);
    v75 = *(v26 + 3);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      sub_26941F15C(v75 > 1, v76 + 1, 1, v26);
      v26 = v122;
    }

    *(v26 + 2) = v77;
    v78 = v26 + 32;
    v79 = &v26[16 * v76 + 32];
    v80 = v147;
    *v79 = v25;
    *(v79 + 1) = v80;
    v163 = *v137;
    if (!v163)
    {
      goto LABEL_144;
    }

    if (v76)
    {
      v162 = v26 + 32;
      while (1)
      {
        v81 = v77 - 1;
        v82 = &v78[16 * v77 - 16];
        v83 = &v26[16 * v77];
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v84 = *(v26 + 4);
          v85 = *(v26 + 5);
          v94 = __OFSUB__(v85, v84);
          v86 = v85 - v84;
          v87 = v94;
LABEL_70:
          if (v87)
          {
            goto LABEL_121;
          }

          v99 = *v83;
          v98 = *(v83 + 1);
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_124;
          }

          v103 = *(v82 + 1);
          v104 = v103 - *v82;
          if (__OFSUB__(v103, *v82))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v101, v104))
          {
            goto LABEL_129;
          }

          if (v101 + v104 >= v86)
          {
            if (v86 < v104)
            {
              v81 = v77 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v77 < 2)
        {
          goto LABEL_123;
        }

        v106 = *v83;
        v105 = *(v83 + 1);
        v94 = __OFSUB__(v105, v106);
        v101 = v105 - v106;
        v102 = v94;
LABEL_85:
        if (v102)
        {
          goto LABEL_126;
        }

        v108 = *v82;
        v107 = *(v82 + 1);
        v94 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v94)
        {
          goto LABEL_128;
        }

        if (v109 < v101)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v81 - 1 >= v77)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v113 = &v78[16 * v81 - 16];
        v114 = *v113;
        v115 = v81;
        v116 = &v78[16 * v81];
        v117 = *(v116 + 1);
        v118 = v146;
        sub_2693E0EF8(*a3 + *(v145 + 72) * *v113, *a3 + *(v145 + 72) * *v116, *a3 + *(v145 + 72) * v117, v163);
        v146 = v118;
        if (v118)
        {
          goto LABEL_114;
        }

        if (v117 < v114)
        {
          goto LABEL_116;
        }

        v119 = a3;
        a3 = v26;
        v26 = *(v26 + 2);
        if (v115 > v26)
        {
          goto LABEL_117;
        }

        *v113 = v114;
        *(v113 + 1) = v117;
        if (v115 >= v26)
        {
          goto LABEL_118;
        }

        v77 = (v26 - 1);
        memmove(v116, v116 + 16, 16 * &v26[-v115 - 1]);
        *(a3 + 2) = v26 - 1;
        v120 = v26 > 2;
        v26 = a3;
        a3 = v119;
        v78 = v162;
        if (!v120)
        {
          goto LABEL_99;
        }
      }

      v88 = &v78[16 * v77];
      v89 = *(v88 - 8);
      v90 = *(v88 - 7);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_119;
      }

      v93 = *(v88 - 6);
      v92 = *(v88 - 5);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_120;
      }

      v95 = *(v83 + 1);
      v96 = v95 - *v83;
      if (__OFSUB__(v95, *v83))
      {
        goto LABEL_122;
      }

      v94 = __OFADD__(v86, v96);
      v97 = v86 + v96;
      if (v94)
      {
        goto LABEL_125;
      }

      if (v97 >= v91)
      {
        v111 = *v82;
        v110 = *(v82 + 1);
        v94 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v94)
        {
          goto LABEL_133;
        }

        if (v86 < v112)
        {
          v81 = v77 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v24 = *(a3 + 1);
    v25 = v147;
    v22 = v133;
    v23 = v136;
    if (v147 >= v24)
    {
      goto LABEL_102;
    }
  }

  v54 = v25 + v132;
  if (__OFADD__(v25, v132))
  {
    goto LABEL_136;
  }

  if (v54 >= v53)
  {
    v54 = *(a3 + 1);
  }

  if (v54 < v25)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    v26 = sub_2693E15D4(v26);
LABEL_104:
    v123 = v26 + 16;
    v124 = *(v26 + 2);
    while (v124 >= 2)
    {
      v125 = v146;
      if (!*a3)
      {
        goto LABEL_142;
      }

      v126 = v26;
      v26 += 16 * v124;
      v127 = *v26;
      v128 = &v123[2 * v124];
      v129 = v128[1];
      sub_2693E0EF8(*a3 + *(v145 + 72) * *v26, *a3 + *(v145 + 72) * *v128, *a3 + *(v145 + 72) * v129, v163);
      v146 = v125;
      if (v125)
      {
        break;
      }

      if (v129 < v127)
      {
        goto LABEL_130;
      }

      if (v124 - 2 >= *v123)
      {
        goto LABEL_131;
      }

      *v26 = v127;
      *(v26 + 1) = v129;
      v130 = *v123 - v124;
      if (*v123 < v124)
      {
        goto LABEL_132;
      }

      v124 = *v123 - 1;
      memmove(v128, v128 + 2, 16 * v130);
      *v123 = v124;
      a3 = v141;
      v26 = v126;
    }

    goto LABEL_114;
  }

  if (v27 == v54)
  {
    goto LABEL_49;
  }

  v134 = v26;
  v55 = *a3;
  v56 = *(v145 + 72);
  v151 = *(v145 + 16);
  v57 = v55 + v56 * (v27 - 1);
  v148 = -v56;
  v135 = v25;
  v58 = (v25 - v27);
  v149 = v55;
  v138 = v56;
  v59 = v55 + v27 * v56;
  v139 = v54;
LABEL_42:
  v147 = v27;
  v142 = v59;
  v143 = v58;
  v60 = v58;
  v144 = v57;
  v61 = v57;
  while (1)
  {
    v162 = v60;
    v62 = v161;
    v63 = v151;
    v151(v161, v59, v10);
    v64 = v154;
    v63(v154, v61, v10);
    v65 = v155;
    sub_269423AB8();
    v66 = v156;
    sub_269423AB8();
    sub_2693E18D0(&qword_28030F930, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v67 = v157;
    LODWORD(v163) = sub_2694240E8();
    v68 = *v153;
    v69 = v66;
    v10 = v158;
    (*v153)(v69, v67);
    v68(v65, v67);
    v70 = *v160;
    (*v160)(v64, v10);
    (v70)(v62, v10);
    if (v163)
    {
LABEL_47:
      v27 = v147 + 1;
      v57 = v144 + v138;
      v58 = v143 - 1;
      v59 = v142 + v138;
      if (v147 + 1 == v139)
      {
        v27 = v139;
        a3 = v141;
        v26 = v134;
        v25 = v135;
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    v71 = v162;
    if (!v149)
    {
      break;
    }

    v72 = *v152;
    v73 = v150;
    (*v152)(v150, v59, v10);
    swift_arrayInitWithTakeFrontToBack();
    v72(v61, v73, v10);
    v61 += v148;
    v59 += v148;
    v52 = __CFADD__(v71, 1);
    v60 = v71 + 1;
    if (v52)
    {
      goto LABEL_47;
    }
  }

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
}

uint64_t sub_2693E0EF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v81 = a4;
  v77 = a3;
  v72 = sub_269422CE8();
  v6 = *(v72 - 8);
  v7 = MEMORY[0x28223BE20](v72);
  v75 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v74 = &v62 - v9;
  v80 = sub_269423AE8();
  v10 = MEMORY[0x28223BE20](v80);
  v73 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v76 = &v62 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v17 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v17)
  {
    goto LABEL_60;
  }

  v18 = v77 - a2;
  if (v77 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v20 = (a2 - a1) / v16;
  v84 = a1;
  v83 = v81;
  v70 = (v6 + 8);
  v71 = (v13 + 16);
  v69 = (v13 + 8);
  v21 = v18 / v16;
  if (v20 >= v18 / v16)
  {
    v40 = v81;
    sub_26941F480(a2, v18 / v16, v81);
    v41 = v40 + v21 * v16;
    v42 = -v16;
    v43 = v41;
    v44 = v77;
    v78 = a1;
    v65 = -v16;
LABEL_36:
    v45 = a2 + v42;
    v46 = v44;
    v63 = v43;
    v79 = a2;
    v66 = a2 + v42;
    while (1)
    {
      if (v41 <= v81)
      {
        v84 = a2;
        v82 = v43;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v64 = v43;
      v77 = v46 + v42;
      v47 = v41 + v42;
      v48 = *v71;
      v49 = v80;
      v68 = v46;
      v48();
      v50 = v73;
      (v48)(v73, v45, v49);
      v51 = v74;
      sub_269423AB8();
      v52 = v41;
      v53 = v72;
      v54 = v75;
      sub_269423AB8();
      sub_2693E18D0(&qword_28030F930, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      LODWORD(v67) = sub_2694240E8();
      v55 = *v70;
      (*v70)(v54, v53);
      v55(v51, v53);
      v56 = *v69;
      (*v69)(v50, v49);
      v56(v76, v49);
      if ((v67 & 1) == 0)
      {
        v41 = v52;
        v44 = v77;
        if (v68 < v79 || v77 >= v79)
        {
          a2 = v66;
          swift_arrayInitWithTakeFrontToBack();
          v43 = v64;
          v42 = v65;
          a1 = v78;
        }

        else
        {
          v60 = v64;
          v42 = v65;
          v43 = v64;
          v61 = v66;
          a2 = v66;
          a1 = v78;
          if (v68 != v79)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v61;
            v43 = v60;
          }
        }

        goto LABEL_36;
      }

      v57 = v77;
      v58 = v68 < v52 || v77 >= v52;
      a2 = v79;
      if (v58)
      {
        swift_arrayInitWithTakeFrontToBack();
        v46 = v57;
        v41 = v47;
        v43 = v47;
        a1 = v78;
        v42 = v65;
        v45 = v66;
      }

      else
      {
        v43 = v47;
        v17 = v52 == v68;
        v46 = v77;
        v41 = v47;
        a1 = v78;
        v42 = v65;
        v45 = v66;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v46 = v57;
          v41 = v47;
          v43 = v47;
        }
      }
    }

    v84 = a2;
    v82 = v63;
  }

  else
  {
    v22 = v81;
    sub_26941F480(a1, (a2 - a1) / v16, v81);
    v67 = v16;
    v68 = v22 + v20 * v16;
    v82 = v68;
    for (i = v77; v81 < v68 && a2 < i; i = v77)
    {
      v78 = a1;
      v25 = *v71;
      v26 = v76;
      v27 = v80;
      (*v71)(v76, a2, v80);
      v28 = v73;
      (v25)(v73, v81, v27);
      v79 = a2;
      v29 = v74;
      sub_269423AB8();
      v30 = v75;
      sub_269423AB8();
      sub_2693E18D0(&qword_28030F930, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v31 = v72;
      v32 = sub_2694240E8();
      v33 = *v70;
      (*v70)(v30, v31);
      v33(v29, v31);
      v34 = *v69;
      (*v69)(v28, v27);
      v34(v26, v27);
      if (v32)
      {
        v35 = v78;
        a2 = v79;
        v36 = v67;
        v37 = v81 + v67;
        if (v78 < v81 || v78 >= v37)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v78 != v81)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v83 = v37;
        v81 = v37;
      }

      else
      {
        v36 = v67;
        v35 = v78;
        a2 = v79 + v67;
        if (v78 < v79 || v78 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v78 != v79)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      a1 = v35 + v36;
      v84 = a1;
    }
  }

LABEL_58:
  sub_2693E15E8(&v84, &v83, &v82);
  return 1;
}