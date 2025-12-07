uint64_t __swift_store_extra_inhabitant_index_2079Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_29_2();
  if (*(v13 + 84) == v8)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
    OUTLINED_FUNCTION_29_2();
    if (*(v14 + 84) == v8)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
      OUTLINED_FUNCTION_29_2();
      if (*(v15 + 84) == v8)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
        OUTLINED_FUNCTION_29_2();
        if (*(v16 + 84) == v8)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
          OUTLINED_FUNCTION_29_2();
          if (*(v17 + 84) == v8)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
            OUTLINED_FUNCTION_55_2();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

void sub_2682A5E64(uint64_t a1)
{
  sub_2682A5FD8(319, &qword_280251260, &qword_280251268, &qword_2683E2D98);
  if (v1 <= 0x3F)
  {
    sub_2682A5FD8(319, &qword_280250A48, &qword_28024FDA8, &qword_2683DEB88);
    if (v2 <= 0x3F)
    {
      sub_2682A5FD8(319, &qword_280250A50, &qword_28024FDC0, &qword_2683DEBA0);
      if (v3 <= 0x3F)
      {
        sub_2682A5FD8(319, &qword_280250A58, &qword_28024FDD8, &qword_2683DEBB8);
        if (v4 <= 0x3F)
        {
          sub_2682A5FD8(319, &qword_280251270, &qword_2802505D8, &qword_2683DF3B8);
          if (v5 <= 0x3F)
          {
            sub_2682A5FD8(319, &qword_280250A68, &qword_28024FE08, &qword_2683DEBE8);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2682A5FD8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2683CE268();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2682A602C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_78_1(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_78_1((*a1 | (v4 << 8)) - 4);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_78_1((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_78_1((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_78_1(v8);
}

_BYTE *sub_2682A60B0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_77_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_75_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_76_0(result, v6);
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
          result = OUTLINED_FUNCTION_71_0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_31@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_26812C2A8(v2, &a2 - a1, v3, v4);
}

void *OUTLINED_FUNCTION_7_19(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_21(uint64_t a1)
{
  *(v1 + 48) = a1;

  return MEMORY[0x2821C3550](a1);
}

uint64_t OUTLINED_FUNCTION_19_20(uint64_t a1)
{

  return MEMORY[0x2821C3538](v1, a1);
}

uint64_t OUTLINED_FUNCTION_63_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2683CE238();
}

uint64_t OUTLINED_FUNCTION_85_0(uint64_t a1)
{
  *(v1 + 48) = a1;

  return MEMORY[0x2821C3550](a1);
}

uint64_t OUTLINED_FUNCTION_86_1(uint64_t a1)
{

  return MEMORY[0x2821C3538](v1, a1);
}

uint64_t OUTLINED_FUNCTION_89_0()
{
}

uint64_t OUTLINED_FUNCTION_581(uint64_t a1)
{

  return sub_2683CE228();
}

uint64_t OUTLINED_FUNCTION_582()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

uint64_t OUTLINED_FUNCTION_946(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t sub_2682AB760()
{
  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept7Builder_searchTerm);
  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept7Builder_targetTaskList);

  return v0;
}

uint64_t sub_2682AB7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v40 - v12;
  v14 = a1 == 0xD000000000000010 && 0x80000002683FCB30 == a2;
  if (v14 || (result = OUTLINED_FUNCTION_2_23(0xD000000000000010, 0x80000002683FCB30), (result & 1) != 0))
  {
    if (*(v3 + 32))
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v15 = *(v3 + 24);
    goto LABEL_9;
  }

  result = 0x6E756F436D657469;
  v16 = a1 == 0x6E756F436D657469 && a2 == 0xE900000000000074;
  if (v16 || (result = OUTLINED_FUNCTION_2_23(0x6E756F436D657469, 0xE900000000000074), (result & 1) != 0))
  {
    if (*(v3 + 48))
    {
      goto LABEL_7;
    }

    v15 = *(v3 + 40);
    goto LABEL_9;
  }

  result = OUTLINED_FUNCTION_10_19();
  v18 = a1 == result && a2 == v17;
  if (v18 || (result = OUTLINED_FUNCTION_2_23(result, v17), (result & 1) != 0))
  {
    if (*(v3 + 64))
    {
      goto LABEL_7;
    }

    v15 = *(v3 + 56);
LABEL_9:
    *(a3 + 24) = MEMORY[0x277D839F8];
    *a3 = v15;
    return result;
  }

  v19 = a1 == 0x6554686372616573 && a2 == 0xEA00000000006D72;
  if (!v19 && (OUTLINED_FUNCTION_2_23(0x6554686372616573, 0xEA00000000006D72) & 1) == 0)
  {
    v23 = OUTLINED_FUNCTION_9_22();
    v25 = a1 == v23 && a2 == v24;
    if (v25 || (OUTLINED_FUNCTION_2_23(v23, v24) & 1) != 0)
    {
      sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_targetTaskList, v10);
      v26 = sub_2683CF168();
      if (__swift_getEnumTagSinglePayload(v10, 1, v26) != 1)
      {
        *(a3 + 24) = v26;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
        return (*(*(v26 - 8) + 32))(boxed_opaque_existential_0, v10, v26);
      }

      v21 = v10;
LABEL_32:
      result = sub_26812E924(v21);
      goto LABEL_7;
    }

    result = OUTLINED_FUNCTION_15_20() & 0xFFFFFFFFFFFFLL | 0x7564000000000000;
    v29 = a1 == result && a2 == v28;
    if (v29 || (result = OUTLINED_FUNCTION_2_23(result, v28), (result & 1) != 0))
    {
      v30 = OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isScheduled;
    }

    else
    {
      result = 0x656767616C467369;
      v32 = a1 == 0x656767616C467369 && a2 == 0xE900000000000064;
      if (v32 || (result = OUTLINED_FUNCTION_2_23(0x656767616C467369, 0xE900000000000064), (result & 1) != 0))
      {
        v30 = OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isFlagged;
      }

      else
      {
        result = 0x75647265764F7369;
        v33 = a1 == 0x75647265764F7369 && a2 == 0xE900000000000065;
        if (v33 || (result = OUTLINED_FUNCTION_2_23(0x75647265764F7369, 0xE900000000000065), (result & 1) != 0))
        {
          v30 = OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isOverdue;
        }

        else
        {
          result = OUTLINED_FUNCTION_11_27();
          if (a1 != result || a2 != v34)
          {
            result = OUTLINED_FUNCTION_2_23(result, v34);
            if ((result & 1) == 0)
            {
              result = 0x6E6F697461636F4CLL;
              v36 = a1 == 0x6E6F697461636F4CLL && a2 == 0xEF747065636E6F43;
              if (v36 || (result = OUTLINED_FUNCTION_2_23(0x6E6F697461636F4CLL, 0xEF747065636E6F43), (result & 1) != 0))
              {
                v37 = *(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_LocationConcept);
                if (!v37)
                {
                  goto LABEL_7;
                }

                v38 = sub_2683CF088();
              }

              else
              {
                result = 0x7261646E656C6143;
                if (a1 != 0x7261646E656C6143 || a2 != 0xEF747065636E6F43)
                {
                  result = OUTLINED_FUNCTION_2_23(0x7261646E656C6143, 0xEF747065636E6F43);
                  if ((result & 1) == 0)
                  {
                    goto LABEL_7;
                  }
                }

                v37 = *(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_CalendarConcept);
                if (!v37)
                {
                  goto LABEL_7;
                }

                v38 = sub_2683CEFE8();
              }

              *(a3 + 24) = v38;
              *a3 = v37;
            }
          }

          v30 = OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isRecurring;
        }
      }
    }

    v31 = *(v3 + v30);
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v31;
    return result;
  }

  sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_searchTerm, v13);
  v20 = sub_2683CF168();
  if (__swift_getEnumTagSinglePayload(v13, 1, v20) == 1)
  {
    v21 = v13;
    goto LABEL_32;
  }

  *(a3 + 24) = v20;
  v22 = __swift_allocate_boxed_opaque_existential_0(a3);
  return (*(*(v20 - 8) + 32))(v22, v13, v20);
}

unint64_t sub_2682ABC40(uint64_t a1)
{
  v1 = sub_2683D0408();

  if (v1 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2682ABC94(char a1)
{
  result = 0x6E756F436D657469;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = OUTLINED_FUNCTION_10_19();
      break;
    case 3:
      result = 0x6554686372616573;
      break;
    case 4:
      result = OUTLINED_FUNCTION_9_22();
      break;
    case 5:
      v3 = OUTLINED_FUNCTION_15_20();
      goto LABEL_9;
    case 6:
      result = 0x656767616C467369;
      break;
    case 7:
      v3 = 0x7265764F7369;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7564000000000000;
      break;
    case 8:
      result = OUTLINED_FUNCTION_11_27();
      break;
    case 9:
      result = 0x6E6F697461636F4CLL;
      break;
    case 10:
      result = 0x7261646E656C6143;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_2682ABE00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2682ABC40(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2682ABE30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2682ABC94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2682ABE78@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2682ABC8C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2682ABEAC(uint64_t a1)
{
  v2 = sub_2682ACC34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682ABEE8(uint64_t a1)
{
  v2 = sub_2682ACC34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682ABF24()
{
  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_searchTerm);
  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_targetTaskList);

  return v0;
}

uint64_t sub_2682ABF9C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_2682AC020(uint64_t a1)
{
  sub_2681E12BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2682AC0DC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802512C0, &qword_2683E2F30);
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2682ACC34();
  sub_2683D0718();
  LOBYTE(v19) = 0;
  OUTLINED_FUNCTION_6_26();
  sub_2683D04E8();
  if (!v2)
  {
    LOBYTE(v19) = 1;
    OUTLINED_FUNCTION_6_26();
    sub_2683D04E8();
    LOBYTE(v19) = 2;
    OUTLINED_FUNCTION_6_26();
    sub_2683D04E8();
    LOBYTE(v19) = 3;
    sub_2683CF168();
    OUTLINED_FUNCTION_4_32();
    sub_2682ACBEC(v11, v12, MEMORY[0x277D55C50]);
    OUTLINED_FUNCTION_6_26();
    sub_2683D0508();
    LOBYTE(v19) = 4;
    OUTLINED_FUNCTION_6_26();
    sub_2683D0508();
    OUTLINED_FUNCTION_1_38(5);
    OUTLINED_FUNCTION_1_38(6);
    OUTLINED_FUNCTION_1_38(7);
    OUTLINED_FUNCTION_1_38(8);
    v19 = *(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_LocationConcept);
    HIBYTE(v18) = 9;
    sub_2683CF088();
    OUTLINED_FUNCTION_5_28();
    sub_2682ACBEC(v13, v14, MEMORY[0x277D55BD0]);
    OUTLINED_FUNCTION_6_26();
    sub_2683D0508();
    v19 = *(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_CalendarConcept);
    HIBYTE(v18) = 10;
    sub_2683CEFE8();
    OUTLINED_FUNCTION_3_32();
    sub_2682ACBEC(v15, v16, MEMORY[0x277D55B98]);
    OUTLINED_FUNCTION_6_26();
    sub_2683D0508();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_2682AC440(void *a1)
{
  v2 = swift_allocObject();
  sub_2682AC574(a1);
  return v2;
}

void sub_2682AC4B8(uint64_t a1)
{
  sub_2681E12BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2682AC574(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802512A8, &qword_2683E2F28);
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v11);
  *(v3 + 16) = 0;
  v12 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2682ACC34();
  sub_2683D06F8();
  if (v2)
  {

    type metadata accessor for NotebookSearchForNotebookItemsIntentConcept(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v33) = 0;
    OUTLINED_FUNCTION_7_20();
    *(v3 + 24) = sub_2683D0448();
    *(v3 + 32) = v13 & 1;
    OUTLINED_FUNCTION_0_48(1);
    *(v3 + 40) = sub_2683D0448();
    *(v3 + 48) = v14 & 1;
    OUTLINED_FUNCTION_0_48(2);
    *(v3 + 56) = sub_2683D0448();
    *(v3 + 64) = v15 & 1;
    sub_2683CF168();
    LOBYTE(v33) = 3;
    OUTLINED_FUNCTION_4_32();
    v29 = sub_2682ACBEC(v16, v17, MEMORY[0x277D55C60]);
    OUTLINED_FUNCTION_7_20();
    sub_2683D0468();
    sub_2681E1A1C(v10, v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_searchTerm);
    LOBYTE(v33) = 4;
    OUTLINED_FUNCTION_7_20();
    sub_2683D0468();
    sub_2681E1A1C(v8, v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_targetTaskList);
    LOBYTE(v33) = 5;
    v19 = sub_2683D0488();
    OUTLINED_FUNCTION_12_17(v19, OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isScheduled);
    OUTLINED_FUNCTION_0_48(6);
    v20 = sub_2683D0488();
    OUTLINED_FUNCTION_12_17(v20, OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isFlagged);
    OUTLINED_FUNCTION_0_48(7);
    v21 = sub_2683D0488();
    OUTLINED_FUNCTION_12_17(v21, OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isOverdue);
    OUTLINED_FUNCTION_0_48(8);
    v22 = sub_2683D0488();
    OUTLINED_FUNCTION_12_17(v22, OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isRecurring);
    sub_2683CF088();
    v32 = 9;
    OUTLINED_FUNCTION_5_28();
    sub_2682ACBEC(v23, v24, MEMORY[0x277D55BD8]);
    OUTLINED_FUNCTION_13_24();
    OUTLINED_FUNCTION_7_20();
    sub_2683D0468();
    *(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_LocationConcept) = v33;
    sub_2683CEFE8();
    v32 = 10;
    OUTLINED_FUNCTION_3_32();
    sub_2682ACBEC(v25, v26, MEMORY[0x277D55BA0]);
    OUTLINED_FUNCTION_13_24();
    OUTLINED_FUNCTION_7_20();
    sub_2683D0468();
    v27 = OUTLINED_FUNCTION_8_25();
    v28(v27, v30);
    *(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_CalendarConcept) = v33;
  }

  __swift_destroy_boxed_opaque_existential_0(v31);
  return v3;
}

uint64_t sub_2682ACB0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2682AC440(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2682ACBEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2682ACC34()
{
  result = qword_2802512B0;
  if (!qword_2802512B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802512B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotebookSearchForNotebookItemsIntentConcept.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NotebookSearchForNotebookItemsIntentConcept.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2682ACDF0()
{
  result = qword_2802512D0;
  if (!qword_2802512D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802512D0);
  }

  return result;
}

unint64_t sub_2682ACE48()
{
  result = qword_2802512D8;
  if (!qword_2802512D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802512D8);
  }

  return result;
}

unint64_t sub_2682ACEA0()
{
  result = qword_2802512E0[0];
  if (!qword_2802512E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2802512E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_38@<X0>(char a2@<W8>)
{
  *(v2 - 72) = a2;

  return sub_2683D0528();
}

uint64_t sub_2682AD044(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v4 = v2;
  if (v5 <= 0x3F)
  {
    v4 = type metadata accessor for NotebookDisambiguationAdapter.State(319, v2, *(a1 + 88), v3);
    if (v6 <= 0x3F)
    {
      inited = swift_initClassMetadata2();
      if (inited)
      {
        return inited;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_2682AD148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a1;
  v46 = a2;
  sub_2683CF8B8();
  OUTLINED_FUNCTION_0_3();
  v42 = v7;
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v41 = (v9 - v8);
  v11 = type metadata accessor for NotebookDisambiguationAdapter.State(0, a3, a4, v10);
  OUTLINED_FUNCTION_0_3();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_3();
  v25 = v24;
  OUTLINED_FUNCTION_3_0();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v41 - v28;
  v30 = &v41 + *(v27 + 48) - v28;
  v44 = v13;
  v31 = *(v13 + 16);
  v31(&v41 - v28, v45, v11);
  v31(v30, v46, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v31(v20, v29, v11);
      if (OUTLINED_FUNCTION_50_6() != 1)
      {
        goto LABEL_11;
      }

      v37 = *v20 == *v30;
      goto LABEL_19;
    case 2u:
      v31(v17, v29, v11);
      if (OUTLINED_FUNCTION_50_6() == 2)
      {
        v35 = v41;
        v34 = v42;
        v36 = v43;
        (*(v42 + 32))(v41, v30, v43);
        v37 = sub_2683CF858();
        v38 = *(v34 + 8);
        v38(v35, v36);
        v38(v17, v36);
        goto LABEL_19;
      }

      (*(v42 + 8))(v17, v43);
      goto LABEL_11;
    case 3u:
      if (OUTLINED_FUNCTION_50_6() == 3)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    default:
      v31(v22, v29, v11);
      v32 = *v22;
      v33 = *(v22 + 1);
      if (OUTLINED_FUNCTION_50_6())
      {

LABEL_11:
        v37 = 0;
      }

      else
      {
        if (v32 == *v30 && v33 == *(v30 + 1))
        {

LABEL_18:
          v37 = 1;
        }

        else
        {
          v37 = sub_2683D0598();
        }

LABEL_19:
        v25 = v44;
        TupleTypeMetadata2 = v11;
      }

      (*(v25 + 8))(v29, TupleTypeMetadata2);
      return v37 & 1;
  }
}

uint64_t sub_2682AD538@<X0>(void (*a1)(uint64_t *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v210 = a2;
  v214 = a1;
  v211 = a3;
  v4 = *v3;
  v5 = *(*v3 + 88);
  v213 = *(*v3 + 80);
  v6 = v213;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for IdentifiableItem(255, AssociatedTypeWitness, v8, v9);
  v196 = sub_2683CFFA8();
  OUTLINED_FUNCTION_0_3();
  v195 = v11;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  v206 = v13;
  v208 = v10;
  isa = v10[-1].isa;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v16);
  v18 = OUTLINED_FUNCTION_13_25(v189 - v17);
  v201 = type metadata accessor for NotebookDisambiguationAdapter.State(v18, v6, v5, v19);
  OUTLINED_FUNCTION_0_3();
  v200 = v20;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_0();
  v199 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_13_25(v24);
  v191 = sub_2683CF8B8();
  OUTLINED_FUNCTION_0_3();
  v189[0] = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_13_25(v189 - v28);
  v205 = sub_2683CCBA8();
  OUTLINED_FUNCTION_0_3();
  v203 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_13_25(v189 - v34);
  v35 = sub_2683CC748();
  OUTLINED_FUNCTION_0_3();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_3();
  v41 = v40 - v39;
  v42 = sub_2683CCC18();
  OUTLINED_FUNCTION_0_3();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_3();
  v48 = v47 - v46;
  v49 = *(v4 + 112);
  v212 = v3;
  v50 = &v3[v49];
  v52 = *v50;
  v51 = *(v50 + 1);

  sub_2683CCB88();
  v209 = v5;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_47_3();
  sub_2683CC9F8();
  sub_2683CC9E8();
  sub_2682AE9E4(&v218);
  (*(v37 + 8))(v41, v35);
  v53 = v51;
  v52(&v221, v48, &v218);

  sub_2681433DC(&v218, &qword_2802513F0, &qword_2683E3290);
  v54 = *(v44 + 8);
  v194 = v48;
  v210 = v42;
  v54(v48, v42);
  if (v222 != 255)
  {
    sub_2682B1BD8(&v221, &v218);
    v73 = v203;
    v74 = v205;
    v75 = v202;
    v76 = v204;
    switch(v220)
    {
      case 1:
        v122 = v218;
        v123 = v199;
        *v199 = v218;
        OUTLINED_FUNCTION_25_16();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_32_10();
        swift_beginAccess();
        v124 = OUTLINED_FUNCTION_12_18();
        v125(v124, v123, v53);
        swift_endAccess();
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_25();
          swift_once();
        }

        v126 = sub_2683CF7E8();
        __swift_project_value_buffer(v126, qword_28027C958);
        OUTLINED_FUNCTION_22_15();
        OUTLINED_FUNCTION_23_18();
        v127();
        v128 = sub_2683CF7C8();
        v129 = sub_2683CFE98();
        if (os_log_type_enabled(v128, v129))
        {
          v130 = OUTLINED_FUNCTION_35_8();
          OUTLINED_FUNCTION_86_0();
          v131 = swift_slowAlloc();
          v216 = v131;
          *v130 = 134218242;
          *(v130 + 4) = v122;
          *(v130 + 12) = 2080;
          OUTLINED_FUNCTION_11_28();
          sub_2683CCB88();
          OUTLINED_FUNCTION_20_20();
          OUTLINED_FUNCTION_24_13();
          v132 = OUTLINED_FUNCTION_39_9();
          v133(v132);
          v134 = OUTLINED_FUNCTION_9_0();
          v137 = sub_2681610A0(v134, v135, v136);

          *(v130 + 14) = v137;
          _os_log_impl(&dword_2680EB000, v128, v129, "[NotebookDisambiguationAdapter] Got selected index %ld from input, returning .handle() for input: %s", v130, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v131);
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
        }

        else
        {

          v147 = OUTLINED_FUNCTION_39_9();
          v148(v147);
        }

        OUTLINED_FUNCTION_15_21();
        sub_2683CC2A8();
        return sub_2681433DC(&v221, &qword_2802513F8, &qword_2683E3298);
      case 2:
        v107 = v218;
        OUTLINED_FUNCTION_43_7(*v219, *&v219[16]);
        *v217 = *&v219[32];
        *&v217[9] = *&v219[41];
        OUTLINED_FUNCTION_32_10();
        if ((OUTLINED_FUNCTION_26_14() & 1) == 0)
        {
          goto LABEL_25;
        }

        v108 = v189[1];
        sub_2682B2B08(v107);
        v109 = v191;
        if (__swift_getEnumTagSinglePayload(v108, 1, v191) == 1)
        {
          sub_2681433DC(v108, &qword_28024DD28, &qword_2683D4CF0);
        }

        else
        {
          v149 = v189[0];
          v150 = v108;
          v151 = v190;
          (*(v189[0] + 32))(v190, v150, v109);
          if (*(v107 + 16) == 1)
          {

            if (qword_28024C8E0 != -1)
            {
              OUTLINED_FUNCTION_0_25();
              swift_once();
            }

            v152 = sub_2683CF7E8();
            __swift_project_value_buffer(v152, qword_28027C958);
            v153 = *(v149 + 16);
            v213 = (v149 + 16);
            v209 = v153;
            v153(v75, v190, v109);
            v154 = v205;
            (*(v73 + 16))(v76, v214, v205);
            v155 = sub_2683CF7C8();
            v156 = sub_2683CFE98();
            v157 = OUTLINED_FUNCTION_29_12();
            if (os_log_type_enabled(v157, v158))
            {
              v159 = OUTLINED_FUNCTION_35_8();
              v160 = swift_slowAlloc();
              OUTLINED_FUNCTION_40_9(v160);
              *v159 = 136315394;
              sub_2682B1C48();
              v208 = v155;
              v161 = sub_2683D0568();
              v162 = v75;
              v164 = v163;
              LODWORD(v207) = v156;
              v165 = *(v149 + 8);
              v165(v162, v109);
              v166 = v165;
              v167 = sub_2681610A0(v161, v164, v215);

              *(v159 + 4) = v167;
              *(v159 + 12) = 2080;
              OUTLINED_FUNCTION_11_28();
              v168 = v204;
              sub_2683CCB88();
              OUTLINED_FUNCTION_20_20();
              OUTLINED_FUNCTION_24_13();
              v169(v168, v154);
              v170 = OUTLINED_FUNCTION_9_0();
              v173 = sub_2681610A0(v170, v171, v172);

              *(v159 + 14) = v173;
              v109 = v191;
              v174 = v208;
              _os_log_impl(&dword_2680EB000, v208, v207, "[NotebookDisambiguationAdapter] Got selected USO entity %s from input, returning .handle() for input: %s", v159, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_31_5();
              MEMORY[0x26D617A40]();
              OUTLINED_FUNCTION_31_5();
              MEMORY[0x26D617A40]();
            }

            else
            {

              (*(v73 + 8))(v76, v154);
              v174 = *(v149 + 8);
              (v174)(v75, v109);
              v166 = v174;
            }

            v184 = v199;
            v185 = v190;
            v209(v199, v190, v109);
            OUTLINED_FUNCTION_25_16();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_48_6();
            v186 = OUTLINED_FUNCTION_12_18();
            v187(v186, v184, v174);
            swift_endAccess();
            OUTLINED_FUNCTION_15_21();
            sub_2683CC2A8();
            v166(v185, v109);
LABEL_56:
            sub_2681433DC(&v216, &qword_28024D460, &qword_2683D5050);
            return sub_2681433DC(&v221, &qword_2802513F8, &qword_2683E3298);
          }

          (*(v149 + 8))(v151, v109);
        }

        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_25();
          swift_once();
        }

        v178 = sub_2683CF7E8();
        v179 = __swift_project_value_buffer(v178, qword_28027C958);

        v180 = sub_2683CF7C8();
        v181 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_11_9(v181))
        {
          OUTLINED_FUNCTION_87_0();
          v182 = swift_slowAlloc();
          *v182 = 134217984;
          v183 = *(v107 + 16);

          *(v182 + 4) = v183;

          _os_log_impl(&dword_2680EB000, v180, v179, "[NotebookDisambiguationAdapter] Got %ld potential matches from follow-up parse: needs another disambiguation, returning .ignore", v182, 0xCu);
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        OUTLINED_FUNCTION_15_21();
        sub_2683CC2B8();
        goto LABEL_56;
      case 3:
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_25();
          swift_once();
        }

        v110 = sub_2683CF7E8();
        __swift_project_value_buffer(v110, qword_28027C958);
        OUTLINED_FUNCTION_22_15();
        v111 = v193;
        OUTLINED_FUNCTION_23_18();
        v112();
        v113 = sub_2683CF7C8();
        v114 = sub_2683CFE98();
        if (os_log_type_enabled(v113, v114))
        {
          OUTLINED_FUNCTION_87_0();
          v115 = swift_slowAlloc();
          OUTLINED_FUNCTION_86_0();
          v116 = swift_slowAlloc();
          v216 = v116;
          *v115 = 136315138;
          OUTLINED_FUNCTION_11_28();
          sub_2683CCB88();
          OUTLINED_FUNCTION_20_20();
          OUTLINED_FUNCTION_24_13();
          v117(v111, v74);
          v118 = OUTLINED_FUNCTION_9_0();
          v121 = sub_2681610A0(v118, v119, v120);

          *(v115 + 4) = v121;
          _os_log_impl(&dword_2680EB000, v113, v114, "[NotebookDisambiguationAdapter] Returning .cancel() for input: %s", v115, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v116);
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
        }

        else
        {

          (*(v73 + 8))(v111, v74);
        }

        OUTLINED_FUNCTION_15_21();
        sub_2683CC298();
        return sub_2681433DC(&v221, &qword_2802513F8, &qword_2683E3298);
      default:
        v78 = v218;
        v77 = *v219;
        OUTLINED_FUNCTION_43_7(*&v219[8], *&v219[24]);
        *v217 = *&v219[40];
        *&v217[9] = *&v219[49];
        OUTLINED_FUNCTION_32_10();
        if ((OUTLINED_FUNCTION_26_14() & 1) == 0)
        {
LABEL_25:
          sub_2681433DC(&v216, &qword_28024D460, &qword_2683D5050);

          break;
        }

        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_25();
          swift_once();
        }

        v79 = sub_2683CF7E8();
        __swift_project_value_buffer(v79, qword_28027C958);
        OUTLINED_FUNCTION_22_15();
        v80 = v189[2];
        OUTLINED_FUNCTION_23_18();
        v81();

        v82 = sub_2683CF7C8();
        v83 = sub_2683CFE98();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = OUTLINED_FUNCTION_35_8();
          v85 = swift_slowAlloc();
          OUTLINED_FUNCTION_40_9(v85);
          *v84 = 136315394;
          *(v84 + 4) = sub_2681610A0(v78, v77, v215);
          *(v84 + 12) = 2080;
          v53 = v80;
          OUTLINED_FUNCTION_11_28();
          sub_2683CCB88();
          v86 = OUTLINED_FUNCTION_20_20();
          v87 = v78;
          v89 = v88;
          (*(v73 + 8))(v53, v205);
          v90 = sub_2681610A0(v86, v89, v215);
          v78 = v87;

          *(v84 + 14) = v90;
          _os_log_impl(&dword_2680EB000, v82, v83, "[NotebookDisambiguationAdapter] Got selected id %s from input, returning .handle() for input: %s", v84, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
        }

        else
        {

          (*(v73 + 8))(v80, v74);
        }

        v175 = v199;
        *v199 = v78;
        v175[1] = v77;
        OUTLINED_FUNCTION_25_16();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_32_10();
        OUTLINED_FUNCTION_48_6();
        v176 = OUTLINED_FUNCTION_12_18();
        v177(v176, v175, v53);
        swift_endAccess();
        OUTLINED_FUNCTION_15_21();
        sub_2683CC2A8();
        goto LABEL_56;
    }
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v55 = sub_2683CF7E8();
  v56 = __swift_project_value_buffer(v55, qword_28027C958);
  v57 = sub_2683CF7C8();
  v58 = sub_2683CFE98();
  v59 = OUTLINED_FUNCTION_29_12();
  v61 = os_log_type_enabled(v59, v60);
  v62 = v208;
  v63 = v212;
  v64 = v207;
  if (v61)
  {
    v65 = OUTLINED_FUNCTION_21_5();
    *v65 = 0;
    _os_log_impl(&dword_2680EB000, v57, v58, "[NotebookDisambiguationAdapter] Input does not have a selected ID or the parse does not belong to this intent, trying fallback search", v65, 2u);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
  }

  v66 = *&v63[*(*v63 + 128)];
  v67 = v206;
  if (!v66)
  {
    v68 = v56;
    v69 = sub_2683CF7C8();
    v91 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_11_9(v91))
    {
      v92 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v92);
      v72 = "[NotebookDisambiguationAdapter] No cached items to search. Ignoring parse.";
      goto LABEL_18;
    }

LABEL_19:

    OUTLINED_FUNCTION_15_21();
    sub_2683CC2B8();
    return sub_2681433DC(&v221, &qword_2802513F8, &qword_2683E3298);
  }

  (*(v209 + 10))(v66, v214, v213);
  if (__swift_getEnumTagSinglePayload(v67, 1, v62) == 1)
  {
    (*(v195 + 8))(v67, v196);
    v68 = v56;
    v69 = sub_2683CF7C8();
    v70 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_11_9(v70))
    {
      v71 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v71);
      v72 = "[NotebookDisambiguationAdapter] Fallback search did not succeed. Ignoring parse.";
LABEL_18:
      _os_log_impl(&dword_2680EB000, v69, v68, v72, v63, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v93 = isa;
  v94 = v198;
  (*(isa + 4))(v198, v67, v62);
  v95 = *(v93 + 2);
  v95(v64, v94, v62);
  v96 = v56;
  v97 = sub_2683CF7C8();
  v98 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_11_9(v98))
  {
    OUTLINED_FUNCTION_87_0();
    v99 = v93;
    v100 = swift_slowAlloc();
    OUTLINED_FUNCTION_86_0();
    v213 = swift_slowAlloc();
    v218 = v213;
    *v100 = 136315138;
    v95(v192, v64, v62);
    v101 = sub_2683CFAD8();
    v103 = v102;
    v104 = OUTLINED_FUNCTION_28_12(*(v99 + 1));
    v105(v104);
    v106 = sub_2681610A0(v101, v103, &v218);

    *(v100 + 4) = v106;
    _os_log_impl(&dword_2680EB000, v97, v96, "[NotebookDisambiguationAdapter] Chose item with fallback search: %s. Handling input", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v213);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
  }

  else
  {

    v138 = OUTLINED_FUNCTION_28_12(*(v93 + 1));
    v139(v138);
  }

  v140 = v198;
  v141 = v198[1];
  v142 = v199;
  *v199 = *v198;
  v142[1] = v141;
  v143 = v201;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_32_10();
  v145 = *(v144 + 120);
  swift_beginAccess();
  v146 = *(v200 + 40);

  v146(&v63[v145], v142, v143);
  swift_endAccess();
  OUTLINED_FUNCTION_15_21();
  sub_2683CC2A8();
  v214(v140, v62);
  return sub_2681433DC(&v221, &qword_2802513F8, &qword_2683E3298);
}

uint64_t sub_2682AE9E4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_2683CC738();
  result = sub_2681E290C(v3, v4);
  if (result != 8)
  {
    v12 = &type metadata for AddTasks.Parameter;
    v13 = &off_287903B10;
LABEL_9:
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *a2 = result;
    return result;
  }

  v6 = sub_2683CC738();
  result = sub_268381174(v6);
  if (result != 7)
  {
    v12 = &type metadata for SetTaskAttribute.Parameter;
    v13 = &off_28790CBF0;
    goto LABEL_9;
  }

  v7 = sub_2683CC738();
  result = sub_268201068(v7, v8);
  if (result == 2)
  {
    v9 = sub_2683CC738();
    result = sub_2683B48FC(v9);
    if (result == 3)
    {
      v10 = sub_2683CC738();
      result = sub_26818CD7C(v10, v11);
      if (result == 10)
      {
        *(a2 + 32) = 0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return result;
      }

      v12 = &type metadata for SearchForNotebookItems.Parameter;
      v13 = &off_287900F98;
    }

    else
    {
      v12 = &type metadata for CreateNote.Parameter;
      v13 = &off_28790DD70;
    }

    goto LABEL_9;
  }

  *(a2 + 24) = &type metadata for SnoozeTasks.Parameter;
  *(a2 + 32) = &off_2879048D8;
  *a2 = result & 1;
  return result;
}

uint64_t sub_2682AEAEC(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  OUTLINED_FUNCTION_21_16();
  v2[15] = *(v3 + 88);
  OUTLINED_FUNCTION_21_16();
  v2[16] = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[17] = AssociatedTypeWitness;
  v2[18] = type metadata accessor for IdentifiableItem(0, AssociatedTypeWitness, v6, v7);
  v2[19] = swift_task_alloc();
  OUTLINED_FUNCTION_21_16();
  v2[20] = v8;
  v2[21] = OUTLINED_FUNCTION_55();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2682AEC20);
}

uint64_t sub_2682AEC20()
{
  v1 = *(v0 + 112);
  *(v0 + 96) = sub_2683CF9A8();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_47_3();
  sub_2683CC9F8();
  v2 = sub_2683CC9D8();
  v3 = [v2 disambiguationItems];

  v4 = sub_2683CFCA8();
  *(v0 + 184) = v4;

  v5 = *(v4 + 16);
  *(v0 + 192) = v5;
  *(v0 + 200) = *(*v1 + 96);
  *(v0 + 208) = 0;
  result = *(v0 + 184);
  if (!v5)
  {
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);

    v20 = *(v0 + 96);
    OUTLINED_FUNCTION_14_16();
    *(v18 + *(v21 + 128)) = v20;

    sub_2683CCAD8();
    sub_2682AF470(v19);
    sub_2683CCAE8();

    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_10_5();

    __asm { BRAA            X2, X16 }
  }

  if (*(result + 16))
  {
    v25 = *(v0 + 120);
    sub_26813CC6C(result + 32, v0 + 24);
    *(v0 + 56) = 0;
    sub_268161678((v0 + 24), (v0 + 64));
    v7 = sub_2682AF328(v0 + 64);
    OUTLINED_FUNCTION_19_21(v7, v8, v9, v10, v11, v12, v13, v14, v24, v25);
    v15 = swift_task_alloc();
    *(v0 + 232) = v15;
    *v15 = v0;
    OUTLINED_FUNCTION_5_29(v15);
    OUTLINED_FUNCTION_10_5();

    __asm { BRAA            X8, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_2682AEEBC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v3 + 240) = v0;

  if (v0)
  {

    v6 = sub_2682AF294;
  }

  else
  {
    v6 = sub_2682AEFE8;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2682AEFE8()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  (*(v3 + 16))(v2, v1, v4);
  v5 = OUTLINED_FUNCTION_9_0();
  sub_268376A90(v5, v6, v2, v4, v7);
  sub_2683CFD28();
  sub_2683CFD18();
  (*(v3 + 8))(v1, v4);
  result = sub_2681433DC(v0 + 56, &qword_2802513E8, &unk_2683E3280);
  v9 = *(v0 + 208) + 1;
  *(v0 + 208) = v9;
  if (v9 == *(v0 + 192))
  {
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);

    v12 = *(v0 + 96);
    OUTLINED_FUNCTION_14_16();
    *(v10 + *(v13 + 128)) = v12;

    sub_2683CCAD8();
    sub_2682AF470(v11);
    sub_2683CCAE8();

    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_10_5();

    __asm { BRAA            X2, X16 }
  }

  v16 = *(v0 + 184);
  if (v9 < *(v16 + 16))
  {
    v29 = *(v0 + 120);
    sub_26813CC6C(v16 + 32 * v9 + 32, v0 + 24);
    *(v0 + 56) = v9;
    sub_268161678((v0 + 24), (v0 + 64));
    v17 = sub_2682AF328(v0 + 64);
    OUTLINED_FUNCTION_19_21(v17, v18, v19, v20, v21, v22, v23, v24, v28, v29);
    v25 = swift_task_alloc();
    *(v0 + 232) = v25;
    *v25 = v0;
    OUTLINED_FUNCTION_5_29(v25);
    OUTLINED_FUNCTION_10_5();

    __asm { BRAA            X8, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_2682AF294()
{
  OUTLINED_FUNCTION_7();
  sub_2681433DC(v0 + 56, &qword_2802513E8, &unk_2683E3280);

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_2682AF328(uint64_t a1)
{
  v2 = sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  sub_26813CC6C(a1, v13);
  sub_2682B1B94();
  if (swift_dynamicCast() && (v9 = [v12 identifier], v12, v9))
  {
    v10 = sub_2683CFA78();
  }

  else
  {
    sub_2683CB588();
    v10 = sub_2683CB548();
    (*(v4 + 8))(v8, v2);
  }

  return v10;
}

uint64_t sub_2682AF470(uint64_t a1)
{
  v3 = *v1;
  sub_2683CC668();
  OUTLINED_FUNCTION_0_3();
  v26 = v5;
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  v9 = *(v3 + 88);
  v10 = *(v3 + 80);
  v11 = (*(v9 + 40))(a1, v10, v9);
  v12 = OUTLINED_FUNCTION_39_9();
  __swift_project_boxed_opaque_existential_1(v12, v13);
  if (sub_2683CC0D8())
  {
    v14 = 1;
    if (v11)
    {
LABEL_3:
      v15 = v14 ^ 1;
      v16 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_39_9();
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v9 + 32))(v10, v9);
    v14 = sub_2683CC098();
    (*(v26 + 8))(v8, v27);
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v16 = 0;
LABEL_6:
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v19 = sub_2683CF7E8();
  __swift_project_value_buffer(v19, qword_28027C958);
  v20 = sub_2683CF7C8();
  v21 = sub_2683CFE98();
  v22 = OUTLINED_FUNCTION_29_12();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109632;
    *(v24 + 4) = v15 & 1;
    *(v24 + 8) = 1024;
    *(v24 + 10) = v16;
    *(v24 + 14) = 1024;
    *(v24 + 16) = v14 & 1;
    _os_log_impl(&dword_2680EB000, v20, v21, "[NotebookDisambiguationAdapter] Will Unlock before disambiguation: %{BOOL}d, wantsUnlock: %{BOOL}d, isAuthenticated: %{BOOL}d", v24, 0x14u);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
  }

  return v15 & 1;
}

uint64_t sub_2682AF70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x2822009F8](sub_2682AF758);
}

uint64_t sub_2682AF758()
{
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);
  v3 = sub_2683CF7C8();
  v4 = sub_2683CFE98();
  v5 = OUTLINED_FUNCTION_29_12();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_32_5(v7);
    _os_log_impl(&dword_2680EB000, v3, v4, "[NotebookDisambiguationAdapter] Making disambiguation prompt", v0, 2u);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
  }

  v8 = v1[6];

  v11 = v8 + 80;
  v10 = *(v8 + 80);
  v9 = *(v11 + 8);
  v17 = (*(v9 + 64) + **(v9 + 64));
  v12 = swift_task_alloc();
  v1[7] = v12;
  *v12 = v1;
  v12[1] = sub_2682AF930;
  v13 = v1[3];
  v14 = v1[4];
  v15 = v1[2];

  return v17(v15, v13, v14, v10, v9);
}

uint64_t sub_2682AF930()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_2682AFA14()
{
  OUTLINED_FUNCTION_7();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  OUTLINED_FUNCTION_21_16();
  v6 = *(v5 + 88);
  v1[13] = v6;
  OUTLINED_FUNCTION_21_16();
  v8 = *(v7 + 80);
  v1[14] = v8;
  v1[15] = OUTLINED_FUNCTION_49_7(v9, v10, v11, v12, &unk_2684059A0);
  v13 = sub_2683CC628();
  v1[16] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v1[17] = v14;
  v1[18] = swift_task_alloc();
  v15 = sub_2683CF8B8();
  v1[19] = v15;
  OUTLINED_FUNCTION_3_1(v15);
  v1[20] = v16;
  v17 = swift_task_alloc();
  v1[21] = v17;
  v21 = OUTLINED_FUNCTION_49_7(v17, v18, v19, v20, &unk_268405998);
  v24 = type metadata accessor for IdentifiableItem(255, v21, v22, v23);
  v1[22] = v24;
  v25 = sub_2683CC888();
  v1[23] = v25;
  OUTLINED_FUNCTION_3_1(v25);
  v1[24] = v26;
  v1[25] = OUTLINED_FUNCTION_55();
  v1[26] = swift_task_alloc();
  v27 = sub_2683CFFA8();
  v1[27] = v27;
  OUTLINED_FUNCTION_3_1(v27);
  v1[28] = v28;
  v1[29] = OUTLINED_FUNCTION_55();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = *(v24 - 8);
  v1[33] = OUTLINED_FUNCTION_55();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v30 = type metadata accessor for NotebookDisambiguationAdapter.State(0, v8, v6, v29);
  v1[36] = v30;
  OUTLINED_FUNCTION_3_1(v30);
  v1[37] = v31;
  v1[38] = OUTLINED_FUNCTION_55();
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2682AFD14);
}

uint64_t sub_2682AFD14()
{
  v90 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = *(v0 + 96);
  v5 = *(*v4 + 120);
  swift_beginAccess();
  v6 = *(v3 + 16);
  v6(v1, v4 + v5, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v51 = *(v0 + 176);
      v52 = *(v0 + 240);
      v53 = **(v0 + 312);
      sub_2683CC878();
      sub_2683851F4(0, v51, v52);

      if (__swift_getEnumTagSinglePayload(v52, 1, v51) != 1)
      {
        v80 = *(v0 + 272);
        v81 = *(v0 + 88);
        v82 = *(v0 + 72);
        (*(*(v0 + 256) + 32))(v80, *(v0 + 240), *(v0 + 176));
        sub_2682B09DC(v80, v81, v82);
        goto LABEL_30;
      }

      (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_25();
        swift_once();
      }

      v55 = *(v0 + 192);
      v54 = *(v0 + 200);
      v56 = *(v0 + 184);
      v57 = *(v0 + 80);
      v58 = sub_2683CF7E8();
      __swift_project_value_buffer(v58, qword_28027C958);
      (*(v55 + 16))(v54, v57, v56);
      v59 = sub_2683CF7C8();
      v60 = sub_2683CFE78();
      v61 = os_log_type_enabled(v59, v60);
      v63 = *(v0 + 192);
      v62 = *(v0 + 200);
      v64 = *(v0 + 184);
      if (v61)
      {
        v65 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_86_0();
        v66 = swift_slowAlloc();
        *&v89[0] = v66;
        *v65 = 134218242;
        *(v65 + 4) = v53;
        *(v65 + 12) = 2080;
        *(v0 + 48) = sub_2683CC878();
        sub_2683CFD28();
        OUTLINED_FUNCTION_8_26();
        swift_getWitnessTable();
        v67 = sub_2683CFAE8();
        v69 = v68;
        (*(v63 + 8))(v62, v64);
        v70 = sub_2681610A0(v67, v69, v89);

        *(v65 + 14) = v70;
        _os_log_impl(&dword_2680EB000, v59, v60, "[NotebookDisambiguationAdapter] Could not find item at index %ld in %s", v65, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v66);
        OUTLINED_FUNCTION_31_5();
        MEMORY[0x26D617A40]();
        OUTLINED_FUNCTION_31_5();
        MEMORY[0x26D617A40]();
      }

      else
      {

        (*(v63 + 8))(v62, v64);
      }

      goto LABEL_18;
    case 2u:
      v30 = *(v0 + 232);
      v32 = (v0 + 176);
      v31 = *(v0 + 176);
      v33 = *(v0 + 168);
      v86 = *(v0 + 104);
      (*(*(v0 + 160) + 32))(v33, *(v0 + 312), *(v0 + 152));
      *(v0 + 40) = sub_2683CC878();
      v34 = swift_task_alloc();
      v34[1] = vextq_s8(v86, v86, 8uLL);
      v34[2].i64[0] = v33;
      sub_2683CFD28();
      OUTLINED_FUNCTION_9_23();
      swift_getWitnessTable();
      sub_2683CFC38();

      if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
      {
        (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_25();
          swift_once();
        }

        v35 = sub_2683CF7E8();
        __swift_project_value_buffer(v35, qword_28027C958);
        v36 = sub_2683CF7C8();
        v37 = sub_2683CFE78();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = OUTLINED_FUNCTION_21_5();
          OUTLINED_FUNCTION_32_5(v38);
          _os_log_impl(&dword_2680EB000, v36, v37, "[NotebookDisambiguationAdapter] Selected entity resolution failed, re-trying", 0, 2u);
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
        }

        v39 = (v0 + 144);
        v32 = (v0 + 128);

        sub_2683CC9F8();
        memset(v89, 0, sizeof(v89));
        sub_2683CC9C8();
        sub_2683CC618();
        sub_2683CC778();
        v40 = v0 + 136;
      }

      else
      {
        v39 = (v0 + 264);
        v40 = v0 + 256;
        v71 = *(v0 + 264);
        v72 = *(v0 + 88);
        v73 = *(v0 + 72);
        (*(*(v0 + 256) + 32))(v71, *(v0 + 232), *(v0 + 176));
        sub_2682B09DC(v71, v72, v73);
      }

      (*(*v40 + 8))(*v39, *v32);
      goto LABEL_30;
    case 3u:
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_25();
        swift_once();
      }

      v41 = sub_2683CF7E8();
      __swift_project_value_buffer(v41, qword_28027C958);

      v42 = sub_2683CF7C8();
      v43 = sub_2683CFE88();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = *(v0 + 304);
        v45 = *(v0 + 288);
        OUTLINED_FUNCTION_87_0();
        v46 = swift_slowAlloc();
        OUTLINED_FUNCTION_86_0();
        v88 = swift_slowAlloc();
        *&v89[0] = v88;
        *v46 = 136315138;
        v6(v44, v4 + v5, v45);
        v47 = sub_2683CFAD8();
        v49 = sub_2681610A0(v47, v48, v89);

        *(v46 + 4) = v49;
        _os_log_impl(&dword_2680EB000, v42, v43, "[NotebookDisambiguationAdapter] handled called in invalid state: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v88);
        OUTLINED_FUNCTION_31_5();
        MEMORY[0x26D617A40]();
        OUTLINED_FUNCTION_31_5();
        MEMORY[0x26D617A40]();
      }

      goto LABEL_18;
    default:
      v7 = *(v0 + 312);
      v8 = *(v0 + 248);
      v9 = *(v0 + 176);
      v11 = *v7;
      v10 = v7[1];
      v87 = *(v0 + 104);
      *(v0 + 56) = sub_2683CC878();
      v12 = swift_task_alloc();
      v12[1] = vextq_s8(v87, v87, 8uLL);
      v12[2].i64[0] = v11;
      v12[2].i64[1] = v10;
      sub_2683CFD28();
      OUTLINED_FUNCTION_9_23();
      swift_getWitnessTable();
      sub_2683CFC38();

      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_25();
          swift_once();
        }

        v13 = *(v0 + 208);
        v14 = *(v0 + 184);
        v15 = *(v0 + 192);
        v16 = *(v0 + 80);
        v17 = sub_2683CF7E8();
        __swift_project_value_buffer(v17, qword_28027C958);
        (*(v15 + 16))(v13, v16, v14);

        v18 = sub_2683CF7C8();
        v19 = sub_2683CFE78();

        v20 = os_log_type_enabled(v18, v19);
        v21 = *(v0 + 208);
        v23 = *(v0 + 184);
        v22 = *(v0 + 192);
        if (v20)
        {
          v24 = OUTLINED_FUNCTION_35_8();
          *&v89[0] = swift_slowAlloc();
          *v24 = 136315394;
          v25 = sub_2681610A0(v11, v10, v89);

          *(v24 + 4) = v25;
          *(v24 + 12) = 2080;
          *(v0 + 64) = sub_2683CC878();
          OUTLINED_FUNCTION_8_26();
          swift_getWitnessTable();
          v26 = sub_2683CFAE8();
          v28 = v27;
          (*(v22 + 8))(v21, v23);
          v29 = sub_2681610A0(v26, v28, v89);

          *(v24 + 14) = v29;
          _os_log_impl(&dword_2680EB000, v18, v19, "[NotebookDisambiguationAdapter] Could not find matching item for id '%s' in %s", v24, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
        }

        else
        {

          (*(v22 + 8))(v21, v23);
        }

LABEL_18:
        sub_26812C6B8();
        swift_allocError();
        *v50 = 0u;
        *(v50 + 16) = 0u;
        *(v50 + 32) = 4;
        swift_willThrow();
        OUTLINED_FUNCTION_38_9();

        OUTLINED_FUNCTION_40();
      }

      else
      {
        v74 = *(v0 + 280);
        v75 = *(v0 + 248);
        v76 = *(v0 + 256);
        v77 = *(v0 + 176);
        v78 = *(v0 + 88);
        v79 = *(v0 + 72);

        (*(v76 + 32))(v74, v75, v77);
        sub_2682B09DC(v74, v78, v79);
LABEL_30:
        OUTLINED_FUNCTION_38_9();
        (*(v84 + 8))();

        OUTLINED_FUNCTION_40();
      }

      return v83();
  }
}

uint64_t sub_2682B090C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a2 && a1[1] == a3)
  {
    return 1;
  }

  else
  {
    return sub_2683D0598() & 1;
  }
}

uint64_t sub_2682B0964(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 == sub_2683CF878() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2683D0598();
  }

  return v5 & 1;
}

void *sub_2682B09DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v62 = a3;
  OUTLINED_FUNCTION_21_16();
  v6 = *(v5 + 88);
  v63 = v3;
  v8 = *(v7 + 80);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_47_3();
  v59 = v9;
  sub_2683CC628();
  OUTLINED_FUNCTION_0_3();
  v60 = v11;
  v61 = v10;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  v58 = v13;
  v64 = v8;
  v65 = v6;
  swift_getAssociatedTypeWitness();
  v14 = OUTLINED_FUNCTION_47_3();
  v57 = v15;
  v18 = type metadata accessor for IdentifiableItem(v14, v15, v16, v17);
  OUTLINED_FUNCTION_0_3();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = v56 - v25;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v27 = sub_2683CF7E8();
  v28 = __swift_project_value_buffer(v27, qword_28027C958);
  v29 = *(v20 + 16);
  v68 = a1;
  v29(v26, a1, v18);
  v56[1] = v28;
  v30 = sub_2683CF7C8();
  v31 = sub_2683CFE98();
  v32 = OUTLINED_FUNCTION_29_12();
  if (os_log_type_enabled(v32, v33))
  {
    OUTLINED_FUNCTION_87_0();
    v34 = swift_slowAlloc();
    OUTLINED_FUNCTION_86_0();
    v56[0] = swift_slowAlloc();
    v69[0] = v56[0];
    *v34 = 136315138;
    v29(v23, v26, v18);
    v35 = sub_2683CFAD8();
    v37 = v36;
    (*(v20 + 8))(v26, v18);
    v38 = sub_2681610A0(v35, v37, v69);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_2680EB000, v30, v31, "[NotebookDisambiguationAdapter] Selected item: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56[0]);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
  }

  else
  {

    (*(v20 + 8))(v26, v18);
  }

  v39 = *(v18 + 28);
  v40 = v67;
  v41 = v68;
  result = (*(v65 + 56))(v68 + v39, v66, v64);
  if (!v40)
  {
    v43 = result;
    v44 = sub_2683CF7C8();
    v45 = sub_2683CFE98();

    if (os_log_type_enabled(v44, v45))
    {
      OUTLINED_FUNCTION_87_0();
      v46 = swift_slowAlloc();
      OUTLINED_FUNCTION_86_0();
      v67 = swift_slowAlloc();
      v69[0] = v67;
      *v46 = 136315138;
      v69[5] = v43;
      v47 = v43;
      swift_getWitnessTable();
      v48 = sub_2683CFAE8();
      v50 = sub_2681610A0(v48, v49, v69);
      v41 = v68;

      *(v46 + 4) = v50;
      _os_log_impl(&dword_2680EB000, v44, v45, "[NotebookDisambiguationAdapter] Updated Intent with selection: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    v51 = v57;
    v69[3] = v57;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v69);
    (*(*(v51 - 8) + 16))(boxed_opaque_existential_0, v41 + v39, v51);
    v53 = v43;
    v54 = v58;
    sub_2683CC618();
    v55 = v61;
    sub_2683CC778();

    return (*(v60 + 8))(v54, v55);
  }

  return result;
}

uint64_t *sub_2682B0EE4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 96), v2);
  OUTLINED_FUNCTION_14_16();
  __swift_destroy_boxed_opaque_existential_0((v0 + *(v3 + 104)));
  OUTLINED_FUNCTION_14_16();

  OUTLINED_FUNCTION_14_16();
  v5 = *(v4 + 120);
  type metadata accessor for NotebookDisambiguationAdapter.State(0, v2, *(v1 + 88), v6);
  OUTLINED_FUNCTION_0_9();
  (*(v7 + 8))(v0 + v5);
  OUTLINED_FUNCTION_14_16();

  return v0;
}

