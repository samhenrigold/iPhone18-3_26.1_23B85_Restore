uint64_t sub_2681DFA88(void *a1, uint64_t *a2, uint64_t *a3)
{
  v20[1] = OUTLINED_FUNCTION_6_21(a1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E700, &qword_2683D7EE0);
  OUTLINED_FUNCTION_10_9(v5, v6, v7);
  OUTLINED_FUNCTION_11_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = OUTLINED_FUNCTION_8_18();
  v11 = OUTLINED_FUNCTION_10_9(v8, v9, v10);
  OUTLINED_FUNCTION_7_16(v11, v12, v13, v14);
  if (OUTLINED_FUNCTION_3_19(v20, v15))
  {

    return v20[0];
  }

  else
  {
    v17 = sub_26812C6B8();
    v18 = OUTLINED_FUNCTION_59_1(&type metadata for CommonErrors, v17);
    return OUTLINED_FUNCTION_5_19(v18, v19);
  }
}

uint64_t sub_2681DFB9C(void *a1, uint64_t (*a2)(void))
{
  v18[2] = OUTLINED_FUNCTION_6_21(a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E700, &qword_2683D7EE0);
  OUTLINED_FUNCTION_10_9(v3, v4, v5);
  OUTLINED_FUNCTION_11_21();
  a2(0);
  v6 = OUTLINED_FUNCTION_8_18();
  v9 = OUTLINED_FUNCTION_10_9(v6, v7, v8);
  OUTLINED_FUNCTION_7_16(v9, v10, v11, v12);
  if (OUTLINED_FUNCTION_3_19(v18, v13))
  {

    return v18[0];
  }

  else
  {
    v15 = sub_26812C6B8();
    v16 = OUTLINED_FUNCTION_59_1(&type metadata for CommonErrors, v15);
    return OUTLINED_FUNCTION_5_19(v16, v17);
  }
}

id sub_2681DFC70(uint64_t a1, void *a2)
{
  switch(a1)
  {
    case 1:
      result = sub_2681DF500(a2, &qword_28024CDB8, 0x277CD4188);
      if (!v2)
      {
        v4 = result;
        OUTLINED_FUNCTION_4_20();
        goto LABEL_18;
      }

      break;
    case 2:
      OUTLINED_FUNCTION_1_30();
      result = sub_2681DFB9C(v13, v12);
      if (!v2)
      {
        OUTLINED_FUNCTION_4_20();
        OUTLINED_FUNCTION_9_19();
        goto LABEL_10;
      }

      break;
    case 3:
      OUTLINED_FUNCTION_2_22();
      result = sub_2681DFB9C(v21, v20);
      if (!v2)
      {
        v14 = OUTLINED_FUNCTION_0_31();
        v19 = 0;
LABEL_10:
        result = sub_2681E0038(v14, v15, v16, v17, v18, v19, 0, 0, v24);
      }

      break;
    case 4:
      result = sub_2681DF500(a2, &qword_28024EE70, 0x277CD4240);
      if (!v2)
      {
        v4 = result;
        OUTLINED_FUNCTION_0_31();
        OUTLINED_FUNCTION_9_19();
        v11 = v4;
        goto LABEL_19;
      }

      break;
    case 5:
      result = sub_2681DF500(a2, &qword_28024E438, 0x277CD4178);
      if (!v2)
      {
        v4 = result;
        OUTLINED_FUNCTION_0_31();
        OUTLINED_FUNCTION_9_19();
        v11 = 0;
        v22 = v4;
        goto LABEL_20;
      }

      break;
    case 6:
      result = sub_2681DF500(a2, &qword_28024EE88, 0x277CD3B08);
      if (!v2)
      {
        v4 = result;
        v24 = result;
        goto LABEL_18;
      }

      break;
    default:
      result = sub_2681DF500(a2, &qword_280253310, 0x277CD4220);
      if (!v2)
      {
        v4 = result;
        v24 = 0;
LABEL_18:
        OUTLINED_FUNCTION_9_19();
        v11 = 0;
LABEL_19:
        v22 = 0;
LABEL_20:
        v23 = sub_2681E0038(v5, v6, v7, v8, v9, v10, v11, v22, v24);

        result = v23;
      }

      break;
  }

  return result;
}

id sub_2681DFEB4(void *a1)
{
  v2 = [a1 targetTask];
  v3 = [a1 taskTitle];
  v4 = [a1 status];
  if (v4)
  {
    v5 = [a1 status];
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 priority];
  if (v6)
  {
    v7 = [a1 priority];
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 == 0;
  v9 = [a1 temporalEventTrigger];
  v10 = [a1 spatialEventTrigger];
  v11 = [a1 contactEventTrigger];
  v12 = sub_2681E0038(v2, v3, v5, v8, v7, v6 == 0, v9, v10, v11);

  return v12;
}

id sub_2681E0038(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7, void *a8, void *a9)
{
  v10 = v9;
  v19 = [v10 targetTask];
  v20 = v19;
  if (a1 == 1)
  {
    v45 = 0;
  }

  else if (a1)
  {
    v45 = a1;
  }

  else
  {
    v21 = v19;
    v45 = v20;
  }

  sub_2680F1DAC(a1);

  v22 = [v10 taskTitle];
  v23 = v22;
  if (a2 == 1)
  {
    v25 = 0;
  }

  else if (a2)
  {
    v25 = a2;
  }

  else
  {
    v24 = v22;
    v25 = v23;
  }

  sub_2680F1DAC(a2);

  v26 = [v10 status];
  if (a3)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  if (a4)
  {
    a3 = v27;
  }

  v28 = [v10 priority];
  if (a5)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  if (a6)
  {
    v30 = v29;
  }

  else
  {
    v30 = a5;
  }

  v31 = [v10 spatialEventTrigger];
  v32 = v31;
  if (a8 == 1)
  {
    v34 = 0;
  }

  else if (a8)
  {
    v34 = a8;
  }

  else
  {
    v33 = v31;
    v34 = v32;
  }

  sub_2680F1DAC(a8);

  v35 = [v10 temporalEventTrigger];
  v36 = v35;
  if (a7 == 1)
  {
    v38 = 0;
  }

  else if (a7)
  {
    v38 = a7;
  }

  else
  {
    v37 = v35;
    v38 = v36;
  }

  sub_2680F1DAC(a7);

  v39 = objc_allocWithZone(MEMORY[0x277CD4108]);
  v40 = sub_2683882E8(v45, v25, a3, v30, v34, v38);
  v41 = [v10 contactEventTrigger];
  v42 = v41;
  if (a9 == 1)
  {
    v43 = 0;
  }

  else if (a9)
  {
    v43 = a9;
  }

  else
  {
    v43 = v41;
  }

  sub_2680F1DAC(a9);

  [v40 setContactEventTrigger_];
  return v40;
}

uint64_t sub_2681E02AC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D1F0, &unk_2683F48B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = [v1 targetTask];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [v7 title];

  v10 = [v9 spokenPhrase];
  v11 = sub_2683CFA78();
  v13 = v12;

  v34 = v11;
  v35 = v13;
  v14 = sub_2683CB668();
  v15 = *(*(v14 - 8) + 16);
  v15(v6, a1, v14);
  OUTLINED_FUNCTION_12_13();
  sub_26812A1AC();
  v33 = sub_2683CFFC8();
  v17 = v16;
  sub_268129F94(v6);

  v18 = [v2 taskTitle];
  if (!v18)
  {
LABEL_12:

LABEL_13:
    v30 = 0;
    return v30 & 1;
  }

  v19 = v18;
  v20 = [v18 spokenPhrase];

  v21 = sub_2683CFA78();
  v23 = v22;

  v34 = v21;
  v35 = v23;
  v15(v6, a1, v14);
  OUTLINED_FUNCTION_12_13();
  v24 = sub_2683CFFC8();
  v26 = v25;
  sub_268129F94(v6);

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27 || (v24 == v33 ? (v28 = v26 == v17) : (v28 = 0), v28))
  {

    goto LABEL_12;
  }

  v29 = sub_2683D0598();

  v30 = v29 ^ 1;
  return v30 & 1;
}

BOOL sub_2681E0550()
{
  v1 = [v0 temporalEventTrigger];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

BOOL sub_2681E0598()
{
  v1 = [v0 spatialEventTrigger];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

BOOL sub_2681E05E0()
{
  v1 = [v0 contactEventTrigger];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t OUTLINED_FUNCTION_3_19(uint64_t a3, uint64_t a4, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_19(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  *(a2 + 32) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_6_21(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_7_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_26813CC6C(v4, va);
}

uint64_t OUTLINED_FUNCTION_8_18()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

uint64_t OUTLINED_FUNCTION_10_9(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_2683CFAD8();
}

uint64_t OUTLINED_FUNCTION_12_13()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t sub_2681E0784()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCC12SiriNotebook34NotebookSpatialEventTriggerConcept7Builder_event;
  v2 = sub_2683CF168();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCC12SiriNotebook34NotebookSpatialEventTriggerConcept7Builder_mobileSpace, 1, 1, v2);
  return v0;
}

uint64_t sub_2681E07F4(uint64_t a1)
{
  *(v1 + 16) = a1;
}

uint64_t sub_2681E0838()
{

  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook34NotebookSpatialEventTriggerConcept7Builder_event);
  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook34NotebookSpatialEventTriggerConcept7Builder_mobileSpace);
  return v0;
}

uint64_t sub_2681E08AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-v4];
  *(v1 + 16) = 0;
  *(v1 + 24) = *(a1 + 16);
  v6 = OBJC_IVAR____TtCC12SiriNotebook34NotebookSpatialEventTriggerConcept7Builder_event;
  swift_beginAccess();
  sub_26816349C(a1 + v6, v1 + OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_event);
  v7 = OBJC_IVAR____TtCC12SiriNotebook34NotebookSpatialEventTriggerConcept7Builder_mobileSpace;
  swift_beginAccess();
  sub_26816349C(a1 + v7, v5);

  sub_2681E1A1C(v5, v1 + OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_mobileSpace);
  return v1;
}

uint64_t sub_2681E09BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v31 - v12;
  if (a1 != 0x6E6F697461636F6CLL || a2 != 0xE800000000000000)
  {
    result = OUTLINED_FUNCTION_2_23(0x6E6F697461636F6CLL, 0xE800000000000000);
    if ((result & 1) == 0)
    {
      v16 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
      if (v16 || (OUTLINED_FUNCTION_2_23(0x746E657665, 0xE500000000000000) & 1) != 0)
      {
        sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_event, v13);
        v17 = sub_2683CF168();
        if (__swift_getEnumTagSinglePayload(v13, 1, v17) != 1)
        {
          *(a3 + 24) = v17;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
          return (*(*(v17 - 8) + 32))(boxed_opaque_existential_0, v13, v17);
        }

        v18 = v13;
      }

      else
      {
        v20 = a1 == 0x7053656C69626F6DLL && a2 == 0xEB00000000656361;
        if (!v20 && (OUTLINED_FUNCTION_2_23(0x7053656C69626F6DLL, 0xEB00000000656361) & 1) == 0)
        {
          v23 = OUTLINED_FUNCTION_5_20() & 0xFFFFFFFFFFFFLL | 0x4174000000000000;
          v25 = a1 == v23 && a2 == v24;
          if (v25 || (OUTLINED_FUNCTION_2_23(v23, v24) & 1) != 0)
          {
            result = sub_26816348C();
          }

          else
          {
            v26 = OUTLINED_FUNCTION_5_20() & 0xFFFFFFFFFFFFLL | 0x4474000000000000;
            v28 = a1 == v26 && a2 == v27;
            if (v28 || (OUTLINED_FUNCTION_2_23(v26, v27) & 1) != 0)
            {
              result = sub_268163564();
            }

            else
            {
              v29 = a1 == 0x6E6F437261437369 && a2 == 0xEF676E697463656ELL;
              if (v29 || (OUTLINED_FUNCTION_2_23(0x6E6F437261437369, 0xEF676E697463656ELL) & 1) != 0)
              {
                result = sub_268163874();
              }

              else
              {
                if (a1 != 0xD000000000000012 || 0x80000002683FE9D0 != a2)
                {
                  result = OUTLINED_FUNCTION_2_23(0xD000000000000012, 0x80000002683FE9D0);
                  if ((result & 1) == 0)
                  {
                    goto LABEL_18;
                  }
                }

                result = sub_268163884();
              }
            }
          }

          *(a3 + 24) = MEMORY[0x277D839B0];
          *a3 = result & 1;
          return result;
        }

        sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_mobileSpace, v10);
        v21 = sub_2683CF168();
        if (__swift_getEnumTagSinglePayload(v10, 1, v21) != 1)
        {
          *(a3 + 24) = v21;
          v22 = __swift_allocate_boxed_opaque_existential_0(a3);
          return (*(*(v21 - 8) + 32))(v22, v10, v21);
        }

        v18 = v10;
      }

      result = sub_26812E924(v18);
LABEL_18:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }
  }

  v15 = *(v3 + 24);
  if (!v15)
  {
    goto LABEL_18;
  }

  *(a3 + 24) = sub_2683CF088();
  *a3 = v15;
}

