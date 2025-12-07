unint64_t sub_270696790()
{
  result = qword_28081CFF8;
  if (!qword_28081CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CFF8);
  }

  return result;
}

uint64_t DragBadgeStyle.hashValue.getter()
{
  v1 = *v0;
  sub_2706E65EC();
  MEMORY[0x2743A6A60](v1);
  return sub_2706E660C();
}

void DragBadgeStyle.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_60();
  a25 = v27;
  a26 = v28;
  v101 = v26;
  v30 = v29;
  v97 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D000, &qword_2706E9300);
  OUTLINED_FUNCTION_4();
  v94 = v32;
  v95 = v33;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_13();
  v100 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D008, &qword_2706E9308);
  OUTLINED_FUNCTION_4();
  v92 = v36;
  v93 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_13();
  v99 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D010, &qword_2706E9310);
  OUTLINED_FUNCTION_4();
  v90 = v41;
  v91 = v40;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_13();
  v96 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D018, &qword_2706E9318);
  OUTLINED_FUNCTION_4();
  v88 = v45;
  v89 = v44;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v46);
  v48 = &v82 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D020, &qword_2706E9320);
  OUTLINED_FUNCTION_4();
  v87 = v50;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v51);
  v53 = &v82 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D028, &unk_2706E9328);
  OUTLINED_FUNCTION_4();
  v98 = v55;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v56);
  v58 = &v82 - v57;
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_2706965EC();
  v59 = v101;
  sub_2706E668C();
  if (v59)
  {
    goto LABEL_10;
  }

  v85 = v49;
  v86 = v53;
  v101 = v48;
  v60 = v99;
  v61 = v100;
  v62 = v58;
  v63 = sub_2706E606C();
  sub_2706974F8(v63, 0);
  if (v66 == v67 >> 1)
  {
    v68 = v98;
LABEL_9:
    v77 = sub_2706E5E8C();
    swift_allocError();
    v79 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    *v79 = &type metadata for DragBadgeStyle;
    sub_2706E600C();
    sub_2706E5E6C();
    (*(*(v77 - 8) + 104))(v79, *MEMORY[0x277D84160], v77);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v68 + 8))(v62, v54);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v30);
    goto LABEL_11;
  }

  if (v66 >= (v67 >> 1))
  {
    __break(1u);
    JUMPOUT(0x270696EC8);
  }

  v83 = *(v65 + v66);
  v69 = sub_270698034(v66 + 1, v67 >> 1, v64, v65, v66, v67);
  v71 = v70;
  v73 = v72;
  swift_unknownObjectRelease();
  v84 = v69;
  if (v71 != v73 >> 1)
  {
    v68 = v98;
    v62 = v58;
    goto LABEL_9;
  }

  v74 = v97;
  v75 = v98;
  switch(v83)
  {
    case 1:
      a13 = 1;
      sub_27069673C();
      v60 = v101;
      OUTLINED_FUNCTION_1_3(&type metadata for DragBadgeStyle.CopyCodingKeys, &a13);
      swift_unknownObjectRelease();
      v81 = v88;
      v80 = v89;
      goto LABEL_16;
    case 2:
      OUTLINED_FUNCTION_13_3();
      sub_2706966E8();
      v60 = v96;
      OUTLINED_FUNCTION_1_3(&type metadata for DragBadgeStyle.NotAllowedCodingKeys, &a14);
      swift_unknownObjectRelease();
      v81 = v90;
      v80 = v91;
      goto LABEL_16;
    case 3:
      a15 = 3;
      sub_270696694();
      OUTLINED_FUNCTION_1_3(&type metadata for DragBadgeStyle.LinkCodingKeys, &a15);
      swift_unknownObjectRelease();
      v80 = v92;
      v81 = v93;
LABEL_16:
      (*(v81 + 8))(v60, v80);
      break;
    case 4:
      a16 = 4;
      sub_270696640();
      v69 = v58;
      sub_2706E5FFC();
      swift_unknownObjectRelease();
      (*(v95 + 8))(v61, v94);
      break;
    default:
      a12 = 0;
      sub_270696790();
      v76 = v86;
      OUTLINED_FUNCTION_1_3(&type metadata for DragBadgeStyle.GenericCodingKeys, &a12);
      swift_unknownObjectRelease();
      (*(v87 + 8))(v76, v85);
      break;
  }

  (*(v75 + 8))(v69, v54);
  *v74 = v83;
  __swift_destroy_boxed_opaque_existential_1(v30);
LABEL_11:
  OUTLINED_FUNCTION_55();
}

uint64_t sub_270696F18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616470556D657469 && a2 == 0xEB00000000736574;
  if (v4 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974536567646162 && a2 == 0xEA0000000000656CLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2706E631C();

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

uint64_t sub_270696FEC(char a1)
{
  if (a1)
  {
    return 0x7974536567646162;
  }

  else
  {
    return 0x616470556D657469;
  }
}

void sub_270697030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D0E0, &qword_2706E9A38);
  OUTLINED_FUNCTION_4();
  v26 = v25;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v27);
  v29 = &v30 - v28;
  v31 = *(v20 + 8);
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_270697E18();

  sub_2706E66AC();
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D0C0, &qword_2706E9A30);
  sub_270697F14(&qword_28081D0E8, sub_270697F8C, MEMORY[0x277D83948]);
  sub_2706E609C();

  if (!v21)
  {
    v33 = v31;
    v32 = 1;
    sub_270697FE0();
    sub_2706E609C();
  }

  (*(v26 + 8))(v29, v24);
  OUTLINED_FUNCTION_55();
}

void sub_270697208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  v22 = v21;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D0B0, &qword_2706E9A28);
  OUTLINED_FUNCTION_4();
  v27 = v26;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v28);
  v30 = &v32[-v29];
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_270697E18();
  sub_2706E668C();
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D0C0, &qword_2706E9A30);
    v32[15] = 0;
    sub_270697F14(&qword_28081D0C8, sub_270697E6C, MEMORY[0x277D83978]);
    sub_2706E601C();
    v32[13] = 1;
    sub_270697EC0();
    sub_2706E601C();
    (*(v27 + 8))(v30, v25);
    v31 = v32[14];
    *v24 = a10;
    *(v24 + 8) = v31;
  }

  __swift_destroy_boxed_opaque_existential_1(v22);

  OUTLINED_FUNCTION_55();
}

uint64_t sub_270697428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270696F18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270697450(uint64_t a1)
{
  v2 = sub_270697E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27069748C(uint64_t a1)
{
  v2 = sub_270697E18();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2706974F8(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_6_3();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_27069753C()
{
  result = qword_28081D030;
  if (!qword_28081D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D030);
  }

  return result;
}

uint64_t type metadata accessor for DragPresentation(uint64_t a1)
{
  result = qword_28081D038;
  if (!qword_28081D038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2706975E4(uint64_t a1)
{
  result = sub_2706E576C();
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2706976BC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 9))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_270697710(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PasteboardDataSession.State(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_270697804(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706978D0);
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

unint64_t sub_27069795C()
{
  result = qword_28081D048;
  if (!qword_28081D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D048);
  }

  return result;
}

unint64_t sub_2706979FC()
{
  result = qword_28081D050;
  if (!qword_28081D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D050);
  }

  return result;
}

unint64_t sub_270697A54()
{
  result = qword_28081D058;
  if (!qword_28081D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D058);
  }

  return result;
}

unint64_t sub_270697AAC()
{
  result = qword_28081D060;
  if (!qword_28081D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D060);
  }

  return result;
}

unint64_t sub_270697B04()
{
  result = qword_28081D068;
  if (!qword_28081D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D068);
  }

  return result;
}

unint64_t sub_270697B5C()
{
  result = qword_28081D070;
  if (!qword_28081D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D070);
  }

  return result;
}

unint64_t sub_270697BB4()
{
  result = qword_28081D078;
  if (!qword_28081D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D078);
  }

  return result;
}

unint64_t sub_270697C0C()
{
  result = qword_28081D080;
  if (!qword_28081D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D080);
  }

  return result;
}

unint64_t sub_270697C64()
{
  result = qword_28081D088;
  if (!qword_28081D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D088);
  }

  return result;
}

unint64_t sub_270697CBC()
{
  result = qword_28081D090;
  if (!qword_28081D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D090);
  }

  return result;
}

unint64_t sub_270697D14()
{
  result = qword_28081D098;
  if (!qword_28081D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D098);
  }

  return result;
}

unint64_t sub_270697D6C()
{
  result = qword_28081D0A0;
  if (!qword_28081D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D0A0);
  }

  return result;
}

unint64_t sub_270697DC4()
{
  result = qword_28081D0A8;
  if (!qword_28081D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D0A8);
  }

  return result;
}

unint64_t sub_270697E18()
{
  result = qword_28081D0B8;
  if (!qword_28081D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D0B8);
  }

  return result;
}

unint64_t sub_270697E6C()
{
  result = qword_28081D0D0;
  if (!qword_28081D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D0D0);
  }

  return result;
}

unint64_t sub_270697EC0()
{
  result = qword_28081D0D8;
  if (!qword_28081D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D0D8);
  }

  return result;
}

uint64_t sub_270697F14(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D0C0, &qword_2706E9A30);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_270697F8C()
{
  result = qword_28081D0F0;
  if (!qword_28081D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D0F0);
  }

  return result;
}

unint64_t sub_270697FE0()
{
  result = qword_28081D0F8;
  if (!qword_28081D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D0F8);
  }

  return result;
}

uint64_t sub_270698034(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_2706980B0()
{
  result = qword_28081D108;
  if (!qword_28081D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D108);
  }

  return result;
}

uint64_t sub_270698104(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D110, &qword_2706E9A48);
    sub_2706981A0(a2, type metadata accessor for DragPresentationItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2706981A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for DragPresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706982B4);
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

_BYTE *storeEnumTagSinglePayload for DragPresentationUpdate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706983B8);
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

unint64_t sub_270698400()
{
  result = qword_28081D140;
  if (!qword_28081D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D140);
  }

  return result;
}

unint64_t sub_270698458()
{
  result = qword_28081D148;
  if (!qword_28081D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D148);
  }

  return result;
}

unint64_t sub_2706984B0()
{
  result = qword_28081D150;
  if (!qword_28081D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D150);
  }

  return result;
}

unint64_t sub_270698508()
{
  result = qword_28081D158;
  if (!qword_28081D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D158);
  }

  return result;
}

unint64_t sub_270698560()
{
  result = qword_28081D160;
  if (!qword_28081D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D160);
  }

  return result;
}

unint64_t sub_2706985B8()
{
  result = qword_28081D168;
  if (!qword_28081D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D168);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1, uint64_t a2)
{

  return sub_2706E5FFC();
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1)
{

  return sub_2706E608C();
}

uint64_t OUTLINED_FUNCTION_8_3(uint64_t a1, uint64_t a2)
{

  return sub_2706E631C();
}