uint64_t sub_2682B1008()
{
  sub_2682B0EE4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2682B1098(uint64_t a1)
{
  result = sub_2683CF8B8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2682B1110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NotebookDisambiguationAdapter(0, *(a2 + 80), *(a2 + 88), a4);

  JUMPOUT(0x26D612550);
}

uint64_t sub_2682B1194(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2682B1230;

  return sub_2682AEAEC(a2);
}

uint64_t sub_2682B1230()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_2682B1330()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2682B1CA0;

  return sub_2682AFA14();
}

uint64_t sub_2682B13E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2682B1498;

  return sub_2682AF70C(a1, a2, a3);
}

uint64_t sub_2682B1498()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_2682B157C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for NotebookDisambiguationAdapter(0, *(a4 + 80), *(a4 + 88), v12);
  *v11 = v5;
  v11[1] = sub_2682B1CA0;

  return MEMORY[0x2821B9F38](a1, a2, a3, v13, a5);
}

uint64_t sub_2682B165C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for NotebookDisambiguationAdapter(0, *(a4 + 80), *(a4 + 88), v12);
  *v11 = v5;
  v11[1] = sub_2682B1CA0;

  return MEMORY[0x2821B9F48](a1, a2, a3, v13, a5);
}

uint64_t sub_2682B173C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v11 = type metadata accessor for NotebookDisambiguationAdapter(0, *(a3 + 80), *(a3 + 88), v10);
  *v9 = v4;
  v9[1] = sub_2682B1CA0;

  return MEMORY[0x2821B9F40](a1, a2, v11, a4);
}

