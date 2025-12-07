uint64_t sub_2703E8AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703E81E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703E8AF0(uint64_t a1)
{
  v2 = sub_2703E8C60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703E8B2C(uint64_t a1)
{
  v2 = sub_2703E8C60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703E8BBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 28));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

unint64_t sub_2703E8C60()
{
  result = qword_2807D02F0;
  if (!qword_2807D02F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D02F0);
  }

  return result;
}

uint64_t sub_2703E8CB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF190, &unk_2705DEE80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2703E8D1C()
{
  result = qword_2807D02F8;
  if (!qword_2807D02F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D02F8);
  }

  return result;
}

uint64_t sub_2703E8D70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF190, &unk_2705DEE80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2703E8DE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentShelf(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2703E8E44(uint64_t a1)
{
  v2 = type metadata accessor for ComponentShelf(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2703E8EA0()
{
  result = qword_2807D0320;
  if (!qword_2807D0320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0320);
  }

  return result;
}

uint64_t sub_2703E8EF4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0300, &qword_2705E3708);
    sub_2703AFBC8(a2, &qword_2807D02C8, &qword_27060AC40, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2703E8F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2703E8FD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF190, &unk_2705DEE80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2703E9044()
{
  result = qword_2807D0340;
  if (!qword_2807D0340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0340);
  }

  return result;
}

unint64_t sub_2703E9098()
{
  result = qword_2807D0348;
  if (!qword_2807D0348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0348);
  }

  return result;
}

unint64_t sub_2703E90EC()
{
  result = qword_2807D0350;
  if (!qword_2807D0350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0350);
  }

  return result;
}

unint64_t sub_2703E9140()
{
  result = qword_2807D0360;
  if (!qword_2807D0360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0360);
  }

  return result;
}

unint64_t sub_2703E9194()
{
  result = qword_2807D0368;
  if (!qword_2807D0368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0368);
  }

  return result;
}

uint64_t sub_2703E91FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_28_2(-1);
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
      return OUTLINED_FUNCTION_28_2((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_28_2((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_28_2((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_28_2(v8);
}

_BYTE *sub_2703E9284(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_35_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_33_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2703E9340);
      case 4:
        result = OUTLINED_FUNCTION_34_1(result, v6);
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
          result = OUTLINED_FUNCTION_14_8(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ComponentShelf.PresentationModel.Layout(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for ComponentShelf.PresentationModel.Layout(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 25))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F))) ^ 0x7F;
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

uint64_t storeEnumTagSinglePayload for ComponentShelf.PresentationModel.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

unint64_t sub_2703E9494()
{
  result = qword_2807D0370;
  if (!qword_2807D0370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0370);
  }

  return result;
}

unint64_t sub_2703E94EC()
{
  result = qword_2807D0378;
  if (!qword_2807D0378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0378);
  }

  return result;
}

uint64_t sub_2703E9540@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2705D4804();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v9 = (v8 - v7);
  v10 = *v1;
  v11 = *(v1 + 24);
  if (!(v11 >> 6))
  {
    *a1 = v10;
    v14 = MEMORY[0x277D7EB30];
LABEL_7:
    v15 = *v14;
    sub_2705D47A4();
    OUTLINED_FUNCTION_14();
    v18 = *(v17 + 104);

    return v18(a1, v15, v16);
  }

  v12 = v1[1];
  v13 = *(v1 + 2);
  if (v11 >> 6 == 1)
  {
    if (v11)
    {
      v12 = COERCE_DOUBLE(sub_2705D60A4());
    }

    *a1 = v10;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    v14 = MEMORY[0x277D7EB28];
    goto LABEL_7;
  }

  *a1 = v10;
  if (v13)
  {
    if (v13 == 1)
    {
      *v9 = v12;
      v20 = MEMORY[0x277D7EB68];
    }

    else
    {
      v21 = v12;
      if (v12 <= 1.0)
      {
        v21 = 1.0;
      }

      *v9 = v21;
      v20 = MEMORY[0x277D7EB60];
    }
  }

  else
  {
    *v9 = v12;
    v20 = MEMORY[0x277D7EB58];
  }

  (*(v5 + 104))(v9, *v20, v3);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2807D0590, &unk_2705E4530);
  (*(v5 + 32))(a1 + *(v22 + 48), v9, v3);
  v23 = *MEMORY[0x277D7EB20];
  sub_2705D47A4();
  OUTLINED_FUNCTION_14();
  return (*(v24 + 104))(a1, v23);
}

uint64_t sub_2703E975C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D6E67696C615FLL && a2 == 0xEA0000000000746ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

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

uint64_t sub_2703E9828(char a1)
{
  if (a1)
  {
    return 0x656D6E67696C615FLL;
  }

  else
  {
    return 0x746E756F63;
  }
}

void sub_2703E9860()
{
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0500, &qword_2705E3FA0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_23_2(v3, v3[3]);
  sub_2703EC750();
  sub_2705D84C4();
  OUTLINED_FUNCTION_6_1();
  sub_2705D8064();
  if (!v0)
  {
    OUTLINED_FUNCTION_27_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0508, &qword_2705E3FA8);
    sub_2703AFBC8(&qword_2807D0510, &qword_2807D0508, &qword_2705E3FA8, &protocol conformance descriptor for CodableOptionalByProxy<A>);
    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_3();
}

void sub_2703E9A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_1();
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D04C8, &qword_2705E3F78);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_23_2(v22, v22[3]);
  v26 = sub_2703EC750();
  OUTLINED_FUNCTION_29_2(&type metadata for ComponentShelf.PresentationModel.Layout.VerticalLayoutModel.CodingKeys, v27, v26);
  if (!v20)
  {
    OUTLINED_FUNCTION_15_5();
    v28 = sub_2705D7F84();
    OUTLINED_FUNCTION_27_2();
    if ((sub_2705D7FC4() & 1) != 0 && (OUTLINED_FUNCTION_15_5(), (sub_2705D7FD4() & 1) == 0))
    {
      OUTLINED_FUNCTION_15_5();
      sub_2705D7EF4();
      sub_27044AF88();
      v33 = OUTLINED_FUNCTION_2_12();
      v34(v33);
      v31 = v35;
      v32 = v36;
    }

    else
    {
      v29 = OUTLINED_FUNCTION_2_12();
      v30(v29);
      v31 = 0uLL;
      v32 = 1;
    }

    *v24 = v28;
    *(v24 + 8) = v31;
    *(v24 + 24) = v32;
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2703E9BE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574756C6F736261 && a2 == 0xE800000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697463617266 && a2 == 0xE800000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7942656469766964 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2705D8134();

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

uint64_t sub_2703E9D10(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_2703E9D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_1();
  v58 = v21;
  v59 = v20;
  v57 = v22;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D04D8, &qword_2705E3F80);
  OUTLINED_FUNCTION_0();
  v55 = v26;
  v56 = v25;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17_0();
  v54 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D04E0, &qword_2705E3F88);
  OUTLINED_FUNCTION_0();
  v52 = v30;
  v53 = v29;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  v33 = &v50 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D04E8, &qword_2705E3F90);
  OUTLINED_FUNCTION_0();
  v51 = v35;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  v38 = &v50 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D04F0, &qword_2705E3F98);
  OUTLINED_FUNCTION_0();
  v41 = v40;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v42);
  v44 = &v50 - v43;
  OUTLINED_FUNCTION_23_2(v24, v24[3]);
  sub_2703EC5AC();
  sub_2705D84C4();
  v45 = (v41 + 8);
  if (v57)
  {
    if (v57 == 1)
    {
      sub_2703EC6A8();
      OUTLINED_FUNCTION_26_2();
      sub_2705D7FE4();
      sub_2703EC7A4();
      v46 = v53;
      sub_2705D8084();
      v47 = *(v52 + 8);
      v48 = v33;
    }

    else
    {
      sub_2703EC600();
      v49 = v54;
      OUTLINED_FUNCTION_26_2();
      sub_2705D7FE4();
      sub_2703EC7A4();
      v46 = v56;
      sub_2705D8084();
      v47 = *(v55 + 8);
      v48 = v49;
    }

    v47(v48, v46);
  }

  else
  {
    sub_2703EC6FC();
    OUTLINED_FUNCTION_26_2();
    sub_2705D7FE4();
    sub_2703EC7A4();
    sub_2705D8084();
    (*(v51 + 8))(v38, v34);
  }

  (*v45)(v44, v39);
  OUTLINED_FUNCTION_11_3();
}

void sub_2703EA138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_1();
  a19 = v22;
  a20 = v23;
  v83 = v20;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0480, &qword_2705E3F58);
  OUTLINED_FUNCTION_0();
  v78 = v26;
  v79 = v27;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17_0();
  v81 = v29;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0488, &qword_2705E3F60);
  OUTLINED_FUNCTION_0();
  v77 = v30;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_21_2();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0490, &qword_2705E3F68);
  OUTLINED_FUNCTION_0();
  v76 = v33;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_20_2();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0498, &qword_2705E3F70);
  OUTLINED_FUNCTION_0();
  v37 = v36;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v38);
  v40 = &v70 - v39;
  v41 = v25[3];
  v82 = v25;
  OUTLINED_FUNCTION_23_2(v25, v41);
  sub_2703EC5AC();
  v42 = v83;
  sub_2705D8484();
  v83 = v42;
  if (v42)
  {
    v43 = v82;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v43);
    OUTLINED_FUNCTION_11_3();
    return;
  }

  v72 = v32;
  v73 = v21;
  v44 = v81;
  v74 = v37;
  v75 = v40;
  v45 = sub_2705D7FB4();
  sub_27042C9F0(v45, 0);
  v49 = v35;
  if (v47 == v48 >> 1)
  {
LABEL_10:
    v55 = sub_2705D7D84();
    swift_allocError();
    v57 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v57 = &type metadata for ComponentShelf.PresentationModel.Layout.HorizontalGridItemWidth;
    v58 = v75;
    sub_2705D7EE4();
    OUTLINED_FUNCTION_22_1();
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x277D84160], v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v74 + 8))(v58, v49);
    v43 = v82;
    goto LABEL_11;
  }

  if (v47 < (v48 >> 1))
  {
    v71 = *(v46 + v47);
    sub_27042C9E4(v47 + 1);
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    v54 = v79;
    if (v51 == v53 >> 1)
    {
      if (v71)
      {
        if (v71 == 1)
        {
          LOBYTE(a10) = 1;
          sub_2703EC6A8();
          OUTLINED_FUNCTION_31_1(&type metadata for ComponentShelf.PresentationModel.Layout.HorizontalGridItemWidth.FractionCodingKeys, &a10);
          sub_2703EC654();
          sub_2705D7FA4();
          swift_unknownObjectRelease();
          v64 = OUTLINED_FUNCTION_17_4();
          v65(v64);
          v66 = OUTLINED_FUNCTION_1_19();
          v67(v66);
          v43 = v82;
        }

        else
        {
          LOBYTE(a10) = 2;
          sub_2703EC600();
          v59 = v75;
          v60 = v83;
          sub_2705D7ED4();
          v43 = v82;
          if (v60)
          {
            (*(v74 + 8))(v59, v35);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_2703EC654();
            v62 = v78;
            OUTLINED_FUNCTION_26_2();
            sub_2705D7FA4();
            v63 = v74;
            swift_unknownObjectRelease();
            (*(v54 + 8))(v44, v62);
            (*(v63 + 8))(v75, v35);
          }
        }
      }

      else
      {
        LOBYTE(a10) = 0;
        sub_2703EC6FC();
        OUTLINED_FUNCTION_31_1(&type metadata for ComponentShelf.PresentationModel.Layout.HorizontalGridItemWidth.AbsoluteCodingKeys, &a10);
        sub_2703EC654();
        OUTLINED_FUNCTION_26_2();
        sub_2705D7FA4();
        v43 = v82;
        v61 = v74;
        swift_unknownObjectRelease();
        v68 = OUTLINED_FUNCTION_39_0();
        v69(v68);
        (*(v61 + 8))(v54, v35);
      }

      goto LABEL_11;
    }

    v49 = v35;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_2703EA7BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61636974726576 && a2 == 0xE800000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000002706138E0 == a2;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746E6F7A69726F68 && a2 == 0xEA00000000006C61)
    {

      return 2;
    }

    else
    {
      v8 = sub_2705D8134();

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

uint64_t sub_2703EA8DC(char a1)
{
  if (!a1)
  {
    return 0x6C61636974726576;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x746E6F7A69726F68;
}

uint64_t sub_2703EA93C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746469576D657469 && a2 == 0xE900000000000068)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

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

uint64_t sub_2703EAA08(char a1)
{
  if (a1)
  {
    return 0x746469576D657469;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t sub_2703EAA40(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_2703EAAC8()
{
  OUTLINED_FUNCTION_10_1();
  v40 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D03F0, &qword_2705E39C8);
  OUTLINED_FUNCTION_0();
  v34 = v5;
  v35 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_0();
  v33 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D03F8, &qword_2705E39D0);
  OUTLINED_FUNCTION_0();
  v32[1] = v9;
  v32[2] = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0400, &qword_2705E39D8);
  OUTLINED_FUNCTION_0();
  v32[0] = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = v32 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0408, &unk_2705E39E0);
  OUTLINED_FUNCTION_0();
  v39 = v16;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_21_2();
  v18 = *v0;
  v36 = v0[1];
  v37 = v0[2];
  v38 = v18;
  v19 = *(v0 + 24);
  OUTLINED_FUNCTION_23_2(v3, v3[3]);
  v20 = sub_2703EBD20();
  OUTLINED_FUNCTION_30_2(&type metadata for ComponentShelf.PresentationModel.Layout.CodingKeys, v21, v20);
  if (!(v19 >> 6))
  {
    LOBYTE(v42) = 0;
    sub_2703EBF28();
    v28 = v41;
    OUTLINED_FUNCTION_38_0();
    sub_2705D7FE4();
    sub_2705D8064();
    (*(v32[0] + 8))(v15, v11);
LABEL_8:
    v25 = OUTLINED_FUNCTION_24_2();
    v27 = v28;
    goto LABEL_9;
  }

  if (v19 >> 6 != 1)
  {
    LOBYTE(v42) = 2;
    sub_2703EBDD8();
    v29 = v33;
    v28 = v41;
    OUTLINED_FUNCTION_38_0();
    sub_2705D7FE4();
    LOBYTE(v42) = 0;
    v30 = v35;
    v31 = v40;
    sub_2705D8064();
    if (!v31)
    {
      v42 = v36;
      LOBYTE(v43) = v37;
      OUTLINED_FUNCTION_27_2();
      sub_2703EBF7C();
      sub_2705D8084();
    }

    (*(v34 + 8))(v29, v30);
    goto LABEL_8;
  }

  LOBYTE(v42) = 1;
  sub_2703EBE80();
  v22 = v41;
  OUTLINED_FUNCTION_38_0();
  sub_2705D7FE4();
  v42 = v38;
  v43 = v36;
  v44 = v37;
  v45 = v19 & 1;
  sub_2703EBFD0();
  sub_2705D8084();
  v23 = OUTLINED_FUNCTION_17_4();
  v24(v23);
  v25 = OUTLINED_FUNCTION_24_2();
  v27 = v22;
LABEL_9:
  v26(v25, v27);
  OUTLINED_FUNCTION_11_3();
}

