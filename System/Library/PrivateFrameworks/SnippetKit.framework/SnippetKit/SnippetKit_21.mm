uint64_t sub_26A2EC0DC(char a1)
{
  if (!a1)
  {
    return 0x7372657474656CLL;
  }

  if (a1 == 1)
  {
    return 0x73746361746E6F63;
  }

  return 0x6C6175736976;
}

uint64_t sub_26A2EC130(uint64_t a1, uint64_t a2)
{
  if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A425354();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A2EC1B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A425354();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A2EC240(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736C6175736976 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A425354();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A2EC2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A2EBFD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A2EC300(uint64_t a1)
{
  v2 = sub_26A2ED248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2EC33C(uint64_t a1)
{
  v2 = sub_26A2ED248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A2EC37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A2EC130(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A2EC3A8(uint64_t a1)
{
  v2 = sub_26A2ED2F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2EC3E4(uint64_t a1)
{
  v2 = sub_26A2ED2F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A2EC424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A2EC1B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A2EC450(uint64_t a1)
{
  v2 = sub_26A2ED344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2EC48C(uint64_t a1)
{
  v2 = sub_26A2ED344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A2EC4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A2EC240(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A2EC4F8(uint64_t a1)
{
  v2 = sub_26A2ED29C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2EC534(uint64_t a1)
{
  v2 = sub_26A2ED29C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactImage.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371F48, &qword_26A43AF00);
  OUTLINED_FUNCTION_24();
  v31 = v4;
  v32 = v3;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v30 = v28 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371F50, &qword_26A43AF08);
  OUTLINED_FUNCTION_24();
  v28[3] = v8;
  v29 = v7;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371F58, &qword_26A43AF10);
  OUTLINED_FUNCTION_24();
  v28[2] = v11;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v14 = v28 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371F60, &qword_26A43AF18);
  OUTLINED_FUNCTION_24();
  v34 = v16;
  v35 = v15;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  v18 = v1[1];
  v33 = *v1;
  v28[1] = v18;
  v19 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A2ED248();
  sub_26A425594();
  if (v19)
  {
    if (v19 == 1)
    {
      LOBYTE(v36) = 1;
      sub_26A2ED2F0();
      OUTLINED_FUNCTION_8_25(&type metadata for ContactImage.ContactsCodingKeys, &v36);
      v36 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A2ED47C(&qword_280371F98, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
      v20 = v29;
      sub_26A425154();
      v21 = OUTLINED_FUNCTION_27_16();
    }

    else
    {
      LOBYTE(v36) = 2;
      sub_26A2ED29C();
      v24 = v30;
      OUTLINED_FUNCTION_8_25(&type metadata for ContactImage.VisualCodingKeys, &v36);
      v36 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371F78, &unk_26A43AF20);
      sub_26A2ED398(&qword_280371F80, &qword_280371F88, &protocol conformance descriptor for VisualElement, MEMORY[0x277D83948]);
      v20 = v32;
      sub_26A425154();
      v22 = *(v31 + 8);
      v21 = v24;
    }

    v23 = v20;
  }

  else
  {
    LOBYTE(v36) = 0;
    sub_26A2ED344();
    OUTLINED_FUNCTION_8_25(&type metadata for ContactImage.LettersCodingKeys, &v36);
    sub_26A425114();
    OUTLINED_FUNCTION_6_25();
    v21 = v14;
    v23 = v10;
  }

  v22(v21, v23);
  v25 = OUTLINED_FUNCTION_9_32();
  return v26(v25);
}

uint64_t ContactImage.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v72 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371FA8, &qword_26A43AF30);
  OUTLINED_FUNCTION_24();
  v71 = v3;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v73 = &v62[-v5];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371FB0, &qword_26A43AF38);
  OUTLINED_FUNCTION_24();
  v70 = v6;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371FB8, &qword_26A43AF40);
  OUTLINED_FUNCTION_24();
  v67 = v9;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v12 = &v62[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371FC0, &unk_26A43AF48);
  OUTLINED_FUNCTION_24();
  v15 = v14;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  v18 = &v62[-v17];
  v19 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_26A2ED248();
  v20 = v75;
  sub_26A425574();
  if (v20)
  {
    goto LABEL_10;
  }

  v64 = v8;
  v65 = v12;
  v66 = v15;
  v75 = v18;
  sub_26A425074();
  result = sub_26A156098();
  if (v23 == v24 >> 1)
  {
LABEL_9:
    v36 = sub_26A424F34();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D6D8, &qword_26A42F120);
    *v38 = &type metadata for ContactImage;
    v39 = v75;
    sub_26A425004();
    sub_26A424F24();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_6_25();
    v40(v39, v13);
LABEL_10:
    v54 = v74;
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  if (v23 < (v24 >> 1))
  {
    v25 = v13;
    v26 = *(v22 + v23);
    sub_26A156088();
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    if (v28 == v30 >> 1)
    {
      v31 = v25;
      if (v26)
      {
        v32 = v75;
        v63 = v26;
        if (v26 == 1)
        {
          LOBYTE(v76) = 1;
          v33 = sub_26A2ED2F0();
          OUTLINED_FUNCTION_14_19(&type metadata for ContactImage.ContactsCodingKeys, &v76, v34, v35, v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
          sub_26A2ED47C(&qword_280371FD8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
          v44 = v68;
          sub_26A425054();
          swift_unknownObjectRelease();
          v48 = OUTLINED_FUNCTION_27_16();
          v49(v48, v44);
          v50 = OUTLINED_FUNCTION_3_42();
          v51(v50);
          v52 = 0;
          v53 = v76;
          v54 = v74;
        }

        else
        {
          LOBYTE(v76) = 2;
          v41 = sub_26A2ED29C();
          OUTLINED_FUNCTION_14_19(&type metadata for ContactImage.VisualCodingKeys, &v76, v42, v43, v41);
          v54 = v74;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371F78, &unk_26A43AF20);
          sub_26A2ED398(&qword_280371FC8, &qword_280371FD0, &protocol conformance descriptor for VisualElement, MEMORY[0x277D83978]);
          v46 = v69;
          sub_26A425054();
          v47 = v66;
          swift_unknownObjectRelease();
          v59 = OUTLINED_FUNCTION_27_16();
          v60(v59, v46);
          (*(v47 + 8))(v32, v25);
          v52 = 0;
          v53 = v76;
        }
      }

      else
      {
        LOBYTE(v76) = 0;
        sub_26A2ED344();
        sub_26A424FF4();
        v63 = 0;
        v45 = sub_26A425034();
        v54 = v74;
        v53 = v45;
        v52 = v55;
        swift_unknownObjectRelease();
        v56 = OUTLINED_FUNCTION_9_32();
        v57(v56);
        OUTLINED_FUNCTION_6_25();
        v58(v75, v31);
      }

      v61 = v72;
      *v72 = v53;
      v61[1] = v52;
      *(v61 + 16) = v63;
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v13 = v25;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

double ContactImage.init(_:)()
{
  OUTLINED_FUNCTION_10_37();
  sub_26A4243D4();
  swift_allocObject();
  sub_26A4243C4();
  sub_26A2ED4E8();
  sub_26A4243B4();
  sub_26A0E4784(v3, v2);

  if (!v1)
  {
    result = *&v5;
    *v0 = v5;
    *(v0 + 16) = v6;
  }

  return result;
}

uint64_t sub_26A2ED1E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A2ED248()
{
  result = qword_280371F68;
  if (!qword_280371F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371F68);
  }

  return result;
}

unint64_t sub_26A2ED29C()
{
  result = qword_280371F70;
  if (!qword_280371F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371F70);
  }

  return result;
}

unint64_t sub_26A2ED2F0()
{
  result = qword_280371F90;
  if (!qword_280371F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371F90);
  }

  return result;
}

unint64_t sub_26A2ED344()
{
  result = qword_280371FA0;
  if (!qword_280371FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371FA0);
  }

  return result;
}

uint64_t sub_26A2ED398(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280371F78, &unk_26A43AF20);
    sub_26A2ED434(a2, type metadata accessor for VisualElement, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26A2ED434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2ED47C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28036CB68, &qword_26A426580);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A2ED4E8()
{
  result = qword_280371FE0;
  if (!qword_280371FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371FE0);
  }

  return result;
}

uint64_t sub_26A2ED548(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_26A2ED588(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactImage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_26A2ED6E0(_BYTE *result, int a2, int a3)
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

unint64_t sub_26A2ED790()
{
  result = qword_280371FE8;
  if (!qword_280371FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371FE8);
  }

  return result;
}

unint64_t sub_26A2ED7E8()
{
  result = qword_280371FF0;
  if (!qword_280371FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371FF0);
  }

  return result;
}

unint64_t sub_26A2ED840()
{
  result = qword_280371FF8;
  if (!qword_280371FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371FF8);
  }

  return result;
}

unint64_t sub_26A2ED898()
{
  result = qword_280372000;
  if (!qword_280372000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372000);
  }

  return result;
}

unint64_t sub_26A2ED8F0()
{
  result = qword_280372008;
  if (!qword_280372008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372008);
  }

  return result;
}

unint64_t sub_26A2ED948()
{
  result = qword_280372010;
  if (!qword_280372010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372010);
  }

  return result;
}

unint64_t sub_26A2ED9A0()
{
  result = qword_280372018;
  if (!qword_280372018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372018);
  }

  return result;
}

unint64_t sub_26A2ED9F8()
{
  result = qword_280372020;
  if (!qword_280372020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372020);
  }

  return result;
}

unint64_t sub_26A2EDA50()
{
  result = qword_280372028;
  if (!qword_280372028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372028);
  }

  return result;
}

unint64_t sub_26A2EDAA8()
{
  result = qword_280372030;
  if (!qword_280372030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372030);
  }

  return result;
}

unint64_t sub_26A2EDB00()
{
  result = qword_280372038;
  if (!qword_280372038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372038);
  }

  return result;
}

unint64_t sub_26A2EDB58()
{
  result = qword_280372040[0];
  if (!qword_280372040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280372040);
  }

  return result;
}

void OUTLINED_FUNCTION_2_37(uint64_t a1@<X8>)
{
  strcpy((a1 - 80), "SystemPlugin");
  *(a1 - 67) = 0;
  *(a1 - 66) = -5120;
}

void OUTLINED_FUNCTION_5_35(uint64_t a1@<X8>)
{
  *(a1 - 32) = 0;
  *(a1 - 24) = 0xE000000000000000;
  *(a1 - 16) = 0;
  *(a1 - 14) = 0;
}

uint64_t OUTLINED_FUNCTION_8_25(uint64_t a1, uint64_t a2)
{

  return sub_26A4250A4();
}

uint64_t OUTLINED_FUNCTION_12_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_13_22()
{
}

uint64_t OUTLINED_FUNCTION_14_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26A424FF4();
}

uint64_t CodableAceObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v44[4] = *MEMORY[0x277D85DE8];
  type metadata accessor for CodableAceObject.CodingKeys(255, a2, a4, a5);
  OUTLINED_FUNCTION_0_56();
  swift_getWitnessTable();
  sub_26A425084();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A425574();
  v8 = v5;
  if (!v5)
  {
    sub_26A0E718C();
    sub_26A425054();
    v10 = v44[0];
    v9 = v44[1];
    v11 = objc_opt_self();
    v12 = sub_26A4246B4();
    v44[0] = 0;
    v13 = [v11 propertyListWithData:v12 options:0 format:0 error:v44];

    if (v13)
    {
      v40 = v9;
      v14 = v44[0];
      sub_26A424E64();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FB50, &qword_26A43B4F0);
      if (swift_dynamicCast())
      {
        v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v18 = sub_26A20A208(v43);
        if (v18)
        {
          v19 = v18;
          v20 = OUTLINED_FUNCTION_3_43();
          v21(v20);
          sub_26A0E4784(v10, v9);
          goto LABEL_16;
        }

        v26 = a2;
      }

      else
      {
        v26 = a2;
      }

      type metadata accessor for CodableAceObject.Error(0, v26, v15, v16);
      OUTLINED_FUNCTION_1_43();
      swift_getWitnessTable();
      v8 = swift_allocError();
      *v27 = 0;
      swift_willThrow();
      v24 = v10;
      v25 = v40;
    }

    else
    {
      v22 = v44[0];
      v23 = v9;
      v8 = sub_26A4245B4();

      swift_willThrow();
      v24 = v10;
      v25 = v23;
    }

    sub_26A0E4784(v24, v25);
    v28 = OUTLINED_FUNCTION_3_43();
    v29(v28);
  }

  if (qword_28036C5A0 != -1)
  {
    swift_once();
  }

  v30 = sub_26A424AE4();
  __swift_project_value_buffer(v30, qword_2803A8950);
  v31 = v8;
  v32 = sub_26A424AD4();
  v33 = sub_26A424E04();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44[0] = v35;
    *v34 = 136315138;
    swift_getErrorValue();
    v36 = sub_26A4254B4();
    v38 = sub_26A0E8788(v36, v37, v44);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_26A0B8000, v32, v33, "Failed to decode Ace Object; creating an empty Object instead. Error: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x26D65C950](v35, -1, -1);
    MEMORY[0x26D65C950](v34, -1, -1);
  }

  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_16:
  *a3 = v19;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void CodableAceObject.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 16);
  type metadata accessor for CodableAceObject.CodingKeys(255, v7, a3, a4);
  OUTLINED_FUNCTION_0_56();
  swift_getWitnessTable();
  sub_26A425184();
  OUTLINED_FUNCTION_24();
  v28 = v8;
  v29 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = [*v4 dictionary];
  if (v13)
  {
    v16 = v13;
    v27 = v5;
    v17 = objc_opt_self();
    v30[0] = 0;
    v18 = [v17 dataWithPropertyList:v16 format:200 options:0 error:v30];
    v19 = v30[0];
    if (v18)
    {
      v20 = sub_26A4246D4();
      v21 = a1;
      v23 = v22;

      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      sub_26A425594();
      v30[0] = v20;
      v30[1] = v23;
      sub_26A0E70D4();
      v24 = v28;
      sub_26A425154();
      (*(v29 + 8))(v12, v24);

      sub_26A0E4784(v20, v23);
    }

    else
    {
      v26 = v19;
      sub_26A4245B4();

      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for CodableAceObject.Error(0, v7, v14, v15);
    OUTLINED_FUNCTION_1_43();
    swift_getWitnessTable();
    swift_allocError();
    *v25 = 1;
    swift_willThrow();
  }
}

BOOL sub_26A2EE44C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26A424FE4();

  return v2 != 0;
}