uint64_t sub_2682B180C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v11 = type metadata accessor for NotebookDisambiguationAdapter(0, *(a3 + 80), *(a3 + 88), v10);
  *v9 = v4;
  v9[1] = sub_2682B1CA0;

  return MEMORY[0x2821B9F58](a1, a2, v11, a4);
}

uint64_t sub_2682B18DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for NotebookDisambiguationAdapter(0, *(a2 + 80), *(a2 + 88), a4);

  return MEMORY[0x2821B9F50](a1, v6, a3);
}

uint64_t sub_2682B1934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v15 = type metadata accessor for NotebookDisambiguationAdapter(0, *(a5 + 80), *(a5 + 88), v14);
  *v13 = v6;
  v13[1] = sub_2682B1CA0;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v15, a6);
}

uint64_t sub_2682B1A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v17 = type metadata accessor for NotebookDisambiguationAdapter(0, *(a6 + 80), *(a6 + 88), v16);
  *v15 = v7;
  v15[1] = sub_2682B1CA0;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v17, a7);
}

unint64_t sub_2682B1B94()
{
  result = qword_280253320;
  if (!qword_280253320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280253320);
  }

  return result;
}

uint64_t sub_2682B1BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802513F8, &qword_2683E3298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2682B1C48()
{
  result = qword_280251400;
  if (!qword_280251400)
  {
    sub_2683CF8B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251400);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 216) = a1;
  *(v10 + 224) = a2;
  return a10 + 48;
}

uint64_t OUTLINED_FUNCTION_20_20()
{

  return sub_2683CFAD8();
}

uint64_t OUTLINED_FUNCTION_26_14()
{
  v2 = *(v0 - 360);
  v3 = *(v0 - 392);

  return sub_2682225C8(v0 - 320, v2, v3);
}

uint64_t OUTLINED_FUNCTION_28_12@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 352) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_40_9(uint64_t result)
{
  *(v1 - 352) = result;
  *(v1 - 344) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_48_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_49_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_50_6()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_2682B1EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x2822009F8](sub_2682B1F18);
}

uint64_t sub_2682B1F18()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = [objc_allocWithZone(MEMORY[0x277D4C450]) init];
  sub_2682B2000(v3, v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E868, &qword_2683D8210);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2683D1EC0;
  *(v5 + 32) = sub_26839EEEC(v4, v2, MEMORY[0x277D84F90]);
  *(v5 + 40) = v6;

  v7 = v0[1];

  return v7(v5);
}

void sub_2682B2000(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CB448();
  [a3 setMapsData_];
}

uint64_t sub_2682B2068()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBDB60]) init];
  sub_2683ABCA0(v0);
  if (v2)
  {
    v3 = sub_2683CFA68();

    [v1 setStreet_];
  }

  sub_2683ABCB8(v0);
  if (v4)
  {
    v5 = sub_2683CFA68();

    [v1 setCity_];
  }

  v6 = [v0 postalAddress];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 state];

    if (!v8)
    {
      sub_2683CFA78();
      v8 = sub_2683CFA68();
    }

    [v1 setState_];
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CBDB80]) init];
  [v9 setStyle_];
  v10 = [v9 stringFromPostalAddress_];
  v11 = sub_2683CFA78();

  return v11;
}

uint64_t type metadata accessor for NotebookReadingCATs(uint64_t a1)
{
  result = qword_280251408;
  if (!qword_280251408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2682B2288(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2682B22B0);
}

uint64_t sub_2682B22B0()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 16) = xmmword_2683D2890;
  *(v2 + 32) = 0x747065636E6F63;
  *(v2 + 40) = 0xE700000000000000;
  if (v1)
  {
    v3 = type metadata accessor for NotebookReminderConcept(0);
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 72);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0xD000000000000015;
  *(v2 + 88) = 0x80000002683FFB30;
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  else
  {
    v6 = *(v0 + 32);
    v7 = MEMORY[0x277D839F8];
  }

  *(v2 + 96) = v6;
  *(v2 + 120) = v7;
  v11 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_2682B2454;
  v9 = *(v0 + 16);

  return v11(v9, 0xD000000000000020, 0x80000002683FFB50, v2);
}

uint64_t sub_2682B2454()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2682B2590);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2682B2590()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2682B25F4(uint64_t a1)
{
  v6 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268195F80;
  v4 = MEMORY[0x277D84F90];

  return v6(a1, 0xD00000000000002DLL, 0x80000002683FFB00, v4);
}

uint64_t sub_2682B271C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CF238();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v9 - 8);
  sub_268163198(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_2683CF0A8();
  (*(v6 + 8))(a2, v5);
  sub_268163208(a1);
  return v11;
}

uint64_t sub_2682B28A0(uint64_t a1, void *a2)
{
  v4 = sub_2683CC008();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[3];
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v8);
  if ((*(v9 + 40))(v8, v9) & 1) != 0 && (v17[0] = 0, (sub_26812A998(v17)) && (v10 = [objc_allocWithZone(sub_2683CF6F8()) init], sub_2683CF6E8(), v10, sub_268129504(0, &qword_280251418, 0x277D82BB8), (swift_dynamicCast()))
  {
    v11 = v16[1];
    sub_268129504(0, &qword_28024F2C8, 0x277CD3D30);

    v12 = v11;
    v13 = a2;
    sub_2683CBFF8();
    sub_2683CC068();
    v14 = sub_2683CC048();

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_2683CC068();
    return sub_2683CC058();
  }

  return v14;
}

uint64_t sub_2682B2B20(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  a2(0);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_86_2();
    v4(v3);
  }

  v5 = OUTLINED_FUNCTION_76_1();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_2682B2BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a1 + 16);
  a2(0);
  if (v4)
  {
    OUTLINED_FUNCTION_11_7();
    sub_2682B5274();
  }

  v5 = OUTLINED_FUNCTION_76_1();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_2682B2C88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_86_2();
    v5(v4);
  }

  v6 = OUTLINED_FUNCTION_76_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void sub_2682B2D1C(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2681EFE4C(a1 + 32, a2);
  }

  else
  {
    bzero(a2, 0xA8uLL);
  }
}

void *sub_2682B2D3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v37 - v3;
  v4 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v41 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v46 = MEMORY[0x277D84F98];
  v43 = *(a1 + 16);
  v38 = xmmword_2683D1EC0;
  v39 = a1;
  while (1)
  {
    if (v43 == v9)
    {

      return v10;
    }

    if (v9 >= *(a1 + 16))
    {
      break;
    }

    v11 = *(v41 + 72);
    v44 = v9;
    v45 = v11;
    sub_2682B5274();
    v12 = v8;
    v13 = v42;
    sub_2682CC640();
    v14 = type metadata accessor for Snippet.SectionHeading(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
    sub_26812D9E0(v13, &qword_28024DAF8, &qword_2683E3440);
    v17 = sub_2682E18EC(EnumTagSinglePayload == 1);
    v18 = v10[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v16;
    if (v10[3] < v20)
    {
      sub_2682C10F0(v20, 1);
      v10 = v46;
      v22 = sub_2682E18EC(EnumTagSinglePayload == 1);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

      v17 = v22;
    }

    v8 = v12;
    if (v21)
    {
      v24 = v10[7];
      sub_2682B5320();
      v25 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2682E54A4();
        v25 = v34;
        *(v24 + 8 * v17) = v34;
      }

      v27 = *(v25 + 16);
      if (v27 >= *(v25 + 24) >> 1)
      {
        sub_2682E54A4();
        v25 = v35;
        *(v24 + 8 * v17) = v35;
      }

      v28 = v44;
      *(v25 + 16) = v27 + 1;
      sub_2682B5320();
    }

    else
    {
      v29 = EnumTagSinglePayload == 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251428, &qword_2683E3450);
      v30 = swift_allocObject();
      *(v30 + 16) = v38;
      sub_2682B5320();
      v10[(v17 >> 6) + 8] |= 1 << v17;
      *(v10[6] + v17) = v29;
      *(v10[7] + 8 * v17) = v30;
      v31 = v10[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_20;
      }

      v10[2] = v33;
      v28 = v44;
    }

    a1 = v39;
    v9 = v28 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_2683D0608();
  __break(1u);
  return result;
}

void *sub_2682B3154(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v4 = type metadata accessor for Snippet.Reminder(0);
  v35 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v31 - v7;
  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  v40 = MEMORY[0x277D84F98];
  v38 = *(a1 + 16);
  v32 = xmmword_2683D1EC0;
  v33 = a1;
  while (1)
  {
    if (v38 == v8)
    {

      return v9;
    }

    if (v8 >= *(a1 + 16))
    {
      break;
    }

    v10 = v39;
    sub_2682B5274();
    v11 = v36(v10);
    v13 = sub_2682E18EC(v11 & 1);
    v14 = v9[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_19;
    }

    v17 = v12;
    if (v9[3] < v16)
    {
      sub_2682C10F0(v16, 1);
      v9 = v40;
      v18 = sub_2682E18EC(v11 & 1);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_21;
      }

      v13 = v18;
    }

    if (v17)
    {
      v20 = v9[7];
      sub_2682B5320();
      v21 = *(v20 + 8 * v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v13) = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2682E4B38();
        v21 = v28;
        *(v20 + 8 * v13) = v28;
      }

      v23 = *(v21 + 16);
      if (v23 >= *(v21 + 24) >> 1)
      {
        sub_2682E4B38();
        v21 = v29;
        *(v20 + 8 * v13) = v29;
      }

      *(v21 + 16) = v23 + 1;
      sub_2682B5320();
      a1 = v33;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251608, &unk_2683E3D40);
      v24 = swift_allocObject();
      *(v24 + 16) = v32;
      sub_2682B5320();
      v9[(v13 >> 6) + 8] |= 1 << v13;
      *(v9[6] + v13) = v11 & 1;
      *(v9[7] + 8 * v13) = v24;
      v25 = v9[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_20;
      }

      v9[2] = v27;
    }

    ++v8;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_2683D0608();
  __break(1u);
  return result;
}

void *sub_2682B34C4(uint64_t a1)
{
  v63 = sub_2683CB7A8();
  v2 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v52 - v5;
  v7 = sub_2683CB528();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v61 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = v52 - v11;
  v52[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v54 = *(v52[0] - 8);
  MEMORY[0x28223BE20](v52[0]);
  v13 = v52 - v12;
  v14 = type metadata accessor for Snippet.Reminder(0);
  v66 = *(v14 - 8);
  v67 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v65 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v72 = v52 - v17;
  v18 = 0;
  v19 = MEMORY[0x277D84F98];
  v73 = MEMORY[0x277D84F98];
  v68 = *(a1 + 16);
  v58 = (v2 + 8);
  v59 = (v8 + 32);
  v57 = (v8 + 8);
  v53 = xmmword_2683D1EC0;
  v20 = a1;
  v55 = v7;
  v56 = a1;
  v69 = v13;
  v64 = v6;
  while (1)
  {
    if (v68 == v18)
    {

      return v19;
    }

    if (v18 >= *(v20 + 16))
    {
      break;
    }

    v21 = *(v66 + 80);
    v70 = *(v66 + 72);
    v71 = (v21 + 32) & ~v21;
    sub_2682B5274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
    sub_2683CB858();
    v22 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v22);
    v24 = v6;
    v25 = v7;
    if (EnumTagSinglePayload == 1)
    {
      sub_26812D9E0(v24, &qword_28024D5D0, &unk_2683D2CA0);
      v26 = 1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
      v27 = v61;
      sub_2683CB858();
      sub_2682B52CC();
      v28 = v60;
      v29 = v27;
      v7 = v25;
      (*v59)(v60, v29, v25);
      v30 = v62;
      sub_2683CB768();
      sub_2683CB678();
      (*v58)(v30, v63);
      v13 = v69;
      (*v57)(v28, v25);
      v26 = 0;
    }

    __swift_storeEnumTagSinglePayload(v13, v26, 1, v7);
    v32 = sub_2682E1958(v13);
    v33 = v19[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_22;
    }

    v36 = v31;
    if (v19[3] < v35)
    {
      sub_2682C1298(v35, 1);
      v19 = v73;
      v37 = sub_2682E1958(v13);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_24;
      }

      v32 = v37;
    }

    if (v36)
    {
      v39 = v13;
      v40 = v64;
      sub_26812D9E0(v39, &qword_28024DB08, qword_2683D5760);
      v41 = v19[7];
      sub_2682B5320();
      v42 = *(v41 + 8 * v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v41 + 8 * v32) = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2682E4B38();
        v42 = v49;
        *(v41 + 8 * v32) = v49;
      }

      v44 = *(v42 + 16);
      if (v44 >= *(v42 + 24) >> 1)
      {
        sub_2682E4B38();
        v42 = v50;
        *(v41 + 8 * v32) = v50;
      }

      v6 = v40;
      *(v42 + 16) = v44 + 1;
      sub_2682B5320();
      v7 = v55;
      v20 = v56;
      v13 = v69;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251608, &unk_2683E3D40);
      v45 = swift_allocObject();
      *(v45 + 16) = v53;
      sub_2682B5320();
      v19[(v32 >> 6) + 8] |= 1 << v32;
      sub_2682CC5D8();
      *(v19[7] + 8 * v32) = v45;
      v46 = v19[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_23;
      }

      v19[2] = v48;
      v7 = v25;
      v6 = v64;
    }

    ++v18;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_2683D0608();
  __break(1u);
  return result;
}

void *sub_2682B3BB4(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.Reminder(0);
  v34 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v33 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v3);
  v36 = &v29[-v6];
  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v35 = *(a1 + 16);
  v30 = xmmword_2683D1EC0;
  v31 = v5;
  v32 = a1;
  while (1)
  {
    if (v35 == v7)
    {

      return v8;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v9 = v36;
    sub_2682B5274();
    memcpy(__dst, &v9[*(v2 + 32)], 0x61uLL);
    sub_2682CC640();
    v11 = sub_2682E19B4(__dst);
    v12 = v8[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v8[3] < v14)
    {
      sub_2682C17D4(v14, 1);
      v8 = v38;
      v16 = sub_2682E19B4(__dst);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_21;
      }

      v11 = v16;
    }

    if (v15)
    {
      sub_26812D9E0(__dst, &qword_28024D5C0, &unk_2683D2C80);
      v18 = v8[7];
      sub_2682B5320();
      v19 = *(v18 + 8 * v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v18 + 8 * v11) = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2682E4B38();
        v19 = v26;
        *(v18 + 8 * v11) = v26;
      }

      v21 = *(v19 + 16);
      if (v21 >= *(v19 + 24) >> 1)
      {
        sub_2682E4B38();
        v19 = v27;
        *(v18 + 8 * v11) = v27;
      }

      a1 = v32;
      *(v19 + 16) = v21 + 1;
      sub_2682B5320();
      v2 = v31;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251608, &unk_2683E3D40);
      v22 = swift_allocObject();
      *(v22 + 16) = v30;
      sub_2682B5320();
      v8[(v11 >> 6) + 8] |= 1 << v11;
      memcpy((v8[6] + 104 * v11), __dst, 0x61uLL);
      *(v8[7] + 8 * v11) = v22;
      v23 = v8[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_20;
      }

      v8[2] = v25;
    }

    ++v7;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C0, &unk_2683D2C80);
  result = sub_2683D0608();
  __break(1u);
  return result;
}