void sub_2703EAEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_10_1();
  v26 = v25;
  v68 = v27;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D03A0, &qword_2705E39A0);
  OUTLINED_FUNCTION_0();
  v67 = v28;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_17_0();
  v69 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D03A8, &qword_2705E39A8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_21_2();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D03B0, &qword_2705E39B0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_20_2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D03B8, &unk_2705E39B8);
  OUTLINED_FUNCTION_0();
  v36 = v35;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_18_3();
  v70 = v26;
  OUTLINED_FUNCTION_23_2(v26, v26[3]);
  sub_2703EBD20();
  sub_2705D8484();
  if (v23)
  {
    goto LABEL_11;
  }

  v64 = v32;
  v71 = v36;
  v38 = sub_2705D7FB4();
  sub_27042C9F0(v38, 0);
  v42 = v24;
  if (v40 == v41 >> 1)
  {
    v43 = v24;
LABEL_10:
    v50 = sub_2705D7D84();
    swift_allocError();
    v52 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v52 = &type metadata for ComponentShelf.PresentationModel.Layout;
    sub_2705D7EE4();
    OUTLINED_FUNCTION_22_1();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v71 + 8))(v43, v34);
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v70);
LABEL_12:
    OUTLINED_FUNCTION_11_3();
    return;
  }

  if (v40 < (v41 >> 1))
  {
    v44 = *(v39 + v40);
    sub_27042C9E4(v40 + 1);
    v46 = v45;
    v48 = v47;
    swift_unknownObjectRelease();
    if (v46 != v48 >> 1)
    {
      v43 = v24;
      goto LABEL_10;
    }

    if (v44)
    {
      if (v44 == 1)
      {
        LOBYTE(v72) = 1;
        sub_2703EBE80();
        OUTLINED_FUNCTION_13_6(&type metadata for ComponentShelf.PresentationModel.Layout.VerticalWithModelCodingKeys, &v72);
        v49 = v68;
        sub_2703EBED4();
        sub_2705D7FA4();
        swift_unknownObjectRelease();
        v53 = OUTLINED_FUNCTION_1_19();
        v54(v53);
        v55 = OUTLINED_FUNCTION_3_16();
        v56(v55);
        v58 = v72;
        v57 = v73;
        v59 = v74;
        v60 = v75 | 0x40;
        v61 = v70;
LABEL_16:
        *v49 = v58;
        *(v49 + 8) = v57;
        *(v49 + 16) = v59;
        *(v49 + 24) = v60;
        __swift_destroy_boxed_opaque_existential_1(v61);
        goto LABEL_12;
      }

      LOBYTE(v72) = 2;
      sub_2703EBDD8();
      OUTLINED_FUNCTION_13_6(&type metadata for ComponentShelf.PresentationModel.Layout.HorizontalCodingKeys, &v72);
      v66 = v24;
      LOBYTE(v72) = 0;
      v58 = sub_2705D7F84();
      OUTLINED_FUNCTION_27_2();
      sub_2703EBE2C();
      OUTLINED_FUNCTION_38_0();
      sub_2705D7FA4();
      swift_unknownObjectRelease();
      (*(v67 + 8))(v69, v65);
      (*(v71 + 8))(v66, v34);
      v57 = v72;
      v59 = v73;
      v60 = 0x80;
    }

    else
    {
      LOBYTE(v72) = 0;
      sub_2703EBF28();
      OUTLINED_FUNCTION_13_6(&type metadata for ComponentShelf.PresentationModel.Layout.VerticalCodingKeys, &v72);
      v58 = sub_2705D7F84();
      swift_unknownObjectRelease();
      v62 = OUTLINED_FUNCTION_24_2();
      v63(v62, v64);
      (*(v71 + 8))(v42, v34);
      v57 = 0;
      v59 = 0;
      v60 = 0;
    }

    v61 = v70;
    v49 = v68;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_2703EB5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703E975C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703EB5E8(uint64_t a1)
{
  v2 = sub_2703EC750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703EB624(uint64_t a1)
{
  v2 = sub_2703EC750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703EB694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703E9D10(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2703EB6C0(uint64_t a1)
{
  v2 = sub_2703EC6FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703EB6FC(uint64_t a1)
{
  v2 = sub_2703EC6FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703EB740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703E9BE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703EB768(uint64_t a1)
{
  v2 = sub_2703EC5AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703EB7A4(uint64_t a1)
{
  v2 = sub_2703EC5AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703EB7E0(uint64_t a1)
{
  v2 = sub_2703EC600();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703EB81C(uint64_t a1)
{
  v2 = sub_2703EC600();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703EB858(uint64_t a1)
{
  v2 = sub_2703EC6A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703EB894(uint64_t a1)
{
  v2 = sub_2703EC6A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703EB928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703EA7BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703EB950(uint64_t a1)
{
  v2 = sub_2703EBD20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703EB98C(uint64_t a1)
{
  v2 = sub_2703EBD20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703EB9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703EA93C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703EB9F8(uint64_t a1)
{
  v2 = sub_2703EBDD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703EBA34(uint64_t a1)
{
  v2 = sub_2703EBDD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703EBA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703EAA40(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2703EBAA0(uint64_t a1)
{
  v2 = sub_2703EBF28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703EBADC(uint64_t a1)
{
  v2 = sub_2703EBF28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703EBB18(uint64_t a1)
{
  v2 = sub_2703EBE80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703EBB54(uint64_t a1)
{
  v2 = sub_2703EBE80();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2703EBBC4()
{
  result = qword_2807D0380;
  if (!qword_2807D0380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0380);
  }

  return result;
}

unint64_t sub_2703EBC1C()
{
  result = qword_2807D0388;
  if (!qword_2807D0388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0388);
  }

  return result;
}

unint64_t sub_2703EBC74()
{
  result = qword_2807D0390;
  if (!qword_2807D0390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0390);
  }

  return result;
}

unint64_t sub_2703EBCCC()
{
  result = qword_2807D0398;
  if (!qword_2807D0398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0398);
  }

  return result;
}

unint64_t sub_2703EBD20()
{
  result = qword_2807D03C0;
  if (!qword_2807D03C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D03C0);
  }

  return result;
}

unint64_t sub_2703EBDD8()
{
  result = qword_2807D03C8;
  if (!qword_2807D03C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D03C8);
  }

  return result;
}

unint64_t sub_2703EBE2C()
{
  result = qword_2807D03D0;
  if (!qword_2807D03D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D03D0);
  }

  return result;
}

unint64_t sub_2703EBE80()
{
  result = qword_2807D03D8;
  if (!qword_2807D03D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D03D8);
  }

  return result;
}

unint64_t sub_2703EBED4()
{
  result = qword_2807D03E0;
  if (!qword_2807D03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D03E0);
  }

  return result;
}

unint64_t sub_2703EBF28()
{
  result = qword_2807D03E8;
  if (!qword_2807D03E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D03E8);
  }

  return result;
}

unint64_t sub_2703EBF7C()
{
  result = qword_2807D0410;
  if (!qword_2807D0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0410);
  }

  return result;
}

unint64_t sub_2703EBFD0()
{
  result = qword_2807D0418;
  if (!qword_2807D0418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0418);
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

uint64_t getEnumTagSinglePayload for ComponentShelf.PresentationModel.Layout.HorizontalGridItemWidth(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ComponentShelf.PresentationModel.Layout.HorizontalGridItemWidth(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2703EC12C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2703EC14C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_2703EC190()
{
  result = qword_2807D0420;
  if (!qword_2807D0420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0420);
  }

  return result;
}

unint64_t sub_2703EC1E8()
{
  result = qword_2807D0428;
  if (!qword_2807D0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0428);
  }

  return result;
}

unint64_t sub_2703EC240()
{
  result = qword_2807D0430;
  if (!qword_2807D0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0430);
  }

  return result;
}

unint64_t sub_2703EC298()
{
  result = qword_2807D0438;
  if (!qword_2807D0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0438);
  }

  return result;
}

unint64_t sub_2703EC2F0()
{
  result = qword_2807D0440;
  if (!qword_2807D0440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0440);
  }

  return result;
}

unint64_t sub_2703EC348()
{
  result = qword_2807D0448;
  if (!qword_2807D0448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0448);
  }

  return result;
}

unint64_t sub_2703EC3A0()
{
  result = qword_2807D0450;
  if (!qword_2807D0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0450);
  }

  return result;
}

unint64_t sub_2703EC3F8()
{
  result = qword_2807D0458;
  if (!qword_2807D0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0458);
  }

  return result;
}

unint64_t sub_2703EC450()
{
  result = qword_2807D0460;
  if (!qword_2807D0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0460);
  }

  return result;
}

unint64_t sub_2703EC4A8()
{
  result = qword_2807D0468;
  if (!qword_2807D0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0468);
  }

  return result;
}

unint64_t sub_2703EC500()
{
  result = qword_2807D0470;
  if (!qword_2807D0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0470);
  }

  return result;
}

unint64_t sub_2703EC558()
{
  result = qword_2807D0478;
  if (!qword_2807D0478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0478);
  }

  return result;
}

unint64_t sub_2703EC5AC()
{
  result = qword_2807D04A0;
  if (!qword_2807D04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D04A0);
  }

  return result;
}

unint64_t sub_2703EC600()
{
  result = qword_2807D04A8;
  if (!qword_2807D04A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D04A8);
  }

  return result;
}

unint64_t sub_2703EC654()
{
  result = qword_2807D04B0;
  if (!qword_2807D04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D04B0);
  }

  return result;
}

unint64_t sub_2703EC6A8()
{
  result = qword_2807D04B8;
  if (!qword_2807D04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D04B8);
  }

  return result;
}

unint64_t sub_2703EC6FC()
{
  result = qword_2807D04C0;
  if (!qword_2807D04C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D04C0);
  }

  return result;
}

unint64_t sub_2703EC750()
{
  result = qword_2807D04D0;
  if (!qword_2807D04D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D04D0);
  }

  return result;
}

unint64_t sub_2703EC7A4()
{
  result = qword_2807D04F8;
  if (!qword_2807D04F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D04F8);
  }

  return result;
}

uint64_t sub_2703EC7FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_28_2(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_28_2((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_28_2((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_28_2((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_28_2(v8);
}

_BYTE *sub_2703EC884(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_35_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_33_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2703EC940);
      case 4:
        result = OUTLINED_FUNCTION_34_1(result, v6);
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
          result = OUTLINED_FUNCTION_14_8(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2703EC980(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_28_2(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_28_2((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_28_2((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_28_2((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_28_2(v8);
}

_BYTE *sub_2703ECA04(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_35_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_33_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2703ECAC0);
      case 4:
        result = OUTLINED_FUNCTION_34_1(result, v6);
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
          result = OUTLINED_FUNCTION_14_8(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2703ECB18(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_46(a1);
}

_BYTE *sub_2703ECB64(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2703ECC00);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2703ECC3C()
{
  result = qword_2807D0518;
  if (!qword_2807D0518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0518);
  }

  return result;
}

unint64_t sub_2703ECC94()
{
  result = qword_2807D0520;
  if (!qword_2807D0520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0520);
  }

  return result;
}

unint64_t sub_2703ECCEC()
{
  result = qword_2807D0528;
  if (!qword_2807D0528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0528);
  }

  return result;
}

unint64_t sub_2703ECD44()
{
  result = qword_2807D0530;
  if (!qword_2807D0530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0530);
  }

  return result;
}

unint64_t sub_2703ECD9C()
{
  result = qword_2807D0538;
  if (!qword_2807D0538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0538);
  }

  return result;
}

unint64_t sub_2703ECDF4()
{
  result = qword_2807D0540;
  if (!qword_2807D0540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0540);
  }

  return result;
}

unint64_t sub_2703ECE4C()
{
  result = qword_2807D0548;
  if (!qword_2807D0548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0548);
  }

  return result;
}

unint64_t sub_2703ECEA4()
{
  result = qword_2807D0550;
  if (!qword_2807D0550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0550);
  }

  return result;
}

unint64_t sub_2703ECEFC()
{
  result = qword_2807D0558;
  if (!qword_2807D0558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0558);
  }

  return result;
}

unint64_t sub_2703ECF54()
{
  result = qword_2807D0560;
  if (!qword_2807D0560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0560);
  }

  return result;
}

unint64_t sub_2703ECFAC()
{
  result = qword_2807D0568;
  if (!qword_2807D0568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0568);
  }

  return result;
}

unint64_t sub_2703ED004()
{
  result = qword_2807D0570;
  if (!qword_2807D0570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0570);
  }

  return result;
}

unint64_t sub_2703ED05C()
{
  result = qword_2807D0578;
  if (!qword_2807D0578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0578);
  }

  return result;
}

unint64_t sub_2703ED0B4()
{
  result = qword_2807D0580;
  if (!qword_2807D0580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0580);
  }

  return result;
}

unint64_t sub_2703ED10C()
{
  result = qword_2807D0588;
  if (!qword_2807D0588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0588);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1, uint64_t a2)
{

  return sub_2705D7ED4();
}

uint64_t OUTLINED_FUNCTION_22_1()
{

  return sub_2705D7D44();
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2705D8484();
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2705D84C4();
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a1, uint64_t a2)
{

  return sub_2705D7ED4();
}

uint64_t DataSource.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DataSource.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2703ED434@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_2703ED6AC;
  a2[1] = v5;
}

uint64_t sub_2703ED4A0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 16) = sub_2703ED674;
  *(a2 + 24) = v5;
  return result;
}

uint64_t DataSource.dataProvider.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DataSource.dataProvider.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DataSource.init(id:dataProvider:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_2703ED5AC(uint64_t a1, int a2)
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

uint64_t sub_2703ED5EC(uint64_t result, int a2, int a3)
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

uint64_t sub_2703ED63C()
{

  return swift_deallocObject();
}

uint64_t sub_2703ED674(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_2703ED6E0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_2705D4634();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2703ED7C8@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_20();
  v4 = *(v3 + 80);
  KeyPath = swift_getKeyPath();
  sub_2703EDDCC(KeyPath);

  OUTLINED_FUNCTION_1_20();
  v7 = *(v6 + 96);
  swift_beginAccess();
  return (*(*(v4 - 8) + 16))(a1, v1 + v7, v4);
}

uint64_t sub_2703ED8A8(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return sub_2703ED968(v2);
}

uint64_t sub_2703ED968(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  swift_beginAccess();
  v10 = v3;
  KeyPath = swift_getKeyPath();
  v8 = v1;
  v9 = a1;
  sub_2703EDE64(KeyPath, sub_2703EE248, &v7, MEMORY[0x277D84F78] + 8);

  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_2703EDA7C(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(&a1[v5], a2);
  return swift_endAccess();
}

uint64_t sub_2703EDB38(uint64_t a1)
{
  OUTLINED_FUNCTION_1_20();
  KeyPath = swift_getKeyPath();
  sub_2703EDDCC(KeyPath);

  OUTLINED_FUNCTION_1_20();
}

uint64_t sub_2703EDBA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2703EDB38(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2703EDC00(uint64_t a1)
{
  v3 = *(*v1 + 112);
  v4 = *(v1 + v3);
  v12 = a1;
  v13 = v4;

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0618, &qword_2705E4638);
  v6 = sub_2703EE0D8();
  LOBYTE(v5) = sub_2703EDF34(&v13, &v12, v5, v6);

  if (v5)
  {
    MEMORY[0x28223BE20](v7);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v11[2] = v1;
    v11[3] = a1;
    sub_2703EDE64(v9, sub_2703EE200, v11, MEMORY[0x277D84F78] + 8);
  }

  else
  {
    *(v1 + v3) = a1;
  }
}

uint64_t sub_2703EDD7C(uint64_t a1, uint64_t a2)
{
  *(a1 + *(*a1 + 112)) = a2;
}

uint64_t sub_2703EDDCC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_16();
  swift_getWitnessTable();
  return sub_2705D45F4();
}

uint64_t sub_2703EDE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_16();
  swift_getWitnessTable();
  return sub_2705D45E4();
}

uint64_t sub_2703EDF60()
{
  v1 = *(*v0 + 80);
  v2 = *(*(v1 - 8) + 8);
  v2(v0 + *(*v0 + 88), v1);
  OUTLINED_FUNCTION_1_20();
  v2(v0 + *(v3 + 96), v1);
  OUTLINED_FUNCTION_1_20();

  OUTLINED_FUNCTION_1_20();
  v5 = *(v4 + 120);
  v6 = sub_2705D4634();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_2703EE068()
{
  sub_2703EDF60();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_2703EE0D8()
{
  result = qword_2807D0620;
  if (!qword_2807D0620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0618, &qword_2705E4638);
    sub_2703EE15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0620);
  }

  return result;
}

unint64_t sub_2703EE15C()
{
  result = qword_2807D0628;
  if (!qword_2807D0628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0630, &qword_2705E4640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0628);
  }

  return result;
}

uint64_t sub_2703EE1C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2703EDB38(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2703EE29C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  __swift_allocate_value_buffer(v0, qword_28081C480);
  v1 = __swift_project_value_buffer(v0, qword_28081C480);
  v2 = sub_2705D4484();

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_2703EE318@<X0>(uint64_t a1@<X8>)
{
  if (qword_2807CE7B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  v3 = __swift_project_value_buffer(v2, qword_28081C480);

  return sub_2703EE6F4(v3, a1);
}

uint64_t sub_2703EE39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2703EE830();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_2703EE400()
{
  sub_2703EE764();

  return sub_2705D5264();
}

uint64_t sub_2703EE448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_0_17(v3, v5);
  sub_2703EE764();
  sub_2705D5274();
  return sub_2703EE7B8(a1);
}

uint64_t View._debugTriggerURL(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_2705D5AA4();
}

uint64_t sub_2703EE598()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_0_17(v2, v4);
  return sub_2703EE448(v0);
}

uint64_t sub_2703EE618(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0638, &qword_2705E46F8);
  sub_2705D5044();
  sub_2703EE690();
  return swift_getWitnessTable();
}

unint64_t sub_2703EE690()
{
  result = qword_2807D0640;
  if (!qword_2807D0640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0638, &qword_2705E46F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0640);
  }

  return result;
}

uint64_t sub_2703EE6F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2703EE764()
{
  result = qword_2807D0648;
  if (!qword_2807D0648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0648);
  }

  return result;
}

uint64_t sub_2703EE7B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2703EE830()
{
  result = qword_2807D0650;
  if (!qword_2807D0650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2807D4280, &unk_2705E4700);
    sub_2703EE8B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0650);
  }

  return result;
}

unint64_t sub_2703EE8B4()
{
  result = qword_2807D0658[0];
  if (!qword_2807D0658[0])
  {
    sub_2705D4484();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2807D0658);
  }

  return result;
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

uint64_t OUTLINED_FUNCTION_0_17@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_2703EE6F4(v2, &a2 - a1);
}