uint64_t sub_2706986E4(uint64_t a1, uint64_t a2)
{
  *(*(v2 + 64) + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_27069872C(uint64_t a1)
{
  v43 = sub_2706E589C();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v34[1] = v1;
    v47 = MEMORY[0x277D84F90];
    sub_2706BF820(0, v5, 0);
    v7 = v47;
    v10 = sub_270690E3C(a1);
    result = v7;
    v11 = 0;
    v12 = a1 + 56;
    v39 = v3 + 8;
    v40 = v3 + 16;
    v35 = a1 + 64;
    v36 = v5;
    v37 = v3;
    v38 = a1;
    v41 = a1 + 56;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(a1 + 32))
      {
        v13 = v10 >> 6;
        if ((*(v12 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v8)
        {
          goto LABEL_25;
        }

        v46 = v9;
        v44 = v11;
        v45 = v8;
        v14 = v42;
        v15 = v43;
        v16 = result;
        (*(v3 + 16))(v42, *(a1 + 48) + *(v3 + 72) * v10, v43);
        v17 = sub_2706E580C();
        v19 = v18;
        (*(v3 + 8))(v14, v15);
        result = v16;
        v47 = v16;
        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2706BF820((v20 > 1), v21 + 1, 1);
          result = v47;
        }

        *(result + 16) = v21 + 1;
        v22 = result + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        v12 = v41;
        if (v46)
        {
          goto LABEL_29;
        }

        v3 = v37;
        a1 = v38;
        v23 = 1 << *(v38 + 32);
        if (v10 >= v23)
        {
          goto LABEL_26;
        }

        v24 = *(v41 + 8 * v13);
        if ((v24 & (1 << v10)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v38 + 36) != v45)
        {
          goto LABEL_28;
        }

        v25 = v24 & (-2 << (v10 & 0x3F));
        if (v25)
        {
          v23 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v26 = v36;
        }

        else
        {
          v27 = v13 << 6;
          v28 = v13 + 1;
          v26 = v36;
          v29 = (v35 + 8 * v13);
          while (v28 < (v23 + 63) >> 6)
          {
            v31 = *v29++;
            v30 = v31;
            v27 += 64;
            ++v28;
            if (v31)
            {
              v32 = result;
              sub_270691110(v10, v45, 0);
              result = v32;
              v23 = __clz(__rbit64(v30)) + v27;
              goto LABEL_19;
            }
          }

          v33 = result;
          sub_270691110(v10, v45, 0);
          result = v33;
        }

LABEL_19:
        v11 = v44 + 1;
        if (v44 + 1 == v26)
        {
          return result;
        }

        v9 = 0;
        v8 = *(a1 + 36);
        v10 = v23;
        if (v23 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

void sub_270698A58(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_9_1(v1 + 56, v15);
  v4 = sub_2706C2200();
  if (sub_2706C2200() < v4)
  {
LABEL_23:
    sub_2706E5F8C();
    __break(1u);
  }

  else
  {
    v5 = sub_2706C2200();
    v6 = -sub_2706C2200();
    v7 = 4;
    v14 = v6;
    while (v6 + v7 != 4)
    {
      v8 = v7 - 4;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2743A62C0](v7 - 4, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v9 = *(a1 + 8 * v7);
      }

      v10 = v9;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (v8 >= v5)
      {
        type metadata accessor for NSItemProviderRepresentative();
        OUTLINED_FUNCTION_19_0();
        *(swift_allocObject() + 16) = v10;
        swift_beginAccess();
        v13 = v10;
        MEMORY[0x2743A5F60]();
        if (*((*(v2 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2706E5B2C();
        }

        sub_2706E5B4C();
        swift_endAccess();
        v6 = v14;
      }

      else
      {
        swift_beginAccess();
        v11 = *(v2 + 56);
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x2743A62C0](v7 - 4);
        }

        else
        {
          if (v8 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v12 = *(v11 + 8 * v7);
        }

        swift_endAccess();
        v13 = *(v12 + 16);
        *(v12 + 16) = v10;
      }

      ++v7;
    }
  }
}

BOOL sub_270698CB0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_270698D60(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_28081C730 != -1)
  {
    swift_once();
  }

  v6 = sub_2706E58DC();
  __swift_project_value_buffer(v6, qword_2808292D8);
  sub_2706A6898(a1, a2);

  oslog = sub_2706E58BC();
  v7 = sub_2706E5BEC();
  sub_2706A5B04(a1, a2);

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446466;
    v21 = &type metadata for PasteboardCollection.State;
    v22 = v9;
    v19 = a1;
    v20 = a2;
    sub_2706A6898(a1, a2);
    v10 = sub_2706CB238(&v19);
    v12 = sub_2706C83E8(v10, v11, &v22);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v13 = *(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state);
    v14 = *(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state + 8);
    v21 = &type metadata for PasteboardCollection.State;
    v19 = v13;
    v20 = v14;
    sub_2706A6898(v13, v14);
    v15 = sub_2706CB238(&v19);
    v17 = sub_2706C83E8(v15, v16, &v22);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_270680000, oslog, v7, "PasteboardCollection: %{public}s → %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v9, -1, -1);
    MEMORY[0x2743A75B0](v8, -1, -1);
  }
}

uint64_t sub_270698F5C(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state);
  v6 = *(v2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state);
  v7 = *(v2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_2706A6898(a1, a2);
  sub_270698D60(v6, v7);
  sub_2706A5B04(v6, v7);

  return sub_2706A5B04(a1, a2);
}

uint64_t sub_270698FD8()
{
  v1 = sub_2706E576C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_id, v1);
  v5 = sub_2706E572C();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v8 = sub_2706B8734(8, v5, v7);
  v9 = MEMORY[0x2743A5EC0](v8);

  return v9;
}

uint64_t sub_270699100(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v3;
  type metadata accessor for Completion();
  swift_allocObject();

  sub_2706DD8C4(0xD000000000000060, 0x80000002706F0100, 78, sub_2706A6858, v6);
  v7 = *(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state + 8);
  if (v7 >> 62)
  {
    if (v7 >> 62 == 1)
    {
      if (qword_28081C738 != -1)
      {
        swift_once();
      }

      v8 = sub_2706E58DC();
      __swift_project_value_buffer(v8, qword_2808292F0);

      v9 = sub_2706E58BC();
      v10 = sub_2706E5C1C();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v43[0] = v12;
        *v11 = 136446210;
        v13 = sub_270698FD8();
        v15 = sub_2706C83E8(v13, v14, v43);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_270680000, v9, v10, "%{public}s: Waiting For PasteboardItemCollection activation", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x2743A75B0](v12, -1, -1);
        MEMORY[0x2743A75B0](v11, -1, -1);
      }

      v16 = *(v3 + 16);
      swift_beginAccess();

      MEMORY[0x2743A5F60](v17);
      sub_2706E2658(*((*(v16 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_2706E5B4C();
      swift_endAccess();
    }

    else
    {
      if (qword_28081C738 != -1)
      {
        swift_once();
      }

      v35 = sub_2706E58DC();
      __swift_project_value_buffer(v35, qword_2808292F0);

      v36 = sub_2706E58BC();
      v37 = sub_2706E5C1C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v43[0] = v39;
        *v38 = 136446210;
        v40 = sub_270698FD8();
        v42 = sub_2706C83E8(v40, v41, v43);

        *(v38 + 4) = v42;
        _os_log_impl(&dword_270680000, v36, v37, "%{public}s: PasteboardItemCollection already activated", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x2743A75B0](v39, -1, -1);
        MEMORY[0x2743A75B0](v38, -1, -1);
      }

      sub_2706DD768();
    }
  }

  else
  {
    v19 = *(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state);
    v20 = *(v3 + 16);
    swift_beginAccess();
    sub_2706A6898(v19, v7);

    MEMORY[0x2743A5F60](v21);
    sub_2706E2658(*((*(v20 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_2706E5B4C();
    swift_endAccess();

    v22 = swift_unknownObjectRetain();
    sub_270698F5C(v22, v7 | 0x4000000000000000);
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v23 = sub_2706E58DC();
    __swift_project_value_buffer(v23, qword_2808292F0);

    v24 = sub_2706E58BC();
    v25 = sub_2706E5C1C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43[0] = v27;
      *v26 = 136446210;
      v28 = sub_270698FD8();
      v30 = sub_2706C83E8(v28, v29, v43);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_270680000, v24, v25, "%{public}s: Activating PasteboardItemCollection", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x2743A75B0](v27, -1, -1);
      MEMORY[0x2743A75B0](v26, -1, -1);
    }

    ObjectType = swift_getObjectType();
    v32 = *(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_collection);
    v33 = swift_allocObject();
    v33[2] = v3;
    v33[3] = v19;
    v33[4] = v7;
    v34 = *(v7 + 8);

    sub_2706A6898(v19, v7);
    v34(v32, sub_2706A68E4, v33, ObjectType, v7);

    return sub_2706A5B04(v19, v7);
  }
}

void sub_270699718(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1 & 0xF000000000000007;
  if ((a1 & 0xF000000000000007) == 0xF000000000000007)
  {
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v10 = sub_2706E58DC();
    __swift_project_value_buffer(v10, qword_2808292F0);

    v11 = sub_2706E58BC();
    v12 = sub_2706E5C1C();

    if (os_log_type_enabled(v11, v12))
    {
      v30 = a2;
      v13 = swift_slowAlloc();
      v29 = a5;
      v14 = swift_slowAlloc();
      v31[0] = v14;
      *v13 = 136446210;
      v15 = sub_270698FD8();
      v17 = sub_2706C83E8(v15, v16, v31);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_270680000, v11, v12, "%{public}s: PasteboardItemCollection Activated", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      v18 = v14;
      a5 = v29;
      MEMORY[0x2743A75B0](v18, -1, -1);
      MEMORY[0x2743A75B0](v13, -1, -1);
    }
  }

  else
  {
    sub_270694BA4(a1);
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v19 = sub_2706E58DC();
    v20 = __swift_project_value_buffer(v19, qword_2808292F0);
    MEMORY[0x28223BE20](v20);
    sub_270694664(sub_2706A6904, a3, sub_2706A690C, v28, v21, v22, v23, v24, v28[0], v28[1], a1, v28[3], v28[4], v29, v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6]);
    sub_2706A6928(a1);
  }

  v25 = swift_unknownObjectRetain();
  sub_270698F5C(v25, a5 | 0x8000000000000000);
  if (v9 == 0xF000000000000007)
  {
    v26 = 0;
  }

  else
  {
    sub_270694B50();
    v26 = swift_allocError();
    *v27 = a1;
  }

  sub_2706A68F0(a1);

  sub_2706DAAE8(v26);

  sub_2706DD768();
}

uint64_t sub_2706999E8()
{
  sub_2706E5E3C();
  v0 = sub_270698FD8();

  MEMORY[0x2743A5EF0](0xD00000000000002CLL, 0x80000002706F03D0);
  return v0;
}

uint64_t sub_270699A70()
{

  v1 = OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_id;
  v2 = sub_2706E576C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2706A5B04(*(v0 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state), *(v0 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state + 8));

  return v0;
}

uint64_t sub_270699B3C(uint64_t a1)
{
  result = sub_2706E576C();
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

uint64_t sub_270699BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a3;
  v31 = a4;
  v32 = a1;
  v7 = sub_2706E565C();
  v8 = *(v7 - 8);
  v28 = *(v8 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_completions;
  type metadata accessor for Completions();
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x277D84F90];
  *(v5 + v14) = v15;
  v16 = OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress;
  *(v5 + v16) = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  v17 = v5 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target;
  *v17 = 0;
  *(v17 + 8) = -1;
  v29 = a2;
  sub_270690CD8(a2, v5 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_id);
  v18 = NSTemporaryDirectory();
  sub_2706E5A3C();

  sub_2706E55CC();

  sub_2706E572C();
  sub_2706E55EC();

  (*(v8 + 8))(v11, v7);
  v19 = OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_url;
  v20 = *(v8 + 32);
  v20(v5 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_url, v13, v7);
  (*(v8 + 16))(v13, v5 + v19, v7);
  v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 16) = v30;
  *(v22 + 24) = v23;
  v20(v22 + v21, v13, v7);
  type metadata accessor for Completion();
  swift_allocObject();

  sub_2706DD8C4(0xD000000000000060, 0x80000002706F0100, 137, sub_2706A3A44, v22);
  v24 = *(v5 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_completions);
  swift_beginAccess();

  MEMORY[0x2743A5F60](v25);
  sub_2706E2658(*((*(v24 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2706E5B4C();
  swift_endAccess();

  [*(v5 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress) publish];

  sub_270687394(v29);
  v26 = sub_2706E576C();
  (*(*(v26 - 8) + 8))(v32, v26);
  return v5;
}

void sub_270699FA8(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v7 = sub_2706E565C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  if (a1)
  {
    sub_270690D44(0, &qword_28081D1F0, 0x277CCAA90);
    v10 = a1;
    v11 = a1;
    v12 = sub_27069A204(a1);
    a2();
  }

  else
  {
    sub_270690D44(0, &qword_28081D210, 0x277CCAC90);
    v13 = *(v8 + 16);
    v13(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v7);
    v14 = sub_27069A274(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), 0);
    v19[1] = sub_270690D44(0, &qword_28081D1F0, 0x277CCAA90);
    v13(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v7);
    v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v16 = swift_allocObject();
    (*(v8 + 32))(v16 + v15, v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v17 = v14;
    v18 = sub_27069A430(0, 0xF000000000000000, v14, sub_2706A3B30, v16, 0);
    a2();
  }
}

id sub_27069A204(void *a1)
{
  if (a1)
  {
    v2 = sub_2706E557C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() resultWithError_];

  return v3;
}

id sub_27069A274(uint64_t a1, char a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2706E55DC();
  v6 = [v4 initWithURL:v5 readonly:a2 & 1];

  v7 = sub_2706E565C();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

void sub_27069A318()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v1 = sub_2706E55DC();
  v7[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v7];

  v3 = v7[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    v6 = sub_2706E558C();

    swift_willThrow();
  }
}

id sub_27069A430(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2 >> 60 == 15)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v10 = sub_2706E56AC();
  sub_2706A3BA4(a1, a2);
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17[4] = a4;
  v17[5] = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2706DA6A0;
  v17[3] = &block_descriptor_0;
  v11 = _Block_copy(v17);

  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = sub_2706E557C();

LABEL_8:
  v15 = [swift_getObjCClassFromMetadata() resultWithData:v10 urlWrapper:a3 cleanupHandler:v11 error:v12];

  _Block_release(v11);
  return v15;
}

uint64_t sub_27069A580(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_completions);
  swift_beginAccess();

  MEMORY[0x2743A5F60](v4);
  sub_2706E2658(*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2706E5B4C();
  swift_endAccess();

  v5 = OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress;
  [*(v2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress) setCancellable_];
  v6 = *(v2 + v5);
  v7 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_2706A5A9C;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2706DA6A0;
  v11[3] = &block_descriptor_176;
  v8 = _Block_copy(v11);
  v9 = v6;

  sub_2706A5AA4(sub_2706A5A9C, v7);

  [v9 setCancellationHandler_];
  _Block_release(v8);
}

uint64_t sub_27069A72C(uint64_t a1)
{
  v1 = sub_2706E592C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2706E594C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
    v11 = sub_2706E5C4C();
    aBlock[4] = sub_2706A5AB4;
    aBlock[5] = v10;
    v16 = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2706DA6A0;
    aBlock[3] = &block_descriptor_179;
    v15 = _Block_copy(aBlock);

    sub_2706E593C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2706A6DC4(&qword_28081CEF8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
    v14 = v5;
    sub_2706A5ABC(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080, MEMORY[0x277D83970]);
    sub_2706E5D7C();
    v13 = v15;
    v12 = v16;
    MEMORY[0x2743A60D0](0, v8, v4, v15);
    _Block_release(v13);

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v8, v14);
  }

  return result;
}

void sub_27069AA34(uint64_t a1)
{
  if (qword_28081C738 != -1)
  {
    swift_once();
  }

  v1 = sub_2706E58DC();
  __swift_project_value_buffer(v1, qword_2808292F0);

  v2 = sub_2706E58BC();
  v3 = sub_2706E5C1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    v6 = sub_27069AC24(v5);
    v8 = sub_2706C83E8(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_270680000, v2, v3, "%{public}s: Cancelled via NSProgress", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x2743A75B0](v5, -1, -1);
    MEMORY[0x2743A75B0](v4, -1, -1);
  }

  sub_270694B50();
  v9 = swift_allocError();
  *v10 = 0xC000000000000030;
  type metadata accessor for Completion();
  swift_allocObject();
  v11 = sub_2706DD84C();
  sub_27069B74C(v9, v11);
}

uint64_t sub_27069AC24(uint64_t a1)
{
  v1 = sub_2706E572C();
  v3 = OUTLINED_FUNCTION_1_1(v1, v2);
  v4 = MEMORY[0x2743A5EC0](v3);

  MEMORY[0x2743A5EF0](58, 0xE100000000000000);
  MEMORY[0x2743A5EF0](0xD00000000000003DLL, 0x80000002706F0170);
  return v4;
}

void sub_27069ACB4(char a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  v6 = sub_2706E565C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = sub_2706E576C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PasteboardDataTransferID(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_270690CD8(v4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_id, v19);
    (*(v14 + 32))(v16, v19, v13);
    (*(v7 + 16))(v12, v4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_url, v6);
    type metadata accessor for ArchiveTransferDestination(0);
    swift_allocObject();

    sub_2706D6614();
    v21 = v20;
    sub_2706D6A60();
    if (v35 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v35;
    }

    [*(v4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress) setTotalUnitCount_];
    v23 = v4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target;
    v24 = *(v4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target);
    *v23 = v21;
    v25 = *(v23 + 8);
    *(v23 + 8) = 0;

    sub_2706A59E8(v24, v25);
    sub_2706DD768();
  }

  else
  {
    v26 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    v27 = OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_url;
    v35 = *(v7 + 16);
    v35(v12, v4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_url, v6);
    sub_2706E564C();
    (*(v7 + 8))(v12, v6);
    v28 = sub_2706E5A0C();

    [v26 createFileAtPath:v28 contents:0 attributes:0];

    sub_270690D44(0, &qword_28081D258, 0x277CCA9F8);
    v35(v10, v4 + v27, v6);
    v29 = sub_2706CFDB0(v10);
    v30 = v4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target;
    v31 = *(v4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target);
    *v30 = v29;
    v32 = *(v30 + 8);
    *(v30 + 8) = 2;
    v33 = v29;
    sub_2706A59E8(v31, v32);
    sub_2706DD768();
  }
}

void sub_27069B118(id a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v5 = sub_2706E58DC();
    v6 = __swift_project_value_buffer(v5, qword_2808292F0);
    MEMORY[0x28223BE20](v6);
    sub_270694664(sub_2706A5A94, a2, sub_2706A74AC, v25, v7, v8, v9, v10, v25[0], v25[1], a1, v25[3], v26, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8]);
  }

  else
  {
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v11 = sub_2706E58DC();
    __swift_project_value_buffer(v11, qword_2808292F0);

    v12 = sub_2706E58BC();
    v13 = sub_2706E5C1C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27[0] = v15;
      *v14 = 136446466;
      v16 = sub_27069AC24(v15);
      v18 = sub_2706C83E8(v16, v17, v27);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v26 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D260, &qword_2706EA078);
      v19 = sub_2706E5A4C();
      v21 = sub_2706C83E8(v19, v20, v27);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_270680000, v12, v13, "%{public}s: Archive transfer finished, error=%{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743A75B0](v15, -1, -1);
      MEMORY[0x2743A75B0](v14, -1, -1);
    }
  }

  v22 = a2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target;
  v23 = *(a2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target);
  v24 = *(a2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target + 8);
  if (*(a2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target + 8))
  {
    if (v24 != 1)
    {
      return;
    }

    *v22 = 0;
    *(v22 + 8) = -1;
    (*(*a2 + 256))(a1);
  }

  else
  {
    *v22 = 0;
    *(v22 + 8) = 1;
  }

  sub_2706A59E8(v23, v24);
}

uint64_t sub_27069B408()
{
  v0 = sub_2706E5E3C();
  v1 = sub_27069AC24(v0);

  MEMORY[0x2743A5EF0](0xD000000000000019, 0x80000002706F0310);
  return v1;
}

void sub_27069B490(uint64_t a1, id a2, uint64_t a3)
{
  v4 = v3;
  v7 = *&v4[OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target];
  v8 = v4[OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target + 8];
  if (!v4[OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target + 8])
  {
    goto LABEL_9;
  }

  if (v8 == 1)
  {
    if (!v7)
    {
LABEL_11:
      sub_270690D44(0, &qword_28081D250, 0x277CCA9B8);
      a2 = sub_2706E483C(4294960587, 0xD00000000000002BLL, 0x80000002706F02E0, "/Library/Caches/com.apple.xbs/Sources/UniversalDrag/UniversalDrag/PasteboardController_iOS.swift", 96, 2, 218);
      if (qword_28081C738 == -1)
      {
LABEL_12:
        v19 = sub_2706E58DC();
        v20 = __swift_project_value_buffer(v19, qword_2808292F0);
        MEMORY[0x28223BE20](v20);
        v22[2] = a2;

        sub_270693AF8(sub_2706A74AC, v22, v20, v4);
        v21 = a2;
        sub_27069B74C(a2, a3);

        return;
      }

LABEL_14:
      OUTLINED_FUNCTION_0_1(&qword_28081C738);
      goto LABEL_12;
    }

LABEL_9:
    v15 = *&v4[OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress];
    sub_2706A5A44(v7, v8);
    v4 = v15;
    v16 = OUTLINED_FUNCTION_31_2();
    v17 = MEMORY[0x2743A5B30](v16);
    v18 = [v4 completedUnitCount];
    if (!__OFADD__(v18, v17))
    {
      [v4 setCompletedUnitCount_];

      OUTLINED_FUNCTION_31_2();
      sub_2706D74D8();
      sub_2706A59E8(v7, v8);
      sub_2706DD768();
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v8 != 2)
  {
    goto LABEL_11;
  }

  v9 = *&v4[OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress];
  sub_2706A5A44(v7, 2u);
  v10 = v9;
  v11 = OUTLINED_FUNCTION_31_2();
  v12 = MEMORY[0x2743A5B30](v11);
  v13 = [v10 completedUnitCount];
  if (__OFADD__(v13, v12))
  {
    __break(1u);
  }

  else
  {
    [v10 setCompletedUnitCount_];

    OUTLINED_FUNCTION_31_2();
    v14 = sub_2706E56AC();
    [v7 writeData_];

    sub_2706DD768();

    sub_2706A59E8(v7, 2u);
  }
}

void sub_27069B74C(void *a1, uint64_t a2)
{
  v3 = v2;
  v44 = *MEMORY[0x277D85DE8];
  v5 = sub_2706E565C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v10 = sub_2706E58DC();
    v11 = __swift_project_value_buffer(v10, qword_2808292F0);
    MEMORY[0x28223BE20](v11);
    v42[-2] = a1;
    sub_270694664(sub_2706A5A58, v2, sub_2706A5A60, &v42[-4], v12, v13, v14, v15, v42[0], v42[1], v43[0], v43[1], v43[2], v44, v45, v46, v47, v48, v49, v50, v51, v52);
    v16 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    (*(v6 + 16))(v8, v2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_url, v5);
    v17 = sub_2706E55DC();
    (*(v6 + 8))(v8, v5);
    v43[0] = 0;
    v18 = [v16 removeItemAtURL:v17 error:v43];

    if (v18)
    {
      v19 = v43[0];
    }

    else
    {
      v28 = v43[0];
      v29 = sub_2706E558C();

      swift_willThrow();
    }

    [*(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress) cancel];
  }

  else
  {
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v20 = sub_2706E58DC();
    __swift_project_value_buffer(v20, qword_2808292F0);

    v21 = sub_2706E58BC();
    v22 = sub_2706E5C1C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v43[0] = v24;
      *v23 = 136446210;
      v25 = sub_27069AC24(v24);
      v27 = sub_2706C83E8(v25, v26, v43);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_270680000, v21, v22, "%{public}s: Remote finished successfully", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x2743A75B0](v24, -1, -1);
      MEMORY[0x2743A75B0](v23, -1, -1);
    }
  }

  v30 = *(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_completions);
  swift_beginAccess();

  MEMORY[0x2743A5F60](v31);
  sub_2706E2658(*((*(v30 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2706E5B4C();
  swift_endAccess();

  v32 = v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target;
  v33 = *(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target);
  v34 = *(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target + 8);
  if (*(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target + 8))
  {
    if (v34 != 1)
    {
      if (v34 == 2)
      {
        v43[0] = 0;
        sub_2706A5A20(v33, 2u);
        if ([v33 closeAndReturnError_])
        {
          v35 = v43[0];
        }

        else
        {
          v40 = v43[0];
          v41 = sub_2706E558C();

          swift_willThrow();
        }

        sub_2706A59E8(v33, 2u);
      }

      goto LABEL_24;
    }

    if (v33)
    {
LABEL_24:
      (*(*v3 + 256))(a1);
      return;
    }

    (*(*v3 + 256))(a1);
    v36 = 0;
    v37 = 1;
  }

  else
  {
    v38 = *(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target);
    if (a1)
    {
      sub_2706A5A44(v38, 0);
      v39 = a1;
      sub_2706A5A44(v33, 0);
      sub_2706D7484();
      sub_2706A59E8(v33, 0);
    }

    else
    {
      sub_2706A5A20(v38, 0);
    }

    v36 = *v32;
    *v32 = v33;
    v37 = *(v32 + 8);
    *(v32 + 8) = 1;
  }

  sub_2706A59E8(v36, v37);
}

uint64_t sub_27069BCD4(uint64_t a1)
{
  v2 = sub_27069AC24(a1);
  MEMORY[0x2743A5EF0](0x64656C696146203ALL, 0xE800000000000000);
  return v2;
}

id sub_27069BD24(uint64_t a1)
{
  if (qword_28081C738 != -1)
  {
    swift_once();
  }

  v3 = sub_2706E58DC();
  __swift_project_value_buffer(v3, qword_2808292F0);

  v4 = sub_2706E58BC();
  v5 = sub_2706E5C1C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_27069AC24(v7);
    v10 = sub_2706C83E8(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_270680000, v4, v5, "%{public}s: Receiver completed", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2743A75B0](v7, -1, -1);
    MEMORY[0x2743A75B0](v6, -1, -1);
  }

  sub_2706DAAE8(a1);

  v11 = *(v1 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress);

  return [v11 unpublish];
}

uint64_t sub_27069BECC()
{
  sub_270687394(v0 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_id);

  sub_2706A59E8(*(v0 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target), *(v0 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target + 8));
  v1 = OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_url;
  v2 = sub_2706E565C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_27069BFB4(uint64_t a1)
{
  result = sub_2706E576C();
  if (v2 <= 0x3F)
  {
    result = sub_2706E565C();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_27069C0CC(uint64_t a1, unint64_t a2, __int16 a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D74130];
  v36 = *MEMORY[0x277D74128];
  if (a3)
  {
    v6 = *MEMORY[0x277D74128];
  }

  else
  {
    v6 = *MEMORY[0x277D74130];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D240, &qword_2706EA068);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2706E8FC0;
  v8 = *MEMORY[0x277D74098];
  *(inited + 32) = *MEMORY[0x277D74098];
  type metadata accessor for DocumentType(0);
  v10 = v9;
  *(inited + 64) = v9;
  *(inited + 40) = v6;
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_2706A6DC4(&qword_28081C848, type metadata accessor for DocumentReadingOptionKey, &unk_2706E7DF0);
  v11 = v6;
  v12 = v8;
  v13 = MEMORY[0x277D84F70];
  v14 = sub_2706E59AC();
  objc_allocWithZone(MEMORY[0x277CCA898]);
  sub_270692D3C(a1, a2);
  v15 = sub_2706A354C(a1, a2, v14, 0);
  if (v38)
  {
    goto LABEL_15;
  }

  v16 = v15;
  v39 = v11;
  v17 = [v15 length];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D248, &qword_2706EA070);
  if ((a3 & 0x100) != 0)
  {
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_2706E8FC0;
    v26 = *MEMORY[0x277D74090];
    *(v25 + 64) = v10;
    *(v25 + 32) = v26;
    *(v25 + 40) = v36;
    type metadata accessor for DocumentAttributeKey(0);
    sub_2706A6DC4(&qword_28081C828, type metadata accessor for DocumentAttributeKey, &unk_2706E7DB0);
    v27 = v26;
    v28 = v36;
    sub_2706E59AC();
    v29 = sub_2706E598C();

    v40 = 0;
    v30 = [v16 fileWrapperFromRange:0 documentAttributes:v17 error:{v29, &v40}];

    v13 = v40;
    if (v30)
    {
      v31 = v40;
      v32 = sub_2706A5628(v30, &selRef_serializedRepresentation);
      if (v33 >> 60 != 15)
      {
        v13 = v32;

        goto LABEL_18;
      }

      sub_270690D44(0, &qword_28081D250, 0x277CCA9B8);
      sub_2706E483C(4294960554, 0xD000000000000016, 0x80000002706F02C0, "/Library/Caches/com.apple.xbs/Sources/UniversalDrag/UniversalDrag/PasteboardController_iOS.swift", 96, 2, 293);
      swift_willThrow();

      goto LABEL_14;
    }

    v34 = v40;
    sub_2706E558C();
  }

  else
  {
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_2706E8FC0;
    v19 = *MEMORY[0x277D74090];
    *(v18 + 64) = v10;
    *(v18 + 32) = v19;
    *(v18 + 40) = v5;
    type metadata accessor for DocumentAttributeKey(0);
    sub_2706A6DC4(&qword_28081C828, type metadata accessor for DocumentAttributeKey, &unk_2706E7DB0);
    v20 = v19;
    v21 = v5;
    sub_2706E59AC();
    v22 = sub_2706E598C();

    v40 = 0;
    v23 = [v16 dataFromRange:0 documentAttributes:v17 error:{v22, &v40}];

    v24 = v40;
    if (v23)
    {
      v13 = sub_2706E56BC();

LABEL_18:
      return v13;
    }

    v13 = v24;
    sub_2706E558C();
  }

  swift_willThrow();
LABEL_14:
  v11 = v39;

LABEL_15:
  return v13;
}

uint64_t sub_27069C590(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v22 = a3;
  v23 = a4;
  v11 = type metadata accessor for PasteboardDataTransferID(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2706E576C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867025RTFRepresentationReceiver_converter) = 2;
  (*(v15 + 16))(v17, a1, v14);
  sub_270690CD8(a2, v13);
  v18 = v24;
  v19 = sub_270699BE8(v17, v13, a5, a6);
  sub_270687394(a2);
  (*(v15 + 8))(a1, v14);
  if (!v18)
  {
    *(v19 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867025RTFRepresentationReceiver_converter) = v22 & 1 | ((v23 & 1) << 8);
  }

  return v19;
}

void sub_27069C768(void *a1)
{
  v3 = sub_2706E565C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1;
    sub_27069BD24(a1);
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867025RTFRepresentationReceiver_converter);
    if (v8 == 2)
    {
      __break(1u);
    }

    else
    {
      (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_url, v3);
      v9 = sub_2706E567C();
      v11 = v10;
      v12 = sub_27069C0CC(v9, v10, v8 & 0x101);
      v14 = v13;
      sub_2706E56DC();
      sub_270688E88(v12, v14);
      sub_270688E88(v9, v11);
      (*(v4 + 8))(v6, v3);
      sub_27069BD24(0);
    }
  }
}

uint64_t sub_27069C994(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_27069CA58()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v91 = v13;
  MEMORY[0x28223BE20](v14);
  v90 = v15;
  v93 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PasteboardDataTransferID(0);
  v17 = OUTLINED_FUNCTION_5_4(v16);
  v87 = v18;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v88 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v78 - v22;
  v24 = type metadata accessor for DataProvider();
  v92 = v9;
  sub_2706AB828(0xD000000000000037, 0x80000002706F0390, v7, v9, v3, v24, v25, v26, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v7);
  v28 = v27;
  v29 = OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_context;
  OUTLINED_FUNCTION_9_1(v11 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_context, &v95);
  sub_2706A6494(v11 + v29, v96, &qword_28081D278, &qword_2706EBB10);
  if (v96[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D280, &unk_2706EA0A0);
    if (swift_dynamicCast())
    {
      v86 = v94;
      v31 = *(v11 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier);
      v30 = *(v11 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier + 8);
      v32 = qword_28081C738;

      if (v32 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_28081C738);
      }

      v85 = v28;
      v33 = sub_2706E58DC();
      __swift_project_value_buffer(v33, qword_2808292F0);
      sub_270690CD8(v92, v23);

      v34 = sub_2706E58BC();
      v35 = sub_2706E5C1C();

      LODWORD(v79) = v35;
      v36 = os_log_type_enabled(v34, v35);
      v83 = v1;
      v84 = v5;
      v82 = v11;
      v81 = v30;
      v80 = v31;
      if (v36)
      {
        v37 = v30;
        v38 = OUTLINED_FUNCTION_27_1();
        v78 = OUTLINED_FUNCTION_26_1();
        v96[0] = v78;
        *v38 = 136446466;
        v39 = v37;
        v40 = sub_2706E572C();
        v42 = OUTLINED_FUNCTION_1_1(v40, v41);
        v43 = v34;
        v44 = MEMORY[0x2743A5EC0](v42);
        v45 = v31;
        v47 = v46;

        sub_270687394(v23);
        v48 = sub_2706C83E8(v44, v47, v96);

        *(v38 + 4) = v48;
        *(v38 + 12) = 2082;
        *(v38 + 14) = sub_2706C83E8(v45, v39, v96);
        _os_log_impl(&dword_270680000, v43, v79, "Pasteboard Representation %{public}s Load: ty=%{public}s", v38, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_12_0();
      }

      else
      {

        sub_270687394(v23);
      }

      v79 = *(v86 + 16);
      v65 = v88;
      sub_270690CD8(v92, v88);
      v66 = v91;
      (*(v91 + 16))(v93, v89, v12);
      v67 = (*(v87 + 80) + 16) & ~*(v87 + 80);
      v68 = (v20 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
      v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
      v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
      v71 = (v70 + 23) & 0xFFFFFFFFFFFFFFF8;
      v72 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
      v73 = *(v66 + 80);
      v92 = v12;
      v74 = (v73 + v72 + 8) & ~v73;
      v75 = swift_allocObject();
      sub_2706A66AC(v65, v75 + v67);
      *(v75 + v68) = v85;
      *(v75 + v69) = v83;
      v76 = (v75 + v70);
      v77 = v81;
      *v76 = v80;
      v76[1] = v77;
      *(v75 + v71) = v82;
      *(v75 + v72) = v84;
      (*(v66 + 32))(v75 + v74, v93, v92);

      sub_270699100(sub_2706A6710, v75);

      goto LABEL_15;
    }
  }

  else
  {
    sub_2706A64F4(v96, &qword_28081D278, &qword_2706EBB10);
  }

  if (qword_28081C738 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_28081C738);
  }

  v49 = sub_2706E58DC();
  __swift_project_value_buffer(v49, qword_2808292F0);
  OUTLINED_FUNCTION_19_3();

  v50 = sub_2706E58BC();
  v51 = sub_2706E5BFC();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = OUTLINED_FUNCTION_27_1();
    v94 = OUTLINED_FUNCTION_26_1();
    *v52 = 136446466;
    v53 = sub_2706E572C();
    v55 = OUTLINED_FUNCTION_1_1(v53, v54);
    v56 = MEMORY[0x2743A5EC0](v55);
    v58 = v57;

    v59 = sub_2706C83E8(v56, v58, &v94);

    *(v52 + 4) = v59;
    *(v52 + 12) = 2082;
    sub_2706A6494(v11 + v29, v96, &qword_28081D278, &qword_2706EBB10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D278, &qword_2706EBB10);
    v60 = sub_2706E5A4C();
    v62 = sub_2706C83E8(v60, v61, &v94);

    *(v52 + 14) = v62;
    _os_log_impl(&dword_270680000, v50, v51, "Pasteboard Representation %{public}s Missing iOS Context: %{public}s", v52, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_12_0();
  }

  sub_270694B50();
  v63 = swift_allocError();
  *v64 = 0xC000000000000010;
  sub_2706DD768();

LABEL_15:

  OUTLINED_FUNCTION_16_0();
}

void sub_27069D198(int a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v98 = a7;
  v99 = a4;
  v100 = a3;
  v13 = sub_2706E576C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = type metadata accessor for PasteboardDataTransferID(0) - 8;
  v17 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  if (a2)
  {
    v22 = a2;
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v23 = sub_2706E58DC();
    v24 = __swift_project_value_buffer(v23, qword_2808292F0);
    v25 = v24;
    MEMORY[0x28223BE20](v24);
    *(&v83 - 2) = v100;
    v26 = a2;
    sub_270694BF4(sub_2706A6B9C, (&v83 - 4), v25, a2, v27, v28, v29, v30, v83, v84, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
    v31 = a2;
    sub_2706DD768();
  }

  else
  {
    v90 = &v83 - v18;
    v91 = v21;
    v92 = v20;
    v93 = a10;
    v88 = v13;
    v89 = v15;
    v94 = v19;
    v95 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v96 = v14;
    v97 = a9;
    v32 = *(*(a5 + 24) + 16);
    v33 = v98;
    v34 = sub_2706E5A0C();
    v35 = [v32 _representationConformingToType_];

    if (v35)
    {
      if (qword_28081C738 != -1)
      {
        swift_once();
      }

      v87 = v35;
      v36 = sub_2706E58DC();
      __swift_project_value_buffer(v36, qword_2808292F0);
      v37 = v90;
      sub_270690CD8(v100, v90);

      v38 = sub_2706E58BC();
      v39 = sub_2706E5C1C();

      v40 = os_log_type_enabled(v38, v39);
      v41 = v95;
      v86 = a6;
      if (v40)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        aBlock[0] = v43;
        *v42 = 136446466;
        v85 = v39;
        v44 = sub_2706E572C();
        v46 = sub_2706B8734(8, v44, v45);
        v47 = MEMORY[0x2743A5EC0](v46);
        v48 = v33;
        v50 = v49;

        sub_270687394(v37);
        v51 = sub_2706C83E8(v47, v50, aBlock);

        *(v42 + 4) = v51;
        *(v42 + 12) = 2082;
        *(v42 + 14) = sub_2706C83E8(a6, v48, aBlock);
        _os_log_impl(&dword_270680000, v38, v85, "Pasteboard Provider %{public}s Activated: %{public}s", v42, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2743A75B0](v43, -1, -1);
        MEMORY[0x2743A75B0](v42, -1, -1);
      }

      else
      {

        sub_270687394(v37);
      }

      v66 = v88;
      v67 = v89;
      v68 = v96;
      (*(v96 + 16))(v41, v93, v88);
      v69 = v94;
      sub_270690CD8(v100, v94);
      v70 = v68;
      v71 = (*(v68 + 80) + 24) & ~*(v68 + 80);
      v72 = (v67 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
      v73 = (*(v92 + 80) + v72 + 8) & ~*(v92 + 80);
      v74 = (v91 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      v76 = v66;
      v77 = v75;
      *(v75 + 16) = v97;
      (*(v70 + 32))(v75 + v71, v41, v76);
      *(v77 + v72) = 0;
      sub_2706A66AC(v69, v77 + v73);
      *(v77 + v74) = v99;
      v78 = (v77 + ((v74 + 15) & 0xFFFFFFFFFFFFFFF8));
      v79 = v98;
      *v78 = v86;
      v78[1] = v79;
      aBlock[4] = sub_2706A6A94;
      aBlock[5] = v77;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_27069EF18;
      aBlock[3] = &block_descriptor_194;
      v80 = _Block_copy(aBlock);

      v81 = v87;
      v82 = [v87 loadWithOptions:0 v2:v80 completionHandler:?];
      _Block_release(v80);
    }

    else
    {
      if (qword_28081C738 != -1)
      {
        swift_once();
      }

      v52 = sub_2706E58DC();
      __swift_project_value_buffer(v52, qword_2808292F0);

      v53 = sub_2706E58BC();
      v54 = sub_2706E5BFC();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        aBlock[0] = v56;
        *v55 = 136446210;
        v57 = sub_2706E572C();
        v59 = sub_2706B8734(8, v57, v58);
        v60 = MEMORY[0x2743A5EC0](v59);
        v62 = v61;

        v63 = sub_2706C83E8(v60, v62, aBlock);

        *(v55 + 4) = v63;
        _os_log_impl(&dword_270680000, v53, v54, "Pasteboard Representation %{public}s Missing NSItemProviderRepresentation", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x2743A75B0](v56, -1, -1);
        MEMORY[0x2743A75B0](v55, -1, -1);
      }

      sub_270694B50();
      v64 = swift_allocError();
      *v65 = 0xC000000000000010;
      sub_2706DD768();
    }
  }
}

unint64_t sub_27069D964()
{
  sub_2706E5E3C();

  v0 = sub_2706E572C();
  v2 = sub_2706B8734(8, v0, v1);
  v3 = MEMORY[0x2743A5EC0](v2);
  v5 = v4;

  MEMORY[0x2743A5EF0](v3, v5);

  MEMORY[0x2743A5EF0](0xD000000000000012, 0x80000002706F0450);
  return 0xD000000000000014;
}

void sub_27069DA44(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, unint64_t a8)
{
  v157 = a7;
  v158 = a8;
  v159 = a6;
  v160 = a5;
  v12 = sub_2706E565C();
  v13 = *(v12 - 8);
  v148 = v12;
  v149 = v13;
  MEMORY[0x28223BE20](v12);
  v150 = &v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2706E576C();
  v155 = *(v15 - 8);
  v156 = v15;
  MEMORY[0x28223BE20](v15);
  v153 = v16;
  v154 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PasteboardDataTransferID(0);
  v151 = *(v17 - 8);
  v18 = *(v151 + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v145 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v152 = &v145 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v145 - v26;
  v28 = [a1 cleanupHandler];
  if (v28)
  {
    v29 = v28;
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    sub_27069EA04(sub_2706A707C, v30, a3);
  }

  if (a4)
  {
    v31 = a4;
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v32 = sub_2706E58DC();
    v33 = __swift_project_value_buffer(v32, qword_2808292F0);
    v34 = v33;
    MEMORY[0x28223BE20](v33);
    *(&v145 - 2) = v160;
    v35 = a4;
    sub_270694BF4(sub_2706A7040, (&v145 - 4), v34, a4, v36, v37, v38, v39, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
    v40 = swift_allocObject();
    swift_getErrorValue();
    *(v40 + 16) = sub_2706E653C();
    *(v40 + 24) = v41;
    v42 = v40 | 0x6000000000000000;
    sub_270694B50();
    v43 = swift_allocError();
    *v44 = v42;
    sub_2706DD768();

    v45 = a4;
    goto LABEL_12;
  }

  v46 = a3;
  v47 = a2;
  if (sub_270691CE0(v160, a3))
  {
    swift_unknownObjectRelease();
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v48 = sub_2706E58DC();
    v49 = __swift_project_value_buffer(v48, qword_2808292F0);
    MEMORY[0x28223BE20](v49);
    v51 = v157;
    v50 = v158;
    *(&v145 - 4) = v160;
    *(&v145 - 3) = v51;
    *(&v145 - 2) = v50;
    sub_270694BF8();
    sub_270694B50();
    v52 = swift_allocError();
    *v53 = 0xC000000000000018;
LABEL_11:
    sub_2706DD768();
    v45 = v52;
LABEL_12:

    return;
  }

  v157 = sub_2706A5628(a1, &selRef_data);
  if (v54 >> 60 == 15)
  {
    v55 = [a1 urlWrapper];
    if (!v55)
    {
      if (qword_28081C738 != -1)
      {
        swift_once();
      }

      v95 = sub_2706E58DC();
      __swift_project_value_buffer(v95, qword_2808292F0);
      sub_270690CD8(v160, v20);
      v96 = sub_2706E58BC();
      v97 = sub_2706E5BFC();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v161[0] = v99;
        *v98 = 136446210;
        v100 = sub_2706E572C();
        v102 = sub_2706B8734(8, v100, v101);
        v103 = MEMORY[0x2743A5EC0](v102);
        v105 = v104;

        sub_270687394(v20);
        v106 = sub_2706C83E8(v103, v105, v161);

        *(v98 + 4) = v106;
        _os_log_impl(&dword_270680000, v96, v97, "Pasteboard Provider %{public}s Opened With No URL or Data", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v99);
        MEMORY[0x2743A75B0](v99, -1, -1);
        MEMORY[0x2743A75B0](v98, -1, -1);
      }

      else
      {

        sub_270687394(v20);
      }

      sub_270694B50();
      v52 = swift_allocError();
      *v127 = 0xC000000000000020;
      goto LABEL_11;
    }

    v56 = v55;
    v57 = [v55 url];
    v58 = v150;
    sub_2706E562C();

    LODWORD(v158) = sub_2706E563C();
    v59 = v149 + 1;
    v157 = v149[1];
    (v157)(v58, v148);
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v60 = sub_2706E58DC();
    __swift_project_value_buffer(v60, qword_2808292F0);
    sub_270690CD8(v160, v23);
    v61 = v56;
    v62 = sub_2706E58BC();
    v63 = sub_2706E5C1C();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v149 = v59;
      v65 = v64;
      v146 = swift_slowAlloc();
      v161[0] = v146;
      *v65 = 136446723;
      HIDWORD(v145) = v63;
      v66 = sub_2706E572C();
      v68 = sub_2706B8734(8, v66, v67);
      v69 = MEMORY[0x2743A5EC0](v68);
      v71 = v70;

      sub_270687394(v23);
      v72 = sub_2706C83E8(v69, v71, v161);

      *(v65 + 4) = v72;
      *(v65 + 12) = 1024;
      LODWORD(v72) = [v61 isReadonly];

      *(v65 + 14) = v72;
      *(v65 + 18) = 2081;
      v73 = [v61 url];
      v74 = v150;
      sub_2706E562C();

      sub_2706A6DC4(&qword_28081D288, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v75 = v148;
      v76 = sub_2706E611C();
      v78 = v77;
      (v157)(v74, v75);
      v79 = sub_2706C83E8(v76, v78, v161);
      v47 = a2;

      *(v65 + 20) = v79;
      _os_log_impl(&dword_270680000, v62, BYTE4(v145), "Pasteboard Provider %{public}s Open URL (readonly=%{BOOL}d): %{private}s", v65, 0x1Cu);
      v80 = v146;
      swift_arrayDestroy();
      v46 = a3;
      MEMORY[0x2743A75B0](v80, -1, -1);
      MEMORY[0x2743A75B0](v65, -1, -1);
    }

    else
    {

      sub_270687394(v23);
    }

    v107 = v61;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v109 = Strong;
      v110 = [v107 url];
      v149 = v107;
      v111 = v110;
      v112 = v150;
      sub_2706E562C();

      v113 = v160;
      v114 = v152;
      sub_270690CD8(v160, v152);
      type metadata accessor for PasteboardFileDataProvider(0);
      swift_allocObject();
      v157 = sub_2706ABECC(v109, v112, v114);
      sub_2706A5E2C();
      v150 = "r this pasteboard.";
      sub_270690CD8(v113, v114);
      v115 = v155;
      v116 = v156;
      v117 = *(v155 + 16);
      v118 = v46;
      v147 = v46;
      v119 = v154;
      v117(v154, v118, v156);
      v120 = v47;
      v121 = (*(v151 + 80) + 40) & ~*(v151 + 80);
      v122 = (v18 + *(v115 + 80) + v121) & ~*(v115 + 80);
      v123 = (v153 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
      v124 = swift_allocObject();
      *(v124 + 16) = v158 & 1;
      v125 = v149;
      *(v124 + 24) = v149;
      *(v124 + 32) = v120;
      sub_2706A66AC(v114, v124 + v121);
      (*(v115 + 32))(v124 + v122, v119, v116);
      *(v124 + v123) = v159;
      type metadata accessor for Completion();
      swift_allocObject();

      v126 = v125;
      sub_2706DD8C4(0xD000000000000060, v150 | 0x8000000000000000, 423, sub_2706A6CD8, v124);
      sub_2706ABFEC();

      return;
    }

LABEL_46:
    __break(1u);
    JUMPOUT(0x27069E9F4);
  }

  v158 = v54;
  if (qword_28081C738 != -1)
  {
    swift_once();
  }

  v81 = sub_2706E58DC();
  __swift_project_value_buffer(v81, qword_2808292F0);
  sub_270690CD8(v160, v27);
  v83 = v157;
  v82 = v158;
  sub_2706A6E0C(v157, v158);
  sub_270692D3C(v83, v82);
  v84 = sub_2706E58BC();
  v85 = sub_2706E5C1C();
  if (os_log_type_enabled(v84, v85))
  {
    LODWORD(v150) = v85;
    v86 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v161[0] = v149;
    *v86 = 136446466;
    v87 = sub_2706E572C();
    v89 = sub_2706B8734(8, v87, v88);
    v90 = MEMORY[0x2743A5EC0](v89);
    v92 = v91;

    sub_270687394(v27);
    v93 = sub_2706C83E8(v90, v92, v161);

    *(v86 + 4) = v93;
    *(v86 + 12) = 2048;
    v46 = a3;
    v83 = v157;
    switch(v82 >> 62)
    {
      case 1uLL:
        sub_2706A3BA4(v157, v82);
        LODWORD(v94) = HIDWORD(v83) - v83;
        if (__OFSUB__(HIDWORD(v83), v83))
        {
          __break(1u);
          goto LABEL_45;
        }

        v94 = v94;
LABEL_40:
        v82 = v158;
LABEL_41:
        v130 = v150;
        *(v86 + 14) = v94;
        sub_2706A3BA4(v83, v82);
        _os_log_impl(&dword_270680000, v84, v130, "Pasteboard Provider %{public}s Data (%ld bytes)", v86, 0x16u);
        v131 = v149;
        __swift_destroy_boxed_opaque_existential_1(v149);
        MEMORY[0x2743A75B0](v131, -1, -1);
        MEMORY[0x2743A75B0](v86, -1, -1);

        v47 = a2;
        break;
      case 2uLL:
        v129 = v157[2];
        v128 = v157[3];
        sub_2706A3BA4(v157, v82);
        v94 = v128 - v129;
        if (!__OFSUB__(v128, v129))
        {
          goto LABEL_40;
        }

        __break(1u);
LABEL_37:
        sub_2706A3BA4(v83, v82);
        v94 = 0;
        goto LABEL_41;
      case 3uLL:
        goto LABEL_37;
      default:
        sub_2706A3BA4(v157, v82);
        v94 = BYTE6(v82);
        goto LABEL_41;
    }
  }

  else
  {
    sub_2706A3BA4(v83, v82);
    sub_2706A3BA4(v83, v82);

    sub_270687394(v27);
  }

  if (!swift_weakLoadStrong())
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v132 = v160;
  v133 = v152;
  sub_270690CD8(v160, v152);
  type metadata accessor for PasteboardDataProvider(0);
  swift_allocObject();
  sub_270692D3C(v83, v158);
  v157 = sub_2706AAF94();
  sub_2706A5E2C();
  v150 = "r this pasteboard.";
  sub_270690CD8(v132, v133);
  v134 = v155;
  v135 = v156;
  v136 = *(v155 + 16);
  v137 = v46;
  v147 = v46;
  v138 = v154;
  v136(v154, v137, v156);
  v139 = v47;
  v140 = (*(v151 + 80) + 24) & ~*(v151 + 80);
  v141 = (v18 + *(v134 + 80) + v140) & ~*(v134 + 80);
  v142 = v83;
  v143 = (v153 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
  v144 = swift_allocObject();
  *(v144 + 16) = v139;
  sub_2706A66AC(v133, v144 + v140);
  (*(v134 + 32))(v144 + v141, v138, v135);
  *(v144 + v143) = v159;
  type metadata accessor for Completion();
  swift_allocObject();

  sub_2706DD8C4(0xD000000000000060, v150 | 0x8000000000000000, 406, sub_2706A6F4C, v144);
  sub_2706AB070();

  sub_2706A3BA4(v142, v158);
}

uint64_t sub_27069EA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2706E576C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a3, v6);
  swift_beginAccess();
  v11 = sub_27069F140(v19);
  if (*v10)
  {
    v12 = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;

    sub_2706E25CC();
    v14 = *(*v12 + 16);
    sub_2706E269C(v14);
    v15 = *v12;
    *(v15 + 16) = v14 + 1;
    v16 = v15 + 16 * v14;
    *(v16 + 32) = sub_2706A70B8;
    *(v16 + 40) = v13;
  }

  (v11)(v19, 0);
  swift_endAccess();
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_27069EBB4()
{
  sub_2706E5E3C();

  v0 = sub_2706E572C();
  v2 = sub_2706B8734(8, v0, v1);
  v3 = MEMORY[0x2743A5EC0](v2);
  v5 = v4;

  MEMORY[0x2743A5EF0](v3, v5);

  MEMORY[0x2743A5EF0](0x6146206E65704F20, 0xEC00000064656C69);
  return 0xD000000000000014;
}

unint64_t sub_27069EC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2706E5E3C();

  v5 = sub_2706E572C();
  v7 = sub_2706B8734(8, v5, v6);
  v8 = MEMORY[0x2743A5EC0](v7);
  v10 = v9;

  MEMORY[0x2743A5EF0](v8, v10);

  MEMORY[0x2743A5EF0](0xD000000000000014, 0x80000002706F0470);
  MEMORY[0x2743A5EF0](a2, a3);
  return 0xD000000000000014;
}

void sub_27069ED90(uint64_t a1)
{
  sub_270691E80();
  swift_unknownObjectRelease();
  sub_2706DD768();
}

void sub_27069EDDC(uint64_t a1, char a2, void *a3)
{
  v5 = sub_2706E565C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = [a3 url];
    sub_2706E562C();

    sub_2706E561C();
    (*(v6 + 8))(v8, v5);
  }

  sub_270691E80();
  swift_unknownObjectRelease();
  sub_2706DD768();
}

void sub_27069EF18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_27069EF80()
{

  return v0;
}

uint64_t sub_27069EFA8()
{
  sub_27069EF80();
  OUTLINED_FUNCTION_11_3();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_27069EFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a1, a2, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  else
  {
    result = sub_2706E5F8C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27069F0E0()
{
  sub_2706A59B4(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t (*sub_27069F140(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v2;
  v3 = sub_2706E576C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  v2[5] = v4;
  v6 = __swift_coroFrameAllocStub(*(v4 + 64));
  v2[6] = v6;
  (*(v5 + 16))();
  v2[7] = sub_2706A3BB8(v2, v6);
  return sub_27069F238;
}

void sub_27069F238(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  (*(*a1 + 56))(*a1, 0);
  v3 = OUTLINED_FUNCTION_15_3();
  v4(v3);
  free(v2);

  free(v1);
}

uint64_t sub_27069F2AC()
{
  sub_2706E576C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D270, &unk_2706EA090);
  OUTLINED_FUNCTION_1_4();
  sub_2706A6DC4(v1, v2, MEMORY[0x277CC9600]);
  v3 = MEMORY[0x277D84F90];
  v0[5] = sub_2706E59AC();
  v0[6] = 0;
  v0[7] = v3;
  type metadata accessor for PasteboardCollectionActivationProxy();
  OUTLINED_FUNCTION_11_3();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v0[8] = v4;
  v0[9] = 1195463236;
  v0[10] = 0xE400000000000000;
  v0[11] = 0;

  return sub_270692BBC();
}

void *sub_27069F384()
{
  OUTLINED_FUNCTION_20_1();
  sub_2706E576C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D270, &unk_2706EA090);
  OUTLINED_FUNCTION_1_4();
  sub_2706A6DC4(v2, v3, MEMORY[0x277CC9600]);
  v4 = MEMORY[0x277D84F90];
  v1[5] = sub_2706E59AC();
  v1[6] = 0;
  v1[7] = v4;
  type metadata accessor for PasteboardCollectionActivationProxy();
  OUTLINED_FUNCTION_11_3();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  v1[8] = v5;
  v1[9] = 1195463236;
  v1[10] = 0xE400000000000000;
  v1[11] = 0;
  v6 = *(v0 + 16);
  v7 = v1[6];
  v1[6] = v6;
  v8 = v6;

  v9 = sub_270692BBC();
  v10 = v9[6];
  if (v10)
  {

    v11 = sub_2706A55B0(v10);
    if (v11)
    {
      sub_270698A58(v11);

      OUTLINED_FUNCTION_9_1((v9 + 7), v17);
      v12 = v9[7];
      type metadata accessor for PasteboardItemCollection();
      OUTLINED_FUNCTION_19_0();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      v14 = v9[8];

      v15 = sub_2706A5B18(v9, v14, v13);

      v9[11] = v15;
    }

    else
    {
    }
  }

  return v9;
}

uint64_t sub_27069F534()
{
}

uint64_t sub_27069F584()
{
  v0 = sub_270692AB0();

  return v0;
}

uint64_t sub_27069F5DC()
{
  v0 = sub_27069F584();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

void sub_27069F630()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  if (qword_28081C738 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_28081C738);
  }

  v11 = sub_2706E58DC();
  __swift_project_value_buffer(v11, qword_2808292F0);
  (*(v6 + 16))(v10, v3, v4);
  v12 = sub_2706E58BC();
  v13 = sub_2706E5C1C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_29_1();
    v23 = OUTLINED_FUNCTION_28_1();
    v25 = v23;
    *v14 = 136446210;
    v15 = sub_2706E572C();
    v17 = OUTLINED_FUNCTION_1_1(v15, v16);
    v19 = v18;
    v20 = MEMORY[0x2743A5EC0](v17);
    v22 = v21;

    (*(v6 + 8))(v10, v4);
    sub_2706C83E8(v20, v22, &v25);
    OUTLINED_FUNCTION_19_3();

    *(v14 + 4) = v19;
    _os_log_impl(&dword_270680000, v12, v13, "Session %{public}s Begin", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_13_4();
  }

  else
  {

    (*(v6 + 8))(v10, v4);
  }

  sub_27069181C();
  OUTLINED_FUNCTION_25_1(v1 + 40);
  swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v1 + 40);
  sub_27068FC9C(MEMORY[0x277D84F90]);
  *(v1 + 40) = v24;
  swift_endAccess();
  OUTLINED_FUNCTION_16_0();
}

void sub_27069F874()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  v3 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v43[-1] - v11;
  OUTLINED_FUNCTION_25_1(v0 + 40);
  v13 = sub_2706CACAC(v2);
  swift_endAccess();
  if (v13)
  {
    OUTLINED_FUNCTION_35_0();
    if (!v14)
    {
      OUTLINED_FUNCTION_0_1(&qword_28081C738);
    }

    v15 = sub_2706E58DC();
    __swift_project_value_buffer(v15, qword_2808292F0);
    (*(v5 + 16))(v12, v2, v3);
    v16 = sub_2706E58BC();
    v17 = sub_2706E5C1C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_29_1();
      v42 = OUTLINED_FUNCTION_28_1();
      v43[0] = v42;
      *v18 = 136446210;
      v19 = sub_2706E572C();
      v21 = OUTLINED_FUNCTION_1_1(v19, v20);
      v22 = MEMORY[0x2743A5EC0](v21);
      v24 = v23;

      (*(v5 + 8))(v12, v3);
      v25 = sub_2706C83E8(v22, v24, v43);

      *(v18 + 4) = v25;
      _os_log_impl(&dword_270680000, v16, v17, "Session %{public}s End", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();
    }

    else
    {

      (*(v5 + 8))(v12, v3);
    }

    v38 = *(v13 + 16);
    if (v38)
    {
      v39 = v13 + 40;
      do
      {
        v40 = *(v39 - 8);

        v40(v41);

        v39 += 16;
        --v38;
      }

      while (v38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_0();
    if (!v14)
    {
      OUTLINED_FUNCTION_0_1(&qword_28081C738);
    }

    v26 = sub_2706E58DC();
    __swift_project_value_buffer(v26, qword_2808292F0);
    (*(v5 + 16))(v9, v2, v3);
    v27 = sub_2706E58BC();
    v28 = sub_2706E5BFC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_29_1();
      v30 = OUTLINED_FUNCTION_28_1();
      v43[0] = v30;
      *v29 = 136446210;
      v31 = sub_2706E572C();
      v33 = OUTLINED_FUNCTION_1_1(v31, v32);
      v34 = MEMORY[0x2743A5EC0](v33);
      v36 = v35;

      (*(v5 + 8))(v9, v3);
      v37 = sub_2706C83E8(v34, v36, v43);

      *(v29 + 4) = v37;
      _os_log_impl(&dword_270680000, v27, v28, "Pasteboard Data Session %{public}s Not Open", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_12_0();
    }

    else
    {

      (*(v5 + 8))(v9, v3);
    }
  }

  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_27069FF1C(unint64_t a1)
{
  sub_270694B50();
  v2 = swift_allocError();
  *v3 = a1;
  sub_270694BA4(a1);
  return v2;
}

uint64_t sub_27069FF6C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_context;
  OUTLINED_FUNCTION_9_1(a2 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_context, v23);
  sub_2706A6494(a2 + v3, v21, &qword_28081D278, &qword_2706EBB10);
  if (v22)
  {
    sub_2706A6494(v21, v19, &qword_28081D278, &qword_2706EBB10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D280, &unk_2706EA0A0);
    type metadata accessor for PasteboardContext_iOS();
    if (swift_dynamicCast())
    {
      sub_27069CA58();

      __swift_destroy_boxed_opaque_existential_1(v19);
      return sub_2706A64F4(v21, &qword_28081D278, &qword_2706EBB10);
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  if (qword_28081C738 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_28081C738);
  }

  v4 = sub_2706E58DC();
  __swift_project_value_buffer(v4, qword_2808292F0);
  OUTLINED_FUNCTION_19_3();

  v5 = sub_2706E58BC();
  v6 = sub_2706E5BFC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_27_1();
    v20 = OUTLINED_FUNCTION_26_1();
    *v7 = 136446466;
    sub_2706E576C();
    OUTLINED_FUNCTION_1_4();
    sub_2706A6DC4(v8, v9, MEMORY[0x277CC9628]);
    v10 = sub_2706E611C();
    v12 = sub_2706C83E8(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    sub_2706A6494(a2 + v3, v19, &qword_28081D278, &qword_2706EBB10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D278, &qword_2706EBB10);
    v13 = sub_2706E5A4C();
    v15 = sub_2706C83E8(v13, v14, &v20);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_270680000, v5, v6, "Pasteboard Representation %{public}s Missing Context: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_12_0();
  }

  sub_270694B50();
  v16 = swift_allocError();
  *v17 = 0xC000000000000010;
  sub_2706DD768();

  return sub_2706A64F4(v21, &qword_28081D278, &qword_2706EBB10);
}

uint64_t sub_2706A0278()
{
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_2706A02D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = sub_2706A5688(v3);
  v6 = v5;
  v7 = [v3 preferredPresentationStyle];
  v8 = 2 * (v7 == 2);
  if (v7 == 1)
  {
    v8 = 1;
  }

  v24 = v8;
  v9 = [v3 registeredTypeIdentifiers];
  v10 = sub_2706E5B1C();

  v11 = 0;
  v20 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v12 = *(v10 + 16);
  v13 = v10 + 40;
LABEL_4:
  v14 = (v13 + 16 * v11);
  v15 = v11;
  while (1)
  {
    if (v12 == v15)
    {

      type metadata accessor for PasteboardItem();
      swift_allocObject();
      sub_2706BEE78(v20, v24);
      return;
    }

    if (v15 >= *(v10 + 16))
    {
      break;
    }

    v11 = (&v15->isa + 1);
    v17 = *(v14 - 1);
    v16 = *v14;

    v18 = sub_2706A04B0(v15, v17, v16, v3, a1, a3, a2, v4, v6, v24);

    v14 += 2;
    v15 = (v15 + 1);
    if (v18)
    {
      MEMORY[0x2743A5F60](v19);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2706E5B2C();
      }

      sub_2706E5B4C();
      v20 = v25;
      v13 = v10 + 40;
      goto LABEL_4;
    }
  }

  __break(1u);
}

uint64_t sub_2706A04B0(NSObject *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v131 = a7;
  v132 = a8;
  v130 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D208, &qword_2706EA040);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v133 = &v129 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v129 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v137 = (&v129 - v23);
  MEMORY[0x28223BE20](v22);
  v25 = &v129 - v24;
  v138 = sub_2706E589C();
  v135 = *(v138 - 8);
  v26 = MEMORY[0x28223BE20](v138);
  v28 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v129 - v29;
  v31 = sub_2706E5A0C();
  v32 = [a4 _representationConformingToType_];

  if (!v32)
  {
    return 0;
  }

  v134 = a5;
  v136 = a1;
  v33 = v32;
  v34 = [v33 typeIdentifier];
  v35 = sub_2706E5A3C();
  v37 = v36;

  v139[0] = v35;
  v139[1] = v37;
  MEMORY[0x28223BE20](v38);
  *(&v129 - 2) = v139;
  LOBYTE(v34) = sub_270698CB0(sub_2706A6474, (&v129 - 4), &unk_28806AA60);

  if ((v34 & 1) == 0)
  {
    v53 = [v33 visibility];
    if (v53)
    {
      v54 = v53;

      if (qword_28081C738 != -1)
      {
        swift_once();
      }

      v55 = sub_2706E58DC();
      __swift_project_value_buffer(v55, qword_2808292F0);
      v56 = v33;
      v41 = sub_2706E58BC();
      v57 = sub_2706E5C1C();

      v58 = os_log_type_enabled(v41, v57);
      v59 = v136;
      if (v58)
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v139[0] = v61;
        *v60 = 134218754;
        *(v60 + 4) = v134;
        *(v60 + 12) = 2048;
        *(v60 + 14) = v59;
        *(v60 + 22) = 2082;
        v62 = [v56 typeIdentifier];
        v63 = sub_2706E5A3C();
        v65 = v64;

        v66 = sub_2706C83E8(v63, v65, v139);

        *(v60 + 24) = v66;
        *(v60 + 32) = 2050;
        *(v60 + 34) = v54;
        _os_log_impl(&dword_270680000, v41, v57, "pasteboard item: item=%ld rep=%ld type=%{public}s skipped, disallowed visibility=%{public}ld", v60, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v61);
        MEMORY[0x2743A75B0](v61, -1, -1);
        MEMORY[0x2743A75B0](v60, -1, -1);

        return 0;
      }

LABEL_16:
      return 0;
    }

    v67 = [v33 typeIdentifier];
    sub_2706E5A3C();

    sub_2706E58AC();
    v68 = v138;
    if (__swift_getEnumTagSinglePayload(v25, 1, v138) == 1)
    {
      sub_2706A64F4(v25, &qword_28081D208, &qword_2706EA040);
      v70 = v136;
      v69 = v137;
    }

    else
    {
      v73 = v135;
      (*(v135 + 32))(v30, v25, v68);
      sub_2706E584C();
      v74 = sub_2706E585C();
      v75 = *(v73 + 8);
      v75(v28, v68);
      v76 = v68;
      v69 = v137;
      if (v74)
      {
        v137 = v75;
        if (qword_28081C738 != -1)
        {
          swift_once();
        }

        v77 = sub_2706E58DC();
        __swift_project_value_buffer(v77, qword_2808292F0);
        v78 = v33;
        v79 = sub_2706E58BC();
        v80 = sub_2706E5C1C();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v139[0] = v82;
          *v81 = 134218498;
          *(v81 + 4) = v134;
          *(v81 + 12) = 2048;
          *(v81 + 14) = v136;
          *(v81 + 22) = 2082;
          v83 = [v78 typeIdentifier];
          v84 = sub_2706E5A3C();
          v86 = v85;

          v87 = sub_2706C83E8(v84, v86, v139);

          *(v81 + 24) = v87;
          _os_log_impl(&dword_270680000, v79, v80, "pasteboard item: item=%ld rep=%ld type=%{public}s skipped", v81, 0x20u);
          __swift_destroy_boxed_opaque_existential_1(v82);
          MEMORY[0x2743A75B0](v82, -1, -1);
          MEMORY[0x2743A75B0](v81, -1, -1);
        }

        else
        {
        }

        v137(v30, v138);
        return 0;
      }

      v75(v30, v76);
      v70 = v136;
    }

    v88 = [v33 typeIdentifier];
    sub_2706E5A3C();

    sub_2706E58AC();
    sub_2706A6494(v69, v21, &qword_28081D208, &qword_2706EA040);
    v89 = v138;
    if (__swift_getEnumTagSinglePayload(v21, 1, v138) == 1)
    {
      sub_2706A64F4(v21, &qword_28081D208, &qword_2706EA040);
      v90 = 0;
    }

    else
    {
      v91 = sub_2706E581C();
      (*(v135 + 8))(v21, v89);
      v90 = sub_27069872C(v91);
    }

    v92 = type metadata accessor for PasteboardContext_iOS();
    v93 = swift_allocObject();
    v94 = v131;
    *(v93 + 16) = v130;
    *(v93 + 24) = v94;

    v95 = [v33 typeIdentifier];
    v96 = sub_2706E5A3C();
    v98 = v97;

    v139[3] = v92;
    v139[4] = &off_28806BF08;
    if (!v90)
    {
      v90 = MEMORY[0x277D84F90];
    }

    v139[0] = v93;
    type metadata accessor for PasteboardRepresentation(0);
    swift_allocObject();

    v99 = v70;
    v71 = sub_2706BCEA0(v70, v96, v98, v90, v132, a9, v139);
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v100 = sub_2706E58DC();
    __swift_project_value_buffer(v100, qword_2808292F0);
    v101 = v137;
    v102 = v133;
    sub_2706A6494(v137, v133, &qword_28081D208, &qword_2706EA040);
    v103 = v33;

    v104 = sub_2706E58BC();
    v105 = sub_2706E5C1C();

    if (!os_log_type_enabled(v104, v105))
    {
      sub_2706A64F4(v102, &qword_28081D208, &qword_2706EA040);

      v115 = v101;
LABEL_47:
      sub_2706A64F4(v115, &qword_28081D208, &qword_2706EA040);
      return v71;
    }

    LODWORD(v132) = v105;
    v136 = v104;
    v106 = v99;
    LODWORD(v131) = a10;
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v139[0] = v108;
    *v107 = 134219266;
    *(v107 + 4) = v134;
    *(v107 + 12) = 2048;
    *(v107 + 14) = v106;
    *(v107 + 22) = 2082;
    v109 = [v103 typeIdentifier];
    v110 = sub_2706E5A3C();
    v112 = v111;

    v113 = sub_2706C83E8(v110, v112, v139);

    *(v107 + 24) = v113;
    *(v107 + 32) = 1024;
    sub_2706A6494(v102, v16, &qword_28081D208, &qword_2706EA040);
    v114 = v138;
    if (__swift_getEnumTagSinglePayload(v16, 1, v138) == 1)
    {
      sub_2706A64F4(v16, &qword_28081D208, &qword_2706EA040);
    }

    else
    {
      v116 = sub_2706E587C();
      (*(v135 + 8))(v16, v114);
      if (v116)
      {
        v117 = 1;
LABEL_39:
        sub_2706A64F4(v102, &qword_28081D208, &qword_2706EA040);
        *(v107 + 34) = v117;
        *(v107 + 38) = 2082;
        if (v131)
        {
          if (v131 == 1)
          {
            v118 = 0xE600000000000000;
            v119 = 0x656E696C6E69;
          }

          else
          {
            v118 = 0xEA0000000000746ELL;
            v119 = 0x656D686361747461;
          }
        }

        else
        {
          v118 = 0xE700000000000000;
          v119 = 0x6E776F6E6B6E75;
        }

        v120 = sub_2706C83E8(v119, v118, v139);

        *(v107 + 40) = v120;
        *(v107 + 48) = 2082;
        v121 = sub_2706E572C();
        v123 = sub_2706B8734(8, v121, v122);
        v124 = MEMORY[0x2743A5EC0](v123);
        v126 = v125;

        v127 = sub_2706C83E8(v124, v126, v139);

        *(v107 + 50) = v127;
        v128 = v136;
        _os_log_impl(&dword_270680000, v136, v132, "pasteboard item: item=%ld rep=%ld type=%{public}s public=%{BOOL}d style=%{public}s rep-id=%{public}s", v107, 0x3Au);
        swift_arrayDestroy();
        MEMORY[0x2743A75B0](v108, -1, -1);
        MEMORY[0x2743A75B0](v107, -1, -1);

        v115 = v137;
        goto LABEL_47;
      }
    }

    v117 = 0;
    goto LABEL_39;
  }

  if (qword_28081C738 != -1)
  {
    swift_once();
  }

  v39 = sub_2706E58DC();
  __swift_project_value_buffer(v39, qword_2808292F0);
  v40 = v33;
  v41 = sub_2706E58BC();
  v42 = sub_2706E5C1C();

  v43 = os_log_type_enabled(v41, v42);
  v44 = v136;
  v45 = v134;
  if (!v43)
  {

    goto LABEL_16;
  }

  v46 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v139[0] = v47;
  *v46 = 134218498;
  *(v46 + 4) = v45;
  *(v46 + 12) = 2048;
  *(v46 + 14) = v44;
  *(v46 + 22) = 2082;
  v48 = [v40 typeIdentifier];
  v49 = sub_2706E5A3C();
  v51 = v50;

  v52 = sub_2706C83E8(v49, v51, v139);

  *(v46 + 24) = v52;
  _os_log_impl(&dword_270680000, v41, v42, "pasteboard item: item=%ld rep=%ld type=%{public}s skipped, disallowed type", v46, 0x20u);
  __swift_destroy_boxed_opaque_existential_1(v47);
  MEMORY[0x2743A75B0](v47, -1, -1);
  MEMORY[0x2743A75B0](v46, -1, -1);

  return 0;
}