void *sub_2682B3FB0(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.Reminder(0);
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = &v33 - v5;
  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  v41 = MEMORY[0x277D84F98];
  v38 = *(a1 + 16);
  v34 = xmmword_2683D1EC0;
  while (1)
  {
    if (v38 == v6)
    {

      return v7;
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    v8 = a1;
    v39 = v6;
    v9 = v40;
    sub_2682B5274();
    v10 = &v9[*(v37 + 20)];
    v12 = *v10;
    v11 = v10[1];

    v14 = sub_2682E1A10(v12, v11);
    v15 = v7[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_19;
    }

    v18 = v13;
    if (v7[3] < v17)
    {
      sub_2682C1F58(v17, 1);
      v7 = v41;
      v19 = sub_2682E1A10(v12, v11);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_21;
      }

      v14 = v19;
    }

    if (v18)
    {

      v21 = v7[7];
      sub_2682B5320();
      v22 = *(v21 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v21 + 8 * v14) = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2682E4B38();
        v22 = v30;
        *(v21 + 8 * v14) = v30;
      }

      v24 = *(v22 + 16);
      if (v24 >= *(v22 + 24) >> 1)
      {
        sub_2682E4B38();
        v22 = v31;
        *(v21 + 8 * v14) = v31;
      }

      a1 = v8;
      *(v22 + 16) = v24 + 1;
      sub_2682B5320();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251608, &unk_2683E3D40);
      v25 = swift_allocObject();
      *(v25 + 16) = v34;
      sub_2682B5320();
      v7[(v14 >> 6) + 8] |= 1 << v14;
      v26 = (v7[6] + 16 * v14);
      *v26 = v12;
      v26[1] = v11;
      *(v7[7] + 8 * v14) = v25;
      v27 = v7[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_20;
      }

      v7[2] = v29;
      a1 = v8;
    }

    v6 = v39 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB98, &unk_2683D5280);
  result = sub_2683D0608();
  __break(1u);
  return result;
}

uint64_t sub_2682B4344(uint64_t a1)
{
  result = MEMORY[0x26D616890](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
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

    sub_268158CE8(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_2682B4404(uint64_t a1)
{
  v3 = sub_268229348();
  v4 = 0x277D44700uLL;
  OUTLINED_FUNCTION_102_2();
  v8 = sub_268129504(v5, v6, v7);
  OUTLINED_FUNCTION_102_2();
  v10 = sub_2682CC6A8(v9);
  v13[1] = MEMORY[0x26D616890](v3, v8, v10);
  sub_2683ABE58();
  OUTLINED_FUNCTION_109_2();
  while (1)
  {
    if (&qword_28024DB40 == v4)
    {

      return;
    }

    if (v8)
    {
      v12 = OUTLINED_FUNCTION_93_2();
      v11 = MEMORY[0x26D616C90](v12);
    }

    else
    {
      if (v4 >= *(v1 + 16))
      {
        goto LABEL_11;
      }

      v11 = *(a1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    sub_26815911C(v13, v11);

    ++v4;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_2682B4500(uint64_t a1)
{
  v3 = sub_268229348();
  v4 = 0x277CD4220uLL;
  OUTLINED_FUNCTION_102_2();
  v8 = sub_268129504(v5, v6, v7);
  OUTLINED_FUNCTION_102_2();
  v10 = sub_2682CC6A8(v9);
  v13[1] = MEMORY[0x26D616890](v3, v8, v10);
  sub_2683ABE58();
  OUTLINED_FUNCTION_109_2();
  while (1)
  {
    if (&qword_280253310 == v4)
    {

      return;
    }

    if (v8)
    {
      v12 = OUTLINED_FUNCTION_93_2();
      v11 = MEMORY[0x26D616C90](v12);
    }

    else
    {
      if (v4 >= *(v1 + 16))
      {
        goto LABEL_11;
      }

      v11 = *(a1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    sub_268158E30(v13, v11);

    ++v4;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_2682B45FC(uint64_t a1)
{
  v2 = sub_2683CB598();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  v10 = sub_2682C22DC(&qword_28024D890);
  v11 = MEMORY[0x26D616890](v9, v2, v10);
  v22 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v21 = a1;
    v17 = a1 + v16;
    v18 = *(v13 + 56);
    do
    {
      v14(v6, v17, v2);
      sub_26815955C();
      (*(v13 - 8))(v8, v2);
      v17 += v18;
      --v12;
    }

    while (v12);

    return v22;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

uint64_t Snippet.ReminderSearchResult.sections.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Snippet.ReminderSearchResult.primaryHeading.getter()
{
  type metadata accessor for Snippet.ReminderSearchResult(0);
  OUTLINED_FUNCTION_17_18();
  return sub_2682B5274();
}

uint64_t Snippet.ReminderSearchResult.primaryHeading.setter()
{
  v2 = OUTLINED_FUNCTION_24_4();
  v3 = v1 + *(type metadata accessor for Snippet.ReminderSearchResult(v2) + 20);

  return sub_2682B48AC(v0, v3);
}

uint64_t sub_2682B48AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.SectionHeading(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*Snippet.ReminderSearchResult.primaryHeading.modify())()
{
  v0 = OUTLINED_FUNCTION_24_4();
  type metadata accessor for Snippet.ReminderSearchResult(v0);
  return nullsub_1;
}

uint64_t Snippet.ReminderSearchResult.count.getter()
{
  type metadata accessor for Snippet.ReminderSearchResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
  sub_2683CB858();
  return v1;
}

uint64_t Snippet.ReminderSearchResult.count.setter(uint64_t a1, char a2)
{
  type metadata accessor for Snippet.ReminderSearchResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
  return sub_2683CB868();
}

uint64_t (*Snippet.ReminderSearchResult.count.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for Snippet.ReminderSearchResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
  v2[4] = sub_2683CB848();
  return sub_268143C94;
}

uint64_t Snippet.ReminderSearchResult.pageInfo.getter()
{
  type metadata accessor for Snippet.ReminderSearchResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
  return sub_2683CB858();
}

uint64_t sub_2682B4B18@<X0>(_BYTE *a1@<X8>)
{
  result = Snippet.ReminderSearchResult.pageInfo.getter();
  *a1 = v3;
  return result;
}

uint64_t Snippet.ReminderSearchResult.pageInfo.setter(char *a1)
{
  type metadata accessor for Snippet.ReminderSearchResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
  return sub_2683CB868();
}

uint64_t (*Snippet.ReminderSearchResult.pageInfo.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for Snippet.ReminderSearchResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
  v2[4] = sub_2683CB848();
  return sub_268151B78;
}

void Snippet.ReminderSearchResult.init(sections:primaryHeading:count:pageInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_114_1();
  v23 = v22;
  v25 = v24;
  type metadata accessor for Snippet.ReminderSearchResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
  sub_2683CB838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
  sub_2683CB838();
  *v25 = v23;
  OUTLINED_FUNCTION_17_18();
  sub_2682B5274();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
  sub_2683CB868();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
  sub_2683CB868();
  OUTLINED_FUNCTION_5_30();
  sub_2682B52CC();
  OUTLINED_FUNCTION_113_2();
}

void Snippet.ReminderSearchResult.promotingFirstHeadingIfSingleSectionWithHeading()()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  v5 = OUTLINED_FUNCTION_23(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19_3();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v47[-v10];
  v12 = type metadata accessor for Snippet.SectionHeading(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_3();
  v52 = v14 - v15;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251420, &qword_2683E3448);
  OUTLINED_FUNCTION_23(v17);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v47[-v19];
  v21 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  OUTLINED_FUNCTION_0_3();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_3();
  v27 = v26 - v25;
  if (*(*v1 + 16) != 1)
  {
    goto LABEL_9;
  }

  sub_2682B2BB4(*v1, type metadata accessor for Snippet.ReminderSearchResult.Section);
  OUTLINED_FUNCTION_72(v20, 1, v21);
  if (v31)
  {
    v28 = &qword_280251420;
    v29 = &qword_2683E3448;
    v30 = v20;
LABEL_8:
    sub_26812D9E0(v30, v28, v29);
LABEL_9:
    OUTLINED_FUNCTION_45_5();
    OUTLINED_FUNCTION_113();
    sub_2682B5274();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_39();
  sub_2682B5320();
  sub_2682CC640();
  OUTLINED_FUNCTION_72(v11, 1, v12);
  if (v31)
  {
    OUTLINED_FUNCTION_0_49();
    sub_2682B52CC();
    v28 = &qword_28024DAF8;
    v29 = &qword_2683E3440;
    v30 = v11;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_10_20();
  sub_2682B5320();
  v32 = v27 + *(v21 + 20);
  v33 = *v32;
  LODWORD(v32) = *(v32 + 8);
  v51 = v33;
  if (v32 == 1)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251428, &qword_2683E3450);
    v34 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_2683D1EC0;
    v36 = v35 + v34;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v12);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v12);
    v43 = v51;

    sub_2681D5F4C(v8, v36);
    v44 = v36 + *(v21 + 20);
    *v44 = v43;
    *(v44 + 8) = 0;
    v51 = v35;
  }

  OUTLINED_FUNCTION_17_18();
  v50 = v45;
  sub_2682B5274();
  type metadata accessor for Snippet.ReminderSearchResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
  sub_2683CB858();
  v49 = v54;
  v48 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
  sub_2683CB858();
  v46 = v53;
  v54 = 0;
  v55 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
  sub_2683CB838();
  OUTLINED_FUNCTION_63_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
  sub_2683CB838();
  *v3 = v51;
  sub_2682B5274();
  v54 = v49;
  v55 = v48;
  sub_2683CB868();
  LOBYTE(v54) = v46;
  sub_2683CB868();
  sub_2682B52CC();
  sub_2682B52CC();
  OUTLINED_FUNCTION_0_49();
  sub_2682B52CC();
LABEL_10:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2682B5274()
{
  OUTLINED_FUNCTION_36_2();
  v1(0);
  OUTLINED_FUNCTION_1();
  v2 = OUTLINED_FUNCTION_9_0();
  v3(v2);
  return v0;
}

uint64_t sub_2682B52CC()
{
  v1 = OUTLINED_FUNCTION_24_4();
  v2(v1);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_2682B5320()
{
  OUTLINED_FUNCTION_36_2();
  v1(0);
  OUTLINED_FUNCTION_1();
  v2 = OUTLINED_FUNCTION_9_0();
  v3(v2);
  return v0;
}

uint64_t Snippet.ReminderSearchResult.Section.content.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_52_4();
  v4 = (v1 + v3);
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
}

uint64_t Snippet.ReminderSearchResult.Section.content.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  OUTLINED_FUNCTION_52_4();
  v5 = v1 + v4;

  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t Snippet.ReminderSearchResult.Section.init(heading:content:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  type metadata accessor for Snippet.SectionHeading(0);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_9_0();
  sub_2681D5F4C(v9, v10);
  result = OUTLINED_FUNCTION_52_4();
  v13 = a2 + v12;
  *v13 = v3;
  *(v13 + 8) = v4;
  return result;
}

uint64_t sub_2682B5510@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  type metadata accessor for Snippet.SectionHeading(0);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_113();
  sub_2681D5F4C(v10, v11);
  result = OUTLINED_FUNCTION_52_4();
  v14 = a3 + v13;
  *v14 = a1;
  *(v14 + 8) = a2;
  return result;
}

void Snippet.ReminderSearchResult.Section.isEmpty.getter()
{
  v1 = type metadata accessor for Snippet.ReminderSearchResult.Section(0) - 8;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_14_3();
  v3 = (v0 + *(v2 + 28));
  v4 = *v3;
  v5 = *(*v3 + 16);
  if (v3[8])
  {
    v6 = 0;
    while (v5 != v6)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_11_7();
      OUTLINED_FUNCTION_16_24();
      sub_2682B5274();
      ++v6;
      Snippet.ReminderSearchResult.Section.isEmpty.getter();
      v8 = v7;
      OUTLINED_FUNCTION_0_49();
      sub_2682B52CC();
      if ((v8 & 1) == 0)
      {
        return;
      }
    }
  }
}

void Snippet.ReminderSearchResult.Section.reminders.getter()
{
  OUTLINED_FUNCTION_30_0();
  v1 = type metadata accessor for Snippet.ReminderSearchResult.Section(0) - 8;
  v3 = (v0 + *(MEMORY[0x28223BE20](v1) + 28));
  v4 = *v3;
  if ((v3[1] & 1) == 0)
  {

    goto LABEL_17;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_17:
    OUTLINED_FUNCTION_29_0();
    return;
  }

  v6 = v4 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7 = *(v2 + 72);

  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    OUTLINED_FUNCTION_16_24();
    sub_2682B5274();
    Snippet.ReminderSearchResult.Section.reminders.getter();
    v10 = v9;
    OUTLINED_FUNCTION_0_49();
    sub_2682B52CC();
    v11 = *(v10 + 16);
    v12 = *(v8 + 16);
    if (__OFADD__(v12, v11))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v12 + v11 > *(v8 + 24) >> 1)
    {
      sub_2682E4B38();
      v8 = v13;
    }

    if (*(v10 + 16))
    {
      v14 = (*(v8 + 24) >> 1) - *(v8 + 16);
      type metadata accessor for Snippet.Reminder(0);
      if (v14 < v11)
      {
        goto LABEL_20;
      }

      swift_arrayInitWithCopy();

      if (v11)
      {
        v15 = *(v8 + 16);
        v16 = __OFADD__(v15, v11);
        v17 = v15 + v11;
        if (v16)
        {
          goto LABEL_21;
        }

        *(v8 + 16) = v17;
      }
    }

    else
    {

      if (v11)
      {
        goto LABEL_19;
      }
    }

    v6 += v7;
    if (!--v5)
    {

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2682B58E4()
{
  OUTLINED_FUNCTION_30_0();
  v47 = v1;
  v2 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  OUTLINED_FUNCTION_0_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19_3();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v45[-v10];
  type metadata accessor for Snippet.Reminder(0);
  OUTLINED_FUNCTION_0_3();
  v50 = v12;
  v51 = v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v14);
  v16 = &v45[-v15];
  v17 = *(v0 + 8);
  v52 = *v0;
  v18 = *(v52 + 16);
  if (v17)
  {
    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v46 = v17;
      v57 = MEMORY[0x277D84F90];
      v20 = OUTLINED_FUNCTION_54_4();
      sub_2683909A0(v20, v21, v22);
      v19 = v57;
      v51 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v23 = v52 + v51;
      v24 = *(v4 + 72);
      do
      {
        OUTLINED_FUNCTION_2_34();
        sub_2682B5274();
        OUTLINED_FUNCTION_19_2();
        sub_2682B5274();
        v25 = (v8 + *(v2 + 20));
        v26 = *v25;
        LOBYTE(v25) = *(v25 + 8);
        v53 = v26;
        v54 = v25;

        sub_2682B58E4();

        OUTLINED_FUNCTION_0_49();
        sub_2682B52CC();
        v27 = v55;
        LOBYTE(v26) = v56;
        v28 = &v11[*(v2 + 20)];

        *v28 = v27;
        v28[8] = v26;
        v57 = v19;
        v30 = *(v19 + 16);
        v29 = *(v19 + 24);
        if (v30 >= v29 >> 1)
        {
          v31 = OUTLINED_FUNCTION_22_2(v29);
          sub_2683909A0(v31, v30 + 1, 1);
          v19 = v57;
        }

        *(v19 + 16) = v30 + 1;
        OUTLINED_FUNCTION_1_39();
        sub_2682B5320();
        v23 += v24;
        --v18;
      }

      while (v18);
LABEL_15:
      LOBYTE(v17) = v46;
    }

    goto LABEL_17;
  }

  v32 = MEMORY[0x277D84F90];
  if (!v18)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_17:
    v44 = v47;
    *v47 = v19;
    *(v44 + 8) = v17;
    OUTLINED_FUNCTION_29_0();
    return;
  }

  v46 = v17;
  v55 = MEMORY[0x277D84F90];
  v33 = v52;

  v34 = OUTLINED_FUNCTION_54_4();
  sub_268390728(v34, v35, v36);
  v37 = 0;
  v19 = v55;
  OUTLINED_FUNCTION_11_7();
  v49 = v38;
  v48 = v33 + v38;
  while (v37 < *(v52 + 16))
  {
    OUTLINED_FUNCTION_11_29();
    sub_2682B5274();
    sub_2682B5274();
    v39 = *(v50 + 68);

    v40 = v32;
    *&v16[v39] = v32;
    OUTLINED_FUNCTION_6_27();
    sub_2682B52CC();
    v55 = v19;
    v42 = *(v19 + 16);
    v41 = *(v19 + 24);
    if (v42 >= v41 >> 1)
    {
      v43 = OUTLINED_FUNCTION_28_13(v41);
      sub_268390728(v43, v42 + 1, 1);
      v19 = v55;
    }

    ++v37;
    *(v19 + 16) = v42 + 1;
    OUTLINED_FUNCTION_3_33();
    sub_2682B5320();
    v32 = v40;
    if (v18 == v37)
    {

      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_2682B5D14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974636553627573 && a2 == 0xEB00000000736E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

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

uint64_t sub_2682B5DE8(char a1)
{
  if (a1)
  {
    return 0x6974636553627573;
  }

  else
  {
    return 0x7265646E696D6572;
  }
}

uint64_t sub_2682B5E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2682B5D14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2682B5E5C(uint64_t a1)
{
  v2 = sub_2682C2150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682B5E98(uint64_t a1)
{
  v2 = sub_2682C2150();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682B5ED4(uint64_t a1)
{
  v2 = sub_2682C21F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682B5F10(uint64_t a1)
{
  v2 = sub_2682C21F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682B5F4C(uint64_t a1)
{
  v2 = sub_2682C21A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682B5F88(uint64_t a1)
{
  v2 = sub_2682C21A4();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.ReminderSearchResult.Section.Content.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_63_0();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251430, &qword_2683E3458);
  OUTLINED_FUNCTION_0_3();
  v37 = v26;
  v38 = v25;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_49_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251438, &qword_2683E3460);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251440, &qword_2683E3468);
  OUTLINED_FUNCTION_0_3();
  v30 = v29;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18_4();
  v32 = *(v20 + 8);
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_2682C2150();
  sub_2683D0718();
  if (v32)
  {
    sub_2682C21A4();
    OUTLINED_FUNCTION_117_1(&_s14descr2878F8F29V20ReminderSearchResultV7SectionV7ContentO21SubSectionsCodingKeysON);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC68, &unk_2683E3470);
    OUTLINED_FUNCTION_44_9();
    sub_2682CB4DC(v33);
    sub_2683D0548();
    (*(v37 + 8))(v22, v38);
  }

  else
  {
    sub_2682C21F8();
    OUTLINED_FUNCTION_117_1(&_s14descr2878F8F29V20ReminderSearchResultV7SectionV7ContentO19RemindersCodingKeysON);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D878, &unk_2683E40E0);
    sub_2682C224C(&qword_28024D880);
    sub_2683D0548();
    v34 = OUTLINED_FUNCTION_92_2();
    v36(v34, v35);
  }

  (*(v30 + 8))(v21, v32);
  OUTLINED_FUNCTION_62();
}

void Snippet.ReminderSearchResult.Section.Content.hash(into:)()
{
  if (*(v0 + 8))
  {
    MEMORY[0x26D617190](1);

    sub_26814E408();
  }

  else
  {
    MEMORY[0x26D617190](0);

    sub_26814E1A8();
  }
}

uint64_t Snippet.ReminderSearchResult.Section.Content.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  OUTLINED_FUNCTION_79(a1);
  if (v2)
  {
    MEMORY[0x26D617190](1);
    sub_26814E408();
  }

  else
  {
    MEMORY[0x26D617190](0);
    sub_26814E1A8();
  }

  return sub_2683D06D8();
}

void Snippet.ReminderSearchResult.Section.Content.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_63_0();
  v66 = v22;
  v67 = v20;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251460, &qword_2683E3480);
  OUTLINED_FUNCTION_0_3();
  v63 = v25;
  v64 = v26;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18_4();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251468, &qword_2683E3488);
  OUTLINED_FUNCTION_0_3();
  v62 = v29;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_49_1();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251470, &qword_2683E3490);
  OUTLINED_FUNCTION_0_3();
  v65 = v32;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v33);
  v35 = v61 - v34;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_2682C2150();
  v36 = v67;
  sub_2683D06F8();
  if (v36)
  {
    goto LABEL_10;
  }

  v61[2] = v28;
  v61[3] = v21;
  v67 = v24;
  v37 = v66;
  sub_2683D04B8();
  sub_268151B7C();
  if (v39 == v40 >> 1)
  {
    v41 = v35;
LABEL_9:
    v49 = sub_2683D01D8();
    swift_allocError();
    v51 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0);
    *v51 = &type metadata for Snippet.ReminderSearchResult.Section.Content;
    sub_2683D0428();
    sub_2683D01C8();
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D84160], v49);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v65 + 8))(v41, v31);
    v24 = v67;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v24);
LABEL_11:
    OUTLINED_FUNCTION_62();
    return;
  }

  v61[1] = 0;
  if (v39 < (v40 >> 1))
  {
    v42 = *(v38 + v39);
    sub_268151B68();
    v44 = v43;
    v46 = v45;
    swift_unknownObjectRelease();
    if (v44 == v46 >> 1)
    {
      v47 = v42;
      if (v42)
      {
        LODWORD(v62) = v42;
        LOBYTE(a10) = 1;
        sub_2682C21A4();
        OUTLINED_FUNCTION_115_1(&_s14descr2878F8F29V20ReminderSearchResultV7SectionV7ContentO21SubSectionsCodingKeysON);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC68, &unk_2683E3470);
        OUTLINED_FUNCTION_40_10();
        sub_2682CB4DC(v48);
        sub_2683D04A8();
        swift_unknownObjectRelease();
        v52 = OUTLINED_FUNCTION_90_1();
        v53(v52);
        v54 = OUTLINED_FUNCTION_51_5();
        v55(v54);
        v56 = a10;
        v47 = v62;
      }

      else
      {
        LOBYTE(a10) = 0;
        sub_2682C21F8();
        OUTLINED_FUNCTION_115_1(&_s14descr2878F8F29V20ReminderSearchResultV7SectionV7ContentO19RemindersCodingKeysON);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D878, &unk_2683E40E0);
        sub_2682C224C(&qword_28024D8F8);
        sub_2683D04A8();
        swift_unknownObjectRelease();
        v57 = OUTLINED_FUNCTION_108_1();
        v58(v57);
        v59 = OUTLINED_FUNCTION_51_5();
        v60(v59);
        v56 = a10;
        v37 = v66;
      }

      *v37 = v56;
      *(v37 + 8) = v47;
      __swift_destroy_boxed_opaque_existential_0(v67);
      goto LABEL_11;
    }

    v41 = v35;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_2682B69B0(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_2683D0698();
  if (v2)
  {
    MEMORY[0x26D617190](1);
    sub_26814E408();
  }

  else
  {
    MEMORY[0x26D617190](0);
    sub_26814E1A8();
  }

  return sub_2683D06D8();
}

uint64_t sub_2682B6CD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6964616568 && a2 == 0xE700000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

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