uint64_t sub_2703EE994@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v22 = v8;
  MEMORY[0x28223BE20](v9);
  v24 = &v21 - v10;
  v27 = type metadata accessor for DecodableDefault.Wrapper(0, a2, a3, v11);
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  (*(a3 + 24))(a2, a3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v25;
  sub_2705D8454();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v13 + 8))(v16, v27);
  }

  else
  {
    v25 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    swift_getAssociatedConformanceWitness();
    v18 = v24;
    sub_2705D8184();
    (*(v22 + 40))(v16, v18, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v19 = v27;
    (*(v13 + 16))(v23, v16, v27);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v13 + 8))(v16, v19);
  }
}

uint64_t sub_2703EECB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return sub_2705D74F4();
}

uint64_t sub_2703EED18(uint64_t a1, uint64_t a2)
{
  sub_2705D83B4();
  sub_2703EECB0(v5, a1, a2);
  return sub_2705D8414();
}

uint64_t sub_2703EED90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2705D83B4();
  sub_2703EECB0(v6, a2, v4);
  return sub_2705D8414();
}

uint64_t sub_2703EEDE4(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2705D84B4();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  swift_getAssociatedTypeWitness();
  sub_2705D8204();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_2703EEF30(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2703EEFB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 84);
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_20:

    return __swift_getEnumTagSinglePayload(a1, v6, AssociatedTypeWitness);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v6)
      {
        goto LABEL_20;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void sub_2703EF150(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = 8 * v9;
  if (a3 <= v8)
  {
    v11 = 0;
  }

  else if (v9 <= 3)
  {
    v14 = ((a3 - v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v8 < a2)
  {
    v12 = ~v8 + a2;
    if (v9 < 4)
    {
      v13 = (v12 >> v10) + 1;
      if (v9)
      {
        v16 = v12 & ~(-1 << v10);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v16;
          a1[2] = BYTE2(v16);
        }

        else if (v9 == 2)
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v12;
        }
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v12;
      v13 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v9] = v13;
        return;
      case 2:
        *&a1[v9] = v13;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v9] = v13;
        return;
      default:
        return;
    }
  }

  switch(v11)
  {
    case 1:
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x2703EF378);
    case 4:
      *&a1[v9] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v8, AssociatedTypeWitness);
      }

      return;
  }
}

uint64_t sub_2703EF3A0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v69 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2C8, &unk_2705E48F0);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = v66 - v5;
  v6 = sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v68 = (v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v67 = v66 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v66 - v14;
  sub_2705D6774();
  OUTLINED_FUNCTION_0();
  v73 = v17;
  v74 = v16;
  MEMORY[0x28223BE20](v16);
  v19 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DelegateAction(0);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v21);
  v75 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2705D6494();
  if (sub_2705D6444())
  {
    goto LABEL_4;
  }

  v70 = v20;
  v23 = v72;
  sub_2703EFB1C(v15, v79, v72);
  v24 = v74;
  if (__swift_getEnumTagSinglePayload(v23, 1, v74) == 1)
  {
    sub_2703C1634(v23, &qword_2807CF2C8, &unk_2705E48F0);
    v20 = v70;
LABEL_4:
    sub_2705D7184();
    OUTLINED_FUNCTION_0_18();
    v27 = sub_2703F0134(v25, v26, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_9_4(v27);
    strcpy(v28, "actionMetrics");
    *(v28 + 7) = -4864;
    *(v28 + 2) = v20;
    OUTLINED_FUNCTION_4_4();
    (*(v29 + 104))();
    swift_willThrow();
    v30 = *(v8 + 8);
    v30(a1, v6);
    v30(v15, v6);
    v31 = 0;
    v32 = v75;
    goto LABEL_5;
  }

  v35 = v6;
  v36 = *(v8 + 8);
  v36(v15, v35);
  v37 = *(v73 + 4);
  v37(v19, v23, v24);
  v38 = v24;
  v20 = v70;
  v39 = v35;
  v32 = v75;
  v37(&v75[*(v70 + 24)], v19, v38);
  v40 = v71;
  v41 = sub_2704698DC();
  if (!v40)
  {
    v73 = a1;
    v74 = v36;
    *v32 = v41;
    *(v32 + 8) = v42;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = -1;
    v43 = v67;
    sub_2705D6494();
    v44 = sub_2705D6444();
    v66[1] = v39;
    if ((v44 & 1) == 0)
    {
      sub_2705D67A4();
      if (v77)
      {
        v74(v43, v39);
        sub_2703B291C(&v76, v78);
        v45 = v70;
        goto LABEL_15;
      }

      sub_2703C1634(&v76, &unk_2807CF480, &unk_2705DC040);
    }

    sub_2705D7184();
    OUTLINED_FUNCTION_0_18();
    v48 = sub_2703F0134(v46, v47, MEMORY[0x277D22550]);
    v49 = OUTLINED_FUNCTION_9_4(v48);
    strcpy(v50, "failureAction");
    *(v50 + 7) = -4864;
    v45 = v70;
    *(v50 + 2) = v70;
    OUTLINED_FUNCTION_4_4();
    (*(v51 + 104))();
    swift_willThrow();
    v74(v43, v39);
    v32 = v75;

    OUTLINED_FUNCTION_6_15();
LABEL_15:
    OUTLINED_FUNCTION_4_16(*(v45 + 28));
    v52 = v68;
    sub_2705D6494();
    if ((sub_2705D6444() & 1) == 0)
    {
      sub_2705D67A4();
      if (v77)
      {
        v53 = OUTLINED_FUNCTION_5_17();
        v52(v53);
        (v52)(v52, 0xED00006E6F697463);
        sub_2703B291C(&v76, v78);
        v45 = v70;
LABEL_20:
        OUTLINED_FUNCTION_4_16(*(v45 + 32));
        sub_2703EFD8C(v32, v69);
        sub_2705D6654();
        OUTLINED_FUNCTION_11_1();
        (*(v65 + 8))(v79);
        return sub_2703EFDF0(v32);
      }

      sub_2703C1634(&v76, &unk_2807CF480, &unk_2705DC040);
      v45 = v70;
    }

    v54 = sub_2705D7184();
    OUTLINED_FUNCTION_0_18();
    v57 = sub_2703F0134(v55, v56, MEMORY[0x277D22550]);
    v58 = v32;
    v59 = v52;
    v60 = OUTLINED_FUNCTION_9_4(v57);
    strcpy(v61, "successAction");
    *(v61 + 7) = -4864;
    *(v61 + 2) = v45;
    OUTLINED_FUNCTION_4_4();
    (*(v62 + 104))();
    swift_willThrow();
    v63 = OUTLINED_FUNCTION_5_17();
    v54(v63);
    v64 = v59;
    v32 = v58;
    (v54)(v64, 0xED00006E6F697463);

    OUTLINED_FUNCTION_6_15();
    goto LABEL_20;
  }

  v36(a1, v39);
  v31 = 1;
LABEL_5:
  sub_2705D6654();
  OUTLINED_FUNCTION_11_1();
  result = (*(v33 + 8))(v79);
  if (v31)
  {
    return (*(v73 + 1))(v32 + *(v20 + 24), v74);
  }

  return result;
}

uint64_t sub_2703EFB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2705D6654();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2705D6484();
  MEMORY[0x28223BE20](v10);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v7 + 16))(v9, a2, v6);
  sub_2705D6754();
  v13 = sub_2705D6774();
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v13);
}