uint64_t sub_2706A1248()
{

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id sub_2706A12A0(uint64_t a1)
{
  swift_weakInit();
  swift_weakAssign();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PasteboardItemProvider_iOS();
  v2 = objc_msgSendSuper2(&v4, sel_init);

  return v2;
}

id sub_2706A1318(uint64_t p_aBlock)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D208, &qword_2706EA040);
  v3 = OUTLINED_FUNCTION_16_3(v2);
  MEMORY[0x28223BE20](v3);
  v70 = (v61 - v4);
  v67 = sub_2706E589C();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_1();
  v64 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v65 = v61 - v11;
  v12 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
  v13 = *(p_aBlock + 16);
  v73 = v12;
  [v12 setPreferredPresentationStyle_];

  aBlock = sub_2706A56EC(v14);
  v15 = 0;
  sub_2706A40B8(&aBlock);
  v16 = aBlock;
  aBlock = MEMORY[0x277D84F90];
  v17 = sub_2706C2200();
  v69 = v16 & 0xC000000000000001;
  v61[1] = v16 + 32;
  while (1)
  {
    if (v17 == v15)
    {
      p_aBlock = aBlock;
      if (sub_2706C2200())
      {
        v15 = p_aBlock & 0xC000000000000001;
        sub_2706C2208(0, (p_aBlock & 0xC000000000000001) == 0, p_aBlock);
        if ((p_aBlock & 0xC000000000000001) != 0)
        {
          goto LABEL_61;
        }

        OUTLINED_FUNCTION_36_0();
      }

      else
      {
      }

      goto LABEL_17;
    }

    if (v69)
    {
      v18 = MEMORY[0x2743A62C0](v15, v16);
    }

    else
    {
      if (v15 >= *(v16 + 16))
      {
        goto LABEL_58;
      }

      v18 = *(v16 + 8 * v15 + 32);
    }

    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (*(v18 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_name + 8))
    {
      p_aBlock = &aBlock;
      sub_2706E5EDC();
      sub_2706E5F0C();
      sub_2706E5F1C();
      sub_2706E5EEC();
    }

    else
    {
    }

    ++v15;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    MEMORY[0x2743A62C0](0, p_aBlock);

    OUTLINED_FUNCTION_36_0();
    swift_unknownObjectRelease();
    if (v15)
    {
      v19 = OUTLINED_FUNCTION_15_3();
      sub_2706A554C(v19, v20, v73);
    }

LABEL_17:
    v79 = MEMORY[0x277D84FA0];
    v68 = v16;
    if (v17)
    {
      break;
    }

LABEL_30:
    v66 = sub_2706C2200();
    if (!v66)
    {
LABEL_55:

      return v73;
    }

    v44 = 0;
    v70 = &v75;
    while (1)
    {
      if (v69)
      {
        v45 = MEMORY[0x2743A62C0](v44, v16);
      }

      else
      {
        if (v44 >= *(v16 + 16))
        {
          goto LABEL_60;
        }
      }

      if (__OFADD__(v44++, 1))
      {
        break;
      }

      v47 = *(v45 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_superTypes);
      v48 = *(v47 + 16);
      if (v48)
      {
        v71 = v45;
        v67 = v44;

        v49 = 0;
        while (v49 < *(v47 + 16))
        {
          v50 = (v47 + 32 + 16 * v49);
          v15 = *v50;
          v16 = v50[1];
          v6 = v79;
          if (*(v79 + 16))
          {
            sub_2706E65EC();

            sub_2706E5A6C();
            v51 = sub_2706E660C();
            p_aBlock = (v6 + 7);
            v17 = ~(-1 << *(v6 + 32));
            while (1)
            {
              v52 = v51 & v17;
              if (((*(p_aBlock + (((v51 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v51 & v17)) & 1) == 0)
              {
                break;
              }

              v53 = (v6[6] + 16 * v52);
              if (*v53 != v15 || v53[1] != v16)
              {
                v55 = sub_2706E631C();
                v51 = v52 + 1;
                if ((v55 & 1) == 0)
                {
                  continue;
                }
              }

              goto LABEL_51;
            }
          }

          else
          {
          }

          p_aBlock = sub_2706E5A0C();
          OUTLINED_FUNCTION_19_0();
          v56 = swift_allocObject();
          swift_weakInit();
          OUTLINED_FUNCTION_11_3();
          v57 = swift_allocObject();
          v58 = v72;
          *(v57 + 16) = v56;
          *(v57 + 24) = v58;
          v77 = sub_2706A74CC;
          v78 = v57;
          OUTLINED_FUNCTION_4_4();
          v75 = sub_2706A1BA0;
          v76 = &block_descriptor_164;
          v6 = _Block_copy(&aBlock);
          v17 = v78;
          v59 = v58;

          [v73 _addRepresentationType_v2_preferredRepresentation_loader_];
          _Block_release(v6);

          OUTLINED_FUNCTION_38_0();
LABEL_51:

          if (++v49 == v48)
          {

            v44 = v67;
            goto LABEL_54;
          }
        }

        __break(1u);
        goto LABEL_57;
      }

LABEL_54:
      v16 = v68;
      if (v44 == v66)
      {
        goto LABEL_55;
      }
    }
  }

  if (v17 >= 1)
  {
    v21 = 0;
    v63 = (v6 + 4);
    v66 = (v6 + 1);
    v71 = &v75;
    v62 = v17;
    v22 = v67;
    do
    {
      if (v69)
      {
        v23 = MEMORY[0x2743A62C0](v21, v16);
      }

      else
      {
        v23 = *(v16 + 8 * v21 + 32);
      }

      v24 = v70;
      v25 = (v23 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier);

      OUTLINED_FUNCTION_15_3();
      sub_2706E58AC();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v22);
      v6 = v66;
      if (EnumTagSinglePayload == 1)
      {
        sub_2706A64F4(v24, &qword_28081D208, &qword_2706EA040);
      }

      else
      {
        v27 = v65;
        (*v63)(v65, v24, v22);
        v28 = v64;
        sub_2706E582C();
        v29 = sub_2706E585C();
        v30 = *v6;
        (*v6)(v28, v22);
        if (v29)
        {
          sub_2706E586C();
          sub_2706E580C();
          v31 = OUTLINED_FUNCTION_34_1();
          v30(v31);
          v32 = sub_2706E5A0C();

          sub_2706E586C();
          v33 = v72;
          sub_2706A1EDC();
          v34 = OUTLINED_FUNCTION_34_1();
          v30(v34);
          v77 = v33;
          v78 = v16;
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_8_4();
          v75 = v35;
          v76 = &block_descriptor_167;
          v36 = _Block_copy(&aBlock);

          [v73 _addRepresentationType_v2_preferredRepresentation_loader_];
          _Block_release(v36);

          v37 = v65;
        }

        else
        {
          v37 = v27;
        }

        (v30)(v37, v22);
        v17 = v62;
      }

      ++v21;
      p_aBlock = *v25;

      OUTLINED_FUNCTION_15_3();
      sub_2706E5A0C();
      OUTLINED_FUNCTION_19_3();

      OUTLINED_FUNCTION_19_0();
      v38 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_11_3();
      v39 = swift_allocObject();
      v40 = v72;
      *(v39 + 16) = v38;
      *(v39 + 24) = v40;
      v77 = sub_2706A74CC;
      v78 = v39;
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_8_4();
      v75 = v41;
      v76 = &block_descriptor_156;
      v42 = _Block_copy(&aBlock);
      v43 = v40;

      [v73 _addRepresentationType_v2_preferredRepresentation_loader_];
      _Block_release(v42);

      v15 = *v25;

      OUTLINED_FUNCTION_38_0();

      v16 = v68;
    }

    while (v17 != v21);
    goto LABEL_30;
  }

  __break(1u);

  __break(1u);
  return result;
}

id sub_2706A1BA0(uint64_t a1, uint64_t a2, const void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_2706E599C();
  }

  else
  {
    v5 = 0;
  }

  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;

  v8 = v4(v5, sub_2706A5988, v7);

  return v8;
}