unint64_t sub_2681E0D24(uint64_t a1, uint64_t a2)
{
  v2 = sub_2683D0408();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2681E0D70(char a1)
{
  if (!a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x746E657665;
  }

  return 0x7053656C69626F6DLL;
}

unint64_t sub_2681E0DF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2681E0D24(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2681E0E20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2681E0D70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2681E0E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2681E0D24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2681E0E88(uint64_t a1)
{
  v2 = sub_2681E19C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681E0EC4(uint64_t a1)
{
  v2 = sub_2681E19C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681E0F00()
{

  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_event);
  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_mobileSpace);
  return v0;
}

uint64_t sub_2681E0F60(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_2681E0FE4(uint64_t a1)
{
  sub_2681E12BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2681E1080(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EF78, &qword_2683DAD68);
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681E19C8();
  sub_2683D0718();
  v18 = *(v3 + 24);
  HIBYTE(v17) = 0;
  sub_2683CF088();
  OUTLINED_FUNCTION_0_32();
  sub_2681E1980(v11, v12, MEMORY[0x277D55BD0]);
  sub_2683D0508();
  if (!v2)
  {
    v13 = OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_event;
    BYTE6(v17) = 1;
    sub_2683CF168();
    OUTLINED_FUNCTION_1_31();
    sub_2681E1980(v14, v15, MEMORY[0x277D55C50]);
    OUTLINED_FUNCTION_4_21(v3 + v13, &v17 + 6);
    BYTE5(v17) = 2;
    OUTLINED_FUNCTION_4_21(v3 + OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_mobileSpace, &v17 + 5);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_2681E126C(void *a1)
{
  v2 = swift_allocObject();
  sub_2681E13D8(a1);
  return v2;
}

void sub_2681E12BC(uint64_t a1)
{
  if (!qword_28024EF30)
  {
    sub_2683CF168();
    v1 = sub_2683CFFA8();
    if (!v2)
    {
      atomic_store(v1, &qword_28024EF30);
    }
  }
}

void sub_2681E133C(uint64_t a1)
{
  sub_2681E12BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2681E13D8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EF58, &qword_2683DAD60);
  OUTLINED_FUNCTION_0_3();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  *(v3 + 16) = 0;
  v14 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2681E19C8();
  sub_2683D06F8();
  if (v2)
  {

    type metadata accessor for NotebookSpatialEventTriggerConcept(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v8;
    v25 = v12;
    sub_2683CF088();
    v30 = 0;
    OUTLINED_FUNCTION_0_32();
    sub_2681E1980(v15, v16, MEMORY[0x277D55BD8]);
    sub_2683D0468();
    *(v3 + 24) = v31;
    sub_2683CF168();
    v29 = 1;
    OUTLINED_FUNCTION_1_31();
    sub_2681E1980(v18, v19, MEMORY[0x277D55C60]);
    sub_2683D0468();
    sub_2681E1A1C(v10, v3 + OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_event);
    v28 = 2;
    v20 = v24;
    sub_2683D0468();
    v21 = OUTLINED_FUNCTION_3_20();
    v22(v21);
    sub_2681E1A1C(v20, v3 + OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_mobileSpace);
  }

  __swift_destroy_boxed_opaque_existential_0(v27);
  return v3;
}

void *sub_2681E1794()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_2681E17DC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t sub_2681E18A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2681E126C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2681E1980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2681E19C8()
{
  result = qword_28024EF60;
  if (!qword_28024EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EF60);
  }

  return result;
}

uint64_t sub_2681E1A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for NotebookSpatialEventTriggerConcept.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2681E1B6C()
{
  result = qword_28024EF90;
  if (!qword_28024EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EF90);
  }

  return result;
}

unint64_t sub_2681E1BC4()
{
  result = qword_28024EF98;
  if (!qword_28024EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EF98);
  }

  return result;
}

unint64_t sub_2681E1C1C()
{
  result = qword_28024EFA0;
  if (!qword_28024EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EFA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_23(uint64_t a1, uint64_t a2)
{

  return sub_2683D0598();
}

uint64_t OUTLINED_FUNCTION_4_21(uint64_t a1, uint64_t a2)
{

  return sub_2683D0508();
}

uint64_t sub_2681E1D08(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_25_11();
    OUTLINED_FUNCTION_28_8(v1, v2);
    sub_2683CFC18();
    OUTLINED_FUNCTION_20_13();
    return OUTLINED_FUNCTION_23_12();
  }

  return result;
}

unint64_t sub_2681E1D8C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_25_11();
    if ((v4 & 0x2000000000000000) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = v1 & 0xFFFFFFFFFFFFLL;
    }

    v7 = 7;
    if (((v4 >> 60) & ((v1 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    result = OUTLINED_FUNCTION_28_8(v2, v3);
    if (v9)
    {
      result = v8;
    }

    if (4 * v6 >= result >> 14)
    {
      sub_2683CFC18();
      OUTLINED_FUNCTION_20_13();
      return OUTLINED_FUNCTION_23_12();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2681E1E74(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  OUTLINED_FUNCTION_19_16(a1, a2);

  OUTLINED_FUNCTION_13_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_26818A0C8(a3, a1, a2, MEMORY[0x277D5E430]);
  sub_2683CD168();

  v6 = OUTLINED_FUNCTION_5_21();
  sub_2681E1D08(v6);
  sub_2683CFFB8();

  v7 = OUTLINED_FUNCTION_5_21();
  sub_2681E1D8C(v7);
  OUTLINED_FUNCTION_27_6();

  sub_2683CFB98();

  MEMORY[0x26D616690]();

  return v9;
}

uint64_t sub_2681E1FD0(uint64_t (*a1)(void), uint64_t a2)
{
  OUTLINED_FUNCTION_19_16(a1, a2);

  OUTLINED_FUNCTION_13_15();
  a1(0);
  sub_2683CD168();

  v3 = OUTLINED_FUNCTION_5_21();
  sub_2681E1D08(v3);
  sub_2683CFFB8();

  v4 = OUTLINED_FUNCTION_5_21();
  sub_2681E1D8C(v4);
  OUTLINED_FUNCTION_27_6();

  sub_2683CFB98();

  MEMORY[0x26D616690]();

  return v6;
}

uint64_t sub_2681E2100()
{
  OUTLINED_FUNCTION_14();
  v0[86] = v1;
  v0[85] = v2;
  v3 = sub_2683CB668();
  v0[87] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v0[88] = v4;
  v0[89] = OUTLINED_FUNCTION_15_1();
  v5 = sub_2683CCBA8();
  v0[90] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v0[91] = v6;
  v0[92] = swift_task_alloc();
  v0[93] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681E2208()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);
  type metadata accessor for AppSelectionTrainingLogger(0);
  v6 = sub_26821714C();
  v42 = *(v2 + 16);
  v42(v1, v5, v3);
  sub_26813CA00(v4, v0 + 384);
  OUTLINED_FUNCTION_19_11();
  v7 = swift_allocObject();
  sub_268128148((v0 + 384), v7 + 16);
  v43 = v7;
  *(v7 + 56) = v6;
  v8 = v4[3];
  v9 = v4[4];
  v10 = __swift_project_boxed_opaque_existential_1(v4, v8);
  *(v0 + 448) = v8;
  *(v0 + 456) = *(v9 + 16);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 424));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v10, v8);
  *(v0 + 664) = sub_268129504(0, &qword_28024DD90, 0x277CD3A18);
  v44 = v6;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFC8, &qword_2683DAF28);
  v12 = sub_2683CFAD8();
  v40 = v13;
  v41 = v12;
  v14 = sub_2683CF6C8();
  v15 = sub_2683CF6B8();
  v16 = MEMORY[0x277D5FDD8];
  *(v0 + 488) = v14;
  *(v0 + 496) = v16;
  *(v0 + 464) = v15;
  sub_2683CCC48();
  __swift_project_boxed_opaque_existential_1((v0 + 504), *(v0 + 528));
  OUTLINED_FUNCTION_9_10();
  sub_2683CC088();
  sub_2681340E8(v0 + 464, v0 + 584, &qword_28024E2C0, &unk_2683D66D0);
  if (*(v0 + 608))
  {
    OUTLINED_FUNCTION_20_2();
    v17 = swift_allocObject();
    v18 = *(v0 + 600);
    *(v17 + 16) = *(v0 + 584);
    *(v17 + 32) = v18;
    *(v17 + 48) = *(v0 + 616);
    v19 = &off_287900140;
    v20 = &type metadata for NotebookReferenceResolver;
  }

  else
  {
    sub_26812D9E0(v0 + 584, &qword_28024E2C0, &unk_2683D66D0);
    v17 = 0;
    v20 = 0;
    v19 = 0;
    *(v0 + 552) = 0u;
  }

  v37 = *(v0 + 736);
  v38 = *(v0 + 744);
  v39 = *(v0 + 728);
  v21 = *(v0 + 720);
  v22 = *(v0 + 712);
  v23 = *(v0 + 704);
  v24 = *(v0 + 696);
  *(v0 + 544) = v17;
  *(v0 + 568) = v20;
  *(v0 + 576) = v19;
  v25 = type metadata accessor for InstalledAppProvider(0);
  *(v0 + 648) = v25;
  *(v0 + 656) = &off_2879042B8;
  v26 = __swift_allocate_boxed_opaque_existential_0((v0 + 624));
  v27 = *(v23 + 16);
  v27(v26 + *(v25 + 20), v22, v24);
  *v26 = 0;
  v28 = type metadata accessor for RegexAppSearcher(0);
  *(v0 + 80) = v28;
  *(v0 + 88) = &off_28790BB20;
  v29 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  sub_26813CA00(v0 + 624, v29);
  v27(v29 + *(v28 + 20), v22, v24);
  *(v0 + 120) = &type metadata for InferredAppResolver;
  *(v0 + 128) = &off_287902D60;
  v30 = swift_allocObject();
  *(v0 + 96) = v30;
  sub_26813CA00(v0 + 624, v30 + 32);
  sub_2681340E8(v0 + 544, v30 + 72, &qword_28024E2C8, &unk_2683D6950);
  *(v30 + 16) = 0xD000000000000013;
  *(v30 + 24) = 0x80000002683FA8D0;
  (*(v23 + 8))(v22, v24);
  sub_26813CA00(v0 + 624, v0 + 16);
  sub_26812D9E0(v0 + 544, &qword_28024E2C8, &unk_2683D6950);
  __swift_destroy_boxed_opaque_existential_0((v0 + 624));
  *(v0 + 136) = v44;
  __swift_destroy_boxed_opaque_existential_0((v0 + 504));
  *(v0 + 168) = &type metadata for AppResolver;
  *(v0 + 176) = &off_28790B8A0;
  v31 = swift_allocObject();
  *(v0 + 144) = v31;
  sub_26818CE54(v0 + 16, v31 + 16);
  sub_2681340E8(v0 + 424, v0 + 224, &qword_28024E2D0, &qword_2683D66E0);
  *(v0 + 184) = v41;
  *(v0 + 192) = v40;
  *(v0 + 200) = 1;
  *(v0 + 208) = &unk_2683DAF10;
  *(v0 + 216) = 0;
  sub_26818CEB0(v0 + 144, v0 + 264);
  v32 = OUTLINED_FUNCTION_24_8();
  (v42)(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFD0, &qword_2683DAF30);
  swift_allocObject();
  v33 = sub_2681E51CC((v0 + 264), v37, &unk_2683DAF20, v43, &unk_287903BE0, sub_2681E54B0);
  (*(v39 + 8))(v38, v21);
  sub_26812D9E0(v0 + 424, &qword_28024E2D0, &qword_2683D66E0);
  sub_26818DAA0(v0 + 144);
  sub_26818DAF4(v0 + 16);
  sub_26812D9E0(v0 + 464, &qword_28024E2C0, &unk_2683D66D0);
  *(v0 + 672) = v33;
  sub_26818A0C8(&qword_28024EFD8, &qword_28024EFD0, &qword_2683DAF30, &unk_2683FA170);
  sub_2683CBF28();

  v34 = OUTLINED_FUNCTION_1_16();

  return v35(v34);
}

unint64_t sub_2681E27FC(char a1)
{
  result = 0x656665526B736174;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C7469546B736174;
      break;
    case 3:
      result = 0x6154746567726174;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x797469726F697270;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

unint64_t sub_2681E290C(uint64_t a1, uint64_t a2)
{
  sub_2683D0408();
  OUTLINED_FUNCTION_9_10();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2681E2978@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2681E290C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2681E29A8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2681E27FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2681E29D4(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F220, &qword_2683D20F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683D1EC0;
  *(inited + 32) = sub_2683CFA78();
  *(inited + 40) = v6;
  sub_268151B34(a1, a2);
  v7 = sub_2683CFAD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  return sub_2683CF9D8();
}

uint64_t sub_2681E2AA4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

LABEL_3:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_2683D0598();
  }
}

uint64_t sub_2681E2ADC(uint64_t a1)
{
  v2 = sub_2681E63E0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2681E2B18(uint64_t a1)
{
  v2 = sub_2681E63E0();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2681E2B8C()
{
  *(v0 + 56) = type metadata accessor for StringLocalizer(0);
  *(v0 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681E2C1C);
}

uint64_t sub_2681E2C1C()
{
  OUTLINED_FUNCTION_7();
  sub_2683CCC48();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_9_10();
  sub_2683CC088();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_28024C8D0 != -1)
  {
    swift_once();
  }

  v1 = qword_28027C938;
  *(v0[8] + *(v0[7] + 20)) = qword_28027C938;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_2681E2D4C;

  return sub_2681E5AB8();
}

uint64_t sub_2681E2D4C()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_42();
  v6 = *(v5 + 64);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  sub_2681E5F4C(v6, type metadata accessor for StringLocalizer);

  v9 = *(v7 + 8);

  return v9(v4, v2);
}

uint64_t sub_2681E2E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_2681E2F30;

  return sub_2681E3098();
}

uint64_t sub_2681E2F30()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  *(v1 + 32) = v0;

  v2 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2681E3020()
{
  OUTLINED_FUNCTION_14();
  *(v0 + 16) = *(v0 + 32);
  sub_2683CBC28();
  sub_2683CBF28();
  OUTLINED_FUNCTION_9_10();

  v1 = OUTLINED_FUNCTION_1_16();

  return v2(v1);
}

uint64_t sub_2681E3098()
{
  OUTLINED_FUNCTION_14();
  v0[299] = v1;
  v0[298] = v2;
  v0[297] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFF8, &qword_2683DAF50);
  v0[300] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v0[301] = v5;
  v0[302] = OUTLINED_FUNCTION_15_1();
  v0[303] = type metadata accessor for SnippetFormatter(0);
  v0[304] = OUTLINED_FUNCTION_15_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F000, &qword_2683DAF58);
  v0[305] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v0[306] = v7;
  v0[307] = swift_task_alloc();
  v0[308] = swift_task_alloc();
  v0[309] = swift_task_alloc();
  sub_2683CF238();
  v0[310] = OUTLINED_FUNCTION_15_1();
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681E3214(uint64_t a1)
{
  v51 = (v1 + 2336);
  v44 = *(v1 + 2432);
  v42 = *(v1 + 2424);
  v49 = *(v1 + 2384);
  sub_2683CCC48();
  type metadata accessor for AddTasksV2CATs(0);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_10_8();
  v2 = sub_2683CF0B8();
  *(v1 + 2488) = v2;
  v48 = v2;
  type metadata accessor for AddTasksV2CATsSimple(0);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_10_8();
  v3 = sub_2683CF198();
  *(v1 + 2496) = v3;
  type metadata accessor for NotebookBaseCATs(0);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_10_8();
  v50 = sub_2683CF0B8();
  *(v1 + 2504) = v50;
  type metadata accessor for NotebookLabelsV2CATs(0);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_10_8();
  v46 = sub_2683CF0B8();
  *(v1 + 2512) = v46;
  v4 = type metadata accessor for AddTasksCATPatternsExecutor(0);
  sub_2683CF228();
  OUTLINED_FUNCTION_10_8();
  v5 = sub_2683CF0B8();
  *(v1 + 2520) = v5;
  v6 = sub_2683CC548();
  swift_allocObject();
  v7 = sub_2683CC538();
  *(v1 + 2528) = v7;
  *(v1 + 1912) = &type metadata for SiriKitExecutionProvider;
  *(v1 + 1920) = &off_287907530;
  OUTLINED_FUNCTION_20_2();
  v8 = swift_allocObject();
  *(v1 + 1888) = v8;
  *(v8 + 40) = &type metadata for NotebookFeatureManager;
  *(v8 + 48) = &protocol witness table for NotebookFeatureManager;
  *(v1 + 1880) = v49;
  *(v1 + 1928) = sub_268372484;
  *(v1 + 1936) = 0;
  sub_26813CA00(v1 + 2056, v1 + 2096);
  *(v1 + 2160) = &type metadata for TCCTemplateProvider;
  *(v1 + 2168) = &off_287902CB8;
  *(v1 + 2200) = v6;
  *(v1 + 2208) = MEMORY[0x277D5BD58];
  *(v1 + 2176) = v7;
  *(v1 + 2240) = v4;
  *(v1 + 2248) = &off_28790AE38;
  *(v1 + 2216) = v5;
  *(v1 + 2280) = &type metadata for NotebookFeatureManager;
  *(v1 + 2288) = &protocol witness table for NotebookFeatureManager;
  v9 = sub_268129504(0, &qword_28024DD90, 0x277CD3A18);
  sub_268129504(0, &qword_28024F008, 0x277CD3A20);

  sub_2683CBEB8();
  sub_26813CA00(v1 + 2096, v1 + 1720);
  sub_26813CA00(v1 + 2136, v1 + 1768);
  *(v1 + 1760) = v46;
  sub_2683CEC88();

  sub_2683CEC78();
  v10 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  *(v1 + 2040) = &unk_28790DB70;
  *(v1 + 2048) = &off_28790DB88;
  *(v1 + 2016) = v10;
  *(v1 + 2008) = [objc_allocWithZone(MEMORY[0x277D44850]) &selRef_setSubtitle_];
  swift_allocObject();
  v11 = sub_2683CC538();
  *(v1 + 1664) = &type metadata for AceUserLocationProvider;
  *(v1 + 1672) = &off_28790C920;
  OUTLINED_FUNCTION_20_2();
  *(v1 + 1640) = swift_allocObject();
  sub_2683CC078();
  sub_26813CA00(v1 + 2256, v1 + 1680);
  sub_2683CF318();
  sub_2683CF308();

  v12 = sub_2683CEC48();
  *(v1 + 2296) = v3;
  *(v1 + 2304) = v11;
  *(v1 + 2312) = v12;
  *(v1 + 2320) = sub_268372484;
  *(v1 + 2328) = 0;
  sub_2681E5518();
  v13 = sub_2683CBD98();
  v15 = v14;
  OUTLINED_FUNCTION_37_4();
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = v15;
  v16[4] = sub_268372484;
  v16[5] = 0;
  sub_2683CBE38();
  sub_26813CA00(v1 + 2096, v1 + 968);
  sub_26813CA00(v1 + 2216, v1 + 1008);
  sub_26813CA00(v1 + 2176, v1 + 1048);
  sub_26813CA00(v1 + 2256, v1 + 1088);
  *(v1 + 960) = v48;
  sub_2681E5578(v1 + 960, v1 + 1128);
  v17 = swift_allocObject();
  memcpy((v17 + 16), (v1 + 1128), 0xA8uLL);

  sub_2683CBE78();
  sub_26813CA00(v1 + 2256, v1 + 1816);
  *(v1 + 1808) = v3;
  *(v1 + 1856) = sub_2681B86A4;
  *(v1 + 1864) = 0;
  *(v1 + 1872) = v11;
  sub_2681E55DC();

  v18 = v11;

  sub_2683CBDD8();
  sub_2683CBE88();
  __swift_project_boxed_opaque_existential_1((v1 + 2096), *(v1 + 2120));

  sub_2683CC088();
  *v44 = v50;
  v44[1] = v46;
  v44[2] = 0;
  v19 = *(v42 + 32);
  *(v44 + v19) = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_2683CB768();
  if (sub_2683CEC58())
  {
    sub_2683CEC18();

    sub_2683CBEE8();
  }

  else
  {
    *(v1 + 2368) = 0;
    *v51 = 0u;
    *(v1 + 2352) = 0u;
  }

  v20 = *(v1 + 2464);
  v39 = *(v1 + 2448);
  v40 = *(v1 + 2472);
  v21 = *(v1 + 2440);
  v22 = *(v1 + 2432);
  v23 = *(v1 + 2424);
  v43 = *(v1 + 2456);
  v45 = *(v1 + 2416);
  v24 = *(v1 + 2392);
  v41 = *(v1 + 2384);
  v47 = *(v1 + 2376);
  sub_2681340E8(v51, v1 + 16, &qword_28024F020, &unk_2683E6AA0);
  sub_26813CA00(v1 + 2096, v1 + 64);
  sub_26813CA00(v1 + 2256, v1 + 112);
  *(v1 + 176) = &type metadata for NotebookFlowCreator;
  *(v1 + 184) = &off_287900FD8;
  *(v1 + 216) = &type metadata for SiriKitExecutionProvider;
  *(v1 + 224) = &off_287907530;
  OUTLINED_FUNCTION_20_2();
  v25 = swift_allocObject();
  *(v1 + 192) = v25;
  sub_26813CA00(v1 + 2256, v25 + 16);
  *(v1 + 256) = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  *(v1 + 264) = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v26 = swift_allocObject();
  *(v1 + 232) = v26;
  sub_26818EE34(v1 + 2008, v26 + 16);
  sub_26818EEF4(v1 + 1600, v1 + 280);
  *(v1 + 56) = v3;
  *(v1 + 104) = v24;
  *(v1 + 272) = v18;
  sub_2681E5630();

  sub_2683CBDA8();
  sub_2683CBE48();
  *(v1 + 424) = v23;
  *(v1 + 432) = &off_28790D590;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v1 + 400));
  sub_2681E5FA4(v22, boxed_opaque_existential_0, type metadata accessor for SnippetFormatter);
  sub_26813CA00(v1 + 2216, v1 + 440);
  sub_26813CA00(v1 + 2096, v1 + 480);
  *(v1 + 544) = v18;
  *(v1 + 584) = 1;
  *(v1 + 616) = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  *(v1 + 624) = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v28 = swift_allocObject();
  *(v1 + 592) = v28;
  sub_26818EE34(v1 + 2008, v28 + 16);
  *(v1 + 656) = &type metadata for NotebookDisambiguationFlowProducer;
  *(v1 + 664) = &off_28790CD48;
  OUTLINED_FUNCTION_20_2();
  v29 = swift_allocObject();
  *(v1 + 632) = v29;
  sub_26813CA00(v1 + 2096, v29 + 16);
  *(v1 + 520) = v48;
  *(v1 + 528) = v3;
  *(v1 + 536) = v50;
  *(v1 + 672) = 0;
  sub_2681E5684(v1 + 400, v1 + 680);
  v30 = swift_allocObject();
  memcpy((v30 + 16), (v1 + 680), 0x118uLL);
  sub_2683CBE98();
  sub_26813CA00(v1 + 2096, v1 + 1456);
  sub_26813CA00(v1 + 2136, v1 + 1496);
  *(v1 + 1560) = &type metadata for NotebookButtonProvider;
  *(v1 + 1568) = &off_287902C78;
  v31 = swift_allocObject();
  *(v1 + 1536) = v31;
  sub_26818EE98(v1 + 1720, v31 + 16);
  *(v1 + 1576) = v9;
  *(v1 + 1584) = sub_2681B86A4;
  *(v1 + 1592) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F030, &qword_2683DAF60);
  sub_26818A0C8(&qword_28024F038, &qword_28024F030, &qword_2683DAF60, &unk_2683E6708);
  sub_2683CBDF8();
  sub_2683CBEA8();
  sub_26813CA00(v1 + 2096, v1 + 1296);
  *(v1 + 1360) = &type metadata for NotebookButtonProvider;
  *(v1 + 1368) = &off_287902C78;
  v32 = swift_allocObject();
  *(v1 + 1336) = v32;
  sub_26818EE98(v1 + 1720, v32 + 16);
  *(v1 + 1400) = &type metadata for CommonResponseGenerator;
  *(v1 + 1408) = &off_287908850;
  OUTLINED_FUNCTION_20_2();
  v33 = swift_allocObject();
  *(v1 + 1376) = v33;
  sub_26813CA00(v1 + 2096, v33 + 16);
  *(v1 + 1440) = &type metadata for CommonLabelGenerator;
  *(v1 + 1448) = &off_28790E058;
  v34 = OUTLINED_FUNCTION_24_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
  sub_26818A0C8(&qword_28024F048, &qword_28024F040, &qword_2683DAF68, &unk_2683F8DD0);
  sub_2683CBDC8();
  sub_26812D9E0(v1 + 1296, &qword_28024F040, &qword_2683DAF68);
  sub_2683CBE68();

  sub_26812D9E0(v51, &qword_28024F020, &unk_2683E6AA0);
  sub_2681E5F4C(v22, type metadata accessor for SnippetFormatter);
  sub_2681E56E8(v1 + 1808);
  sub_2681E573C(v1 + 960);
  sub_26818F000(v1 + 1720);
  __swift_destroy_boxed_opaque_existential_0((v1 + 2256));
  __swift_destroy_boxed_opaque_existential_0((v1 + 2216));
  __swift_destroy_boxed_opaque_existential_0((v1 + 2176));
  __swift_destroy_boxed_opaque_existential_0((v1 + 2136));
  sub_26812D9E0(v1 + 1456, &qword_28024F030, &qword_2683DAF60);
  sub_2681E5790(v1 + 400);
  sub_2681E57E4(v1 + 16);
  sub_26818F1FC(v1 + 1600);
  sub_26818F1A8(v1 + 2008);
  (*(v39 + 32))(v40, v20, v21);
  __swift_destroy_boxed_opaque_existential_0((v1 + 2096));
  sub_2683CBDB8();
  sub_2683CBE58();
  (*(v39 + 16))(v43, v40, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F050, &qword_2683DAF70);
  swift_allocObject();
  OUTLINED_FUNCTION_9_10();
  *(v1 + 2536) = sub_2683CBEC8();
  sub_2681E5838(v1 + 1880, v1 + 1944);
  sub_2681E5894();

  sub_2683CC2E8();
  v36 = swift_task_alloc();
  *(v1 + 2544) = v36;
  v36[2] = v47;
  v36[3] = v41;
  v36[4] = v45;
  v37 = swift_task_alloc();
  *(v1 + 2552) = v37;
  *v37 = v1;
  v37[1] = sub_2681E3E98;

  return sub_2681347D4(&unk_2683DAF80);
}

uint64_t sub_2681E3E98()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;
  *(v4 + 2560) = v3;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2681E3FA0()
{
  v1 = v0[309];
  v2 = v0[306];
  v9 = v0[302];
  v3 = v0[301];
  v7 = v0[305];
  v8 = v0[300];

  (*(v2 + 8))(v1, v7);
  sub_2681E598C((v0 + 235));
  __swift_destroy_boxed_opaque_existential_0(v0 + 257);
  (*(v3 + 8))(v9, v8);

  v4 = v0[1];
  v5 = v0[320];

  return v4(v5);
}

uint64_t sub_2681E4114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_2681E4138);
}

uint64_t sub_2681E4138()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v7 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2681E4270;

  return v7(0, v2, v3, v4);
}

uint64_t sub_2681E4270()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  if (v0)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v5 + 72) = v3;

    return MEMORY[0x2822009F8](sub_2681E43AC);
  }
}

uint64_t sub_2681E43AC()
{
  v1 = v0[9];
  v8 = v1;
  v2 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFF8, &qword_2683DAF50);
  v0[2] = sub_2683CC2D8();
  v0[3] = sub_2681E459C(v2, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F060, &qword_2683DAF88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF18, &unk_2683D5B80);
  v3 = MEMORY[0x277D5B820];
  sub_26818A0C8(&qword_28024F068, &qword_28024F060, &qword_2683DAF88, MEMORY[0x277D5B820]);
  sub_26818A0C8(&qword_28024E2F8, &qword_28024DF18, &unk_2683D5B80, v3);
  v4 = sub_2683CBF68();

  v0[4] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F070, &qword_2683DAF90);
  sub_26818A0C8(&qword_28024F078, &qword_28024F070, &qword_2683DAF90, MEMORY[0x277D5B380]);
  sub_2683CBF28();

  v5 = OUTLINED_FUNCTION_1_16();

  return v6(v5);
}