uint64_t sub_2703EFCE8(uint64_t a1)
{
  result = sub_2703F0134(&qword_2807D06E0, type metadata accessor for DelegateAction, &unk_2705E48A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for DelegateAction(uint64_t a1)
{
  result = qword_2807D06E8;
  if (!qword_2807D06E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2703EFD8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegateAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2703EFDF0(uint64_t a1)
{
  v2 = type metadata accessor for DelegateAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2703EFE60(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2705D6774();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2703EFEFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2705D6774();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_2703EFF7C(uint64_t a1)
{
  sub_2703F0028();
  if (v1 <= 0x3F)
  {
    sub_2705D6774();
    if (v2 <= 0x3F)
    {
      sub_2703F0078(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2703F0028()
{
  if (!qword_2807CF308)
  {
    v0 = sub_2705D7C14();
    if (!v1)
    {
      atomic_store(v0, &qword_2807CF308);
    }
  }
}

void sub_2703F0078(uint64_t a1)
{
  if (!qword_2807CF198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D65D0, &unk_2705DC050);
    v1 = sub_2705D7C14();
    if (!v2)
    {
      atomic_store(v1, &qword_2807CF198);
    }
  }
}

uint64_t sub_2703F00DC(uint64_t a1)
{
  result = sub_2703F0134(&qword_2807CECA0, type metadata accessor for DelegateAction, &unk_2705E493C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2703F0134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 OUTLINED_FUNCTION_4_16@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  result = *(v2 - 128);
  v5 = *(v2 - 112);
  *v3 = result;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v2 - 96);
  return result;
}

double OUTLINED_FUNCTION_6_15()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t sub_2703F01D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_2703F0214(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2703F0284(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736D61726170 && a2 == 0xE600000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000270613430 == a2;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463)
        {

          return 4;
        }

        else
        {
          v10 = sub_2705D8134();

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

unint64_t sub_2703F0438(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x736D61726170;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x4173736563637573;
      break;
    case 4:
      result = 0x416572756C696166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2703F04E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D06F8, &qword_2705E5168);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v7 = *(v1 + 16);
  v33 = *(v1 + 24);
  v34 = v7;
  v40 = *(v1 + 32);
  v8 = *(v1 + 40);
  v31 = *(v1 + 48);
  v32 = v8;
  v29 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v27 = *(v1 + 80);
  v28 = v10;
  v26 = *(v1 + 88);
  v11 = *(v1 + 104);
  v30 = *(v1 + 96);
  v24 = v11;
  v25 = v9;
  v23 = *(v1 + 112);
  v12 = *(v1 + 120);
  v13 = a1[3];
  v14 = a1;
  v16 = &v22 - v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_2703F0D40();
  sub_2705D84C4();
  LOBYTE(v36) = 0;
  v17 = v35;
  sub_2705D8034();
  if (!v17)
  {
    v18 = v31;
    v19 = v32;
    LODWORD(v35) = v12;
    v20 = v30;
    v36 = v34;
    v37 = v33;
    LOBYTE(v38) = v40;
    v41 = 1;
    sub_2703AE9E8(v34, v33, v40);
    sub_2703C39C4();
    OUTLINED_FUNCTION_0_19();
    sub_2703AE980(v36, v37, v38);
    v36 = v19;
    v37 = v18;
    LOBYTE(v38) = v29;
    v41 = 2;
    sub_2703AE9E8(v19, v18, v29);
    OUTLINED_FUNCTION_0_19();
    sub_2703AE980(v36, v37, v38);
    v36 = v25;
    v37 = v28;
    v38 = v27;
    v39 = v26;
    v41 = 3;
    sub_2703B4AA0(v25, v28, v27, v26);
    sub_2703C38C8();
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_11_4();
    v36 = v20;
    v37 = v24;
    v38 = v23;
    v39 = v35;
    v41 = 4;
    sub_2703B4AA0(v20, v24, v23, v35);
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_11_4();
  }

  return (*(v5 + 8))(v16, v3);
}

void sub_2703F078C(void *a1@<X0>, void *a2@<X8>)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0708, &qword_2705E5170);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2703F0D40();
  v36 = v9;
  sub_2705D8484();
  if (v2)
  {
    v37 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
    OUTLINED_FUNCTION_2_14();
    sub_2703AE980(0, 0, 255);
    sub_2703AE980(0, 0, 255);
    sub_2703AFC10(a2, v2, v10, 254);
    OUTLINED_FUNCTION_3_17();
  }

  else
  {
    v34 = v6;
    LOBYTE(v39) = 0;
    v11 = sub_2705D7F54();
    v33 = v12;
    LOBYTE(v38[0]) = 1;
    sub_2703C3FAC();
    OUTLINED_FUNCTION_1_21();
    sub_2705D7F44();
    v28 = v11;
    v30 = v39;
    v32 = v40;
    v29 = v41;
    sub_2703AE980(0, 0, 255);
    LOBYTE(v38[0]) = 2;
    OUTLINED_FUNCTION_1_21();
    sub_2705D7F44();
    v13 = a1;
    v31 = v39;
    v27 = v40;
    v59 = v41;
    sub_2703AE980(0, 0, 255);
    LOBYTE(v38[0]) = 3;
    sub_2703C3EB0();
    OUTLINED_FUNCTION_1_21();
    sub_2705D7F44();
    v14 = v39;
    v26 = v40;
    v15 = v41;
    v16 = v42;
    OUTLINED_FUNCTION_3_17();
    v60 = 4;
    sub_2705D7F44();
    v37 = 0;
    v17 = OUTLINED_FUNCTION_5_18();
    v18(v17);
    v19 = v55;
    v20 = v56;
    v35 = v57;
    v36 = v55;
    v21 = v58;
    OUTLINED_FUNCTION_3_17();
    v38[0] = v28;
    v38[1] = v33;
    v22 = v15;
    v25 = v15;
    v23 = v30;
    v38[2] = v30;
    v38[3] = v32;
    LOBYTE(v38[4]) = v29;
    v38[5] = v31;
    v38[6] = v27;
    LOBYTE(v38[7]) = v59;
    v38[8] = v14;
    v38[9] = v26;
    v38[10] = v22;
    LOBYTE(v38[11]) = v16;
    v38[12] = v19;
    v38[13] = v20;
    v24 = v35;
    v38[14] = v35;
    LOBYTE(v38[15]) = v21;
    memcpy(a2, v38, 0x79uLL);
    sub_2703B49F0(v38, &v39);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v39 = v28;
    v40 = v33;
    v41 = v23;
    v42 = v32;
    v43 = v29;
    v44 = v31;
    v45 = v27;
    v46 = v59;
    v47 = v14;
    v48 = v26;
    v49 = v25;
    v50 = v16;
    v51 = v36;
    v52 = v20;
    v53 = v24;
    v54 = v21;
    sub_2703B4A4C(&v39);
  }
}

uint64_t sub_2703F0C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703F0284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703F0C98(uint64_t a1)
{
  v2 = sub_2703F0D40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703F0CD4(uint64_t a1)
{
  v2 = sub_2703F0D40();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2703F0D40()
{
  result = qword_2807D0700;
  if (!qword_2807D0700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0700);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DelegateActionModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2703F0E60);
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

unint64_t sub_2703F0E9C()
{
  result = qword_2807D0710;
  if (!qword_2807D0710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0710);
  }

  return result;
}

unint64_t sub_2703F0EF4()
{
  result = qword_2807D0718;
  if (!qword_2807D0718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0718);
  }

  return result;
}

unint64_t sub_2703F0F4C()
{
  result = qword_2807D0720;
  if (!qword_2807D0720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0720);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return sub_2705D8024();
}

void OUTLINED_FUNCTION_3_17()
{

  sub_2703AFC10(0, 0, 0, 254);
}

unint64_t sub_2703F1034()
{
  result = qword_2807CECA0;
  if (!qword_2807CECA0)
  {
    type metadata accessor for DelegateAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CECA0);
  }

  return result;
}

uint64_t sub_2703F108C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_2705D6784();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActionResultHandler.Result(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionResultHandler();
  sub_2705D68B4();
  v8 = *(v23 + 16);
  v9 = *(a1 + 8);
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  *v7 = *a1;
  *(v7 + 1) = v9;
  *(v7 + 2) = v11;
  *(v7 + 3) = v10;
  v12 = *(a1 + 32);
  v7[32] = v12;
  swift_storeEnumTagMultiPayload();

  sub_2703AE9E8(v11, v10, v12);
  v8(v7);
  sub_2703CAA90(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038, &unk_2705E0130);
  (*(v21 + 104))(v20, *MEMORY[0x277D21CA8], v22);
  v13 = sub_2705D70C4();
  v14 = type metadata accessor for DelegateAction(0);
  sub_2703C747C(v13, a1 + *(v14 + 32), a1 + *(v14 + 28), v19);
  v16 = v15;

  return v16;
}

uint64_t sub_2703F1298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_14();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  sub_2703F3448(a1, &v14 - v10);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = a2;
  type metadata accessor for DestinationRootView(0);
  sub_2703F3448(v11, v9);

  sub_2705D5E44();
  OUTLINED_FUNCTION_2_15();
  return sub_2703F34A4(v11, v12);
}

uint64_t sub_2703F1404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21_3();
  v6 = sub_2705D6774();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    type metadata accessor for FlowAction.Destination(0);
    v12 = *(a3 + 28);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0728, &qword_2705E9A50);
    v8 = v3 + v12;
    goto LABEL_10;
  }

  v9 = *(v3 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_2703F1508(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_21_3();
  result = sub_2705D6774();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + *(a4 + 20) + 24) = a2;
      return result;
    }

    type metadata accessor for FlowAction.Destination(0);
    v11 = *(a4 + 28);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0728, &qword_2705E9A50);
    v10 = v4 + v11;
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_2703F1608(uint64_t a1)
{
  sub_2705D6774();
  if (v1 <= 0x3F)
  {
    sub_2703F16A4(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for FlowAction.Destination(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2703F16A4(uint64_t a1)
{
  if (!qword_2807CF320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF328, qword_2705DF710);
    v1 = sub_2705D6804();
    if (!v2)
    {
      atomic_store(v1, &qword_2807CF320);
    }
  }
}

uint64_t sub_2703F1708(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
      {

        return 3;
      }

      else
      {
        v9 = sub_2705D8134();

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

uint64_t sub_2703F187C(char a1)
{
  result = 0x654D6E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x4173736563637573;
      break;
    case 2:
      result = 0x416572756C696166;
      break;
    case 3:
      result = 0x74616E6974736564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2703F192C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0760, &qword_2705E53E0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2703F334C();
  sub_2705D84C4();
  v24 = 0;
  sub_2705D6774();
  OUTLINED_FUNCTION_13_7();
  sub_2703F3400(v11, v12, MEMORY[0x277D21C90]);
  OUTLINED_FUNCTION_25_2(v3);
  if (!v2)
  {
    v13 = type metadata accessor for DestinationReplacementAction(0);
    v14 = v13[5];
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8, &unk_2705DF6E0);
    sub_2703F34FC(&qword_2807CFE98, &qword_2807CFEA0, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    OUTLINED_FUNCTION_19_1(v3 + v14);
    v15 = v13[6];
    v22 = 2;
    OUTLINED_FUNCTION_19_1(v3 + v15);
    v16 = v13[7];
    v21 = 3;
    type metadata accessor for FlowAction.Destination(0);
    OUTLINED_FUNCTION_11_10();
    sub_2703F3400(v17, v18, &unk_2705E9AB0);
    OUTLINED_FUNCTION_25_2(v3 + v16);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_2703F1B80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  v40 = v5 - v4;
  v45 = sub_2705D6774();
  OUTLINED_FUNCTION_0();
  v41 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v42 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0740, &qword_2705E53D8);
  OUTLINED_FUNCTION_0();
  v43 = v11;
  v44 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = type metadata accessor for DestinationReplacementAction(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v18 = v17 - v16;
  v20 = v17 - v16 + *(v19 + 20);
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  sub_2703F33A0(&v48, v20, &unk_2807CF480, &unk_2705DC040);
  v21 = v18 + *(v14 + 24);
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  sub_2703F33A0(&v48, v21, &unk_2807CF480, &unk_2705DC040);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2703F334C();
  v46 = v13;
  v22 = v47;
  sub_2705D8484();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2703C2EFC(v20, &qword_2807CF2D8, &unk_2705DF6E0);
    return sub_2703C2EFC(v21, &qword_2807CF2D8, &unk_2705DF6E0);
  }

  else
  {
    v37 = v14;
    v47 = v18;
    v23 = v41;
    LOBYTE(v48) = 0;
    OUTLINED_FUNCTION_13_7();
    sub_2703F3400(v24, v25, MEMORY[0x277D21C98]);
    v26 = v42;
    v27 = v45;
    sub_2705D7FA4();
    (*(v23 + 32))(v47, v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8, &unk_2705DF6E0);
    v51 = 1;
    sub_2703F34FC(&qword_2807CFE48, &qword_2807CFE50, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    OUTLINED_FUNCTION_15_6();
    sub_2705D7FA4();
    sub_2703F33A0(&v48, v20, &qword_2807CF2D8, &unk_2705DF6E0);
    v51 = 2;
    OUTLINED_FUNCTION_15_6();
    sub_2705D7FA4();
    v28 = a1;
    sub_2703F33A0(&v48, v21, &qword_2807CF2D8, &unk_2705DF6E0);
    LOBYTE(v48) = 3;
    OUTLINED_FUNCTION_11_10();
    sub_2703F3400(v29, v30, &unk_2705E9AD8);
    v31 = v40;
    sub_2705D7FA4();
    v32 = OUTLINED_FUNCTION_17_5();
    v33(v32);
    v34 = v47;
    sub_2703F4EB4(v31, v47 + *(v37 + 28));
    sub_2703F3448(v34, v38);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return sub_2703F34A4(v34, type metadata accessor for DestinationReplacementAction);
  }
}

uint64_t sub_2703F20D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703F1708(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703F20F8(uint64_t a1)
{
  v2 = sub_2703F334C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703F2134(uint64_t a1)
{
  v2 = sub_2703F334C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703F2170@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2705D6774();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2703F2208(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = sub_2705D6784();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v12 = v11 - v10;
  v13 = type metadata accessor for DestinationReplacementAction(0);
  a3(a1 + v13[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038, &unk_2705E0130);
  (*(v8 + 104))(v12, *MEMORY[0x277D21CA8], v6);
  v14 = sub_2705D70C4();
  sub_2703F6EE0(a1 + v13[5], v19);
  sub_2703F6EE0(a1 + v13[6], v18);
  sub_2703C775C(v14, v19, v18, a2);
  v16 = v15;

  sub_2703C2EFC(v18, &unk_2807CF480, &unk_2705DC040);
  sub_2703C2EFC(v19, &unk_2807CF480, &unk_2705DC040);
  return v16;
}

uint64_t sub_2703F2398()
{
  v1 = type metadata accessor for FlowAction.Destination(0);
  v2 = OUTLINED_FUNCTION_23_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_0();
  v5 = v4 - v3;
  v6 = type metadata accessor for MessageResolvedViewStyleView(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D07B8, &unk_2705E5570);
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v26[-v15];
  type metadata accessor for DestinationRootView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0778, &qword_2705E53F8);
  sub_2705D5E54();
  sub_2703F2634(v5, v10);
  OUTLINED_FUNCTION_2_15();
  sub_2703F34A4(v5, v17);
  v27 = v0;
  v18 = sub_2705D6914();
  OUTLINED_FUNCTION_10_9();
  v21 = sub_2703F3400(v19, v20, &unk_2705F8BE8);
  sub_2705D59A4();
  sub_2703F34A4(v10, type metadata accessor for MessageResolvedViewStyleView);
  sub_2705D6694();
  v22 = sub_2705D6684();
  v30 = v21;
  v31 = v22;
  v28 = v6;
  v29 = v18;
  OUTLINED_FUNCTION_9_11();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_8_12();
  sub_2703F3400(v23, v24, MEMORY[0x277D7EE98]);
  sub_2705D59F4();

  return (*(v13 + 8))(v16, v11);
}

uint64_t sub_2703F2634@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2705D45C4();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  v11 = type metadata accessor for MessageViewStyle.ViewStyle(0);
  v12 = OUTLINED_FUNCTION_23_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v46 = v14 - v13;
  v43 = type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v44 = v17 - v16;
  v18 = sub_2705D6524();
  v19 = OUTLINED_FUNCTION_23_0(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_0();
  if (qword_2807CE838 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  v20 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v20);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2705E10F0;
  v50 = type metadata accessor for DestinationRootView(0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v49);
  sub_2703F3448(v2, boxed_opaque_existential_1Tm);
  v23 = AMSLogKey();
  if (v23)
  {
    v24 = v23;
    v25 = sub_2705D7564();
    v41 = v26;
    v42 = v10;
    v27 = v25;

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v49, v50);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v47[0] = DynamicType;
    sub_2705D64E4();
    sub_2703C2EFC(v47, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v47[0] = v27;
    v10 = v42;
    v47[1] = v41;
    sub_2705D64E4();
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v29 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v47[0] = v29;
    sub_2705D64E4();
  }

  sub_2703C2EFC(v47, &unk_2807D4890, &qword_2705E2880);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v49);
  sub_2705D64C4();
  v50 = v43;
  __swift_allocate_boxed_opaque_existential_1Tm(v49);
  OUTLINED_FUNCTION_12_9();
  sub_2703F3448(a1, v30);
  sub_2705D6544();
  sub_2703C2EFC(v49, &unk_2807D4890, &qword_2705E2880);
  sub_27047CF60(v21);

  sub_2703F3448(a1, v44);
  sub_2703F4EB4(v44, v46);
  v31 = *(v2 + 16);
  v32 = type metadata accessor for MessageResolvedViewStyleView(0);
  v33 = a2 + *(v32 + 24);
  sub_2703F3448(v46, v33);

  sub_2705D45B4();
  v34 = sub_2705D45A4();
  v36 = v35;
  (*(v6 + 8))(v10, v4);
  sub_2703F34A4(v46, type metadata accessor for MessageViewStyle.ViewStyle);
  v37 = type metadata accessor for MessageViewStyle(0);
  v38 = &v33[*(v37 + 20)];
  *v38 = 0;
  *(v38 + 1) = 0;
  v38[16] = -1;
  v39 = &v33[*(v37 + 24)];
  *v39 = v34;
  v39[1] = v36;
  sub_2703AE980(*v38, *(v38 + 1), v38[16]);
  *v38 = 0;
  *(v38 + 1) = 0;
  v38[16] = -1;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D07D8, &qword_2705F8DF0);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + *(v32 + 20)) = v31;
  return result;
}

uint64_t sub_2703F2BC4(uint64_t a1)
{
  v2 = type metadata accessor for DestinationRootView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490, &qword_2705E0140);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  sub_2703F3448(a1, v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_2703F4EB4(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_2705D6914();
  sub_2705D6A14();
  v19[0] = sub_2703F4F10;
  v19[1] = v13;
  v14 = *(v6 + 16);
  v14(v11, v9, v5);
  sub_2703F4F7C();
  sub_2705D69E4();
  v15 = *(v6 + 8);
  v15(v9, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF930, &unk_2705E13F0);
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2705DC030;
  v14((v17 + v16), v11, v5);
  sub_2703D3E64(v17);
  swift_setDeallocating();
  sub_2704890E4();
  return (v15)(v11, v5);
}

uint64_t sub_2703F2E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction.Destination(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DestinationRootView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0, &qword_2705E8160);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  sub_2703F3448(a2, &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2703F3448(a1, v7);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = (v10 + *(v5 + 80) + v15) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_2703F4EB4(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15);
  sub_2703F4EB4(v7, v17 + v16);
  sub_270482728();
}

uint64_t sub_2703F3108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for FlowAction.Destination(0);
  v5[4] = swift_task_alloc();
  v5[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2703F31A4, 0, 0);
}

uint64_t sub_2703F31A4()
{
  sub_2705D78A4();
  *(v0 + 48) = sub_2705D7894();
  v2 = sub_2705D7844();

  return MEMORY[0x2822009F8](sub_2703F3238, v2, v1);
}

uint64_t sub_2703F3238()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  OUTLINED_FUNCTION_12_9();
  sub_2703F3448(v2, v1);
  type metadata accessor for DestinationRootView(0);
  sub_2703F3448(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0778, &qword_2705E53F8);
  sub_2705D5E64();
  OUTLINED_FUNCTION_2_15();
  sub_2703F34A4(v1, v4);

  v5 = v0[1];

  return v5();
}

unint64_t sub_2703F334C()
{
  result = qword_2807D0748;
  if (!qword_2807D0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0748);
  }

  return result;
}

uint64_t sub_2703F33A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 40))(a2, a1);
  return a2;
}

uint64_t sub_2703F3400(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2703F3448(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21_3();
  v5(v4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2703F34A4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2703F34FC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF2D8, &unk_2705DF6E0);
    sub_2703F3584(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2703F3584(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF328, qword_2705DF710);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DestinationReplacementAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DestinationReplacementAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2703F3728);
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

uint64_t sub_2703F3774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0778, &qword_2705E53F8);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2703F381C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0778, &qword_2705E53F8);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_2703F38A8(uint64_t a1)
{
  sub_2703F39A4(319, &qword_2807D0790, type metadata accessor for MessageCenter, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2705D6914();
    if (v2 <= 0x3F)
    {
      sub_2703F39A4(319, &qword_2807D0798, type metadata accessor for FlowAction.Destination, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2703F39A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2703F3A0C()
{
  result = qword_2807D07A0;
  if (!qword_2807D07A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D07A0);
  }

  return result;
}

unint64_t sub_2703F3A64()
{
  result = qword_2807D07A8;
  if (!qword_2807D07A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D07A8);
  }

  return result;
}

unint64_t sub_2703F3ABC()
{
  result = qword_2807D07B0;
  if (!qword_2807D07B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D07B0);
  }

  return result;
}

uint64_t sub_2703F3B34()
{
  type metadata accessor for DestinationRootView(0);
  OUTLINED_FUNCTION_23_3();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v3 + *(v0 + 32);
  type metadata accessor for MessageViewStyle.ViewStyle(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      if (*(v4 + 3248) == 1)
      {
        goto LABEL_108;
      }

      v42 = *(v4 + 80);
      if (!v42)
      {
        goto LABEL_40;
      }

      if (v42 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v4 + 56));
LABEL_40:
        if (*(v4 + 104))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v15 || v43 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v44, v45, v46, v47, v48, v49, v50, v51, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
        }
      }

      v52 = *(v4 + 536);
      if (!v52)
      {
        goto LABEL_50;
      }

      if (v52 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v4 + 512));
LABEL_50:
        if (*(v4 + 560))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v15 || v53 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v54, v55, v56, v57, v58, v59, v60, v61, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
        }
      }

      v62 = *(v4 + 992);
      if (!v62)
      {
        goto LABEL_60;
      }

      if (v62 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v4 + 968));
LABEL_60:
        if (*(v4 + 1016))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v15 || v63 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v64, v65, v66, v67, v68, v69, v70, v71, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
        }
      }

      v72 = *(v4 + 1448);
      if (!v72)
      {
        goto LABEL_70;
      }

      if (v72 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v4 + 1424));
LABEL_70:
        if (*(v4 + 1472))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v15 || v73 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v74, v75, v76, v77, v78, v79, v80, v81, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
        }
      }

      v82 = *(v4 + 1904);
      if (!v82)
      {
        goto LABEL_80;
      }

      if (v82 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v4 + 1880));
LABEL_80:
        if (*(v4 + 1928))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v15 || v83 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v84, v85, v86, v87, v88, v89, v90, v91, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
        }
      }

      v92 = *(v4 + 2360);
      if (!v92)
      {
        goto LABEL_90;
      }

      if (v92 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v4 + 2336));
LABEL_90:
        if (*(v4 + 2384))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v15 || v93 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v94, v95, v96, v97, v98, v99, v100, v101, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
        }
      }

      v102 = *(v4 + 2816);
      if (!v102)
      {
        goto LABEL_100;
      }

      if (v102 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v4 + 2792));
LABEL_100:
        if (*(v4 + 2840))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v15 || v103 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v104, v105, v106, v107, v108, v109, v110, v111, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
        }
      }

LABEL_108:
      v112 = type metadata accessor for DynamicPageModel(0);
      v113 = *(v112 + 36);
      v114 = sub_2705D6674();
      if (!OUTLINED_FUNCTION_20_3(v4 + v113))
      {
        OUTLINED_FUNCTION_4_4();
        (*(v115 + 8))(v4 + v113, v114);
      }

      v116 = v4 + *(v112 + 40);
      type metadata accessor for DynamicPageUnderlay(0);
      if (OUTLINED_FUNCTION_20_3(v116))
      {
        goto LABEL_139;
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {

LABEL_143:

        goto LABEL_139;
      }

      v117 = sub_2705D6734();
      OUTLINED_FUNCTION_14();
      v119 = *(v118 + 8);
      v119(v116, v117);
      v120 = type metadata accessor for ResponsiveArtworkUnderlay(0);
      v119(v116 + v120[5], v117);

      OUTLINED_FUNCTION_14_9(v116 + v120[8]);
      if (!v15)
      {
      }

      OUTLINED_FUNCTION_14_9(v116 + v120[9]);
      if (!v15)
      {
        goto LABEL_143;
      }

LABEL_139:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0778, &qword_2705E53F8);

      return swift_deallocObject();
    case 1u:
    case 3u:

      OUTLINED_FUNCTION_5_19();
      if (!v15 || v5 >= 0x100)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4940(v6, v7, v8, v9, v10, v11, v12, v13, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
      }

      OUTLINED_FUNCTION_6_16();
      v15 = v15 && v14 == 0;
      if (!v15)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4D28(v16, v17, v18, v19, v20, v21, v22, v23, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
      }

      if (*(v4 + 728))
      {
      }

      if (*(v4 + 760))
      {
      }

      goto LABEL_20;
    case 2u:

      OUTLINED_FUNCTION_5_19();
      if (!v15 || v121 >= 0x100)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4940(v122, v123, v124, v125, v126, v127, v128, v129, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
      }

      if (*(v4 + 368))
      {
      }

      if (*(v4 + 400))
      {
      }

      OUTLINED_FUNCTION_6_16();
      if (!v15 || v130 != 0)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4D28(v132, v133, v134, v135, v136, v137, v138, v139, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
      }

      if (!*(v4 + 816))
      {
        goto LABEL_139;
      }

      v140 = *(v4 + 800);
      if (v140 != 255)
      {
        sub_2703AE630(*(v4 + 784), *(v4 + 792), v140);
      }

      v141 = *(v4 + 856);
      if (v141 != 255)
      {
        sub_2703AE630(*(v4 + 840), *(v4 + 848), v141);
      }

      if (!*(v4 + 872))
      {
        goto LABEL_139;
      }