uint64_t sub_2706A1C90(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_2706A25F8();
    v6 = v5;
  }

  else
  {
    sub_270690D44(0, &qword_28081D1F0, 0x277CCAA90);
    v7 = sub_27069A204(0);
    a2();

    return 0;
  }

  return v6;
}

uint64_t sub_2706A1D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PasteboardDataTransferID(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2706E576C();
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, *(a2 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_contents) + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_source);
  sub_2706E575C();
  type metadata accessor for RepresentationReceiver(0);
  swift_allocObject();

  return sub_270699BE8(v12, v9, a3, a4);
}

void sub_2706A1EDC()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D208, &qword_2706EA040);
  v5 = OUTLINED_FUNCTION_16_3(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = sub_2706E589C();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;

  sub_2706E58AC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    (*(v10 + 32))(v17, v7, v8);
    sub_2706E582C();
    v32 = sub_2706E585C();
    v33 = *(v10 + 8);
    v33(v14, v8);
    if (v32)
    {
      sub_2706E586C();
      sub_2706E585C();
      v34 = OUTLINED_FUNCTION_21_1();
      (v33)(v34);
      if (v3)
      {
        v33(v17, v8);
        v35 = 0;
        v36 = 1;
LABEL_13:
        OUTLINED_FUNCTION_19_0();
        v39 = swift_allocObject();
        OUTLINED_FUNCTION_24_0(v39);
        v40 = swift_allocObject();
        *(v40 + 16) = v3;
        *(v40 + 24) = v1;
        *(v40 + 32) = v35;
        *(v40 + 33) = v36;
        goto LABEL_16;
      }
    }

    sub_2706E586C();
    sub_2706E585C();
    v37 = OUTLINED_FUNCTION_21_1();
    (v33)(v37);
    if (v17)
    {
      sub_2706E582C();
      sub_2706E585C();
      v38 = OUTLINED_FUNCTION_21_1();
      (v33)(v38);
      v33(v17, v8);
      if (v3)
      {
        v36 = 0;
        v35 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      v33(v17, v8);
    }

    OUTLINED_FUNCTION_19_0();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_24_0(v41);
    OUTLINED_FUNCTION_11_3();
    v42 = swift_allocObject();
    *(v42 + 16) = v3;
    *(v42 + 24) = v1;
    goto LABEL_16;
  }

  sub_2706A64F4(v7, &qword_28081D208, &qword_2706EA040);
  if (qword_28081C738 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_28081C738);
  }

  v18 = sub_2706E58DC();
  __swift_project_value_buffer(v18, qword_2808292F0);
  OUTLINED_FUNCTION_19_3();

  v19 = sub_2706E58BC();
  v20 = sub_2706E5C1C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_29_1();
    v22 = OUTLINED_FUNCTION_28_1();
    v45 = v22;
    *v21 = 136446210;
    v23 = sub_2706E572C();
    v25 = OUTLINED_FUNCTION_1_1(v23, v24);
    v26 = MEMORY[0x2743A5EC0](v25);
    v28 = v27;

    v29 = sub_2706C83E8(v26, v28, &v45);

    *(v21 + 4) = v29;
    _os_log_impl(&dword_270680000, v19, v20, "%{public}s: attempted RTF conversion without a source type", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_12_0();
  }

  OUTLINED_FUNCTION_19_0();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_24_0(v30);
  OUTLINED_FUNCTION_11_3();
  v31 = swift_allocObject();
  *(v31 + 16) = v19;
  *(v31 + 24) = v1;