uint64_t sub_2682B6DA8(char a1)
{
  if (a1)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x676E6964616568;
  }
}

uint64_t sub_2682B6DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2682B6CD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2682B6E08(uint64_t a1)
{
  v2 = sub_2682CB56C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682B6E44(uint64_t a1)
{
  v2 = sub_2682CB56C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.ReminderSearchResult.Section.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251478, &qword_2683E3498);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_28_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_2682CB56C();
  OUTLINED_FUNCTION_121_1(&_s14descr2878F8F29V20ReminderSearchResultV7SectionV10CodingKeysON, v5, v4);
  type metadata accessor for Snippet.SectionHeading(0);
  OUTLINED_FUNCTION_9_24();
  sub_2682C22DC(v6);
  OUTLINED_FUNCTION_5_16();
  sub_2683D0508();
  if (!v1)
  {
    type metadata accessor for Snippet.ReminderSearchResult.Section(0);
    sub_2682CB5C0();

    sub_2683D0548();
  }

  v7 = OUTLINED_FUNCTION_93_2();
  return v8(v7);
}

void Snippet.ReminderSearchResult.Section.hash(into:)()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_24_4();
  v4 = type metadata accessor for Snippet.SectionHeading(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  OUTLINED_FUNCTION_23(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  sub_2682CC640();
  OUTLINED_FUNCTION_72(v9, 1, v4);
  if (v10)
  {
    sub_2683D06B8();
  }

  else
  {
    OUTLINED_FUNCTION_10_20();
    sub_2682B5320();
    sub_2683D06B8();
    Snippet.SectionHeading.hash(into:)(v0);
    OUTLINED_FUNCTION_5_30();
    sub_2682B52CC();
  }

  OUTLINED_FUNCTION_52_4();
  if (*(v2 + v11 + 8))
  {
    MEMORY[0x26D617190](1);
    sub_26814E408();
  }

  else
  {
    MEMORY[0x26D617190](0);
    sub_26814E1A8();
  }
}

uint64_t Snippet.ReminderSearchResult.Section.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_79(a1);
  Snippet.ReminderSearchResult.Section.hash(into:)();
  return sub_2683D06D8();
}