LABEL_20:

      goto LABEL_139;
    case 4u:

      OUTLINED_FUNCTION_5_19();
      if (!v15 || v28 >= 0x100)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4940(v29, v30, v31, v32, v33, v34, v35, v36, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
      }

      v37 = *(v4 + 536);
      if (v37 != 255)
      {
        sub_2703AE630(*(v4 + 520), *(v4 + 528), v37);
      }

      if (*(v4 + 568) != 254)
      {

        v38 = *(v4 + 568);
        if (v38 != 255)
        {
          sub_2703AE630(*(v4 + 552), *(v4 + 560), v38);
        }
      }

      if (*(v4 + 584))
      {
      }

      if (*(v4 + 616))
      {
      }

      v39 = *(v4 + 656);
      if (v39 == 255)
      {
        goto LABEL_139;
      }

      v40 = *(v4 + 640);
      v41 = *(v4 + 648);
      goto LABEL_138;
    case 5u:
    case 7u:

      v24 = *(v4 + 32);
      if (v24 != 255)
      {
        sub_2703AE630(*(v4 + 16), *(v4 + 24), v24);
      }

      v25 = *(type metadata accessor for JSServiceRequestIntent(0) + 24);
      v26 = sub_2705D4484();
      if (!OUTLINED_FUNCTION_20_3(v4 + v25))
      {
        OUTLINED_FUNCTION_4_4();
        (*(v27 + 8))(v4 + v25, v26);
      }

      goto LABEL_20;
    case 6u:

      v39 = *(v4 + 32);
      if (v39 == 255)
      {
        goto LABEL_139;
      }

      v40 = *(v4 + 16);
      v41 = *(v4 + 24);
LABEL_138:
      sub_2703AE630(v40, v41, v39);
      goto LABEL_139;
    default:
      goto LABEL_139;
  }
}

void sub_2703F4940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  switch(a18 >> 61)
  {
    case 0uLL:

      sub_2703B8720(a3, a4, a5, a6, a7);

      sub_2703B8720(a14, a15, a16, a17, a18);
      goto LABEL_6;
    case 1uLL:
    case 2uLL:
    case 4uLL:
LABEL_6:

      break;
    case 3uLL:

      sub_2703B8720(a3, a4, a5, a6, a7);

      sub_2703B8720(a14, a15, a16, a17, a18);

      sub_2703F4C30(a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
      break;
    default:
      return;
  }
}

void sub_2703F4C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a11)
  {

    sub_2703B8720(a3, a4, a5, a6, a7);

    sub_2703B8720(a14, a15, a16, a17, a18);
  }
}

void sub_2703F4D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  if ((a18 & 0x1000000000000000) != 0)
  {
  }

  else
  {

    sub_2703F4940(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
  }
}

uint64_t sub_2703F4EB4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21_3();
  v5(v4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2703F4F10(uint64_t a1)
{
  v3 = type metadata accessor for DestinationRootView(0);
  OUTLINED_FUNCTION_23_0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_2703F2E90(a1, v5);
}

unint64_t sub_2703F4F7C()
{
  result = qword_2807D07D0;
  if (!qword_2807D07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D07D0);
  }

  return result;
}

uint64_t sub_2703F4FD0()
{
  type metadata accessor for DestinationRootView(0);
  OUTLINED_FUNCTION_23_3();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_1_1(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();

  v10 = v1 + v4 + *(v0 + 32);
  type metadata accessor for MessageViewStyle.ViewStyle(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      if (*(v10 + 3248) == 1)
      {
        goto LABEL_108;
      }

      v48 = *(v10 + 80);
      if (!v48)
      {
        goto LABEL_40;
      }

      if (v48 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v10 + 56));
LABEL_40:
        if (*(v10 + 104))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v49 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v50, v51, v52, v53, v54, v55, v56, v57, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
        }
      }

      v58 = *(v10 + 536);
      if (!v58)
      {
        goto LABEL_50;
      }

      if (v58 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v10 + 512));
LABEL_50:
        if (*(v10 + 560))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v59 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v60, v61, v62, v63, v64, v65, v66, v67, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
        }
      }

      v68 = *(v10 + 992);
      if (!v68)
      {
        goto LABEL_60;
      }

      if (v68 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v10 + 968));
LABEL_60:
        if (*(v10 + 1016))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v69 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v70, v71, v72, v73, v74, v75, v76, v77, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
        }
      }

      v78 = *(v10 + 1448);
      if (!v78)
      {
        goto LABEL_70;
      }

      if (v78 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v10 + 1424));
LABEL_70:
        if (*(v10 + 1472))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v79 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v80, v81, v82, v83, v84, v85, v86, v87, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
        }
      }

      v88 = *(v10 + 1904);
      if (!v88)
      {
        goto LABEL_80;
      }

      if (v88 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v10 + 1880));
LABEL_80:
        if (*(v10 + 1928))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v89 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v90, v91, v92, v93, v94, v95, v96, v97, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
        }
      }

      v98 = *(v10 + 2360);
      if (!v98)
      {
        goto LABEL_90;
      }

      if (v98 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v10 + 2336));
LABEL_90:
        if (*(v10 + 2384))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v99 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v100, v101, v102, v103, v104, v105, v106, v107, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
        }
      }

      v108 = *(v10 + 2816);
      if (!v108)
      {
        goto LABEL_100;
      }

      if (v108 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v10 + 2792));
LABEL_100:
        if (*(v10 + 2840))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v109 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v110, v111, v112, v113, v114, v115, v116, v117, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
        }
      }

LABEL_108:
      v118 = type metadata accessor for DynamicPageModel(0);
      v119 = *(v118 + 36);
      v120 = sub_2705D6674();
      if (!OUTLINED_FUNCTION_24_3(v120))
      {
        OUTLINED_FUNCTION_4_4();
        (*(v121 + 8))(v10 + v119, v2);
      }

      v122 = v10 + *(v118 + 40);
      v123 = type metadata accessor for DynamicPageUnderlay(0);
      if (__swift_getEnumTagSinglePayload(v122, 1, v123))
      {
        break;
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {

LABEL_281:

        break;
      }

      v124 = sub_2705D6734();
      OUTLINED_FUNCTION_14();
      v126 = *(v125 + 8);
      v126(v122, v124);
      v127 = type metadata accessor for ResponsiveArtworkUnderlay(0);
      v126(v122 + v127[5], v124);

      OUTLINED_FUNCTION_14_9(v122 + v127[8]);
      if (!v21)
      {
      }

      OUTLINED_FUNCTION_14_9(v122 + v127[9]);
      if (!v21)
      {
        goto LABEL_281;
      }

      break;
    case 1u:
    case 3u:

      OUTLINED_FUNCTION_5_19();
      if (!v21 || v11 >= 0x100)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4940(v12, v13, v14, v15, v16, v17, v18, v19, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
      }

      OUTLINED_FUNCTION_6_16();
      v21 = v21 && v20 == 0;
      if (!v21)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4D28(v22, v23, v24, v25, v26, v27, v28, v29, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
      }

      if (*(v10 + 728))
      {
      }

      if (*(v10 + 760))
      {
      }

      goto LABEL_20;
    case 2u:

      OUTLINED_FUNCTION_5_19();
      if (!v21 || v128 >= 0x100)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4940(v129, v130, v131, v132, v133, v134, v135, v136, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
      }

      if (*(v10 + 368))
      {
      }

      if (*(v10 + 400))
      {
      }

      OUTLINED_FUNCTION_6_16();
      if (!v21 || v137 != 0)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4D28(v139, v140, v141, v142, v143, v144, v145, v146, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
      }

      if (!*(v10 + 816))
      {
        break;
      }

      v147 = *(v10 + 800);
      if (v147 != 255)
      {
        sub_2703AE630(*(v10 + 784), *(v10 + 792), v147);
      }

      v148 = *(v10 + 856);
      if (v148 != 255)
      {
        sub_2703AE630(*(v10 + 840), *(v10 + 848), v148);
      }

      if (!*(v10 + 872))
      {
        break;
      }

LABEL_20:

      break;
    case 4u:

      OUTLINED_FUNCTION_5_19();
      if (!v21 || v34 >= 0x100)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4940(v35, v36, v37, v38, v39, v40, v41, v42, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
      }

      v43 = *(v10 + 536);
      if (v43 != 255)
      {
        sub_2703AE630(*(v10 + 520), *(v10 + 528), v43);
      }

      if (*(v10 + 568) != 254)
      {

        v44 = *(v10 + 568);
        if (v44 != 255)
        {
          sub_2703AE630(*(v10 + 552), *(v10 + 560), v44);
        }
      }

      if (*(v10 + 584))
      {
      }

      if (*(v10 + 616))
      {
      }

      v45 = *(v10 + 656);
      if (v45 == 255)
      {
        break;
      }

      v46 = *(v10 + 640);
      v47 = *(v10 + 648);
      goto LABEL_138;
    case 5u:
    case 7u:

      OUTLINED_FUNCTION_22_2();
      if (!v21)
      {
        sub_2703AE630(*(v10 + 16), *(v10 + 24), v30);
      }

      v31 = *(type metadata accessor for JSServiceRequestIntent(0) + 24);
      v32 = sub_2705D4484();
      if (!OUTLINED_FUNCTION_24_3(v32))
      {
        OUTLINED_FUNCTION_4_4();
        (*(v33 + 8))(v10 + v31, v2);
      }

      goto LABEL_20;
    case 6u:

      OUTLINED_FUNCTION_22_2();
      if (v21)
      {
        break;
      }

      v46 = *(v10 + 16);
      v47 = *(v10 + 24);
LABEL_138:
      sub_2703AE630(v46, v47, v45);
      break;
    default:
      break;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0778, &qword_2705E53F8);

  v149 = v1 + v9;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      if (*(v149 + 3248) == 1)
      {
        goto LABEL_246;
      }

      v187 = *(v149 + 80);
      if (!v187)
      {
        goto LABEL_178;
      }

      if (v187 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v149 + 56));
LABEL_178:
        if (*(v149 + 104))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v188 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v189, v190, v191, v192, v193, v194, v195, v196, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
        }
      }

      v197 = *(v149 + 536);
      if (!v197)
      {
        goto LABEL_188;
      }

      if (v197 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v149 + 512));
LABEL_188:
        if (*(v149 + 560))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v198 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v199, v200, v201, v202, v203, v204, v205, v206, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
        }
      }

      v207 = *(v149 + 992);
      if (!v207)
      {
        goto LABEL_198;
      }

      if (v207 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v149 + 968));
LABEL_198:
        if (*(v149 + 1016))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v208 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v209, v210, v211, v212, v213, v214, v215, v216, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
        }
      }

      v217 = *(v149 + 1448);
      if (!v217)
      {
        goto LABEL_208;
      }

      if (v217 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v149 + 1424));
LABEL_208:
        if (*(v149 + 1472))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v218 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v219, v220, v221, v222, v223, v224, v225, v226, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
        }
      }

      v227 = *(v149 + 1904);
      if (!v227)
      {
        goto LABEL_218;
      }

      if (v227 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v149 + 1880));
LABEL_218:
        if (*(v149 + 1928))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v228 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v229, v230, v231, v232, v233, v234, v235, v236, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
        }
      }

      v237 = *(v149 + 2360);
      if (!v237)
      {
        goto LABEL_228;
      }

      if (v237 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v149 + 2336));
LABEL_228:
        if (*(v149 + 2384))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v238 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v239, v240, v241, v242, v243, v244, v245, v246, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
        }
      }

      v247 = *(v149 + 2816);
      if (!v247)
      {
        goto LABEL_238;
      }

      if (v247 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1((v149 + 2792));
LABEL_238:
        if (*(v149 + 2840))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v248 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v249, v250, v251, v252, v253, v254, v255, v256, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
        }
      }

LABEL_246:
      v257 = type metadata accessor for DynamicPageModel(0);
      v258 = *(v257 + 36);
      v259 = sub_2705D6674();
      if (!OUTLINED_FUNCTION_20_3(v149 + v258))
      {
        OUTLINED_FUNCTION_4_4();
        (*(v260 + 8))(v149 + v258, v259);
      }

      v261 = v149 + *(v257 + 40);
      v262 = type metadata accessor for DynamicPageUnderlay(0);
      if (__swift_getEnumTagSinglePayload(v261, 1, v262))
      {
        goto LABEL_277;
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {

LABEL_283:

        goto LABEL_277;
      }

      v263 = sub_2705D6734();
      OUTLINED_FUNCTION_14();
      v265 = *(v264 + 8);
      v265(v261, v263);
      v266 = type metadata accessor for ResponsiveArtworkUnderlay(0);
      v265(v261 + v266[5], v263);

      OUTLINED_FUNCTION_14_9(v261 + v266[8]);
      if (!v21)
      {
      }

      OUTLINED_FUNCTION_14_9(v261 + v266[9]);
      if (!v21)
      {
        goto LABEL_283;
      }

LABEL_277:

      return swift_deallocObject();
    case 1u:
    case 3u:

      OUTLINED_FUNCTION_5_19();
      if (!v21 || v150 >= 0x100)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4940(v151, v152, v153, v154, v155, v156, v157, v158, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
      }

      OUTLINED_FUNCTION_6_16();
      if (!v21 || v159 != 0)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4D28(v161, v162, v163, v164, v165, v166, v167, v168, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
      }

      if (*(v149 + 728))
      {
      }

      if (*(v149 + 760))
      {
      }

      goto LABEL_158;
    case 2u:

      OUTLINED_FUNCTION_5_19();
      if (!v21 || v267 >= 0x100)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4940(v268, v269, v270, v271, v272, v273, v274, v275, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
      }

      if (*(v149 + 368))
      {
      }

      if (*(v149 + 400))
      {
      }

      OUTLINED_FUNCTION_6_16();
      if (!v21 || v276 != 0)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4D28(v278, v279, v280, v281, v282, v283, v284, v285, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
      }

      if (!*(v149 + 816))
      {
        goto LABEL_277;
      }

      v286 = *(v149 + 800);
      if (v286 != 255)
      {
        sub_2703AE630(*(v149 + 784), *(v149 + 792), v286);
      }

      v287 = *(v149 + 856);
      if (v287 != 255)
      {
        sub_2703AE630(*(v149 + 840), *(v149 + 848), v287);
      }

      if (!*(v149 + 872))
      {
        goto LABEL_277;
      }

LABEL_158:

      goto LABEL_277;
    case 4u:

      OUTLINED_FUNCTION_5_19();
      if (!v21 || v173 >= 0x100)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4940(v174, v175, v176, v177, v178, v179, v180, v181, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
      }

      v182 = *(v149 + 536);
      if (v182 != 255)
      {
        sub_2703AE630(*(v149 + 520), *(v149 + 528), v182);
      }

      if (*(v149 + 568) != 254)
      {

        v183 = *(v149 + 568);
        if (v183 != 255)
        {
          sub_2703AE630(*(v149 + 552), *(v149 + 560), v183);
        }
      }

      if (*(v149 + 584))
      {
      }

      if (*(v149 + 616))
      {
      }

      v184 = *(v149 + 656);
      if (v184 == 255)
      {
        goto LABEL_277;
      }

      v185 = *(v149 + 640);
      v186 = *(v149 + 648);
      goto LABEL_276;
    case 5u:
    case 7u:

      OUTLINED_FUNCTION_22_2();
      if (!v21)
      {
        sub_2703AE630(*(v149 + 16), *(v149 + 24), v169);
      }

      v170 = *(type metadata accessor for JSServiceRequestIntent(0) + 24);
      v171 = sub_2705D4484();
      if (!OUTLINED_FUNCTION_20_3(v149 + v170))
      {
        OUTLINED_FUNCTION_4_4();
        (*(v172 + 8))(v149 + v170, v171);
      }

      goto LABEL_158;
    case 6u:

      OUTLINED_FUNCTION_22_2();
      if (v21)
      {
        goto LABEL_277;
      }

      v185 = *(v149 + 16);
      v186 = *(v149 + 24);
LABEL_276:
      sub_2703AE630(v185, v186, v184);
      goto LABEL_277;
    default:
      goto LABEL_277;
  }
}