LABEL_16:
  v43 = v1;
  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_2706A2348(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a6 & 1;
    *(v10 + 17) = a7 & 1;

    sub_2706A25F8();
    v12 = v11;
  }

  else
  {
    sub_270690D44(0, &qword_28081D1F0, 0x277CCAA90);
    v13 = sub_27069A204(0);
    a2();

    return 0;
  }

  return v12;
}

uint64_t sub_2706A246C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v11 = type metadata accessor for PasteboardDataTransferID(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2706E576C();
  MEMORY[0x28223BE20](v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, *(a2 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_contents) + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_source);
  sub_2706E575C();
  type metadata accessor for RTFRepresentationReceiver(0);
  swift_allocObject();

  return sub_27069C590(v16, v13, a5 & 1, a6 & 1, a3, a4);
}

void sub_2706A25F8()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  if (v2 && swift_weakLoadStrong())
  {
    sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);

    v3 = sub_2706E5C4C();
    MEMORY[0x28223BE20](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D1F8, &qword_2706EA038);
    sub_2706E5C5C();
  }

  else
  {
    if (qword_28081C738 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_28081C738);
    }

    v4 = sub_2706E58DC();
    __swift_project_value_buffer(v4, qword_2808292F0);
    v5 = sub_2706E58BC();
    v6 = sub_2706E5BFC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_270680000, v5, v6, "Pasteboard Item Provider: Called after PasteboardRepresentation freed", v7, 2u);
      OUTLINED_FUNCTION_12_0();
    }

    sub_270690D44(0, &qword_28081D1F0, 0x277CCAA90);
    v8 = sub_27069A204(0);
    v1();
  }

  OUTLINED_FUNCTION_16_0();
}