void Snippet.ReminderSearchResult.Section.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_63_0();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  OUTLINED_FUNCTION_23(v27);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_0();
  v46 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251490, &qword_2683E34A0);
  OUTLINED_FUNCTION_0_3();
  v44 = v31;
  v45 = v30;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_49_1();
  v33 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_3();
  v37 = v36 - v35;
  v38 = type metadata accessor for Snippet.SectionHeading(0);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_2682CB56C();
  sub_2683D06F8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
    sub_26812D9E0(v37, &qword_28024DAF8, &qword_2683E3440);
  }

  else
  {
    OUTLINED_FUNCTION_9_24();
    sub_2682C22DC(v42);
    sub_2683D0468();
    sub_2681D5F4C(v46, v37);
    sub_2682CB614();
    sub_2683D04A8();
    (*(v44 + 8))(v24, v45);
    v43 = v37 + *(v33 + 20);
    *v43 = v47;
    *(v43 + 8) = v48;
    OUTLINED_FUNCTION_16_24();
    sub_2682B5274();
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_0_49();
    sub_2682B52CC();
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_2682B74CC(uint64_t a1)
{
  sub_2683D0698();
  Snippet.ReminderSearchResult.Section.hash(into:)();
  return sub_2683D06D8();
}

uint64_t static Snippet.ReminderSearchResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_36_2();
  sub_26814B8FC();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v3 = type metadata accessor for Snippet.ReminderSearchResult(0);
  if ((static Snippet.SectionHeading.== infix(_:_:)(v1 + *(v3 + 20), v0 + *(v3 + 20)) & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
  sub_2682CB6BC(&unk_2802514A0);
  if ((sub_2683CB878() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
  sub_2682CB7E8(&unk_2802514A8);

  return sub_2683CB878();
}

uint64_t sub_2682B7650(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x487972616D697270 && a2 == 0xEE00676E69646165;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F666E4965676170 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2683D0598();

        if (v9)
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

uint64_t sub_2682B77AC(char a1)
{
  result = 0x736E6F6974636573;
  switch(a1)
  {
    case 1:
      result = 0x487972616D697270;
      break;
    case 2:
      result = 0x746E756F63;
      break;
    case 3:
      result = 0x6F666E4965676170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2682B783C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2682B7650(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2682B7864(uint64_t a1)
{
  v2 = sub_2682CB668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682B78A0(uint64_t a1)
{
  v2 = sub_2682CB668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.ReminderSearchResult.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802514B0, &qword_2683E34A8);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_28_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_2682CB668();
  OUTLINED_FUNCTION_121_1(&_s14descr2878F8F29V20ReminderSearchResultV10CodingKeysON, v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC68, &unk_2683E3470);
  OUTLINED_FUNCTION_44_9();
  sub_2682CB4DC(v6);
  OUTLINED_FUNCTION_5_16();
  sub_2683D0548();
  if (!v1)
  {
    type metadata accessor for Snippet.ReminderSearchResult(0);
    type metadata accessor for Snippet.SectionHeading(0);
    OUTLINED_FUNCTION_9_24();
    sub_2682C22DC(v7);
    OUTLINED_FUNCTION_5_16();
    sub_2683D0548();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
    OUTLINED_FUNCTION_1_6();
    sub_2682CB854(v8);
    OUTLINED_FUNCTION_5_16();
    sub_2683D0548();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
    OUTLINED_FUNCTION_1_6();
    sub_2682CB724(v9);
    OUTLINED_FUNCTION_5_16();
    sub_2683D0548();
  }

  v10 = OUTLINED_FUNCTION_93_2();
  return v11(v10);
}

void Snippet.ReminderSearchResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_63_0();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
  OUTLINED_FUNCTION_0_3();
  v53 = v27;
  v54 = v26;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_0();
  v50 = v29;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
  OUTLINED_FUNCTION_0_3();
  v56 = v30;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_0();
  v51 = v32;
  v33 = OUTLINED_FUNCTION_3_8();
  type metadata accessor for Snippet.SectionHeading(v33);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802514F0, &qword_2683E34B0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18_4();
  v36 = type metadata accessor for Snippet.ReminderSearchResult(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14_3();
  v40 = (v39 - v38);
  v42 = *(v41 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
  v55 = v42;
  sub_2683CB838();
  v43 = *(v36 + 28);
  OUTLINED_FUNCTION_63_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
  sub_2683CB838();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_2682CB668();
  sub_2683D06F8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v25);
    (*(v56 + 8))(&v40[v55], v52);
    (*(v53 + 8))(&v40[v43], v54);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC68, &unk_2683E3470);
    OUTLINED_FUNCTION_40_10();
    sub_2682CB4DC(v44);
    sub_2683D04A8();
    *v40 = 0;
    OUTLINED_FUNCTION_9_24();
    sub_2682C22DC(v45);
    sub_2683D04A8();
    OUTLINED_FUNCTION_10_20();
    sub_2682B5320();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_2_4();
    sub_2682CB854(v46);
    sub_2683D04A8();
    (*(v56 + 40))(&v40[v55], v51, v52);
    OUTLINED_FUNCTION_2_4();
    sub_2682CB724(v47);
    sub_2683D04A8();
    v48 = OUTLINED_FUNCTION_72_2();
    v49(v48);
    (*(v53 + 40))(&v40[v43], v50, v54);
    OUTLINED_FUNCTION_45_5();
    sub_2682B5274();
    __swift_destroy_boxed_opaque_existential_0(v25);
    OUTLINED_FUNCTION_41_8();
    sub_2682B52CC();
  }

  OUTLINED_FUNCTION_62();
}

void sub_2682B80C8()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  OUTLINED_FUNCTION_0_3();
  v66 = v3;
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19_3();
  v65 = v4 - v5;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_17();
  v68 = v7;
  OUTLINED_FUNCTION_3_8();
  v8 = sub_2683CB528();
  OUTLINED_FUNCTION_0_3();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  v15 = OUTLINED_FUNCTION_23(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19_3();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v64 - v20;
  sub_2682CC640();
  if (v71)
  {
    __swift_project_boxed_opaque_existential_1(&v69, v71);
    sub_268157E08();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_0(&v69);
    if (v23)
    {
      sub_2682BAFB0(v1, v23, 0, &v69);

      v24 = v69;
      if (v70 != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251428, &qword_2683E3450);
        v25 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_2683D1EC0;
        v27 = v26 + v25;
        v28 = type metadata accessor for Snippet.SectionHeading(0);
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v32, v33, v34, v28);

        sub_2681D5F4C(v21, v27);
        v35 = v27 + *(v67 + 20);
        *v35 = v24;
        *(v35 + 8) = 0;
      }

      goto LABEL_20;
    }
  }

  else
  {
    sub_26812D9E0(&v69, &qword_28024ED48, &qword_2683E3D20);
  }

  v36 = OUTLINED_FUNCTION_92_2();
  v37(v36);
  v38 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v39 = swift_allocObject();
  (*(v10 + 32))(v39 + v38, v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  v64[1] = v39;
  v41 = sub_2682B3154(v40, sub_2682CC544, v39);
  v42 = 0;
  v43 = 0;
  v44 = MEMORY[0x277D84F90];
  do
  {
    v45 = v42;
    if (v41[2])
    {
      v46 = v18;
      v47 = *(&unk_2878FB418 + v43 + 32);
      v48 = sub_2682E18EC(v47);
      if (v49)
      {
        v50 = *(v41[7] + 8 * v48);
        v51 = type metadata accessor for Snippet.SectionHeading(0);
        if (v47)
        {
          v52 = sub_2682BD204;
          v53 = 1;
          v18 = v46;
        }

        else
        {
          v18 = v46;
          swift_storeEnumTagMultiPayload();
          v53 = 0;
          v52 = sub_2682BD208;
        }

        __swift_storeEnumTagSinglePayload(v18, v53, 1, v51);
        v69 = v50;
        OUTLINED_FUNCTION_107_1();
        swift_bridgeObjectRetain_n();
        sub_2682C260C(v52, 0);

        v54 = v69;
        v55 = v65;
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v56, v57, v58, v51);
        sub_2681D5F4C(v18, v55);
        v59 = v55 + *(v67 + 20);
        *v59 = v54;
        *(v59 + 8) = 0;
        OUTLINED_FUNCTION_1_39();
        sub_2682B5320();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2682E54A4();
          v44 = v62;
        }

        v61 = *(v44 + 16);
        v60 = *(v44 + 24);
        if (v61 >= v60 >> 1)
        {
          OUTLINED_FUNCTION_22_2(v60);
          sub_2682E54A4();
          v44 = v63;
        }

        *(v44 + 16) = v61 + 1;
        OUTLINED_FUNCTION_11_7();
        OUTLINED_FUNCTION_1_39();
        sub_2682B5320();
      }

      else
      {
        v18 = v46;
      }
    }

    v42 = 1;
    v43 = 1u;
  }

  while ((v45 & 1) == 0);

LABEL_20:
  OUTLINED_FUNCTION_29_0();
}

void sub_2682B8600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_0();
  v202 = v20;
  v200 = v21;
  v23 = v22;
  v199[3] = v24;
  v26 = v25;
  v203 = v27;
  v28 = type metadata accessor for Snippet.SectionHeading(0);
  v29 = OUTLINED_FUNCTION_23(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_3();
  v201 = v31 - v30;
  v32 = OUTLINED_FUNCTION_3_8();
  v238 = type metadata accessor for Snippet.Reminder(v32);
  OUTLINED_FUNCTION_0_3();
  v240 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19_3();
  v37 = v35 - v36;
  v39 = MEMORY[0x28223BE20](v38);
  v41 = v199 - v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_56_3();
  v237 = v43;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_15_17();
  v218 = v45;
  v46 = OUTLINED_FUNCTION_3_8();
  v241 = type metadata accessor for Snippet.ReminderSearchResult.Section(v46);
  OUTLINED_FUNCTION_0_3();
  v48 = v47;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_19_3();
  v233 = v50 - v51;
  OUTLINED_FUNCTION_8_0();
  v53 = MEMORY[0x28223BE20](v52);
  v55 = v199 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v58 = v199 - v57;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  v60 = MEMORY[0x28223BE20](v59);
  v62 = v199 - v61;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_15_17();
  v208 = v67;
  if ((v23 & 1) == 0)
  {

    v197 = v26;
    goto LABEL_78;
  }

  v68 = *(v26 + 16);
  v69 = MEMORY[0x277D84F90];
  if (!v68)
  {
LABEL_77:
    v197 = v69;
    goto LABEL_78;
  }

  v248 = MEMORY[0x277D84F90];
  v70 = &v248;
  v199[0] = v68;
  sub_2683909A0(0, v68, 0);
  OUTLINED_FUNCTION_11_7();
  v71 = 0;
  v236 = v72;
  v199[1] = v26 + v72;
  v73 = *(v48 + 72);
  v207 = v248;
  v234 = v55;
  v225 = v58;
  v213 = v62;
  v222 = v41;
  v235 = v73;
LABEL_4:
  v206 = v71;
  OUTLINED_FUNCTION_2_34();
  sub_2682B5274();
  sub_2682B5274();
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_97_2();
  v221 = v74;
  v75 = *(v74 + 16);
  v205 = v76;
  if ((v76 & 1) == 0)
  {
    if (!v75)
    {
LABEL_69:
      OUTLINED_FUNCTION_0_49();
      sub_2682B52CC();
      v193 = v69;
      OUTLINED_FUNCTION_100_1();
      goto LABEL_70;
    }

    v249 = v69;
    v170 = v221;

    OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_95_2();
    sub_268390728(v171, v172, v173);
    v174 = 0;
    v175 = v249;
    OUTLINED_FUNCTION_11_7();
    v239 = v176;
    v232 = v170 + v176;
    while (1)
    {
      OUTLINED_FUNCTION_99_1();
      if (v174 >= v177)
      {
        break;
      }

      v62 = *(v240 + 72);
      OUTLINED_FUNCTION_11_29();
      sub_2682B5274();
      v178 = v69;
      v179 = v218;
      sub_2682B5274();
      OUTLINED_FUNCTION_91_2();

      *(v70 + v179) = v178;
      v70 = v179;
      OUTLINED_FUNCTION_6_27();
      sub_2682B52CC();
      v180 = v175;
      v249 = v175;
      v182 = *(v175 + 16);
      v181 = *(v175 + 24);
      if (v182 >= v181 >> 1)
      {
        OUTLINED_FUNCTION_28_13(v181);
        OUTLINED_FUNCTION_59_3();
        sub_268390728(v183, v184, v185);
        v70 = v218;
        v180 = v249;
      }

      v174 = (v174 + 1);
      *(v180 + 16) = v182 + 1;
      v175 = v180;
      OUTLINED_FUNCTION_3_33();
      sub_2682B5320();
      v69 = MEMORY[0x277D84F90];
      if (v220 == v174)
      {
        OUTLINED_FUNCTION_0_49();
        sub_2682B52CC();

        OUTLINED_FUNCTION_83_2();
        OUTLINED_FUNCTION_101_1();
        OUTLINED_FUNCTION_100_1();
        v193 = v175;
        goto LABEL_70;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    return;
  }

  if (!v75)
  {
    goto LABEL_69;
  }

  v247 = v69;
  OUTLINED_FUNCTION_95_2();
  sub_2683909A0(v77, v78, v79);
  v70 = 0;
  v211 = v247;
  v204 = v221 + v236;
  while (1)
  {
    OUTLINED_FUNCTION_99_1();
    if (v70 >= v80)
    {
      goto LABEL_85;
    }

    v210 = v70;
    OUTLINED_FUNCTION_2_34();
    sub_2682B5274();
    sub_2682B5274();
    OUTLINED_FUNCTION_48_7();
    OUTLINED_FUNCTION_97_2();
    v224 = v81;
    v82 = *(v81 + 16);
    v209 = v83;
    v223 = v82;
    if (v83)
    {
      break;
    }

    if (!v82)
    {
      goto LABEL_56;
    }

    v249 = v69;
    v147 = v224;

    v148 = OUTLINED_FUNCTION_70_1();
    sub_268390728(v148, v82, 0);
    v149 = 0;
    v166 = v249;
    OUTLINED_FUNCTION_47_4();
    v239 = v147 + (v151 & ~v150);
    v152 = v199[2];
    do
    {
      OUTLINED_FUNCTION_99_1();
      if (v149 >= v153)
      {
        __break(1u);
        goto LABEL_83;
      }

      v62 = *(v240 + 72);
      OUTLINED_FUNCTION_11_29();
      sub_2682B5274();
      sub_2682B5274();
      OUTLINED_FUNCTION_91_2();

      *(v70 + v152) = v69;
      OUTLINED_FUNCTION_6_27();
      sub_2682B52CC();
      v154 = v166;
      v249 = v166;
      v156 = *(v166 + 16);
      v155 = *(v166 + 24);
      if (v156 >= v155 >> 1)
      {
        OUTLINED_FUNCTION_28_13(v155);
        OUTLINED_FUNCTION_59_3();
        sub_268390728(v157, v158, v159);
        v154 = v249;
      }

      ++v149;
      *(v154 + 16) = v156 + 1;
      v166 = v154;
      OUTLINED_FUNCTION_3_33();
      sub_2682B5320();
      v55 = v234;
      v69 = MEMORY[0x277D84F90];
    }

    while (v223 != v149);
    OUTLINED_FUNCTION_0_49();
    sub_2682B52CC();

    OUTLINED_FUNCTION_83_2();
    OUTLINED_FUNCTION_101_1();
LABEL_57:
    v165 = v212;
LABEL_58:
    OUTLINED_FUNCTION_48_7();
    v161 = v165 + v160;

    *v161 = v166;
    *(v161 + 8) = v209;
    v247 = v211;
    OUTLINED_FUNCTION_75_1();
    if (v141)
    {
      OUTLINED_FUNCTION_22_2(v162);
      OUTLINED_FUNCTION_59_3();
      sub_2683909A0(v167, v168, v169);
    }

    OUTLINED_FUNCTION_104_2();
    v211 = v163;
    OUTLINED_FUNCTION_1_39();
    v70 = v164;
    sub_2682B5320();
    if (v70 == v220)
    {
      OUTLINED_FUNCTION_0_49();
      sub_2682B52CC();
      OUTLINED_FUNCTION_100_1();
      v193 = v211;
LABEL_70:
      v186 = v62;
      OUTLINED_FUNCTION_48_7();
      v188 = v70 + v187;

      *v188 = v193;
      v188[8] = v205;
      v248 = v207;
      OUTLINED_FUNCTION_75_1();
      if (v141)
      {
        OUTLINED_FUNCTION_22_2(v189);
        v70 = &v248;
        OUTLINED_FUNCTION_59_3();
        sub_2683909A0(v194, v195, v196);
        OUTLINED_FUNCTION_100_1();
        v190 = v248;
      }

      v191 = v206 + 1;
      *(v190 + 16) = v193;
      v207 = v190;
      OUTLINED_FUNCTION_1_39();
      sub_2682B5320();
      v71 = v191;
      v192 = v191 == v199[0];
      v62 = v186;
      if (v192)
      {
        goto LABEL_81;
      }

      goto LABEL_4;
    }
  }

  if (!v82)
  {
LABEL_56:
    OUTLINED_FUNCTION_0_49();
    sub_2682B52CC();
    v166 = v69;
    goto LABEL_57;
  }

  v246 = v69;
  sub_2683909A0(0, v82, 0);
  v84 = 0;
  v217 = v246;
  v214 = v224 + v236;
LABEL_11:
  OUTLINED_FUNCTION_99_1();
  if (v84 >= v85)
  {
    goto LABEL_84;
  }

  v216 = v84;
  OUTLINED_FUNCTION_2_34();
  sub_2682B5274();
  sub_2682B5274();
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_97_2();
  v232 = v86;
  v62 = *(v86 + 16);
  v215 = v87;
  v228 = v62;
  if (v87)
  {
    if (!v62)
    {
LABEL_43:
      OUTLINED_FUNCTION_0_49();
      v62 = v135;
      sub_2682B52CC();
      v136 = v69;
      v137 = v219;
      goto LABEL_45;
    }

    v245 = v69;
    sub_2683909A0(0, v62, 0);
    v88 = 0;
    v89 = v245;
    v226 = v232 + v236;
    while (2)
    {
      if (v88 >= *(v232 + 16))
      {
        goto LABEL_80;
      }

      v230 = v88;
      v231 = v89;
      OUTLINED_FUNCTION_2_34();
      sub_2682B5274();
      sub_2682B5274();
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_97_2();
      v239 = v90;
      v91 = *(v90 + 16);
      v229 = v92;
      if (v92)
      {
        if (v91)
        {
          v93 = v37;
          v244 = v69;
          v94 = OUTLINED_FUNCTION_54_4();
          sub_2683909A0(v94, v95, v96);
          v97 = v244;
          v98 = v239 + v236;
          do
          {
            OUTLINED_FUNCTION_2_34();
            v99 = v233;
            sub_2682B5274();
            sub_2682B5274();
            v100 = v241;
            v101 = (v99 + *(v241 + 20));
            v102 = *v101;
            LOBYTE(v101) = *(v101 + 8);
            v242 = v102;
            v243 = v101;

            sub_2682B58E4();

            OUTLINED_FUNCTION_0_49();
            sub_2682B52CC();
            v103 = v249;
            LOBYTE(v99) = v250;
            v104 = &v55[*(v100 + 20)];

            *v104 = v103;
            v104[8] = v99;
            v244 = v97;
            v106 = *(v97 + 16);
            v105 = *(v97 + 24);
            if (v106 >= v105 >> 1)
            {
              v108 = OUTLINED_FUNCTION_22_2(v105);
              sub_2683909A0(v108, v106 + 1, 1);
              v97 = v244;
            }

            *(v97 + 16) = v106 + 1;
            v107 = v235;
            OUTLINED_FUNCTION_1_39();
            sub_2682B5320();
            v98 += v107;
            --v91;
          }

          while (v91);
          OUTLINED_FUNCTION_0_49();
          OUTLINED_FUNCTION_83_2();
          sub_2682B52CC();
          v37 = v93;
          v69 = MEMORY[0x277D84F90];
LABEL_31:
          v62 = v228;
LABEL_32:
          OUTLINED_FUNCTION_48_7();
          v118 = v227 + v117;

          *v118 = v97;
          *(v118 + 8) = v229;
          v89 = v231;
          v245 = v231;
          v120 = *(v231 + 16);
          v119 = *(v231 + 24);
          if (v120 >= v119 >> 1)
          {
            OUTLINED_FUNCTION_22_2(v119);
            OUTLINED_FUNCTION_59_3();
            sub_2683909A0(v122, v123, v124);
            v89 = v245;
          }

          v121 = v230 + 1;
          *(v89 + 16) = v120 + 1;
          v88 = v121;
          OUTLINED_FUNCTION_1_39();
          sub_2682B5320();
          if (v88 == v62)
          {
            OUTLINED_FUNCTION_0_49();
            OUTLINED_FUNCTION_101_1();
            sub_2682B52CC();
            goto LABEL_44;
          }

          continue;
        }
      }

      else if (v91)
      {
        v249 = v69;

        v109 = OUTLINED_FUNCTION_54_4();
        sub_268390728(v109, v110, v111);
        v112 = 0;
        v97 = v249;
        OUTLINED_FUNCTION_47_4();
        while (v112 < *(v239 + 16))
        {
          OUTLINED_FUNCTION_11_29();
          sub_2682B5274();
          OUTLINED_FUNCTION_19_2();
          sub_2682B5274();
          OUTLINED_FUNCTION_91_2();

          *(&v249 + v37) = v69;
          OUTLINED_FUNCTION_6_27();
          sub_2682B52CC();
          v249 = v97;
          v113 = v37;
          v115 = *(v97 + 16);
          v114 = *(v97 + 24);
          if (v115 >= v114 >> 1)
          {
            v116 = OUTLINED_FUNCTION_28_13(v114);
            sub_268390728(v116, v115 + 1, 1);
            v97 = v249;
          }

          ++v112;
          *(v97 + 16) = v115 + 1;
          OUTLINED_FUNCTION_3_33();
          sub_2682B5320();
          v37 = v113;
          v55 = v234;
          v69 = MEMORY[0x277D84F90];
          if (v91 == v112)
          {
            OUTLINED_FUNCTION_0_49();
            OUTLINED_FUNCTION_83_2();
            sub_2682B52CC();

            v41 = v222;
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_77;
      }

      break;
    }

    OUTLINED_FUNCTION_0_49();
    sub_2682B52CC();
    v97 = v69;
    goto LABEL_32;
  }

  if (!v62)
  {
    goto LABEL_43;
  }

  v249 = v69;
  v125 = v232;

  v126 = OUTLINED_FUNCTION_70_1();
  sub_268390728(v126, v62, 0);
  v127 = 0;
  v89 = v249;
  OUTLINED_FUNCTION_47_4();
  v239 = v125 + (v129 & ~v128);
  while (v127 < *(v232 + 16))
  {
    v62 = *(v240 + 72);
    sub_2682B5274();
    OUTLINED_FUNCTION_113();
    sub_2682B5274();
    OUTLINED_FUNCTION_91_2();

    *(type metadata accessor for Snippet.Reminder + v41) = v69;
    OUTLINED_FUNCTION_6_27();
    sub_2682B52CC();
    v249 = v89;
    v131 = *(v89 + 16);
    v130 = *(v89 + 24);
    if (v131 >= v130 >> 1)
    {
      OUTLINED_FUNCTION_28_13(v130);
      OUTLINED_FUNCTION_59_3();
      sub_268390728(v132, v133, v134);
      v89 = v249;
    }

    ++v127;
    *(v89 + 16) = v131 + 1;
    OUTLINED_FUNCTION_3_33();
    sub_2682B5320();
    v69 = MEMORY[0x277D84F90];
    if (v228 == v127)
    {
      OUTLINED_FUNCTION_0_49();
      OUTLINED_FUNCTION_101_1();
      sub_2682B52CC();

      OUTLINED_FUNCTION_83_2();
LABEL_44:
      v136 = v89;
      v137 = v219;
      v82 = v223;
LABEL_45:
      OUTLINED_FUNCTION_48_7();
      v139 = v137 + v138;

      *v139 = v136;
      *(v139 + 8) = v215;
      v246 = v217;
      OUTLINED_FUNCTION_75_1();
      if (v141)
      {
        OUTLINED_FUNCTION_22_2(v140);
        OUTLINED_FUNCTION_59_3();
        sub_2683909A0(v144, v145, v146);
      }

      OUTLINED_FUNCTION_104_2();
      v217 = v142;
      OUTLINED_FUNCTION_1_39();
      v84 = v143;
      sub_2682B5320();
      if (v84 == v82)
      {
        OUTLINED_FUNCTION_0_49();
        sub_2682B52CC();
        v165 = v212;
        v166 = v217;
        goto LABEL_58;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  v197 = v207;
LABEL_78:
  sub_2682B5274();
  type metadata accessor for Snippet.ReminderSearchResult(0);
  v249 = 0;
  v250 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
  v198 = v203;
  sub_2683CB838();
  LOBYTE(v249) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
  sub_2683CB838();
  *v198 = v197;
  sub_2682B5274();
  v249 = v200;
  v250 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
  sub_2683CB868();
  LOBYTE(v249) = v202;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
  sub_2683CB868();
  OUTLINED_FUNCTION_5_30();
  sub_2682B52CC();
  OUTLINED_FUNCTION_29_0();
}

void sub_2682B96A4()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  v5 = v78 - v4;
  v6 = sub_2683CB528();
  OUTLINED_FUNCTION_0_3();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_3();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251420, &qword_2683E3448);
  OUTLINED_FUNCTION_23(v13);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v14);
  v16 = v78 - v15;
  v90 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  OUTLINED_FUNCTION_0_3();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15_17();
  v78[2] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70);
  OUTLINED_FUNCTION_0_3();
  v88 = v23;
  v89 = v22;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_0();
  v93 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  v27 = OUTLINED_FUNCTION_23(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_19_3();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_56_3();
  v92 = v32;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v33);
  sub_2682CC640();
  if (v96)
  {
    __swift_project_boxed_opaque_existential_1(&v94, v96);
    sub_268157E08();
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_0(&v94);
    if (v35)
    {
      sub_2682BAFB0(v1, v35, 0, &v94);

      v36 = v94;
      if (v95 != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251428, &qword_2683E3450);
        v37 = (*(v18 + 80) + 32) & ~*(v18 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_2683D1EC0;
        v39 = type metadata accessor for Snippet.SectionHeading(0);
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v43, v44, v45, v39);

        v46 = OUTLINED_FUNCTION_113();
        sub_2681D5F4C(v46, v47);
        OUTLINED_FUNCTION_48_7();
        v49 = v38 + v37 + v48;
        *v49 = v36;
        *(v49 + 8) = 0;
      }

LABEL_21:
      OUTLINED_FUNCTION_29_0();
      return;
    }
  }

  else
  {
    sub_26812D9E0(&v94, &qword_28024ED48, &qword_2683E3D20);
  }

  v50 = v6;
  v83 = v30;
  v78[1] = v18;
  v84 = v12;

  v52 = sub_2682B34C4(v51);
  v53 = sub_2682C0944(v52);

  v94 = v53;
  sub_2682C26CC(&v94);
  v54 = 0;
  v55 = v94;
  v81 = (v8 + 16);
  v82 = (v8 + 32);
  v80 = (v8 + 8);
  v79 = MEMORY[0x277D84F90];
  v91 = v94[2];
  v86 = v5;
  v87 = v6;
  v56 = v92;
  v85 = v94;
  while (1)
  {
    if (v91 == v54)
    {

      goto LABEL_21;
    }

    if (v54 >= *(v55 + 16))
    {
      break;
    }

    v57 = v16;
    OUTLINED_FUNCTION_11_7();
    v58 = v93;
    sub_2682CC640();
    v59 = *(v58 + *(v89 + 48));
    sub_2682CC640();
    OUTLINED_FUNCTION_72(v5, 1, v50);
    if (v60)
    {
      v61 = OUTLINED_FUNCTION_55_3();
      sub_26812D9E0(v61, v62, qword_2683D5760);
      v65 = type metadata accessor for Snippet.SectionHeading(0);
      v64 = v83;
      OUTLINED_FUNCTION_92_2();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_89_1(v64);
      v94 = v59;

      sub_2682C2554(&v94, sub_2682C4014, sub_2682C2CB0);
      v16 = v57;
    }

    else
    {
      v63 = v84;
      (*v82)(v84, v5, v50);
      (*v81)(v56, v63, v50);
      v64 = v56;
      v65 = type metadata accessor for Snippet.SectionHeading(0);
      OUTLINED_FUNCTION_92_2();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_89_1(v64);
      v94 = v59;

      sub_2682C2554(&v94, sub_2682C4A88, sub_2682C2F54);
      v16 = v57;
      (*v80)(v63, v50);
    }

    v66 = v94;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v65);
    sub_2681D5F4C(v64, v16);
    v70 = v90;
    v71 = &v16[*(v90 + 20)];
    *v71 = v66;
    v71[8] = 0;
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v70);
    sub_26812D9E0(v93, &qword_280251630, &qword_2683E3D70);
    OUTLINED_FUNCTION_72(v16, 1, v70);
    if (v60)
    {
      sub_26812D9E0(v16, &qword_280251420, &qword_2683E3448);
      ++v54;
      v5 = v86;
      v50 = v87;
      v56 = v92;
      v55 = v85;
    }

    else
    {
      sub_2682B5320();
      sub_2682B5320();
      v72 = v79;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v87;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2682E54A4();
        v72 = v76;
      }

      v75 = *(v72 + 16);
      v74 = *(v72 + 24);
      v79 = v72;
      if (v75 >= v74 >> 1)
      {
        OUTLINED_FUNCTION_22_2(v74);
        sub_2682E54A4();
        v79 = v77;
      }

      ++v54;
      *(v79 + 16) = v75 + 1;
      OUTLINED_FUNCTION_11_7();
      OUTLINED_FUNCTION_1_39();
      sub_2682B5320();
      v56 = v92;
      v55 = v85;
      v5 = v86;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_2682B9EA8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  sub_2682CC640();
  if (!v27)
  {
    sub_26812D9E0(&v25, &qword_28024ED48, &qword_2683E3D20);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(&v25, v27);
  sub_268157E08();
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_0(&v25);
  if (!v8)
  {
LABEL_6:
    OUTLINED_FUNCTION_113();
    sub_2682BA0C0();
    return v22;
  }

  sub_2682BAFB0(a1, v8, 0, &v25);

  v9 = v25;
  if (v26 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251428, &qword_2683E3450);
    v10 = (type metadata accessor for Snippet.ReminderSearchResult.Section(0) - 8);
    v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2683D1EC0;
    v13 = v12 + v11;
    v14 = type metadata accessor for Snippet.SectionHeading(0);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);

    sub_2681D5F4C(v6, v13);
    v21 = v13 + v10[7];
    *v21 = v9;
    *(v21 + 8) = 0;

    return v12;
  }

  return v9;
}

void sub_2682BA0C0()
{
  OUTLINED_FUNCTION_30_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  v1 = OUTLINED_FUNCTION_23(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_19_3();
  v42 = v2 - v3;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_17();
  v47 = v5;
  v6 = OUTLINED_FUNCTION_3_8();
  type metadata accessor for Snippet.ReminderSearchResult.Section(v6);
  OUTLINED_FUNCTION_0_3();
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_3();
  v48 = v9 - v8;

  v11 = sub_2682B3BB4(v10);
  v12 = sub_2682C0A44(v11);

  v54[0] = v12;
  sub_2682C2780(v54);
  v13 = v54[0];
  v14 = *(v54[0] + 16);
  if (v14)
  {
    v58 = MEMORY[0x277D84F90];
    v15 = OUTLINED_FUNCTION_70_1();
    sub_2683909A0(v15, v14, 0);
    v16 = 0;
    v17 = (v13 + 32);
    v18 = v58;
    v43 = v14 - 1;
    v44 = v13;
    while (v16 < *(v13 + 16))
    {
      memcpy(v54, v17, sizeof(v54));
      v56 = *v17;
      v57 = v17[2];
      v19 = v54[13];
      v20 = v54[3];
      memcpy(v55, v17 + 4, sizeof(v55));
      if (v54[3])
      {
        v46 = v54[13];
        v21 = v17[2];
        *v47 = *v17;
        *(v47 + 16) = v21;
        *(v47 + 24) = v20;
        memcpy((v47 + 32), v55, 0x41uLL);
        v22 = type metadata accessor for Snippet.SectionHeading(0);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_89_1(v47);
        sub_2682CC640();
        if (v51)
        {
          __swift_project_boxed_opaque_existential_1(v50, v51);
          memcpy(v49, v55, sizeof(v49));
          OUTLINED_FUNCTION_79_1();
          sub_2682CC640();
          OUTLINED_FUNCTION_79_1();
          sub_2682CC640();
          sub_2681575D0();
          v24 = v23;
          __swift_destroy_boxed_opaque_existential_0(v50);
        }

        else
        {
          OUTLINED_FUNCTION_79_1();
          sub_2682CC640();
          OUTLINED_FUNCTION_79_1();
          sub_2682CC640();
          sub_26812D9E0(v50, &qword_28024ED48, &qword_2683E3D20);
          v24 = 0;
        }

        v13 = v44;
        sub_2682BAFB0(v46, v24, 1, &v52);

        v33 = v52;
        v34 = v53;
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v35, v36, v37, v22);
        sub_2681D5F4C(v47, v48);
        sub_26812D9E0(v54, &qword_280251640, &qword_2683E3D80);
        v38 = v48 + *(v45 + 20);
        *v38 = v33;
        *(v38 + 8) = v34;
      }

      else
      {
        v25 = type metadata accessor for Snippet.SectionHeading(0);
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v29, v30, v31, v25);
        OUTLINED_FUNCTION_79_1();
        sub_2682CC640();
        sub_2681D5F4C(v42, v48);
        v32 = v48 + *(v45 + 20);

        sub_26812D9E0(v54, &qword_280251640, &qword_2683E3D80);
        *v32 = v19;
        *(v32 + 8) = 0;
        v13 = v44;
      }

      v58 = v18;
      v40 = *(v18 + 16);
      v39 = *(v18 + 24);
      if (v40 >= v39 >> 1)
      {
        v41 = OUTLINED_FUNCTION_28_13(v39);
        sub_2683909A0(v41, v40 + 1, 1);
        v18 = v58;
      }

      *(v18 + 16) = v40 + 1;
      OUTLINED_FUNCTION_11_7();
      OUTLINED_FUNCTION_1_39();
      sub_2682B5320();
      if (v43 == v16)
      {

        goto LABEL_16;
      }

      v17 += 14;
      ++v16;
    }

    __break(1u);

    __break(1u);
  }

  else
  {

LABEL_16:
    OUTLINED_FUNCTION_29_0();
  }
}

void sub_2682BA568()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for Snippet.ReminderSearchResult(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v9 = (v8 - v7);
  type metadata accessor for Snippet.SectionHeading(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_17();
  v13 = v12;
  switch(v3)
  {
    case 0:
      OUTLINED_FUNCTION_55_3();
      sub_2682B80C8();
      OUTLINED_FUNCTION_29_13();
      goto LABEL_8;
    case 1:
      OUTLINED_FUNCTION_55_3();
      sub_2682B96A4();
      OUTLINED_FUNCTION_29_13();
      goto LABEL_8;
    case 2:
      v14 = OUTLINED_FUNCTION_55_3();
      sub_2682B9EA8(v14, v15);
      OUTLINED_FUNCTION_29_13();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_27();
      sub_2682B5274();
      OUTLINED_FUNCTION_21_17();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
      OUTLINED_FUNCTION_62_1(v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
      sub_2683CB838();
      *v1 = v5;
      sub_2682B5274();
      OUTLINED_FUNCTION_73_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
      OUTLINED_FUNCTION_66_1();
      sub_2683CB868();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
      OUTLINED_FUNCTION_66_1();
      sub_2683CB868();
      goto LABEL_12;
    case 3:
    case 6:
      OUTLINED_FUNCTION_55_3();
      sub_2682BA0C0();
      OUTLINED_FUNCTION_29_13();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_27();
      sub_2682B5274();
      OUTLINED_FUNCTION_21_17();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
      sub_2683CB838();
      OUTLINED_FUNCTION_63_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
      sub_2683CB838();
      *v9 = v5;
      sub_2682B5274();
      OUTLINED_FUNCTION_73_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
      OUTLINED_FUNCTION_66_1();
      sub_2683CB868();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
      OUTLINED_FUNCTION_66_1();
      sub_2683CB868();
      sub_2682B52CC();
      sub_2682B52CC();
      Snippet.ReminderSearchResult.promotingFirstHeadingIfSingleSectionWithHeading()();
      OUTLINED_FUNCTION_41_8();
      goto LABEL_13;
    case 4:
      v20 = OUTLINED_FUNCTION_55_3();
      sub_2682B9EA8(v20, v21);
      OUTLINED_FUNCTION_29_13();
LABEL_8:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_27();
      sub_2682B5274();
      OUTLINED_FUNCTION_21_17();
      goto LABEL_10;
    case 5:
      v22 = OUTLINED_FUNCTION_55_3();
      sub_2682B9EA8(v22, v23);
      OUTLINED_FUNCTION_29_13();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_27();
      sub_2682B5274();
LABEL_10:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
      OUTLINED_FUNCTION_62_1(v24);
      OUTLINED_FUNCTION_63_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
      sub_2683CB838();
      *v1 = v5;
      break;
    default:

      OUTLINED_FUNCTION_55_3();
      sub_2682BA0C0();
      v18 = v17;
      *v13 = v5;
      v13[1] = v3;
      swift_storeEnumTagMultiPayload();
      sub_2682B5274();
      OUTLINED_FUNCTION_21_17();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
      OUTLINED_FUNCTION_62_1(v19);
      OUTLINED_FUNCTION_63_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
      sub_2683CB838();
      *v1 = v18;
      break;
  }

  sub_2682B5274();
  OUTLINED_FUNCTION_73_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
  OUTLINED_FUNCTION_66_1();
  sub_2683CB868();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
  OUTLINED_FUNCTION_66_1();
  sub_2683CB868();
LABEL_12:
  sub_2682B52CC();
LABEL_13:
  sub_2682B52CC();
  type metadata accessor for Snippet(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2682BAAF4(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v2 = sub_2683CB528();
  v35 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v33 = &v32 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251618, &qword_2683E3D58);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  type metadata accessor for Snippet.Reminder(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
  sub_2683CB858();
  v20 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v20) == 1)
  {
    sub_26812D9E0(v13, &qword_28024D5D0, &unk_2683D2CA0);
    v21 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
    sub_2683CB858();
    sub_2682B52CC();
    v21 = 0;
  }

  __swift_storeEnumTagSinglePayload(v19, v21, 1, v2);
  sub_2683CB858();
  if (__swift_getEnumTagSinglePayload(v11, 1, v20) == 1)
  {
    sub_26812D9E0(v11, &qword_28024D5D0, &unk_2683D2CA0);
    v22 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
    sub_2683CB858();
    sub_2682B52CC();
    v22 = 0;
  }

  __swift_storeEnumTagSinglePayload(v17, v22, 1, v2);
  v23 = *(v37 + 48);
  sub_2682CC5D8();
  sub_2682CC5D8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v2) == 1)
  {
    sub_26812D9E0(&v7[v23], &qword_28024DB08, qword_2683D5760);
    v24 = 0;
  }

  else if (__swift_getEnumTagSinglePayload(&v7[v23], 1, v2) == 1)
  {
    sub_26812D9E0(v7, &qword_28024DB08, qword_2683D5760);
    v24 = 1;
  }

  else
  {
    v25 = v35;
    v26 = *(v35 + 32);
    v27 = v33;
    v26(v33, v7, v2);
    v28 = &v7[v23];
    v29 = v34;
    v26(v34, v28, v2);
    v24 = sub_2683CB4C8();
    v30 = *(v25 + 8);
    v30(v29, v2);
    v30(v27, v2);
  }

  return v24 & 1;
}

void sub_2682BAFB0(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v220 = a3;
  v255 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v212 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v221 = v212 - v10;
  v264 = type metadata accessor for Snippet.Reminder(0);
  v262 = *(v264 - 8);
  v11 = MEMORY[0x28223BE20](v264);
  v251 = v212 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v270 = v212 - v14;
  MEMORY[0x28223BE20](v13);
  v247 = v212 - v15;
  v16 = sub_2683CB598();
  v267 = *(v16 - 8);
  v268 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v266 = v212 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v217 = v212 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251420, &qword_2683E3448);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v212 - v21;
  v263 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v250 = *(v263 - 8);
  v23 = MEMORY[0x28223BE20](v263);
  v25 = v212 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v212 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v226 = v212 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v218 = v212 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = v212 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v219 = v212 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v223 = v212 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v222 = v212 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v43 = MEMORY[0x28223BE20](v42);
  v275 = v212 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v265 = v212 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v260 = v212 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v249 = v212 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v244 = v212 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v240 = v212 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  MEMORY[0x28223BE20](v55);
  v239 = v212 - v56;
  v57 = _s14descr2878F8F29V11ListContentOMa(0) - 8;
  MEMORY[0x28223BE20](v57);
  if (!a2)
  {
    *a4 = v255;
    *(a4 + 8) = 0;

    return;
  }

  v215 = v25;
  v212[4] = v28;
  v213 = v9;
  v214 = v35;
  v216 = a4;
  v59 = *(a2 + 16);
  if (v59)
  {
    v60 = a2 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v61 = *(v58 + 72);
    v254 = MEMORY[0x277D84F90];
    v62 = v265;
    do
    {
      sub_2682B5274();
      sub_2682BD554(v255, v22);
      sub_2682B52CC();
      if (__swift_getEnumTagSinglePayload(v22, 1, v263) == 1)
      {
        sub_26812D9E0(v22, &qword_280251420, &qword_2683E3448);
      }

      else
      {
        sub_2682B5320();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v63 = v254;
        }

        else
        {
          sub_2682E54A4();
          v63 = v65;
        }

        v64 = *(v63 + 16);
        if (v64 >= *(v63 + 24) >> 1)
        {
          sub_2682E54A4();
          v63 = v66;
        }

        *(v63 + 16) = v64 + 1;
        v254 = v63;
        sub_2682B5320();
        v62 = v265;
      }

      v60 += v61;
      --v59;
    }

    while (v59);
  }

  else
  {
    v254 = MEMORY[0x277D84F90];
    v62 = v265;
  }

  v67 = MEMORY[0x277D84F90];
  v224 = *(v254 + 16);
  if (!v224)
  {
    v70 = MEMORY[0x277D84F90];
    v71 = v262;
LABEL_130:
    v145 = *(v70 + 16);
    if (v145)
    {
      v280 = MEMORY[0x277D84F90];
      v146 = v70;
      sub_2683909F8(0, v145, 0);
      v147 = v280;
      v148 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v238 = v146;
      v149 = v146 + v148;
      v150 = *(v71 + 72);
      v151 = v268;
      v152 = (v267 + 16);
      v153 = v217;
      do
      {
        v154 = v247;
        sub_2682B5274();
        (*v152)(v153, v154, v151);
        sub_2682B52CC();
        v280 = v147;
        v156 = *(v147 + 16);
        v155 = *(v147 + 24);
        if (v156 >= v155 >> 1)
        {
          sub_2683909F8(v155 > 1, v156 + 1, 1);
          v147 = v280;
        }

        *(v147 + 16) = v156 + 1;
        (*(v267 + 32))(v147 + ((*(v267 + 80) + 32) & ~*(v267 + 80)) + *(v267 + 72) * v156, v153, v151);
        v149 += v150;
        --v145;
      }

      while (v145);
    }

    else
    {
LABEL_138:

      v147 = MEMORY[0x277D84F90];
    }

    v157 = sub_2682B45FC(v147);
    v158 = 0;
    v274 = *(v255 + 16);
    v275 = MEMORY[0x277D84F90];
    while (v158 != v274)
    {
      v159 = *(v262 + 72);
      v277 = (*(v262 + 80) + 32) & ~*(v262 + 80);
      v278 = v158 + 1;
      v276 = v159;
      sub_2682B5274();
      if (*(v157 + 16))
      {
        sub_2682C22DC(&qword_28024D890);
        v160 = sub_2683CF9F8();
        v161 = ~(-1 << *(v157 + 32));
        while (1)
        {
          v162 = v160 & v161;
          if (((*(v157 + 56 + (((v160 & v161) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v160 & v161)) & 1) == 0)
          {
            break;
          }

          v164 = v266;
          v163 = v267;
          v165 = v268;
          (*(v267 + 16))(v266, *(v157 + 48) + *(v267 + 72) * v162, v268);
          sub_2682C22DC(&qword_28024DBA8);
          v166 = sub_2683CFA58();
          (*(v163 + 8))(v164, v165);
          v160 = v162 + 1;
          if (v166)
          {
            sub_2682B52CC();
            goto LABEL_151;
          }
        }
      }

      sub_2682B5320();
      v167 = v275;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v280 = v167;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268390728(0, *(v167 + 2) + 1, 1);
        v167 = v280;
      }

      v170 = *(v167 + 2);
      v169 = *(v167 + 3);
      if (v170 >= v169 >> 1)
      {
        sub_268390728(v169 > 1, v170 + 1, 1);
        v167 = v280;
      }

      *(v167 + 2) = v170 + 1;
      v275 = v167;
      sub_2682B5320();
LABEL_151:
      v158 = v278;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251428, &qword_2683E3450);
    v171 = *(v250 + 72);
    v172 = (*(v250 + 80) + 32) & ~*(v250 + 80);
    v173 = swift_allocObject();
    *(v173 + 16) = xmmword_2683D1EC0;
    v174 = type metadata accessor for Snippet.SectionHeading(0);
    v175 = v221;
    __swift_storeEnumTagSinglePayload(v221, 1, 1, v174);
    v278 = v174;
    __swift_storeEnumTagSinglePayload(v173 + v172, 1, 1, v174);
    sub_2681D5F4C(v175, v173 + v172);
    v176 = v173 + v172 + *(v263 + 20);
    *v176 = v275;
    *(v176 + 8) = 0;
    v280 = v254;
    sub_2682C0518(v173);
    v177 = 0;
    v178 = v280;
    v179 = *(v280 + 16);
    v180 = MEMORY[0x277D84F90];
LABEL_153:
    v181 = v178 + v172 + v171 * v177;
    while (v179 != v177)
    {
      if (v177 >= *(v178 + 16))
      {
        goto LABEL_202;
      }

      sub_2682B5274();
      Snippet.ReminderSearchResult.Section.isEmpty.getter();
      if ((v182 & 1) == 0)
      {
        sub_2682B5320();
        v183 = swift_isUniquelyReferenced_nonNull_native();
        v280 = v180;
        if ((v183 & 1) == 0)
        {
          sub_2683909A0(0, *(v180 + 16) + 1, 1);
          v180 = v280;
        }

        v185 = *(v180 + 16);
        v184 = *(v180 + 24);
        if (v185 >= v184 >> 1)
        {
          sub_2683909A0(v184 > 1, v185 + 1, 1);
          v180 = v280;
        }

        ++v177;
        *(v180 + 16) = v185 + 1;
        sub_2682B5320();
        goto LABEL_153;
      }

      sub_2682B52CC();
      v181 += v171;
      ++v177;
    }

    if (v220)
    {
      v186 = sub_2682BE1C4(v180);

      v187 = 0;
      v188 = *(v186 + 16);
      v189 = MEMORY[0x277D84F90];
LABEL_165:
      v190 = v186 + v172 + v171 * v187;
      while (v188 != v187)
      {
        if (v187 >= *(v186 + 16))
        {
          goto LABEL_203;
        }

        sub_2682B5274();
        Snippet.ReminderSearchResult.Section.isEmpty.getter();
        if ((v191 & 1) == 0)
        {
          sub_2682B5320();
          v192 = swift_isUniquelyReferenced_nonNull_native();
          v280 = v189;
          if ((v192 & 1) == 0)
          {
            sub_2683909A0(0, *(v189 + 16) + 1, 1);
            v189 = v280;
          }

          v194 = *(v189 + 16);
          v193 = *(v189 + 24);
          if (v194 >= v193 >> 1)
          {
            sub_2683909A0(v193 > 1, v194 + 1, 1);
            v189 = v280;
          }

          ++v187;
          *(v189 + 16) = v194 + 1;
          sub_2682B5320();
          goto LABEL_165;
        }

        sub_2682B52CC();
        v190 += v171;
        ++v187;
      }

      v203 = v214;
      if (*(v189 + 16) == 1)
      {
        sub_2682B5274();
        v204 = sub_2682BF2F8(v203);
        sub_2682B52CC();
        if (v204)
        {
          sub_2682B5274();
LABEL_192:

          v207 = v203 + *(v263 + 20);
          v208 = *v207;
          v209 = *(v207 + 8);

          sub_2682B52CC();
          v210 = v216;
          *v216 = v208;
          *(v210 + 8) = v209;
          return;
        }
      }

      v211 = v216;
      *v216 = v189;
    }

    else
    {
      v195 = 0;
      v196 = *(v180 + 16);
      v197 = MEMORY[0x277D84F90];
LABEL_176:
      v198 = v180 + v172 + v171 * v195;
      while (v196 != v195)
      {
        if (v195 >= *(v180 + 16))
        {
          goto LABEL_204;
        }

        sub_2682B5274();
        Snippet.ReminderSearchResult.Section.isEmpty.getter();
        if ((v199 & 1) == 0)
        {
          sub_2682B5320();
          v200 = swift_isUniquelyReferenced_nonNull_native();
          v280 = v197;
          if ((v200 & 1) == 0)
          {
            sub_2683909A0(0, *(v197 + 16) + 1, 1);
            v197 = v280;
          }

          v202 = *(v197 + 16);
          v201 = *(v197 + 24);
          if (v202 >= v201 >> 1)
          {
            sub_2683909A0(v201 > 1, v202 + 1, 1);
            v197 = v280;
          }

          ++v195;
          *(v197 + 16) = v202 + 1;
          sub_2682B5320();
          goto LABEL_176;
        }

        sub_2682B52CC();
        v198 += v171;
        ++v195;
      }

      if (*(v197 + 16) == 1)
      {
        sub_2682B5274();
        v205 = v213;
        sub_2682CC640();
        sub_2682B52CC();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v205, 1, v278);
        sub_26812D9E0(v205, &qword_28024DAF8, &qword_2683E3440);
        if (EnumTagSinglePayload == 1)
        {
          v203 = v214;
          sub_2682B5274();
          goto LABEL_192;
        }
      }

      v211 = v216;
      *v216 = v197;
    }

    *(v211 + 8) = 1;
    return;
  }

  v68 = 0;
  v277 = (*(v250 + 80) + 32) & ~*(v250 + 80);
  v228 = v254 + v277;
  v227 = &v239[*(v263 + 20)];
  v69 = *(v250 + 72);
  v70 = MEMORY[0x277D84F90];
  v71 = v262;
  v72 = v275;
  while (1)
  {
    v238 = v70;
    v235 = v68;
    sub_2682B5274();
    v73 = *v227;
    if (v227[8])
    {
      break;
    }

LABEL_117:
    sub_2682B52CC();
    v135 = *(v67 + 16);
    v136 = *(v238 + 16);
    if (__OFADD__(v136, v135))
    {
      goto LABEL_213;
    }

    v245 = v67;
    v137 = swift_isUniquelyReferenced_nonNull_native();
    v138 = v238;
    if ((v137 & 1) == 0 || v136 + v135 > *(v238 + 24) >> 1)
    {
      sub_2682E4B38();
      v138 = v139;
    }

    if (*(v245 + 16))
    {
      if ((*(v138 + 24) >> 1) - *(v138 + 16) < v135)
      {
        goto LABEL_217;
      }

      v140 = v138;
      swift_arrayInitWithCopy();

      v70 = v140;
      v141 = v235;
      if (v135)
      {
        v142 = *(v140 + 16);
        v99 = __OFADD__(v142, v135);
        v143 = v142 + v135;
        if (v99)
        {
          goto LABEL_220;
        }

        *(v140 + 16) = v143;
      }
    }

    else
    {
      v144 = v138;

      v70 = v144;
      v141 = v235;
      if (v135)
      {
        goto LABEL_214;
      }
    }

    v68 = v141 + 1;
    v67 = MEMORY[0x277D84F90];
    if (v68 == v224)
    {
      goto LABEL_130;
    }
  }

  v225 = *(v73 + 16);
  if (!v225)
  {
    goto LABEL_117;
  }

  v230 = v73 + v277;
  v229 = &v240[*(v263 + 20)];
  v212[1] = v73;

  v74 = 0;
  v245 = v67;
  while (1)
  {
    v236 = v74;
    sub_2682B5274();
    v75 = *v229;
    if (v229[8])
    {
      break;
    }

LABEL_104:
    sub_2682B52CC();
    v127 = *(v67 + 16);
    v128 = *(v245 + 16);
    if (__OFADD__(v128, v127))
    {
      goto LABEL_211;
    }

    v246 = v67;
    v129 = swift_isUniquelyReferenced_nonNull_native();
    v130 = v245;
    if ((v129 & 1) == 0 || v128 + v127 > *(v245 + 24) >> 1)
    {
      sub_2682E4B38();
      v130 = v131;
    }

    v132 = *(v246 + 16);
    v245 = v130;
    if (v132)
    {
      if ((*(v130 + 24) >> 1) - *(v130 + 16) < v127)
      {
        goto LABEL_216;
      }

      swift_arrayInitWithCopy();

      if (v127)
      {
        v133 = *(v245 + 16);
        v99 = __OFADD__(v133, v127);
        v134 = v133 + v127;
        if (v99)
        {
          goto LABEL_219;
        }

        *(v245 + 16) = v134;
      }
    }

    else
    {

      if (v127)
      {
        goto LABEL_212;
      }
    }

    v74 = v236 + 1;
    v67 = MEMORY[0x277D84F90];
    if (v236 + 1 == v225)
    {

      v67 = v245;
      goto LABEL_117;
    }
  }

  v231 = *(v75 + 16);
  if (!v231)
  {
    goto LABEL_104;
  }

  v234 = v75 + v277;
  v233 = &v244[*(v263 + 20)];
  v212[2] = v75;

  v76 = 0;
  v246 = v67;
  while (1)
  {
    v237 = v76;
    sub_2682B5274();
    v77 = *v233;
    if (v233[8])
    {
      break;
    }

LABEL_91:
    sub_2682B52CC();
    v119 = *(v67 + 16);
    v120 = *(v246 + 16);
    if (__OFADD__(v120, v119))
    {
      goto LABEL_209;
    }

    v252 = v67;
    v121 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v246;
    if ((v121 & 1) == 0 || v120 + v119 > *(v246 + 24) >> 1)
    {
      sub_2682E4B38();
      v122 = v123;
    }

    v124 = *(v252 + 16);
    v246 = v122;
    if (v124)
    {
      if ((*(v122 + 24) >> 1) - *(v122 + 16) < v119)
      {
        goto LABEL_215;
      }

      swift_arrayInitWithCopy();

      if (v119)
      {
        v125 = *(v246 + 16);
        v99 = __OFADD__(v125, v119);
        v126 = v125 + v119;
        if (v99)
        {
          goto LABEL_218;
        }

        *(v246 + 16) = v126;
      }
    }

    else
    {

      if (v119)
      {
        goto LABEL_210;
      }
    }

    v76 = v237 + 1;
    v67 = MEMORY[0x277D84F90];
    if (v237 + 1 == v231)
    {

      v67 = v246;
      goto LABEL_104;
    }
  }

  v241 = *(v77 + 16);
  if (!v241)
  {
    goto LABEL_91;
  }

  v243 = v77 + v277;
  v242 = &v249[*(v263 + 20)];
  v212[3] = v77;

  v78 = 0;
  v252 = v67;
  while (1)
  {
    v248 = v78;
    sub_2682B5274();
    v79 = *v242;
    if (v242[8])
    {
      break;
    }

LABEL_78:
    sub_2682B52CC();
    v111 = *(v110 + 16);
    v112 = *(v252 + 16);
    if (__OFADD__(v112, v111))
    {
      goto LABEL_205;
    }

    v113 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v252;
    if ((v113 & 1) == 0 || v112 + v111 > *(v252 + 24) >> 1)
    {
      sub_2682E4B38();
      v114 = v115;
    }

    v67 = MEMORY[0x277D84F90];
    v116 = *(v110 + 16);
    v252 = v114;
    if (v116)
    {
      if ((*(v114 + 24) >> 1) - *(v114 + 16) < v111)
      {
        goto LABEL_207;
      }

      swift_arrayInitWithCopy();

      if (v111)
      {
        v117 = *(v252 + 16);
        v99 = __OFADD__(v117, v111);
        v118 = v117 + v111;
        if (v99)
        {
          goto LABEL_208;
        }

        *(v252 + 16) = v118;
      }
    }

    else
    {

      if (v111)
      {
        goto LABEL_206;
      }
    }

    v78 = v248 + 1;
    if (v248 + 1 == v241)
    {

      v67 = v252;
      goto LABEL_91;
    }
  }

  v258 = *(v79 + 16);
  if (!v258)
  {
    v110 = v67;
    goto LABEL_78;
  }

  v257 = v79 + v277;
  v256 = &v260[*(v263 + 20)];
  v232 = v79;

  v80 = 0;
  v261 = v67;
  while (1)
  {
    v259 = v80;
    sub_2682B5274();
    v81 = *v256;
    if (v256[8])
    {
      break;
    }

LABEL_64:
    sub_2682B52CC();
    v102 = *(v101 + 16);
    v103 = *(v261 + 16);
    if (__OFADD__(v103, v102))
    {
      goto LABEL_198;
    }

    v104 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v261;
    if ((v104 & 1) == 0 || v103 + v102 > *(v261 + 24) >> 1)
    {
      sub_2682E4B38();
      v105 = v106;
    }

    v67 = MEMORY[0x277D84F90];
    v107 = *(v101 + 16);
    v261 = v105;
    if (v107)
    {
      if ((*(v105 + 24) >> 1) - *(v105 + 16) < v102)
      {
        goto LABEL_200;
      }

      swift_arrayInitWithCopy();

      if (v102)
      {
        v108 = *(v261 + 16);
        v99 = __OFADD__(v108, v102);
        v109 = v108 + v102;
        if (v99)
        {
          goto LABEL_201;
        }

        *(v261 + 16) = v109;
      }
    }

    else
    {

      if (v102)
      {
        goto LABEL_199;
      }
    }

    v80 = v259 + 1;
    if (v259 + 1 == v258)
    {

      v110 = v261;
      goto LABEL_78;
    }
  }

  v273 = *(v81 + 16);
  if (!v273)
  {
    v101 = v67;
    goto LABEL_64;
  }

  v272 = v81 + v277;
  v271 = &v62[*(v263 + 20)];
  v253 = v81;

  v82 = 0;
  v276 = v67;
  while (1)
  {
    v274 = v82;
    sub_2682B5274();
    v83 = *v271;
    if (v271[8])
    {
      v280 = v67;
      v278 = *(v83 + 16);
      if (v278)
      {
        v84 = &v72[*(v263 + 20)];
        v269 = v83;

        v85 = 0;
        do
        {
          sub_2682B5274();
          v86 = *v84;
          if (v84[8])
          {
            v279 = v67;
            v87 = *(v86 + 16);
            if (v87)
            {
              v88 = v86 + v277;

              do
              {
                sub_2682B5274();
                Snippet.ReminderSearchResult.Section.reminders.getter();
                v90 = v89;
                sub_2682B52CC();
                sub_2682C0518(v90);
                v88 += v69;
                --v87;
              }

              while (v87);

              v86 = v279;
              v72 = v275;
              v67 = MEMORY[0x277D84F90];
            }

            else
            {
              v86 = v67;
            }
          }

          else
          {
          }

          ++v85;
          sub_2682B52CC();
          sub_2682C0518(v86);
        }

        while (v85 != v278);

        v83 = v280;
        v71 = v262;
      }

      else
      {
        v83 = v67;
      }

      v62 = v265;
    }

    else
    {
    }

    sub_2682B52CC();
    v91 = v83;
    v92 = *(v83 + 16);
    v93 = *(v276 + 16);
    if (__OFADD__(v93, v92))
    {
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v94 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v276;
    if (!v94 || v93 + v92 > *(v276 + 24) >> 1)
    {
      sub_2682E4B38();
      v95 = v96;
    }

    v67 = MEMORY[0x277D84F90];
    v97 = *(v91 + 16);
    v276 = v95;
    if (v97)
    {
      break;
    }

    if (v92)
    {
      goto LABEL_137;
    }

LABEL_60:
    v82 = v274 + 1;
    if (v274 + 1 == v273)
    {

      v101 = v276;
      goto LABEL_64;
    }
  }

  if ((*(v95 + 24) >> 1) - *(v95 + 16) >= v92)
  {
    swift_arrayInitWithCopy();

    if (v92)
    {
      v98 = *(v276 + 16);
      v99 = __OFADD__(v98, v92);
      v100 = v98 + v92;
      if (v99)
      {
        goto LABEL_197;
      }

      *(v276 + 16) = v100;
    }

    goto LABEL_60;
  }

  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
}

uint64_t sub_2682BCF10(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v2 = sub_2683CB7A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - v7;
  v9 = sub_2683CB528();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  type metadata accessor for Snippet.Reminder(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
  sub_2683CB858();
  v16 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v16) == 1)
  {
    sub_26812D9E0(v8, &qword_28024D5D0, &unk_2683D2CA0);
    v17 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
    sub_2683CB858();
    sub_2682B52CC();
    (*(v10 + 32))(v15, v13, v9);
    if (sub_2683CB4C8())
    {
      (*(v10 + 8))(v15, v9);
      v17 = 1;
    }

    else
    {
      sub_2683CB768();
      v17 = sub_2683CB758();
      (*(v3 + 8))(v5, v2);
      (*(v10 + 8))(v15, v9);
    }
  }

  return v17 & 1;
}