uint64_t sub_2681E459C(uint64_t a1, void *a2)
{
  v3 = sub_2683CC668();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a2 taskReference];
  if ((sub_2681E73A0(v7) & 1) != 0 && v7 == 1)
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v8 = sub_2683CF7E8();
    __swift_project_value_buffer(v8, qword_28027C958);

    v9 = sub_2683CF7C8();
    v10 = sub_2683CFE98();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31 = v12;
      *v11 = 136315394;
      v13 = sub_2683CF258();
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v13 = 7104878;
        v15 = 0xE300000000000000;
      }

      v16 = sub_2681610A0(v13, v15, &v31);

      *(v11 + 4) = v16;
      *(v11 + 12) = 1024;
      *(v11 + 14) = 1;
      _os_log_impl(&dword_2680EB000, v9, v10, "Adding unlock required for current activity. bundleId: %s, wantsCurrentActivity: %{BOOL}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x26D617A40](v12, -1, -1);
      MEMORY[0x26D617A40](v11, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E380, &qword_2683D68F0);
    sub_2683CBCE8();
    *(swift_allocObject() + 16) = xmmword_2683D1EC0;
    sub_2683CC648();
    sub_2683CBCC8();
    (*(v4 + 8))(v6, v3);
    v17 = sub_2683CB8B8();

    v31 = v17;
    sub_2683CBC78();
    v18 = sub_2683CBF38();
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v19 = sub_2683CF7E8();
    __swift_project_value_buffer(v19, qword_28027C958);

    v20 = sub_2683CF7C8();
    v21 = sub_2683CFE98();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = v7 == 1;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136315394;
      v25 = sub_2683CF258();
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v25 = 7104878;
        v27 = 0xE300000000000000;
      }

      v28 = sub_2681610A0(v25, v27, &v31);

      *(v23 + 4) = v28;
      *(v23 + 12) = 1024;
      *(v23 + 14) = v22;
      _os_log_impl(&dword_2680EB000, v20, v21, "Skipping current activity guard. bundleId: %s, wantsCurrentActivity: %{BOOL}d", v23, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x26D617A40](v24, -1, -1);
      MEMORY[0x26D617A40](v23, -1, -1);
    }

    LOBYTE(v31) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F080, &unk_2683F2760);
    sub_26818A0C8(&qword_28024F088, &qword_28024F080, &unk_2683F2760, &unk_2683F12A8);
    return sub_2683CBF38();
  }

  return v18;
}

uint64_t sub_2681E4A68(char a1)
{
  v1 = MEMORY[0x277D84F90];
  switch(a1)
  {
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_37_4();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBC0 != -1)
      {
        swift_once();
      }

      v7 = &qword_28024EFA8;
      v8 = &unk_2683F32C0;
      v9 = &qword_28024EFB0;
      goto LABEL_16;
    case 3:
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_19_11();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2683D2890;
      if (qword_28024CBE0 != -1)
      {
        swift_once();
      }

      *(v1 + 32) = sub_2681E1E74(&qword_28024EFA8, &unk_2683F32C0, &qword_28024EFB0);
      *(v1 + 40) = v2;
      if (qword_28024CC20 != -1)
      {
        swift_once();
      }

      *(v1 + 48) = sub_2681E1E74(&qword_28024EFA8, &unk_2683F32C0, &qword_28024EFB0);
      *(v1 + 56) = v3;
      return v1;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_37_4();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBA0 != -1)
      {
        swift_once();
      }

      v7 = &qword_28024EFB8;
      v8 = &qword_2683DAF00;
      v9 = &qword_28024EFC0;
LABEL_16:
      v5 = sub_2681E1E74(v7, v8, v9);
      goto LABEL_17;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_37_4();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBB8 != -1)
      {
        swift_once();
      }

      v5 = sub_2681E1FD0(MEMORY[0x277D5E218], v4);
LABEL_17:
      *(v1 + 32) = v5;
      *(v1 + 40) = v6;
      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t sub_2681E4D1C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 0:
      v32 = OUTLINED_FUNCTION_10_10();
      sub_2681340E8(v32, v33, v34, v35);
      if (!v97)
      {
        goto LABEL_21;
      }

      v36 = sub_2683CDBA8();
      v38 = OUTLINED_FUNCTION_0_33(v36, v37);
      if ((v38 & 1) == 0)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_22_8(v38, v39, v40, v41, v42, v43, v44, v45, v93, v94[0]);
      OUTLINED_FUNCTION_18_16();
      sub_2683CD6F8();

      if (!v96[0])
      {
        goto LABEL_20;
      }

      v46 = sub_2683CD7C8();

      if (!v46)
      {
        goto LABEL_20;
      }

      v17 = sub_2683CDA48();
      goto LABEL_14;
    case 2:
      v48 = OUTLINED_FUNCTION_10_10();
      sub_2681340E8(v48, v49, v50, v51);
      if (!v97)
      {
        goto LABEL_21;
      }

      v52 = sub_2683CDBA8();
      v54 = OUTLINED_FUNCTION_0_33(v52, v53);
      if ((v54 & 1) == 0)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_22_8(v54, v55, v56, v57, v58, v59, v60, v61, v93, v94[0]);
      OUTLINED_FUNCTION_18_16();
      sub_2683CD6F8();
      goto LABEL_19;
    case 3:
      v18 = OUTLINED_FUNCTION_10_10();
      sub_2681340E8(v18, v19, v20, v21);
      if (!v97)
      {
        goto LABEL_21;
      }

      v22 = sub_2683CDF38();
      v24 = OUTLINED_FUNCTION_0_33(v22, v23);
      if ((v24 & 1) == 0)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_22_8(v24, v25, v26, v27, v28, v29, v30, v31, v93, v94[0]);
      OUTLINED_FUNCTION_18_16();
      sub_2683CDDE8();
LABEL_19:

      if (!v96[0])
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    case 5:
    case 6:
      v3 = OUTLINED_FUNCTION_10_10();
      sub_2681340E8(v3, v4, v5, v6);
      if (v97)
      {
        v7 = sub_2683CDBA8();
        v9 = OUTLINED_FUNCTION_0_33(v7, v8);
        if (v9)
        {
          OUTLINED_FUNCTION_22_8(v9, v10, v11, v12, v13, v14, v15, v16, v93, v94[0]);
          OUTLINED_FUNCTION_18_16();
          sub_2683CD6F8();

          if (v96[0])
          {
            v17 = sub_2683CD7C8();
LABEL_14:
            v47 = v17;

            if (v47)
            {
              goto LABEL_25;
            }
          }

LABEL_20:
        }
      }

      else
      {
LABEL_21:
        sub_26812D9E0(v96, &qword_28024E370, &unk_2683D9AA0);
      }

LABEL_22:
      v62 = OUTLINED_FUNCTION_10_10();
      sub_2681340E8(v62, v63, v64, v65);
      if (v97)
      {
        v66 = sub_2683CD938();
        v68 = OUTLINED_FUNCTION_0_33(v66, v67);
        if (v68)
        {
          OUTLINED_FUNCTION_22_8(v68, v69, v70, v71, v72, v73, v74, v75, v93, v94[0]);
          OUTLINED_FUNCTION_18_16();
          sub_2683CCFF8();

          if (v96[0])
          {
LABEL_25:

            v76 = sub_2683CD1A8();

            return v76;
          }
        }
      }

      else
      {
        sub_26812D9E0(v96, &qword_28024E370, &unk_2683D9AA0);
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v77 = sub_2683CF7E8();
      __swift_project_value_buffer(v77, qword_28027C958);
      v78 = OUTLINED_FUNCTION_10_10();
      sub_26818F56C(v78, v79);
      v80 = sub_2683CF7C8();
      v81 = sub_2683CFE78();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v82 = 136315394;
        v83 = sub_2681E27FC(a2);
        v85 = sub_2681610A0(v83, v84, &v95);

        *(v82 + 4) = v85;
        *(v82 + 12) = 2080;
        sub_2681340E8(v96, v94, &qword_28024E370, &unk_2683D9AA0);
        v86 = OUTLINED_FUNCTION_24_8();
        __swift_instantiateConcreteTypeFromMangledNameV2(v86, v87);
        sub_2683CFAD8();
        sub_26818F5C8(v96);
        v88 = OUTLINED_FUNCTION_24_8();
        v91 = sub_2681610A0(v88, v89, v90);

        *(v82 + 14) = v91;
        _os_log_impl(&dword_2680EB000, v80, v81, "[AddTasks resolveSelectedEntity] Unable to resolve entity for %s from intent %s", v82, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      else
      {

        sub_26818F5C8(v96);
      }

      return 0;
    default:
      goto LABEL_22;
  }
}

uint64_t sub_2681E51CC(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = 0;
  *(v6 + 56) = 0x80;
  v11 = sub_2683CCBA8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v12 + 32))(v15 + v13, a2, v11);
  memcpy((v15 + v14), a1, 0x78uLL);
  *(v6 + 16) = a6;
  *(v6 + 24) = v15;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  return v6;
}

uint64_t sub_2681E52EC(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v12[3] = &type metadata for NotebookAppResolutionFlowStrategy;
  v12[4] = sub_2681C8CCC();
  v12[0] = swift_allocObject();
  sub_26818CEB0(a2, v12[0] + 16);
  v11[3] = &type metadata for NotebookAppResolutionFlowStrategy;
  v11[4] = sub_2681E54C4();
  v11[0] = swift_allocObject();
  sub_26818CEB0(a2, v11[0] + 16);
  sub_268129504(0, a3, a4);
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v7 = sub_2683CBC58();
  sub_26812D9E0(v9, &qword_28024EFE8, &qword_2683DAF38);
  sub_26812D9E0(v11, &qword_28024EFF0, &qword_2683DAF40);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v7;
}

uint64_t sub_2681E540C()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = *(v0 + 56);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26818C8B4;

  return sub_2681E2E84(v3, v0 + 16, v4);
}

unint64_t sub_2681E54C4()
{
  result = qword_28024EFE0;
  if (!qword_28024EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EFE0);
  }

  return result;
}

unint64_t sub_2681E5518()
{
  result = qword_28024F010;
  if (!qword_28024F010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F010);
  }

  return result;
}

unint64_t sub_2681E55DC()
{
  result = qword_28024F018;
  if (!qword_28024F018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F018);
  }

  return result;
}

unint64_t sub_2681E5630()
{
  result = qword_28024F028;
  if (!qword_28024F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F028);
  }

  return result;
}

unint64_t sub_2681E5894()
{
  result = qword_28024F058;
  if (!qword_28024F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F058);
  }

  return result;
}

uint64_t sub_2681E58E8()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26813D0C0;

  return sub_2681E4114(v2, v3, v4);
}

uint64_t sub_2681E59E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_2683CFA68();
  v11 = sub_2683CFA68();
  v12 = sub_2683CFA68();
  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_2683CFA78();

  return v14;
}

uint64_t sub_2681E5AB8()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  *(v0 + 144) = v3;
  v4 = sub_2683CB668();
  *(v0 + 112) = v4;
  OUTLINED_FUNCTION_3_1(v4);
  *(v0 + 120) = v5;
  *(v0 + 128) = OUTLINED_FUNCTION_15_1();
  v6 = type metadata accessor for StringLocalizer(0);
  *(v0 + 136) = v6;
  *(v0 + 40) = v6;
  *(v0 + 48) = &off_2878FE958;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  sub_2681E5FA4(v2, boxed_opaque_existential_0, type metadata accessor for StringLocalizer);
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8);
}

id sub_2681E5BA0()
{
  v34 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 144);
  v31 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2683CB628();
  *(v0 + 56) = sub_2683CB5A8();
  *(v0 + 64) = v5;
  v6 = 0xD000000000000012;
  if (v4)
  {
    v6 = 0x50415F5345544F4ELL;
  }

  v32 = v6;
  if (v4)
  {
    v7 = 0xEE00454D414E5F50;
  }

  else
  {
    v7 = 0x80000002683FEA40;
  }

  *(v0 + 72) = 45;
  *(v0 + 80) = 0xE100000000000000;
  *(v0 + 96) = 0xE100000000000000;
  *(v0 + 88) = 95;
  v30 = sub_26812A1AC();
  v29 = MEMORY[0x277D837D0];
  v8 = sub_2683CFFF8();
  v10 = v9;
  (*(v2 + 8))(v1, v3);

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v12 = result;
    v13 = sub_2681E59E0(v32, v7, 0x617A696C61636F4CLL, 0xEB00000000656C62, *(v31 + *(*(v0 + 136) + 20)), v8, v10, result);
    v15 = v14;

    if (v15)
    {
    }

    else
    {
      sub_2681E6004();
      v16 = swift_allocError();
      *v17 = v32;
      v17[1] = v7;
      v17[2] = 0x617A696C61636F4CLL;
      v17[3] = 0xEB00000000656C62;
      v17[4] = v8;
      v17[5] = v10;
      swift_willThrow();
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v18 = sub_2683CF7E8();
      __swift_project_value_buffer(v18, qword_28027C958);
      v19 = v16;
      v20 = sub_2683CF7C8();
      v21 = sub_2683CFE78();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v33 = v23;
        *v22 = 136446210;
        *(v0 + 104) = v16;
        v24 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
        v25 = sub_2683CFAD8();
        v27 = sub_2681610A0(v25, v26, &v33);

        *(v22 + 4) = v27;
        _os_log_impl(&dword_2680EB000, v20, v21, "Error while localizing inferred app name %{public}s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        OUTLINED_FUNCTION_38();
        v15 = 0;
        OUTLINED_FUNCTION_38();
      }

      else
      {
      }

      v13 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v28 = *(v0 + 8);

    return v28(v13, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2681E5F4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2681E5FA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_2681E6004()
{
  result = qword_28024F090;
  if (!qword_28024F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F090);
  }

  return result;
}

uint64_t objectdestroy_12Tm()
{
  sub_2683CCBA8();
  OUTLINED_FUNCTION_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + v4));

  if (*(v0 + v4 + 104))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + v4 + 80));
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 120, v2 | 7);
}

uint64_t sub_2681E6160(unint64_t *a1, void *a2)
{
  v5 = sub_2683CCBA8();
  OUTLINED_FUNCTION_3_1(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  return sub_2681E52EC(v2 + v10, v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8), a1, a2);
}

uint64_t getEnumTagSinglePayload for AddTasks.Parameter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AddTasks.Parameter(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2681E638C()
{
  result = qword_28024F0A0;
  if (!qword_28024F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F0A0);
  }

  return result;
}