uint64_t sub_2703F6B54(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for DestinationRootView(0);
  OUTLINED_FUNCTION_1_1(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_23_0(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2703F6C98;

  return sub_2703F3108(a1, v13, v14, v1 + v7, v1 + v12);
}

uint64_t sub_2703F6C98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2703F6DA4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D07B8, &unk_2705E5570);
  sub_2705D6694();
  type metadata accessor for MessageResolvedViewStyleView(255);
  sub_2705D6914();
  OUTLINED_FUNCTION_10_9();
  sub_2703F3400(v0, v1, &unk_2705F8BE8);
  OUTLINED_FUNCTION_9_11();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_8_12();
  sub_2703F3400(v2, v3, MEMORY[0x277D7EE98]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2703F6EE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8, &unk_2705DF6E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_19_1(uint64_t a1)
{

  return sub_2705D8084();
}

uint64_t OUTLINED_FUNCTION_20_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_24_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_25_2(uint64_t a1)
{

  return sub_2705D8084();
}

uint64_t sub_2703F7138(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0828, &qword_2705E5678);
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_2703F7230(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0828, &qword_2705E5678);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for DetailCardComponentModel(uint64_t a1)
{
  result = qword_2807D0830;
  if (!qword_2807D0830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2703F735C(uint64_t a1)
{
  sub_2703C1B58(319);
  if (v1 <= 0x3F)
  {
    sub_2703DFCDC(319, &qword_2807CF188, &qword_2807CF190, &unk_2705DEE80);
    if (v2 <= 0x3F)
    {
      sub_2703DFCDC(319, &qword_2807D0840, &qword_2807D0848, &qword_2705E56A8);
      if (v3 <= 0x3F)
      {
        sub_2703DFCDC(319, &qword_2807D0850, &qword_2807D0858, &unk_2705E56B0);
        if (v4 <= 0x3F)
        {
          sub_2703DFCDC(319, &qword_2807CF320, &qword_2807CF328, qword_2705DF710);
          if (v5 <= 0x3F)
          {
            sub_2703DFCDC(319, &qword_2807D0860, &qword_2807D0868, &qword_2705E56C0);
            if (v6 <= 0x3F)
            {
              sub_2703DFCDC(319, &qword_2807D0870, &qword_2807D0878, &qword_2705E56C8);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit0A4TextVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2703F7524(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t sub_2703F7578(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_2703F75EC()
{
  v1 = sub_2703FC5C0(v0, &v13, &qword_2807CF140, &qword_2705DEE60);
  *&result = OUTLINED_FUNCTION_11_9(v1, v2, v3, v4, v5, v6, v7, v8, v9, v12, v10, v13, v14).n128_u64[0];
  return result;
}

uint64_t sub_2703F7634@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
  OUTLINED_FUNCTION_23_0(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_2();
  v6 = type metadata accessor for DetailCardComponentModel(0);
  sub_2703FC5C0(v1 + *(v6 + 20), v2, &qword_2807CF130, &unk_2705DEE50);
  return sub_2703FC3D4(v2, a1, &qword_2807CF190, &unk_2705DEE80);
}

double sub_2703F76E8()
{
  v1 = type metadata accessor for DetailCardComponentModel(0);
  v2 = sub_2703FC5C0(v0 + *(v1 + 32), &v14, &qword_2807CF2D8, &unk_2705DF6E0);
  *&result = OUTLINED_FUNCTION_11_9(v2, v3, v4, v5, v6, v7, v8, v9, v10, v13, v11, v14, v15).n128_u64[0];
  return result;
}

uint64_t sub_2703F773C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000002706137E0 == a2;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7341726564616568 && a2 == 0xEB00000000746573;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E6964646170 && a2 == 0xE700000000000000;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6575676573 && a2 == 0xE500000000000000;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
            if (v10 || (sub_2705D8134() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
              if (v11 || (sub_2705D8134() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x65746F6E746F6F66 && a2 == 0xE800000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_2705D8134();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2703F79B8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x7341726564616568;
      break;
    case 3:
      result = 0x676E6964646170;
      break;
    case 4:
      v3 = 1969710451;
      goto LABEL_8;
    case 5:
      v3 = 1819568500;
LABEL_8:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 6:
      result = 0x656C746974627573;
      break;
    case 7:
      result = 0x65746F6E746F6F66;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2703F7AB0()
{
  OUTLINED_FUNCTION_10_1();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0908, &qword_2705E5878);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_2();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2703F8F38();
  sub_2705D84C4();
  LOBYTE(v41[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF140, &qword_2705DEE60);
  sub_2703FCF04(&qword_2807CFE90);
  sub_2705D8084();
  if (v1)
  {
    (*(v8 + 8))(v2, v6);
  }

  else
  {
    v10 = type metadata accessor for DetailCardComponentModel(0);
    v11 = v10[5];
    LOBYTE(v41[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
    sub_2703E1004();
    OUTLINED_FUNCTION_2_16(v3 + v11);
    v12 = v10[6];
    v45 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0828, &qword_2705E5678);
    sub_2703F95B4();
    OUTLINED_FUNCTION_2_16(v3 + v12);
    *v44 = OUTLINED_FUNCTION_13_8(v3 + v10[7]);
    *(v14 + 41) = *(v13 + 41);
    LOBYTE(v35) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D08B8, &qword_2705E5868);
    sub_2703F96EC();
    OUTLINED_FUNCTION_2_16(v41);
    v15 = v10[8];
    LOBYTE(v41[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8, &unk_2705DF6E0);
    sub_2703F921C(&qword_2807CFE98);
    OUTLINED_FUNCTION_2_16(v3 + v15);
    v16 = v3 + v10[9];
    v17 = *(v16 + 8);
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);
    v20 = *(v16 + 48);
    v41[0] = *v16;
    v41[1] = v17;
    v42 = v18;
    v43 = v19;
    *v44 = *(v16 + 32);
    v44[16] = v20;
    LOBYTE(v35) = 5;
    sub_2703F97F4();

    sub_2705D8084();

    v21 = v3 + v10[10];
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    v24 = *(v21 + 24);
    v25 = *(v21 + 32);
    v26 = *(v21 + 40);
    v27 = *(v21 + 48);
    v39[0] = *v21;
    v39[1] = v22;
    v39[2] = v23;
    v39[3] = v24;
    v39[4] = v25;
    v39[5] = v26;
    v40 = v27;
    v38 = 6;
    sub_2703F9848(v39[0], v22, v23, v24, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D08D8, &qword_2705E5870);
    sub_2703F9898();
    OUTLINED_FUNCTION_2_16(v39);
    OUTLINED_FUNCTION_24_4();
    v28 = OUTLINED_FUNCTION_13_8(v3 + v10[11]);
    v31 = *v29;
    v30 = v29[1];
    *v44 = v28;
    *&v44[9] = *(v29 + 41);
    v35 = v31;
    v36 = v30;
    *v37 = v29[2];
    *&v37[9] = *(v29 + 41);
    v34 = 7;
    sub_2703FC5C0(v41, v32, &qword_2807D0898, &qword_2705E5860);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0898, &qword_2705E5860);
    sub_2703F99A0();
    OUTLINED_FUNCTION_2_16(&v35);
    v32[0] = v35;
    v32[1] = v36;
    *v33 = *v37;
    *&v33[9] = *&v37[9];
    sub_2703FC60C(v32, &qword_2807D0898);
    (*(v8 + 8))(v2, v6);
  }

  OUTLINED_FUNCTION_11_3();
}

void sub_2703F7F90()
{
  OUTLINED_FUNCTION_10_1();
  *&v60 = v0;
  v2 = v1;
  v52 = v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0828, &qword_2705E5678);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  *&v55 = &v51 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0888, &unk_2705E5850);
  OUTLINED_FUNCTION_0();
  v56 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  v13 = type metadata accessor for DetailCardComponentModel(0);
  OUTLINED_FUNCTION_14();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 20);
  v19 = sub_2705D6A54();
  v77 = v18;
  __swift_storeEnumTagSinglePayload(&v17[v18], 1, 1, v19);
  v20 = v13[6];
  v21 = sub_2705D6734();
  v64 = v20;
  __swift_storeEnumTagSinglePayload(&v17[v20], 1, 1, v21);
  v22 = &v17[v13[8]];
  *&v76[0] = 0;
  v74 = 0u;
  v75 = 0u;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  v63 = v22;
  sub_2703F92B0(&v74, v22, &unk_2807CF480, &unk_2705DC040);
  v23 = &v17[v13[10]];
  v23[48] = 0;
  *(v23 + 1) = 0u;
  *(v23 + 2) = 0u;
  *v23 = 0u;
  v57 = v13;
  v24 = &v17[v13[11]];
  *v24 = 1;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  *(v24 + 40) = 0u;
  v61 = v24;
  v62 = v2;
  v24[56] = 0;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2703F8F38();
  v58 = v12;
  v25 = v60;
  sub_2705D8484();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1(v62);
    sub_2703FC60C(&v17[v77], &qword_2807CF130);
    sub_2703FC60C(&v17[v64], &qword_2807D0828);
    sub_2703FC60C(v63, &qword_2807CF2D8);
    sub_2703F8F8C(*v23, *(v23 + 1), *(v23 + 2), *(v23 + 3), *(v23 + 4));
    v76[0] = OUTLINED_FUNCTION_13_8(v61);
    *(v76 + 9) = *(v28 + 41);
    sub_2703FC60C(&v74, &qword_2807D0898);
  }

  else
  {
    v26 = v8;
    v27 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF140, &qword_2705DEE60);
    LOBYTE(v71) = 0;
    sub_2703FCF04(&qword_2807CFE40);
    sub_2705D7FA4();
    v29 = v75;
    *v17 = v74;
    *(v17 + 1) = v29;
    *(v17 + 4) = *&v76[0];
    LOBYTE(v74) = 1;
    sub_2703E0C88();
    sub_2705D7FA4();
    sub_2703F92B0(v26, &v17[v77], &qword_2807CF130, &unk_2705DEE50);
    LOBYTE(v74) = 2;
    sub_2703F8FDC();
    sub_2705D7FA4();
    sub_2703F92B0(v27, &v17[v64], &qword_2807D0828, &qword_2705E5678);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D08B8, &qword_2705E5868);
    v73 = 3;
    sub_2703F9114();
    OUTLINED_FUNCTION_9_12();
    v30 = &v17[v57[7]];
    v31 = v75;
    *v30 = v74;
    *(v30 + 1) = v31;
    *(v30 + 2) = v76[0];
    *(v30 + 41) = *(v76 + 9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8, &unk_2705DF6E0);
    LOBYTE(v68[0]) = 4;
    sub_2703F921C(&qword_2807CFE48);
    OUTLINED_FUNCTION_9_12();
    sub_2703F92B0(&v71, v63, &qword_2807CF2D8, &unk_2705DF6E0);
    LOBYTE(v68[0]) = 5;
    sub_2703F92FC();
    sub_2705D7FA4();
    v32 = *(&v71 + 1);
    v33 = v72[0];
    v34 = *&v72[24];
    v35 = v72[32];
    v36 = &v17[v57[9]];
    *v36 = v71;
    *(v36 + 1) = v32;
    v36[16] = v33;
    *(v36 + 24) = *&v72[8];
    *(v36 + 5) = v34;
    v36[48] = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D08D8, &qword_2705E5870);
    LOBYTE(v68[0]) = 6;
    sub_2703F9350();
    OUTLINED_FUNCTION_9_12();
    v37 = *&v72[16];
    v38 = *&v72[24];
    v39 = v72[32];
    v40 = *v23;
    v41 = *(v23 + 1);
    v42 = *(v23 + 2);
    v43 = *(v23 + 3);
    v44 = *(v23 + 4);
    v60 = v71;
    v55 = *v72;
    sub_2703F8F8C(v40, v41, v42, v43, v44);
    v45 = v55;
    *v23 = v60;
    *(v23 + 1) = v45;
    *(v23 + 4) = v37;
    *(v23 + 5) = v38;
    v23[48] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0898, &qword_2705E5860);
    v70 = 7;
    sub_2703F9458();
    sub_2705D7FA4();
    v46 = OUTLINED_FUNCTION_6_17();
    v47(v46);
    v65 = v71;
    v66 = *v72;
    v67[0] = *&v72[16];
    *(v67 + 9) = *&v72[25];
    v48 = v61;
    v49 = v61[1];
    v68[0] = *v61;
    v68[1] = v49;
    *v69 = v61[2];
    *&v69[9] = *(v61 + 41);
    sub_2703FC60C(v68, &qword_2807D0898);
    v50 = v66;
    *v48 = v65;
    v48[1] = v50;
    v48[2] = v67[0];
    *(v48 + 41) = *(v67 + 9);
    sub_2703FC320(v17, v52, type metadata accessor for DetailCardComponentModel);
    __swift_destroy_boxed_opaque_existential_1(v62);
    sub_2703FC37C(v17, type metadata accessor for DetailCardComponentModel);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2703F87D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703F773C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703F87FC(uint64_t a1)
{
  v2 = sub_2703F8F38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703F8838(uint64_t a1)
{
  v2 = sub_2703F8F38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703F88B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737465737361 && a2 == 0xE600000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

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

uint64_t sub_2703F8970(char a1)
{
  if (a1)
  {
    return 0x656C746974;
  }

  else
  {
    return 0x737465737361;
  }
}

void sub_2703F89A0()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D09A8, &qword_2705E58A0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v10 = *v0;
  v9 = *(v0 + 8);
  v11 = *(v0 + 24);
  v19 = *(v0 + 16);
  v20 = v9;
  v12 = *(v0 + 40);
  v17 = *(v0 + 32);
  v18 = v11;
  v15 = *(v0 + 48);
  v16 = v12;
  v28 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v13 = sub_2703F9AFC();

  sub_2705D84C4();
  v21 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0978, &qword_2705E5888);
  sub_2703F9D74();
  OUTLINED_FUNCTION_11_11();

  if (!v13)
  {
    v21 = v20;
    v22 = v19;
    v23 = v18;
    v24 = v17;
    v25 = v16;
    v26 = v15;
    v27 = v28;
    sub_2703F9848(v20, v19, v18, v17, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D08D8, &qword_2705E5870);
    sub_2703F9898();
    OUTLINED_FUNCTION_11_11();
    sub_2703F8F8C(v21, v22, v23, v24, v25);
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_11_3();
}

void sub_2703F8B6C()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0968, &qword_2705E5880);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2703F9AFC();
  sub_2705D8484();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    v29 = 0;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0978, &qword_2705E5888);
    LOBYTE(v18) = 0;
    sub_2703F9B80();
    OUTLINED_FUNCTION_17_6();
    v6 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D08D8, &qword_2705E5870);
    v21 = 1;
    sub_2703F9350();
    OUTLINED_FUNCTION_17_6();
    v7 = OUTLINED_FUNCTION_2_12();
    v8(v7);
    v9 = v22;
    v10 = v23;
    v17 = v22;
    v11 = v24;
    v12 = v25;
    v13 = v27;
    v16 = v26;
    v34 = v27;
    v15 = v28;
    sub_2703F8F8C(0, 0, 0, 0, 0);
    *&v18 = v6;
    *(&v18 + 1) = v9;
    *&v19 = v10;
    *(&v19 + 1) = v11;
    *v20 = v12;
    *&v20[8] = v16;
    *&v20[16] = v13;
    v20[24] = v15;
    v14 = v19;
    *v4 = v18;
    v4[1] = v14;
    v4[2] = *v20;
    *(v4 + 41) = *&v20[9];
    sub_2703F9D3C(&v18, &v29);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v29 = v6;
    *&v30 = v17;
    *(&v30 + 1) = v10;
    *&v31 = v11;
    *(&v31 + 1) = v12;
    *&v32 = v16;
    *(&v32 + 1) = v34;
    v33 = v15;
  }

  sub_2703F9B50(&v29);
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2703F8E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703F88B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703F8E48(uint64_t a1)
{
  v2 = sub_2703F9AFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703F8E84(uint64_t a1)
{
  v2 = sub_2703F9AFC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2703F8F38()
{
  result = qword_2807D0890;
  if (!qword_2807D0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0890);
  }

  return result;
}

void sub_2703F8F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

unint64_t sub_2703F8FDC()
{
  result = qword_2807D08A0;
  if (!qword_2807D08A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0828, &qword_2705E5678);
    sub_2703F9060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D08A0);
  }

  return result;
}

unint64_t sub_2703F9060()
{
  result = qword_2807D08A8;
  if (!qword_2807D08A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0848, &qword_2705E56A8);
    sub_2703FCB20(&unk_2807D08B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D08A8);
  }

  return result;
}

unint64_t sub_2703F9114()
{
  result = qword_2807D08C0;
  if (!qword_2807D08C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D08B8, &qword_2705E5868);
    sub_2703F9198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D08C0);
  }

  return result;
}

unint64_t sub_2703F9198()
{
  result = qword_2807D08C8;
  if (!qword_2807D08C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0858, &unk_2705E56B0);
    sub_2703E0E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D08C8);
  }

  return result;
}

unint64_t sub_2703F921C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF2D8, &unk_2705DF6E0);
    sub_2703FCF04(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2703F92B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_14_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_10_10();
  v6(v5);
  return v4;
}

unint64_t sub_2703F92FC()
{
  result = qword_2807D08D0;
  if (!qword_2807D08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D08D0);
  }

  return result;
}

unint64_t sub_2703F9350()
{
  result = qword_2807D08E0;
  if (!qword_2807D08E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D08D8, &qword_2705E5870);
    sub_2703F93D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D08E0);
  }

  return result;
}

unint64_t sub_2703F93D4()
{
  result = qword_2807D08E8;
  if (!qword_2807D08E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0868, &qword_2705E56C0);
    sub_2703F92FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D08E8);
  }

  return result;
}