uint64_t sub_26A2EE498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26A2EE50C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_26A2EE578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26A2EE5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_26A2EE658@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26A2EE44C(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_26A2EE68C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A2EE494(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A2EE6B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26A2EE70C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CodableAceObject.Error.hashValue.getter()
{
  v1 = *v0;
  sub_26A425504();
  MEMORY[0x26D65C340](v1);
  return sub_26A425554();
}

uint64_t sub_26A2EE7F8(uint64_t a1)
{
  sub_26A425504();
  CodableAceObject.Error.hash(into:)();
  return sub_26A425554();
}

uint64_t sub_26A2EE8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_26A2EE900(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_26A2EE9CC(_BYTE *result, int a2, int a3)
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

uint64_t SummaryItemPairV2.text1.getter()
{
  v2 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = &v18[-v4 - 8];
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v7 = type metadata accessor for _ProtoSummaryItem_PairV2(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v7 + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, v18);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_15(v5);
  if (v8)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v9 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
    OUTLINED_FUNCTION_15(v5);
    if (!v8)
    {
      sub_26A0E48F0(v5, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A2F1694();
  }

  return sub_26A2F1694();
}

void sub_26A2EECE8()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v24 = v4;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_38_12();
  OUTLINED_FUNCTION_142(*(v0 + *(v12 + 20)) + *v3, &v25);
  OUTLINED_FUNCTION_127_0();
  v13 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v13, v14, &unk_26A425BF0);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v15)
    {
      *v1 = MEMORY[0x277D84F90];
      *(v1 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v16 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
      OUTLINED_FUNCTION_38_0();
      if (!v15)
      {
        sub_26A0E48F0(v10, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A2F1694();
    }

    sub_26A2F1694();
    v3 = 0;
  }

  v23 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v24, v3, 1, v23);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2EEEFC(void *a1)
{
  v5 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_152_0();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v8 = type metadata accessor for _ProtoSummaryItem_PairV2(0);
  OUTLINED_FUNCTION_142(*(v2 + *(v8 + 20)) + *a1, v18);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_15(v3);
  if (v9)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
    OUTLINED_FUNCTION_15(v3);
    if (!v9)
    {
      sub_26A0E48F0(v3, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A2F1694();
  }

  return sub_26A2F1694();
}

void SummaryItemPairV2.action.getter()
{
  OUTLINED_FUNCTION_76();
  v16 = v3;
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v5 = OUTLINED_FUNCTION_41_2();
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_38_12();
  OUTLINED_FUNCTION_142(*(v0 + *(v11 + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v17);
  OUTLINED_FUNCTION_127_0();
  v12 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v12, v13, &off_26A427400);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v14)
    {
      *v2 = MEMORY[0x277D84F90];
      v2[1] = 0;
      v2[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v14)
      {
        sub_26A0E48F0(v9, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A2F1694();
    }

    sub_26A2F1694();
    v1 = 0;
  }

  v15 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v16, v1, 1, v15);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPairV2.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_PairV2(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

uint64_t SummaryItemPairV2.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_PairV2(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoSummaryItem_PairV2.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v177 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v9);
  v175 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v16 = OUTLINED_FUNCTION_41(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v21);
  v22 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  v30 = v163 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v32 = OUTLINED_FUNCTION_41(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  v37 = v163 - v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  v41 = v163 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = v163 - v43;
  OUTLINED_FUNCTION_6_26();
  sub_26A2F1AD8();
  v45 = *(type metadata accessor for _ProtoSummaryItem_PairV2(0) + 20);
  v178 = v1;
  v179 = v45;
  v46 = *(v1 + v45);
  OUTLINED_FUNCTION_142(v46 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &v186);
  sub_26A10FD9C();
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v44, 1, v22);
  sub_26A0E48F0(v44, &qword_28036C7B8, &unk_26A425BF0);
  v47 = MEMORY[0x277D84F90];
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_15(v41);
    if (v48)
    {
      *v30 = v47;
      *(v30 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v49 = v177;
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v177);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v49);
      OUTLINED_FUNCTION_15(v41);
      v56 = v178;
      if (!v48)
      {
        sub_26A0E48F0(v41, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A2F1694();
      v56 = v178;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_5_36();
    sub_26A2F16E8(v30, v57);
    v58 = v179;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v56 + v58);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v60 = type metadata accessor for _ProtoSummaryItem_PairV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v60);
      OUTLINED_FUNCTION_21_22();
      v46 = v61;
      *(v56 + v58) = v61;
    }

    OUTLINED_FUNCTION_28_14();
    v62 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v22);
    OUTLINED_FUNCTION_211(v46 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, v185);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v46 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, v185);
  OUTLINED_FUNCTION_209();
  v65 = OUTLINED_FUNCTION_271();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65, v66, v22);
  OUTLINED_FUNCTION_162_0(v37);
  if (EnumTagSinglePayload == 1)
  {
    v68 = v47;
    v69 = v177;
    v70 = v178;
  }

  else
  {
    v71 = v163[2];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_15(v71);
    v70 = v178;
    v72 = v179;
    if (v48)
    {
      v68 = v47;
      v46 = v164;
      *v164 = v47;
      *(v46 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v73 = OUTLINED_FUNCTION_44_0(*(v22 + 32));
      v69 = v177;
      __swift_storeEnumTagSinglePayload(v73, v74, v75, v177);
      v76 = OUTLINED_FUNCTION_44_0(*(v22 + 36));
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v69);
      OUTLINED_FUNCTION_15(v71);
      if (!v48)
      {
        sub_26A0E48F0(v71, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v68 = v47;
      OUTLINED_FUNCTION_31_15();
      v69 = v177;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_5_36();
    sub_26A2F16E8(v46, v79);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v70 + v72);
    if ((v80 & 1) == 0)
    {
      v81 = type metadata accessor for _ProtoSummaryItem_PairV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v81);
      OUTLINED_FUNCTION_21_22();
      v46 = v82;
      *(v70 + v72) = v82;
    }

    OUTLINED_FUNCTION_28_14();
    v83 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v83, v84, v85, v22);
    OUTLINED_FUNCTION_211(v46 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, v184);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v46 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, v184);
  v86 = v172;
  OUTLINED_FUNCTION_209();
  v87 = __swift_getEnumTagSinglePayload(v86, 1, v22);
  OUTLINED_FUNCTION_162_0(v86);
  if (v87 == 1)
  {
    v88 = v175;
  }

  else
  {
    v89 = v165;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_15(v89);
    v90 = v179;
    if (v48)
    {
      v46 = v166;
      *v166 = v68;
      *(v46 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v91 = OUTLINED_FUNCTION_44_0(*(v22 + 32));
      __swift_storeEnumTagSinglePayload(v91, v92, v93, v69);
      v94 = OUTLINED_FUNCTION_44_0(*(v22 + 36));
      __swift_storeEnumTagSinglePayload(v94, v95, v96, v69);
      OUTLINED_FUNCTION_15(v89);
      if (!v48)
      {
        sub_26A0E48F0(v89, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_31_15();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_5_36();
    sub_26A2F16E8(v46, v97);
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v70 + v90);
    v88 = v175;
    if ((v98 & 1) == 0)
    {
      v99 = type metadata accessor for _ProtoSummaryItem_PairV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v99);
      OUTLINED_FUNCTION_21_22();
      v46 = v100;
      *(v70 + v90) = v100;
    }

    OUTLINED_FUNCTION_28_14();
    v101 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v101, v102, v103, v22);
    OUTLINED_FUNCTION_211(v46 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, v183);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v46 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1, v183);
  v104 = v173;
  OUTLINED_FUNCTION_209();
  v105 = __swift_getEnumTagSinglePayload(v104, 1, v88);
  OUTLINED_FUNCTION_162_0(v104);
  if (v105 == 1)
  {
    v106 = v69;
  }

  else
  {
    v107 = v167;
    sub_26A10FD9C();
    v108 = OUTLINED_FUNCTION_71();
    v110 = OUTLINED_FUNCTION_37(v108, v109, v88);
    v111 = v179;
    if (v48)
    {
      OUTLINED_FUNCTION_43_9(v110);
      v112 = OUTLINED_FUNCTION_44_0(*(v88 + 32));
      __swift_storeEnumTagSinglePayload(v112, v113, v114, v69);
      v115 = OUTLINED_FUNCTION_44_0(*(v88 + 36));
      __swift_storeEnumTagSinglePayload(v115, v116, v117, v69);
      v118 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v118, v119, v88);
      if (!v48)
      {
        sub_26A0E48F0(v107, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_31_15();
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_19_20();
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v70 + v111);
    v106 = v69;
    if ((v120 & 1) == 0)
    {
      v121 = type metadata accessor for _ProtoSummaryItem_PairV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v121);
      OUTLINED_FUNCTION_21_22();
      v46 = v122;
      *(v70 + v111) = v122;
    }

    sub_26A2F1694();
    v123 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v123, v124, v125, v88);
    OUTLINED_FUNCTION_211(v46 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1, v182);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v46 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2, v182);
  v126 = v174;
  OUTLINED_FUNCTION_209();
  v127 = __swift_getEnumTagSinglePayload(v126, 1, v88);
  OUTLINED_FUNCTION_162_0(v126);
  if (v127 == 1)
  {
    v128 = v68;
    v129 = v106;
  }

  else
  {
    v130 = v168;
    sub_26A10FD9C();
    v131 = OUTLINED_FUNCTION_71();
    v133 = OUTLINED_FUNCTION_37(v131, v132, v88);
    v134 = v179;
    if (v48)
    {
      v128 = v68;
      OUTLINED_FUNCTION_43_9(v133);
      v135 = OUTLINED_FUNCTION_44_0(*(v88 + 32));
      v129 = v106;
      __swift_storeEnumTagSinglePayload(v135, v136, v137, v106);
      v138 = OUTLINED_FUNCTION_44_0(*(v88 + 36));
      __swift_storeEnumTagSinglePayload(v138, v139, v140, v106);
      v141 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v141, v142, v88);
      if (!v48)
      {
        sub_26A0E48F0(v130, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_31_15();
      v128 = v68;
      v129 = v106;
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_19_20();
    v143 = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v70 + v134);
    if ((v143 & 1) == 0)
    {
      v144 = type metadata accessor for _ProtoSummaryItem_PairV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v144);
      OUTLINED_FUNCTION_21_22();
      v46 = v145;
      *(v70 + v134) = v145;
    }

    sub_26A2F1694();
    v146 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v146, v147, v148, v88);
    OUTLINED_FUNCTION_211(v46 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2, v181);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v46 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, v181);
  v149 = v176;
  OUTLINED_FUNCTION_209();
  v150 = OUTLINED_FUNCTION_271();
  v152 = __swift_getEnumTagSinglePayload(v150, v151, v129);
  OUTLINED_FUNCTION_162_0(v149);
  if (v152 != 1)
  {
    v153 = v169;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v153, 1, v129);
    if (v48)
    {
      v46 = v170;
      *v170 = v128;
      *(v46 + 8) = 0;
      *(v46 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v153, 1, v129);
      v154 = v171;
      if (!v48)
      {
        sub_26A0E48F0(v153, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_31_15();
      v154 = v171;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v154);
    sub_26A2F16E8(v46, type metadata accessor for _ProtoActionProperty);
    v155 = v179;
    v156 = swift_isUniquelyReferenced_nonNull_native();
    v157 = *(v70 + v155);
    if ((v156 & 1) == 0)
    {
      v158 = type metadata accessor for _ProtoSummaryItem_PairV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v158);
      sub_26A1A40A0();
      v157 = v159;
      *(v70 + v155) = v159;
    }

    sub_26A2F1694();
    v160 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v160, v161, v162, v129);
    OUTLINED_FUNCTION_211(v157 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v180);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPairV2.init(text1:text2:text3:thumbnail1:thumbnail2:action:componentName:linkIdentifier:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for _ProtoSummaryItem_PairV2(0);
  sub_26A2F19B4(&qword_28036EDE0, type metadata accessor for _ProtoSummaryItem_PairV2, &protocol conformance descriptor for _ProtoSummaryItem_PairV2);
  sub_26A4249C4();

  sub_26A0E48F0(a6, &qword_28036CAF8, &unk_26A426D30);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  sub_26A0E48F0(a3, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A2F03FC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v75 = a8;
  v71 = a6;
  v72 = a7;
  v69 = a5;
  v66 = a1;
  v67 = a4;
  v13 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v13 - 8);
  v65 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v15 - 8);
  v74 = &v60 - v16;
  v73 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v73);
  v62 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v63 = &v60 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v20 - 8);
  v70 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v68 = &v60 - v23;
  v24 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v24 - 8);
  v25 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v25 - 8);
  v26 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v26);
  v61 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v60 = &v60 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v60 - v31;
  v33 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = a2[3];
  v34 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v35);
  (*(v34 + 8))(v35, v34);
  sub_26A2F1694();
  v64 = v32;
  _ProtoSummaryItem_PairV2.text1.setter();
  v36 = a3[3];
  v37 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v36);
  (*(v37 + 8))(v36, v37);
  sub_26A2F1694();
  _ProtoSummaryItem_PairV2.thumbnail1.setter();
  v38 = v67[3];
  v39 = v67[4];
  __swift_project_boxed_opaque_existential_1(v67, v38);
  (*(v39 + 8))(v38, v39);
  sub_26A2F1694();
  _ProtoSummaryItem_PairV2.thumbnail2.setter();
  sub_26A10FD9C();
  v40 = v77;
  if (v77)
  {
    v41 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    (*(v41 + 8))(v40, v41);
    v42 = v68;
    sub_26A2F1694();
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v26);
    __swift_destroy_boxed_opaque_existential_1(v76);
    if (__swift_getEnumTagSinglePayload(v42, 1, v26) != 1)
    {
      v43 = v60;
      sub_26A2F1694();
      sub_26A2F1AD8();
      _ProtoSummaryItem_PairV2.text2.setter();
      sub_26A2F16E8(v43, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v76, &qword_28036CB08, &unk_26A428720);
    v42 = v68;
    __swift_storeEnumTagSinglePayload(v68, 1, 1, v26);
  }

  sub_26A0E48F0(v42, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v44 = v77;
  if (v77)
  {
    v45 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    (*(v45 + 8))(v44, v45);
    v46 = v70;
    sub_26A2F1694();
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v26);
    __swift_destroy_boxed_opaque_existential_1(v76);
    if (__swift_getEnumTagSinglePayload(v46, 1, v26) != 1)
    {
      v47 = v61;
      sub_26A2F1694();
      sub_26A2F1AD8();
      _ProtoSummaryItem_PairV2.text3.setter();
      sub_26A2F16E8(v47, type metadata accessor for _ProtoTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v76, &qword_28036CB08, &unk_26A428720);
    v46 = v70;
    __swift_storeEnumTagSinglePayload(v70, 1, 1, v26);
  }

  sub_26A0E48F0(v46, &qword_28036C7B8, &unk_26A425BF0);
LABEL_11:
  sub_26A10FD9C();
  v48 = v77;
  if (v77)
  {
    v49 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    (*(v49 + 8))(v48, v49);
    v50 = v74;
    sub_26A2F1694();
    v51 = v73;
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v73);
    __swift_destroy_boxed_opaque_existential_1(v76);
    if (__swift_getEnumTagSinglePayload(v50, 1, v51) != 1)
    {
      v52 = v63;
      sub_26A2F1694();
      sub_26A2F1AD8();
      _ProtoSummaryItem_PairV2.action.setter();
      sub_26A2F16E8(v52, type metadata accessor for _ProtoActionProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v76, &qword_28036CAF8, &unk_26A426D30);
    v50 = v74;
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v73);
  }

  sub_26A0E48F0(v50, &off_28036C7C0, &off_26A427400);
LABEL_16:

  result = _ProtoSummaryItem_PairV2.componentName.setter(v75, a9, v53, v54, v55);
  if (a11)
  {

    return _ProtoSummaryItem_PairV2.linkIdentifier.setter(a10, a11, v57, v58, v59);
  }

  return result;
}