void sub_2706A27EC(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, void (*)(void), uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v8 = v7;
  v59 = a7;
  v60 = a5;
  if (qword_28081C738 != -1)
  {
    swift_once();
  }

  v14 = sub_2706E58DC();
  __swift_project_value_buffer(v14, qword_2808292F0);

  v15 = sub_2706E58BC();
  v16 = sub_2706E5C1C();

  HIDWORD(v57) = v16;
  v58 = v15;
  if (os_log_type_enabled(v15, v16))
  {
    v56 = a4;
    v17 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v62 = v53;
    *v17 = 136446466;
    v18 = sub_2706E572C();
    v20 = sub_2706B8734(8, v18, v19);
    v54 = a3;
    v55 = v7;
    v21 = MEMORY[0x2743A5EC0](v20);
    v23 = v22;

    v24 = sub_2706C83E8(v21, v23, &v62);
    v8 = v7;

    *(v17 + 4) = v24;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_2706C83E8(*(a1 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier), *(a1 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier + 8), &v62);
    _os_log_impl(&dword_270680000, v58, BYTE4(v57), "promise redeemed: rep-id=%{public}s type=%{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v53, -1, -1);
    v25 = v17;
    a4 = v56;
    MEMORY[0x2743A75B0](v25, -1, -1);
  }

  else
  {
  }

  v26 = a2(a1, a4, v60, a6);
  if (v8)
  {
    MEMORY[0x28223BE20](v26);
    sub_270694664(sub_2706A3160, 0, sub_2706A74AC, v52, v27, v28, v29, v30, v52[0], v52[1], v8, v52[3], v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
    sub_270690D44(0, &qword_28081D1F0, 0x277CCAA90);
    v31 = v8;
    v32 = sub_27069A204(v8);
    v60();

    v33 = 0;
  }

  else
  {
    v34 = v26;
    v35 = a4;
    v36 = swift_allocObject();
    v36[2] = v35;
    v36[3] = v34;
    v36[4] = a1;
    type metadata accessor for Completion();
    swift_allocObject();

    v37 = sub_2706DD8C4(0xD000000000000060, 0x80000002706F0100, 783, sub_2706A3714, v36);
    sub_2706CCC3C(v37);

    v38 = sub_2706E58BC();
    v39 = sub_2706E5C1C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v60 = v41;
      v62 = v41;
      *v40 = 136446722;
      v42 = sub_27069AC24(v41);
      v44 = sub_2706C83E8(v42, v43, &v62);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2082;
      v45 = sub_2706E572C();
      v47 = sub_2706B8734(8, v45, v46);
      v48 = MEMORY[0x2743A5EC0](v47);
      v50 = v49;

      v51 = sub_2706C83E8(v48, v50, &v62);

      *(v40 + 14) = v51;
      *(v40 + 22) = 2082;
      *(v40 + 24) = sub_2706C83E8(*(a1 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier), *(a1 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier + 8), &v62);
      _os_log_impl(&dword_270680000, v38, v39, "promise receiver: id=%{public}s rep-id=%{public}s type=%{public}s", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2743A75B0](v60, -1, -1);
      MEMORY[0x2743A75B0](v40, -1, -1);
    }

    v33 = *(v34 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress);
  }

  *v59 = v33;
}

void sub_2706A2D70(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v8 = sub_2706E58DC();
    v9 = __swift_project_value_buffer(v8, qword_2808292F0);
    MEMORY[0x28223BE20](v9);
    sub_270694664(sub_2706A38FC, a2, sub_2706A74AC, v18, v10, v11, v12, v13, v14, v15, v16, v17, v18[0], v18[1], a1, v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9]);
    [*(a3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress) cancel];
  }

  else
  {
    sub_2706CC58C(a4 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_id, a3, &off_28806BF18);
  }
}

uint64_t sub_2706A2F6C()
{
  sub_2706E5E3C();
  v0 = sub_2706E572C();
  v2 = sub_2706B8734(8, v0, v1);
  v3 = MEMORY[0x2743A5EC0](v2);

  MEMORY[0x2743A5EF0](0xD000000000000020, 0x80000002706F01B0);
  return v3;
}

uint64_t sub_2706A3028()
{
  sub_2706E5E3C();
  v0 = sub_2706E572C();
  v2 = sub_2706B8734(8, v0, v1);
  v3 = MEMORY[0x2743A5EC0](v2);

  MEMORY[0x2743A5EF0](0xD00000000000002ALL, 0x80000002706F01E0);
  sub_2706E576C();
  sub_2706A6DC4(&qword_28081D200, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v4 = sub_2706E611C();
  MEMORY[0x2743A5EF0](v4);

  return v3;
}

id sub_2706A31BC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PasteboardItemProvider_iOS();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for RTFConverter(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
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

uint64_t storeEnumTagSinglePayload for RTFConverter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2706A3388);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t sub_2706A33CC(uint64_t a1, unsigned int a2)
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

uint64_t sub_2706A340C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2706A3474(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 16))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2706A34C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

id sub_2706A354C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v15[1] = *MEMORY[0x277D85DE8];
  v9 = sub_2706E56AC();
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_2706A6DC4(&qword_28081C848, type metadata accessor for DocumentReadingOptionKey, &unk_2706E7DF0);
  v10 = sub_2706E598C();

  v15[0] = 0;
  v11 = [v5 initWithData:v9 options:v10 documentAttributes:a4 error:v15];

  if (v11)
  {
    v12 = v15[0];
  }

  else
  {
    v13 = v15[0];
    sub_2706E558C();

    swift_willThrow();
  }

  sub_270688E88(a1, a2);
  return v11;
}

uint64_t sub_2706A36D4()
{

  v0 = OUTLINED_FUNCTION_23_1();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2706A3720(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for PasteboardRepresentation(0);
      result = sub_2706E5B3C();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void *sub_2706A3780(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D230, &qword_2706EA058);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_2706A3800(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D268, &qword_2706EA088);
  v4 = sub_2706E576C();
  OUTLINED_FUNCTION_5_4(v4);
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v9);
  if (v6)
  {
    if ((result - v8) != 0x8000000000000000 || v6 != -1)
    {
      v9[2] = a1;
      v9[3] = 2 * ((result - v8) / v6);
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2706A3904()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2706A3990()
{
  sub_2706E565C();
  OUTLINED_FUNCTION_4();

  v1 = OUTLINED_FUNCTION_33_1();
  v2(v1);

  return MEMORY[0x2821FE8E8](v0);
}

void sub_2706A3A44()
{
  OUTLINED_FUNCTION_20_1();
  v2 = sub_2706E565C();
  OUTLINED_FUNCTION_16_3(v2);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_270699FA8(v0, v4, v5, v6);
}

uint64_t sub_2706A3AB0()
{
  sub_2706E565C();
  OUTLINED_FUNCTION_6_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return MEMORY[0x2821FE8E8](v0);
}

void sub_2706A3B30()
{
  v0 = sub_2706E565C();
  OUTLINED_FUNCTION_16_3(v0);

  sub_27069A318();
}

double block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2706A3BA4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_270688E88(result, a2);
  }

  return result;
}

void (*sub_2706A3BB8(void *a1, uint64_t a2))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v4;
  v5 = sub_2706E576C();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[9] = v6;
  v8 = __swift_coroFrameAllocStub(*(v6 + 64));
  v4[10] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v7 + 16))(v8, a2, v5);
  v4[11] = sub_2706A4040(v4);
  v4[12] = sub_2706A3D68(v4 + 4, v8, isUniquelyReferenced_nonNull_native);
  return sub_2706A3CD4;
}

void sub_2706A3CD4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v3 = *(*a1 + 80);
  (*(*a1 + 96))();
  v4 = OUTLINED_FUNCTION_15_3();
  v5(v4);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_2706A3D68(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[1] = a2;
  v7[2] = v3;
  v8 = sub_2706E576C();
  v7[3] = v8;
  v9 = *(v8 - 8);
  v7[4] = v9;
  v7[5] = __swift_coroFrameAllocStub(*(v9 + 64));
  v10 = *v3;
  v11 = sub_27068F764(a2);
  *(v7 + 56) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DB90, &qword_2706E9188);
  if (sub_2706E5F5C())
  {
    v15 = sub_27068F764(a2);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_2706E652C();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[6] = v13;
  if (v14)
  {
    v17 = *(*(*v4 + 56) + 8 * v13);
  }

  else
  {
    v17 = 0;
  }

  *v7 = v17;
  return sub_2706A3EF4;
}

void sub_2706A3EF4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(*(v3 + 56) + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_2706901A8(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    (*(v1[4] + 8))(*(*v1[2] + 48) + *(v1[4] + 72) * v1[6], v1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D270, &unk_2706EA090);
    OUTLINED_FUNCTION_1_4();
    sub_2706A6DC4(v5, v6, MEMORY[0x277CC9600]);
    sub_2706E5F6C();
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

uint64_t (*sub_2706A4040(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2706A4068;
}

uint64_t sub_2706A4074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2706E631C() & 1;
  }
}

uint64_t sub_2706A40B8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2706A59A0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2706A49D0(v6);
  return sub_2706E5EEC();
}