unint64_t sub_2703F9458()
{
  result = qword_2807D08F0;
  if (!qword_2807D08F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0898, &qword_2705E5860);
    sub_2703F94DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D08F0);
  }

  return result;
}

unint64_t sub_2703F94DC()
{
  result = qword_2807D08F8;
  if (!qword_2807D08F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0878, &qword_2705E56C8);
    sub_2703F9560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D08F8);
  }

  return result;
}

unint64_t sub_2703F9560()
{
  result = qword_2807D0900;
  if (!qword_2807D0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0900);
  }

  return result;
}

unint64_t sub_2703F95B4()
{
  result = qword_2807D0910;
  if (!qword_2807D0910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0828, &qword_2705E5678);
    sub_2703F9638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0910);
  }

  return result;
}

unint64_t sub_2703F9638()
{
  result = qword_2807D0918;
  if (!qword_2807D0918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0848, &qword_2705E56A8);
    sub_2703FCB20(&unk_2807D0920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0918);
  }

  return result;
}

unint64_t sub_2703F96EC()
{
  result = qword_2807D0928;
  if (!qword_2807D0928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D08B8, &qword_2705E5868);
    sub_2703F9770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0928);
  }

  return result;
}

unint64_t sub_2703F9770()
{
  result = qword_2807D0930;
  if (!qword_2807D0930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0858, &unk_2705E56B0);
    sub_2703E10C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0930);
  }

  return result;
}

unint64_t sub_2703F97F4()
{
  result = qword_2807D0938;
  if (!qword_2807D0938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0938);
  }

  return result;
}

void sub_2703F9848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

unint64_t sub_2703F9898()
{
  result = qword_2807D0940;
  if (!qword_2807D0940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D08D8, &qword_2705E5870);
    sub_2703F991C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0940);
  }

  return result;
}

unint64_t sub_2703F991C()
{
  result = qword_2807D0948;
  if (!qword_2807D0948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0868, &qword_2705E56C0);
    sub_2703F97F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0948);
  }

  return result;
}

unint64_t sub_2703F99A0()
{
  result = qword_2807D0950;
  if (!qword_2807D0950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0898, &qword_2705E5860);
    sub_2703F9A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0950);
  }

  return result;
}

unint64_t sub_2703F9A24()
{
  result = qword_2807D0958;
  if (!qword_2807D0958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0878, &qword_2705E56C8);
    sub_2703F9AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0958);
  }

  return result;
}

unint64_t sub_2703F9AA8()
{
  result = qword_2807D0960;
  if (!qword_2807D0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0960);
  }

  return result;
}

unint64_t sub_2703F9AFC()
{
  result = qword_2807D0970;
  if (!qword_2807D0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0970);
  }

  return result;
}

unint64_t sub_2703F9B80()
{
  result = qword_2807D0980;
  if (!qword_2807D0980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0978, &qword_2705E5888);
    sub_2703F9C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0980);
  }

  return result;
}

unint64_t sub_2703F9C04()
{
  result = qword_2807D0988;
  if (!qword_2807D0988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0990, &qword_2705E5890);
    sub_2703F9C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0988);
  }

  return result;
}

unint64_t sub_2703F9C88()
{
  result = qword_2807D0998;
  if (!qword_2807D0998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D09A0, &qword_2705E5898);
    sub_2703FCB20(&unk_2807D08B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0998);
  }

  return result;
}

unint64_t sub_2703F9D74()
{
  result = qword_2807D09B0;
  if (!qword_2807D09B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0978, &qword_2705E5888);
    sub_2703F9DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D09B0);
  }

  return result;
}

unint64_t sub_2703F9DF8()
{
  result = qword_2807D09B8;
  if (!qword_2807D09B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0990, &qword_2705E5890);
    sub_2703F9E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D09B8);
  }

  return result;
}

unint64_t sub_2703F9E7C()
{
  result = qword_2807D09C0;
  if (!qword_2807D09C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D09A0, &qword_2705E5898);
    sub_2703FCB20(&unk_2807D0920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D09C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DetailCardFootnote.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2703F9FFCLL);
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

_BYTE *storeEnumTagSinglePayload for DetailCardComponentModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2703FA100);
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

unint64_t sub_2703FA13C()
{
  result = qword_2807D09C8;
  if (!qword_2807D09C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D09C8);
  }

  return result;
}

unint64_t sub_2703FA194()
{
  result = qword_2807D09D0;
  if (!qword_2807D09D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D09D0);
  }

  return result;
}

unint64_t sub_2703FA1EC()
{
  result = qword_2807D09D8;
  if (!qword_2807D09D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D09D8);
  }

  return result;
}

unint64_t sub_2703FA244()
{
  result = qword_2807D09E0;
  if (!qword_2807D09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D09E0);
  }

  return result;
}

unint64_t sub_2703FA29C()
{
  result = qword_2807D09E8;
  if (!qword_2807D09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D09E8);
  }

  return result;
}

unint64_t sub_2703FA2F4()
{
  result = qword_2807D09F0;
  if (!qword_2807D09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D09F0);
  }

  return result;
}

unint64_t sub_2703FA3A8()
{
  result = qword_2807D09F8;
  if (!qword_2807D09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D09F8);
  }

  return result;
}

void *sub_2703FA3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0A08, &qword_2705E5BA0);
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_21_2();
  sub_2703FA500(a1, v2);
  sub_2705D60A4();
  OUTLINED_FUNCTION_15_7();
  LOBYTE(__src[1]) = v7;
  __src[0] = 0;
  sub_2705D5094(__src);
  sub_2703FC3D4(v2, a2, &qword_2807D0A08, &qword_2705E5BA0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0A10, &qword_2705E5BA8);
  return memcpy((a2 + *(v8 + 36)), __src, 0x70uLL);
}

void sub_2703FA500(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2705D5064();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v5);
  v7 = &__src[-2] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_2705D53C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0A18, &qword_2705E5BB0);
  sub_2703FA894(a1, a2 + *(v8 + 44));
  sub_2705D6084();
  OUTLINED_FUNCTION_15_7();
  BYTE8(v40) = v9;
  *&v40 = 0;
  sub_2705D5094(__src);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0A20, &qword_2705E5BB8);
  memcpy((a2 + *(v10 + 36)), __src, 0x70uLL);
  if (qword_2807CE7C0 != -1)
  {
    swift_once();
  }

  v11 = qword_2807D07E0;
  v12 = sub_2705D56C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0A28, &qword_2705E5BC0);
  OUTLINED_FUNCTION_21_4();
  *v13 = v11;
  *(v13 + 8) = v12;
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0A30, &qword_2705E5BC8) + 36));
  v15 = *(v4 + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_2705D5344();
  OUTLINED_FUNCTION_14();
  v19 = *(v18 + 104);
  v19(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #26.0 }

  v40 = _Q0;
  *v14 = _Q0;
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF620, &unk_2705E2CB0) + 36)] = 256;
  v19(&v7[*(v4 + 20)], v16, v17);
  *v7 = v40;
  v25 = qword_2807CE800;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_2807D0820;
  sub_2705D4DC4();
  v27 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0A08, &qword_2705E5BA0) + 36);
  v28 = MEMORY[0x277CDFC08];
  sub_2703FC320(v7, v27, MEMORY[0x277CDFC08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5C0, &unk_2705E0530);
  OUTLINED_FUNCTION_21_4();
  v29 = v43;
  *v30 = v42;
  *(v30 + 16) = v29;
  *(v30 + 32) = v44;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5C8, &unk_2705E5BD0);
  *(v27 + *(v31 + 52)) = v26;
  *(v27 + *(v31 + 56)) = 256;

  v32 = sub_2705D60A4();
  v34 = v33;
  sub_2703FC37C(v7, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5D0, &qword_2705E0540);
  OUTLINED_FUNCTION_21_4();
  *v35 = v32;
  v35[1] = v34;
  v36 = sub_2705D60A4();
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0A38, &qword_2705E5BE0);
  OUTLINED_FUNCTION_21_4();
  *v39 = v36;
  v39[1] = v38;
}

uint64_t sub_2703FA894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0A40, &qword_2705E5BE8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0828, &qword_2705E5678);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0848, &qword_2705E56A8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v48 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v43 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  v21 = type metadata accessor for DetailCardComponentModel(0);
  v22 = a1;
  sub_2703FC5C0(a1 + *(v21 + 24), v9, &qword_2807D0828, &qword_2705E5678);
  sub_2703FC3D4(v9, v15, &qword_2807D0848, &qword_2705E56A8);
  v23 = sub_2705D6734();
  if (__swift_getEnumTagSinglePayload(v15, 1, v23) == 1)
  {
    sub_2703FC60C(v15, &qword_2807D0848);
    v24 = 1;
  }

  else
  {
    sub_2705D6714();
    (*(*(v23 - 8) + 8))(v15, v23);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v18, v24, 1, v23);
  v44 = v20;
  sub_2703FC3D4(v18, v20, &qword_2807D0848, &qword_2705E56A8);
  v45 = sub_2705D53C4();
  v51 = 0;
  sub_2703FB1FC(a1, v55);
  memcpy(v52, v55, 0x1A9uLL);
  memcpy(v53, v55, 0x1A9uLL);
  sub_2703FC5C0(v52, v54, &qword_2807D0A48, &qword_2705E5BF0);
  sub_2703FC60C(v53, &qword_2807D0A48);
  memcpy(&v50[7], v52, 0x1A9uLL);
  v25 = v51;
  v26 = sub_2705D56B4();
  sub_2705D4D34();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v47;
  sub_2703FADE8(v22, v47);
  v36 = v48;
  sub_2703FC5C0(v20, v48, &qword_2807D0848, &qword_2705E56A8);
  v37 = v46;
  sub_2703FC5C0(v35, v46, &qword_2807D0A40, &qword_2705E5BE8);
  v38 = v49;
  sub_2703FC5C0(v36, v49, &qword_2807D0848, &qword_2705E56A8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0A50, &qword_2705E5BF8);
  v40 = *(v39 + 48);
  v41 = v45;
  v54[0] = v45;
  v54[1] = 0x4020000000000000;
  LOBYTE(v54[2]) = v25;
  memcpy(&v54[2] + 1, v50, 0x1B0uLL);
  LOBYTE(v54[57]) = v26;
  v54[58] = v28;
  v54[59] = v30;
  v54[60] = v32;
  v54[61] = v34;
  LOBYTE(v54[62]) = 0;
  memcpy((v38 + v40), v54, 0x1F1uLL);
  sub_2703FC5C0(v37, v38 + *(v39 + 64), &qword_2807D0A40, &qword_2705E5BE8);
  sub_2703FC5C0(v54, v55, &qword_2807D0A58, &qword_2705E5C00);
  sub_2703FC60C(v35, &qword_2807D0A40);
  sub_2703FC60C(v44, &qword_2807D0848);
  sub_2703FC60C(v37, &qword_2807D0A40);
  v55[0] = v41;
  v55[1] = 0x4020000000000000;
  LOBYTE(v55[2]) = v25;
  memcpy(&v55[2] + 1, v50, 0x1B0uLL);
  v56 = v26;
  v57 = v28;
  v58 = v30;
  v59 = v32;
  v60 = v34;
  v61 = 0;
  sub_2703FC60C(v55, &qword_2807D0A58);
  return sub_2703FC60C(v36, &qword_2807D0848);
}

uint64_t sub_2703FADE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0A60, &qword_2705E5C08);
  OUTLINED_FUNCTION_23_0(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0A68, &qword_2705E5C10);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = v34 - v10;
  v34[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0A70, &qword_2705E5C18);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21_2();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0A78, &qword_2705E5C20);
  OUTLINED_FUNCTION_14();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v34 - v17;
  v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0A80, &qword_2705E5C28);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  v21 = v34 - v20;
  v22 = (a1 + *(type metadata accessor for DetailCardComponentModel(0) + 44));
  v23 = *v22;
  if (*v22 == 1 || v22[2] || (OUTLINED_FUNCTION_18_4(), !v23) || *(v23 + 16))
  {
    *v7 = sub_2705D53D4();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0A88, &qword_2705E5C30);
    sub_2703FB640(a1, &v7[*(v24 + 44)]);
    v25 = sub_2705D56D4();
    if (*v22 != 1 && !v22[2])
    {
      OUTLINED_FUNCTION_18_4();
    }

    sub_2705D4D34();
    OUTLINED_FUNCTION_13_4();
    sub_2703FC3D4(v7, v11, &qword_2807D0A60, &qword_2705E5C08);
    v26 = &v11[*(v8 + 36)];
    *v26 = v25;
    OUTLINED_FUNCTION_14_10(v26);
    v27 = sub_2705D56B4();
    sub_2705D4D34();
    OUTLINED_FUNCTION_13_4();
    sub_2703FC3D4(v11, v2, &qword_2807D0A68, &qword_2705E5C10);
    v28 = (v2 + *(v34[0] + 36));
    *v28 = v27;
    OUTLINED_FUNCTION_14_10(v28);
    v29 = sub_2705D56E4();
    sub_2705D4D34();
    OUTLINED_FUNCTION_13_4();
    sub_2703FC3D4(v2, v16, &qword_2807D0A70, &qword_2705E5C18);
    v30 = &v16[*(v35 + 36)];
    *v30 = v29;
    OUTLINED_FUNCTION_14_10(v30);
    sub_2703FC3D4(v16, v18, &qword_2807D0A78, &qword_2705E5C20);
    sub_2703FC5C0(v18, v21, &qword_2807D0A78, &qword_2705E5C20);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_20();
    sub_2703FC450(v31);
    sub_2705D5434();
    return sub_2703FC60C(v18, &qword_2807D0A78);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_20();
    sub_2703FC450(v33);
    return sub_2705D5434();
  }
}

uint64_t sub_2703FB1FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DetailCardComponentModel(0);
  v5 = a1 + *(v4 + 36);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  v9 = *(v5 + 48);
  *&v34[0] = *v5;
  *(&v34[0] + 1) = v6;
  LOBYTE(v34[1]) = v7;
  *(&v34[1] + 1) = v8;
  v34[2] = *(v5 + 32);
  LOBYTE(v34[3]) = v9;
  v10 = qword_2807CE7F0;

  if (v10 != -1)
  {
    swift_once();
  }

  if (qword_2807CE7C8 != -1)
  {
    swift_once();
  }

  v11 = qword_2807D07E8;
  if (qword_2807CE7F8 != -1)
  {
    swift_once();
  }

  sub_27053A9B8(0, v11, __src);

  memcpy(__dst, __src, 0xB9uLL);
  v12 = sub_2705D56D4();
  sub_2705D4D34();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a1 + *(v4 + 40);
  v22 = *(v21 + 8);
  if (v22)
  {
    v31 = v12;
    v32 = a2;
    v23 = *v21;
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    v26 = *(v21 + 32);
    v27 = *(v21 + 40);
    v28 = *(v21 + 48);
    __src[0] = *v21;
    __src[1] = v22;
    LOBYTE(__src[2]) = v24;
    __src[3] = v25;
    __src[4] = v26;
    __src[5] = v27;
    LOBYTE(__src[6]) = v28 & 1;
    v29 = qword_2807CE7E0;

    if (v29 != -1)
    {
      swift_once();
    }

    if (qword_2807CE7E8 != -1)
    {
      swift_once();
    }

    sub_27053A9B8(0, v11, v34);
    sub_2703F8F8C(v23, v22, v24, v25, v26);
    memcpy(__src, v34, 0xB9uLL);
    CGSizeMake();
    memcpy(v45, __src, sizeof(v45));
    a2 = v32;
    v12 = v31;
  }

  else
  {
    sub_2703FCB64(v45);
  }

  memcpy(v36, v45, 0xB9uLL);
  memcpy(v34, __dst, 0xC0uLL);
  LOBYTE(v34[12]) = v12;
  *(&v34[12] + 1) = *v46;
  DWORD1(v34[12]) = *&v46[3];
  *(&v34[12] + 1) = v14;
  *&v34[13] = v16;
  *(&v34[13] + 1) = v18;
  *&v34[14] = v20;
  BYTE8(v34[14]) = 0;
  memcpy(v33, v34, 0xE9uLL);
  memcpy(v35, v45, 0xB9uLL);
  memcpy(&v33[240], v45, 0xB9uLL);
  memcpy(a2, v33, 0x1A9uLL);
  sub_2703FC5C0(v34, __src, &qword_2807D0B18, &qword_2705E5C98);
  sub_2703FC5C0(v35, __src, &qword_2807D0B20, &qword_2705E5CA0);
  sub_2703FC60C(v36, &qword_2807D0B20);
  memcpy(__src, __dst, sizeof(__src));
  v38 = v12;
  *v39 = *v46;
  *&v39[3] = *&v46[3];
  v40 = v14;
  v41 = v16;
  v42 = v18;
  v43 = v20;
  v44 = 0;
  return sub_2703FC60C(__src, &qword_2807D0B18);
}