Swift::String __swiftcall SummaryItemPairV2.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v111 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v119 = &v111 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v118 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_48();
  v115 = v12;
  v112 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  v117 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_48();
  v113 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  v18 = OUTLINED_FUNCTION_41(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  v116 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_48();
  v114 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v22);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v23);
  v25 = &v111 - v24;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v28 = OUTLINED_FUNCTION_41(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v111 - v33;
  v35 = type metadata accessor for SummaryItemPairV2(0);
  v36 = OUTLINED_FUNCTION_41(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v37);
  v39 = &v111 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE60, &qword_26A43B7D0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v41);
  v43 = &v111 - v42;
  OUTLINED_FUNCTION_15_28();
  sub_26A2F1AD8();
  if (v4)
  {
    _ProtoSummaryItem_PairV2.redactedProto.getter();
  }

  else
  {
    sub_26A2F1AD8();
  }

  sub_26A2F1694();
  v43[*(v40 + 32)] = v4 & 1;
  sub_26A2F16E8(v39, type metadata accessor for SummaryItemPairV2);
  v44 = MEMORY[0x277D84F90];
  *&v43[*(v40 + 28)] = MEMORY[0x277D84F90];
  v45 = *&v43[*(type metadata accessor for _ProtoSummaryItem_PairV2(0) + 20)];
  OUTLINED_FUNCTION_142(v45 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &v122);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_38_0();
  if (v46)
  {
    *v2 = v44;
    *(v2 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v47 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v47);
    OUTLINED_FUNCTION_38_0();
    v54 = v117;
    v55 = v112;
    if (!v46)
    {
      sub_26A0E48F0(v25, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A2F1694();
    v54 = v117;
    v55 = v112;
  }

  sub_26A2F1694();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  sub_26A107378(v34, 0x3174786574, 0xE500000000000000);
  sub_26A0E48F0(v34, &qword_28036CB30, &qword_26A426480);
  SummaryItemPairV2.text2.getter();
  sub_26A107378(v31, 0x3274786574, 0xE500000000000000);
  sub_26A0E48F0(v31, &qword_28036CB30, &qword_26A426480);
  SummaryItemPairV2.text3.getter();
  sub_26A107378(v31, 0x3374786574, 0xE500000000000000);
  sub_26A0E48F0(v31, &qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_142(v45 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1, &v121);
  v60 = v115;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v60, 1, v55);
  if (v46)
  {
    v61 = v113;
    *v113 = MEMORY[0x277D84F90];
    *(v61 + 4) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v62 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v62);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v62);
    OUTLINED_FUNCTION_37(v60, 1, v55);
    v69 = v118;
    if (!v46)
    {
      sub_26A0E48F0(v60, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A2F1694();
    v69 = v118;
  }

  v70 = v114;
  sub_26A2F1694();
  v71 = type metadata accessor for VisualProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v71);
  sub_26A107350(v70, 0x69616E626D756874, 0xEA0000000000316CLL);
  sub_26A0E48F0(v70, &qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_142(v45 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2, &v120);
  sub_26A10FD9C();
  v75 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_37(v75, v76, v55);
  if (v46)
  {
    *v54 = MEMORY[0x277D84F90];
    *(v54 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v77 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v77);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v77);
    v84 = OUTLINED_FUNCTION_271();
    OUTLINED_FUNCTION_37(v84, v85, v55);
    if (!v46)
    {
      sub_26A0E48F0(v69, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A2F1694();
  }

  v86 = v116;
  sub_26A2F1694();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v71);
  sub_26A107350(v86, 0x69616E626D756874, 0xEA0000000000326CLL);
  sub_26A0E48F0(v86, &qword_28036CB20, &unk_26A426470);
  v90 = v119;
  SummaryItemPairV2.action.getter();
  sub_26A10724C();
  sub_26A0E48F0(v90, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7C00(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v92, v93, v94, v95, v111, v112);

  v96 = swift_getKeyPath();
  sub_26A0F8594(v96, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v97, v98, v99, v100, v111, v112);

  sub_26A0FE09C(v101, v102, v103, v104, v105, v106, v107);
  sub_26A0E48F0(v43, &qword_28036CE60, &qword_26A43B7D0);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v109;
  result._countAndFlagsBits = v108;
  return result;
}

uint64_t type metadata accessor for SummaryItemPairV2(uint64_t a1)
{
  result = qword_2803721C8;
  if (!qword_2803721C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A2F1694()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2F16E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SummaryItemPairV2.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSummaryItem_PairV2(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_6_26();
  sub_26A2F1AD8();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_16_21();
  sub_26A2F1694();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t SummaryItemPairV2.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SummaryItemPairV2(0);
  *(inited + 64) = &protocol witness table for SummaryItemPairV2;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_15_28();
  sub_26A2F1AD8();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A2F19B4(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A2F19B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2F1A6C(uint64_t a1)
{
  result = type metadata accessor for _ProtoSummaryItem_PairV2(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A2F1AD8()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_19_20()
{

  return sub_26A2F16E8(v0, type metadata accessor for _ProtoVisualProperty);
}

void OUTLINED_FUNCTION_21_22()
{

  sub_26A1A40A0();
}

uint64_t OUTLINED_FUNCTION_28_14()
{

  return sub_26A2F1694();
}

uint64_t OUTLINED_FUNCTION_31_15()
{

  return sub_26A2F1694();
}

uint64_t OUTLINED_FUNCTION_38_12()
{

  return type metadata accessor for _ProtoSummaryItem_PairV2(0);
}

uint64_t OUTLINED_FUNCTION_41_13()
{

  return type metadata accessor for _ProtoSummaryItem_PairV2(0);
}

uint64_t OUTLINED_FUNCTION_43_9(uint64_t a1)
{
  *v1 = v2;
  *(v1 + 8) = 0;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t sub_26A2F1D0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t (*a7)(uint64_t))
{
  if (result)
  {
    v8 = *(result + 16);
    if (v8)
    {
      if (v8 == 1)
      {
        v15 = 121;
      }

      else
      {
        v15 = 7562601;
      }

      if (v8 == 1)
      {
        v16 = 0xE100000000000000;
      }

      else
      {
        v16 = 0xE300000000000000;
      }

      v22 = sub_26A4251B4();
      v23 = v17;
      MEMORY[0x26D65BA70](0x72746E6520, 0xE500000000000000);
      MEMORY[0x26D65BA70](v15, v16);

      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) + 28);
      a6();
      v19 = *(*(v7 + v18) + 16);
      result = a7(v19);
      v20 = *(v7 + v18);
      *(v20 + 16) = v19 + 1;
      v21 = (v20 + 32 * v19);
      v21[4] = a2;
      v21[5] = a3;
      v21[6] = v22;
      v21[7] = v23;
      *(v7 + v18) = v20;
    }
  }

  return result;
}

void sub_26A2F1E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v27 = OUTLINED_FUNCTION_41(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_17();
  v38 = (v36 - v37);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_4_32();
  sub_26A2F39E4();
  v41 = type metadata accessor for _ProtoSwitch(0);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {
    *v21 = MEMORY[0x277D84F90];
    v21[1] = 0;
    v21[2] = 0xE000000000000000;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_23(v33);
    if (!v42)
    {
      sub_26A0E48F0(v33, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    sub_26A2F3A38();
  }

  _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v20);
  OUTLINED_FUNCTION_5_37();
  sub_26A2F3BF8(v21, v43);
  v44 = *(v41 + 32);
  sub_26A0E48F0(v25 + v44, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_6_27();
  sub_26A2F3A38();
  __swift_storeEnumTagSinglePayload(v25 + v44, 0, 1, v34);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(v30);
  if (v42)
  {
    *v38 = MEMORY[0x277D84F90];
    v38[1] = 0;
    v38[2] = 0xE000000000000000;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_23(v30);
    if (!v42)
    {
      sub_26A0E48F0(v30, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    sub_26A2F3A38();
  }

  _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v20);
  OUTLINED_FUNCTION_5_37();
  sub_26A2F3BF8(v38, v45);
  v46 = *(v41 + 36);
  sub_26A0E48F0(v25 + v46, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_6_27();
  sub_26A2F3A38();
  __swift_storeEnumTagSinglePayload(v25 + v46, 0, 1, v34);
  sub_26A0E4784(*(v25 + 24), *(v25 + 32));
  *(v25 + 24) = xmmword_26A426400;
  OUTLINED_FUNCTION_75();
}

void Switch.onAction.getter()
{
  OUTLINED_FUNCTION_76();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v5 = OUTLINED_FUNCTION_41(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoSwitch(0);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_13_1();
  if (v2 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_23(v0);
    if (v7)
    {
      OUTLINED_FUNCTION_15_29(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_23(v0);
      if (!v7)
      {
        sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_12_2();
      sub_26A2F3A38();
    }

    sub_26A2F3A38();
    v1 = 0;
  }

  v8 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(&off_28036C7C0, v1, 1, v8);
  OUTLINED_FUNCTION_75();
}

void Switch.offAction.getter()
{
  OUTLINED_FUNCTION_76();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v5 = OUTLINED_FUNCTION_41(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoSwitch(0);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_13_1();
  if (v2 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_23(v0);
    if (v7)
    {
      OUTLINED_FUNCTION_15_29(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_23(v0);
      if (!v7)
      {
        sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_12_2();
      sub_26A2F3A38();
    }

    sub_26A2F3A38();
    v1 = 0;
  }

  v8 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(&off_28036C7C0, v1, 1, v8);
  OUTLINED_FUNCTION_75();
}

uint64_t Switch.invocationPayload.getter()
{
  v17[4] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_26A4246B4();
  v17[0] = 0;
  v2 = [v0 propertyListWithData:v1 options:0 format:0 error:v17];

  if (v2)
  {
    v3 = v17[0];
    sub_26A424E64();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FB50, &qword_26A43B4F0);
    if (swift_dynamicCast())
    {
      return v16;
    }
  }

  else
  {
    v5 = v17[0];
    v6 = sub_26A4245B4();

    swift_willThrow();
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v7 = sub_26A424AE4();
    __swift_project_value_buffer(v7, qword_2803A8950);
    v8 = v6;
    v9 = sub_26A424AD4();
    v10 = sub_26A424DF4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136446210;
      swift_getErrorValue();
      v13 = sub_26A4254B4();
      v15 = sub_26A0E8788(v13, v14, v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_26A0B8000, v9, v10, "Failed to deserialize invocationPayload data to dictionary: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x26D65C950](v12, -1, -1);
      MEMORY[0x26D65C950](v11, -1, -1);
    }

    else
    {
    }
  }

  return sub_26A424B24();
}

uint64_t Switch.init(identifier:onAction:offAction:initialValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  type metadata accessor for _ProtoSwitch(0);
  OUTLINED_FUNCTION_0_57();
  sub_26A2F3B1C(v6, v7, &protocol conformance descriptor for _ProtoSwitch);
  sub_26A4249C4();

  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  v8 = OUTLINED_FUNCTION_175();
  return sub_26A0E48F0(v8, v9, &unk_26A426D30);
}

uint64_t sub_26A2F2898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v29 = a6;
  v28[3] = a5;
  v9 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  v16 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v16);
  v28[1] = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v28[2] = v28 - v19;
  MEMORY[0x28223BE20](v20);

  *a1 = a2;
  *(a1 + 8) = a3;
  sub_26A10FD9C();
  v21 = v31;
  if (v31)
  {
    v22 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v22 + 8))(v21, v22);
    sub_26A2F3A38();
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
    __swift_destroy_boxed_opaque_existential_1(v30);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      sub_26A2F3A38();
      sub_26A2F3A38();
      v23 = *(type metadata accessor for _ProtoSwitch(0) + 32);
      sub_26A0E48F0(a1 + v23, &off_28036C7C0, &off_26A427400);
      sub_26A2F3A38();
      __swift_storeEnumTagSinglePayload(a1 + v23, 0, 1, v16);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v30, &qword_28036CAF8, &unk_26A426D30);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  }

  sub_26A0E48F0(v15, &off_28036C7C0, &off_26A427400);
LABEL_6:
  sub_26A10FD9C();
  v24 = v31;
  if (!v31)
  {
    sub_26A0E48F0(v30, &qword_28036CAF8, &unk_26A426D30);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v16);
    goto LABEL_10;
  }

  v25 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v25 + 8))(v24, v25);
  sub_26A2F3A38();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v16);
  __swift_destroy_boxed_opaque_existential_1(v30);
  if (__swift_getEnumTagSinglePayload(v12, 1, v16) == 1)
  {
LABEL_10:
    result = sub_26A0E48F0(v12, &off_28036C7C0, &off_26A427400);
    goto LABEL_11;
  }

  sub_26A2F3A38();
  sub_26A2F3A38();
  v26 = *(type metadata accessor for _ProtoSwitch(0) + 36);
  sub_26A0E48F0(a1 + v26, &off_28036C7C0, &off_26A427400);
  sub_26A2F3A38();
  result = __swift_storeEnumTagSinglePayload(a1 + v26, 0, 1, v16);
LABEL_11:
  *(a1 + 16) = v29 & 1;
  return result;
}

uint64_t Switch.init(identifier:onAction:offAction:initialValue:invocationPayload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _ProtoSwitch(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_0_57();
  sub_26A2F3B1C(v10, v11, &protocol conformance descriptor for _ProtoSwitch);
  sub_26A4249C4();

  if (!v7)
  {
    sub_26A2F3A38();
  }

  v12 = OUTLINED_FUNCTION_12_2();
  sub_26A0E48F0(v12, v13, &unk_26A426D30);
  return sub_26A0E48F0(a3, &qword_28036CAF8, &unk_26A426D30);
}

uint64_t sub_26A2F2EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v37[3] = a5;
  v39 = a7;
  v38 = a6;
  v43 = *MEMORY[0x277D85DE8];
  v10 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v37 - v15;
  v17 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v17);
  v37[0] = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v37[1] = v37 - v20;
  MEMORY[0x28223BE20](v21);

  *a1 = a2;
  *(a1 + 8) = a3;
  sub_26A10FD9C();
  v22 = v41;
  if (v41)
  {
    v23 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    (*(v23 + 8))(v22, v23);
    sub_26A2F3A38();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
    __swift_destroy_boxed_opaque_existential_1(v40);
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      sub_26A2F3A38();
      sub_26A2F3A38();
      v24 = *(type metadata accessor for _ProtoSwitch(0) + 32);
      sub_26A0E48F0(a1 + v24, &off_28036C7C0, &off_26A427400);
      sub_26A2F3A38();
      __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v17);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v40, &qword_28036CAF8, &unk_26A426D30);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  }

  sub_26A0E48F0(v16, &off_28036C7C0, &off_26A427400);
LABEL_6:
  sub_26A10FD9C();
  v25 = v41;
  if (v41)
  {
    v26 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    (*(v26 + 8))(v25, v26);
    sub_26A2F3A38();
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v17);
    __swift_destroy_boxed_opaque_existential_1(v40);
    if (__swift_getEnumTagSinglePayload(v13, 1, v17) != 1)
    {
      sub_26A2F3A38();
      sub_26A2F3A38();
      v27 = *(type metadata accessor for _ProtoSwitch(0) + 36);
      sub_26A0E48F0(a1 + v27, &off_28036C7C0, &off_26A427400);
      sub_26A2F3A38();
      __swift_storeEnumTagSinglePayload(a1 + v27, 0, 1, v17);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v40, &qword_28036CAF8, &unk_26A426D30);
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v17);
  }

  sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
LABEL_11:
  *(a1 + 16) = v38 & 1;
  v28 = objc_opt_self();
  v29 = sub_26A424B04();
  v40[0] = 0;
  v30 = [v28 dataWithPropertyList:v29 format:200 options:0 error:v40];

  v31 = v40[0];
  if (v30)
  {
    v32 = sub_26A4246D4();
    v34 = v33;

    result = sub_26A0E4784(*(a1 + 24), *(a1 + 32));
    *(a1 + 24) = v32;
    *(a1 + 32) = v34;
  }

  else
  {
    v36 = v31;
    sub_26A4245B4();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26A2F3764@<X0>(uint64_t *a1@<X8>)
{
  result = Switch.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Switch.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoSwitch(0);
  OUTLINED_FUNCTION_0_57();
  sub_26A2F3B1C(v1, v2, &protocol conformance descriptor for _ProtoSwitch);

  return sub_26A424B44();
}

uint64_t Switch.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoSwitch(0);
  OUTLINED_FUNCTION_0_57();
  sub_26A2F3B1C(v0, v1, &protocol conformance descriptor for _ProtoSwitch);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A2F38C4(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoSwitch(0);
  sub_26A2F3B1C(&qword_28036D380, type metadata accessor for _ProtoSwitch, &protocol conformance descriptor for _ProtoSwitch);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t type metadata accessor for Switch(uint64_t a1)
{
  result = qword_2803721E0;
  if (!qword_2803721E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A2F39E4()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2F3A38()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2F3B1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2F3B8C(uint64_t a1)
{
  result = type metadata accessor for _ProtoSwitch(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A2F3BF8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_15_29@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  v2[1] = 0;
  v2[2] = 0xE000000000000000;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_20_23()
{

  return type metadata accessor for _ProtoSwitch(0);
}

float RFImageAspectRatio.ratio.getter()
{
  OUTLINED_FUNCTION_1_44();
  v2 = (*(v1 + 16))();
  v3 = *(v0 + 24);
  v4 = OUTLINED_FUNCTION_48_1();
  if (v3(v4) == 0.0)
  {
    v5 = 0.1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_48_1();
    v5 = v3(v6);
  }

  return v2 / v5;
}

BOOL RFImageAspectRatio.isLandscape.getter()
{
  OUTLINED_FUNCTION_1_44();
  v1 = (*(v0 + 16))();
  v2 = OUTLINED_FUNCTION_48_1();
  return v3(v2) < v1;
}

BOOL RFImageAspectRatio.isPortrait.getter()
{
  OUTLINED_FUNCTION_1_44();
  v1 = (*(v0 + 24))();
  v2 = OUTLINED_FUNCTION_48_1();
  return v3(v2) < v1;
}

BOOL RFImageAspectRatio.isSquare.getter()
{
  OUTLINED_FUNCTION_1_44();
  v1 = (*(v0 + 16))();
  v2 = OUTLINED_FUNCTION_48_1();
  return v1 == v3(v2);
}

uint64_t RFImageAspectRatio.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26A2F4004(a1, &v16);
  if (v17)
  {
    sub_26A0D671C(&v16, v18);
    v8 = v19;
    v9 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v10 = (*(v9 + 16))(v8, v9);
    v11 = v19;
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = (*(v12 + 24))(v11, v12);
    (*(a3 + 32))(a2, a3, v10, *&v13);
    sub_26A2F4074(a1);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v14 = 0;
  }

  else
  {
    sub_26A2F4074(a1);
    sub_26A2F4074(&v16);
    v14 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v14, 1, a2);
}

uint64_t sub_26A2F4004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803721F8, &qword_26A43B9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A2F4074(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803721F8, &qword_26A43B9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL RFImageAspectRatio.isCircle(cornerRadius:actualWidth:)(uint64_t a1, char a2, double a3)
{
  if (!RFImageAspectRatio.isSquare.getter())
  {
    return 0;
  }

  if (a2)
  {
    v6 = OUTLINED_FUNCTION_48_1();
    v8 = v7(v6);
  }

  else
  {
    v8 = *&a1;
  }

  return v8 * 0.5 == a3;
}

double sub_26A2F418C()
{
  __asm { FMOV            V0.2S, #1.0 }

  qword_2803721F0 = *&result;
  return result;
}

uint64_t *sub_26A2F41A0()
{
  if (qword_28036C4F0 != -1)
  {
    OUTLINED_FUNCTION_0_58(&qword_28036C4F0);
  }

  return &qword_2803721F0;
}

double static RFImage.AspectRatio.square.getter@<D0>(void *a1@<X8>)
{
  if (qword_28036C4F0 != -1)
  {
    OUTLINED_FUNCTION_0_58(&qword_28036C4F0);
  }

  swift_beginAccess();
  result = *&qword_2803721F0;
  *a1 = qword_2803721F0;
  return result;
}

uint64_t static RFImage.AspectRatio.square.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_28036C4F0 != -1)
  {
    OUTLINED_FUNCTION_0_58(&qword_28036C4F0);
  }

  result = swift_beginAccess();
  qword_2803721F0 = v1;
  return result;
}

uint64_t (*static RFImage.AspectRatio.square.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_28036C4F0 != -1)
  {
    OUTLINED_FUNCTION_0_58(&qword_28036C4F0);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_26A2F4334@<D0>(void *a1@<X8>)
{
  sub_26A2F41A0();
  swift_beginAccess();
  result = *&qword_2803721F0;
  *a1 = qword_2803721F0;
  return result;
}

double sub_26A2F4384(double *a1)
{
  sub_26A2F41A0();
  swift_beginAccess();
  result = *a1;
  qword_2803721F0 = *a1;
  return result;
}

uint64_t RFImage.AspectRatio.hashValue.getter()
{
  sub_26A425504();
  RFImage.AspectRatio.hash(into:)();
  return sub_26A425554();
}

unint64_t sub_26A2F44AC(uint64_t a1)
{
  result = sub_26A2F44D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A2F44D4()
{
  result = qword_280372200;
  if (!qword_280372200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372200);
  }

  return result;
}

unint64_t sub_26A2F452C()
{
  result = qword_280372208;
  if (!qword_280372208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372208);
  }

  return result;
}

uint64_t sub_26A2F4588(uint64_t a1)
{
  sub_26A425504();
  RFImage.AspectRatio.hash(into:)();
  return sub_26A425554();
}

uint64_t _s11AspectRatioVwet(uint64_t a1, int a2)
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

uint64_t _s11AspectRatioVwst(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_0_58(uint64_t a1)
{

  return swift_once();
}

uint64_t HeroHeader.banner.getter()
{
  v3 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_51_1();
  type metadata accessor for _ProtoVisualProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v7 = type metadata accessor for _ProtoHeroHeader(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v7 + 20)) + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__banner, v17);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_15(v2);
  if (v8)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v9 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
    OUTLINED_FUNCTION_15(v2);
    if (!v8)
    {
      sub_26A0E48F0(v2, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A2F6744();
  }

  return sub_26A2F6744();
}

uint64_t HeroHeader.text1.getter()
{
  v3 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_51_1();
  type metadata accessor for _ProtoTextProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v7 = type metadata accessor for _ProtoHeroHeader(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v7 + 20)) + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__text1, v17);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_15(v2);
  if (v8)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v9 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
    OUTLINED_FUNCTION_15(v2);
    if (!v8)
    {
      sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A2F6744();
  }

  return sub_26A2F6744();
}

void HeroHeader.text2.getter()
{
  OUTLINED_FUNCTION_76();
  v23 = v3;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = v6 - v5;
  v8 = OUTLINED_FUNCTION_41_2();
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_142(*(v0 + *(v11 + 20)) + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__text2, &v24);
  OUTLINED_FUNCTION_127_0();
  v12 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v12, v13, &unk_26A425BF0);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v14)
    {
      *v7 = MEMORY[0x277D84F90];
      *(v7 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v15 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
      OUTLINED_FUNCTION_38_0();
      if (!v14)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A2F6744();
    }

    sub_26A2F6744();
    v2 = 0;
  }

  v22 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v23, v2, 1, v22);
  OUTLINED_FUNCTION_75();
}

void HeroHeader.watchListButton.getter()
{
  OUTLINED_FUNCTION_76();
  v16 = v3;
  type metadata accessor for _ProtoWatchListButton(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = (v6 - v5);
  v8 = OUTLINED_FUNCTION_41_2();
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_142(*(v0 + *(v11 + 20)) + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__watchListButton, &v17);
  OUTLINED_FUNCTION_127_0();
  v12 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v12, v13, &qword_26A42DBE0);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v14)
    {
      *v7 = 0;
      v7[1] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v14)
      {
        sub_26A0E48F0(v1, &qword_28036F8D0, &qword_26A42DBE0);
      }
    }

    else
    {
      sub_26A2F6744();
    }

    sub_26A2F6744();
    v2 = 0;
  }

  v15 = type metadata accessor for WatchListButton(0);
  __swift_storeEnumTagSinglePayload(v16, v2, 1, v15);
  OUTLINED_FUNCTION_75();
}