uint64_t sub_2682BD208(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Snippet.Reminder(0) + 24);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 0;
  }

  return sub_2683D0598();
}

uint64_t sub_2682BD278(uint64_t a1, uint64_t a2)
{
  v18[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - v6;
  v8 = sub_2683CB528();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  sub_2682CC640();

  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2683CB488();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_26812D9E0(v7, &qword_28024DB08, qword_2683D5760);
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
  }

  sub_2682CC640();

  if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
  {
    sub_2683CB488();
    if (__swift_getEnumTagSinglePayload(v5, 1, v8) != 1)
    {
      sub_26812D9E0(v5, &qword_28024DB08, qword_2683D5760);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v5, v8);
  }

  v15 = sub_2683CB4C8();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v16(v14, v8);
  return v15 & 1;
}

uint64_t sub_2682BD554@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v88 = a1;
  v86 = a2;
  v83 = sub_2683CB528();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC8, &qword_2683E3D30);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = &v78 - v4;
  v5 = type metadata accessor for Snippet.Reminder(0);
  v6 = MEMORY[0x28223BE20](v5);
  v80 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v78 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v84 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = (&v78 - v13);
  v14 = _s14descr2878F8F29V11ListContentOMa(0);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v78 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v78 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = &v78 - v22;
  sub_2682B5274();
  v87 = v23;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2682B5274();
      v51 = v21[1];
      v24 = v21[2];
      v26 = v85;
      *v85 = *v21;
      *(v26 + 8) = v51;
      v25 = type metadata accessor for Snippet.SectionHeading(0);
      goto LABEL_12;
    case 2u:
      sub_2682B5274();
      v40 = v18[16];
      v41 = *(v18 + 3);
      if (v40 != 255 && (v40 & 1) == 0)
      {
        LODWORD(v83) = v18[16];
        v84 = v41;
        v58 = 0;
        v59 = *v18;
        v60 = *(v18 + 1);
        v61 = *(v88 + 16);
        v62 = MEMORY[0x277D84F90];
        while (v61 != v58)
        {
          sub_2682B5274();
          v63 = &v9[*(v5 + 32)];
          if (*(v63 + 3) && (v64 = *(v63 + 1)) != 0 && (*v63 == v59 ? (v65 = v64 == v60) : (v65 = 0), v65 || (sub_2683D0598() & 1) != 0))
          {
            sub_2682B5320();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *__dst = v62;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_268390728(0, *(v62 + 16) + 1, 1);
              v62 = *__dst;
            }

            v68 = *(v62 + 16);
            v67 = *(v62 + 24);
            v69 = v68 + 1;
            if (v68 >= v67 >> 1)
            {
              v82 = v68 + 1;
              v81 = v68;
              sub_268390728(v67 > 1, (v68 + 1), 1);
              v69 = v82;
              v62 = *__dst;
            }

            ++v58;
            *(v62 + 16) = v69;
            sub_2682B5320();
          }

          else
          {
            sub_2682B52CC();
            ++v58;
          }
        }

        sub_2682CC5AC(v59, v60, v83);
        v70 = v79;
        sub_2682B2BB4(v62, type metadata accessor for Snippet.Reminder);
        if (__swift_getEnumTagSinglePayload(v70, 1, v5) == 1)
        {

          sub_26812D9E0(v70, &qword_28024DBC8, &qword_2683E3D30);
        }

        else
        {
          memcpy(__dst, (v70 + *(v5 + 32)), sizeof(__dst));
          sub_2682CC640();
          sub_2682B52CC();
          v71 = *&__dst[24];
          if (*&__dst[24])
          {
            v72 = v85;
            *v85 = *__dst;
            v72[2] = *&__dst[16];
            v72[3] = v71;
            memcpy(v72 + 4, &__dst[32], 0x41uLL);
            v73 = type metadata accessor for Snippet.SectionHeading(0);
            swift_storeEnumTagMultiPayload();
            __swift_storeEnumTagSinglePayload(v72, 0, 1, v73);
            sub_2682BAFB0(v62, v84, 1, &v89);

            v74 = v89;
            v75 = v90;
            v76 = v86;
            __swift_storeEnumTagSinglePayload(v86, 1, 1, v73);
            sub_2681D5F4C(v72, v76);
            v38 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
            v77 = v76 + *(v38 + 20);
            *v77 = v74;
            *(v77 + 8) = v75;
            v54 = v76;
LABEL_15:
            v55 = 0;
            goto LABEL_16;
          }
        }

        v38 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
        v54 = v86;
        v55 = 1;
LABEL_16:
        __swift_storeEnumTagSinglePayload(v54, v55, 1, v38);
        return sub_2682B52CC();
      }

      if (qword_28024C8F0 != -1)
      {
        swift_once();
      }

      v42 = sub_2683CF7E8();
      __swift_project_value_buffer(v42, qword_28027C988);
      sub_2682B5274();
      v43 = sub_2683CF7C8();
      v44 = sub_2683CFE78();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *__dst = v46;
        *v45 = 136315138;
        sub_2682B5274();
        v47 = sub_2683CFAD8();
        v49 = v48;
        sub_2682B52CC();
        v50 = sub_2681610A0(v47, v49, __dst);

        *(v45 + 4) = v50;
        _os_log_impl(&dword_2680EB000, v43, v44, "Unsupported list content: %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v46);
        MEMORY[0x26D617A40](v46, -1, -1);
        MEMORY[0x26D617A40](v45, -1, -1);
      }

      else
      {

        sub_2682B52CC();
      }

      v57 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
      __swift_storeEnumTagSinglePayload(v86, 1, 1, v57);
      return sub_2682B52CC();
    case 3u:
      sub_2682B5274();
      v24 = *v21;
      v25 = type metadata accessor for Snippet.SectionHeading(0);
      v26 = v85;