unint64_t sub_2681E63E0()
{
  result = qword_28024F0B8;
  if (!qword_28024F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F0B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_33(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_19_16(uint64_t a1, uint64_t a2)
{
  *(v3 - 56) = v2;

  return sub_2683D0178();
}

uint64_t OUTLINED_FUNCTION_20_13()
{
}

uint64_t OUTLINED_FUNCTION_22_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

unint64_t OUTLINED_FUNCTION_27_6()
{

  return sub_268129FFC();
}

uint64_t OUTLINED_FUNCTION_28_8(uint64_t a1, uint64_t a2)
{

  return sub_2683CFB78();
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return sub_2683CF228();
}

uint64_t sub_2681E658C(uint64_t a1)
{
  v42 = sub_2683CD588();
  OUTLINED_FUNCTION_0_3();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2683CD1F8();
  OUTLINED_FUNCTION_0_3();
  v43 = v8;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  result = sub_2683CD508();
  if (!result)
  {
LABEL_16:
    v28 = 0;
LABEL_19:
    sub_2683CD598();

    return v28;
  }

  v16 = result;
  v41 = *(result + 16);
  if (!v41)
  {

    goto LABEL_16;
  }

  v33 = v14;
  v34 = a1;
  v17 = 0;
  v40 = result + ((*(v43 + 80) + 32) & ~*(v43 + 80));
  v39 = v43 + 16;
  v38 = *MEMORY[0x277D5E700];
  v18 = (v3 + 8);
  v36 = (v43 + 8);
  v37 = (v3 + 104);
  v35 = v7;
  while (v17 < *(v16 + 16))
  {
    (*(v43 + 16))(v12, v40 + *(v43 + 72) * v17, v7);
    v19 = sub_2683CD1E8();
    v21 = v20;
    v22 = v42;
    (*v37)(v6, v38, v42);
    v23 = sub_2683CD578();
    v25 = v24;
    (*v18)(v6, v22);
    if (v21)
    {
      if (v19 == v23 && v21 == v25)
      {

LABEL_18:

        v29 = v43 + 32;
        v30 = v33;
        v31 = v35;
        (*(v43 + 32))(v33, v12, v35);
        v28 = sub_2683CD1D8();
        (*(v29 - 24))(v30, v31);
        goto LABEL_19;
      }

      v27 = sub_2683D0598();

      if (v27)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    ++v17;
    v7 = v35;
    result = (*v36)(v12, v35);
    if (v41 == v17)
    {

      v28 = 0;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2681E6914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    v12 = a1 == a5 && a2 == a6;
    if (!v12 && (sub_2683D0598() & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a4)
  {
    if (a8)
    {
      v13 = a3 == a7 && a4 == a8;
      if (v13 || (sub_2683D0598() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2681E69B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    sub_2683D06B8();
    if (a5)
    {
      goto LABEL_3;
    }

    return sub_2683D06B8();
  }

  sub_2683D06B8();
  sub_2683CFB48();
  if (!a5)
  {
    return sub_2683D06B8();
  }

LABEL_3:
  sub_2683D06B8();

  return sub_2683CFB48();
}

uint64_t sub_2681E6A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2683D0698();
  sub_2681E69B8(v9, a1, a2, a3, a4);
  return sub_2683D06D8();
}

uint64_t sub_2681E6AE4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_2683D0698();
  sub_2681E69B8(v7, v2, v3, v5, v4);
  return sub_2683D06D8();
}

uint64_t sub_2681E6B5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F0E0, &qword_2683DB1D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_2683CF8D8();
  sub_2683CF8E8();
  v6 = sub_2683CF978();
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    sub_2683CF8F8();
    OUTLINED_FUNCTION_0_9();
    (*(v7 + 8))(a1);
    sub_2681E6CDC(v4);
  }

  else
  {
    sub_2683CF968();
    sub_2683CF8F8();
    OUTLINED_FUNCTION_0_9();
    (*(v8 + 8))(a1);
    (*(*(v6 - 8) + 8))(v4, v6);
  }

  return v5;
}

uint64_t sub_2681E6CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F0E0, &qword_2683DB1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2681E6D44(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_2681E6D98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2681E6E00()
{
  result = qword_28024F0E8;
  if (!qword_28024F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F0E8);
  }

  return result;
}

uint64_t sub_2681E6ECC(uint64_t *a1, uint64_t *a2, void (*a3)(void), uint64_t (*a4)(void))
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - v14;
  sub_2681E7090(v9, v12);
  v16 = sub_2683CD358();
  if (__swift_getEnumTagSinglePayload(v12, 1, v16) == 1)
  {
    sub_26812C310(v12, &qword_28024D398, &qword_2683D22F0);
    v17 = a4(0);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v17);
LABEL_4:
    v19 = 0;
    goto LABEL_5;
  }

  a3();
  (*(*(v16 - 8) + 8))(v12, v16);
  v18 = a4(0);
  v19 = 1;
  if (__swift_getEnumTagSinglePayload(v15, 1, v18) == 1)
  {
    goto LABEL_4;
  }

LABEL_5:
  sub_26812C310(v15, a1, a2);
  return v19;
}

uint64_t sub_2681E7090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for IntentTriggerTemporalModelNLv3(uint64_t a1)
{
  result = qword_28024F100;
  if (!qword_28024F100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2681E7174(uint64_t a1)
{
  sub_2681E71E0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2681E71E0(uint64_t a1)
{
  if (!qword_28024F110)
  {
    sub_2683CD358();
    v1 = sub_2683CFFA8();
    if (!v2)
    {
      atomic_store(v1, &qword_28024F110);
    }
  }
}

id sub_2681E7238(uint64_t a1, double a2, double a3)
{
  v5 = a1;
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = sub_2681E7324(v5);
  v9 = v8;
  v10 = v6;
  sub_2681E733C(v7, v9, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v10 setMaxAge_];

  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v10 setSearchTimeout_];

  return v10;
}

void sub_2681E733C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();

  [a3 setDesiredAccuracy_];
}

uint64_t sub_2681E73A0(uint64_t a1)
{
  sub_2683CF258();
  if (v1)
  {
    sub_2681E743C();
    sub_2681E7490();
    v2 = sub_2683CFA28();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_2681E743C()
{
  result = qword_28024F118;
  if (!qword_28024F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F118);
  }

  return result;
}

unint64_t sub_2681E7490()
{
  result = qword_28024F120[0];
  if (!qword_28024F120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28024F120);
  }

  return result;
}

uint64_t sub_2681E7508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for CreateNoteIntentWrapper(uint64_t a1)
{
  result = qword_28024F1A8;
  if (!qword_28024F1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681E75DC(uint64_t a1)
{
  result = sub_26812EB34(319, &qword_28024F1B8, &protocol descriptor for CreateNoteIntentModel);
  if (v2 <= 0x3F)
  {
    result = sub_26812EB34(319, &qword_28024CDA0, &protocol descriptor for NotebookReferenceResolving);
    if (v3 <= 0x3F)
    {
      result = sub_2683CB668();
      if (v4 <= 0x3F)
      {
        result = sub_26812EB34(319, &qword_28024F1C0, &protocol descriptor for NotebookFeatureManaging);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

id sub_2681E76C0()
{
  v1 = v0;
  v2 = sub_2681E7A28();
  v4 = v3;
  v6 = v5;
  v7 = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    v10 = *(type metadata accessor for CreateNoteIntentWrapper(0) + 24);

    sub_268129D44(v1 + v10, v9, v8);

    sub_268129504(0, &qword_28024CDB0, 0x277CD3B30);
  }

  else
  {
    sub_268129504(0, &qword_28024CDB0, 0x277CD3B30);
    if (!v6)
    {
      v11 = 0;
      goto LABEL_9;
    }

    if (!v4)
    {
      v11 = 0;
      goto LABEL_4;
    }
  }

  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  v11 = sub_26835E5F8();
  if (v6)
  {
LABEL_4:
    v12 = v6;
    v13 = v6;
    goto LABEL_10;
  }

LABEL_9:
  v13 = 0;
LABEL_10:
  v14 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v15 = v14[5];
  if (v15)
  {
    v16 = v14[4];
    v17 = *(type metadata accessor for CreateNoteIntentWrapper(0) + 24);

    sub_268129D44(v1 + v17, v16, v15);

    sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
    v18 = sub_26835E5F8();
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_268128E6C(v11, v13, v18);
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v20 = sub_2683CF7E8();
  __swift_project_value_buffer(v20, qword_28027C958);
  v21 = v19;
  v22 = sub_2683CF7C8();
  v23 = sub_2683CFE98();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v24 = 136315138;
    v25 = v21;
    v26 = v6;
    v27 = [v25 description];
    v28 = sub_2683CFA78();
    v36 = v4;
    v29 = v2;
    v31 = v30;

    v6 = v26;
    v32 = sub_2681610A0(v28, v31, &v37);
    v2 = v29;
    v4 = v36;

    *(v24 + 4) = v32;
    _os_log_impl(&dword_2680EB000, v22, v23, "⚙️ [CreateNoteIntentWrapper] made intent: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x26D617A40](v35, -1, -1);
    MEMORY[0x26D617A40](v24, -1, -1);
  }

  v33 = sub_26821AD1C();
  sub_2681E7DC8(v2, v4, v6);

  return v33;
}

uint64_t sub_2681E7A28()
{
  v1 = v0;
  v2 = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v3 = v2[3];
  if (v3)
  {
    v4 = v2[2];
    sub_268129504(0, &qword_28024CDC0, 0x277CD4250);
    v5 = *(type metadata accessor for CreateNoteIntentWrapper(0) + 24);

    sub_268129D44(v1 + v5, v4, v3);

LABEL_3:
    sub_2681807A0();
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  if ((sub_26822971C() & 1) == 0 && (sub_268229A90() & 1) == 0)
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v22 = sub_2683CF7E8();
    __swift_project_value_buffer(v22, qword_28027C958);
    v23 = sub_2683CF7C8();
    v24 = sub_2683CFE98();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2680EB000, v23, v24, "[CreateNoteIntentWrapper] Skipping resolving references for content because parse does not have a definite reference.", v25, 2u);
      MEMORY[0x26D617A40](v25, -1, -1);
    }

    return 0;
  }

  NoteIntentWrapper = type metadata accessor for CreateNoteIntentWrapper(0);
  v9 = (v0 + *(NoteIntentWrapper + 28));
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);
  if (((*(v11 + 64))(v10, v11) & 1) == 0 || (__swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]), v12 = sub_268171C84(), !v13))
  {
    __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
    sub_26816EF9C();
    if (v21)
    {
      sub_268129504(0, &qword_28024CDC0, 0x277CD4250);
      goto LABEL_3;
    }

    return 0;
  }

  v14 = v12;
  v15 = v13;
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  sub_268172098();
  v6 = v16;
  sub_2682039EC(v0 + *(NoteIntentWrapper + 24), v14, v15);

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v17 = sub_2683CF7E8();
  __swift_project_value_buffer(v17, qword_28027C958);
  v18 = sub_2683CF7C8();
  v19 = sub_2683CFE98();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2680EB000, v18, v19, "[CreateNoteIntentWrapper] resolved formatted text from context.", v20, 2u);
    MEMORY[0x26D617A40](v20, -1, -1);
  }

  sub_268129504(0, &qword_28024CDC0, 0x277CD4250);
  sub_2681807A0();
  return v6;
}

uint64_t sub_2681E7DC8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2681E7E08(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEF73776F6C466572;
  v3 = 0x5065747563657865;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x4D65747563657865;
    }

    else
    {
      v5 = 0x6574656C706D6F63;
    }

    if (v4 == 1)
    {
      v6 = 0xEF776F6C466E6961;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0x5065747563657865;
    v6 = 0xEF73776F6C466572;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x4D65747563657865;
    }

    else
    {
      v3 = 0x6574656C706D6F63;
    }

    if (a2 == 1)
    {
      v2 = 0xEF776F6C466E6961;
    }

    else
    {
      v2 = 0xE800000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_11(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_2681E7F30(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x474E495649525241;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x474E495649525241;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x474E495641454CLL;
      break;
    case 2:
      v5 = 0x41435F5245544E45;
      v3 = 0xE900000000000052;
      break;
    case 3:
      v5 = 0x5241435F54495845;
      break;
    case 4:
      v5 = 0x4E4947415353454DLL;
      v3 = 0xE900000000000047;
      break;
    case 5:
      v3 = 0xE300000000000000;
      v5 = 5457241;
      break;
    case 6:
      v3 = 0xE200000000000000;
      v5 = 20302;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x474E495641454CLL;
      break;
    case 2:
      v2 = 0x41435F5245544E45;
      v6 = 0xE900000000000052;
      break;
    case 3:
      v2 = 0x5241435F54495845;
      break;
    case 4:
      v2 = 0x4E4947415353454DLL;
      v6 = 0xE900000000000047;
      break;
    case 5:
      v6 = 0xE300000000000000;
      v2 = 5457241;
      break;
    case 6:
      v6 = 0xE200000000000000;
      v2 = 20302;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_2681E80E8(char a1)
{
  if (a1)
  {
    v2 = "common_SortOrder_LeastFirst";
  }

  else
  {
    v2 = "operator_removeFromValue";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2681E8178(unsigned __int8 a1)
{
  v2 = "common_MonthOfYear_September";
  switch(a1)
  {
    case 1u:
      v2 = "common_DayOfWeek_Friday";
      break;
    case 2u:
      v2 = "common_DayOfWeek_Monday";
      break;
    case 3u:
      v2 = "common_DayOfWeek_Saturday";
      break;
    case 4u:
      v2 = "common_DayOfWeek_Sunday";
      break;
    case 5u:
      v2 = "common_DayOfWeek_Thursday";
      break;
    case 6u:
      v2 = "common_DayOfWeek_Tuesday";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2681E82F0()
{
  OUTLINED_FUNCTION_5_22();
  if (v8)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v8 = v8 && v4 == v0;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_24(v5, v6, v7);
  }

  return v9 & 1;
}

uint64_t sub_2681E837C()
{
  OUTLINED_FUNCTION_5_22();
  if (v8)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3 | 0x8000000000000000;
  OUTLINED_FUNCTION_15_15();
  OUTLINED_FUNCTION_6_22();
  v8 = v8 && v4 == v0;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_24(v5, v6, v7);
  }

  return v9 & 1;
}

uint64_t sub_2681E8404(char a1)
{
  v2 = "common_Number_Twelve";
  switch(a1)
  {
    case 1:
      v2 = "operator_addToValue";
      break;
    case 2:
      v2 = "operator_greaterThan";
      break;
    case 3:
      v2 = "operator_greaterThanOrEquals";
      break;
    case 4:
      v2 = "operator_lessThan";
      break;
    case 5:
      v2 = "operator_lessThanOrEquals";
      break;
    case 6:
      v2 = "operator_notEquals";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_18_17();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2681E85A0(char a1, char a2)
{
  v3 = "common_Similarity_SimilarTo";
  switch(a1)
  {
    case 1:
      v3 = "common_Time_CurrentTime";
      break;
    case 2:
      v3 = "common_Time_Midnight";
      break;
    case 3:
      v3 = "common_Time_Noon";
      break;
    case 4:
      v3 = "common_Time_Sunrise";
      break;
    default:
      break;
  }

  v4 = v3 | 0x8000000000000000;
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_26_10();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_18_17();
  v8 = v8 && v4 == v2;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_24(v5, v6, v7);
  }

  return v9 & 1;
}

uint64_t sub_2681E86E0(char a1)
{
  v2 = "common_AttachmentType_Window";
  switch(a1)
  {
    case 1:
      v2 = "common_Date_DayAfterTomorrow";
      break;
    case 2:
      v2 = "common_Date_DayBeforeYesterday";
      break;
    case 3:
      v2 = "common_Date_Today";
      break;
    case 4:
      v2 = "common_Date_Tomorrow";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_18_17();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2681E8824()
{
  OUTLINED_FUNCTION_5_22();
  if (v8)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3 | 0x8000000000000000;
  OUTLINED_FUNCTION_15_15();
  OUTLINED_FUNCTION_6_22();
  v8 = v8 && v4 == v0;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_24(v5, v6, v7);
  }

  return v9 & 1;
}

uint64_t sub_2681E88AC(unsigned __int8 a1)
{
  v2 = "common_OffsetDirection_Before";
  switch(a1)
  {
    case 1u:
      v2 = "angeQualifier_AllOf";
      break;
    case 2u:
      v2 = "angeQualifier_EarlierPartOf";
      break;
    case 3u:
      v2 = "angeQualifier_EndOf";
      break;
    case 4u:
      v2 = "angeQualifier_HalfOf";
      break;
    case 5u:
      v2 = "angeQualifier_LaterPartOf";
      break;
    case 6u:
      v2 = "angeQualifier_MiddleOf";
      break;
    case 7u:
      v2 = "angeQualifier_RestOf";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2681E8A34(unsigned __int8 a1)
{
  v2 = "common_AppState_Installed";
  switch(a1)
  {
    case 1u:
      v2 = "tionTrigger_CallReceived";
      break;
    case 2u:
      v2 = "tionTrigger_CallSent";
      break;
    case 3u:
      v2 = "unicationReceived";
      break;
    case 4u:
      v2 = "tionTrigger_CommunicationSent";
      break;
    case 5u:
      v2 = "tionTrigger_EmailReceived";
      break;
    case 6u:
      v2 = "tionTrigger_EmailSent";
      break;
    case 7u:
      v2 = "tionTrigger_FaceTimeReceived";
      break;
    case 8u:
      v2 = "tionTrigger_FaceTimeSent";
      break;
    case 9u:
      v2 = "tionTrigger_TextMessageReceived";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2681E8C04(char a1)
{
  v2 = "common_Time_Sunset";
  switch(a1)
  {
    case 1:
      v2 = "ntUnitType_DistanceUnit";
      break;
    case 2:
      v2 = "ntUnitType_EnergyUnit";
      break;
    case 3:
      v2 = "ntUnitType_SpeedUnit";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_18_17();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2681E8D20(char a1, char a2)
{
  v2 = "common_TimeUnit_Year";
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = "DateTime_EveryDay";
    }

    else
    {
      v3 = "DateTime_Weekdays";
    }
  }

  else
  {
    v3 = "common_TimeUnit_Year";
  }

  if (a2)
  {
    v2 = "DateTime_EveryDay";
    if (a2 != 1)
    {
      v2 = "DateTime_Weekdays";
    }
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2683D0598();
  }

  return v4 & 1;
}

uint64_t sub_2681E8DE8(unsigned __int8 a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "tionMode_Collaborate";
    }

    else
    {
      v2 = "tionMode_SharePlay";
    }
  }

  else
  {
    v2 = "common_Geolocation_Here";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2681E8EAC(unsigned __int8 a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "nStatus_Completed";
    }

    else
    {
      v2 = "nStatus_NotCompleted";
    }
  }

  else
  {
    v2 = "DateTime_Weekends";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2681E8F78(unsigned __int8 a1)
{
  v2 = "common_DateType_Holiday";
  switch(a1)
  {
    case 1u:
      v2 = "common_SearchQualifier_Another";
      break;
    case 2u:
      v2 = "common_SearchQualifier_Exactly";
      break;
    case 3u:
      v2 = "common_SearchQualifier_New";
      break;
    case 4u:
      v2 = "common_SearchQualifier_NewToMe";
      break;
    case 5u:
      v2 = "common_SearchQualifier_Old";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2681E90B8(char a1)
{
  if (a1)
  {
    v2 = "common_OffsetDirection_After";
  }

  else
  {
    v2 = "common_SortOrder_MostFirst";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2681E9148()
{
  OUTLINED_FUNCTION_5_22();
  if (v8)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3 | 0x8000000000000000;
  OUTLINED_FUNCTION_15_15();
  OUTLINED_FUNCTION_6_22();
  v8 = v8 && v4 == v0;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_24(v5, v6, v7);
  }

  return v9 & 1;
}

uint64_t sub_2681E91E8(char a1)
{
  v2 = "common_Duration_AllDay";
  switch(a1)
  {
    case 1:
      v2 = "common_SortDirection_Atypical";
      break;
    case 2:
      v2 = "common_SortDirection_Best";
      break;
    case 3:
      v2 = "common_SortDirection_Newest";
      break;
    case 4:
      v2 = "common_SortDirection_Oldest";
      break;
    case 5:
      v2 = "common_SortDirection_Popular";
      break;
    case 6:
      v2 = "tion_Recommended";
      break;
    case 7:
      v2 = "common_SortDirection_Trending";
      break;
    case 8:
      v2 = "common_SortDirection_Typical";
      break;
    case 9:
      v2 = "common_SortDirection_Unpopular";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_18_17();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2681E9404(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  v7 = a3();
  if (v4 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_24(v4, v8, v7);
  }

  return v10 & 1;
}

uint64_t sub_2681E9498()
{
  OUTLINED_FUNCTION_5_22();
  if (v8)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v8 = v8 && v4 == v0;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_24(v5, v6, v7);
  }

  return v9 & 1;
}

uint64_t sub_2681E9524(char a1)
{
  v2 = "common_DayOfWeek_Wednesday";
  switch(a1)
  {
    case 1:
      v2 = "common_Quantifier_All";
      break;
    case 2:
      v2 = "common_Quantifier_Any";
      break;
    case 3:
      v2 = "common_Quantifier_Less";
      break;
    case 4:
      v2 = "common_Quantifier_More";
      break;
    case 5:
      v2 = "common_Quantifier_Multiple";
      break;
    case 6:
      v2 = "common_Quantifier_None";
      break;
    case 7:
      v2 = "common_Quantifier_Remainder";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_18_17();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2681E96B4(char a1, char a2)
{
  v2 = "common_Date_Yesterday";
  if (a1)
  {
    v3 = "common_NumberSign_NegativeSign";
  }

  else
  {
    v3 = "common_Date_Yesterday";
  }

  if (a2)
  {
    v2 = "common_NumberSign_NegativeSign";
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2683D0598();
  }

  return v4 & 1;
}

uint64_t sub_2681E9750(char a1)
{
  if (a1)
  {
    v1 = 0xEB00000000736574;
  }

  else
  {
    v1 = 0xEA00000000006574;
  }

  OUTLINED_FUNCTION_15_15();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_24(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_2681E97EC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEA00000000007865;
  v3 = 0x646E497473727562;
  v4 = a1;
  v5 = 0x646E497473727562;
  v6 = 0xEA00000000007865;
  switch(v4)
  {
    case 1:
      v6 = 0x80000002683FCC80;
      v5 = 0xD000000000000010;
      break;
    case 2:
      break;
    case 3:
      v5 = 0x6C646E7542707061;
      v6 = 0xEB00000000644965;
      break;
    case 4:
      v6 = 0x80000002683FCCB0;
      v5 = 0xD00000000000001CLL;
      break;
    default:
      v6 = 0x80000002683FCC60;
      v5 = 0xD000000000000015;
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x80000002683FCC80;
      OUTLINED_FUNCTION_26_10();
      break;
    case 2:
      break;
    case 3:
      v3 = 0x6C646E7542707061;
      v2 = 0xEB00000000644965;
      break;
    case 4:
      v2 = 0x80000002683FCCB0;
      v3 = 0xD00000000000001CLL;
      break;
    default:
      v2 = 0x80000002683FCC60;
      v3 = 0xD000000000000015;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_11(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_2681E9968()
{
  v0 = 0xEE007265646E696DLL;
  OUTLINED_FUNCTION_22_9();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
  v5 = v4;
  v6 = "updateReminderTime";
  v7 = v3;
  v8 = 0xEE007265646E696DLL;
  switch(v5)
  {
    case 1:
      v7 = 0x6F4E657461657263;
      v8 = 0xEA00000000006574;
      break;
    case 2:
      v7 = OUTLINED_FUNCTION_36_7();
      v10 = v9 - 32;
      goto LABEL_7;
    case 3:
      v7 = 0x6E696D6552646461;
      v8 = 0xEF656D6954726564;
      break;
    case 4:
      v8 = 0x80000002683FA960;
      v7 = 0xD000000000000012;
      break;
    case 5:
      v7 = OUTLINED_FUNCTION_36_7();
      v10 = v11 - 32;
LABEL_7:
      v8 = v10 | 0x8000000000000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_22_9();
      v3 = v12 & 0xFFFFFFFFFFFFLL | 0x6F4E000000000000;
      v0 = 0xEA00000000006574;
      break;
    case 2:
      OUTLINED_FUNCTION_34_6();
      v15 = v14 - 32;
      goto LABEL_14;
    case 3:
      v3 = 0x6E696D6552646461;
      v0 = 0xEF656D6954726564;
      break;
    case 4:
      v0 = (v6 - 32) | 0x8000000000000000;
      OUTLINED_FUNCTION_35_6();
      v3 = v13 - 1;
      break;
    case 5:
      OUTLINED_FUNCTION_34_6();
      v15 = v16 - 32;
LABEL_14:
      v0 = v15 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v7 == v3 && v8 == v0)
  {
    v18 = 1;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_10_11(v7, v1, v3);
  }

  return v18 & 1;
}

uint64_t sub_2681E9B10(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7368801;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = "locationIsDepartureTrigger";
  v6 = 7368801;
  switch(v4)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_33_7();
      break;
    case 2:
      OUTLINED_FUNCTION_32_7();
      OUTLINED_FUNCTION_30_3();
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_32_7() | 0x6E65644900000000;
      v3 = 0xEE00726569666974;
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_32_7() | 0x7247734900000000;
      v3 = 0xED0000797265636FLL;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v6 = 1701669236;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v6 = OUTLINED_FUNCTION_20_14(0x6F6Cu);
      break;
    case 7:
      v6 = 0xD00000000000001ALL;
      v3 = 0x80000002683FCFB0;
      break;
    default:
      break;
  }

  v7 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE500000000000000;
      OUTLINED_FUNCTION_3_21();
      break;
    case 2:
      OUTLINED_FUNCTION_29_7();
      break;
    case 3:
      v2 = 0x6E6564497473696CLL;
      v7 = 0xEE00726569666974;
      break;
    case 4:
      v2 = 0x724773497473696CLL;
      v7 = 0xED0000797265636FLL;
      break;
    case 5:
      v7 = 0xE400000000000000;
      v2 = 1701669236;
      break;
    case 6:
      v7 = 0xE800000000000000;
      OUTLINED_FUNCTION_11_22();
      break;
    case 7:
      v2 = 0xD00000000000001ALL;
      v7 = (v5 - 32) | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_24(v6, a2, v2);
  }

  return v9 & 1;
}

uint64_t sub_2681E9CF4(unsigned __int8 a1)
{
  v2 = "ntactAttribute_Contact";
  switch(a1)
  {
    case 1u:
      v2 = "ttribute_ConditionArrival";
      break;
    case 2u:
      v2 = "ttribute_ConditionDeparture";
      break;
    case 3u:
      v2 = "ttribute_ConditionDepartVehicle";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2681E9E0C()
{
  v0 = 0xEA00000000006B73;
  OUTLINED_FUNCTION_44_5();
  v4 = v3;
  v5 = v2;
  v6 = 0xEA00000000006B73;
  v7 = "temporalEventTrigger";
  switch(v4)
  {
    case 1:
      OUTLINED_FUNCTION_29_7();
      break;
    case 2:
      v6 = 0xE600000000000000;
      v5 = 0x737574617473;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v5 = 0x797469726F697270;
      break;
    case 4:
      v6 = 0x80000002683FA730;
      v5 = 0xD000000000000014;
      break;
    case 5:
      v5 = OUTLINED_FUNCTION_36_7();
      v9 = v8 - 32;
      goto LABEL_8;
    case 6:
      v5 = OUTLINED_FUNCTION_36_7();
      v9 = v10 - 32;
LABEL_8:
      v6 = v9 | 0x8000000000000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_30_3();
      break;
    case 2:
      v0 = 0xE600000000000000;
      v2 = 0x737574617473;
      break;
    case 3:
      v0 = 0xE800000000000000;
      v2 = 0x797469726F697270;
      break;
    case 4:
      v0 = (v7 - 32) | 0x8000000000000000;
      OUTLINED_FUNCTION_35_6();
      v2 = v11 + 1;
      break;
    case 5:
      OUTLINED_FUNCTION_34_6();
      v13 = v12 - 32;
      goto LABEL_16;
    case 6:
      OUTLINED_FUNCTION_34_6();
      v13 = v14 - 32;
LABEL_16:
      v0 = v13 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v16 = 1;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_10_11(v5, v1, v2);
  }

  return v16 & 1;
}

uint64_t sub_2681E9FBC(uint64_t a1)
{
  OUTLINED_FUNCTION_3_21();
  v3 = 0xE500000000000000;
  v5 = v4;
  v6 = v2;
  switch(v5)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_40_5() | 0x706D6F4300000000;
      v3 = 0xEC0000006574656CLL;
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_40_5() | 0x6F636E4900000000;
      v7 = 0x6574656C706DLL;
      goto LABEL_5;
    case 3:
      v6 = 0x6C61726F706D6574;
      v3 = 0xEF72656767697254;
      break;
    case 4:
      v6 = 0x546C616974617073;
      v7 = 0x726567676972;
LABEL_5:
      v3 = v7 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 5:
      v6 = OUTLINED_FUNCTION_40_5() | 0x67616C4600000000;
      v3 = 0xEB00000000646567;
      break;
    case 6:
      v6 = OUTLINED_FUNCTION_40_5() | 0x6C666E5500000000;
      v3 = 0xED00006465676761;
      break;
    case 7:
      v3 = 0xE800000000000000;
      v6 = 0x656C7069746C756DLL;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v6 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v8 = 0xE500000000000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_38_7();
      v2 = v9 | 0x706D6F4300000000;
      v8 = 0xEC0000006574656CLL;
      break;
    case 2:
      OUTLINED_FUNCTION_38_7();
      v2 = v11 | 0x6F636E4900000000;
      v10 = 0x6574656C706DLL;
      goto LABEL_15;
    case 3:
      v2 = 0x6C61726F706D6574;
      v8 = 0xEF72656767697254;
      break;
    case 4:
      v2 = 0x546C616974617073;
      v10 = 0x726567676972;
LABEL_15:
      v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_38_7();
      v2 = v12 | 0x67616C4600000000;
      v8 = 0xEB00000000646567;
      break;
    case 6:
      OUTLINED_FUNCTION_38_7();
      v2 = v13 | 0x6C666E5500000000;
      v8 = 0xED00006465676761;
      break;
    case 7:
      v8 = 0xE800000000000000;
      v2 = 0x656C7069746C756DLL;
      break;
    case 8:
      v8 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v8)
  {
    v15 = 1;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_2_24(v6, v1, v2);
  }

  return v15 & 1;
}

uint64_t sub_2681EA238(uint64_t a1)
{
  OUTLINED_FUNCTION_3_21();
  v3 = 0xE500000000000000;
  v5 = v4;
  v6 = v2;
  switch(v5)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_28_9();
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_41_5();
      break;
    case 3:
      v3 = 0xE300000000000000;
      v6 = 7368801;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_27_7();
      break;
    case 2:
      OUTLINED_FUNCTION_43_5();
      break;
    case 3:
      v7 = 0xE300000000000000;
      v2 = 7368801;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_24(v6, v1, v2);
  }

  return v9 & 1;
}

uint64_t sub_2681EA31C(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xEF656D6954726567;
  }

  OUTLINED_FUNCTION_15_15();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_24(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_2681EA3B4(uint64_t a1)
{
  OUTLINED_FUNCTION_3_21();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x746E65746E6F63;
    }

    else
    {
      v5 = 0x6D614E70756F7267;
    }

    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = v3;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x746E65746E6F63;
    }

    else
    {
      v3 = 0x6D614E70756F7267;
    }

    if (v2 == 1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE900000000000065;
    }
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v5 == v3 && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_24(v5, v2, v3);
  }

  return v9 & 1;
}

uint64_t sub_2681EA4A0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x6E756F436D657469;
  v4 = 0xE900000000000074;
  v5 = a1;
  v6 = 0x6E756F436D657469;
  switch(v5)
  {
    case 1:
      break;
    case 2:
      v6 = 0x7473694C6B736174;
      v4 = 0xED0000746E756F43;
      break;
    case 3:
      v6 = 0x6554686372616573;
      v4 = 0xEA00000000006D72;
      break;
    case 4:
      v6 = 0x6154746567726174;
      v4 = 0xEE007473694C6B73;
      break;
    case 5:
      v6 = 0x7564656863537369;
      v7 = 6579564;
      goto LABEL_13;
    case 6:
      v6 = 0x656767616C467369;
      v4 = 0xE900000000000064;
      break;
    case 7:
      v6 = 0x75647265764F7369;
      v4 = 0xE900000000000065;
      break;
    case 8:
      v6 = 0x7272756365527369;
      v7 = 6778473;
LABEL_13:
      v4 = v7 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 9:
      v6 = OUTLINED_FUNCTION_20_14(0x6F4Cu);
      goto LABEL_11;
    case 10:
      v6 = 0x7261646E656C6143;
LABEL_11:
      v4 = 0xEF747065636E6F43;
      break;
    default:
      v6 = 0xD000000000000010;
      v4 = 0x80000002683FCB30;
      break;
  }

  v8 = v2 + 16;
  switch(a2)
  {
    case 1:
      break;
    case 2:
      v3 = 0x7473694C6B736174;
      v8 = 0xED0000746E756F43;
      break;
    case 3:
      v3 = 0x6554686372616573;
      v8 = 0xEA00000000006D72;
      break;
    case 4:
      OUTLINED_FUNCTION_44_5();
      v8 = 0xEE007473694C6B73;
      break;
    case 5:
      v3 = 0x7564656863537369;
      v10 = 6579564;
      goto LABEL_26;
    case 6:
      v3 = 0x656767616C467369;
      v8 = 0xE900000000000064;
      break;
    case 7:
      v3 = 0x75647265764F7369;
      v8 = v2 + 1;
      break;
    case 8:
      v3 = 0x7272756365527369;
      v10 = 6778473;
LABEL_26:
      v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 9:
      OUTLINED_FUNCTION_11_22();
      goto LABEL_24;
    case 10:
      v3 = 0x7261646E656C6143;
LABEL_24:
      v8 = 0xEF747065636E6F43;
      break;
    default:
      OUTLINED_FUNCTION_26_10();
      v8 = (v9 - 32) | 0x8000000000000000;
      break;
  }

  if (v6 == v3 && v4 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_2_24(v6, a2, v3);
  }

  return v12 & 1;
}

uint64_t sub_2681EA780(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_15_15();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_24(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_2681EA810(uint64_t a1)
{
  OUTLINED_FUNCTION_11_22();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x746E657665;
    }

    else
    {
      v5 = 0x7053656C69626F6DLL;
    }

    if (v4 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEB00000000656361;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
    v5 = v3;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x746E657665;
    }

    else
    {
      v3 = 0x7053656C69626F6DLL;
    }

    if (v2 == 1)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xEB00000000656361;
    }
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v5 == v3 && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_24(v5, v2, v3);
  }

  return v9 & 1;
}

uint64_t sub_2681EA900(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000074;
  }

  else
  {
    v1 = 0xE900000000000065;
  }

  OUTLINED_FUNCTION_15_15();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_24(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_2681EA9AC(uint64_t a1)
{
  OUTLINED_FUNCTION_3_21();
  v3 = 0xE500000000000000;
  v5 = v4;
  v6 = v2;
  switch(v5)
  {
    case 1:
      v6 = 0x746E6F4374786574;
      v7 = 7630437;
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_30_3();
      break;
    case 3:
      v6 = 0x4464657461657263;
      v7 = 6648929;
LABEL_6:
      v3 = v7 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 4:
      v6 = 0x6465696669646F6DLL;
      v3 = 0xEC00000065746144;
      break;
    case 5:
      v6 = 0x656D686361747461;
      v3 = 0xEF746E756F43746ELL;
      break;
    default:
      break;
  }

  v8 = 0xE500000000000000;
  switch(v1)
  {
    case 1:
      v2 = 0x746E6F4374786574;
      v9 = 7630437;
      goto LABEL_13;
    case 2:
      OUTLINED_FUNCTION_29_7();
      break;
    case 3:
      OUTLINED_FUNCTION_22_9();
      v2 = v10 & 0xFFFFFFFFFFFFLL | 0x4464000000000000;
      v9 = 6648929;
LABEL_13:
      v8 = v9 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 4:
      v2 = 0x6465696669646F6DLL;
      v8 = 0xEC00000065746144;
      break;
    case 5:
      v2 = 0x656D686361747461;
      v8 = 0xEF746E756F43746ELL;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_2_24(v6, v1, v2);
  }

  return v12 & 1;
}

uint64_t sub_2681EAB78(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6C617669727261;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6C617669727261;
  switch(v4)
  {
    case 1:
      OUTLINED_FUNCTION_30_3();
      break;
    case 2:
      v5 = 0x6576207265746E65;
      v3 = 0xED0000656C636968;
      break;
    case 3:
      v5 = 0x7620747261706564;
      v3 = 0xEE00656C63696865;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_29_7();
      break;
    case 2:
      v2 = 0x6576207265746E65;
      v6 = 0xED0000656C636968;
      break;
    case 3:
      v2 = 0x7620747261706564;
      v6 = 0xEE00656C63696865;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_2681EACE8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEC00000073736572;
  v3 = 0x64646120656D6F68;
  v4 = a1;
  v5 = 0x64646120656D6F68;
  v6 = 0xEC00000073736572;
  switch(v4)
  {
    case 1:
      v5 = 0x646461206B726F77;
      v6 = 0xEC00000073736572;
      break;
    case 2:
      v5 = 0xD000000000000010;
      v7 = " address";
      goto LABEL_11;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x79627261656ELL;
      break;
    case 4:
      v5 = 0x61206C6F6F686373;
      v6 = 0xEE00737365726464;
      break;
    case 5:
      v8 = 544045415;
      goto LABEL_8;
    case 6:
      v5 = 0x646120726568746FLL;
      v6 = 0xED00007373657264;
      break;
    case 7:
      v8 = 544829025;
LABEL_8:
      v5 = v8 | 0x7264646100000000;
      v6 = 0xEB00000000737365;
      break;
    case 8:
      v5 = 0xD000000000000010;
      v7 = "ss";
LABEL_11:
      v6 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x646461206B726F77;
      break;
    case 2:
      OUTLINED_FUNCTION_26_10();
      v10 = v9 - 32;
      goto LABEL_22;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x79627261656ELL;
      break;
    case 4:
      v3 = 0x61206C6F6F686373;
      v2 = 0xEE00737365726464;
      break;
    case 5:
      v11 = 544045415;
      goto LABEL_19;
    case 6:
      v3 = 0x646120726568746FLL;
      v2 = 0xED00007373657264;
      break;
    case 7:
      v11 = 544829025;
LABEL_19:
      v3 = v11 | 0x7264646100000000;
      v2 = 0xEB00000000737365;
      break;
    case 8:
      OUTLINED_FUNCTION_26_10();
      v10 = v12 - 32;
LABEL_22:
      v2 = v10 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_10_11(v5, a2, v3);
  }

  return v14 & 1;
}

uint64_t sub_2681EAF5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_24(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_2681EAFE0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1684104562;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1684104562;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v6 = 1634038371;
      goto LABEL_8;
    case 2:
      v5 = 1684957542;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v6 = 1701602660;
LABEL_8:
      v5 = v6 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x796669646F6DLL;
      break;
    case 5:
      v5 = 1684956531;
      break;
    case 6:
      v5 = 1868852853;
      break;
    case 7:
      v3 = 0xE600000000000000;
      v5 = 0x657A6F6F6E73;
      break;
    case 8:
      v5 = 0x74736575516B7361;
      v3 = 0xEB000000006E6F69;
      break;
    case 9:
      v5 = 0x6176697463616564;
      v3 = 0xEA00000000006574;
      break;
    case 10:
      v3 = 0xE600000000000000;
      v5 = 0x646E65707061;
      break;
    case 11:
      v5 = 1702260589;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE600000000000000;
      v8 = 1634038371;
      goto LABEL_21;
    case 2:
      v2 = 1684957542;
      break;
    case 3:
      v7 = 0xE600000000000000;
      v8 = 1701602660;
LABEL_21:
      v2 = v8 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 4:
      v7 = 0xE600000000000000;
      v2 = 0x796669646F6DLL;
      break;
    case 5:
      v2 = 1684956531;
      break;
    case 6:
      v2 = 1868852853;
      break;
    case 7:
      v7 = 0xE600000000000000;
      v2 = 0x657A6F6F6E73;
      break;
    case 8:
      v2 = 0x74736575516B7361;
      v7 = 0xEB000000006E6F69;
      break;
    case 9:
      v2 = 0x6176697463616564;
      v7 = 0xEA00000000006574;
      break;
    case 10:
      v7 = 0xE600000000000000;
      v2 = 0x646E65707061;
      break;
    case 11:
      v2 = 1702260589;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_24(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_2681EB22C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7265646E696D6572;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x7265646E696D6572;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1802723700;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x6B736174627573;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1953720684;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1702129518;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1835365481;
      break;
    case 6:
      v5 = OUTLINED_FUNCTION_41_5();
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1802723700;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x6B736174627573;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1953720684;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1702129518;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1835365481;
      break;
    case 6:
      OUTLINED_FUNCTION_43_5();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_2681EB39C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7562617;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_2681EB468(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x657079546D657469;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = "temporalEventTriggerType";
  v6 = 0x657079546D657469;
  v7 = "locationSearchType";
  switch(v4)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_33_7();
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_28_9();
      break;
    case 3:
      v3 = 0xE600000000000000;
      v6 = 0x737574617473;
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_20_14(0x6F6Cu);
      break;
    case 5:
      v6 = 0xD000000000000012;
      v3 = 0x80000002683FA7C0;
      break;
    case 6:
      v6 = 0x656D695465746164;
      break;
    case 7:
      v6 = 0x7261655365746164;
      v3 = 0xEE00657079546863;
      break;
    case 8:
      v6 = 0x6F6972506B736174;
      v3 = 0xEC00000079746972;
      break;
    case 9:
      v3 = 0x80000002683FA800;
      v6 = 0xD000000000000018;
      break;
    default:
      break;
  }

  v8 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v8 = 0xE500000000000000;
      OUTLINED_FUNCTION_3_21();
      break;
    case 2:
      OUTLINED_FUNCTION_27_7();
      break;
    case 3:
      v8 = 0xE600000000000000;
      v2 = 0x737574617473;
      break;
    case 4:
      OUTLINED_FUNCTION_11_22();
      break;
    case 5:
      v2 = 0xD000000000000012;
      v8 = (v7 - 32) | 0x8000000000000000;
      break;
    case 6:
      v2 = 0x656D695465746164;
      break;
    case 7:
      v2 = 0x7261655365746164;
      v8 = 0xEE00657079546863;
      break;
    case 8:
      v2 = 0x6F6972506B736174;
      v8 = 0xEC00000079746972;
      break;
    case 9:
      v8 = (v5 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000018;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_24(v6, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_2681EB694(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x65746973626577;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x65746973626577;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 7107189;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v7 = 1953458288;
      goto LABEL_7;
    case 3:
      v3 = 0xE500000000000000;
      v7 = 1701079414;
LABEL_7:
      v5 = v7 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 7368801;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x6C69616D65;
      break;
    case 6:
      v6 = 0x67617373656DLL;
      goto LABEL_11;
    case 7:
      v5 = 0x74736163646F70;
      break;
    case 8:
      v3 = 0xE400000000000000;
      v5 = 1735290739;
      break;
    case 9:
      v6 = 0x6C6369747261;
LABEL_11:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 10:
      v3 = 0xE400000000000000;
      v5 = 1936287860;
      break;
    default:
      break;
  }

  v8 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v8 = 0xE300000000000000;
      v2 = 7107189;
      break;
    case 2:
      v8 = 0xE500000000000000;
      v10 = 1953458288;
      goto LABEL_20;
    case 3:
      v8 = 0xE500000000000000;
      v10 = 1701079414;
LABEL_20:
      v2 = v10 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 4:
      v8 = 0xE300000000000000;
      v2 = 7368801;
      break;
    case 5:
      v8 = 0xE500000000000000;
      v2 = 0x6C69616D65;
      break;
    case 6:
      v9 = 0x67617373656DLL;
      goto LABEL_24;
    case 7:
      v2 = 0x74736163646F70;
      break;
    case 8:
      v8 = 0xE400000000000000;
      v2 = 1735290739;
      break;
    case 9:
      v9 = 0x6C6369747261;
LABEL_24:
      v2 = v9 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 10:
      v8 = 0xE400000000000000;
      v2 = 1936287860;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_2_24(v5, a2, v2);
  }

  return v12 & 1;
}

uint64_t sub_2681EB934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_2681F0154(a4, a5, a6);
  sub_2683CFC58();
  sub_2683CFC58();
  if (v15 == v13 && v16 == v14)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_10_11(v15, v9, v13);
  }

  return v11 & 1;
}

uint64_t sub_2681EBA00()
{
  sub_2683CF588();
  v0 = sub_2683CF428();
  v3[3] = v0;
  v3[4] = sub_2681F0154(&qword_28024F2D8, MEMORY[0x277D60B68], MEMORY[0x277D60B60]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D60B50], v0);
  result = sub_2683CF558();
  qword_28027C850 = result;
  return result;
}

uint64_t sub_2681EBAF0()
{
  sub_2683CF588();
  v0 = sub_2683CF428();
  v3[3] = v0;
  v3[4] = sub_2681F0154(&qword_28024F2D8, MEMORY[0x277D60B68], MEMORY[0x277D60B60]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D60B50], v0);
  result = sub_2683CF558();
  qword_28027C858 = result;
  return result;
}

void sub_2681EBBD8()
{
  OUTLINED_FUNCTION_30_0();
  v0 = sub_2683CF518();
  OUTLINED_FUNCTION_0_3();
  v81 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_3();
  v79 = (v4 - v3);
  v5 = sub_2683CF3B8();
  v84[3] = v5;
  v84[4] = MEMORY[0x277D60888];
  __swift_allocate_boxed_opaque_existential_0(v84);
  OUTLINED_FUNCTION_16_19();
  *v6 = 0xD000000000000023;
  v6[1] = v7;
  v69 = v5;
  v72 = *(*(v5 - 8) + 104);
  v72();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F1D0, &qword_2683DB3B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2683D2890;
  sub_268129504(0, &qword_28024F2C8, 0x277CD3D30);
  OUTLINED_FUNCTION_48_4();
  v9 = OUTLINED_FUNCTION_32_7();
  sub_26838F570(v9 | 0x656D614E00000000, 0xE800000000000000, v82, (v8 + 32));
  OUTLINED_FUNCTION_48_4();
  v66 = v8;
  sub_26838F570(0x7265646E696D6572, 0xED0000656C746954, v82, (v8 + 136));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F2D0, &qword_2683DB458);
  v10 = type metadata accessor for NotebookSuggestion.SignalDefinition(0);
  v11 = *(*(v10 - 8) + 80);
  v12 = (v11 + 32) & ~v11;
  v78 = *(*(v10 - 8) + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2683D1EC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2683DB3A0;
  if (qword_28024C8A0 != -1)
  {
    swift_once();
  }

  *(v14 + 32) = qword_28027C858;
  sub_2683CF588();

  *(v14 + 40) = sub_2683CF568();
  *(v14 + 48) = sub_2683CF578();
  *(v14 + 56) = sub_2683CF548();
  *(v13 + v12) = v14;
  __swift_storeEnumTagSinglePayload(v13 + v12 + *(v10 + 20), 1, 1, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F1E8, &qword_2683DB3D0);
  v15 = sub_2683CF438();
  OUTLINED_FUNCTION_0_3();
  v56 = v12;
  v17 = v16;
  v68 = 2 * *(v18 + 72);
  v77 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = *(v18 + 72);
  v74 = v19;
  v55 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_45_2(v55);
  v22 = v21 + v77;
  v80 = *MEMORY[0x277D60B98];
  v76 = *(v17 + 104);
  v76(v21 + v77, v20);
  v67 = *MEMORY[0x277D60B80];
  (v76)(v22 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F1F0, &qword_2683DB3D8);
  sub_2683CF4C8();
  v73 = v0;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2683D1EC0;
  sub_2683CF4E8();
  OUTLINED_FUNCTION_16_19();
  v54 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F1F8, &qword_2683DB3E8);
  v25 = sub_2683CF418();
  OUTLINED_FUNCTION_0_3();
  v27 = v26;
  v29 = *(v28 + 72);
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v75 = v10;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2683D1ED0;
  v62 = v30;
  v32 = *(v27 + 104);
  v60 = *MEMORY[0x277D609A8];
  v32(v31 + v30);
  v59 = *MEMORY[0x277D60998];
  v32(v31 + v30 + v29);
  v58 = 2 * v29;
  v64 = v29;
  v57 = *MEMORY[0x277D60988];
  v61 = v32;
  v32(v31 + v30 + 2 * v29);
  strcpy(v83, "createReminder");
  v83[15] = -18;
  v84[5] = v66;
  v84[6] = &unk_2683DB450;
  v84[7] = 0;
  v85 = 0;
  v86 = v13;
  v87 = v55;
  v88 = sub_2681F01AC;
  v89 = 0;
  v90 = v23;
  v91 = &unk_2683DB460;
  v92 = 0;
  v93 = v31;
  v94 = 0xD000000000000013;
  v95 = v54;
  *&v82[40] = v69;
  *&v82[48] = MEMORY[0x277D60888];
  __swift_allocate_boxed_opaque_existential_0(&v82[16]);
  OUTLINED_FUNCTION_16_19();
  *v33 = 0xD000000000000025;
  v33[1] = v34;
  v72();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_45_2(v35);
  v71 = v36;
  v37 = (v36 + v56);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2683D6890;
  *(v38 + 32) = sub_2683CF548();
  *(v38 + 40) = sub_2683CF568();
  v39 = swift_allocObject();
  v40 = OUTLINED_FUNCTION_45_2(v39);
  v42 = v41 + v77;
  v70 = *MEMORY[0x277D60B78];
  v76(v41 + v77, v40);
  (v76)(v42 + v74, v80, v15);
  *v79 = v39;
  v43 = *MEMORY[0x277D61060];
  v65 = *(v81 + 104);
  v65(v79, v43, v73);
  *v37 = v38;
  v44 = *(v75 + 20);
  v63 = *(v81 + 32);
  v63(v37 + v44, v79, v73);
  __swift_storeEnumTagSinglePayload(v37 + v44, 0, 1, v73);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_2683D6890;
  *(v45 + 32) = sub_2683CF578();
  if (qword_28024C898 != -1)
  {
    swift_once();
  }

  v46 = (v37 + v78);
  *(v45 + 40) = qword_28027C850;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2683D1EC0;
  (v76)(v47 + v77, v80, v15);
  *v79 = v47;
  v65(v79, v43, v73);
  *v46 = v45;
  v48 = *(v75 + 20);
  v63(v46 + v48, v79, v73);
  __swift_storeEnumTagSinglePayload(v46 + v48, 0, 1, v73);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_2683D1ED0;
  (v76)(v49 + v77, v80, v15);
  (v76)(v49 + v77 + v74, v70, v15);
  (v76)(v49 + v77 + v68, v67, v15);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_2683D1EC0;

  sub_2683CF4D8();
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_2683D1ED0;
  (v61)(v51 + v62, v60, v25);
  (v61)(v51 + v62 + v64, v59, v25);
  (v61)(v51 + v62 + v58, v57, v25);
  strcpy(v82, "createNote");
  v82[11] = 0;
  *&v82[12] = -369098752;
  *&v82[56] = MEMORY[0x277D84F90];
  *&v82[64] = &unk_2683DB468;
  *&v82[72] = 0;
  v82[80] = 1;
  *&v82[88] = v71;
  *&v82[96] = v49;
  *&v82[104] = sub_2681F01AC;
  *&v82[112] = 0;
  *&v82[120] = v50;
  *&v82[128] = &unk_2683DB470;
  *&v82[136] = 0;
  OUTLINED_FUNCTION_35_6();
  *&v82[144] = v51;
  *&v82[152] = v52 + 2;
  *&v82[160] = 0x80000002683FCFF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F200, &qword_2683E64F0);
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_45_2(v53);
  sub_2681EFE4C(v83, &v53[2]);
  memcpy(&v53[12].n128_i8[8], v82, 0xA8uLL);
  sub_2681EFEA8(v83);
  OUTLINED_FUNCTION_29_0();
}

void sub_2681EC754()
{
  OUTLINED_FUNCTION_30_0();
  v60 = sub_2683CF3B8();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_14_3();
  v2 = (v1 - v0);
  OUTLINED_FUNCTION_16_19();
  v41 = v3;
  OUTLINED_FUNCTION_35_6();
  v43 = v4 + 16;
  v44 = v5;
  *v2 = v4 + 16;
  v2[1] = v5;
  v62 = *MEMORY[0x277D60868];
  v61 = *(v6 + 104);
  v61(v2);
  v42 = sub_2683CF3D8();
  v90[3] = v42;
  v90[4] = MEMORY[0x277D608B0];
  __swift_allocate_boxed_opaque_existential_0(v90);
  OUTLINED_FUNCTION_47_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F1D0, &qword_2683DB3B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2683D1EC0;
  v8 = v7;
  v38 = v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F1D8, &qword_2683DB3B8);
  v77[1] = v40;
  v39 = sub_2681EFB64();
  v77[2] = v39;
  __swift_allocate_boxed_opaque_existential_0(&v76);
  sub_2683CF408();
  sub_2683CF448();
  sub_2683CF3F8();
  sub_26838F570(0xD000000000000016, 0x80000002683FEA90, &v76, (v8 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F1E8, &qword_2683DB3D0);
  v55 = sub_2683CF438();
  v9 = *(v55 - 8);
  v50 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_17_12(v10);
  v59 = *MEMORY[0x277D607E8];
  v11 = *MEMORY[0x277D607E8];
  v58 = sub_2683CF398();
  OUTLINED_FUNCTION_1();
  v57 = *(v12 + 104);
  v57(v10 + v50, v11);
  v54 = *MEMORY[0x277D60BA0];
  v56 = *(v9 + 104);
  v56(v10 + v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F1F0, &qword_2683DB3D8);
  sub_2683CF4C8();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_17_12(v13);
  sub_2683CF4E8();
  OUTLINED_FUNCTION_16_19();
  v49 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F1F8, &qword_2683DB3E8);
  v15 = sub_2683CF418();
  OUTLINED_FUNCTION_0_3();
  v17 = v16;
  v37 = *(v18 + 72);
  v48 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2683D1ED0;
  v53 = *MEMORY[0x277D609A8];
  v47 = *(v17 + 104);
  v47(v19 + v48);
  v52 = *MEMORY[0x277D60998];
  v47(v19 + v48 + v37);
  v51 = *MEMORY[0x277D60988];
  v47(v19 + v48 + 2 * v37);
  v89[0] = 0xD000000000000013;
  v89[1] = v41;
  v90[5] = v38;
  v90[6] = &unk_2683DB3C8;
  v90[7] = 0;
  v91 = 2;
  v92 = MEMORY[0x277D84F90];
  v93 = v10;
  v94 = sub_2681F01AC;
  v95 = 0;
  v96 = v13;
  v97 = &unk_2683DB3E0;
  v98 = 0;
  v99 = v19;
  v100 = 0xD000000000000013;
  v101 = v49;
  *v2 = v43;
  v2[1] = v44;
  (v61)(v2, v62, v60);
  v77[3] = v42;
  v77[4] = MEMORY[0x277D608B0];
  __swift_allocate_boxed_opaque_existential_0(v77);
  OUTLINED_FUNCTION_47_1();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_17_12(v20);
  v22 = v21;
  v45 = v21;
  v64[1] = v40;
  v64[2] = v39;
  __swift_allocate_boxed_opaque_existential_0(&v63);
  sub_2683CF3F8();
  sub_26838F570(0xD000000000000017, 0x80000002683FEAB0, &v63, (v22 + 32));
  v23 = swift_allocObject();
  v24 = OUTLINED_FUNCTION_17_12(v23);
  (v57)(v25 + v50, v59, v58, v24);
  (v56)(v23 + v50, v54, v55);
  v26 = OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_17_12(v26);
  sub_2683CF4E8();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2683D1ED0;
  (v47)(v27 + v48, v53, v15);
  (v47)(v27 + v48 + v37, v52, v15);
  (v47)(v27 + v48 + 2 * v37, v51, v15);
  *&v76 = 0x6E696D6552646461;
  *(&v76 + 1) = 0xEF656D6954726564;
  v77[5] = v45;
  v77[6] = &unk_2683DB3F8;
  v77[7] = 0;
  v78 = 3;
  v79 = MEMORY[0x277D84F90];
  v80 = v23;
  v81 = sub_2681F01AC;
  v82 = 0;
  v83 = v26;
  v84 = &unk_2683DB400;
  v85 = 0;
  v86 = v27;
  v87 = 0xD000000000000013;
  v88 = v49;
  OUTLINED_FUNCTION_16_19();
  v46 = v28;
  v64[3] = v60;
  v64[4] = MEMORY[0x277D60888];
  __swift_allocate_boxed_opaque_existential_0(v64);
  OUTLINED_FUNCTION_16_19();
  *v29 = 0xD00000000000002BLL;
  v29[1] = v30;
  (v61)();
  v31 = swift_allocObject();
  v32 = OUTLINED_FUNCTION_17_12(v31);
  (v57)(v33 + v50, v59, v58, v32);
  (v56)(v31 + v50, v54, v55);
  v34 = OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_17_12(v34);
  sub_2683CF4E8();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2683D1ED0;
  (v47)(v35 + v48, v53, v15);
  (v47)(v35 + v48 + v37, v52, v15);
  (v47)(v35 + v48 + 2 * v37, v51, v15);
  *&v63 = 0xD000000000000012;
  *(&v63 + 1) = v46;
  v64[5] = MEMORY[0x277D84F90];
  v64[6] = &unk_2683DB410;
  v64[7] = 0;
  v65 = 4;
  v66 = MEMORY[0x277D84F90];
  v67 = v31;
  v68 = sub_2681F01AC;
  v69 = 0;
  v70 = v34;
  v71 = &unk_2683DB418;
  v72 = 0;
  v73 = v35;
  v74 = 0xD000000000000013;
  v75 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F200, &qword_2683E64F0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2683D1ED0;
  sub_2681EFE4C(&v76, v36 + 32);
  sub_2681EFE4C(&v63, v36 + 200);
  sub_2681EFE4C(v89, v36 + 368);
  sub_2681EFEA8(&v63);
  sub_2681EFEA8(&v76);
  sub_2681EFEA8(v89);
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2681ED18C()
{
  OUTLINED_FUNCTION_14();
  sub_2683CF9D8();
  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_2681ED204@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2683CF468();
  v3 = sub_2683CF458();
  a1[3] = v2;
  result = sub_2681F0154(&qword_28024F218, MEMORY[0x277D60CA0], MEMORY[0x277D60C98]);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_2681ED280()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F238, &qword_2683DB428);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11[-v1];
  v3 = sub_2683CF408();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  sub_2683CF3E8();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_26812D9E0(v2, &qword_28024F238, &qword_2683DB428);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    sub_2682DFCE0();
    (*(v4 + 8))(v9, v3);
    return v11[15];
  }
}

uint64_t sub_2681ED444(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_2683CF3A8();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681ED510);
}

uint64_t sub_2681ED510()
{
  v1 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1(*(v0 + 144), *(*(v0 + 144) + 24));
  OUTLINED_FUNCTION_42_7();
  sub_2683CF498();
  v2 = OUTLINED_FUNCTION_37_6();
  v33 = v3;
  v3(v2);
  OUTLINED_FUNCTION_0_35();
  v4 = OUTLINED_FUNCTION_19_2();
  v10 = sub_2681EB934(v4, v5, v6, v7, v8, v9);
  v11 = *(v1 + 8);
  v12 = OUTLINED_FUNCTION_32_3();
  v11(v12);
  v13 = OUTLINED_FUNCTION_30_7();
  v11(v13);
  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_42_7();
    sub_2683CF498();
    v14 = OUTLINED_FUNCTION_37_6();
    v33(v14);
    OUTLINED_FUNCTION_0_35();
    v15 = OUTLINED_FUNCTION_19_2();
    v21 = sub_2681EB934(v15, v16, v17, v18, v19, v20);
    v22 = OUTLINED_FUNCTION_32_3();
    v11(v22);
    v23 = OUTLINED_FUNCTION_30_7();
    v11(v23);
    if ((v21 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F220, &qword_2683D20F0);
      inited = swift_initStackObject();
      v29 = OUTLINED_FUNCTION_13_16(inited, xmmword_2683D2890);
      v30 = MEMORY[0x277D839B0];
      v29[3].n128_u8[0] = 0;
      v29[4].n128_u64[1] = v30;
      strcpy(&v29[5], "isDisplayHint");
      v29[5].n128_u16[7] = -4864;
      v29[7].n128_u64[1] = v30;
      v29[6].n128_u8[0] = 0;
      sub_2683CF9D8();

      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_2_16();

      __asm { BRAA            X2, X16 }
    }
  }

  v24 = swift_task_alloc();
  *(v0 + 192) = v24;
  *v24 = v0;
  v24[1] = sub_2681ED7D8;
  OUTLINED_FUNCTION_2_16();

  return sub_2681ED9D8(v25);
}

uint64_t sub_2681ED7D8()
{
  OUTLINED_FUNCTION_14();
  *(*v0 + 200) = v1;

  return MEMORY[0x2822009F8](sub_2681ED8D4);
}

uint64_t sub_2681ED8D4()
{
  v1 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F220, &qword_2683D20F0);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_13_16(inited, xmmword_2683D2890);
  v4 = MEMORY[0x277D839B0];
  v3[3].n128_u8[0] = (v1 & 1) == 0;
  v3[4].n128_u64[1] = v4;
  strcpy(&v3[5], "isDisplayHint");
  v3[5].n128_u16[7] = -4864;
  v3[7].n128_u64[1] = v4;
  v3[6].n128_u8[0] = 1;
  sub_2683CF9D8();

  v5 = OUTLINED_FUNCTION_8_19();

  return v6(v5);
}

uint64_t sub_2681ED9F8()
{
  v18 = v0;

  sub_2682E0174(v1, v13);
  if (v13[0] != 2 && (v15 & 1) == 0 && (v17 & 1) == 0)
  {
    v2 = v14;
    v3 = v16;
    v4 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    v0[3] = v4;
    v5 = [objc_opt_self() defaultManager];
    v0[4] = v5;
    sub_2681EF4A0(v4);
    if (v6)
    {
      v7 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v2 longitude:v3];
      v0[5] = v7;
      v8 = swift_task_alloc();
      v0[6] = v8;
      v8[2] = v5;
      v8[3] = 0x407F400000000000;
      v8[4] = v7;
      v9 = swift_task_alloc();
      v0[7] = v9;
      *v9 = v0;
      v9[1] = sub_2681EDBFC;
      v10 = MEMORY[0x277D839B0];

      return MEMORY[0x2822007B8](v0 + 8, 0, 0, 0xD000000000000040, 0x80000002683FEB00, sub_2681F00A0, v8, v10);
    }
  }

  OUTLINED_FUNCTION_37();

  return v11(1);
}

uint64_t sub_2681EDBFC()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2681EDD08);
}

uint64_t sub_2681EDD08()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  if (*(v0 + 64) == 1 && sub_2681EFFBC(v3, &unk_2878FB588) == 2)
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_37();
  v6 = v5 & 1;

  return v4(v6);
}

uint64_t sub_2681EDD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_2683CF478();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681EDE60);
}

uint64_t sub_2681EDE60()
{
  v7 = v0;

  sub_2682E0174(v1, v6);
  v2 = v6[0];
  if (v6[0] == 2)
  {
    goto LABEL_2;
  }

  (*(*(v0 + 48) + 16))(*(v0 + 56), *(v0 + 16), *(v0 + 40));
  sub_2682E03AC();
  if (v2 & 1) == 0 || (v6[1] & 1) != 0 || (v6[0])
  {
    goto LABEL_2;
  }

  if (qword_28024CC78 != -1)
  {
    swift_once();
  }

  if (sub_2683B65D4() - 3 > 1)
  {
LABEL_2:

    OUTLINED_FUNCTION_37();

    return v3(0);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = sub_2681EDFE0;

    return sub_268350848();
  }
}

uint64_t sub_2681EDFE0(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_2681EE0F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F238, &qword_2683DB428);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11[-v1];
  v3 = sub_2683CF408();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  sub_2683CF3E8();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_26812D9E0(v2, &qword_28024F238, &qword_2683DB428);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    sub_2682DFCE0();
    (*(v4 + 8))(v9, v3);
    return v11[14];
  }
}

uint64_t sub_2681EE2BC(uint64_t a1)
{
  v1[24] = a1;
  v2 = sub_2683CF3A8();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681EE388);
}

void sub_2681EE388()
{
  v1 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1(*(v0 + 192), *(*(v0 + 192) + 24));
  OUTLINED_FUNCTION_42_7();
  sub_2683CF498();
  v2 = OUTLINED_FUNCTION_37_6();
  v31 = v3;
  v3(v2);
  OUTLINED_FUNCTION_0_35();
  v4 = OUTLINED_FUNCTION_19_2();
  v10 = sub_2681EB934(v4, v5, v6, v7, v8, v9);
  v11 = *(v1 + 8);
  v12 = OUTLINED_FUNCTION_32_3();
  v11(v12);
  v13 = OUTLINED_FUNCTION_30_7();
  v11(v13);
  if (v10)
  {
    v14 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_42_7();
    sub_2683CF498();
    v15 = OUTLINED_FUNCTION_37_6();
    v31(v15);
    OUTLINED_FUNCTION_0_35();
    v16 = OUTLINED_FUNCTION_19_2();
    v14 = sub_2681EB934(v16, v17, v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_32_3();
    v11(v22);
    v23 = OUTLINED_FUNCTION_30_7();
    v11(v23);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F220, &qword_2683D20F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683D1ED0;
  *(inited + 32) = 0x7265746641796164;
  *(inited + 40) = 0xEF646E656B656557;
  sub_2681EE670();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC38, &qword_2683D4408);
  *(inited + 48) = v26;
  *(inited + 72) = v27;
  strcpy((inited + 80), "isDisplayHint");
  *(inited + 94) = -4864;
  v28 = MEMORY[0x277D839B0];
  *(inited + 96) = v14 & 1;
  *(inited + 120) = v28;
  strcpy((inited + 128), "hintVariation");
  *(inited + 142) = -4864;
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = sub_2681F0014(2uLL) + 1;
  sub_2683CF9D8();

  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_2_16();

  __asm { BRAA            X2, X16 }
}

void sub_2681EE670()
{
  OUTLINED_FUNCTION_30_0();
  sub_2683CB7D8();
  OUTLINED_FUNCTION_0_3();
  v31 = v1;
  v32 = v2;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_14_3();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_0_3();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  sub_2683CB7A8();
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_3();
  sub_2683CB768();
  sub_2683CB508();
  if (sub_2683CB6E8())
  {
    OUTLINED_FUNCTION_32_3();
    sub_2681EF200();
    if (__swift_getEnumTagSinglePayload(v0, 1, v7) == 1)
    {
      (*(v9 + 8))(v15, v7);
      v17 = OUTLINED_FUNCTION_23_13();
      v18(v17);
      sub_26812D9E0(v0, &qword_28024DB08, qword_2683D5760);
    }

    else
    {
      (*(v9 + 32))(v13, v0, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F220, &qword_2683D20F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2683D2890;
      *(inited + 32) = 1935893875;
      *(inited + 40) = 0xE400000000000000;
      sub_2683CB4E8();
      v22 = MEMORY[0x277D839F8];
      *(inited + 48) = v23;
      *(inited + 72) = v22;
      *(inited + 80) = 0x656E6F5A656D6974;
      *(inited + 88) = 0xE800000000000000;
      sub_2683CB788();
      v24 = sub_2683CB7B8();
      v30 = v25;
      (*(v32 + 8))(v5, v31);
      *(inited + 120) = MEMORY[0x277D837D0];
      v26 = v30;
      *(inited + 96) = v24;
      *(inited + 104) = v26;
      sub_2683CF9D8();
      v27 = *(v9 + 8);
      v27(v13, v7);
      v27(v15, v7);
      v28 = OUTLINED_FUNCTION_23_13();
      v29(v28);
    }
  }

  else
  {
    (*(v9 + 8))(v15, v7);
    v19 = OUTLINED_FUNCTION_23_13();
    v20(v19);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2681EEA20(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2683CF478();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681EEAE0);
}

uint64_t sub_2681EEAE0()
{
  v7 = v0;

  sub_2682E0174(v1, v6);
  v2 = v6[0];
  if (v6[0] == 2)
  {
    v3 = 0;
  }

  else
  {
    (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
    sub_2682E03AC();
    if (v2)
    {
      v3 = (v6[1] | v6[0]) ^ 1;
    }

    else
    {
      v3 = 0;
    }
  }

  OUTLINED_FUNCTION_37();

  return v4(v3 & 1);
}

uint64_t sub_2681EEBB0()
{
  v1 = sub_2683CB528();
  v0[12] = v1;
  v0[13] = *(v1 - 8);
  v0[14] = swift_task_alloc();
  v2 = sub_2683CB7A8();
  v0[15] = v2;
  v0[16] = *(v2 - 8);
  v0[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681EECC8);
}

uint64_t sub_2681EECC8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F220, &qword_2683D20F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683D1EC0;
  *(inited + 32) = 0x6E656B6565577369;
  *(inited + 40) = 0xE900000000000064;
  sub_2683CB768();
  sub_2683CB508();
  v8 = sub_2683CB6E8();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v8 & 1;
  sub_2683CF9D8();

  v9 = OUTLINED_FUNCTION_8_19();

  return v10(v9);
}

uint64_t sub_2681EEE20(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v2[3] = swift_task_alloc();
  v3 = sub_2683CB528();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_2683CB7A8();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F210, &qword_2683DB420);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for UpdateReminderExecutionParameters(0);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681EEFE8);
}

uint64_t sub_2681EEFE8()
{
  v1 = v0[11];
  v2 = v0[12];

  sub_2682E0800();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[11];
    v4 = &qword_28024F210;
    v5 = &qword_2683DB420;
LABEL_5:
    sub_26812D9E0(v3, v4, v5);
    v14 = 0;
    goto LABEL_7;
  }

  v7 = v0[3];
  v6 = v0[4];
  sub_2681EFEFC(v0[11], v0[13]);
  sub_2683CB768();
  sub_2683CB738();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v6);
  v9 = v0[13];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  if (EnumTagSinglePayload == 1)
  {
    v13 = v0[3];
    (*(v11 + 8))(v0[10], v0[8]);
    sub_2681EFF60(v9);
    v4 = &qword_28024DB08;
    v5 = qword_2683D5760;
    v3 = v13;
    goto LABEL_5;
  }

  v16 = v0[6];
  v15 = v0[7];
  v17 = v0[4];
  v18 = v0[5];
  (*(v18 + 32))(v15, v0[3], v17);
  sub_2683CB508();
  OUTLINED_FUNCTION_32_3();
  v14 = sub_2683CB4C8();
  v19 = *(v18 + 8);
  v19(v16, v17);
  v19(v15, v17);
  (*(v11 + 8))(v10, v12);
  sub_2681EFF60(v9);
LABEL_7:

  OUTLINED_FUNCTION_37();

  return v20(v14 & 1);
}

void sub_2681EF200()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_39_5();
  v28 = v2;
  v3 = sub_2683CB798();
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  MEMORY[0x28223BE20](v10 - 8);
  v11 = OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_3();
  v15 = v14 - v13;
  v18 = *(v5 + 104);
  v16 = v5 + 104;
  v17 = v18;
  v33 = *MEMORY[0x277CC9968];
  v31 = (v19 + 32);
  v32 = (v16 - 96);
  v29 = (v19 + 8);
  v30 = v18;
  v20 = 1;
  while (1)
  {
    v17(v9, v33, v3);
    OUTLINED_FUNCTION_19_2();
    sub_2683CB748();
    (*v32)(v9, v3);
    if (__swift_getEnumTagSinglePayload(v1, 1, v11) != 1)
    {
      break;
    }

    sub_26812D9E0(v1, &qword_28024DB08, qword_2683D5760);
LABEL_6:
    if (++v20 == 7)
    {
      v26 = 1;
      v27 = v28;
      goto LABEL_9;
    }
  }

  v21 = v9;
  v22 = v3;
  v23 = v16;
  v24 = v0;
  v25 = *v31;
  (*v31)(v15, v1, v11);
  if (sub_2683CB6E8())
  {
    (*v29)(v15, v11);
    v0 = v24;
    v16 = v23;
    v3 = v22;
    v9 = v21;
    v17 = v30;
    goto LABEL_6;
  }

  v27 = v28;
  v25(v28, v15, v11);
  v26 = 0;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v27, v26, 1, v11);
  OUTLINED_FUNCTION_29_0();
}