BOOL sub_2706A4134(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_2706E65EC();
  sub_2706E5A6C();
  v8 = sub_2706E660C();
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
    if (v13 || (sub_2706E631C() & 1) != 0)
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

  sub_2706A44DC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_2706A4280(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D218, &qword_2706EA048);
  result = sub_2706E5E0C();
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
      sub_2706AA0F4(0, (v28 + 63) >> 6, v3 + 56);
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
    sub_2706E65EC();
    sub_2706E5A6C();
    result = sub_2706E660C();
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

unint64_t sub_2706A44DC(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2706A4280(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2706A479C(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_2706E65EC();
      sub_2706E5A6C();
      result = sub_2706E660C();
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
        if (v18 || (sub_2706E631C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2706A4644();
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
    result = sub_2706E651C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_2706A4644()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D218, &qword_2706EA048);
  v2 = *v0;
  v3 = sub_2706E5DFC();
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

uint64_t sub_2706A479C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D218, &qword_2706EA048);
  result = sub_2706E5E0C();
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
        sub_2706E65EC();

        sub_2706E5A6C();
        result = sub_2706E660C();
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

void sub_2706A49D0(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_2706E610C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_2706A3720(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_2706A4BA4(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_2706A4AB0(0, v3, 1, a1);
  }
}

uint64_t sub_2706A4AB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    type metadata accessor for PasteboardRepresentation(0);
    v7 = v6 + 8 * v4 - 8;
    v8 = v5 - v4;
    while (2)
    {
      v17 = v4;
      v9 = *(v6 + 8 * v4);
      v10 = v8;
      v11 = v7;
      do
      {
        v12 = *v11;

        v13 = sub_2706B8A98(v9, v12);

        if ((v13 & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *v11;
        v9 = v11[1];
        *v11 = v9;
        v11[1] = v14;
        --v11;
      }

      while (!__CFADD__(v10++, 1));
      v4 = v17 + 1;
      v7 += 8;
      --v8;
      if (v17 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2706A4BA4(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_93:
    v96 = *result;
    if (!*result)
    {
      goto LABEL_134;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v79 = (v8 + 16);
      v80 = *(v8 + 16);
      while (v80 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_131;
        }

        v81 = v8;
        v82 = (v8 + 16 * v80);
        v83 = *v82;
        v84 = &v79[2 * v80];
        v8 = v84[1];
        sub_2706A5204((*a3 + 8 * *v82), (*a3 + 8 * *v84), (*a3 + 8 * v8), v96);
        if (v5)
        {
          break;
        }

        if (v8 < v83)
        {
          goto LABEL_119;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_120;
        }

        *v82 = v83;
        v82[1] = v8;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_121;
        }

        v80 = *v79 - 1;
        memmove(v84, v84 + 2, 16 * v85);
        *v79 = v80;
        v8 = v81;
      }

LABEL_103:

      return;
    }

LABEL_128:
    v8 = sub_2706A5438(v8);
    goto LABEL_95;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v87 = v8;
      v96 = v5;
      v11 = v7 + 1;
      v8 = *(*a3 + 8 * v10);
      v12 = (*a3 + 8 * v7);
      v13 = 8 * v7;
      v15 = *v12;
      v14 = v12 + 2;
      v5 = v15;
      type metadata accessor for PasteboardRepresentation(0);

      v92 = sub_2706B8A98(v8, v15);

      v16 = v9 + 2;
      while (1)
      {
        v17 = v16;
        if (v11 + 1 >= v6)
        {
          break;
        }

        ++v11;
        v5 = *(v14 - 1);
        v8 = *v14;

        v18 = sub_2706B8A98(v8, v5) & 1;

        ++v14;
        v16 = v17 + 1;
        if ((v92 & 1) != v18)
        {
          goto LABEL_9;
        }
      }

      v11 = v6;
LABEL_9:
      if (v92)
      {
        if (v11 < v9)
        {
          goto LABEL_125;
        }

        v10 = v11;
        if (v9 >= v11)
        {
          v5 = v96;
          v8 = v87;
        }

        else
        {
          if (v6 >= v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = v6;
          }

          v20 = 8 * v19 - 8;
          v21 = v11;
          v22 = v9;
          v5 = v96;
          v8 = v87;
          do
          {
            if (v22 != --v21)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v24 = *(v23 + v13);
              *(v23 + v13) = *(v23 + v20);
              *(v23 + v20) = v24;
            }

            ++v22;
            v20 -= 8;
            v13 += 8;
          }

          while (v22 < v21);
        }
      }

      else
      {
        v5 = v96;
        v8 = v87;
        v10 = v11;
      }
    }

    v25 = a3[1];
    if (v10 < v25)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_124;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_40:
    if (v10 < v9)
    {
      goto LABEL_123;
    }

    v94 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2706E291C();
      v8 = v77;
    }

    v37 = *(v8 + 16);
    v38 = v37 + 1;
    v96 = v5;
    if (v37 >= *(v8 + 24) >> 1)
    {
      sub_2706E291C();
      v8 = v78;
    }

    *(v8 + 16) = v38;
    v5 = v8 + 32;
    v39 = (v8 + 32 + 16 * v37);
    *v39 = v9;
    v39[1] = v10;
    v91 = *result;
    if (!*result)
    {
      goto LABEL_133;
    }

    if (v37)
    {
      while (1)
      {
        v40 = v38 - 1;
        v41 = (v5 + 16 * (v38 - 1));
        v42 = (v8 + 16 * v38);
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v43 = *(v8 + 32);
          v44 = *(v8 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_60:
          if (v46)
          {
            goto LABEL_110;
          }

          v58 = *v42;
          v57 = v42[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_113;
          }

          v62 = v41[1];
          v63 = v62 - *v41;
          if (__OFSUB__(v62, *v41))
          {
            goto LABEL_116;
          }

          if (__OFADD__(v60, v63))
          {
            goto LABEL_118;
          }

          if (v60 + v63 >= v45)
          {
            if (v45 < v63)
            {
              v40 = v38 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v65 = *v42;
        v64 = v42[1];
        v53 = __OFSUB__(v64, v65);
        v60 = v64 - v65;
        v61 = v53;
LABEL_75:
        if (v61)
        {
          goto LABEL_115;
        }

        v67 = *v41;
        v66 = v41[1];
        v53 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v53)
        {
          goto LABEL_117;
        }

        if (v68 < v60)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v40 - 1 >= v38)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v72 = v8;
        v73 = (v5 + 16 * (v40 - 1));
        v74 = *v73;
        v8 = v5 + 16 * v40;
        v75 = *(v8 + 8);
        sub_2706A5204((*a3 + 8 * *v73), (*a3 + 8 * *v8), (*a3 + 8 * v75), v91);
        if (v96)
        {
          goto LABEL_103;
        }

        if (v75 < v74)
        {
          goto LABEL_105;
        }

        v76 = *(v72 + 16);
        if (v40 > v76)
        {
          goto LABEL_106;
        }

        *v73 = v74;
        v73[1] = v75;
        if (v40 >= v76)
        {
          goto LABEL_107;
        }

        v38 = v76 - 1;
        memmove((v5 + 16 * v40), (v8 + 16), 16 * (v76 - 1 - v40));
        v8 = v72;
        *(v72 + 16) = v76 - 1;
        if (v76 <= 2)
        {
          goto LABEL_89;
        }
      }

      v47 = v5 + 16 * v38;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_108;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_109;
      }

      v54 = v42[1];
      v55 = v54 - *v42;
      if (__OFSUB__(v54, *v42))
      {
        goto LABEL_111;
      }

      v53 = __OFADD__(v45, v55);
      v56 = v45 + v55;
      if (v53)
      {
        goto LABEL_114;
      }

      if (v56 >= v50)
      {
        v70 = *v41;
        v69 = v41[1];
        v53 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v53)
        {
          goto LABEL_122;
        }

        if (v45 < v71)
        {
          v40 = v38 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v7 = v94;
    v6 = a3[1];
    v5 = v96;
    if (v94 >= v6)
    {
      goto LABEL_93;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_126;
  }

  if (v9 + a4 >= v25)
  {
    v26 = a3[1];
  }

  else
  {
    v26 = v9 + a4;
  }

  if (v26 < v9)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v10 == v26)
  {
    goto LABEL_40;
  }

  v88 = v8;
  v96 = v5;
  v27 = *a3;
  type metadata accessor for PasteboardRepresentation(0);
  v28 = v27 + 8 * v10 - 8;
  v29 = v9 - v10;
  v90 = v26;
LABEL_33:
  v93 = v10;
  v30 = *(v27 + 8 * v10);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    v33 = *v32;

    v34 = sub_2706B8A98(v30, v33);

    if ((v34 & 1) == 0)
    {
LABEL_38:
      v10 = v93 + 1;
      v28 += 8;
      --v29;
      if (v93 + 1 == v90)
      {
        v10 = v90;
        v5 = v96;
        v8 = v88;
        goto LABEL_40;
      }

      goto LABEL_33;
    }

    if (!v27)
    {
      break;
    }

    v35 = *v32;
    v30 = v32[1];
    *v32 = v30;
    v32[1] = v35;
    --v32;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_38;
    }
  }

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
}

uint64_t sub_2706A5204(char *a1, char *a2, uint64_t *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_2706BF7A4(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      v13 = *v6;
      v14 = *v4;
      type metadata accessor for PasteboardRepresentation(0);

      v15 = sub_2706B8A98(v13, v14);

      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = v6;
      v17 = v7 == v6++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      v5 = v12;
    }

    v16 = v4;
    v17 = v7 == v4++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  sub_2706BF7A4(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
  v33 = v4;
LABEL_15:
  v18 = v6 - 1;
  v19 = v5 - 1;
  while (v10 > v4 && v6 > v7)
  {
    v21 = v6;
    v22 = v19;
    v23 = v7;
    v24 = *(v10 - 1);
    v25 = v18;
    v26 = *v18;
    type metadata accessor for PasteboardRepresentation(0);

    v27 = sub_2706B8A98(v24, v26);

    v5 = v22;
    v28 = v22 + 1;
    if (v27)
    {
      v29 = v25;
      v6 = v25;
      v7 = v23;
      v4 = v33;
      if (v28 != v21)
      {
        *v5 = *v29;
        v6 = v29;
      }

      goto LABEL_15;
    }

    if (v10 != v28)
    {
      *v22 = *(v10 - 1);
    }

    v19 = v22 - 1;
    --v10;
    v18 = v25;
    v7 = v23;
    v4 = v33;
  }

LABEL_28:
  v30 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v30])
  {
    memmove(v6, v4, 8 * v30);
  }

  return 1;
}

char *sub_2706A544C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D238, &qword_2706EA060);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_2706A554C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2706E5A0C();

  [a3 setSuggestedName_];
}

uint64_t sub_2706A55B0(void *a1)
{
  v2 = [a1 itemProviders];

  if (!v2)
  {
    return 0;
  }

  sub_270690D44(0, &qword_28081CEC0, 0x277CCAA88);
  v3 = sub_2706E5B1C();

  return v3;
}

uint64_t sub_2706A5628(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2706E56BC();

  return v4;
}

uint64_t sub_2706A5688(void *a1)
{
  v1 = [a1 suggestedName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2706E5A3C();

  return v3;
}

void *sub_2706A56EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_2706E5F9C();
    if (v4)
    {
      v5 = v4;
      v2 = sub_2706A3780(v4, 0);
      sub_2706A5780((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_2706A5780(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_2706E5F9C();
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
    result = sub_2706C2200();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for PasteboardRepresentation(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2706A5ABC(&qword_28081D228, &qword_28081D220, &qword_2706EA050, MEMORY[0x277D83988]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D220, &qword_2706EA050);
          v9 = sub_2706BFC34(v12, i, a3);
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

uint64_t objectdestroy_129Tm()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2706A5954()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x2821FE8E8](v1);
}

void sub_2706A59DC(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_2706A59E8(void *a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_2706A59FC(a1, a2);
  }
}

void sub_2706A59FC(void *a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }
}

void sub_2706A5A20(void *a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
    v2 = a1;
  }

  else if (a2 <= 1u)
  {
  }
}

void sub_2706A5A44(void *a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_2706A5A20(a1, a2);
  }
}

void *sub_2706A5A60()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

double sub_2706A5AA4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_2706A5ABC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2706A5B04(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 3)
  {
    return swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_2706A5B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2706E576C();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2706E575C();
  type metadata accessor for PasteboardCollection(0);
  v9 = swift_allocObject();
  v27 = sub_2706A63A8(v8, a3, a2, v9);
  v10 = qword_28081C738;

  if (v10 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v11 = sub_2706E58DC();
    __swift_project_value_buffer(v11, qword_2808292F0);

    v12 = sub_2706E58BC();
    v13 = sub_2706E5C1C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 136446210;
      v17 = *(a1 + 72);
      v16 = *(a1 + 80);

      v18 = sub_2706C83E8(v17, v16, &v28);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_270680000, v12, v13, "Gathering %{public}s Pasteboard Contents", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x2743A75B0](v15, -1, -1);
      MEMORY[0x2743A75B0](v14, -1, -1);
    }

    a3 = *(a3 + 16);
    v19 = sub_2706C2200();
    v20 = MEMORY[0x277D84F90];
    if (!v19)
    {
LABEL_15:
      type metadata accessor for PasteboardContents(0);
      v26 = sub_2706B89B0(v20);

      return v26;
    }

    a1 = v19;
    v28 = MEMORY[0x277D84F90];
    result = sub_2706E5EFC();
    if (a1 < 0)
    {
      break;
    }

    v22 = sub_2706C2200();
    v23 = 0;
    v24 = v22 & ~(v22 >> 63);
    while (v24 != v23)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x2743A62C0](v23, a3);
      }

      else
      {
        if (v23 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v25 = *(a3 + 8 * v23 + 32);
      }

      sub_2706A02D0(v23, v25, v27);

      sub_2706E5EDC();
      sub_2706E5F0C();
      sub_2706E5F1C();
      sub_2706E5EEC();
      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_17;
      }

      if (a1 == ++v23)
      {
        v20 = v28;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  __break(1u);
  return result;
}

void sub_2706A5E2C()
{
  OUTLINED_FUNCTION_21_0();
  v68 = v1;
  v69 = v0;
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_20_1();
  v7 = type metadata accessor for PasteboardDataTransferID(v6);
  v8 = OUTLINED_FUNCTION_16_3(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v11 = v10 - v9;
  v12 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_1();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - v20;
  OUTLINED_FUNCTION_9_1(v3 + 32, &v72);
  v22 = *(v3 + 32);

  sub_270691628(v5, v22);
  v24 = v23;

  if (v24)
  {
    OUTLINED_FUNCTION_35_0();
    if (!v25)
    {
      OUTLINED_FUNCTION_0_1(&qword_28081C738);
    }

    v26 = sub_2706E58DC();
    __swift_project_value_buffer(v26, qword_2808292F0);
    (*(v14 + 16))(v21, v5, v12);

    v27 = sub_2706E58BC();
    v28 = sub_2706E5C1C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_27_1();
      v66 = v28;
      v30 = v29;
      v67 = OUTLINED_FUNCTION_26_1();
      v71[0] = v67;
      *v30 = 136446466;
      OUTLINED_FUNCTION_37_0();
      v65 = v27;
      v31 = sub_2706E572C();
      v33 = OUTLINED_FUNCTION_1_1(v31, v32);
      v35 = v34;
      v36 = MEMORY[0x2743A5EC0](v33);
      v68 = v12;
      v38 = v37;

      sub_270687394(v11);
      sub_2706C83E8(v36, v38, v71);
      OUTLINED_FUNCTION_19_3();

      *(v30 + 4) = v35;
      *(v30 + 12) = 2082;
      v39 = sub_2706E572C();
      v41 = OUTLINED_FUNCTION_1_1(v39, v40);
      v42 = MEMORY[0x2743A5EC0](v41);
      v44 = v43;

      (*(v14 + 8))(v21, v68);
      v45 = sub_2706C83E8(v42, v44, v71);

      *(v30 + 14) = v45;
      v46 = v65;
      _os_log_impl(&dword_270680000, v65, v66, "%{public}s: Provider added, session=%{public}s", v30, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();
    }

    else
    {

      (*(v14 + 8))(v21, v12);
    }

    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v24 + 16);
    *(v24 + 16) = 0x8000000000000000;
    sub_2706A7114();
    *(v24 + 16) = v70;
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_35_0();
    if (!v25)
    {
      OUTLINED_FUNCTION_0_1(&qword_28081C738);
    }

    v47 = sub_2706E58DC();
    __swift_project_value_buffer(v47, qword_2808292F0);
    (*(v14 + 16))(v18, v5, v12);

    v48 = sub_2706E58BC();
    v49 = sub_2706E5BFC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_27_1();
      v71[0] = OUTLINED_FUNCTION_26_1();
      *v50 = 136446466;
      OUTLINED_FUNCTION_37_0();
      v51 = sub_2706E572C();
      v53 = OUTLINED_FUNCTION_1_1(v51, v52);
      MEMORY[0x2743A5EC0](v53);
      v68 = v12;

      sub_270687394(v11);
      v54 = OUTLINED_FUNCTION_15_3();
      v57 = sub_2706C83E8(v54, v55, v56);

      *(v50 + 4) = v57;
      *(v50 + 12) = 2082;
      v58 = sub_2706E572C();
      v60 = OUTLINED_FUNCTION_1_1(v58, v59);
      MEMORY[0x2743A5EC0](v60);

      (*(v14 + 8))(v18, v68);
      v61 = OUTLINED_FUNCTION_15_3();
      v64 = sub_2706C83E8(v61, v62, v63);

      *(v50 + 14) = v64;
      _os_log_impl(&dword_270680000, v48, v49, "%{public}s: Provider added to session that is not active, session=%{public}s", v50, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();
    }

    else
    {

      (*(v14 + 8))(v18, v12);
    }
  }

  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_2706A63A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Completions();
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  *(a4 + 16) = v8;
  v9 = OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_id;
  v10 = sub_2706E576C();
  (*(*(v10 - 8) + 32))(a4 + v9, a1, v10);
  v11 = (a4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state);
  *v11 = a3;
  v11[1] = &off_28806BEF8;
  *(a4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_collection) = a2;
  return a4;
}