uint64_t HeroHeader.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoHeroHeader(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void HeroHeader.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v115 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v112 = v3 - v4;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47();
  v111 = v6;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47();
  v109 = v8;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v9);
  v108 = (v106 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v12 = OUTLINED_FUNCTION_41(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  v110 = v13 - v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47();
  v113 = v16;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47();
  v114 = v18;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47();
  v107 = v20;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v21);
  v22 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17();
  v106[0] = v24 - v25;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v26);
  v28 = v106 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v30 = OUTLINED_FUNCTION_41(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17();
  v106[1] = v31 - v32;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v33);
  v35 = v106 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = v106 - v37;
  OUTLINED_FUNCTION_1_45();
  sub_26A2F6B7C();
  v116 = *(type metadata accessor for _ProtoHeroHeader(0) + 20);
  v117 = v1;
  v39 = *(v1 + v116);
  OUTLINED_FUNCTION_142(v39 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__banner, &v120);
  OUTLINED_FUNCTION_35_1();
  sub_26A10FD9C();
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v38, 1, v22);
  sub_26A0E48F0(v38, &qword_28036CAE8, &unk_26A426430);
  v40 = MEMORY[0x277D84F90];
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v35, 1, v22);
    if (v41)
    {
      *v28 = v40;
      *(v28 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v42 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v42);
      OUTLINED_FUNCTION_37(v35, 1, v22);
      v49 = v117;
      if (!v41)
      {
        sub_26A0E48F0(v35, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A2F6744();
      v49 = v117;
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A2F6B24(v28, type metadata accessor for _ProtoVisualProperty);
    v50 = v116;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v49 + v50);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for _ProtoHeroHeader._StorageClass(0);
      swift_allocObject();
      OUTLINED_FUNCTION_23_25();
      v39 = v52;
      *(v49 + v50) = v52;
    }

    sub_26A2F6744();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v22);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v39 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__text1, &v119);
  sub_26A10FD9C();
  v56 = OUTLINED_FUNCTION_107();
  v57 = v115;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, v58, v115);
  OUTLINED_FUNCTION_35_1();
  sub_26A0E48F0(v60, v61, v62);
  if (EnumTagSinglePayload != 1)
  {
    v63 = v107;
    sub_26A10FD9C();
    v64 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v64, v65, v57);
    if (v41)
    {
      v75 = v108;
      *v108 = v40;
      *(v75 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v66 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v66);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v66);
      v73 = OUTLINED_FUNCTION_107();
      OUTLINED_FUNCTION_37(v73, v74, v57);
      v77 = v116;
      v76 = v117;
      if (!v41)
      {
        sub_26A0E48F0(v63, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v75 = v108;
      sub_26A2F6744();
      v77 = v116;
      v76 = v117;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_8_27();
    sub_26A2F6B24(v75, v78);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v76 + v77);
    if ((v79 & 1) == 0)
    {
      type metadata accessor for _ProtoHeroHeader._StorageClass(0);
      swift_allocObject();
      OUTLINED_FUNCTION_23_25();
      v39 = v80;
      *(v76 + v77) = v80;
    }

    sub_26A2F6744();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v57);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v39 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__text2, &v118);
  sub_26A10FD9C();
  v84 = OUTLINED_FUNCTION_107();
  v86 = __swift_getEnumTagSinglePayload(v84, v85, v57);
  OUTLINED_FUNCTION_35_1();
  sub_26A0E48F0(v87, v88, v89);
  if (v86 != 1)
  {
    v90 = v110;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v90, 1, v57);
    if (v41)
    {
      v98 = v111;
      *v111 = v40;
      *(v98 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v91 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v92, v93, v94, v91);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v95, v96, v97, v91);
      OUTLINED_FUNCTION_37(v90, 1, v57);
      v99 = v117;
      if (!v41)
      {
        sub_26A0E48F0(v90, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v98 = v111;
      sub_26A2F6744();
      v99 = v117;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_8_27();
    sub_26A2F6B24(v98, v100);
    v101 = v116;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for _ProtoHeroHeader._StorageClass(0);
      swift_allocObject();
      OUTLINED_FUNCTION_23_25();
      *(v99 + v101) = v102;
    }

    sub_26A2F6744();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v57);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t HeroHeader.init(banner:text1:text2:watchListButton:componentName:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for _ProtoHeroHeader(0);
  OUTLINED_FUNCTION_9_33();
  sub_26A2F6A00(v10, v11, &protocol conformance descriptor for _ProtoHeroHeader);
  sub_26A4249C4();

  sub_26A0E48F0(a4, &qword_28036CE50, &qword_26A4269D8);
  sub_26A0E48F0(a3, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A2F57D8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a6;
  v47 = a7;
  v43 = a4;
  v44 = a5;
  v41 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE50, &qword_26A4269D8);
  MEMORY[0x28223BE20](v9 - 8);
  v45 = v38 - v10;
  v11 = type metadata accessor for _ProtoWatchListButton(0);
  MEMORY[0x28223BE20](v11 - 8);
  v40 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v38[1] = v38 - v14;
  MEMORY[0x28223BE20](v15);
  v39 = v38 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v38 - v18;
  v42 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v42);
  v38[0] = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v22 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v22 - 8);
  v23 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v23 - 8);
  v24 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v24 - 8);
  v25 = a2[3];
  v26 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  (*(v26 + 8))(v25, v26);
  sub_26A2F6744();
  _ProtoHeroHeader.banner.setter();
  v27 = a3[3];
  v28 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v27);
  (*(v28 + 8))(v27, v28);
  sub_26A2F6744();
  _ProtoHeroHeader.text1.setter();
  sub_26A10FD9C();
  v29 = v49;
  if (v49)
  {
    v30 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    (*(v30 + 8))(v29, v30);
    sub_26A2F6744();
    v31 = v42;
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v42);
    __swift_destroy_boxed_opaque_existential_1(v48);
    if (__swift_getEnumTagSinglePayload(v19, 1, v31) != 1)
    {
      v32 = v38[0];
      sub_26A2F6744();
      sub_26A2F6B7C();
      _ProtoHeroHeader.text2.setter();
      sub_26A2F6B24(v32, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v48, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v42);
  }

  sub_26A0E48F0(v19, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  v33 = v45;
  sub_26A10FD9C();
  v34 = type metadata accessor for WatchListButton(0);
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {
    sub_26A0E48F0(v33, &qword_28036CE50, &qword_26A4269D8);
  }

  else
  {
    sub_26A2F6B7C();
    sub_26A2F6B24(v33, type metadata accessor for WatchListButton);
    v35 = v39;
    sub_26A2F6744();
    sub_26A2F6B7C();
    _ProtoHeroHeader.watchListButton.setter();
    sub_26A2F6B24(v35, type metadata accessor for _ProtoWatchListButton);
  }

  v36 = v47;

  return _ProtoHeroHeader.componentName.setter(v46, v36);
}