void sub_2681EF4A0(void *a1)
{
  v1 = sub_2681EFA3C(a1);
  if (v1)
  {
    v17 = v1;
    v2 = [v1 postalAddresses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F250, &unk_2683DB440);
    v3 = sub_2683CFCA8();

    v4 = sub_2683ABE58();
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {
LABEL_19:

        return;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D616C90](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v8 = [v6 label];
      if (v8)
      {
        v9 = v8;
        v10 = sub_2683CFA78();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      v13 = sub_2683CFA78();
      if (v12)
      {
        if (v10 == v13 && v12 == v14)
        {

          return;
        }

        v16 = sub_2683D0598();

        if (v16)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_2681EF6A8(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F240, &qword_2683DB438);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  (*(v9 + 16))(aBlock - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  aBlock[4] = sub_2681F00B0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2681EF998;
  aBlock[3] = &block_descriptor_0;
  v14 = _Block_copy(aBlock);

  [a2 fetchLocationsOfInterestWithinDistance:a3 ofLocation:v14 withHandler:a4];
  _Block_release(v14);
}

void sub_2681EF870(uint64_t a1, uint64_t a2)
{
  if (a1 && !a2)
  {
    v3 = sub_2683ABE58();
    v4 = 0;
    do
    {
      v5 = v4;
      if (v3 == v4)
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D616C90](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      v8 = [v6 type];

      v4 = v5 + 1;
    }

    while (v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F240, &qword_2683DB438);
  sub_2683CFD58();
}

uint64_t sub_2681EF998(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_268129504(0, &qword_28024F248, 0x277D01170);
    v4 = sub_2683CFCA8();
  }

  v6 = a3;
  v5(v4, a3);
}

id sub_2681EFA3C(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2683D2250;
  v3 = *MEMORY[0x277CBD0C8];
  *(v2 + 32) = *MEMORY[0x277CBD0C8];
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F2C0, &unk_2683F9280);
  v5 = sub_2683CFC98();

  v10[0] = 0;
  v6 = [a1 _ios_meContactWithKeysToFetch_error_];

  v7 = v10[0];
  if (!v6)
  {
    v8 = v7;
    sub_2683CB388();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_2681EFB64()
{
  result = qword_28024F1E0;
  if (!qword_28024F1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024F1D8, &qword_2683DB3B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F1E0);
  }

  return result;
}

uint64_t sub_2681EFBC8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_39_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_7_3(v1);

  return sub_2681ED444(v2, v3);
}

uint64_t sub_2681EFC50()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_37();

  return v5(v2);
}

uint64_t sub_2681EFD3C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_39_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_7_3(v1);

  return sub_2681EE2BC(v2);
}

uint64_t sub_2681EFDC4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_39_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_7_3(v1);

  return sub_2681EEBB0();
}

uint64_t sub_2681EFEFC(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateReminderExecutionParameters(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_2681EFF60(uint64_t a1)
{
  updated = type metadata accessor for UpdateReminderExecutionParameters(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_2681EFFBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 2;
  }

  result = sub_2681F0014(*(a2 + 16));
  if (result < v2)
  {
    return *(a2 + result + 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_2681F0014(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x26D617A60](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x26D617A60](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2681F00B0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F240, &qword_2683DB438);

  sub_2681EF870(a1, a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2681F0154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_2_24(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2683D0598();
}

uint64_t OUTLINED_FUNCTION_10_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2683D0598();
}

__n128 *OUTLINED_FUNCTION_13_16(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6948656D6F487369;
  result[2].n128_u64[1] = 0xEA0000000000746ELL;
  return result;
}

__n128 OUTLINED_FUNCTION_17_12(__n128 *a1)
{
  result = v1[21];
  a1[1] = result;
  return result;
}

__n128 OUTLINED_FUNCTION_45_2(__n128 *a1)
{
  result = v1[25];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_1()
{

  return MEMORY[0x2821C65F0](v1, v0, 0);
}

uint64_t OUTLINED_FUNCTION_48_4()
{

  return MEMORY[0x2821C71C0](v0, 0, v1);
}

uint64_t OUTLINED_FUNCTION_49_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_50_2()
{

  return sub_2683CB528();
}

uint64_t sub_2681F0480()
{
  v1 = sub_2683CCC18();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 48);
  sub_2683CCB88();
  v5(v34, v4, 1);
  (*(v2 + 8))(v4, v1);
  sub_268167C34(v34, v33);
  if (v33[56] == 255)
  {
    goto LABEL_6;
  }

  sub_268167C34(v33, v29);
  if (v32 != 1)
  {
    if (v32 == 7)
    {
      v6 = vorrq_s8(v30, v31);
      if (!(*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v29[2] | v29[1] | v29[0]))
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v22 = sub_2683CF7E8();
        __swift_project_value_buffer(v22, qword_28027C958);
        v23 = sub_2683CF7C8();
        v24 = sub_2683CFE98();
        if (os_log_type_enabled(v23, v24))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_6(&dword_2680EB000, v25, v26, "[SnoozeTasks.NeedsValueStrategy] actionForInput returning .cancel()");
          OUTLINED_FUNCTION_25_0();
        }

        sub_2683CC298();
        goto LABEL_12;
      }
    }

    sub_26813A1A0(v29);
LABEL_6:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v7 = sub_2683CF7E8();
    __swift_project_value_buffer(v7, qword_28027C958);
    sub_268167C34(v34, v29);
    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE98();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v10 = 136315138;
      sub_268167C34(v29, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v12 = sub_2683CFAD8();
      v14 = v13;
      sub_26812C310(v29, &qword_28024D460, &qword_2683D5050);
      v15 = sub_2681610A0(v12, v14, &v28);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_2680EB000, v8, v9, "[SnoozeTasks.NeedsValueStrategy] actionForInput returning .ignore() for unsupported task: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_26812C310(v29, &qword_28024D460, &qword_2683D5050);
    }

    sub_2683CC2B8();
LABEL_12:
    sub_26812C310(v34, &qword_28024D460, &qword_2683D5050);
    return sub_26812C310(v33, &qword_28024D460, &qword_2683D5050);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v16 = sub_2683CF7E8();
  __swift_project_value_buffer(v16, qword_28027C958);
  v17 = sub_2683CF7C8();
  v18 = sub_2683CFE98();
  if (os_log_type_enabled(v17, v18))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_6(&dword_2680EB000, v19, v20, "[SnoozeTasks.NeedsValueStrategy] actionForInput returning .handle()");
    OUTLINED_FUNCTION_25_0();
  }

  sub_2683CC2A8();
  sub_26812C310(v34, &qword_28024D460, &qword_2683D5050);
  sub_26813A1A0(v29);
  return sub_26812C310(v33, &qword_28024D460, &qword_2683D5050);
}

uint64_t sub_2681F08D4()
{
  OUTLINED_FUNCTION_14();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = sub_2683CCBA8();
  v1[19] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[20] = v6;
  v1[21] = OUTLINED_FUNCTION_15_1();
  v7 = sub_2683CC748();
  v1[22] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[23] = v8;
  v1[24] = OUTLINED_FUNCTION_15_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  v1[25] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[26] = v10;
  v1[27] = OUTLINED_FUNCTION_15_1();
  v11 = sub_2683CCC18();
  v1[28] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v1[29] = v12;
  v1[30] = OUTLINED_FUNCTION_15_1();
  v13 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v13);
}

void sub_2681F0A6C(uint64_t a1)
{
  v3 = *(v1 + 232);
  v2 = *(v1 + 240);
  v4 = *(v1 + 224);
  v5 = *(*(v1 + 144) + 48);
  sub_2683CCB88();
  v5(v2, 0);
  (*(v3 + 8))(v2, v4);
  v6 = *(v1 + 72);
  if (v6 != 1)
  {
    if (v6 == 255)
    {
      sub_26812C310(v1 + 16, &qword_28024D460, &qword_2683D5050);
    }

    else
    {
      sub_26813A1A0(v1 + 16);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v11 = *(v1 + 160);
    v10 = *(v1 + 168);
    v12 = *(v1 + 152);
    v13 = *(v1 + 128);
    v14 = sub_2683CF7E8();
    __swift_project_value_buffer(v14, qword_28027C958);
    (*(v11 + 16))(v10, v13, v12);
    v15 = sub_2683CF7C8();
    v16 = sub_2683CFE88();
    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v1 + 160);
      v17 = *(v1 + 168);
      v19 = *(v1 + 152);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;
      sub_2683CCB88();
      v22 = sub_2683CFAD8();
      v24 = v23;
      (*(v18 + 8))(v17, v19);
      v25 = sub_2681610A0(v22, v24, &v32);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_2680EB000, v15, v16, "[SnoozeTasks.NeedsValueStrategy] parseValueResponse Did not find an .snoozeTasks task from parse: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_25_0();
    }

    else
    {
      v27 = *(v1 + 160);
      v26 = *(v1 + 168);
      v28 = *(v1 + 152);

      (*(v27 + 8))(v26, v28);
    }

    sub_26812C6B8();
    swift_allocError();
    *v29 = 0u;
    *(v29 + 16) = 0u;
    *(v29 + 32) = 4;
    swift_willThrow();

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_64();

    __asm { BRAA            X1, X16 }
  }

  sub_268128148((v1 + 16), v1 + 80);
  *(v1 + 248) = sub_2683CC9C8();
  __swift_project_boxed_opaque_existential_1((v1 + 80), *(v1 + 104));
  v7 = swift_task_alloc();
  *(v1 + 256) = v7;
  *v7 = v1;
  v7[1] = sub_2681F0E5C;
  OUTLINED_FUNCTION_64();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_2681F0E5C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  *(v1 + 264) = v0;

  v2 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2681F0F4C()
{
  v36 = v0;
  v1 = v0[33];
  v2 = v0[31];
  v3 = sub_2682DDA40(v1);

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = v0[17];
  v8 = sub_2683CF7E8();
  __swift_project_value_buffer(v8, qword_28027C958);
  (*(v5 + 16))(v4, v7, v6);
  v9 = v3;
  v10 = sub_2683CF7C8();
  v11 = sub_2683CFE98();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[26];
  v14 = v0[27];
  v15 = v0[25];
  if (v12)
  {
    v16 = v0[23];
    v17 = v0[24];
    v31 = v0[22];
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35[0] = v34;
    *v18 = 136315394;
    log = v10;
    sub_2683CC9E8();
    v19 = sub_2683CC738();
    v30 = v11;
    v21 = v20;
    (*(v16 + 8))(v17, v31);
    (*(v13 + 8))(v14, v15);
    v22 = sub_2681610A0(v19, v21, v35);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v9;
    *v33 = v9;
    v23 = v9;
    _os_log_impl(&dword_2680EB000, log, v30, "[SnoozeTasks.NeedsValueStrategy] Updated intent after prompt for %s: %@", v18, 0x16u);
    sub_26812C310(v33, &qword_28024DCD8, &qword_2683D5060);
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_25_0();
  }

  else
  {

    (*(v13 + 8))(v14, v15);
  }

  v24 = v0[15];
  v25 = sub_2683CC9D8();
  v26 = [v25 resolvedValue];

  sub_2683D0038();
  swift_unknownObjectRelease();
  sub_268143430();
  sub_2683CC618();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F2F8, &unk_2683DB5B0);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);

  OUTLINED_FUNCTION_40();

  return v28();
}

uint64_t sub_2681F1298()
{
  OUTLINED_FUNCTION_14();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v1[15] = OUTLINED_FUNCTION_15_1();
  v4 = sub_2683CC598();
  v1[16] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[17] = v5;
  v1[18] = OUTLINED_FUNCTION_15_1();
  v6 = sub_2683CC528();
  v1[19] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[20] = v7;
  v1[21] = OUTLINED_FUNCTION_15_1();
  v8 = sub_2683CC748();
  v1[22] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[23] = v9;
  v1[24] = OUTLINED_FUNCTION_15_1();
  v10 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2681F1408()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  sub_2683CC9E8();
  v4 = sub_2683CC738();
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  v7 = sub_268201068(v4, v6);
  if (v7 == 2)
  {
    sub_26812C6B8();
    swift_allocError();
    *v8 = v4;
    *(v8 + 8) = v6;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_40();

    return v9();
  }

  else
  {
    v11 = v7;

    v0[5] = &type metadata for SnoozeTasks.Parameter;
    v0[6] = &off_2879048D8;
    *(v0 + 16) = v11 & 1;
    sub_2681687C8();
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v12 = swift_task_alloc();
    v0[25] = v12;
    *v12 = v0;
    v12[1] = sub_2681F1604;
    v13 = v0[18];

    return sub_2681F1974(v13, v11 & 1);
  }
}

uint64_t sub_2681F1604()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v4 + 208) = v0;

  if (v0)
  {
    v5 = sub_2681F18D0;
  }

  else
  {
    v5 = sub_2681F1708;
  }

  return MEMORY[0x2822009F8](v5);
}