uint64_t sub_2703FB640@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0AB0, &qword_2705E5C38);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0AB8, &qword_2705E5C40);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v36 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v36 - v14;
  v16 = a1 + *(type metadata accessor for DetailCardComponentModel(0) + 44);
  v17 = *(v16 + 16);
  if (*v16 == 1 || v17 == 0)
  {
    sub_2703FC584(v47);
  }

  else
  {
    v42 = a2;
    v19 = *(v16 + 24);
    v20 = *(v16 + 32);
    v22 = *(v16 + 40);
    v21 = *(v16 + 48);
    v23 = *(v16 + 56);
    v45[0] = *(v16 + 8);
    v45[1] = v17;
    LOBYTE(v45[2]) = v19;
    v45[3] = v20;
    v45[4] = v22;
    v45[5] = v21;
    LOBYTE(v45[6]) = v23 & 1;
    v38 = v45[0];
    v39 = v19;
    v36[1] = v21;
    v37 = v20;
    sub_2703F9848(v45[0], v17, v19, v20, v22);
    if (qword_2807CE7D0 != -1)
    {
      swift_once();
    }

    v40 = a1;
    if (qword_2807CE7C8 != -1)
    {
      swift_once();
    }

    v41 = v7;
    v24 = qword_2807D07E8;
    if (qword_2807CE7D8 != -1)
    {
      swift_once();
    }

    sub_27053A9B8(0, v24, v47);
    memcpy(v44, v47, 0xB9uLL);
    v25 = sub_2705D56E4();
    sub_2705D4D34();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    sub_2703F8F8C(v38, v17, v39, v37, v22);
    memcpy(v45, v44, 0xC0uLL);
    LOBYTE(v45[24]) = v25;
    v45[25] = v27;
    v45[26] = v29;
    v45[27] = v31;
    v45[28] = v33;
    LOBYTE(v45[29]) = 0;
    CGSizeMake();
    memcpy(v47, v45, 0xE9uLL);
    v7 = v41;
    a2 = v42;
    a1 = v40;
  }

  *v6 = sub_2705D52D4();
  *(v6 + 1) = 0x4020000000000000;
  v6[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0AC0, &qword_2705E5C48);
  sub_2703FBB10(a1);
  sub_2705D60B4();
  sub_2705D5094(v46);
  sub_2703FC3D4(v6, v13, &qword_2807D0AB0, &qword_2705E5C38);
  memcpy(&v13[*(v7 + 36)], v46, 0x70uLL);
  sub_2703FC3D4(v13, v15, &qword_2807D0AB8, &qword_2705E5C40);
  memcpy(v43, v47, sizeof(v43));
  sub_2703FC5C0(v15, v10, &qword_2807D0AB8, &qword_2705E5C40);
  memcpy(v44, v43, 0xE9uLL);
  memcpy(a2, v43, 0xE9uLL);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0AC8, qword_2705E5C50);
  sub_2703FC5C0(v10, &a2[*(v34 + 48)], &qword_2807D0AB8, &qword_2705E5C40);
  sub_2703FC5C0(v44, v45, &qword_2807D0AD0, &qword_270602630);
  sub_2703FC60C(v15, &qword_2807D0AB8);
  sub_2703FC60C(v10, &qword_2807D0AB8);
  memcpy(v45, v43, 0xE9uLL);
  return sub_2703FC60C(v45, &qword_2807D0AD0);
}

uint64_t sub_2703FBB10(uint64_t a1)
{
  v2 = type metadata accessor for DetailCardComponentModel(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  if (*(a1 + *(MEMORY[0x28223BE20](v2 - 8) + 52)) >= 2uLL)
  {
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v6 = *(v5 + 16);

  v10[0] = 0;
  v10[1] = v6;
  swift_getKeyPath();
  sub_2703FC320(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailCardComponentModel);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_2703FC82C(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0AD8, &qword_2705E5C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0AE0, &qword_2705E5C88);
  sub_2703FC90C();
  sub_2703FC9EC();
  return sub_2705D5F74();
}

uint64_t sub_2703FBCD0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2705D5344();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2705D4894();
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2705D6734();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  v19 = *a1;
  result = type metadata accessor for DetailCardComponentModel(0);
  v21 = *(a2 + *(result + 44));
  if (v21 >= 2)
  {
    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *(v21 + 16))
    {
      (*(v13 + 16))(v16, v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v19, v12);
      sub_2705D6714();
      v23 = *(v13 + 8);
      v23(v16, v12);
      (*(v26 + 104))(v8, *MEMORY[0x277CE0118], v27);
      sub_2705D4884();
      sub_2703FCB20(&qword_2807D0B00);
      sub_2703FCB20(&unk_2807D0B08);
      sub_2705D59C4();
      (*(v28 + 8))(v11, v9);
      v23(v18, v12);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0B10, &qword_2705E5C90);
      return __swift_storeEnumTagSinglePayload(a3, 0, 1, v24);
    }

    __break(1u);
  }

  else
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0B10, &qword_2705E5C90);

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v22);
  }

  return result;
}

uint64_t sub_2703FC0B4()
{
  v0 = [objc_opt_self() secondarySystemBackgroundColor];
  result = sub_2705D5C14();
  qword_2807D07E0 = result;
  return result;
}

uint64_t sub_2703FC0F4(uint64_t a1)
{
  result = sub_2705D5D54();
  qword_2807D07E8 = result;
  return result;
}

uint64_t sub_2703FC114()
{
  result = sub_2705D58B4();
  qword_2807D07F0 = result;
  return result;
}

uint64_t sub_2703FC154(uint64_t a1)
{
  result = sub_2705D5754();
  qword_2807D0800 = result;
  return result;
}

uint64_t sub_2703FC194(uint64_t a1)
{
  result = sub_2705D5754();
  qword_2807D0810 = result;
  return result;
}

uint64_t sub_2703FC1D4()
{
  sub_2705D5C74();
  v0 = sub_2705D5D44();

  qword_2807D0820 = v0;
  return result;
}

unint64_t sub_2703FC220()
{
  result = qword_2807D0A00;
  if (!qword_2807D0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0A00);
  }

  return result;
}

uint64_t sub_2703FC320(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_10_10();
  v5(v4);
  return a2;
}

uint64_t sub_2703FC37C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2703FC3D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_14_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_10_10();
  v6(v5);
  return v4;
}

unint64_t sub_2703FC450(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_22_3(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2703FC4CC()
{
  result = qword_2807D0AA0;
  if (!qword_2807D0AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0A68, &qword_2705E5C10);
    sub_2703FCF04(&unk_2807D0AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0AA0);
  }

  return result;
}

double sub_2703FC584(uint64_t a1)
{
  bzero(a1, 0xB8uLL);
  *(a1 + 184) = 255;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 217) = 0u;
  return result;
}

uint64_t sub_2703FC5C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_14_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_10_10();
  v6(v5);
  return v4;
}

uint64_t sub_2703FC60C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_22_3(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_14();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2703FC660()
{
  v2 = type metadata accessor for DetailCardComponentModel(0);
  v3 = (v0 + ((*(*(v2 - 1) + 80) + 16) & ~*(*(v2 - 1) + 80)));
  __swift_destroy_boxed_opaque_existential_1(v3);
  v4 = v2[5];
  v5 = sub_2705D6A54();
  if (!OUTLINED_FUNCTION_26_3(v5))
  {
    (*(*(v1 - 8) + 8))(&v3[v4], v1);
  }

  v6 = v2[6];
  v7 = sub_2705D6734();
  if (!OUTLINED_FUNCTION_26_3(v7))
  {
    (*(*(v1 - 8) + 8))(&v3[v6], v1);
  }

  v8 = &v3[v2[8]];
  if (*(v8 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  if (*&v3[v2[10] + 8])
  {
  }

  v9 = &v3[v2[11]];
  if (*v9 != 1)
  {

    if (*(v9 + 2))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_2703FC82C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailCardComponentModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2703FC890@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DetailCardComponentModel(0);
  OUTLINED_FUNCTION_23_0(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_2703FBCD0(a1, v7, a2);
}

unint64_t sub_2703FC90C()
{
  result = qword_2807D0AE8;
  if (!qword_2807D0AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0AD8, &qword_2705E5C80);
    sub_2703FC998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0AE8);
  }

  return result;
}

unint64_t sub_2703FC998()
{
  result = qword_2807D0AF0;
  if (!qword_2807D0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0AF0);
  }

  return result;
}

unint64_t sub_2703FC9EC()
{
  result = qword_2807D0AF8;
  if (!qword_2807D0AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0AE0, &qword_2705E5C88);
    sub_2705D6734();
    sub_2705D4894();
    sub_2703FCB20(&qword_2807D0B00);
    sub_2703FCB20(&unk_2807D0B08);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0AF8);
  }

  return result;
}

unint64_t sub_2703FCB20(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2703FCB98()
{
  result = qword_2807D0B28;
  if (!qword_2807D0B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0A10, &qword_2705E5BA8);
    sub_2703FCC24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0B28);
  }

  return result;
}

unint64_t sub_2703FCC24()
{
  result = qword_2807D0B30;
  if (!qword_2807D0B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0A08, &qword_2705E5BA0);
    sub_2703FCCDC();
    sub_2703FCF04(&unk_2807D0B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0B30);
  }

  return result;
}

unint64_t sub_2703FCCDC()
{
  result = qword_2807D0B38;
  if (!qword_2807D0B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0A30, &qword_2705E5BC8);
    sub_2703FCD94();
    sub_2703FCF04(&qword_2807D0080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0B38);
  }

  return result;
}

unint64_t sub_2703FCD94()
{
  result = qword_2807D0B40;
  if (!qword_2807D0B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0A28, &qword_2705E5BC0);
    sub_2703FCE4C();
    sub_2703FCF04(&qword_2807D0B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0B40);
  }

  return result;
}

unint64_t sub_2703FCE4C()
{
  result = qword_2807D0B48;
  if (!qword_2807D0B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0A20, &qword_2705E5BB8);
    sub_2703FCF04(&unk_2807D0B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0B48);
  }

  return result;
}

unint64_t sub_2703FCF04(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_22_3(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_16(uint64_t a1)
{

  return sub_2705D8084();
}

uint64_t OUTLINED_FUNCTION_9_12()
{

  return sub_2705D7FA4();
}

uint64_t OUTLINED_FUNCTION_11_11()
{

  return sub_2705D8084();
}

__n128 OUTLINED_FUNCTION_13_8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *(v1 - 160) = *a1;
  *(v1 - 144) = v2;
  return *(a1 + 32);
}

void OUTLINED_FUNCTION_14_10(uint64_t a1@<X8>)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return sub_2705D7FA4();
}

void OUTLINED_FUNCTION_18_4()
{
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];

  sub_2703F8F8C(v2, 0, v3, v4, v5);
}

void OUTLINED_FUNCTION_24_4()
{
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[21];

  sub_2703F8F8C(v2, v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_26_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t sub_2703FD0D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2705D6774();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2703FD170(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2705D6774();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DialogAction(uint64_t a1)
{
  result = qword_2807D0B78;
  if (!qword_2807D0B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2703FD23C(uint64_t a1)
{
  result = sub_2703FD2D8();
  if (v2 <= 0x3F)
  {
    result = sub_2703BD854();
    if (v3 <= 0x3F)
    {
      result = sub_2705D6774();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2703FD2D8()
{
  result = qword_2807D0B88[0];
  if (!qword_2807D0B88[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_2807D0B88);
  }

  return result;
}

unint64_t sub_2703FD330()
{
  result = qword_2807CF510;
  if (!qword_2807CF510)
  {
    type metadata accessor for DialogAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF510);
  }

  return result;
}

uint64_t sub_2703FD388(void *a1, uint64_t a2, void (*a3)(void, void, void))
{
  v5 = sub_2705D6784();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(*a1, a1[1], a1[2]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038, &unk_2705E0130);
  (*(v6 + 104))(v8, *MEMORY[0x277D21CA8], v5);
  return sub_2705D70C4();
}

_BYTE *sub_2703FD4A0(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2703FD53CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2703FD580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_2807D0C10;
  if (!qword_2807D0C10)
  {
    sub_2703FD5D8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0C10);
  }

  return result;
}

void sub_2703FD5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_2807D42C0)
  {
    v4 = _s12CastingErrorOMa(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_2807D42C0);
    }
  }
}

uint64_t sub_2703FD620(uint64_t a1, unsigned __int8 a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(double))
{
  if (a2 >= 2u)
  {
    return a3(a1);
  }

  else
  {
    return a5(*&a1);
  }
}

uint64_t sub_2703FD67C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C18, &unk_2705E5E60);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2703FD724(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C18, &unk_2705E5E60);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DisplayObserverModifier(uint64_t a1)
{
  result = qword_2807D0C20;
  if (!qword_2807D0C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2703FD7FC(uint64_t a1)
{
  sub_2703FD8E0(319, &qword_2807D0C30, type metadata accessor for ViewTransitionTracker, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_2703FD8E0(319, &qword_2807D0C38, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2703FD8E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2703FD960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a1;
  v31 = a2;
  v30 = sub_2705D4D64();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v28 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DisplayObserverModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C40, &qword_2705E5ED8);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v27 = v2;
  sub_2703FDEDC(v2, v11);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_2703FDF44(v11, v17 + v16);
  sub_2703FDEDC(v3, v9);
  v18 = swift_allocObject();
  sub_2703FDF44(v9, v18 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C50, &qword_2705E5EE8);
  OUTLINED_FUNCTION_14();
  (*(v19 + 16))(v15, v29);
  v20 = &v15[*(v12 + 36)];
  *v20 = sub_2703FDFA8;
  *(v20 + 1) = v17;
  *(v20 + 2) = sub_2703FDFC0;
  *(v20 + 3) = v18;
  *(v20 + 2) = 0u;
  *(v20 + 3) = 0u;
  v21 = v27;
  v22 = v28;
  sub_2703FE04C(v28);
  sub_2703FDEDC(v21, v11);
  v23 = swift_allocObject();
  sub_2703FDF44(v11, v23 + v16);
  sub_2703FE3D0();
  sub_2703FE514();
  v24 = v22;
  v25 = v30;
  sub_2705D5C04();

  (*(v32 + 8))(v24, v25);
  return sub_2703FE56C(v15);
}

uint64_t sub_2703FDCB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C78, &unk_2705E5EF0);
  sub_2705D5E54();
  sub_27054C9D8(1, 2);
}

uint64_t sub_2703FDD14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C78, &unk_2705E5EF0);
  sub_2705D5E54();
  sub_27054CAD8(2u);
}

uint64_t sub_2703FDD74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2705D4D64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3[1];
  v11[2] = *a3;
  v11[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C78, &unk_2705E5EF0);
  sub_2705D5E54();
  (*(v5 + 104))(v7, *MEMORY[0x277CDD6B8], v4);
  v9 = sub_2705D4D54();
  (*(v5 + 8))(v7, v4);
  sub_27054C98C(v9 & 1);
}

uint64_t sub_2703FDEDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayObserverModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2703FDF44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayObserverModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2703FDFD8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DisplayObserverModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2703FE04C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2705D5254();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C48, &qword_2705E5EE0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_2703FE5D4(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2705D4D64();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2705D7A84();
    v13 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath(a1);

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for DisplayObserverModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C48, &qword_2705E5EE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D4D64();
    OUTLINED_FUNCTION_14();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2703FE350(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DisplayObserverModifier(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_2703FDD74(a1, a2, v6);
}

unint64_t sub_2703FE3D0()
{
  result = qword_2807D0C58;
  if (!qword_2807D0C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0C40, &qword_2705E5ED8);
    sub_2703FE45C();
    sub_2703FE4C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0C58);
  }

  return result;
}

unint64_t sub_2703FE45C()
{
  result = qword_2807D0C60;
  if (!qword_2807D0C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0C50, &qword_2705E5EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0C60);
  }

  return result;
}

unint64_t sub_2703FE4C0()
{
  result = qword_2807D0C68;
  if (!qword_2807D0C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0C68);
  }

  return result;
}

unint64_t sub_2703FE514()
{
  result = qword_2807D0C70;
  if (!qword_2807D0C70)
  {
    sub_2705D4D64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0C70);
  }

  return result;
}

uint64_t sub_2703FE56C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C40, &qword_2705E5ED8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2703FE5D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C48, &qword_2705E5EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2703FE644()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0C40, &qword_2705E5ED8);
  sub_2705D4D64();
  sub_2703FE3D0();
  sub_2703FE514();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2703FE6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C80, &qword_2705E5F00);
    OUTLINED_FUNCTION_46_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 36);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C88, &qword_2705E5F08);
      v11 = *(a3 + 40);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_2703FE7D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C80, &qword_2705E5F00);
    OUTLINED_FUNCTION_46_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 36);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C88, &qword_2705E5F08);
      v11 = *(a4 + 40);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_2703FE8D4(uint64_t a1)
{
  sub_2703FEA54(319, &qword_2807D0CA0, type metadata accessor for ComponentShelf, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2703FEE80(319, &qword_2807D0CA8, &unk_288058688, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2703FEA54(319, &qword_2807D0CB0, MEMORY[0x277D21BF8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2703FEA54(319, &qword_2807D0CB8, type metadata accessor for DynamicPageUnderlay, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2703FEA54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2703FEAD8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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