void HeroHeader.init(banner:text1:text2:watchListButton:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v15[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE50, &qword_26A4269D8);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v12 = v15 - v11;
  sub_26A0E5D68(v7, v18);
  sub_26A0E5D68(v5, v17);
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoHeroHeader(0);
  v15[4] = v18;
  v15[5] = v17;
  v15[6] = v16;
  v15[7] = v12;
  v15[8] = 0;
  v15[9] = 0xE000000000000000;
  OUTLINED_FUNCTION_9_33();
  sub_26A2F6A00(v13, v14, &protocol conformance descriptor for _ProtoHeroHeader);
  sub_26A4249C4();
  sub_26A0E48F0(v1, &qword_28036CE50, &qword_26A4269D8);
  sub_26A0E48F0(v3, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  sub_26A0E48F0(v12, &qword_28036CE50, &qword_26A4269D8);
  sub_26A0E48F0(v16, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall HeroHeader.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v92 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE50, &qword_26A4269D8);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v97 = &v92 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v95 = &v92 - v9;
  v94 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v15 = OUTLINED_FUNCTION_41(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v96 = v16 - v17;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v18);
  v93 = &v92 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v20);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v21);
  v23 = &v92 - v22;
  v24 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v29);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v30);
  v32 = &v92 - v31;
  v33 = type metadata accessor for HeroHeader(0);
  v34 = OUTLINED_FUNCTION_41(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v35);
  v37 = &v92 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE48, &qword_26A4269D0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v39);
  v41 = &v92 - v40;
  OUTLINED_FUNCTION_7_23();
  sub_26A2F6B7C();
  if (v3)
  {
    HeroHeader.redactedProto.getter();
  }

  else
  {
    sub_26A2F6B7C();
  }

  sub_26A2F6744();
  v41[*(v38 + 32)] = v3 & 1;
  sub_26A2F6B24(v37, type metadata accessor for HeroHeader);
  v42 = MEMORY[0x277D84F90];
  *&v41[*(v38 + 28)] = MEMORY[0x277D84F90];
  v43 = *&v41[*(type metadata accessor for _ProtoHeroHeader(0) + 20)];
  OUTLINED_FUNCTION_142(v43 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__banner, &v99);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v23, 1, v24);
  if (v44)
  {
    *v28 = v42;
    *(v28 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v45 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v45);
    OUTLINED_FUNCTION_37(v23, 1, v24);
    if (!v44)
    {
      sub_26A0E48F0(v23, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A2F6744();
  }

  sub_26A2F6744();
  type metadata accessor for VisualProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  sub_26A10A7D4(v32, 0x72656E6E6162, 0xE600000000000000);
  sub_26A0E48F0(v32, &qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_142(v43 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__text1, &v98);
  v56 = v95;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_15(v56);
  if (v44)
  {
    *v13 = v42;
    *(v13 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v57 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v57);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v57);
    OUTLINED_FUNCTION_15(v56);
    if (!v44)
    {
      sub_26A0E48F0(v56, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A2F6744();
  }

  v64 = v93;
  sub_26A2F6744();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  sub_26A10A4B4(v64, 0x3174786574, 0xE500000000000000);
  OUTLINED_FUNCTION_35_1();
  sub_26A0E48F0(v69, v70, v71);
  v72 = v96;
  HeroHeader.text2.getter();
  sub_26A10A4B4(v72, 0x3274786574, 0xE500000000000000);
  OUTLINED_FUNCTION_35_1();
  sub_26A0E48F0(v73, v74, v75);
  v76 = v97;
  HeroHeader.watchListButton.getter();
  sub_26A10A2EC();
  sub_26A0E48F0(v76, &qword_28036CE50, &qword_26A4269D8);
  KeyPath = swift_getKeyPath();
  sub_26A0F8198(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v78, v79, v80, v81, v92, v93);

  sub_26A103630(v82, v83, v84, v85, v86, v87, v88);
  sub_26A0E48F0(v41, &qword_28036CE48, &qword_26A4269D0);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v90;
  result._countAndFlagsBits = v89;
  return result;
}

uint64_t type metadata accessor for HeroHeader(uint64_t a1)
{
  result = qword_280372210;
  if (!qword_280372210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A2F6744()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t HeroHeader.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoHeroHeader(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_1_45();
  sub_26A2F6B7C();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_10_38();
  sub_26A2F6744();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t HeroHeader.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for HeroHeader(0);
  *(inited + 64) = &protocol witness table for HeroHeader;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_7_23();
  sub_26A2F6B7C();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A2F6A00(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A2F6A00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2F6AB8(uint64_t a1)
{
  result = type metadata accessor for _ProtoHeroHeader(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A2F6B24(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A2F6B7C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

void OUTLINED_FUNCTION_23_25()
{

  sub_26A1F0300();
}

uint64_t OUTLINED_FUNCTION_30_11()
{

  return type metadata accessor for _ProtoHeroHeader(0);
}

uint64_t OUTLINED_FUNCTION_32_15()
{

  return type metadata accessor for _ProtoHeroHeader(0);
}

void sub_26A2F6D3C()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_121_1();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_4_3();
  v1(v8);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_23(v0);
  if (v9)
  {
    *v3 = MEMORY[0x277D84F90];
    *(v3 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v10 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
    OUTLINED_FUNCTION_23(v0);
    if (!v9)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A118238();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A2F6EBC()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_121_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_50_11();
  v0(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_96_3(v5);
  sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoReference_Footnote.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoReference_Footnote(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

void sub_26A2F71BC()
{
  OUTLINED_FUNCTION_69_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_55();
  v9 = *(v6(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_5_3();
    *(v0 + v9) = v2(v10);
  }

  OUTLINED_FUNCTION_125();
  sub_26A118238();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoReference_Footnote.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  v4 = *(type metadata accessor for _ProtoReference_Footnote(v3) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for _ProtoReference_Footnote._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3004EC();
    *(v0 + v4) = v5;
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A118238();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_90_7();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoReference_Standard.text1.getter()
{
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoReference_Standard(v3);
  OUTLINED_FUNCTION_35_1();
  sub_26A10FD9C();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_23(v0);
  if (!v4)
  {
    return OUTLINED_FUNCTION_123_4();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoReference_Standard.text1.setter()
{
  v1 = OUTLINED_FUNCTION_56_9();
  v2 = type metadata accessor for _ProtoReference_Standard(v1);
  sub_26A0E48F0(v0 + *(v2 + 24), &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_36_1();
  sub_26A118238();
  type metadata accessor for _ProtoTextProperty(0);
  v3 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void _ProtoReference_Standard.text1.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_28_9(v5);
  *(v0 + 16) = type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_12();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_35_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_16_5(v10);
  v12 = type metadata accessor for _ProtoReference_Standard(v11);
  OUTLINED_FUNCTION_85_2(*(v12 + 24));
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v5, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_1();
  }

  OUTLINED_FUNCTION_67_1();
}

void _ProtoReference_Standard.action.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_28_9(v5);
  *(v0 + 16) = type metadata accessor for _ProtoActionProperty(v6);
  OUTLINED_FUNCTION_12();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_35_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_16_5(v10);
  v12 = type metadata accessor for _ProtoReference_Standard(v11);
  OUTLINED_FUNCTION_12_13(*(v12 + 28));
  OUTLINED_FUNCTION_4_11();
  if (v13)
  {
    OUTLINED_FUNCTION_75_7(MEMORY[0x277D84F90]);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_4_11();
    if (!v13)
    {
      sub_26A0E48F0(v5, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A118238();
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A2F791C()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = (*v4)[2];
  v10 = **v4;
  if (v11)
  {
    sub_26A11828C();
    sub_26A0E48F0(v10 + v5, v3, v2);
    sub_26A118238();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
    OUTLINED_FUNCTION_12_2();
    sub_26A1182E0();
  }

  else
  {
    sub_26A0E48F0(v10 + v5, v0, v1);
    sub_26A118238();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_75();

  free(v18);
}

void (*_ProtoReference_Standard.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoReference_Standard(v0);
  return nullsub_1;
}

uint64_t _ProtoReference_Logo.thumbnail.getter()
{
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoReference_Logo(v3);
  OUTLINED_FUNCTION_35_1();
  sub_26A10FD9C();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_23(v0);
  if (!v4)
  {
    return OUTLINED_FUNCTION_123_4();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoReference_Logo.thumbnail.setter()
{
  v1 = OUTLINED_FUNCTION_56_9();
  v2 = type metadata accessor for _ProtoReference_Logo(v1);
  sub_26A0E48F0(v0 + *(v2 + 24), &qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_36_1();
  sub_26A118238();
  type metadata accessor for _ProtoVisualProperty(0);
  v3 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void _ProtoReference_Logo.thumbnail.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_28_9(v5);
  *(v0 + 16) = type metadata accessor for _ProtoVisualProperty(v6);
  OUTLINED_FUNCTION_12();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_35_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_16_5(v10);
  v12 = type metadata accessor for _ProtoReference_Logo(v11);
  OUTLINED_FUNCTION_85_2(*(v12 + 24));
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v5, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_1();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A2F7E3C()
{
  OUTLINED_FUNCTION_24_23();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_50_11();
  v1(v6);
  OUTLINED_FUNCTION_87();
  sub_26A10FD9C();
  v7 = v0(0);
  OUTLINED_FUNCTION_96_3(v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  OUTLINED_FUNCTION_12_7();
  sub_26A0E48F0(v10, v11, v12);
  return v9;
}

uint64_t sub_26A2F7F18()
{
  OUTLINED_FUNCTION_24_23();
  v5 = v4(0);
  sub_26A0E48F0(v1 + *(v5 + 24), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_26A2F7FA8(void (*a1)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_104();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_46();
  a1(v7);
  sub_26A10FD9C();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_23(v1);
  if (!v8)
  {
    return sub_26A118238();
  }

  OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
  result = OUTLINED_FUNCTION_23(v1);
  if (!v8)
  {
    return sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t sub_26A2F80C4()
{
  v1 = OUTLINED_FUNCTION_56_9();
  v3 = v2(v1);
  sub_26A0E48F0(v0 + *(v3 + 28), &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A118238();
  type metadata accessor for _ProtoActionProperty(0);
  v4 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void _ProtoReference_Logo.action.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_28_9(v5);
  *(v0 + 16) = type metadata accessor for _ProtoActionProperty(v6);
  OUTLINED_FUNCTION_12();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_35_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_16_5(v10);
  v12 = type metadata accessor for _ProtoReference_Logo(v11);
  OUTLINED_FUNCTION_12_13(*(v12 + 28));
  OUTLINED_FUNCTION_4_11();
  if (v13)
  {
    OUTLINED_FUNCTION_75_7(MEMORY[0x277D84F90]);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_4_11();
    if (!v13)
    {
      sub_26A0E48F0(v5, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A118238();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A2F82C8()
{
  OUTLINED_FUNCTION_24_23();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_50_11();
  v1(v6);
  OUTLINED_FUNCTION_87();
  sub_26A10FD9C();
  v7 = v0(0);
  OUTLINED_FUNCTION_96_3(v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  OUTLINED_FUNCTION_12_7();
  sub_26A0E48F0(v10, v11, v12);
  return v9;
}

uint64_t sub_26A2F83A4()
{
  OUTLINED_FUNCTION_24_23();
  v5 = v4(0);
  sub_26A0E48F0(v1 + *(v5 + 28), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t _ProtoReference_Logo.componentName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_26A2F84B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_26A2F854C()
{
  v2 = OUTLINED_FUNCTION_110();
  v4 = *(v3(v2) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

void (*_ProtoReference_Logo.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoReference_Logo(v0);
  return nullsub_1;
}

uint64_t sub_26A2F8630@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a1(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  a2(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void _ProtoReference_Rich.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  type metadata accessor for _ProtoReference_Rich(v13);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_1();
  }

  OUTLINED_FUNCTION_75();
}

void _ProtoReference_Rich.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  type metadata accessor for _ProtoReference_Rich(v13);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_1();
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A2F8B1C()
{
  OUTLINED_FUNCTION_69_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_55();
  v9 = *(v6(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_5_3();
    *(v0 + v9) = v2(v10);
  }

  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoReference_Rich.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoReference_Rich(v3);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_35_1();
  sub_26A10FD9C();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_23(v0);
  if (!v4)
  {
    return OUTLINED_FUNCTION_123_4();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoReference_Rich.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  v4 = *(type metadata accessor for _ProtoReference_Rich(v3) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for _ProtoReference_Rich._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A2FD080();
    *(v0 + v4) = v5;
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A118238();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_90_7();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoReference_Rich.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoVisualProperty(v8);
  OUTLINED_FUNCTION_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  type metadata accessor for _ProtoReference_Rich(v13);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_1();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoReference_Rich.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoReference_Rich(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoReference_Rich.clearThumbnail()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  v4 = *(type metadata accessor for _ProtoReference_Rich(v3) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for _ProtoReference_Rich._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A2FD080();
    *(v0 + v4) = v5;
  }

  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_90_7();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

void sub_26A2F9154()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_121_1();
  v1 = OUTLINED_FUNCTION_124();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  v0(0, v5);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_23(v7);
  if (v8)
  {
    OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_23(v7);
    if (!v8)
    {
      sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    sub_26A118238();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoReference_Rich.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  v4 = *(type metadata accessor for _ProtoReference_Rich(v3) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for _ProtoReference_Rich._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A2FD080();
    *(v0 + v4) = v5;
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A118238();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_90_7();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoReference_Rich.action.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoActionProperty(v8);
  OUTLINED_FUNCTION_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  type metadata accessor for _ProtoReference_Rich(v13);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_75_7(MEMORY[0x277D84F90]);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_1_4();
    if (!v14)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_1();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoReference_Rich.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoReference_Rich(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoReference_Rich.clearAction()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  v4 = *(type metadata accessor for _ProtoReference_Rich(v3) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for _ProtoReference_Rich._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A2FD080();
    *(v0 + v4) = v5;
  }

  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_90_7();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A2F969C(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();

  return OUTLINED_FUNCTION_246();
}

uint64_t sub_26A2F9704(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoReference_Rich.componentName.setter(v1, v2);
}

uint64_t sub_26A2F978C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), uint64_t (*a5)(uint64_t), void *a6)
{
  v10 = v6;
  v13 = *(a3(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v6 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_5_3();
    isUniquelyReferenced_nonNull_native = a5(v16);
    v15 = isUniquelyReferenced_nonNull_native;
    *(v10 + v13) = isUniquelyReferenced_nonNull_native;
  }

  v17 = (v15 + *a6);
  OUTLINED_FUNCTION_110_2(isUniquelyReferenced_nonNull_native, v19);
  *v17 = a1;
  v17[1] = a2;
}

uint64_t _ProtoReference_Rich.componentName.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  v3 = OUTLINED_FUNCTION_20_11(v2);
  v4 = *(type metadata accessor for _ProtoReference_Rich(v3) + 20);
  *(v1 + 72) = v4;
  v5 = (*(v0 + v4) + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__componentName);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v6 = v5[1];
  *(v1 + 48) = *v5;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoReference_Button.label.getter()
{
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoReference_Button(v3);
  OUTLINED_FUNCTION_35_1();
  sub_26A10FD9C();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_23(v0);
  if (!v4)
  {
    return OUTLINED_FUNCTION_123_4();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoReference_Button.label.setter()
{
  v1 = OUTLINED_FUNCTION_56_9();
  v2 = type metadata accessor for _ProtoReference_Button(v1);
  sub_26A0E48F0(v0 + *(v2 + 28), &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_36_1();
  sub_26A118238();
  type metadata accessor for _ProtoTextProperty(0);
  v3 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void _ProtoReference_Button.label.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_28_9(v5);
  *(v0 + 16) = type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_12();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_35_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_16_5(v10);
  v12 = type metadata accessor for _ProtoReference_Button(v11);
  OUTLINED_FUNCTION_85_2(*(v12 + 28));
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v5, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_1();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoReference_Button.action.getter()
{
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoReference_Button(v3);
  sub_26A10FD9C();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_23(v0);
  if (!v4)
  {
    return sub_26A118238();
  }

  OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
  result = OUTLINED_FUNCTION_23(v0);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t _ProtoReference_Button.action.setter()
{
  v1 = OUTLINED_FUNCTION_56_9();
  v2 = type metadata accessor for _ProtoReference_Button(v1);
  sub_26A0E48F0(v0 + *(v2 + 32), &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A118238();
  type metadata accessor for _ProtoActionProperty(0);
  v3 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void _ProtoReference_Button.action.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_28_9(v5);
  *(v0 + 16) = type metadata accessor for _ProtoActionProperty(v6);
  OUTLINED_FUNCTION_12();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_35_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_16_5(v10);
  v12 = type metadata accessor for _ProtoReference_Button(v11);
  OUTLINED_FUNCTION_12_13(*(v12 + 32));
  OUTLINED_FUNCTION_4_11();
  if (v13)
  {
    OUTLINED_FUNCTION_75_7(MEMORY[0x277D84F90]);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_4_11();
    if (!v13)
    {
      sub_26A0E48F0(v5, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A118238();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoReference_Button.hasAction.getter()
{
  v1 = OUTLINED_FUNCTION_133();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoReference_Button(v5);
  sub_26A10FD9C();
  v6 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v6);
  return v0;
}

Swift::Void __swiftcall _ProtoReference_Button.clearAction()()
{
  v1 = type metadata accessor for _ProtoReference_Button(0);
  sub_26A0E48F0(v0 + *(v1 + 32), &off_28036C7C0, &off_26A427400);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void _ProtoReference_Button.buttonRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t _ProtoReference_Button.buttonRole.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t _ProtoReference_Button.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoReference_Button(0) + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t _ProtoReference_Button.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_110();
  v3 = *(type metadata accessor for _ProtoReference_Button(v2) + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*_ProtoReference_Button.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoReference_Button(v0);
  return nullsub_1;
}

unint64_t _ProtoReference_Button.ButtonRole.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_26A2FA204@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoReference_Button.ButtonRole.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A2FA238(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A300954();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t _ProtoReference_Button.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for _ProtoReference_Button(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t static _ProtoReference_Button.ButtonRole.allCases.getter()
{
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
}

uint64_t static _ProtoReference_Button.ButtonRole.allCases.setter(void *a1)
{
  OUTLINED_FUNCTION_110_2(a1, v3);
  off_280372220 = a1;
}

uint64_t (*static _ProtoReference_Button.ButtonRole.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26A2FA400@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoReference_Button.ButtonRole.allCases.getter();
  *a1 = result;
  return result;
}

void _ProtoReference_Footnote.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  type metadata accessor for _ProtoReference_Footnote(v13);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_1();
  }

  OUTLINED_FUNCTION_75();
}

void _ProtoReference_Footnote.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  type metadata accessor for _ProtoReference_Footnote(v13);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_1();
  }

  OUTLINED_FUNCTION_75();
}

void _ProtoReference_Footnote.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  type metadata accessor for _ProtoReference_Footnote(v13);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_1();
  }

  OUTLINED_FUNCTION_75();
}

void _ProtoReference_Footnote.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  type metadata accessor for _ProtoReference_Footnote(v13);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_1();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2FAAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(char *))
{
  OUTLINED_FUNCTION_121_1();
  v9 = v8(0);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  OUTLINED_FUNCTION_12_2();
  sub_26A11828C();
  return a7(v12);
}

void _ProtoReference_Footnote.action.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoActionProperty(v8);
  OUTLINED_FUNCTION_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  type metadata accessor for _ProtoReference_Footnote(v13);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_75_7(MEMORY[0x277D84F90]);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_1_4();
    if (!v14)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_1();
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A2FAC9C()
{
  OUTLINED_FUNCTION_69_1();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_103();
    sub_26A11828C();
    v2(v3);
    OUTLINED_FUNCTION_104();
    sub_26A1182E0();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_67_1();

  free(v7);
}

Swift::Void __swiftcall _ProtoReference_Footnote.clearAction()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  v4 = *(type metadata accessor for _ProtoReference_Footnote(v3) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for _ProtoReference_Footnote._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3004EC();
    *(v0 + v4) = v5;
  }

  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_90_7();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A2FAE2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoReference_Footnote.componentName.setter(v1, v2);
}

uint64_t _ProtoReference_Footnote.componentName.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  v3 = OUTLINED_FUNCTION_20_11(v2);
  v4 = *(type metadata accessor for _ProtoReference_Footnote(v3) + 20);
  *(v1 + 72) = v4;
  v5 = (*(v0 + v4) + OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__componentName);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v6 = v5[1];
  *(v1 + 48) = *v5;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_133();
}

void sub_26A2FAF40()
{
  OUTLINED_FUNCTION_76();
  v5 = *v4;
  v6 = *(*v4 + 48);
  v7 = *(*v4 + 56);
  if (v8)
  {
    v9 = v3;

    v10 = OUTLINED_FUNCTION_125();
    v9(v10);
  }

  else
  {
    v11 = v2;
    v12 = v1;
    v13 = v0;
    v14 = *(v5 + 72);
    v15 = *(v5 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v15 + v14);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = *(v5 + 72);
      v19 = *(v5 + 64);
      v13(0);
      OUTLINED_FUNCTION_100_0();
      swift_allocObject();
      v20 = OUTLINED_FUNCTION_5_3();
      isUniquelyReferenced_nonNull_native = v12(v20);
      v17 = isUniquelyReferenced_nonNull_native;
      *(v19 + v18) = isUniquelyReferenced_nonNull_native;
    }

    v21 = (v17 + *v11);
    OUTLINED_FUNCTION_110_2(isUniquelyReferenced_nonNull_native, v5 + 24);
    *v21 = v6;
    v21[1] = v7;
  }

  OUTLINED_FUNCTION_75();

  free(v22);
}

uint64_t sub_26A2FB080@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_125();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_26A2FB11C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372228);
  __swift_project_value_buffer(v0, qword_280372228);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = 0x26A44B000;
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "component_name";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A2FB390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoReference_Standard(0);
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A30090C(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  return sub_26A424944();
}

uint64_t sub_26A2FB488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoReference_Standard(0);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A118238();
  sub_26A30090C(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1182E0();
}

void static _ProtoReference_Standard.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_109_5();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_5(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_42();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = OUTLINED_FUNCTION_40_16(v10, v37);
  type metadata accessor for _ProtoTextProperty(v11);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_87_5();
  v13 = OUTLINED_FUNCTION_104();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_41(v15);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_55();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_93_5();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_24_9();
  type metadata accessor for _ProtoReference_Standard(v18);
  OUTLINED_FUNCTION_44_12();
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_12_1(v4);
  if (v19)
  {
    OUTLINED_FUNCTION_12_1(v4 + v1);
    if (v19)
    {
      sub_26A0E48F0(v4, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_9:
    v20 = &qword_28036C7D0;
    v21 = &qword_26A426DE0;
    v22 = v4;
LABEL_36:
    sub_26A0E48F0(v22, v20, v21);
    goto LABEL_37;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_12_1(v4 + v1);
  if (v19)
  {
    sub_26A1182E0();
    goto LABEL_9;
  }

  sub_26A118238();
  static _ProtoTextProperty.== infix(_:_:)(v0, v3);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_48_1();
  sub_26A1182E0();
  sub_26A0E48F0(v4, &qword_28036C7B8, &unk_26A425BF0);
  if ((&qword_28036C7B8 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_11:
  v23 = *(v38 + 48);
  OUTLINED_FUNCTION_65_11();
  OUTLINED_FUNCTION_64_8();
  OUTLINED_FUNCTION_78_7();
  if (!v19)
  {
    OUTLINED_FUNCTION_105_2();
    OUTLINED_FUNCTION_12_1(v1 + v23);
    if (!v29)
    {
      OUTLINED_FUNCTION_107_5();
      sub_26A0E36D8(*v2, 0x700024204);
      if (v30)
      {
        OUTLINED_FUNCTION_94_5();
        v33 = v19 && v31 == v32;
        if (v33 || (sub_26A425354() & 1) != 0)
        {
          v34 = dword_28036C7D8;
          sub_26A424794();
          OUTLINED_FUNCTION_2_38();
          sub_26A30090C(v35, v36, MEMORY[0x277D216D0]);
          OUTLINED_FUNCTION_81_6();
          OUTLINED_FUNCTION_11_26();
          sub_26A1182E0();
          sub_26A1182E0();
          sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
          if ((v34 & 1) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_16;
        }
      }

      sub_26A1182E0();
      sub_26A1182E0();
      v20 = &off_28036C7C0;
      v21 = &off_26A427400;
      goto LABEL_35;
    }

    sub_26A1182E0();
LABEL_25:
    v20 = &qword_28036C7C8;
    v21 = &qword_26A425C00;
LABEL_35:
    v22 = v1;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_12_1(v1 + v23);
  if (!v19)
  {
    goto LABEL_25;
  }

  sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
LABEL_16:
  OUTLINED_FUNCTION_95_5();
  if (v19)
  {
    v26 = v24 == v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 || (sub_26A425354() & 1) != 0)
  {
    sub_26A424794();
    OUTLINED_FUNCTION_2_38();
    sub_26A30090C(v27, v28, MEMORY[0x277D216D0]);
    OUTLINED_FUNCTION_80_6();
  }

LABEL_37:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2FBB8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A30090C(&qword_280372450, type metadata accessor for _ProtoReference_Standard, &protocol conformance descriptor for _ProtoReference_Standard);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2FBC0C(uint64_t a1)
{
  v2 = sub_26A30090C(&qword_28036F7D8, type metadata accessor for _ProtoReference_Standard, &protocol conformance descriptor for _ProtoReference_Standard);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2FBC7C(uint64_t a1, uint64_t a2)
{
  sub_26A30090C(&qword_28036F7D8, type metadata accessor for _ProtoReference_Standard, &protocol conformance descriptor for _ProtoReference_Standard);

  return sub_26A4249B4();
}

uint64_t sub_26A2FBD14()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372240);
  __swift_project_value_buffer(v0, qword_280372240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "thumbnail";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "component_name";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A2FBF88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_26A424924();
        break;
      case 2:
        OUTLINED_FUNCTION_122_3();
        sub_26A2FC0E8();
        break;
      case 1:
        v8 = OUTLINED_FUNCTION_122_3();
        a4(v8);
        break;
    }
  }

  return result;
}

uint64_t sub_26A2FC034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoReference_Logo(0);
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A30090C(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  return sub_26A424944();
}

uint64_t sub_26A2FC0E8()
{
  OUTLINED_FUNCTION_213_0();
  v0(0);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_48_17();
  sub_26A30090C(v1, v2, &protocol conformance descriptor for _ProtoActionProperty);
  OUTLINED_FUNCTION_56_12();
  return sub_26A424944();
}

uint64_t sub_26A2FC1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  OUTLINED_FUNCTION_87();
  result = v9();
  if (!v6)
  {
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_87();
    sub_26A2FC464(v11, v12, v13, v14, a5);
    OUTLINED_FUNCTION_98_5();
    if (v15)
    {
      OUTLINED_FUNCTION_56_12();
      sub_26A424A64();
    }

    a6(0);
    OUTLINED_FUNCTION_12_7();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A2FC290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoReference_Logo(0);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A118238();
  sub_26A30090C(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A1182E0();
}

uint64_t sub_26A2FC464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v17[3] = a4;
  v17[1] = a3;
  v6 = OUTLINED_FUNCTION_12_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  v12 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  a5(0);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return sub_26A0E48F0(v11, &off_28036C7C0, &off_26A427400);
  }

  sub_26A118238();
  OUTLINED_FUNCTION_48_17();
  sub_26A30090C(v15, v16, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A1182E0();
}

void static _ProtoReference_Logo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_109_5();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_5(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_42();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = OUTLINED_FUNCTION_40_16(v10, v37);
  type metadata accessor for _ProtoVisualProperty(v11);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_87_5();
  v13 = OUTLINED_FUNCTION_104();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_41(v15);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_55();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  OUTLINED_FUNCTION_93_5();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_24_9();
  type metadata accessor for _ProtoReference_Logo(v18);
  OUTLINED_FUNCTION_44_12();
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_12_1(v4);
  if (v19)
  {
    OUTLINED_FUNCTION_12_1(v4 + v1);
    if (v19)
    {
      sub_26A0E48F0(v4, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_11;
    }

LABEL_9:
    v20 = &qword_28036D190;
    v21 = &unk_26A427130;
    v22 = v4;
LABEL_36:
    sub_26A0E48F0(v22, v20, v21);
    goto LABEL_37;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_12_1(v4 + v1);
  if (v19)
  {
    sub_26A1182E0();
    goto LABEL_9;
  }

  sub_26A118238();
  static _ProtoVisualProperty.== infix(_:_:)(v0, v3);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_48_1();
  sub_26A1182E0();
  sub_26A0E48F0(v4, &qword_28036CAE8, &unk_26A426430);
  if ((&qword_28036CAE8 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_11:
  v23 = *(v38 + 48);
  OUTLINED_FUNCTION_65_11();
  OUTLINED_FUNCTION_64_8();
  OUTLINED_FUNCTION_78_7();
  if (!v19)
  {
    OUTLINED_FUNCTION_105_2();
    OUTLINED_FUNCTION_12_1(v1 + v23);
    if (!v29)
    {
      OUTLINED_FUNCTION_107_5();
      sub_26A0E36D8(*v2, 0x700024204);
      if (v30)
      {
        OUTLINED_FUNCTION_94_5();
        v33 = v19 && v31 == v32;
        if (v33 || (sub_26A425354() & 1) != 0)
        {
          v34 = dword_28036C7D8;
          sub_26A424794();
          OUTLINED_FUNCTION_2_38();
          sub_26A30090C(v35, v36, MEMORY[0x277D216D0]);
          OUTLINED_FUNCTION_81_6();
          OUTLINED_FUNCTION_11_26();
          sub_26A1182E0();
          sub_26A1182E0();
          sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
          if ((v34 & 1) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_16;
        }
      }

      sub_26A1182E0();
      sub_26A1182E0();
      v20 = &off_28036C7C0;
      v21 = &off_26A427400;
      goto LABEL_35;
    }

    sub_26A1182E0();
LABEL_25:
    v20 = &qword_28036C7C8;
    v21 = &qword_26A425C00;
LABEL_35:
    v22 = v1;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_12_1(v1 + v23);
  if (!v19)
  {
    goto LABEL_25;
  }

  sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
LABEL_16:
  OUTLINED_FUNCTION_95_5();
  if (v19)
  {
    v26 = v24 == v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 || (sub_26A425354() & 1) != 0)
  {
    sub_26A424794();
    OUTLINED_FUNCTION_2_38();
    sub_26A30090C(v27, v28, MEMORY[0x277D216D0]);
    OUTLINED_FUNCTION_80_6();
  }

LABEL_37:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2FCB48(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A30090C(&qword_280372448, type metadata accessor for _ProtoReference_Logo, &protocol conformance descriptor for _ProtoReference_Logo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2FCBC8(uint64_t a1)
{
  v2 = sub_26A30090C(&qword_28036F788, type metadata accessor for _ProtoReference_Logo, &protocol conformance descriptor for _ProtoReference_Logo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2FCC38(uint64_t a1, uint64_t a2)
{
  sub_26A30090C(&qword_28036F788, type metadata accessor for _ProtoReference_Logo, &protocol conformance descriptor for _ProtoReference_Logo);

  return sub_26A4249B4();
}

uint64_t sub_26A2FCCD0()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372258);
  __swift_project_value_buffer(v0, qword_280372258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A4271D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_2";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "thumbnail";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = 0x26A44B000;
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "component_name";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A2FCFB8()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text2, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__thumbnail;
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__action;
  v6 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  return v0;
}

void sub_26A2FD080()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = (v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__componentName);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_104_3();
  swift_endAccess();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_104_3();
  swift_endAccess();
  v25 = (v2 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__componentName);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v27 = *v25;
  v26 = v25[1];

  swift_beginAccess();
  *v24 = v27;
  v24[1] = v26;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2FD3E4()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A2FD510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        sub_26A300EA0();
        break;
      case 3:
        sub_26A2FD638(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A2FD714(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A300E30();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A2FD638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A30090C(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2FD714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A30090C(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2FD820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A30134C(a1, a2, a3, a4, &OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text1, 1);
  if (!v4)
  {
    sub_26A30134C(a1, a2, a3, a4, &OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text2, 2);
    sub_26A2FD954(a1, a2, a3, a4);
    sub_26A2FDB3C(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__componentName);
    result = swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A2FD954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A118238();
  sub_26A30090C(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A1182E0();
}

uint64_t sub_26A2FDB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
  }

  sub_26A118238();
  sub_26A30090C(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A1182E0();
}

uint64_t sub_26A2FDD50(uint64_t a1, uint64_t a2)
{
  v82 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v82);
  v78 = (&v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  MEMORY[0x28223BE20](v81);
  v83 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v6 - 8);
  v79 = (&v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v88 = &v77 - v9;
  v86 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v86);
  v80 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  MEMORY[0x28223BE20](v85);
  v87 = &v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v12 - 8);
  v84 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v90 = &v77 - v15;
  v16 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v16);
  v91 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  MEMORY[0x28223BE20](v18);
  v94 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v77 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v23 - 8);
  v89 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v93 = &v77 - v26;
  MEMORY[0x28223BE20](v27);
  v95 = &v77 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v77 - v30;
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v92 = v18;
  v32 = *(v18 + 48);
  v33 = v16;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v22, 1, v16) == 1)
  {

    sub_26A0E48F0(v31, &qword_28036C7B8, &unk_26A425BF0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v22[v32], 1, v16);
    v35 = a1;
    if (EnumTagSinglePayload == 1)
    {
      sub_26A0E48F0(v22, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_9;
    }

LABEL_6:
    sub_26A0E48F0(v22, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_45;
  }

  v35 = a1;
  v36 = v95;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v22[v32], 1, v33) == 1)
  {

    sub_26A0E48F0(v31, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1182E0();
    goto LABEL_6;
  }

  v37 = v91;
  sub_26A118238();

  v38 = static _ProtoTextProperty.== infix(_:_:)(v36, v37);
  sub_26A1182E0();
  sub_26A0E48F0(v31, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1182E0();
  sub_26A0E48F0(v22, &qword_28036C7B8, &unk_26A425BF0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_9:
  v39 = a2;
  swift_beginAccess();
  v40 = v93;
  sub_26A10FD9C();
  swift_beginAccess();
  v41 = *(v92 + 48);
  v42 = v94;
  sub_26A10FD9C();
  v43 = v39;
  sub_26A10FD9C();
  v44 = v35;
  if (__swift_getEnumTagSinglePayload(v42, 1, v33) == 1)
  {
    sub_26A0E48F0(v40, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v42 + v41, 1, v33) == 1)
    {
      sub_26A0E48F0(v42, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_16;
    }

LABEL_14:
    v46 = &qword_28036C7D0;
    v47 = &qword_26A426DE0;
    v48 = v42;
LABEL_44:
    sub_26A0E48F0(v48, v46, v47);
    goto LABEL_45;
  }

  v45 = v89;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v42 + v41, 1, v33) == 1)
  {
    sub_26A0E48F0(v40, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1182E0();
    goto LABEL_14;
  }

  v49 = v91;
  sub_26A118238();
  v50 = static _ProtoTextProperty.== infix(_:_:)(v45, v49);
  sub_26A1182E0();
  sub_26A0E48F0(v40, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1182E0();
  sub_26A0E48F0(v42, &qword_28036C7B8, &unk_26A425BF0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_16:
  swift_beginAccess();
  v51 = v90;
  sub_26A10FD9C();
  swift_beginAccess();
  v52 = *(v85 + 48);
  v53 = v87;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v54 = v86;
  if (__swift_getEnumTagSinglePayload(v53, 1, v86) == 1)
  {
    sub_26A0E48F0(v51, &qword_28036CAE8, &unk_26A426430);
    v55 = __swift_getEnumTagSinglePayload(v53 + v52, 1, v54);
    v56 = v88;
    if (v55 == 1)
    {
      sub_26A0E48F0(v53, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v57 = v84;
  sub_26A10FD9C();
  v58 = __swift_getEnumTagSinglePayload(v53 + v52, 1, v54);
  v56 = v88;
  if (v58 == 1)
  {
    sub_26A0E48F0(v90, &qword_28036CAE8, &unk_26A426430);
    sub_26A1182E0();
LABEL_21:
    v46 = &qword_28036D190;
    v47 = &unk_26A427130;
    v48 = v53;
    goto LABEL_44;
  }

  v59 = v80;
  sub_26A118238();
  v60 = static _ProtoVisualProperty.== infix(_:_:)(v57, v59);
  sub_26A1182E0();
  sub_26A0E48F0(v90, &qword_28036CAE8, &unk_26A426430);
  sub_26A1182E0();
  sub_26A0E48F0(v53, &qword_28036CAE8, &unk_26A426430);
  if ((v60 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_23:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v61 = *(v81 + 48);
  v62 = v83;
  sub_26A10FD9C();
  v63 = v62;
  sub_26A10FD9C();
  v64 = v82;
  if (__swift_getEnumTagSinglePayload(v62, 1, v82) != 1)
  {
    v72 = v79;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v63 + v61, 1, v64) == 1)
    {
      sub_26A0E48F0(v56, &off_28036C7C0, &off_26A427400);
      sub_26A1182E0();
      goto LABEL_34;
    }

    v73 = v78;
    sub_26A118238();
    sub_26A0E36D8(*v72, *v73);
    if ((v74 & 1) == 0 || (v72[1] == v73[1] ? (v75 = v72[2] == v73[2]) : (v75 = 0), !v75 && (sub_26A425354() & 1) == 0))
    {
      sub_26A1182E0();
      sub_26A0E48F0(v56, &off_28036C7C0, &off_26A427400);
      sub_26A1182E0();
      v48 = v63;
      v46 = &off_28036C7C0;
      v47 = &off_26A427400;
      goto LABEL_44;
    }

    sub_26A424794();
    sub_26A30090C(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v76 = sub_26A424B64();
    sub_26A1182E0();
    sub_26A0E48F0(v56, &off_28036C7C0, &off_26A427400);
    sub_26A1182E0();
    sub_26A0E48F0(v63, &off_28036C7C0, &off_26A427400);
    if (v76)
    {
      goto LABEL_26;
    }

LABEL_45:

    return 0;
  }

  sub_26A0E48F0(v56, &off_28036C7C0, &off_26A427400);
  if (__swift_getEnumTagSinglePayload(v62 + v61, 1, v64) != 1)
  {
LABEL_34:
    v46 = &qword_28036C7C8;
    v47 = &qword_26A425C00;
    v48 = v63;
    goto LABEL_44;
  }

  sub_26A0E48F0(v62, &off_28036C7C0, &off_26A427400);
LABEL_26:
  v65 = (v44 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__componentName);
  swift_beginAccess();
  v66 = *v65;
  v67 = v65[1];
  v68 = (v43 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__componentName);
  swift_beginAccess();
  if (v66 == *v68 && v67 == v68[1])
  {

    return 1;
  }

  v70 = sub_26A425354();

  result = 0;
  if (v70)
  {
    return 1;
  }

  return result;
}

uint64_t sub_26A2FEC84(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A30090C(&qword_280372440, type metadata accessor for _ProtoReference_Rich, &protocol conformance descriptor for _ProtoReference_Rich);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2FED04(uint64_t a1)
{
  v2 = sub_26A30090C(&qword_28036F780, type metadata accessor for _ProtoReference_Rich, &protocol conformance descriptor for _ProtoReference_Rich);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2FED74(uint64_t a1, uint64_t a2)
{
  sub_26A30090C(&qword_28036F780, type metadata accessor for _ProtoReference_Rich, &protocol conformance descriptor for _ProtoReference_Rich);

  return sub_26A4249B4();
}

uint64_t sub_26A2FEE0C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372278);
  __swift_project_value_buffer(v0, qword_280372278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "component_name";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "button_role";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoReference_Button.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_246();
        OUTLINED_FUNCTION_87();
        sub_26A2FF13C(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_246();
        OUTLINED_FUNCTION_87();
        sub_26A2FF1F0(v9, v10, v11, v12);
        break;
      case 3:
        OUTLINED_FUNCTION_12_7();
        sub_26A424924();
        break;
      case 4:
        OUTLINED_FUNCTION_246();
        OUTLINED_FUNCTION_87();
        sub_26A2FF2A4(v7, v8);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A2FF13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoReference_Button(0);
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A30090C(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  return sub_26A424944();
}

uint64_t sub_26A2FF1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoReference_Button(0);
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A30090C(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  return sub_26A424944();
}

uint64_t _ProtoReference_Button.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_87();
  result = sub_26A2FF414(v5, v6, v7, v8);
  if (!v4)
  {
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_87();
    sub_26A2FF5E8(v10, v11, v12, v13);
    OUTLINED_FUNCTION_98_5();
    if (v14)
    {
      OUTLINED_FUNCTION_56_12();
      sub_26A424A64();
    }

    if (*(v3 + 16))
    {
      sub_26A300954();
      sub_26A4249F4();
    }

    type metadata accessor for _ProtoReference_Button(0);
    OUTLINED_FUNCTION_12_7();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A2FF414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoReference_Button(0);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A118238();
  sub_26A30090C(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1182E0();
}

uint64_t sub_26A2FF5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoReference_Button(0);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
  }

  sub_26A118238();
  sub_26A30090C(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A1182E0();
}

void static _ProtoReference_Button.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_109_5();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_5(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v12 = OUTLINED_FUNCTION_40_16(v11, v38);
  type metadata accessor for _ProtoTextProperty(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_87_5();
  v14 = OUTLINED_FUNCTION_104();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_41(v16);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_55();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_93_5();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_24_9();
  type metadata accessor for _ProtoReference_Button(v19);
  OUTLINED_FUNCTION_44_12();
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_12_1(v5);
  if (v20)
  {
    OUTLINED_FUNCTION_12_1(v5 + v2);
    if (v20)
    {
      sub_26A0E48F0(v5, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_9:
    v21 = &qword_28036C7D0;
    v22 = &qword_26A426DE0;
    v23 = v5;
LABEL_37:
    sub_26A0E48F0(v23, v21, v22);
    goto LABEL_38;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_12_1(v5 + v2);
  if (v20)
  {
    sub_26A1182E0();
    goto LABEL_9;
  }

  sub_26A118238();
  static _ProtoTextProperty.== infix(_:_:)(v0, v4);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_48_1();
  sub_26A1182E0();
  sub_26A0E48F0(v5, &qword_28036C7B8, &unk_26A425BF0);
  if ((&qword_28036C7B8 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_11:
  v24 = *(v39 + 48);
  OUTLINED_FUNCTION_65_11();
  OUTLINED_FUNCTION_64_8();
  OUTLINED_FUNCTION_78_7();
  if (!v20)
  {
    OUTLINED_FUNCTION_105_2();
    OUTLINED_FUNCTION_12_1(v2 + v24);
    if (!v30)
    {
      OUTLINED_FUNCTION_107_5();
      sub_26A0E36D8(*v3, 0x700024204);
      if (v31)
      {
        OUTLINED_FUNCTION_94_5();
        v34 = v20 && v32 == v33;
        if (v34 || (sub_26A425354() & 1) != 0)
        {
          v35 = dword_28036C7D8;
          sub_26A424794();
          OUTLINED_FUNCTION_2_38();
          sub_26A30090C(v36, v37, MEMORY[0x277D216D0]);
          OUTLINED_FUNCTION_81_6();
          OUTLINED_FUNCTION_11_26();
          sub_26A1182E0();
          sub_26A1182E0();
          sub_26A0E48F0(v2, &off_28036C7C0, &off_26A427400);
          if ((v35 & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_16;
        }
      }

      sub_26A1182E0();
      sub_26A1182E0();
      v21 = &off_28036C7C0;
      v22 = &off_26A427400;
      goto LABEL_36;
    }

    sub_26A1182E0();
LABEL_26:
    v21 = &qword_28036C7C8;
    v22 = &qword_26A425C00;
LABEL_36:
    v23 = v2;
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_12_1(v2 + v24);
  if (!v20)
  {
    goto LABEL_26;
  }

  sub_26A0E48F0(v2, &off_28036C7C0, &off_26A427400);
LABEL_16:
  OUTLINED_FUNCTION_95_5();
  if (v20)
  {
    v27 = v25 == v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 || (sub_26A425354()) && sub_26A257DA8(0xB00025A0CLL, 0, *(v1 + 16)))
  {
    sub_26A424794();
    OUTLINED_FUNCTION_2_38();
    sub_26A30090C(v28, v29, MEMORY[0x277D216D0]);
    OUTLINED_FUNCTION_80_6();
  }

LABEL_38:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2FFD04(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A30090C(&qword_280372438, type metadata accessor for _ProtoReference_Button, &protocol conformance descriptor for _ProtoReference_Button);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2FFD84(uint64_t a1)
{
  v2 = sub_26A30090C(&qword_28036F770, type metadata accessor for _ProtoReference_Button, &protocol conformance descriptor for _ProtoReference_Button);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2FFDF4(uint64_t a1, uint64_t a2)
{
  sub_26A30090C(&qword_28036F770, type metadata accessor for _ProtoReference_Button, &protocol conformance descriptor for _ProtoReference_Button);

  return sub_26A4249B4();
}

uint64_t sub_26A2FFE74()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372290);
  __swift_project_value_buffer(v0, qword_280372290);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "STANDARD";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PREFERRED";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PREFERRED_AND_DESTRUCTIVE";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A3000B8()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803722A8);
  __swift_project_value_buffer(v0, qword_2803722A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26A42B080;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "text_1";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_26A424A94();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "text_2";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 5;
  *v11 = "text_3";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 6;
  *v13 = "text_4";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 3;
  *v15 = "action";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 4;
  *v17 = "component_name";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  return sub_26A424AA4();
}

uint64_t sub_26A3003C0(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_100_0();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_26A300410()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text3, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text4, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__action;
  v4 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__componentName);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  return v0;
}

void sub_26A3004EC()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_87_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v7);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v7);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__componentName);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_88_8();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_88_8();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_88_8();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_88_8();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_88_8();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_88_8();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_104_3();
  swift_endAccess();
  v25 = (v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__componentName);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v27 = *v25;
  v26 = v25[1];

  swift_beginAccess();
  *v24 = v27;
  v24[1] = v26;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A30090C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26A300954()
{
  result = qword_280372338;
  if (!qword_280372338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372338);
  }

  return result;
}

uint64_t sub_26A3009A8()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text3, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A300A8C(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_26A300B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_5_3();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_26A300C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 5:
      case 6:
        sub_26A300EA0();
        break;
      case 3:
        sub_26A300D54(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A300E30();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A300D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A30090C(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A300E30()
{
  OUTLINED_FUNCTION_213_0();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_12_7();
  sub_26A424924();
  return swift_endAccess();
}

uint64_t sub_26A300EA0()
{
  OUTLINED_FUNCTION_213_0();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_49_18();
  sub_26A30090C(v0, v1, &protocol conformance descriptor for _ProtoTextProperty);
  OUTLINED_FUNCTION_56_12();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A300F7C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
{
  a4(0);
  OUTLINED_FUNCTION_12_7();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_103();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A300FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A30134C(a1, a2, a3, a4, &OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text1, 1);
  if (!v4)
  {
    sub_26A30134C(a1, a2, a3, a4, &OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text2, 2);
    sub_26A301164(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__componentName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }

    sub_26A30134C(a1, a2, a3, a4, &OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text3, 5);
    return sub_26A30134C(a1, a2, a3, a4, &OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text4, 6);
  }

  return result;
}

uint64_t sub_26A301164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
  }

  sub_26A118238();
  sub_26A30090C(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A1182E0();
}

uint64_t sub_26A30134C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_87_5();
  v9 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A118238();
  OUTLINED_FUNCTION_49_18();
  sub_26A30090C(v12, v13, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1182E0();
}

uint64_t sub_26A301530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v7 = a3(0);
  if (*(a1 + *(v7 + 20)) != *(a2 + *(v7 + 20)))
  {

    v8 = OUTLINED_FUNCTION_12_2();
    v9 = a4(v8);

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_2_38();
  sub_26A30090C(v10, v11, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_246();
  return sub_26A424B64() & 1;
}

uint64_t sub_26A30160C(uint64_t a1, uint64_t a2)
{
  v107 = a2;
  v91 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v91);
  v88 = (&v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  MEMORY[0x28223BE20](v90);
  v92 = &v87 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v5 - 8);
  v89 = (&v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v94 = &v87 - v8;
  v106 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v106);
  v101 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  MEMORY[0x28223BE20](v10);
  v95 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v97 = &v87 - v13;
  MEMORY[0x28223BE20](v14);
  v100 = &v87 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v87 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v19 - 8);
  v93 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v102 = &v87 - v22;
  MEMORY[0x28223BE20](v23);
  v96 = &v87 - v24;
  MEMORY[0x28223BE20](v25);
  v99 = &v87 - v26;
  MEMORY[0x28223BE20](v27);
  v98 = &v87 - v28;
  MEMORY[0x28223BE20](v29);
  v104 = &v87 - v30;
  MEMORY[0x28223BE20](v31);
  v103 = &v87 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v87 - v34;
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v105 = v10;
  v36 = *(v10 + 48);
  sub_26A10FD9C();
  v37 = v106;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v18, 1, v37) == 1)
  {

    sub_26A0E48F0(v35, &qword_28036C7B8, &unk_26A425BF0);
    v38 = a1;
    if (__swift_getEnumTagSinglePayload(&v18[v36], 1, v37) == 1)
    {
      sub_26A0E48F0(v18, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_9;
    }

LABEL_6:
    sub_26A0E48F0(v18, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_52;
  }

  v38 = a1;
  v39 = v103;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v18[v36], 1, v37) == 1)
  {

    sub_26A0E48F0(v35, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1182E0();
    goto LABEL_6;
  }

  v40 = v101;
  sub_26A118238();

  v41 = static _ProtoTextProperty.== infix(_:_:)(v39, v40);
  sub_26A1182E0();
  sub_26A0E48F0(v35, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1182E0();
  sub_26A0E48F0(v18, &qword_28036C7B8, &unk_26A425BF0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_9:
  swift_beginAccess();
  v42 = v37;
  v43 = v104;
  sub_26A10FD9C();
  swift_beginAccess();
  v44 = *(v105 + 48);
  v45 = v100;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v46 = v38;
  if (__swift_getEnumTagSinglePayload(v45, 1, v42) == 1)
  {
    sub_26A0E48F0(v43, &qword_28036C7B8, &unk_26A425BF0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45 + v44, 1, v42);
    v48 = v102;
    if (EnumTagSinglePayload == 1)
    {
      sub_26A0E48F0(v45, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_16;
    }

LABEL_14:
    v51 = &qword_28036C7D0;
    v52 = &qword_26A426DE0;
    v53 = v45;
LABEL_51:
    sub_26A0E48F0(v53, v51, v52);
    goto LABEL_52;
  }

  v49 = v98;
  sub_26A10FD9C();
  v50 = __swift_getEnumTagSinglePayload(v45 + v44, 1, v42);
  v48 = v102;
  if (v50 == 1)
  {
    sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1182E0();
    goto LABEL_14;
  }

  v54 = v101;
  sub_26A118238();
  v55 = static _ProtoTextProperty.== infix(_:_:)(v49, v54);
  sub_26A1182E0();
  sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1182E0();
  sub_26A0E48F0(v45, &qword_28036C7B8, &unk_26A425BF0);
  if ((v55 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_16:
  swift_beginAccess();
  v56 = v46;
  v57 = v99;
  sub_26A10FD9C();
  swift_beginAccess();
  v58 = *(v105 + 48);
  v59 = v97;
  sub_26A10FD9C();
  v60 = v106;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v59, 1, v60) == 1)
  {
    sub_26A0E48F0(v57, &qword_28036C7B8, &unk_26A425BF0);
    v61 = v56;
    if (__swift_getEnumTagSinglePayload(v59 + v58, 1, v60) == 1)
    {
      sub_26A0E48F0(v59, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v62 = v96;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v59 + v58, 1, v60) == 1)
  {
    sub_26A0E48F0(v99, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1182E0();
LABEL_21:
    v51 = &qword_28036C7D0;
    v52 = &qword_26A426DE0;
    v53 = v59;
    goto LABEL_51;
  }

  v63 = v101;
  sub_26A118238();
  v64 = static _ProtoTextProperty.== infix(_:_:)(v62, v63);
  sub_26A1182E0();
  sub_26A0E48F0(v99, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1182E0();
  sub_26A0E48F0(v59, &qword_28036C7B8, &unk_26A425BF0);
  v61 = v56;
  if ((v64 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_23:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v65 = *(v105 + 48);
  v66 = v95;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v67 = v106;
  if (__swift_getEnumTagSinglePayload(v66, 1, v106) == 1)
  {
    sub_26A0E48F0(v48, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v66 + v65, 1, v67) == 1)
    {
      sub_26A0E48F0(v66, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v68 = v93;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v66 + v65, 1, v67) == 1)
  {
    sub_26A0E48F0(v102, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1182E0();
LABEL_28:
    v51 = &qword_28036C7D0;
    v52 = &qword_26A426DE0;
    v53 = v66;
    goto LABEL_51;
  }

  v69 = v101;
  sub_26A118238();
  v70 = static _ProtoTextProperty.== infix(_:_:)(v68, v69);
  sub_26A1182E0();
  sub_26A0E48F0(v102, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1182E0();
  sub_26A0E48F0(v66, &qword_28036C7B8, &unk_26A425BF0);
  if ((v70 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_30:
  swift_beginAccess();
  v71 = v94;
  sub_26A10FD9C();
  swift_beginAccess();
  v72 = *(v90 + 48);
  v73 = v92;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v74 = v91;
  if (__swift_getEnumTagSinglePayload(v73, 1, v91) != 1)
  {
    v82 = v89;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v73 + v72, 1, v74) == 1)
    {
      sub_26A0E48F0(v94, &off_28036C7C0, &off_26A427400);
      sub_26A1182E0();
      goto LABEL_41;
    }

    v83 = v88;
    sub_26A118238();
    sub_26A0E36D8(*v82, *v83);
    if ((v84 & 1) == 0 || (v82[1] == v83[1] ? (v85 = v82[2] == v83[2]) : (v85 = 0), !v85 && (sub_26A425354() & 1) == 0))
    {
      sub_26A1182E0();
      sub_26A0E48F0(v94, &off_28036C7C0, &off_26A427400);
      sub_26A1182E0();
      v53 = v73;
      v51 = &off_28036C7C0;
      v52 = &off_26A427400;
      goto LABEL_51;
    }

    sub_26A424794();
    sub_26A30090C(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v86 = sub_26A424B64();
    sub_26A1182E0();
    sub_26A0E48F0(v94, &off_28036C7C0, &off_26A427400);
    sub_26A1182E0();
    sub_26A0E48F0(v73, &off_28036C7C0, &off_26A427400);
    if (v86)
    {
      goto LABEL_33;
    }

LABEL_52:

    return 0;
  }

  sub_26A0E48F0(v71, &off_28036C7C0, &off_26A427400);
  if (__swift_getEnumTagSinglePayload(v73 + v72, 1, v74) != 1)
  {
LABEL_41:
    v51 = &qword_28036C7C8;
    v52 = &qword_26A425C00;
    v53 = v73;
    goto LABEL_51;
  }

  sub_26A0E48F0(v73, &off_28036C7C0, &off_26A427400);
LABEL_33:
  v75 = (v61 + OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__componentName);
  swift_beginAccess();
  v76 = *v75;
  v77 = v75[1];
  v78 = (v107 + OBJC_IVAR____TtCV10SnippetKit24_ProtoReference_FootnoteP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__componentName);
  swift_beginAccess();
  if (v76 == *v78 && v77 == v78[1])
  {

    return 1;
  }

  v80 = sub_26A425354();

  result = 0;
  if (v80)
  {
    return 1;
  }

  return result;
}

uint64_t sub_26A302628(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A425504();
  a1(0);
  v6 = OUTLINED_FUNCTION_125();
  sub_26A30090C(v6, v7, a4);
  sub_26A424B44();
  return sub_26A425554();
}

unint64_t sub_26A3026B4()
{
  result = qword_280372350;
  if (!qword_280372350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372350);
  }

  return result;
}

unint64_t sub_26A30270C()
{
  result = qword_280372358;
  if (!qword_280372358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372358);
  }

  return result;
}

unint64_t sub_26A302764()
{
  result = qword_280372360;
  if (!qword_280372360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280372368, &qword_26A43BBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372360);
  }

  return result;
}

uint64_t sub_26A302CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A30090C(&qword_280372430, type metadata accessor for _ProtoReference_Footnote, &protocol conformance descriptor for _ProtoReference_Footnote);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A302DF4(uint64_t a1)
{
  v2 = sub_26A30090C(&qword_28036D520, type metadata accessor for _ProtoReference_Footnote, &protocol conformance descriptor for _ProtoReference_Footnote);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A302EAC(uint64_t a1, uint64_t a2)
{
  sub_26A30090C(&qword_28036D520, type metadata accessor for _ProtoReference_Footnote, &protocol conformance descriptor for _ProtoReference_Footnote);

  return sub_26A4249B4();
}

uint64_t __swift_get_extra_inhabitant_indexTm_6()
{
  OUTLINED_FUNCTION_117_3();
  if (v1 == v3)
  {
    return OUTLINED_FUNCTION_44_1(*(v0 + 8));
  }

  v5 = v2;
  v6 = v1;
  sub_26A424794();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == v6)
  {
    v8 = v5[5];
  }

  else
  {
    v9 = OUTLINED_FUNCTION_103();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    OUTLINED_FUNCTION_179();
    if (*(v11 + 84) == v6)
    {
      v8 = v5[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
      v8 = v5[7];
    }
  }

  v12 = OUTLINED_FUNCTION_42_2(v8);

  return __swift_getEnumTagSinglePayload(v12, v13, v14);
}

void __swift_store_extra_inhabitant_indexTm_5(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_117_3();
  if (v4 == v8)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v9 = v7;
    v10 = v6;
    v11 = v5;
    v12 = v4;
    sub_26A424794();
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == v12)
    {
      v14 = v11[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v10, v9);
      OUTLINED_FUNCTION_179();
      if (*(v15 + 84) == v12)
      {
        v14 = v11[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
        v14 = v11[7];
      }
    }

    v16 = OUTLINED_FUNCTION_42_2(v14);

    __swift_storeEnumTagSinglePayload(v16, v17, a2, v18);
  }
}

void sub_26A3031F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_26A424794();
  if (v7 <= 0x3F)
  {
    sub_26A11A4E4(319, a4, a5);
    if (v8 <= 0x3F)
    {
      OUTLINED_FUNCTION_20_1();
      sub_26A11A4E4(319, v9, v10);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A303328(uint64_t a1)
{
  sub_26A424794();
  if (v1 <= 0x3F)
  {
    sub_26A11A4E4(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
    if (v2 <= 0x3F)
    {
      sub_26A11A4E4(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26A303464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_26A424794();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26A3034F8(uint64_t a1)
{
  sub_26A11A4E4(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A11A4E4(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
    if (v2 <= 0x3F)
    {
      sub_26A11A4E4(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26A303660(uint64_t a1)
{
  sub_26A11A4E4(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A11A4E4(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t OUTLINED_FUNCTION_44_12()
{
  *(v1 - 96) = v0;

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_64_8()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_65_11()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_68_6()
{
  *(v1 - 88) = v0;

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_80_6()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_81_6()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_104_3()
{

  return sub_26A10CF40();
}

uint64_t OUTLINED_FUNCTION_105_2()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_107_5()
{

  return sub_26A118238();
}

uint64_t OUTLINED_FUNCTION_108_5()
{

  return sub_26A1182E0();
}

uint64_t OUTLINED_FUNCTION_109_5()
{

  return type metadata accessor for _ProtoActionProperty(0);
}

uint64_t OUTLINED_FUNCTION_110_2(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_123_4()
{

  return sub_26A118238();
}

uint64_t PrimaryHeaderMarquee.text1.getter()
{
  v2 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = &v21[-v4 - 8];
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for _ProtoPrimaryHeader_Marquee(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v10 + 20)) + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1, v21);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v5, 1, v6);
  if (v11)
  {
    *v9 = MEMORY[0x277D84F90];
    *(v9 + 4) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v12 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
    OUTLINED_FUNCTION_37(v5, 1, v6);
    if (!v11)
    {
      sub_26A0E48F0(v5, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A30640C();
  }

  return sub_26A30640C();
}

void PrimaryHeaderMarquee.text2.getter()
{
  OUTLINED_FUNCTION_76();
  v19 = v3;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_7();
  v5 = OUTLINED_FUNCTION_41_2();
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoPrimaryHeader_Marquee(0);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v8 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v8, v9, &unk_26A425BF0);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v10)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v11 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
      OUTLINED_FUNCTION_38_0();
      if (!v10)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A30640C();
    }

    sub_26A30640C();
    v2 = 0;
  }

  v18 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v19, v2, 1, v18);
  OUTLINED_FUNCTION_75();
}

void PrimaryHeaderMarquee.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  v19 = v3;
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_7();
  v5 = OUTLINED_FUNCTION_41_2();
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoPrimaryHeader_Marquee(0);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v8 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v8, v9, &unk_26A426430);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v10)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v11 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
      OUTLINED_FUNCTION_38_0();
      if (!v10)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A30640C();
    }

    sub_26A30640C();
    v2 = 0;
  }

  v18 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(v19, v2, 1, v18);
  OUTLINED_FUNCTION_75();
}

void PrimaryHeaderMarquee.action.getter()
{
  OUTLINED_FUNCTION_76();
  v13 = v4;
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoPrimaryHeader_Marquee(0);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v9, v10, &off_26A427400);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v11)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A30640C();
    }

    sub_26A30640C();
    v2 = 0;
  }

  v12 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v13, v2, 1, v12);
  OUTLINED_FUNCTION_75();
}

uint64_t PrimaryHeaderMarquee.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoPrimaryHeader_Marquee(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoPrimaryHeader_Marquee.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v37 = v1;
  v120 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_48();
  v115 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48();
  v119 = v9;
  v118 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_48();
  v113 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_48();
  v117 = v17;
  v18 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_93_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v24 = OUTLINED_FUNCTION_41(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  v27 = v110 - v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  v31 = v110 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = v110 - v33;
  OUTLINED_FUNCTION_4_34();
  sub_26A3065DC();
  v35 = *(type metadata accessor for _ProtoPrimaryHeader_Marquee(0) + 20);
  v121 = v37;
  v122 = v35;
  v36 = *(v37 + v35);
  LODWORD(v37) = OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1;
  OUTLINED_FUNCTION_142(v36 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1, &v127);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v18);
  sub_26A0E48F0(v34, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v31, 1, v18);
    if (v39)
    {
      *v0 = MEMORY[0x277D84F90];
      *(v0 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v40 = v120;
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v120);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v40);
      OUTLINED_FUNCTION_37(v31, 1, v18);
      v37 = v122;
      if (!v39)
      {
        sub_26A0E48F0(v31, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A30640C();
      v37 = v122;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_11_27();
    sub_26A306460(v0, v47);
    v48 = v121;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v48 + v37);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v50);
      OUTLINED_FUNCTION_26_24();
      v36 = v51;
      *(v48 + v37) = v51;
    }

    OUTLINED_FUNCTION_31_16();
    v52 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v18);
    OUTLINED_FUNCTION_211(v36 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1, v126);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v36 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2, v126);
  sub_26A10FD9C();
  __swift_getEnumTagSinglePayload(v27, 1, v18);
  OUTLINED_FUNCTION_59_1();
  if (v37 == 1)
  {
    v55 = v120;
    v56 = v121;
    v57 = v118;
  }

  else
  {
    v58 = v110[2];
    sub_26A10FD9C();
    v59 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v59, v60, v18);
    v56 = v121;
    v57 = v118;
    if (v39)
    {
      v69 = v111;
      *v111 = MEMORY[0x277D84F90];
      *(v69 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v55 = v120;
      __swift_storeEnumTagSinglePayload(v61, v62, v63, v120);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v55);
      v67 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v67, v68, v18);
      v70 = v122;
      if (!v39)
      {
        sub_26A0E48F0(v58, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v69 = v111;
      sub_26A30640C();
      v55 = v120;
      v70 = v122;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_11_27();
    sub_26A306460(v69, v71);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v56 + v70);
    if ((v72 & 1) == 0)
    {
      v73 = type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v73);
      OUTLINED_FUNCTION_26_24();
      v36 = v74;
      *(v56 + v70) = v74;
    }

    OUTLINED_FUNCTION_31_16();
    v75 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v18);
    OUTLINED_FUNCTION_211(v36 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2, v125);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v36 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__thumbnail, v125);
  v78 = v117;
  sub_26A10FD9C();
  LODWORD(v79) = __swift_getEnumTagSinglePayload(v78, 1, v57);
  sub_26A0E48F0(v78, &qword_28036CAE8, &unk_26A426430);
  if (v79 != 1)
  {
    v79 = v112;
    sub_26A10FD9C();
    v80 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v80, v81, v57);
    v82 = v122;
    if (v39)
    {
      v91 = v113;
      *v113 = MEMORY[0x277D84F90];
      *(v91 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v55);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v55);
      v89 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v89, v90, v57);
      if (!v39)
      {
        sub_26A0E48F0(v79, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      v91 = v113;
      sub_26A30640C();
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A306460(v91, type metadata accessor for _ProtoVisualProperty);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v56 + v82);
    if ((v92 & 1) == 0)
    {
      v93 = type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v93);
      OUTLINED_FUNCTION_26_24();
      v36 = v94;
      *(v56 + v82) = v94;
    }

    sub_26A30640C();
    v95 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v57);
    OUTLINED_FUNCTION_211(v36 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__thumbnail, v124);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v36 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action, v124);
  v98 = v119;
  sub_26A10FD9C();
  __swift_getEnumTagSinglePayload(v98, 1, v55);
  OUTLINED_FUNCTION_59_1();
  if (v79 != 1)
  {
    v99 = v114;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v99, 1, v55);
    v100 = v122;
    if (v39)
    {
      v101 = v115;
      *v115 = MEMORY[0x277D84F90];
      *(v101 + 8) = 0;
      *(v101 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v99, 1, v55);
      v102 = v116;
      if (!v39)
      {
        sub_26A0E48F0(v99, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v101 = v115;
      sub_26A30640C();
      v102 = v116;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v102);
    sub_26A306460(v101, type metadata accessor for _ProtoActionProperty);
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v104 = *(v56 + v100);
    if ((v103 & 1) == 0)
    {
      v105 = type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v105);
      sub_26A3FE72C();
      v104 = v106;
      *(v56 + v100) = v106;
    }

    sub_26A30640C();
    v107 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v55);
    OUTLINED_FUNCTION_211(v104 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action, &v123);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t PrimaryHeaderMarquee.init(text1:text2:thumbnail:action:componentName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for _ProtoPrimaryHeader_Marquee(0);
  OUTLINED_FUNCTION_2_39();
  sub_26A3064B8(v10, v11, &protocol conformance descriptor for _ProtoPrimaryHeader_Marquee);
  sub_26A4249C4();

  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a3, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A305008(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v59 = a6;
  v60 = a7;
  v55 = a3;
  v56 = a5;
  v54 = a4;
  v9 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v11 - 8);
  v62 = v48 - v12;
  v61 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v61);
  v50 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v51 = v48 - v15;
  v16 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v16 - 8);
  v52 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v18 - 8);
  v58 = v48 - v19;
  v57 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v57);
  v48[1] = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v49 = v48 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v48 - v24;
  v26 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v26);
  v28 = v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v30 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v30 - 8);
  v31 = a2[3];
  v32 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v31);
  (*(v32 + 8))(v31, v32);
  sub_26A30640C();
  _ProtoPrimaryHeader_Marquee.text1.setter();
  v33 = v54;

  v34 = v55;
  v55 = a1;
  _ProtoPrimaryHeader_Marquee.componentName.setter(v34, v33);
  sub_26A10FD9C();
  v35 = v64;
  if (v64)
  {
    v36 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    (*(v36 + 8))(v35, v36);
    sub_26A30640C();
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
    __swift_destroy_boxed_opaque_existential_1(v63);
    if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
    {
      sub_26A30640C();
      sub_26A3065DC();
      _ProtoPrimaryHeader_Marquee.text2.setter();
      sub_26A306460(v28, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v63, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v26);
  }

  sub_26A0E48F0(v25, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v37 = v64;
  if (v64)
  {
    v38 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    (*(v38 + 8))(v37, v38);
    v39 = v58;
    sub_26A30640C();
    v40 = v57;
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v57);
    __swift_destroy_boxed_opaque_existential_1(v63);
    if (__swift_getEnumTagSinglePayload(v39, 1, v40) != 1)
    {
      v41 = v49;
      sub_26A30640C();
      sub_26A3065DC();
      _ProtoPrimaryHeader_Marquee.thumbnail.setter();
      sub_26A306460(v41, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v63, &qword_28036CB00, &unk_26A426450);
    v39 = v58;
    __swift_storeEnumTagSinglePayload(v58, 1, 1, v57);
  }

  sub_26A0E48F0(v39, &qword_28036CAE8, &unk_26A426430);
LABEL_11:
  sub_26A10FD9C();
  v42 = v64;
  if (v64)
  {
    v43 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    (*(v43 + 8))(v42, v43);
    v44 = v62;
    sub_26A30640C();
    v45 = v61;
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v61);
    __swift_destroy_boxed_opaque_existential_1(v63);
    if (__swift_getEnumTagSinglePayload(v44, 1, v45) != 1)
    {
      v46 = v51;
      sub_26A30640C();
      sub_26A3065DC();
      _ProtoPrimaryHeader_Marquee.action.setter();
      return sub_26A306460(v46, type metadata accessor for _ProtoActionProperty);
    }
  }

  else
  {
    sub_26A0E48F0(v63, &qword_28036CAF8, &unk_26A426D30);
    v44 = v62;
    __swift_storeEnumTagSinglePayload(v62, 1, 1, v61);
  }

  return sub_26A0E48F0(v44, &off_28036C7C0, &off_26A427400);
}

uint64_t PrimaryHeaderMarquee.init(text1:text2:action:componentName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26A0E5D68(a1, v23);
  sub_26A10FD9C();
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_26A10FD9C();
  type metadata accessor for _ProtoPrimaryHeader_Marquee(0);
  OUTLINED_FUNCTION_2_39();
  v10 = sub_26A3064B8(v8, v9, &protocol conformance descriptor for _ProtoPrimaryHeader_Marquee);
  OUTLINED_FUNCTION_0_27(v10, v11, v12, v10, v13, v14, v15, v16, v18);

  sub_26A0E48F0(a3, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v19, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v20, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v22, &qword_28036CB08, &unk_26A428720);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t PrimaryHeaderMarquee.init(text1:text2:action:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_26A0E5D68(a1, v16);
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A0E5D68(v16, v13);
  sub_26A10FD9C();
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_26A10FD9C();
  type metadata accessor for _ProtoPrimaryHeader_Marquee(0);
  OUTLINED_FUNCTION_2_39();
  sub_26A3064B8(v6, v7, &protocol conformance descriptor for _ProtoPrimaryHeader_Marquee);
  sub_26A4249C4();
  sub_26A0E48F0(a3, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v14, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v15, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(v16);
  sub_26A0E48F0(v9, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v10, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v12, &qword_28036CB08, &unk_26A428720);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

Swift::String __swiftcall PrimaryHeaderMarquee.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v62 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v64 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v63 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v15 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_7();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v18 = OUTLINED_FUNCTION_41(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v62 - v23;
  v25 = type metadata accessor for PrimaryHeaderMarquee(0);
  v26 = OUTLINED_FUNCTION_41(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v27);
  v29 = &v62 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE40, &qword_26A4269C8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v31);
  v33 = &v62 - v32;
  OUTLINED_FUNCTION_10_40();
  sub_26A3065DC();
  if (v4)
  {
    _ProtoPrimaryHeader_Marquee.redactedProto.getter();
  }

  else
  {
    sub_26A3065DC();
  }

  sub_26A30640C();
  v33[*(v30 + 32)] = v4 & 1;
  sub_26A306460(v29, type metadata accessor for PrimaryHeaderMarquee);
  v34 = MEMORY[0x277D84F90];
  *&v33[*(v30 + 28)] = MEMORY[0x277D84F90];
  v35 = type metadata accessor for _ProtoPrimaryHeader_Marquee(0);
  OUTLINED_FUNCTION_142(*&v33[*(v35 + 20)] + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1, &v65);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v14, 1, v15);
  if (v36)
  {
    *v2 = v34;
    *(v2 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v37 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v37);
    OUTLINED_FUNCTION_37(v14, 1, v15);
    if (!v36)
    {
      sub_26A0E48F0(v14, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A30640C();
  }

  sub_26A30640C();
  v44 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v44);
  sub_26A1064AC(v24, 0x3174786574, 0xE500000000000000);
  sub_26A0E48F0(v24, &qword_28036CB30, &qword_26A426480);
  PrimaryHeaderMarquee.text2.getter();
  sub_26A1064AC(v21, 0x3274786574, 0xE500000000000000);
  sub_26A0E48F0(v21, &qword_28036CB30, &qword_26A426480);
  v45 = v63;
  PrimaryHeaderMarquee.thumbnail.getter();
  sub_26A106484(v45, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v45, &qword_28036CB20, &unk_26A426470);
  v46 = v64;
  PrimaryHeaderMarquee.action.getter();
  sub_26A106380();
  sub_26A0E48F0(v46, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7A70(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v48, v49, v50, v51, v62, v63);

  sub_26A0FCE74(v52, v53, v54, v55, v56, v57, v58);
  sub_26A0E48F0(v33, &qword_28036CE40, &qword_26A4269C8);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v60;
  result._countAndFlagsBits = v59;
  return result;
}

uint64_t PrimaryHeaderMarquee.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoPrimaryHeader_Marquee(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_4_34();
  sub_26A3065DC();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_12_22();
  sub_26A30640C();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t PrimaryHeaderMarquee.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for PrimaryHeaderMarquee(0);
  *(inited + 64) = &protocol witness table for PrimaryHeaderMarquee;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_10_40();
  sub_26A3065DC();
  OUTLINED_FUNCTION_142(&off_280372D50, v11);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  v2 = sub_26A3064B8(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  OUTLINED_FUNCTION_0_27(v2, v3, v4, v2, v5, v6, v7, v8, v10);

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for PrimaryHeaderMarquee(uint64_t a1)
{
  result = qword_280372458;
  if (!qword_280372458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A30640C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A306460(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A3064B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A306570(uint64_t a1)
{
  result = type metadata accessor for _ProtoPrimaryHeader_Marquee(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A3065DC()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

void OUTLINED_FUNCTION_26_24()
{

  sub_26A3FE72C();
}

uint64_t OUTLINED_FUNCTION_30_13()
{

  return type metadata accessor for _ProtoPrimaryHeader_Marquee(0);
}

uint64_t OUTLINED_FUNCTION_31_16()
{

  return sub_26A30640C();
}

uint64_t _ProtoActionProperty.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  type metadata accessor for _ProtoActionProperty(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t type metadata accessor for _ProtoActionProperty(uint64_t a1)
{
  result = qword_281579750;
  if (!qword_281579750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _ProtoActionProperty.actions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _ProtoActionProperty.actionName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t _ProtoActionProperty.actionName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t _ProtoActionProperty.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoActionProperty(0) + 24);
  v4 = sub_26A424794();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _ProtoActionProperty.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoActionProperty(0) + 24);
  v4 = sub_26A424794();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_26A3069E8()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372468);
  __swift_project_value_buffer(v0, qword_280372468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "actions";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action_name";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t static _ProtoActionProperty._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C538 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_280372468);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _ProtoActionProperty.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_26A424924();
    }

    else if (result == 1)
    {
      sub_26A306CE8(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_26A306CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoActionElement(0);
  sub_26A3073F8(&qword_28036F598, type metadata accessor for _ProtoActionElement, &protocol conformance descriptor for _ProtoActionElement);
  return sub_26A424934();
}

uint64_t _ProtoActionProperty.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for _ProtoActionElement(0), sub_26A3073F8(&qword_28036F598, type metadata accessor for _ProtoActionElement, &protocol conformance descriptor for _ProtoActionElement), result = sub_26A424A74(), !v4))
  {
    v6 = v3[2];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_26A424A64(), !v4))
    {
      type metadata accessor for _ProtoActionProperty(0);
      return sub_26A424774();
    }
  }

  return result;
}

uint64_t static _ProtoActionProperty.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_26A0E36D8(*a1, *a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v5 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for _ProtoActionProperty(0);
  sub_26A424794();
  sub_26A3073F8(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_26A424B64() & 1;
}

uint64_t _ProtoActionProperty.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A3073F8(&qword_280372480, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3070A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A3073F8(&qword_2803724A0, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A3071B4(uint64_t a1)
{
  v2 = sub_26A3073F8(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A30726C(uint64_t a1, uint64_t a2)
{
  sub_26A3073F8(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);

  return sub_26A4249B4();
}

void sub_26A307314(uint64_t a1)
{
  sub_26A3073A0(319);
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A3073A0(uint64_t a1)
{
  if (!qword_280372498)
  {
    type metadata accessor for _ProtoActionElement(255);
    v1 = sub_26A424D94();
    if (!v2)
    {
      atomic_store(v1, &qword_280372498);
    }
  }
}

uint64_t sub_26A3073F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A307508@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  (a1)(0, v6);
  OUTLINED_FUNCTION_32_2();
  v9 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_37(v8, 1, v9);
  if (!v10)
  {
    return sub_26A27BEAC();
  }

  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v11 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  result = OUTLINED_FUNCTION_37(v8, 1, v9);
  if (!v10)
  {
    return sub_26A0E48F0(v8, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}