void sub_2681F1708()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v10 = *(v0 + 144);
  v11 = *(v0 + 136);
  v12 = *(v0 + 128);
  v4 = *(v0 + 120);
  v5 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 8), *(*(v0 + 112) + 32));
  sub_2683CC0A8();
  (*(v2 + 16))(v4, v1, v3);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v3);
  v6 = sub_2683CCC98();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v7 = MEMORY[0x277D5C1D8];
  v5[3] = v6;
  v5[4] = v7;
  __swift_allocate_boxed_opaque_existential_0(v5);
  sub_2683CC348();
  sub_26812C310(v0 + 56, &qword_28024D408, &qword_2683D2470);
  sub_26812C310(v4, &qword_28024D400, &qword_2683D2460);
  (*(v11 + 8))(v10, v12);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_64();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2681F18D0()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_2681F1974(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2681F19A0()
{
  OUTLINED_FUNCTION_14();
  if (*(v0 + 48))
  {
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v1[1] = sub_268188BA8;

    return sub_2683C8D50();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_26817FEB0;

    return sub_2683C8C9C();
  }
}

uint64_t sub_2681F1AB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_2681F08D4();
}

uint64_t sub_2681F1B60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_2681F1298();
}

uint64_t sub_2681F1C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681342AC;

  return MEMORY[0x2821B9BF8](a1, a2, a3, a4);
}