LABEL_12:
      swift_storeEnumTagMultiPayload();
      v27 = v26;
      v28 = 0;
      goto LABEL_13;
    case 4u:
      sub_2682B5274();
      v29 = *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515F8, &qword_2683F9E50) + 48));
      v30 = v82;
      v31 = v81;
      v32 = v83;
      (*(v82 + 4))(v81, v21, v83);
      v33 = v85;
      (*(v30 + 2))(v85, v31, v32);
      v34 = type metadata accessor for Snippet.SectionHeading(0);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v33, 0, 1, v34);
      v35 = v84;
      sub_2682CC640();
      v36 = sub_2682BF880(v88, v29);

      sub_26812D9E0(v33, &qword_28024DAF8, &qword_2683E3440);
      (*(v30 + 1))(v31, v32);
      v37 = v86;
      __swift_storeEnumTagSinglePayload(v86, 1, 1, v34);
      sub_2681D5F4C(v35, v37);
      v38 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
      v39 = v37 + *(v38 + 20);
      *v39 = v36;
      goto LABEL_14;
    default:
      sub_2682B5274();
      v24 = *v21;
      v25 = type metadata accessor for Snippet.SectionHeading(0);
      v26 = v85;
      v27 = v85;
      v28 = 1;
LABEL_13:
      __swift_storeEnumTagSinglePayload(v27, v28, 1, v25);
      v52 = v84;
      sub_2682CC640();
      v53 = sub_2682BF880(v88, v24);

      sub_26812D9E0(v26, &qword_28024DAF8, &qword_2683E3440);
      v37 = v86;
      __swift_storeEnumTagSinglePayload(v86, 1, 1, v25);
      sub_2681D5F4C(v52, v37);
      v38 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
      v39 = v37 + *(v38 + 20);
      *v39 = v53;
LABEL_14:
      *(v39 + 8) = 0;
      v54 = v37;
      goto LABEL_15;
  }
}

uint64_t sub_2682BE1C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v117 - v3;
  v5 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v8 = MEMORY[0x28223BE20](v7);
  v165 = v117 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v117 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v155 = v117 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v148 = v117 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v142 = v117 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v139 = v117 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v117 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v117 - v24;
  v26 = sub_2682BF620(a1);
  v28 = v27;
  v29 = type metadata accessor for Snippet.SectionHeading(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v29);
  v125 = *(v26 + 16);
  if (!v125)
  {

    v113 = MEMORY[0x277D84F90];
    goto LABEL_115;
  }

  v118 = v29;
  v119 = v28;
  v120 = v25;
  v121 = v4;
  v30 = 0;
  v31 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v117[2] = v26;
  v166 = v31;
  v128 = v26 + v31;
  v32 = *(v5 + 20);
  v137 = v23;
  v127 = &v23[v32];
  v122 = v6;
  v33 = *(v6 + 72);
  v140 = MEMORY[0x277D84F90];
  v34 = v165;
  while (1)
  {
    v135 = v30;
    sub_2682B5274();
    v35 = *v127;
    if (v127[8])
    {
      break;
    }

LABEL_102:
    sub_2682B52CC();
    v103 = *(v102 + 16);
    result = v140;
    v104 = *(v140 + 16);
    if (__OFADD__(v104, v103))
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v140;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v104 + v103 > *(v140 + 24) >> 1)
    {
      sub_2682E4B38();
      v106 = v107;
    }

    v108 = *(v102 + 16);
    v140 = v106;
    if (v108)
    {
      v109 = (*(v106 + 24) >> 1) - *(v106 + 16);
      result = type metadata accessor for Snippet.Reminder(0);
      if (v109 < v103)
      {
        goto LABEL_136;
      }

      swift_arrayInitWithCopy();

      v110 = v135;
      if (v103)
      {
        v111 = *(v140 + 16);
        v64 = __OFADD__(v111, v103);
        v112 = v111 + v103;
        if (v64)
        {
          goto LABEL_139;
        }

        *(v140 + 16) = v112;
      }
    }

    else
    {

      v110 = v135;
      if (v103)
      {
        goto LABEL_133;
      }
    }

    v30 = v110 + 1;
    if (v30 == v125)
    {

      v4 = v121;
      v25 = v120;
      v28 = v119;
      v29 = v118;
      v113 = v140;
LABEL_115:
      __swift_storeEnumTagSinglePayload(v25, 1, 1, v29);
      sub_2681D5F4C(v4, v25);
      v114 = &v25[*(v5 + 20)];
      *v114 = v113;
      v114[8] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251428, &qword_2683E3450);
      v115 = swift_allocObject();
      *(v115 + 16) = xmmword_2683D1EC0;
      sub_2682B5274();
      v169 = v28;
      sub_2682C0518(v115);
      v116 = v169;
      sub_2682B52CC();
      return v116;
    }
  }

  v126 = *(v35 + 16);
  if (!v126)
  {
    v102 = MEMORY[0x277D84F90];
    goto LABEL_102;
  }

  v130 = v35 + v166;
  v129 = &v139[*(v5 + 20)];
  v117[1] = v35;

  v36 = 0;
  v141 = MEMORY[0x277D84F90];
  v158 = v5;
  v156 = v12;
  while (1)
  {
    v136 = v36;
    sub_2682B5274();
    v37 = *v129;
    if (v129[8])
    {
      break;
    }

LABEL_88:
    sub_2682B52CC();
    v93 = *(v92 + 16);
    result = v141;
    v94 = *(v141 + 16);
    if (__OFADD__(v94, v93))
    {
      goto LABEL_130;
    }

    v95 = swift_isUniquelyReferenced_nonNull_native();
    v96 = v141;
    if ((v95 & 1) == 0 || v94 + v93 > *(v141 + 24) >> 1)
    {
      sub_2682E4B38();
      v96 = v97;
    }

    v98 = *(v92 + 16);
    v141 = v96;
    if (v98)
    {
      v99 = (*(v96 + 24) >> 1) - *(v96 + 16);
      result = type metadata accessor for Snippet.Reminder(0);
      if (v99 < v93)
      {
        goto LABEL_135;
      }

      swift_arrayInitWithCopy();

      if (v93)
      {
        v100 = *(v141 + 16);
        v64 = __OFADD__(v100, v93);
        v101 = v100 + v93;
        if (v64)
        {
          goto LABEL_138;
        }

        *(v141 + 16) = v101;
      }
    }

    else
    {

      if (v93)
      {
        goto LABEL_131;
      }
    }

    v36 = v136 + 1;
    if (v136 + 1 == v126)
    {

      v102 = v141;
      goto LABEL_102;
    }
  }

  v131 = *(v37 + 16);
  if (!v131)
  {
    v92 = MEMORY[0x277D84F90];
    goto LABEL_88;
  }

  v134 = v37 + v166;
  v133 = &v142[*(v5 + 20)];
  v123 = v37;

  v38 = 0;
  v146 = MEMORY[0x277D84F90];
  while (1)
  {
    v138 = v38;
    sub_2682B5274();
    v39 = *v133;
    if (v133[8])
    {
      break;
    }

LABEL_74:
    sub_2682B52CC();
    v83 = *(v82 + 16);
    result = v146;
    v84 = *(v146 + 16);
    if (__OFADD__(v84, v83))
    {
      goto LABEL_128;
    }

    v85 = swift_isUniquelyReferenced_nonNull_native();
    v86 = v146;
    if ((v85 & 1) == 0 || v84 + v83 > *(v146 + 24) >> 1)
    {
      sub_2682E4B38();
      v86 = v87;
    }

    v88 = *(v82 + 16);
    v146 = v86;
    if (v88)
    {
      v89 = (*(v86 + 24) >> 1) - *(v86 + 16);
      result = type metadata accessor for Snippet.Reminder(0);
      if (v89 < v83)
      {
        goto LABEL_134;
      }

      swift_arrayInitWithCopy();

      if (v83)
      {
        v90 = *(v146 + 16);
        v64 = __OFADD__(v90, v83);
        v91 = v90 + v83;
        if (v64)
        {
          goto LABEL_137;
        }

        *(v146 + 16) = v91;
      }
    }

    else
    {

      if (v83)
      {
        goto LABEL_129;
      }
    }

    v38 = v138 + 1;
    if (v138 + 1 == v131)
    {

      v92 = v146;
      goto LABEL_88;
    }
  }

  v143 = *(v39 + 16);
  if (!v143)
  {
    v82 = MEMORY[0x277D84F90];
    goto LABEL_74;
  }

  v145 = v39 + v166;
  v144 = &v148[*(v5 + 20)];
  v124 = v39;

  v40 = 0;
  v149 = MEMORY[0x277D84F90];
  while (1)
  {
    v147 = v40;
    sub_2682B5274();
    v41 = *v144;
    if (v144[8])
    {
      break;
    }

LABEL_60:
    sub_2682B52CC();
    v73 = *(v43 + 16);
    result = v149;
    v74 = *(v149 + 16);
    if (__OFADD__(v74, v73))
    {
      goto LABEL_124;
    }

    v75 = swift_isUniquelyReferenced_nonNull_native();
    v76 = v149;
    if ((v75 & 1) == 0 || v74 + v73 > *(v149 + 24) >> 1)
    {
      sub_2682E4B38();
      v76 = v77;
    }

    v78 = *(v43 + 16);
    v149 = v76;
    if (v78)
    {
      v79 = (*(v76 + 24) >> 1) - *(v76 + 16);
      result = type metadata accessor for Snippet.Reminder(0);
      if (v79 < v73)
      {
        goto LABEL_126;
      }

      swift_arrayInitWithCopy();

      v5 = v158;
      if (v73)
      {
        v80 = *(v149 + 16);
        v64 = __OFADD__(v80, v73);
        v81 = v80 + v73;
        if (v64)
        {
          goto LABEL_127;
        }

        *(v149 + 16) = v81;
      }
    }

    else
    {

      v5 = v158;
      if (v73)
      {
        goto LABEL_125;
      }
    }

    v40 = v147 + 1;
    if (v147 + 1 == v143)
    {

      v82 = v149;
      goto LABEL_74;
    }
  }

  v153 = *(v41 + 16);
  if (!v153)
  {
    v43 = MEMORY[0x277D84F90];
    goto LABEL_60;
  }

  v152 = v41 + v166;
  v151 = &v155[*(v5 + 20)];
  v132 = v41;

  v42 = 0;
  v43 = MEMORY[0x277D84F90];
  while (1)
  {
    v154 = v42;
    sub_2682B5274();
    v44 = *v151;
    if ((v151[8] & 1) == 0)
    {

      goto LABEL_46;
    }

    v163 = *(v44 + 16);
    if (v163)
    {
      break;
    }

    v46 = MEMORY[0x277D84F90];
LABEL_46:
    result = sub_2682B52CC();
    v66 = *(v46 + 16);
    v67 = *(v43 + 16);
    if (__OFADD__(v67, v66))
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v67 + v66 > *(v43 + 24) >> 1)
    {
      sub_2682E4B38();
      v43 = v68;
    }

    if (*(v46 + 16))
    {
      v69 = (*(v43 + 24) >> 1) - *(v43 + 16);
      result = type metadata accessor for Snippet.Reminder(0);
      if (v69 < v66)
      {
        goto LABEL_122;
      }

      swift_arrayInitWithCopy();

      v70 = v154;
      if (v66)
      {
        v71 = *(v43 + 16);
        v64 = __OFADD__(v71, v66);
        v72 = v71 + v66;
        if (v64)
        {
          goto LABEL_123;
        }

        *(v43 + 16) = v72;
      }
    }

    else
    {

      v70 = v154;
      if (v66)
      {
        goto LABEL_121;
      }
    }

    v42 = v70 + 1;
    if (v42 == v153)
    {

      goto LABEL_60;
    }
  }

  v162 = v44 + v166;
  v161 = &v12[*(v158 + 20)];
  v150 = v44;

  v45 = 0;
  v46 = MEMORY[0x277D84F90];
  v157 = v43;
  while (1)
  {
    sub_2682B5274();
    v47 = *v161;
    v48 = v161[8];
    v164 = v45;
    if (v48)
    {
      v49 = MEMORY[0x277D84F90];
      v169 = MEMORY[0x277D84F90];
      v167 = *(v47 + 16);
      if (v167)
      {
        v159 = v47;
        v160 = v46;
        v50 = &v34[*(v158 + 20)];

        v51 = 0;
        v52 = v49;
        do
        {
          sub_2682B5274();
          v53 = *v50;
          if (v50[8])
          {
            v168 = v52;
            v54 = *(v53 + 16);
            if (v54)
            {
              v55 = v53 + v166;

              do
              {
                sub_2682B5274();
                Snippet.ReminderSearchResult.Section.reminders.getter();
                v57 = v56;
                sub_2682B52CC();
                sub_2682C0518(v57);
                v55 += v33;
                --v54;
              }

              while (v54);

              v53 = v168;
              v34 = v165;
              v52 = MEMORY[0x277D84F90];
            }

            else
            {
              v53 = v52;
            }
          }

          else
          {
          }

          ++v51;
          sub_2682B52CC();
          sub_2682C0518(v53);
        }

        while (v51 != v167);

        v47 = v169;
        v12 = v156;
        v43 = v157;
        v46 = v160;
      }

      else
      {
        v47 = MEMORY[0x277D84F90];
      }
    }

    else
    {
    }

    result = sub_2682B52CC();
    v59 = *(v47 + 16);
    v60 = *(v46 + 16);
    if (__OFADD__(v60, v59))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v60 + v59 > *(v46 + 24) >> 1)
    {
      sub_2682E4B38();
      v46 = v61;
    }

    if (*(v47 + 16))
    {
      v62 = (*(v46 + 24) >> 1) - *(v46 + 16);
      result = type metadata accessor for Snippet.Reminder(0);
      if (v62 < v59)
      {
        goto LABEL_118;
      }

      swift_arrayInitWithCopy();

      if (v59)
      {
        v63 = *(v46 + 16);
        v64 = __OFADD__(v63, v59);
        v65 = v63 + v59;
        if (v64)
        {
          goto LABEL_119;
        }

        *(v46 + 16) = v65;
      }
    }

    else
    {

      if (v59)
      {
        goto LABEL_117;
      }
    }

    v45 = v164 + 1;
    if (v164 + 1 == v163)
    {

      goto LABEL_46;
    }
  }

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
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_2682BF2F8(uint64_t a1)
{
  v1 = type metadata accessor for Snippet.SectionHeading(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB00, &qword_2683D4180);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v1);
  v14 = *(v5 + 56);
  sub_2682CC640();
  sub_2682CC640();
  if (__swift_getEnumTagSinglePayload(v7, 1, v1) != 1)
  {
    sub_2682CC640();
    if (__swift_getEnumTagSinglePayload(&v7[v14], 1, v1) != 1)
    {
      sub_2682B5320();
      v15 = static Snippet.SectionHeading.== infix(_:_:)(v11, v3);
      sub_2682B52CC();
      sub_26812D9E0(v13, &qword_28024DAF8, &qword_2683E3440);
      sub_2682B52CC();
      sub_26812D9E0(v7, &qword_28024DAF8, &qword_2683E3440);
      return v15 & 1;
    }

    sub_26812D9E0(v13, &qword_28024DAF8, &qword_2683E3440);
    sub_2682B52CC();
    goto LABEL_6;
  }

  sub_26812D9E0(v13, &qword_28024DAF8, &qword_2683E3440);
  if (__swift_getEnumTagSinglePayload(&v7[v14], 1, v1) != 1)
  {
LABEL_6:
    sub_26812D9E0(v7, &qword_28024DB00, &qword_2683D4180);
    v15 = 0;
    return v15 & 1;
  }

  sub_26812D9E0(v7, &qword_28024DAF8, &qword_2683E3440);
  v15 = 1;
  return v15 & 1;
}

uint64_t sub_2682BF620(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v18[1] = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  while (v6 != v5)
  {
    sub_2682B5274();
    Snippet.ReminderSearchResult.Section.isEmpty.getter();
    if (v9)
    {
      sub_2682B52CC();
      ++v5;
    }

    else
    {
      sub_2682B5320();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2683909A0(0, *(v8 + 16) + 1, 1);
        v8 = v19;
      }

      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_2683909A0(v11 > 1, v12 + 1, 1);
        v13 = v12 + 1;
        v8 = v19;
      }

      ++v5;
      *(v8 + 16) = v13;
      sub_2682B5320();
      v7 = MEMORY[0x277D84F90];
    }
  }

  v14 = sub_2682B2D3C(v8);
  v15 = sub_2682DFBBC(1, v14);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v7;
  }

  sub_2682DFBBC(0, v14);

  return v16;
}

uint64_t sub_2682BF880(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC8, &qword_2683E3D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v54 - v3;
  v5 = type metadata accessor for Snippet.Reminder(0);
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v60 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v59 = &v54 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v54 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - v12;

  v15 = sub_2682B3FB0(v14);
  v16 = v15;
  v17 = MEMORY[0x277D84F98];
  v66 = MEMORY[0x277D84F98];
  v18 = v15 + 8;
  v19 = 1 << *(v15 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v15[8];
  v22 = (v19 + 63) >> 6;

  v24 = 0;
LABEL_4:
  v61 = v17;
LABEL_5:
  if (v21)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v22)
    {

      v32 = 0;
      v33 = v63;
      v34 = *(v64 + 16);
      v35 = v64 + 40;
      v57 = MEMORY[0x277D84F90];
      v36 = &qword_28024DBC8;
      v54 = v64 + 40;
      v55 = v34;
      while (2)
      {
        v37 = ~v32;
        v38 = (v35 + 16 * v32);
        v39 = v34 - v32;
        if (v34 == v32)
        {
LABEL_30:

          return v57;
        }

LABEL_17:
        if (*(v17 + 16))
        {
          v65 = v37;
          v41 = *(v38 - 1);
          v40 = *v38;

          sub_2682E1A10(v41, v40);
          if (v42)
          {
            v58 = *(v62 + 72);
            sub_2682B5274();
            v43 = v36;
            v44 = v59;
            sub_2682B5320();
            v45 = v4;
            v46 = *(v33 + 68);
            v47 = sub_2682BF880(*&v44[v46], v64);

            *&v44[v46] = v47;
            v33 = v63;
            v4 = v45;
            v17 = v61;
            sub_2682B5274();
            __swift_storeEnumTagSinglePayload(v4, 0, 1, v33);
            v36 = v43;
            sub_2682B52CC();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v33);
            v37 = v65;
            if (EnumTagSinglePayload != 1)
            {
              sub_2682B5320();
              v49 = v57;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_2682E4B38();
                v49 = v52;
              }

              v35 = v54;
              v51 = *(v49 + 16);
              if (v51 >= *(v49 + 24) >> 1)
              {
                sub_2682E4B38();
                v49 = v53;
              }

              v32 = -v65;
              *(v49 + 16) = v51 + 1;
              v57 = v49;
              sub_2682B5320();
              v34 = v55;
              continue;
            }

            goto LABEL_23;
          }

          v37 = v65;
        }

        break;
      }

      __swift_storeEnumTagSinglePayload(v4, 1, 1, v33);
LABEL_23:
      sub_26812D9E0(v4, v36, &qword_2683E3D30);
      --v37;
      v38 += 2;
      if (!--v39)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v21 = v18[v25];
    ++v24;
    if (v21)
    {
      v24 = v25;
LABEL_10:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = v26 | (v24 << 6);
      if (*(*(v16[7] + 8 * v27) + 16))
      {
        v28 = (v16[6] + 16 * v27);
        v29 = v28[1];
        v65 = *v28;
        sub_2682B5274();
        v30 = v17;
        v31 = *(v17 + 16);
        if (*(v30 + 24) <= v31)
        {

          sub_2682C1BB4(v31 + 1, 1);
          v17 = v66;
        }

        else
        {

          v17 = v61;
        }

        result = sub_2682C2438(v65, v29, v13, v17);
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void sub_2682BFDDC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2682C23C0(v4, 1, sub_2682E4728);
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

  OUTLINED_FUNCTION_88_2(v3 + 16 * v9 + 32, v7, v8, MEMORY[0x277D837D0]);

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

void sub_2682BFE84(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = *(*v2 + 16);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2682C23C0(v7 + v6, 1, sub_2682E4728);
  v1 = *v2;
  v8 = *(*v2 + 16);
  v9 = (*(*v2 + 24) >> 1) - v8;
  v10 = sub_2682CAD88(v32, (*v2 + 16 * v8 + 32), v9, v5);
  if (v10 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v10)
  {
    v12 = *(v1 + 16);
    v13 = __OFADD__(v12, v10);
    v14 = v10 + v12;
    if (v13)
    {
      __break(1u);
LABEL_13:
      v18 = (v11 + 64) >> 6;
      while (1)
      {
        v19 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_33;
        }

        if (v19 >= v18)
        {
          v34 = v4;
          v35 = 0;
          goto LABEL_7;
        }

        v20 = *(v9 + 8 * v19);
        ++v4;
        if (v20)
        {
          v16 = (v20 - 1) & v20;
          v17 = __clz(__rbit64(v20)) | (v19 << 6);
          v4 = v19;
          goto LABEL_18;
        }
      }
    }

    *(v1 + 16) = v14;
  }

  v5 = v32[0];
  if (v10 != v9)
  {
LABEL_7:
    v15 = OUTLINED_FUNCTION_113();
    sub_2681281A4(v15);
    *v2 = v1;
    return;
  }

LABEL_10:
  v3 = *(v1 + 16);
  v9 = v32[1];
  v11 = v33;
  v4 = v34;
  v30 = v33;
  if (!v35)
  {
    goto LABEL_13;
  }

  v16 = (v35 - 1) & v35;
  v17 = __clz(__rbit64(v35)) | (v34 << 6);
  v18 = (v33 + 64) >> 6;
LABEL_18:
  v21 = (*(v5 + 48) + 16 * v17);
  v23 = *v21;
  v22 = v21[1];

LABEL_19:
  v24 = *(v1 + 24);
  v31 = v24 >> 1;
  if ((v24 >> 1) < v3 + 1)
  {
    sub_2682E4728(v24 > 1, v3 + 1, 1, v1);
    v1 = v29;
    v31 = *(v29 + 24) >> 1;
  }

  while (1)
  {
    if (v3 >= v31)
    {
      *(v1 + 16) = v3;
      goto LABEL_19;
    }

    v25 = (v1 + 32 + 16 * v3);
    *v25 = v23;
    v25[1] = v22;
    ++v3;
    if (!v16)
    {
      break;
    }

    v26 = v4;
LABEL_28:
    v27 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v28 = (*(v5 + 48) + ((v26 << 10) | (16 * v27)));
    v23 = *v28;
    v22 = v28[1];
  }

  while (1)
  {
    v26 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v26 >= v18)
    {
      v33 = v30;
      v34 = v4;
      v35 = 0;
      *(v1 + 16) = v3;
      goto LABEL_7;
    }

    v16 = *(v9 + 8 * v26);
    ++v4;
    if (v16)
    {
      v4 = v26;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_2682C0138(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2682C23C0(v4, 1, sub_2682E4CC8);
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

  OUTLINED_FUNCTION_88_2(v3 + 16 * v9 + 32, v7, v8, &_s14descr2878F8F29V10ReminderIdVN);

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

uint64_t sub_2682C020C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2682C2320(result, 1);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2682C02CC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2682C23C0(v4, 1, sub_2682E4EA0);
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
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v3 + 16 * v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515E8, &unk_2683E6530);
  OUTLINED_FUNCTION_88_2(v9 + 32, v11, v12, v10);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_67_2();
  if (!v5)
  {
    *(v3 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_2682C038C(uint64_t a1)
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

  result = sub_2682C23C0(result, 1, sub_2682E4F64);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 16 * v7 + 32), (a1 + 32), 16 * v3);

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

void sub_2682C0458(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2682C23C0(v4, 1, sub_2682E5318);
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
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v3 + 16 * v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515D0, &unk_2683E3D00);
  OUTLINED_FUNCTION_88_2(v9 + 32, v11, v12, v10);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_67_2();
  if (!v5)
  {
    *(v3 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_2682C0518(uint64_t a1)
{
  result = OUTLINED_FUNCTION_7_21(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_2682C23C0(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}