uint64_t sub_2706A6494(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2706A64F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2706A654C()
{
  v1 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_5_4(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  OUTLINED_FUNCTION_12_3();
  v5 = ((v4 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0();
  v8 = *(v7 + 8);
  v9 = (*(v7 + 80) + v5 + 8) & ~*(v7 + 80);
  v8(v0 + v3, v6);

  v8(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2706A66AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasteboardDataTransferID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2706A6710(int a1, void *a2)
{
  v8 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_5_4(v8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  OUTLINED_FUNCTION_12_3();
  v12 = v11 & 0xFFFFFFFFFFFFFFF8;
  v13 = ((v11 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = sub_2706E576C();
  OUTLINED_FUNCTION_16_3(v14);
  sub_27069D198(a1, a2, (v2 + v10), *(v2 + v3), *(v2 + v4), *(v2 + v5), *(v2 + v5 + 8), *(v2 + v12), *(v2 + v13), v2 + ((*(v15 + 80) + v13 + 8) & ~*(v15 + 80)));
}

uint64_t sub_2706A6820()
{

  v0 = OUTLINED_FUNCTION_23_1();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2706A6898(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 3)
  {
    return swift_unknownObjectRetain();
  }

  return v2;
}

uint64_t sub_2706A68AC()
{

  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_23_1();

  return MEMORY[0x2821FE8E8](v0);
}

double sub_2706A68F0(unint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return sub_270694BA4(a1);
  }

  return result;
}

unint64_t sub_2706A6928(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_270688D9C(result);
  }

  return result;
}

uint64_t sub_2706A693C()
{
  OUTLINED_FUNCTION_21_0();
  v1 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v5 = (*(v4 + 64) + ((*(v2 + 80) + 24) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_5_4(v6);
  v8 = (v5 + *(v7 + 80) + 8) & ~*(v7 + 80);

  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_33_1();
  v9(v10);

  (v9)(v0 + v8, v1);

  OUTLINED_FUNCTION_16_0();

  return MEMORY[0x2821FE8E8](v11);
}

void sub_2706A6A94()
{
  OUTLINED_FUNCTION_20_1();
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_5_4(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_5_4(v7);
  OUTLINED_FUNCTION_22_1();
  v9 = *(v1 + v6);
  v11 = *(v1 + v10);
  v12 = *(v1 + 16);
  v13 = v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = *(v13 + 8);

  sub_27069DA44(v0, v12, v1 + v4, v9, (v1 + v8), v11, v14, v15);
}

uint64_t sub_2706A6BA4()
{
  v1 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_5_4(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_32_1();

  v7 = *(v6 + 8);
  v7(v0 + v3, v4);
  v8 = OUTLINED_FUNCTION_33_1();
  (v7)(v8);

  return MEMORY[0x2821FE8E8](v0);
}

void sub_2706A6CD8()
{
  v2 = OUTLINED_FUNCTION_20_1();
  v3 = type metadata accessor for PasteboardDataTransferID(v2);
  OUTLINED_FUNCTION_5_4(v3);
  v4 = sub_2706E576C();
  OUTLINED_FUNCTION_5_4(v4);
  OUTLINED_FUNCTION_22_1();
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  sub_27069EDDC(v0, v5, v6);
}

uint64_t sub_2706A6DC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2706A6E0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_270692D3C(a1, a2);
  }

  return result;
}

uint64_t sub_2706A6E20()
{
  v1 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_5_4(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_32_1();

  v7 = *(v6 + 8);
  v7(v0 + v3, v4);
  v8 = OUTLINED_FUNCTION_33_1();
  (v7)(v8);

  return MEMORY[0x2821FE8E8](v0);
}

void sub_2706A6F4C()
{
  v1 = OUTLINED_FUNCTION_20_1();
  v2 = type metadata accessor for PasteboardDataTransferID(v1);
  OUTLINED_FUNCTION_5_4(v2);
  v3 = sub_2706E576C();
  OUTLINED_FUNCTION_5_4(v3);
  OUTLINED_FUNCTION_22_1();

  sub_27069ED90(v0);
}

uint64_t sub_2706A7048()
{

  OUTLINED_FUNCTION_11_3();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2706A7084()
{

  OUTLINED_FUNCTION_11_3();

  return MEMORY[0x2821FE8E8](v0);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_2706A7114()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v11 = v10 - v9;
  v12 = *v3;
  v13 = sub_27068F860(v5);
  if (__OFADD__(v12[2], (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D290, &qword_2706EA0B0);
  if ((sub_2706E5F5C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_27068F860(v5);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_11:
    sub_2706E652C();
    __break(1u);
    return;
  }

  v15 = v17;
LABEL_5:
  v19 = *v3;
  if (v16)
  {
    v20 = (v19[7] + 16 * v15);
    *v20 = v7;
    v20[1] = v1;
    OUTLINED_FUNCTION_16_0();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_270690CD8(v5, v11);
    sub_2706A727C(v15, v11, v7, v19, v1);
    OUTLINED_FUNCTION_16_0();
  }
}

uint64_t sub_2706A727C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_16_3(v11);
  result = sub_2706A66AC(a2, v10 + *(v12 + 72) * a1);
  v14 = (a4[7] + 16 * a1);
  *v14 = a3;
  v14[1] = a5;
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RTFConverter.Format(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706A73ECLL);
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

unint64_t sub_2706A7428()
{
  result = qword_28081D298;
  if (!qword_28081D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D298);
  }

  return result;
}

void OUTLINED_FUNCTION_13_4()
{

  JUMPOUT(0x2743A75B0);
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t a1)
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_25_1(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_27_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_28_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_36_0()
{
}

uint64_t OUTLINED_FUNCTION_37_0()
{
  v4 = v0 + **(v2 - 152);

  return sub_270690CD8(v4, v1);
}

BOOL OUTLINED_FUNCTION_38_0()
{

  return sub_2706A4134((v2 - 192), v0, v1);
}

uint64_t sub_2706A7740(uint64_t a1, uint64_t a2)
{
  v2 = sub_2706E5A3C();
  v4 = v3;
  if (v2 == sub_2706E5A3C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2706E631C();
  }

  return v7 & 1;
}

uint64_t sub_2706A77C4(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0xE400000000000000;
      v4 = 1701667182;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v4 = 0x726564726FLL;
      break;
    case 3:
      v4 = 0x6E65644965707974;
      v3 = 0xEE00726569666974;
      break;
    case 4:
      v4 = 0x7079547265707573;
      v3 = 0xEA00000000007365;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  switch(a2)
  {
    case 1:
      v5 = 0xE400000000000000;
      v6 = 1701667182;
      break;
    case 2:
      v5 = 0xE500000000000000;
      v6 = 0x726564726FLL;
      break;
    case 3:
      v6 = 0x6E65644965707974;
      v5 = 0xEE00726569666974;
      break;
    case 4:
      v6 = 0x7079547265707573;
      v5 = 0xEA00000000007365;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2706E631C();
  }

  return v8 & 1;
}

void *sub_2706A7974@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2706A7994(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  return v6;
}

uint64_t sub_2706A79A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_8_3(1702521203, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F50726F68636E61 && a2 == 0xEB00000000746E69;
    if (v6 || (OUTLINED_FUNCTION_8_3(0x6F50726F68636E61, 0xEB00000000746E69) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_8_3(0x6E656E6F706D6F63, 0xEA00000000007374);

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

uint64_t sub_2706A7AA0(char a1)
{
  if (!a1)
  {
    return 1702521203;
  }

  if (a1 == 1)
  {
    return 0x6F50726F68636E61;
  }

  return 0x6E656E6F706D6F63;
}

uint64_t sub_2706A7B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706A79A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706A7B38(uint64_t a1)
{
  v2 = sub_2706AA1AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706A7B74(uint64_t a1)
{
  v2 = sub_2706AA1AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706A7BB0(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    *(v1 + 32) = *(a1 + 32);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(v1 + 48) = v3;
  }

  result = *(a1 + 64);
  if (result)
  {
    *(v1 + 56) = result;
  }

  return result;
}

uint64_t sub_2706A7C3C()
{

  return v0;
}

uint64_t sub_2706A7C64()
{
  sub_2706A7C3C();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2706A7CBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D368, &qword_2706EA430);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_10_3();
  v2 = sub_2706AA1AC();
  OUTLINED_FUNCTION_13_5(&unk_28806C5A0, v3, v2);
  type metadata accessor for CGSize(0);
  OUTLINED_FUNCTION_1_5();
  sub_2706AA2B8(v4);
  OUTLINED_FUNCTION_5_5();
  sub_2706E60DC();
  if (!v0)
  {
    type metadata accessor for CGPoint(0);
    OUTLINED_FUNCTION_0_3();
    sub_2706AA2B8(v5);
    OUTLINED_FUNCTION_5_5();
    sub_2706E60DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D350, &qword_2706EA428);
    OUTLINED_FUNCTION_7_2();
    sub_2706AA200(v6);
    OUTLINED_FUNCTION_5_5();
    sub_2706E60DC();
  }

  v7 = OUTLINED_FUNCTION_14_3();
  return v8(v7);
}

uint64_t sub_2706A7EC4(uint64_t a1)
{
  v1 = swift_allocObject();
  sub_2706A7FCC();
  return v1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2706A7F34(uint64_t a1, int a2)
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

uint64_t sub_2706A7F74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2706A7FCC()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D330, &qword_2706EA420);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_4();
  *(v0 + 56) = 0;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2706AA1AC();
  sub_2706E668C();
  if (v1)
  {

    type metadata accessor for DragPresentationItem();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for CGSize(0);
    OUTLINED_FUNCTION_1_5();
    sub_2706AA2B8(v5);
    OUTLINED_FUNCTION_4_5();
    sub_2706E605C();
    *(v0 + 16) = v10;
    type metadata accessor for CGPoint(0);
    OUTLINED_FUNCTION_0_3();
    sub_2706AA2B8(v6);
    OUTLINED_FUNCTION_4_5();
    sub_2706E605C();
    *(v0 + 32) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D350, &qword_2706EA428);
    OUTLINED_FUNCTION_8_5();
    sub_2706AA200(v7);
    OUTLINED_FUNCTION_4_5();
    sub_2706E605C();
    v8 = OUTLINED_FUNCTION_6_4();
    v9(v8);
    *(v0 + 48) = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_2706A8238@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2706A7EC4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2706A8288@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DragPresentationItem();
  result = sub_2706E5E4C();
  *a2 = result;
  return result;
}

uint64_t sub_2706A82C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702521203 && a2 == 0xE400000000000000;
    if (v6 || (sub_2706E631C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F50726F68636E61 && a2 == 0xEB00000000746E69;
      if (v7 || (sub_2706E631C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374;
        if (v8 || (sub_2706E631C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x77656976657270 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_2706E631C();

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

uint64_t sub_2706A8470(char a1)
{
  result = 0x7865646E69;
  switch(a1)
  {
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = 0x6F50726F68636E61;
      break;
    case 3:
      result = 0x6E656E6F706D6F63;
      break;
    case 4:
      result = 0x77656976657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2706A8520()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D3F0, &qword_2706EA830);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_10_3();
  v2 = sub_2706AAB18();
  OUTLINED_FUNCTION_13_5(&type metadata for DragPresentationItemUpdate.CodingKeys, v3, v2);
  sub_2706E60CC();
  if (!v0)
  {
    type metadata accessor for CGSize(0);
    OUTLINED_FUNCTION_1_5();
    sub_2706AA2B8(v4);
    OUTLINED_FUNCTION_3_3();
    sub_2706E609C();
    type metadata accessor for CGPoint(0);
    OUTLINED_FUNCTION_0_3();
    sub_2706AA2B8(v5);
    OUTLINED_FUNCTION_3_3();
    sub_2706E609C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D350, &qword_2706EA428);
    OUTLINED_FUNCTION_7_2();
    sub_2706AA200(v6);
    OUTLINED_FUNCTION_3_3();
    sub_2706E609C();
    sub_2706AABC0();
    sub_2706E609C();
  }

  v7 = OUTLINED_FUNCTION_14_3();
  return v8(v7);
}

void sub_2706A877C()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D3D8, &qword_2706EA828);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_4();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2706AAB18();
  sub_2706E668C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v20) = 0;
    v6 = sub_2706E604C();
    type metadata accessor for CGSize(0);
    OUTLINED_FUNCTION_1_5();
    sub_2706AA2B8(v7);
    OUTLINED_FUNCTION_4_5();
    sub_2706E601C();
    v37 = v20;
    v36 = v22;
    type metadata accessor for CGPoint(0);
    OUTLINED_FUNCTION_0_3();
    sub_2706AA2B8(v8);
    OUTLINED_FUNCTION_4_5();
    sub_2706E601C();
    v18 = v21;
    v17 = v20;
    v34 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D350, &qword_2706EA428);
    LOBYTE(v19[0]) = 3;
    OUTLINED_FUNCTION_8_5();
    sub_2706AA200(v9);
    OUTLINED_FUNCTION_4_5();
    sub_2706E601C();
    v16 = v21;
    v10 = v20;
    v31 = 4;
    sub_2706AAB6C();
    sub_2706E601C();
    v11 = OUTLINED_FUNCTION_6_4();
    v12(v11);
    v14 = v32;
    v19[0] = v6;
    v19[1] = v20;
    v19[2] = v21;
    v15 = v36;
    LOBYTE(v19[3]) = v36;
    *(&v19[3] + 1) = *v35;
    HIDWORD(v19[3]) = *&v35[3];
    v19[4] = v20;
    v19[5] = v21;
    v13 = v34;
    LOBYTE(v19[6]) = v34;
    *(&v19[6] + 1) = *v33;
    HIDWORD(v19[6]) = *&v33[3];
    v19[7] = v20;
    v19[8] = v32;
    sub_27069111C(v19, &v20);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v20 = v6;
    v21 = v37;
    v22 = v18;
    v23 = v15;
    *v24 = *v35;
    *&v24[3] = *&v35[3];
    v25 = v17;
    v26 = v16;
    v27 = v13;
    *v28 = *v33;
    *&v28[3] = *&v33[3];
    v29 = v10;
    v30 = v14;
    sub_270691178(&v20);
    memcpy(v4, v19, 0x48uLL);
  }

  OUTLINED_FUNCTION_55();
}

uint64_t sub_2706A8B70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2706E631C();

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

uint64_t sub_2706A8C34(char a1)
{
  if (a1)
  {
    return 0x656D617266;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_2706A8C60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D320, &qword_2706EA418);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_10_3();
  v2 = sub_2706AA158();
  OUTLINED_FUNCTION_13_5(&type metadata for DragComponent.CodingKeys, v3, v2);
  sub_2706E60BC();
  if (!v0)
  {
    type metadata accessor for CGRect(0);
    OUTLINED_FUNCTION_9_3();
    sub_2706AA2B8(v4);
    OUTLINED_FUNCTION_3_3();
    sub_2706E60DC();
  }

  v5 = OUTLINED_FUNCTION_14_3();
  return v6(v5);
}

void sub_2706A8DB8()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D308, &qword_2706EA410);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_4();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2706AA158();
  sub_2706E668C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v12) = 0;
    v6 = sub_2706E603C();
    v8 = v7;
    type metadata accessor for CGRect(0);
    OUTLINED_FUNCTION_9_3();
    sub_2706AA2B8(v9);
    sub_2706E605C();
    v10 = OUTLINED_FUNCTION_15_4();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(v2);
    *v4 = v6;
    *(v4 + 8) = v8;
    *(v4 + 16) = v12;
    *(v4 + 32) = v13;
  }

  OUTLINED_FUNCTION_55();
}

uint64_t sub_2706A8FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706A82C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706A8FD0(uint64_t a1)
{
  v2 = sub_2706AAB18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706A900C(uint64_t a1)
{
  v2 = sub_2706AAB18();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2706A9048(void *a1@<X8>)
{
  sub_2706A877C();
  if (!v1)
  {
    memcpy(a1, __src, 0x48uLL);
  }
}

uint64_t sub_2706A90B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706A8B70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706A90DC(uint64_t a1)
{
  v2 = sub_2706AA158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706A9118(uint64_t a1)
{
  v2 = sub_2706AA158();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2706A9154@<D0>(_OWORD *a1@<X8>)
{
  sub_2706A8DB8();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_2706A91B0(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2706E669C();
  if (a2)
  {
    a2 = sub_270693890();
    v4 = v3;
  }

  else
  {
    v4 = 0xF000000000000000;
  }

  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D2A0, &qword_2706EA3E0);
  sub_2706A9CB0(&unk_28081D2A8);
  sub_2706E635C();
  sub_2706A3BA4(a2, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void *sub_2706A92E8(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2706E667C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D2A0, &qword_2706EA3E0);
    sub_2706A9CB0(&unk_28081D2B0);
    sub_2706E632C();
    if (v6 >> 60 == 15 || (type metadata accessor for CGImage(0), v3 = sub_270693780(), sub_2706A3BA4(v5, v6), !v3))
    {
      v3 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_2706A9448(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2706E631C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void *sub_2706A94C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2706A92E8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2706A9508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706A9448(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2706A9540(uint64_t a1)
{
  v2 = sub_2706A9D14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706A957C(uint64_t a1)
{
  v2 = sub_2706A9D14();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2706A95B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  v21 = v20;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D2B8, &qword_2706EA3E8);
  OUTLINED_FUNCTION_4();
  v46 = v22;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  v25 = &v45 - v24;
  OUTLINED_FUNCTION_10_3();
  sub_2706A9D14();
  sub_2706E66AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D2C8, &qword_2706EA3F0);
  v26 = sub_2706E5FAC();
  v27 = v26;
  v28 = 0;
  v29 = 1 << *(v21 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v21 + 64);
  v32 = (v29 + 63) >> 6;
  v33 = v26 + 64;
  if (v31)
  {
    while (1)
    {
      v34 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
LABEL_10:
      v37 = v34 | (v28 << 6);
      v38 = *(*(v21 + 48) + 8 * v37);
      v39 = *(*(v21 + 56) + 8 * v37);
      *(v33 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      *(v27[6] + 8 * v37) = v38;
      *(v27[7] + 8 * v37) = v39;
      v40 = v27[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        break;
      }

      v27[2] = v42;
      v43 = v39;
      if (!v31)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D2D0, &qword_2706EA3F8);
        sub_2706A9DBC(&unk_28081D2D8);
        v44 = v47;
        sub_2706E60DC();

        (*(v46 + 8))(v25, v44);
        OUTLINED_FUNCTION_55();
        return;
      }

      v36 = *(v21 + 64 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v31 = (v36 - 1) & v36;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_2706A984C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D2E8, &qword_2706EA400);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2706A9D14();
  sub_2706E668C();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D2D0, &qword_2706EA3F8);
    sub_2706A9DBC(&unk_28081D2F0);
    sub_2706E605C();
    v9 = sub_2706A9A2C(v11[1]);

    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_2706A9A2C(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v27 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(a1 + 56) + 8 * v12);
    if (v13)
    {
      v26 = *(*(a1 + 48) + 8 * v12);
      v14 = *(v2 + 16);
      if (*(v2 + 24) <= v14)
      {
        v16 = v13;
        sub_2706A9E90(v14 + 1, 1);
        v2 = v27;
      }

      else
      {
        v15 = v13;
      }

      result = sub_2706E65DC();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
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
          v25 = *(v17 + 8 * v20);
          if (v25 != -1)
          {
            v21 = __clz(__rbit64(~v25)) + (v20 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v2 + 48) + 8 * v21) = v26;
      *(*(v2 + 56) + 8 * v21) = v13;
      ++*(v2 + 16);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_2706A9C28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2706A984C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_2706A9CB0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_19_4(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D2A0, &qword_2706EA3E0);
    v4();
    result = OUTLINED_FUNCTION_21_2();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2706A9D14()
{
  result = qword_28081D2C0;
  if (!qword_28081D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D2C0);
  }

  return result;
}

unint64_t sub_2706A9D68()
{
  result = qword_28081D2E0;
  if (!qword_28081D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D2E0);
  }

  return result;
}

unint64_t sub_2706A9DBC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_19_4(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D2D0, &qword_2706EA3F8);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2706A9E3C()
{
  result = qword_28081D2F8;
  if (!qword_28081D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D2F8);
  }

  return result;
}

uint64_t sub_2706A9E90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D300, &qword_2706EA408);
  result = sub_2706E5FBC();
  v7 = result;
  if (!*(v5 + 16))
  {

LABEL_32:
    *v3 = v7;
    return result;
  }

  v31 = v3;
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
        goto LABEL_34;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        sub_2706AA0F4(0, (v30 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v4 & 1) == 0)
    {
      v21 = v20;
    }

    result = sub_2706E65DC();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v7 + 48) + 8 * v25) = v19;
    *(*(v7 + 56) + 8 * v25) = v20;
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
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_2706AA0F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2706EA1C0;
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

unint64_t sub_2706AA158()
{
  result = qword_28081D310;
  if (!qword_28081D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D310);
  }

  return result;
}

unint64_t sub_2706AA1AC()
{
  result = qword_28081D338;
  if (!qword_28081D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D338);
  }

  return result;
}

unint64_t sub_2706AA200(uint64_t a1)
{
  result = OUTLINED_FUNCTION_19_4(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D350, &qword_2706EA428);
    v4();
    result = OUTLINED_FUNCTION_21_2();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2706AA264()
{
  result = qword_28081D360;
  if (!qword_28081D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D360);
  }

  return result;
}

unint64_t sub_2706AA2B8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_19_4(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2706AA2FC()
{
  result = qword_28081D388;
  if (!qword_28081D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D388);
  }

  return result;
}

_BYTE *sub_2706AA350(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706AA41CLL);
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