unint64_t sub_2681F1CD0()
{
  result = qword_28024F2F0;
  if (!qword_28024F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F2F0);
  }

  return result;
}

uint64_t type metadata accessor for SetTaskAttributeV2CATsSimple(uint64_t a1)
{
  result = qword_28024F300;
  if (!qword_28024F300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681F1DB0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681F1DC4()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20(v2);
  *(v0 + 32) = v3;
  v4 = OUTLINED_FUNCTION_14_15(v3, xmmword_2683D1EC0);
  if (v1)
  {
    v4 = type metadata accessor for NotebookSpatialEventTriggerConcept(v4);
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v4;
  v9 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_28_10(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_18_18(v6);

  return (v9)(0xD00000000000002DLL, 0x80000002683FEE50, v3);
}

uint64_t sub_2681F1ED4()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v1[4] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2681F1F60()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20(v2);
  v0[5] = v3;
  *(v3 + 16) = xmmword_2683D1EC0;
  *(v3 + 32) = 0x757461745377656ELL;
  *(v3 + 40) = 0xE900000000000073;
  OUTLINED_FUNCTION_29_8(v3, v4, &unk_28024E7C0, &unk_2683D6CA0);
  v5 = sub_2683CF168();
  if (OUTLINED_FUNCTION_12_7(v5) == 1)
  {
    sub_26812C310(v0[4], &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v1;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_21();
    v6();
  }

  v7 = OUTLINED_FUNCTION_6();
  v0[6] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_18_18(v7);
  OUTLINED_FUNCTION_13_17();
  v8 = OUTLINED_FUNCTION_18(32);

  return v9(v8);
}

uint64_t sub_2681F20D8()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v1[4] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2681F2164()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20(v2);
  v0[5] = v3;
  v4 = OUTLINED_FUNCTION_10_12(v3, xmmword_2683D1EC0);
  OUTLINED_FUNCTION_29_8(v4, v5, &unk_28024E7C0, &unk_2683D6CA0);
  v6 = sub_2683CF168();
  if (OUTLINED_FUNCTION_12_7(v6) == 1)
  {
    sub_26812C310(v0[4], &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v1;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_21();
    v7();
  }

  v8 = OUTLINED_FUNCTION_6();
  v0[6] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_18_18(v8);
  OUTLINED_FUNCTION_13_17();
  v9 = OUTLINED_FUNCTION_18(36);

  return v10(v9);
}

uint64_t sub_2681F22C0()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v1[4] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2681F234C()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20(v2);
  v0[5] = v3;
  v4 = OUTLINED_FUNCTION_10_12(v3, xmmword_2683D1EC0);
  OUTLINED_FUNCTION_29_8(v4, v5, &unk_28024E7C0, &unk_2683D6CA0);
  v6 = sub_2683CF168();
  if (OUTLINED_FUNCTION_12_7(v6) == 1)
  {
    sub_26812C310(v0[4], &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v1;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_21();
    v7();
  }

  v8 = OUTLINED_FUNCTION_6();
  v0[6] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_18_18(v8);
  OUTLINED_FUNCTION_13_17();
  v9 = OUTLINED_FUNCTION_18(35);

  return v10(v9);
}

uint64_t sub_2681F24A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681F24BC()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20(v2);
  *(v0 + 32) = v3;
  v4 = OUTLINED_FUNCTION_14_15(v3, xmmword_2683D1EC0);
  if (v1)
  {
    v4 = type metadata accessor for NotebookTemporalEventTriggerConcept();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v4;
  v9 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_28_10(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_18_18(v6);

  return (v9)(0xD00000000000002ELL, 0x80000002683FED90, v3);
}

uint64_t sub_2681F25CC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681F25E0()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20(v2);
  *(v0 + 32) = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v1;
  v8 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_28_10(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_18_18(v5);

  return (v8)(0xD000000000000029, 0x80000002683FDCE0, v3);
}

uint64_t sub_2681F26F0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681F2704()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20(v2);
  *(v0 + 32) = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v1;
  v8 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_28_10(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_18_18(v5);

  return (v8)(0xD000000000000028, 0x80000002683FDCB0, v3);
}

uint64_t sub_2681F2814()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812C3D8;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(51);

  return v4(v3);
}

uint64_t sub_2681F28B8()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 114) = v3;
  *(v1 + 113) = v4;
  *(v1 + 112) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v10);
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2681F2970()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  *(v0 + 88) = v2;
  *(v2 + 16) = xmmword_2683DB5C0;
  *(v2 + 32) = 0x795465676E616863;
  *(v2 + 40) = 0xEA00000000006570;
  OUTLINED_FUNCTION_29_8(v2, v3, &unk_28024E7C0, &unk_2683D6CA0);
  v4 = sub_2683CF168();
  if (OUTLINED_FUNCTION_12_7(v4) == 1)
  {
    sub_26812C310(*(v0 + 80), &unk_28024E7C0, &unk_2683D6CA0);
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
  }

  else
  {
    *(v2 + 72) = v1;
    __swift_allocate_boxed_opaque_existential_0((v2 + 48));
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_21();
    v5();
  }

  v6 = *(v0 + 72);
  v7 = *(v0 + 24);
  *(v2 + 80) = 0x656C74695477656ELL;
  *(v2 + 88) = 0xE800000000000000;
  sub_26812C2A8(v7, v6, &unk_28024E7C0, &unk_2683D6CA0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v1) == 1)
  {
    sub_26812C310(*(v0 + 72), &unk_28024E7C0, &unk_2683D6CA0);
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
  }

  else
  {
    *(v2 + 120) = v1;
    __swift_allocate_boxed_opaque_existential_0((v2 + 96));
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_21();
    v8();
  }

  v9 = *(v0 + 64);
  v10 = *(v0 + 32);
  *(v2 + 128) = 0x6954746567726174;
  *(v2 + 136) = 0xEB00000000656C74;
  sub_26812C2A8(v10, v9, &unk_28024E7C0, &unk_2683D6CA0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v1) == 1)
  {
    sub_26812C310(*(v0 + 64), &unk_28024E7C0, &unk_2683D6CA0);
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
  }

  else
  {
    *(v2 + 168) = v1;
    __swift_allocate_boxed_opaque_existential_0((v2 + 144));
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_21();
    v11();
  }

  v12 = *(v0 + 40);
  *(v2 + 176) = 0xD000000000000012;
  *(v2 + 184) = 0x80000002683FECE0;
  if (v12)
  {
    v13 = type metadata accessor for NotebookTemporalEventTriggerConcept();
    v14 = v12;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    *(v2 + 200) = 0;
    *(v2 + 208) = 0;
  }

  v15 = *(v0 + 48);
  v16 = *(v0 + 114);
  v17 = *(v0 + 113);
  v18 = *(v0 + 112);
  *(v2 + 192) = v14;
  *(v2 + 216) = v13;
  *(v2 + 224) = 0xD00000000000001CLL;
  *(v2 + 232) = 0x80000002683FED00;
  v19 = MEMORY[0x277D839B0];
  *(v2 + 240) = v18;
  *(v2 + 264) = v19;
  *(v2 + 272) = 0xD000000000000017;
  *(v2 + 280) = 0x80000002683FED20;
  *(v2 + 288) = v17;
  *(v2 + 312) = v19;
  *(v2 + 320) = 0xD000000000000015;
  *(v2 + 328) = 0x80000002683FED40;
  *(v2 + 336) = v16;
  *(v2 + 360) = v19;
  *(v2 + 368) = 7368801;
  *(v2 + 376) = 0xE300000000000000;
  v20 = 0;
  if (v15)
  {
    v20 = sub_2683CF138();
  }

  else
  {
    *(v2 + 392) = 0;
    *(v2 + 400) = 0;
  }

  *(v2 + 384) = v15;
  *(v2 + 408) = v20;
  v23 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v21 = swift_task_alloc();
  *(v0 + 96) = v21;
  *v21 = v0;
  v21[1] = sub_2681F2D78;

  return v23(0xD000000000000028, 0x80000002683FED60, v2);
}

uint64_t sub_2681F2D78()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_10();

    return v9(v8);
  }
}

uint64_t sub_2681F2EBC()
{
  OUTLINED_FUNCTION_7();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2681F2F40()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812C3D8;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(47);

  return v4(v3);
}

uint64_t sub_2681F2FE4()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812C3D8;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(34);

  return v4(v3);
}

uint64_t sub_2681F3088()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812BEB4;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(38);

  return v4(v3);
}

uint64_t sub_2681F312C()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812C3D8;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(37);

  return v4(v3);
}

uint64_t sub_2681F31D0()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812C3D8;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(48);

  return v4(v3);
}

uint64_t sub_2681F3274()
{
  swift_allocObject();
  OUTLINED_FUNCTION_21();
  return sub_2681F32C4(v0, v1, v2);
}

uint64_t sub_2681F32C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2683CF238();
  OUTLINED_FUNCTION_19();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v12 = OUTLINED_FUNCTION_23(v11);
  MEMORY[0x28223BE20](v12);
  sub_26812C2A8(a1, &v16 - v13, &qword_28024D258, &unk_2683D1F60);
  (*(v7 + 16))(v10, a2, v3);
  v14 = sub_2683CF178();
  (*(v7 + 8))(a2, v3);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v14;
}

uint64_t sub_2681F343C(uint64_t a1, uint64_t a2)
{
  sub_2683CF238();
  OUTLINED_FUNCTION_19();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_2683CF188();
  (*(v5 + 8))(a2, v2);
  return v9;
}

__n128 *OUTLINED_FUNCTION_10_12(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "valueToConfirm");
  result[2].n128_u8[15] = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_15(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x72656767697274;
  a1[2].n128_u64[1] = 0xE700000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_29_8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_26812C2A8(v4, v5, a3, a4);
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook22AnnouncementEventStoreVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2681F35FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_2681F363C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2681F36A8()
{
  OUTLINED_FUNCTION_14();
  v1[13] = v2;
  v1[14] = v0;
  v3 = sub_2683CB528();
  v1[15] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[16] = v4;
  v1[17] = OUTLINED_FUNCTION_15_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v1[18] = OUTLINED_FUNCTION_15_1();
  v5 = sub_2683CCC98();
  v1[19] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[20] = v6;
  v1[21] = OUTLINED_FUNCTION_15_1();
  v7 = sub_2683CC598();
  v1[22] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[23] = v8;
  v1[24] = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](sub_2681F381C);
}

uint64_t sub_2681F381C()
{
  v1 = v0[14];
  v2 = v1[11];
  v0[25] = v2;
  v3 = v1[12];
  v0[26] = v3;
  if (v2)
  {
    v4 = v1[13];
    v0[27] = v4;
    v5 = v2;

    if (sub_2681F432C(v5, v3, v4))
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v6 = sub_2683CF7E8();
      v0[28] = __swift_project_value_buffer(v6, qword_28027C958);
      v7 = sub_2683CF7C8();
      v8 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_45(v8))
      {
        v9 = OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_32_5(v9);
        OUTLINED_FUNCTION_11_17(&dword_2680EB000, v10, v11, "[AnnounceFollowUpHintFlow] conditions are correct for a hint");
        OUTLINED_FUNCTION_36();
      }

      v12 = swift_task_alloc();
      v0[29] = v12;
      *v12 = v0;
      v12[1] = sub_2681F3AE0;
      v13 = v0[24];

      return sub_2682B25F4(v13);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v21 = sub_2683CF7E8();
    v22 = OUTLINED_FUNCTION_18_19(v21, qword_28027C958);
    v23 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v23))
    {
      v24 = OUTLINED_FUNCTION_21_5();
      *v24 = 0;
      _os_log_impl(&dword_2680EB000, v22, v23, "[AnnounceFollowUpHintFlow] conditions are not correct for a hint", v24, 2u);
      OUTLINED_FUNCTION_38();
    }

    sub_2683CC3F8();
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v15 = sub_2683CF7E8();
    v16 = OUTLINED_FUNCTION_18_19(v15, qword_28027C958);
    v17 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v17))
    {
      v18 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v18);
      OUTLINED_FUNCTION_11_17(&dword_2680EB000, v19, v20, "[AnnounceFollowUpHintFlow] AnnouncementEventStore contruction issue, do not give hint");
      OUTLINED_FUNCTION_36();
    }

    sub_2683CC3F8();
  }

  OUTLINED_FUNCTION_3_22();

  OUTLINED_FUNCTION_40();

  return v25();
}

uint64_t sub_2681F3AE0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v4 + 240) = v0;

  if (v0)
  {
    v5 = sub_2681F3FB8;
  }

  else
  {
    v5 = sub_2681F3BE4;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2681F3BE4()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_2683CC328();
  sub_26812C310(v0 + 16, &qword_28024D408, &qword_2683D2470);
  sub_26812C310(v4, &qword_28024D400, &qword_2683D2460);
  v7 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v7);
  v9 = MEMORY[0x277D5C1D8];
  *(v0 + 80) = v3;
  *(v0 + 88) = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  (*(v2 + 16))(boxed_opaque_existential_0, v1, v3);
  v11 = swift_task_alloc();
  *(v0 + 248) = v11;
  *v11 = v0;
  v11[1] = sub_2681F3D80;

  return MEMORY[0x2821BB5D0](v0 + 56, v7, v8);
}

uint64_t sub_2681F3D80()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v3 + 256) = v0;

  if (v0)
  {
    v6 = sub_2681F4150;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 56));
    v6 = sub_2681F3E8C;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681F3E8C(uint64_t a1)
{
  v2 = v1[25];
  v3 = v1[23];
  v12 = v1[22];
  v13 = v1[24];
  v4 = v1[20];
  v11 = v1[21];
  v5 = v1[19];
  v6 = v1[16];
  v7 = v1[17];
  v8 = v1[15];
  sub_2683CB518();
  sub_2681D9B5C(0, v7, v2);

  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v11, v5);
  (*(v3 + 8))(v13, v12);
  sub_2683CC3F8();
  OUTLINED_FUNCTION_3_22();

  OUTLINED_FUNCTION_40();

  return v9();
}

uint64_t sub_2681F3FB8()
{
  v18 = v0;
  v1 = *(v0 + 200);

  v2 = *(v0 + 240);
  v3 = v2;
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE78();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    OUTLINED_FUNCTION_16_20(4.8751e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v8 = sub_2683CFAD8();
    v10 = sub_2681610A0(v8, v9, &v17);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_12_14();
    _os_log_impl(v11, v12, v13, v14, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  sub_2683CC3F8();
  OUTLINED_FUNCTION_3_22();

  OUTLINED_FUNCTION_40();

  return v15();
}

uint64_t sub_2681F4150()
{
  v23 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v8 = v0[32];
  v9 = v8;
  v10 = sub_2683CF7C8();
  LOBYTE(v5) = sub_2683CFE78();

  if (os_log_type_enabled(v10, v5))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    OUTLINED_FUNCTION_16_20(4.8751e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v13 = sub_2683CFAD8();
    v15 = sub_2681610A0(v13, v14, &v22);

    *(v11 + 4) = v15;
    OUTLINED_FUNCTION_12_14();
    _os_log_impl(v16, v17, v18, v19, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  sub_2683CC3F8();
  OUTLINED_FUNCTION_3_22();

  OUTLINED_FUNCTION_40();

  return v20();
}

BOOL sub_2681F432C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2683CB7A8();
  OUTLINED_FUNCTION_0_3();
  v77 = v7;
  v78 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2683CB0D8();
  OUTLINED_FUNCTION_0_3();
  v75 = v11;
  v76 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v73 - v15;
  v17 = sub_2683CB528();
  OUTLINED_FUNCTION_0_3();
  v19 = v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v73 - v24;
  if (sub_2681DA7FC(0, a1))
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v26 = sub_2683CF7E8();
    v27 = OUTLINED_FUNCTION_18_19(v26, qword_28027C958);
    v28 = sub_2683CFE98();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v29);
      OUTLINED_FUNCTION_4_7(&dword_2680EB000, v30, v31, "[AnnounceFollowUpHintFlow] has given reminder hint, do not give hint");
      OUTLINED_FUNCTION_36();
    }

    return 0;
  }

  sub_2681DA004(a1, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_26812C310(v16, &qword_28024DB08, qword_2683D5760);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v33 = sub_2683CF7E8();
    v34 = OUTLINED_FUNCTION_18_19(v33, qword_28027C958);
    v35 = sub_2683CFE98();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v36);
      OUTLINED_FUNCTION_4_7(&dword_2680EB000, v37, v38, "[AnnounceFollowUpHintFlow] has never given any hint, give hint");
      OUTLINED_FUNCTION_36();
    }

    return 1;
  }

  else
  {
    v73[1] = a2;
    v73[2] = a3;
    (*(v19 + 32))(v25, v16, v17);
    sub_2683CB768();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F310, &unk_2683DB770);
    v39 = sub_2683CB798();
    v74 = v17;
    v40 = v39;
    OUTLINED_FUNCTION_0_3();
    v41 = v25;
    v43 = v42;
    v44 = v19;
    v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_2683D1EC0;
    v47 = v46 + v45;
    v48 = v44;
    (*(v43 + 104))(v47, *MEMORY[0x277CC9968], v40);
    sub_2682D9570(v46);
    sub_2683CB518();
    v49 = v41;
    sub_2683CB6B8();

    v50 = *(v48 + 8);
    v51 = v23;
    v52 = v74;
    v50(v51);
    (*(v77 + 8))(v9, v78);
    v53 = sub_2683CAFF8();
    LOBYTE(v40) = v54;
    (*(v75 + 8))(v13, v76);
    if (v40)
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v55 = sub_2683CF7E8();
      v56 = OUTLINED_FUNCTION_18_19(v55, qword_28027C958);
      v57 = sub_2683CFE78();
      if (OUTLINED_FUNCTION_45(v57))
      {
        v58 = OUTLINED_FUNCTION_21_5();
        *v58 = 0;
        OUTLINED_FUNCTION_12_14();
        _os_log_impl(v59, v60, v61, v62, v58, 2u);
        OUTLINED_FUNCTION_38();
      }

      (v50)(v49, v52);
      return 0;
    }

    v63 = sub_2681DA4F0(129, a1);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v64 = sub_2683CF7E8();
    v65 = OUTLINED_FUNCTION_18_19(v64, qword_28027C958);
    v66 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 134218240;
      *(v67 + 4) = v53;
      *(v67 + 12) = 2048;
      *(v67 + 14) = v63;
      OUTLINED_FUNCTION_12_14();
      _os_log_impl(v68, v69, v70, v71, v67, 0x16u);
      OUTLINED_FUNCTION_38();
    }

    (v50)(v49, v52);
    return v53 > 6 && v63 > 2;
  }
}

uint64_t sub_2681F4964(uint64_t a1, uint64_t a2)
{
  sub_268193BC8();

  return sub_2683CBF48();
}

uint64_t sub_2681F49BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_2681F36A8();
}

uint64_t OUTLINED_FUNCTION_3_22()
{
}

id OUTLINED_FUNCTION_16_20(float a1)
{
  *v3 = a1;
  *(v2 + 96) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_18_19(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_2683CF7C8();
}

uint64_t sub_2681F4AC8()
{
  sub_268129504(0, &qword_280253320, 0x277CD4228);
  result = swift_getKeyPath();
  qword_28027C870 = sub_2681F56D0;
  *algn_28027C878 = result;
  qword_28027C880 = sub_2681F572C;
  unk_28027C888 = 0;
  return result;
}

uint64_t sub_2681F4B40()
{
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  result = swift_getKeyPath();
  qword_28027C890 = sub_2681F5730;
  *algn_28027C898 = result;
  qword_28027C8A0 = sub_2681F572C;
  unk_28027C8A8 = 0;
  return result;
}

uint64_t sub_2681F4BB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F318, &unk_2683DB7F0);
  inited = swift_initStackObject();
  inited[1] = xmmword_2683DB780;
  if (qword_28024CC20 != -1)
  {
LABEL_22:
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_2681F54B0();
  sub_2683CD5C8();
  inited[2] = v42;
  if (qword_28024CBE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_32(qword_28027CD20, v1, v2, v3, v4, v5, v6, v7, v42);
  inited[3] = v42;
  if (qword_28024CBF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_32(qword_28027CD30, v8, v9, v10, v11, v12, v13, v14, v42);
  inited[4] = v42;
  if (qword_28024CBD0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_32(qword_28027CD10, v15, v16, v17, v18, v19, v20, v21, v42);
  inited[5] = v42;
  if (qword_28024CBC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_32(qword_28027CD00, v22, v23, v24, v25, v26, v27, v28, v42);
  v29 = 0;
  inited[6] = v42;
  v30 = MEMORY[0x277D84F90];
LABEL_11:
  v31 = v29 - 1;
  v32 = 16 * v29 + 40;
  while (v31 != 4)
  {
    if (++v31 > 4)
    {
      __break(1u);
      goto LABEL_22;
    }

    v33 = v32 + 16;
    v34 = *(inited + v32);
    v32 += 16;
    if (v34)
    {
      v35 = *(inited + v33 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2682E4728(0, *(v30 + 16) + 1, 1, v30);
        v30 = v39;
      }

      v37 = *(v30 + 16);
      v36 = *(v30 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_2682E4728(v36 > 1, v37 + 1, 1, v30);
        v30 = v40;
      }

      v29 = v31 + 1;
      *(v30 + 16) = v37 + 1;
      v38 = v30 + 16 * v37;
      *(v38 + 32) = v35;
      *(v38 + 40) = v34;
      goto LABEL_11;
    }
  }

  swift_setDeallocating();
  sub_2681F560C(&qword_28024DB98, &unk_2683D5280);
  return v30;
}

uint64_t sub_2681F4E80()
{
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  result = swift_getKeyPath();
  qword_28027C8B0 = sub_2681F5730;
  *algn_28027C8B8 = result;
  qword_28027C8C0 = sub_2681F4EF8;
  unk_28027C8C8 = 0;
  return result;
}

uint64_t sub_2681F4EF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F318, &unk_2683DB7F0);
  inited = swift_initStackObject();
  inited[1] = xmmword_2683DB790;
  if (qword_28024CBC0 != -1)
  {
LABEL_20:
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_2681F54B0();
  sub_2683CD5C8();
  inited[2] = v13;
  if (qword_28024CBD0 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  inited[3] = v13;
  if (qword_28024CBF0 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  inited[4] = v13;
  if (qword_28024CBE0 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  v1 = 0;
  inited[5] = v13;
  v2 = MEMORY[0x277D84F90];
LABEL_9:
  v3 = 16 * v1 + 40;
  while (v1 != 4)
  {
    if (v1 > 3)
    {
      __break(1u);
      goto LABEL_20;
    }

    ++v1;
    v4 = v3 + 16;
    v5 = *(inited + v3);
    v3 += 16;
    if (v5)
    {
      v6 = *(inited + v4 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2682E4728(0, *(v2 + 16) + 1, 1, v2);
        v2 = v10;
      }

      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2682E4728(v7 > 1, v8 + 1, 1, v2);
        v2 = v11;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      goto LABEL_9;
    }
  }

  swift_setDeallocating();
  sub_2681F560C(&qword_28024DB98, &unk_2683D5280);
  return v2;
}

uint64_t sub_2681F5198()
{
  sub_268129504(0, &qword_280253310, 0x277CD4220);
  result = swift_getKeyPath();
  qword_28027C8D0 = sub_2681F5730;
  *algn_28027C8D8 = result;
  qword_28027C8E0 = sub_2681F5210;
  unk_28027C8E8 = 0;
  return result;
}

uint64_t sub_2681F5210()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F318, &unk_2683DB7F0);
  inited = swift_initStackObject();
  inited[1] = xmmword_2683DB790;
  if (qword_28024CBE0 != -1)
  {
LABEL_20:
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_2681F54B0();
  sub_2683CD5C8();
  inited[2] = v13;
  if (qword_28024CBF0 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  inited[3] = v13;
  if (qword_28024CBD0 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  inited[4] = v13;
  if (qword_28024CBC0 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  v1 = 0;
  inited[5] = v13;
  v2 = MEMORY[0x277D84F90];
LABEL_9:
  v3 = 16 * v1 + 40;
  while (v1 != 4)
  {
    if (v1 > 3)
    {
      __break(1u);
      goto LABEL_20;
    }

    ++v1;
    v4 = v3 + 16;
    v5 = *(inited + v3);
    v3 += 16;
    if (v5)
    {
      v6 = *(inited + v4 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2682E4728(0, *(v2 + 16) + 1, 1, v2);
        v2 = v10;
      }

      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2682E4728(v7 > 1, v8 + 1, 1, v2);
        v2 = v11;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      goto LABEL_9;
    }
  }

  swift_setDeallocating();
  sub_2681F560C(&qword_28024DB98, &unk_2683D5280);
  return v2;
}

unint64_t sub_2681F54B0()
{
  result = qword_28024CDA8;
  if (!qword_28024CDA8)
  {
    type metadata accessor for NotebookNLv3Intent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024CDA8);
  }

  return result;
}

uint64_t sub_2681F5508()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_0_36();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2681F55A8()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_0_36();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2681F560C(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_0_36();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_2681F5654()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F340, &qword_2683DB820);
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_0_36();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2681F56D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *OUTLINED_FUNCTION_1_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2683CD5C8();
}

uint64_t type metadata accessor for NotebookDateTimeResolver(uint64_t a1)
{
  result = qword_28024F3D0;
  if (!qword_28024F3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681F57D4(uint64_t a1)
{
  result = sub_2681F5870();
  if (v2 <= 0x3F)
  {
    result = sub_2683CB668();
    if (v3 <= 0x3F)
    {
      result = sub_2683CE7F8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2681F5870()
{
  result = qword_28024F3E0;
  if (!qword_28024F3E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28024F3E0);
  }

  return result;
}

uint64_t sub_2681F58CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_2683CB668();
  v4[7] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v4[8] = v6;
  v4[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E708, &qword_2683D7EE8);
  OUTLINED_FUNCTION_23(v7);
  v4[10] = swift_task_alloc();
  v8 = sub_2683CE978();
  v4[11] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v4[12] = v9;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v10 = sub_2683CF738();
  v4[15] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v4[16] = v11;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681F5A7C);
}

uint64_t sub_2681F5A7C()
{
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v1 = sub_2683CF768();
  __swift_project_value_buffer(v1, qword_28027C9A0);
  sub_2683CF728();
  v2 = sub_2683CF758();
  v3 = sub_2683CFEF8();
  if (sub_2683CFF88())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v2, v3, v5, "NotebookDateTimeResolver#makeRecommendation", "", v4, 2u);
    OUTLINED_FUNCTION_38();
  }

  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[16];
  v10 = v0[6];

  (*(v9 + 16))(v6, v7, v8);
  sub_2683CF7A8();
  swift_allocObject();
  v0[19] = sub_2683CF798();
  (*(v9 + 8))(v7, v8);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = sub_2681F5C84;
  v12 = v0[10];

  return sub_2681F660C(v12);
}