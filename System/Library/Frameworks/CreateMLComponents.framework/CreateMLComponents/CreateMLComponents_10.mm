uint64_t OUTLINED_FUNCTION_43_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_44_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_45_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_47_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_48_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_49_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_50_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_51_4(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_53_4(uint64_t a1, ...)
{

  return sub_237EFA120();
}

uint64_t OUTLINED_FUNCTION_56_5(uint64_t a1, ...)
{

  return sub_237EF8610();
}

void *RandomImageNoiseGenerator.applied(to:eventHandler:)(void *a1)
{
  sub_237D2063C();
  result = OUTLINED_FUNCTION_1_41("CIRandomGenerator");
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  result = OUTLINED_FUNCTION_1_41("CIColorMonochrome");
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = sub_237D20680(0xD000000000000013, 0x8000000237EFDD70);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  result = [v3 outputImage];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  v7 = *MEMORY[0x277CBFAF0];
  v8 = OUTLINED_FUNCTION_0_34();
  [v8 v9];

  v10 = [objc_allocWithZone(MEMORY[0x277CBF730]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v11 = OUTLINED_FUNCTION_0_34();
  [v11 v12];

  v13 = sub_237EF8BE0();
  v14 = OUTLINED_FUNCTION_0_34();
  [v14 v15];

  v16 = [a1 imageByClampingToExtent];
  [v5 setValue:v16 forKey:*MEMORY[0x277CBFAB8]];

  result = [v4 outputImage];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = result;
  [v5 setValue:result forKey:v7];

  result = [v5 outputImage];
  if (result)
  {
    v18 = result;
    [a1 extent];
    v19 = [v18 imageByCroppingToRect_];

    return v19;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_237D31828(void *a1, void **a2)
{
  *a1 = RandomImageNoiseGenerator.applied(to:eventHandler:)(*a2);
  v3 = *(v2 + 8);

  return v3();
}

id OUTLINED_FUNCTION_1_41@<X0>(uint64_t a1@<X8>)
{

  return sub_237D20680(0xD000000000000011, (a1 - 32) | 0x8000000000000000);
}

uint64_t _s10DenseBlockVMa(uint64_t a1)
{
  result = qword_27DEB0F28;
  if (!qword_27DEB0F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237D31958(uint64_t a1)
{
  result = sub_237EF6820();
  if (v2 <= 0x3F)
  {
    result = sub_237EF6BA0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237D319E4(uint64_t a1)
{
  v1 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_26();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  _s10DenseBlockVMa(0);
  sub_237EF6820();
  sub_237EF6850();
  sub_237EF6760();
  v11 = *(v3 + 8);
  v11(v7, v1);
  sub_237EF6BA0();
  sub_237EF6850();
  return v11(v10, v1);
}

uint64_t sub_237D31B34(uint64_t a1, uint64_t a2)
{
  sub_237D327E8(&qword_27DEAD5F8, _s10DenseBlockVMa, &unk_237F0D128);

  return sub_237EF6890();
}

uint64_t sub_237D31BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_237D327E8(&qword_27DEAD5F8, _s10DenseBlockVMa, &unk_237F0D128);

  return MEMORY[0x28218B8E0](a1, a2, v4);
}

unint64_t sub_237D31D30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237C57698(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_237D31D60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237C576E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_237D31D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237C57698(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D31DBC(uint64_t a1)
{
  v2 = sub_237D32730();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D31DF8(uint64_t a1)
{
  v2 = sub_237D32730();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D31E34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  OUTLINED_FUNCTION_1();
  v64 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v67 = &v52 - v6;
  v63 = sub_237EF6B10();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v65 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
  v11 = OUTLINED_FUNCTION_18(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_26();
  v59 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v61 = &v52 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0, &qword_237F08F20);
  v17 = OUTLINED_FUNCTION_18(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26();
  v62 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - v21;
  v69 = type metadata accessor for DenseLayerStorage(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0F50, &qword_237F0D1D8);
  OUTLINED_FUNCTION_1();
  v66 = v27;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  v29 = OUTLINED_FUNCTION_8_35();
  v30 = _s10DenseBlockVMa(v29);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5();
  v34 = v33 - v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D32730();
  v35 = v71;
  sub_237EFA190();
  if (v35)
  {
    v41 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v57 = v22;
  v58 = v30;
  v71 = v34;
  v36 = v66;
  v37 = v67;
  v38 = v68;
  v74[0] = 0;
  OUTLINED_FUNCTION_4_37();
  sub_237D327E8(v39, v40, &unk_237F049E4);
  sub_237EF9970();
  v73 = 1;
  sub_237EF9940();
  v72 = 2;
  v54 = sub_237EF9950();
  v55 = v2;
  *(v71 + *(v58 + 24)) = v54;
  v52 = *(v69 + 20);
  v43 = v61;
  sub_237C6FDA0(v26 + v52, v61, &qword_27DEAD600, &unk_237F049C0);
  LODWORD(v69) = 1;
  v44 = v38;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v38);
  sub_237C65484(v43, &qword_27DEAD600, &unk_237F049C0);
  v56 = v26;
  v53 = a1;
  if (EnumTagSinglePayload == 1)
  {
    v46 = v63;
    v47 = v64;
    v48 = v36;
    v49 = v57;
LABEL_9:
    __swift_storeEnumTagSinglePayload(v49, v69, 1, v46);
    (*(v47 + 16))(v37, v56, v44);
    sub_237C651A0();
    OUTLINED_FUNCTION_3_43();
    sub_237EF7F00();
    (*(v47 + 8))(v37, v44);
    sub_237C6FDA0(v49, v62, &qword_27DEAD2C0, &qword_237F08F20);
    v51 = v71;
    sub_237EF67D0();
    sub_237EF6B80();
    sub_237C65484(v49, &qword_27DEAD2C0, &qword_237F08F20);
    sub_237C864D0(v56);
    (*(v48 + 8))(v55, v70);
    sub_237D32784(v51, v60);
    v41 = v53;
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v50 = v59;
  sub_237C6FDA0(v26 + v52, v59, &qword_27DEAD600, &unk_237F049C0);
  result = __swift_getEnumTagSinglePayload(v50, 1, v44);
  if (result != 1)
  {
    sub_237C651A0();
    OUTLINED_FUNCTION_3_43();
    v49 = v57;
    v46 = v63;
    sub_237EF7F00();
    v47 = v64;
    (*(v64 + 8))(v50, v44);
    LODWORD(v69) = 0;
    v48 = v36;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D32450(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0, &qword_237F08F20);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8_35();
  v5 = sub_237EF6B10();
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = (v8 - v7);
  v24[1] = type metadata accessor for DenseLayerStorage(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0F60, &qword_237F0D1E0);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = v24 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D32730();
  sub_237EFA1B0();
  sub_237EF67E0();
  sub_237EF67B0();
  sub_237C85568(v9, v1, v13);
  _s10DenseBlockVMa(0);
  sub_237EF6B90();
  v27 = 0;
  OUTLINED_FUNCTION_4_37();
  sub_237D327E8(v20, v21, &unk_237F04A0C);
  v22 = v24[2];
  sub_237EF9A70();
  if (!v22)
  {
    v26 = 1;
    sub_237EF9A40();
    v25 = 2;
    sub_237EF9A50();
  }

  sub_237C864D0(v13);
  return (*(v16 + 8))(v19, v14);
}

unint64_t sub_237D32730()
{
  result = qword_27DEB0F58;
  if (!qword_27DEB0F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0F58);
  }

  return result;
}

uint64_t sub_237D32784(uint64_t a1, uint64_t a2)
{
  v4 = _s10DenseBlockVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D327E8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

_BYTE *_s10DenseBlockV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237D32910()
{
  result = qword_27DEB0F68;
  if (!qword_27DEB0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0F68);
  }

  return result;
}

unint64_t sub_237D32968()
{
  result = qword_27DEB0F70;
  if (!qword_27DEB0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0F70);
  }

  return result;
}

unint64_t sub_237D329C0()
{
  result = qword_27DEB0F78;
  if (!qword_27DEB0F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0F78);
  }

  return result;
}

uint64_t sub_237D32A5C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_237EF6E60();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_5();
  v47 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E78, &qword_237F0CCF8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v39 - v9;
  v11 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v46 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  *&v48 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  memcpy(__dst, v2, 0x51uLL);
  (*(*(a1 - 8) + 16))(v51, __dst, a1);
  v23 = v49;
  sub_237D32F94(a2);
  v49 = v23;
  if (v23)
  {
    memcpy(v51, v2, 0x51uLL);
    return sub_237CC9A48(v51);
  }

  else
  {
    v44 = v17;
    v45 = v10;
    v25 = v48;
    v41 = v16;
    memcpy(v51, v2, 0x51uLL);
    sub_237CC9A48(v51);
    OUTLINED_FUNCTION_2_42();
    sub_237EF75E0();
    result = sub_237EF76A0();
    if (*(result + 16))
    {
      v43 = a2;
      v26 = v25;
      v27 = *(v25 + 16);
      v40 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v28 = v44;
      v27(v22, result + v40, v44);

      v39[1] = sub_237EF70A0();
      v42 = v29;
      (*(v26 + 8))(v22, v28);
      v30 = sub_237EF7EF0();
      v31 = v45;
      sub_237E5E9F0(v30, v45);
      if (__swift_getEnumTagSinglePayload(v31, 1, v11) == 1)
      {

        sub_237C863A0(v31, &qword_27DEB0E78, &qword_237F0CCF8);
        type metadata accessor for SerializationError(0);
        sub_237CA2D6C();
        swift_allocError();
        v33 = v32;
        v50[0] = 0;
        v50[1] = 0xE000000000000000;
        sub_237EF9330();
        MEMORY[0x2383E0710](0xD000000000000017, 0x8000000237EFDDB0);
        v53 = sub_237EF7EF0();
        type metadata accessor for MLMultiArrayDataType(0);
        sub_237EF9670();
        MEMORY[0x2383E0710](46, 0xE100000000000000);
        v34 = v50[1];
        *v33 = v50[0];
        v33[1] = v34;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return sub_237D0F8BC(v43);
      }

      else
      {
        v35 = v46;
        v36 = v41;
        (*(v46 + 32))(v41, v31, v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
        v37 = swift_allocObject();
        v48 = xmmword_237F03530;
        *(v37 + 16) = xmmword_237F03530;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
        v38 = swift_allocObject();
        *(v38 + 16) = v48;
        memcpy(v50, __dst, 0x51uLL);
        *(v38 + 32) = LinearRegressorModel.featureCount.getter();
        sub_237EF6CF0();

        sub_237EF7090();
        sub_237EF76B0();
        return (*(v35 + 8))(v36, v11);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237D32F94@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v73 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v72 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v78 = v6 - v5;
  v65 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v63 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v64 = v10 - v9;
  v67 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v66 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = sub_237EF7340();
  v69 = v23;
  v70 = *(v23 - 8);
  v24 = v70;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v68 = v26 - v25;
  v77 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v79 = v28;
  MEMORY[0x28223BE20](v29);
  v76 = v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = v62 - v32;
  v34 = *v2;
  sub_237EF7720();
  sub_237D3374C(v34);
  (*(v24 + 16))(v22, v27, v23);
  (*(v18 + 104))(v22, *MEMORY[0x277D25330], v16);
  v75 = v33;
  sub_237EF7660();
  OUTLINED_FUNCTION_2_42();
  sub_237EF75E0();
  v62[0] = *(v34 + 16) - 1;
  v62[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
  sub_237EF70E0();
  v35 = swift_allocObject();
  v74 = xmmword_237F03530;
  *(v35 + 16) = xmmword_237F03530;
  v36 = v63;
  v37 = v64;
  v38 = v65;
  (*(v63 + 104))(v64, *MEMORY[0x277D250F0], v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v39 = swift_allocObject();
  OUTLINED_FUNCTION_3_44(v39);
  *(v40 + 32) = v62[0];
  sub_237EF6CF0();

  (*(v36 + 8))(v37, v38);
  sub_237EF7090();
  v41 = v75;
  sub_237EF76B0();
  v42 = swift_allocObject();
  OUTLINED_FUNCTION_3_44(v42);
  sub_237EF6DA0();
  (*(v66 + 104))(v15, *MEMORY[0x277D25128], v67);
  sub_237EF7090();
  sub_237EF7700();
  sub_237EF7620();
  sub_237EF7600();
  v43 = *(v79 + 16);
  v45 = v76;
  v44 = v77;
  v43(v76, v41, v77);
  v46 = v78;
  sub_237EF7810();
  v47 = type metadata accessor for CoreMLPackage(0);
  v48 = v71;
  v49 = &v71[*(v47 + 24)];
  *(v49 + 10) = 0;
  *(v49 + 3) = 0u;
  *(v49 + 4) = 0u;
  *(v49 + 1) = 0u;
  *(v49 + 2) = 0u;
  *v49 = 0u;
  v43(v48, v45, v44);
  memcpy(__dst, v49, sizeof(__dst));
  sub_237C863A0(__dst, &unk_27DEAD7B0, &unk_237F03CA0);
  *v49 = 0u;
  *(v49 + 1) = 0u;
  *(v49 + 2) = 0u;
  *(v49 + 3) = 0u;
  *(v49 + 4) = 0u;
  *(v49 + 10) = 0;
  v50 = v72;
  v51 = v73;
  (*(v72 + 16))(&v48[*(v47 + 20)], v46, v73);
  v52 = sub_237E34060();
  v54 = v53;
  v55 = sub_237EF7780();
  v57 = v56;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v57;
  sub_237C91098(v52, v54, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
  *v57 = v82;
  v55(v80, 0);
  (*(v50 + 8))(v78, v51);
  v59 = *(v79 + 8);
  v60 = v77;
  v59(v76, v77);
  (*(v70 + 8))(v68, v69);
  return (v59)(v75, v60);
}

uint64_t sub_237D3374C(uint64_t a1)
{
  v2 = sub_237EF7320();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_237ED81A4(a1);
  if (v7)
  {
    goto LABEL_8;
  }

  v8 = *(a1 + 16);
  if (!v8)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = 2 * v8 - 1;
  if (v8 == v10 >> 1)
  {
  }

  else
  {
    sub_237C62B2C(a1, a1 + 32, 0, v10);
    a1 = v11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0438, &unk_237F0AFF0);
  v12 = swift_allocObject();
  v14 = xmmword_237F03530;
  *(v12 + 16) = xmmword_237F03530;
  *(v12 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0, &unk_237F07370);
  v13 = swift_allocObject();
  *(v13 + 16) = v14;
  *(v13 + 32) = v9;
  (*(v3 + 104))(v5, *MEMORY[0x277D25208], v2);
  return sub_237EF7330();
}

__n128 OUTLINED_FUNCTION_3_44(__n128 *a1)
{
  result = *(v1 - 272);
  a1[1] = result;
  return result;
}

uint64_t sub_237D33948(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237D3395C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237D33970(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

size_t sub_237D33984(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {

    return MEMORY[0x277D84F90];
  }

  v3 = sub_237E982C4(*(a1 + 16), 0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440, &qword_237F0B0A0) - 8);
  v5 = sub_237ECA65C(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, a1);
  sub_237EF8260();

  if (v5 == v2)
  {

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t AnnotatedFiles.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v5 = *v2;
  if (*(v5 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440, &qword_237F0B0A0) - 8);
  v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3;

  return sub_237D33B50(v7, a2);
}

uint64_t sub_237D33B50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440, &qword_237F0B0A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int __swiftcall AnnotatedFiles.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237D33BD0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_237D33C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D33BD0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237D33C94(uint64_t a1)
{
  v2 = sub_237D34484();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D33CD0(uint64_t a1)
{
  v2 = sub_237D34484();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D33D0C@<X0>(uint64_t *a1@<X8>)
{
  result = AnnotatedFiles.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_237D33D34(void *a1, unint64_t *a2))(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440, &qword_237F0B0A0);
  v5 = __swift_coroFrameAllocStub(*(*(v4 - 8) + 64));
  *a1 = v5;
  AnnotatedFiles.subscript.getter(*a2, v5);
  return sub_237D33DC0;
}

void sub_237D33DC0(uint64_t *a1)
{
  v1 = *a1;
  sub_237D34C70(*a1);

  free(v1);
}

uint64_t sub_237D33E0C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0 || *(a3 + 16) < a2)
  {
    __break(1u);
  }

  else
  {
    a4[1] = a2;
    a4[2] = a3;
    *a4 = result;
    return sub_237EF8260();
  }

  return result;
}

uint64_t sub_237D33E38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = 0;
  a2[2] = *(a1 + 16);
  return sub_237EF8260();
}

uint64_t sub_237D33E50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_237D33E80(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D33E80(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a2)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result += a2;
  return result;
}

uint64_t sub_237D33EA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_237D33EE4(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_237D33EE4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (a2)
  {
    while (1)
    {
      if (a3 == result)
      {
        return 0;
      }

      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++result;
      if (!--a2)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_237D33F40(uint64_t a1, uint64_t a2)
{
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (result < 0 != v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = __OFSUB__(a1, a2);
  v5 = a1 - a2;
  if (!v5)
  {
    return 0;
  }

  if (v5 < 0 == v4)
  {
    goto LABEL_9;
  }

  if (v5 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

Swift::Int sub_237D33FBC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = AnnotatedFiles.index(after:)(*a1);
  *a2 = result;
  return result;
}

void *sub_237D33FE8(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t AnnotatedFiles.init(labeledByNamesAt:separator:index:type:continueOnFailure:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = a6;
  v15 = [objc_opt_self() defaultManager];
  v16 = sub_237D9C390(a1, a2, a3, a4, a5, v8);
  if (v7)
  {

    sub_237EF7D80();
    OUTLINED_FUNCTION_3_11();
    (*(v17 + 8))(a5);
    sub_237EF5EF0();
    OUTLINED_FUNCTION_3_11();
    return (*(v18 + 8))(a1);
  }

  else
  {
    v20 = v16;

    sub_237EF7D80();
    OUTLINED_FUNCTION_3_11();
    (*(v21 + 8))(a5);
    sub_237EF5EF0();
    OUTLINED_FUNCTION_3_11();
    result = (*(v22 + 8))(a1);
    *a7 = v20;
  }

  return result;
}

uint64_t AnnotatedFiles.init(labeledBySubdirectoryNamesAt:type:continueOnFailure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a3;
  v9 = [objc_opt_self() defaultManager];
  v10 = sub_237DAE914(a1, a2, v5);
  if (v4)
  {

    sub_237EF7D80();
    OUTLINED_FUNCTION_3_11();
    (*(v11 + 8))(a2);
    sub_237EF5EF0();
    OUTLINED_FUNCTION_3_11();
    return (*(v12 + 8))(a1);
  }

  else
  {
    v14 = v10;

    sub_237EF7D80();
    OUTLINED_FUNCTION_3_11();
    (*(v15 + 8))(a2);
    sub_237EF5EF0();
    OUTLINED_FUNCTION_3_11();
    result = (*(v16 + 8))(a1);
    *a4 = v14;
  }

  return result;
}

uint64_t AnnotatedFiles.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0F80, &qword_237F0D358);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D34484();
  sub_237EF8260();
  sub_237EFA1B0();
  v11[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0F90, &qword_237F0D360);
  sub_237D3473C(&qword_27DEB0F98, sub_237D344D8, MEMORY[0x277D83948]);
  sub_237EF9A70();

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_237D34484()
{
  result = qword_27DEB0F88;
  if (!qword_27DEB0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0F88);
  }

  return result;
}

unint64_t sub_237D344D8()
{
  result = qword_27DEB0FA0;
  if (!qword_27DEB0FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAD440, &qword_237F0B0A0);
    sub_237D34C2C(&qword_27DEB0FA8, MEMORY[0x277CC9268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0FA0);
  }

  return result;
}

uint64_t AnnotatedFiles.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0FB0, &qword_237F0D368);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D34484();
  sub_237EFA190();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0F90, &qword_237F0D360);
    sub_237D3473C(&qword_27DEB0FB8, sub_237D347B4, MEMORY[0x277D83978]);
    sub_237EF9970();
    (*(v7 + 8))(v10, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237D3473C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB0F90, &qword_237F0D360);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237D347B4()
{
  result = qword_27DEB0FC0;
  if (!qword_27DEB0FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAD440, &qword_237F0B0A0);
    sub_237D34C2C(&qword_27DEB0FC8, MEMORY[0x277CC9280]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0FC0);
  }

  return result;
}

uint64_t AnnotatedFiles.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440, &qword_237F0B0A0);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = *(*v1 + 16);
  result = MEMORY[0x2383E2210](v9, v5);
  if (v9)
  {
    v11 = v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_237D33B50(v11, v7);
      sub_237EF5EF0();
      sub_237D34C2C(&qword_27DEB0FD0, MEMORY[0x277CC9270]);
      sub_237EF83E0();
      sub_237EF8610();
      result = sub_237D34C70(v7);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t AnnotatedFiles.hashValue.getter()
{
  v1 = *v0;
  sub_237EFA120();
  sub_237D34AC4(v3, v1);
  return sub_237EFA170();
}

uint64_t sub_237D34A30(uint64_t a1)
{
  v2 = *v1;
  sub_237EFA120();
  sub_237D34AC4(v4, v2);
  return sub_237EFA170();
}

uint64_t sub_237D34A74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2383E2210](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = MEMORY[0x2383E2210](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_237D34AC4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440, &qword_237F0B0A0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *(a2 + 16);
  result = MEMORY[0x2383E2210](v8, v5);
  if (v8)
  {
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_237D33B50(v10, v7);
      sub_237EF5EF0();
      sub_237D34C2C(&qword_27DEB0FD0, MEMORY[0x277CC9270]);
      sub_237EF83E0();
      sub_237EF8610();
      result = sub_237D34C70(v7);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_237D34C2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_237EF5EF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237D34C70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440, &qword_237F0B0A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_237D34CDC()
{
  result = qword_27DEB0FD8;
  if (!qword_27DEB0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0FD8);
  }

  return result;
}

unint64_t sub_237D34E00()
{
  result = qword_27DEB1010;
  if (!qword_27DEB1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB1010);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnotatedFiles.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_237D34F14()
{
  result = qword_27DEB1018;
  if (!qword_27DEB1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB1018);
  }

  return result;
}

unint64_t sub_237D34F6C()
{
  result = qword_27DEB1020;
  if (!qword_27DEB1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB1020);
  }

  return result;
}

unint64_t sub_237D34FC4()
{
  result = qword_27DEB1028[0];
  if (!qword_27DEB1028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB1028);
  }

  return result;
}

void sub_237D3501C()
{
  OUTLINED_FUNCTION_13_4();
  v50 = v1;
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = v2;
  v41 = v2;
  v6 = v3;
  sub_237EF7E90();
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v45 = v7;
  v46 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v42 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v43 = v12;
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v38 = &v36 - v15;
  v16 = *(v5 + 32);
  v17 = OUTLINED_FUNCTION_9_24();
  v36 = v6;
  v40 = _s7StorageVMa_1(v17, v18, v6, v16);
  OUTLINED_FUNCTION_1();
  v44 = v19;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19();
  v39 = v21;
  v22 = OUTLINED_FUNCTION_9_24();
  v37 = v4;
  v24 = type metadata accessor for MultivariateLinearRegressor.Model(v22, v23, v6, v16);
  MultivariateLinearRegressor.Model.weight.getter(v24);
  sub_237C651A0();
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  sub_237EF7F30();
  v25 = v42;
  MultivariateLinearRegressor.Model.bias.getter(v24);
  v47 = v4;
  v26 = v36;
  v48 = v36;
  v49 = v16;
  v27 = v43;
  v28 = v45;
  sub_237CA0A1C();
  (*(v46 + 8))(v25, v28);
  v29 = v40;
  v30 = v27;
  v31 = v39;
  sub_237D359A4(v38, v30, *(v0 + v41[11]), *(v0 + v41[12]), *(v0 + v41[13]), 0, v39, v37, v26, v16);
  v32 = *(v50 + 24);
  v33 = *(v50 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v50, v32);
  v34 = *(v33 + 8);
  WitnessTable = swift_getWitnessTable();
  v34(v31, v29, WitnessTable, v32, v33);
  (*(v44 + 8))(v31, v29);
  OUTLINED_FUNCTION_12_6();
}

void sub_237D353C8()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v55 = v9;
  sub_237EF7E90();
  OUTLINED_FUNCTION_9_24();
  sub_237EF90F0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v54 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  OUTLINED_FUNCTION_1();
  v47 = v13;
  v48 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19();
  v56 = v18;
  type metadata accessor for MultivariateLinearRegressor.Model(0, v6, v4, v2);
  OUTLINED_FUNCTION_1();
  v51 = v20;
  v52 = v19;
  MEMORY[0x28223BE20](v19);
  v53 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v49 = &v46 - v23;
  v57 = v6;
  v58 = v4;
  v59 = v2;
  v24 = _s7StorageVMa_1(0, v6, v4, v2);
  OUTLINED_FUNCTION_1();
  v50 = v25;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  v28 = &v46 - v27;
  v30 = *(v8 + 24);
  v29 = *(v8 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v8, v30);
  v31 = *(v29 + 8);
  WitnessTable = swift_getWitnessTable();
  v31(v24, v24, WitnessTable, v30, v29);
  if (!v0)
  {
    (*(v47 + 16))(v16, v28, v48);
    OUTLINED_FUNCTION_0_18();
    swift_getWitnessTable();
    sub_237C651A0();
    v33 = sub_237EF7F30();
    MEMORY[0x28223BE20](v33);
    v35 = v57;
    v34 = v58;
    *(&v46 - 4) = v57;
    *(&v46 - 3) = v34;
    *(&v46 - 2) = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
    v36 = v54;
    sub_237CA0A1C();
    v37 = v49;
    v38 = v35;
    v39 = v59;
    MultivariateLinearRegressor.Model.init(weight:bias:)(v56, v36, v38, v34, v59, v49);
    v40 = v53;
    (*(v51 + 32))(v53, v37, v52);
    v41 = *&v28[v24[12]];
    v42 = *&v28[v24[13]];
    v43 = &v28[v24[14]];
    v44 = *v43;
    LODWORD(v36) = v43[8];
    (*(v50 + 8))(v28, v24);
    if (v36)
    {
      v45 = 1;
    }

    else
    {
      v45 = v44;
    }

    sub_237DBAF34(v40, v41, v42, v45, v57, v58, v39, v55);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D35870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237EF7E90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  (*(v5 + 16))(v7, a1, v4);
  sub_237C651A0();
  swift_getWitnessTable();
  return sub_237EF7F30();
}

uint64_t sub_237D359A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, uint64_t a8@<X6>, uint64_t a9@<X7>, uint64_t a10)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  OUTLINED_FUNCTION_22_3();
  (*(v19 + 32))(a7, a1);
  v20 = _s7StorageVMa_1(0, a8, a9, a10);
  result = sub_237D35C38(a2, a7 + v20[11]);
  *(a7 + v20[12]) = a3;
  *(a7 + v20[13]) = a4;
  v22 = a7 + v20[14];
  *v22 = a5;
  *(v22 + 8) = a6 & 1;
  return result;
}

uint64_t sub_237D35A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_237EF7E90();
  (*(v5 + 16))(v7, a1, v4);
  swift_getWitnessTable();
  sub_237C651A0();
  return sub_237EF7F30();
}

uint64_t sub_237D35C38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_237D35CA8(uint64_t a1)
{
  sub_237C86290();
  if (v1 <= 0x3F)
  {
    sub_237C862E8(319);
    if (v2 <= 0x3F)
    {
      sub_237D130D4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_237D35D7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696577 && a2 == 0xE600000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1935763810 && a2 == 0xE400000000000000;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5365727574616566 && a2 == 0xEB00000000657A69;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x697461746F6E6E61 && a2 == 0xEE00657A69536E6FLL;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656469727473 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_237EF9D40();

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

uint64_t sub_237D35F28(char a1)
{
  result = 0x746867696577;
  switch(a1)
  {
    case 1:
      result = 1935763810;
      break;
    case 2:
      result = 0x5365727574616566;
      break;
    case 3:
      result = 0x697461746F6E6E61;
      break;
    case 4:
      result = 0x656469727473;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237D35FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_4();
  v38 = v26;
  v39 = v27;
  v29 = v28;
  _s7StorageV10CodingKeysOMa(255, v30[2], v30[3], v30[4]);
  OUTLINED_FUNCTION_2_43();
  swift_getWitnessTable();
  v31 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v34);
  v36 = &v38 - v35;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_237EFA1B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  sub_237C86400(&qword_27DEADE78, MEMORY[0x277D83AA0], MEMORY[0x277CBFD38]);
  v37 = v39;
  sub_237EF9A70();
  if (!v37)
  {
    OUTLINED_FUNCTION_8_36();
    sub_237EF9A00();
    OUTLINED_FUNCTION_8_36();
    sub_237EF9A50();
    OUTLINED_FUNCTION_8_36();
    sub_237EF9A50();
    OUTLINED_FUNCTION_8_36();
    sub_237EF99F0();
  }

  (*(v33 + 8))(v36, v31);
  OUTLINED_FUNCTION_12_6();
}

void sub_237D36204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_4();
  v75 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v68 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19();
  v71 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  OUTLINED_FUNCTION_1();
  v70 = v39;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_19();
  v72 = v41;
  _s7StorageV10CodingKeysOMa(255, v32, v30, v28);
  OUTLINED_FUNCTION_2_43();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_24();
  v74 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v69 = v42;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v43);
  v45 = &v66 - v44;
  v46 = _s7StorageVMa_1(0, v32, v30, v28);
  OUTLINED_FUNCTION_1();
  v67 = v47;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v48);
  v50 = &v66 - v49;
  v52 = *(v51 + 44);
  v76 = v50;
  v77 = v52;
  __swift_storeEnumTagSinglePayload(&v50[v52], 1, 1, v38);
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  v73 = v45;
  v53 = v75;
  sub_237EFA190();
  if (v53)
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
    sub_237D367F8(&v76[v77]);
  }

  else
  {
    v55 = v70;
    v54 = v71;
    v75 = v46;
    sub_237C86400(&qword_27DEADE88, MEMORY[0x277D83AC8], MEMORY[0x277CBFD48]);
    sub_237EF9970();
    v56 = v76;
    (*(v55 + 32))(v76, v72, v38);
    sub_237EF9900();
    sub_237C6FC94(v54, &v56[v77]);
    v57 = sub_237EF9950();
    v58 = v75;
    *&v56[*(v75 + 48)] = v57;
    *&v56[*(v58 + 52)] = sub_237EF9950();
    v59 = sub_237EF98F0();
    v61 = v60;
    v62 = &v56[*(v58 + 56)];
    v63 = OUTLINED_FUNCTION_7_31();
    v64(v63);
    *v62 = v59;
    v62[8] = v61 & 1;
    v65 = v67;
    (*(v67 + 16))(v68, v56, v58);
    __swift_destroy_boxed_opaque_existential_1(v34);
    (*(v65 + 8))(v56, v58);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D36694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D35D7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D366C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D35F20();
  *a1 = result;
  return result;
}

uint64_t sub_237D366FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D36750(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237D367F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for PoseSelectionStrategy(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_237D368E8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_5_33(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  v5 = a2[2];

  return type metadata accessor for MultivariateLinearRegressor.Model(0, v5, v3, v4);
}

uint64_t PreprocessingUpdatableTabularEstimator.init(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  (*(v12 + 32))(a6);
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v13 = type metadata accessor for PreprocessingUpdatableTabularEstimator(0, v15);
  return (*(*(a3 - 8) + 32))(a6 + *(v13 + 52), a1, a3);
}

uint64_t PreprocessingUpdatableTabularEstimator.makeTransformer()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = a1[3];
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v11 = *(v10 + 40);
  v24 = *(v11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = a1[2];
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  PreprocessingUpdatableTabularEstimator.preprocessor.getter(a1, v19 - v18);
  PreprocessingUpdatableTabularEstimator.estimator.getter(a1, v9);
  (*(v11 + 16))(v3, v11);
  (*(v5 + 8))(v9, v3);
  v21 = a1[4];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return ComposedTabularTransformer.init(_:_:)(v20, v15, v16, AssociatedTypeWitness, v21, AssociatedConformanceWitness, v25);
}

uint64_t PreprocessingUpdatableTabularEstimator.preprocessed(from:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[8] = *(v2 + 16);
  OUTLINED_FUNCTION_1_1();
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237D36EC8()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[6];
  PreprocessingUpdatableTabularEstimator.preprocessor.getter(v1, v0[10]);
  v2 = *(*(v1 + 32) + 8);
  OUTLINED_FUNCTION_15_0();
  v12 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[11] = v4;
  *v4 = v5;
  v4[1] = sub_237D36FF4;
  v6 = v0[8];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return v12(v9, v10, v7, v8, v6, v2);
}

uint64_t sub_237D36FF4()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v6 = v5[10];
  v7 = v5[9];
  v8 = v5[8];
  v9 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v10 = v9;
  *(v3 + 96) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v14();
  }
}

uint64_t PreprocessingUpdatableTabularEstimator.fitted(toPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v4;
  v1[5] = v5;
  v1[2] = v6;
  v1[3] = v7;
  v1[8] = *(v2 + 16);
  OUTLINED_FUNCTION_22_3();
  v1[9] = OUTLINED_FUNCTION_27_0();
  v1[10] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_27_0();
  v1[13] = *(*(v3 + 40) + 8);
  v1[14] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v1[15] = v9;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237D372D8()
{
  OUTLINED_FUNCTION_12_2();
  PreprocessingUpdatableTabularEstimator.estimator.getter(v0[6], v0[12]);
  OUTLINED_FUNCTION_15_0();
  v11 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[18] = v2;
  *v2 = v3;
  v2[1] = sub_237D373F4;
  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  return v11(v4, v9, v7, v8, v6, v5);
}

uint64_t sub_237D373F4()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = v4[12];
  v6 = v4[11];
  v7 = v4[10];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 152) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237D3754C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[9];
  v12 = v0[8];
  v6 = v0[6];
  v11 = v0[2];
  PreprocessingUpdatableTabularEstimator.preprocessor.getter(v6, v5);
  (*(v4 + 32))(v2, v1, v3);
  v7 = *(v6 + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ComposedTabularTransformer.init(_:_:)(v5, v2, v12, v3, v7, AssociatedConformanceWitness, v11);

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t sub_237D37670()
{
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableTabularEstimator.fitted(to:eventHandler:)()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_20_16();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v1[7] = sub_237EF61A0();
  OUTLINED_FUNCTION_15_0();
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_27_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v1[10] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_9_25(v7);

  return PreprocessingUpdatableTabularEstimator.preprocessed(from:eventHandler:)();
}

uint64_t sub_237D377EC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D378E8()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[11];
  sub_237EF8B90();
  if (v1)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[12] = v4;
    *v4 = v5;
    v4[1] = sub_237D379E8;

    return PreprocessingUpdatableTabularEstimator.fitted(toPreprocessed:eventHandler:)();
  }
}

uint64_t sub_237D379E8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D37AE4()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237D37B5C()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237D37BB8()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t PreprocessingUpdatableTabularEstimator.update(_:withPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v1[12] = *(v2 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237D37CD8()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = PreprocessingUpdatableTabularEstimator.estimator.getter(v1, v0[14]);
  v4 = *(v1 + 40);
  OUTLINED_FUNCTION_23_17(v3, v5, v6, v7, &associated type descriptor for TabularEstimator.Transformer);
  v8 = OUTLINED_FUNCTION_24_11();
  v9 = *(OUTLINED_FUNCTION_16_22(v8) + 52);
  OUTLINED_FUNCTION_15_0();
  v18 = (v10 + *v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[15] = v11;
  *v11 = v12;
  v11[1] = sub_237D37E60;
  v13 = v0[12];
  v14 = v0[8];
  v15 = v0[9];
  v16 = v0[7];

  return v18(v2 + v9, v16, v14, v15, v13, v4);
}

uint64_t sub_237D37E60()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v10 = v9;
  *(v3 + 128) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v14();
  }
}

uint64_t sub_237D37FEC()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableTabularEstimator.update(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_20_16();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[6] = v5;
  v1[11] = *(v2 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_27_0();
  v1[14] = sub_237EF61A0();
  OUTLINED_FUNCTION_15_0();
  v1[15] = v7;
  v1[16] = OUTLINED_FUNCTION_27_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v1[17] = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_9_25(v8);

  return PreprocessingUpdatableTabularEstimator.preprocessed(from:eventHandler:)();
}

uint64_t sub_237D38188()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D38284(uint64_t a1)
{
  v2 = v1[18];
  sub_237EF8B90();
  if (v2)
  {
    (*(v1[15] + 8))(v1[16], v1[14]);

    OUTLINED_FUNCTION_3_0();

    return v3();
  }

  else
  {
    v5 = v1[9];
    v6 = v1[6];
    v7 = PreprocessingUpdatableTabularEstimator.estimator.getter(v5, v1[13]);
    v8 = *(v5 + 40);
    OUTLINED_FUNCTION_23_17(v7, v9, v10, v11, &associated type descriptor for TabularEstimator.Transformer);
    v12 = OUTLINED_FUNCTION_24_11();
    v13 = *(OUTLINED_FUNCTION_16_22(v12) + 52);
    OUTLINED_FUNCTION_15_0();
    v21 = (v14 + *v14);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v1[19] = v15;
    *v15 = v16;
    v15[1] = sub_237D38484;
    v17 = v1[16];
    v18 = v1[11];
    v19 = v1[7];
    v20 = v1[8];

    return v21(v6 + v13, v17, v19, v20, v18, v8);
  }
}

uint64_t sub_237D38484()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237D385E0()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[15] + 8))(v0[16], v0[14]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237D38660()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237D386C8()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[15] + 8))(v0[16], v0[14]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t PreprocessingUpdatableTabularEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[5] + 8);
  v5 = a3[2];
  v6 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a3[4];
  v14[0] = v5;
  v14[1] = AssociatedTypeWitness;
  v14[2] = v8;
  v14[3] = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for ComposedTabularTransformer(0, v14);
  v10 = OUTLINED_FUNCTION_27_12(v9);
  return v11(v10, a2, v6, v4);
}

uint64_t PreprocessingUpdatableTabularEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v22 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v25 = v10 - v9;
  v12 = *(*(v11 + 40) + 8);
  v13 = *(v11 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v21 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_34_2();
  OUTLINED_FUNCTION_24_9();
  result = v18(a1, v13, v12);
  if (!v26)
  {
    (*(v22 + 16))(v25, v4, v24);
    (*(v21 + 32))(v5, v3, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return OUTLINED_FUNCTION_25_13(v25, AssociatedConformanceWitness, a3);
  }

  return result;
}

uint64_t PreprocessingUpdatableTabularEstimator.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[5];
  v5 = a3[2];
  v6 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a3[4];
  v14[0] = v5;
  v14[1] = AssociatedTypeWitness;
  v14[2] = v8;
  v14[3] = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for ComposedTabularTransformer(0, v14);
  v10 = OUTLINED_FUNCTION_27_12(v9);
  return v11(v10, a2, v6, v4);
}

uint64_t PreprocessingUpdatableTabularEstimator.decodeWithOptimizer(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v22 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v25 = v10 - v9;
  v12 = *(v11 + 40);
  v13 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_34_2();
  OUTLINED_FUNCTION_24_9();
  result = v19(a1, v13, v12);
  if (!v27)
  {
    (*(v22 + 16))(v25, v4, v24);
    (*(v16 + 32))(v5, v3, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return OUTLINED_FUNCTION_25_13(v25, AssociatedConformanceWitness, a3);
  }

  return result;
}

uint64_t sub_237D38CE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return PreprocessingUpdatableTabularEstimator.update(_:with:eventHandler:)();
}

uint64_t sub_237D38DDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return PreprocessingUpdatableTabularEstimator.fitted(to:eventHandler:)();
}

uint64_t TabularTransformer.appending<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  (*(v21 + 16))(v20 - v19, v22, a2);
  (*(v13 + 16))(v17, a1, a3);
  return PreprocessingUpdatableTabularEstimator.init(_:_:)(v17, a2, a3, a4, a5, a6);
}

{
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  (*(v21 + 16))(v20 - v19, v22, a2);
  (*(v13 + 16))(v17, a1, a3);
  return PreprocessingUpdatableSupervisedTabularEstimator.init(_:_:)(v17, a2, a3, a4, a5, a6);
}

{
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  (*(v22 + 16))(v20 - v19, v23, a2);
  (*(v13 + 16))(v17, a1, a3);
  return ComposedTabularTransformer.init(_:_:)(v21, v17, a2, a3, a4, a5, a6);
}

{
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  (*(v22 + 16))(v20 - v19, v23, a2);
  (*(v13 + 16))(v17, a1, a3);
  return PreprocessingSupervisedTabularEstimator.init(_:_:)(v21, v17, a2, a3, a4, a5, a6);
}

{
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  (*(v22 + 16))(v20 - v19, v23, a2);
  (*(v13 + 16))(v17, a1, a3);
  return PreprocessingTabularEstimator.init(_:_:)(v21, v17, a2, a3, a4, a5, a6);
}

uint64_t sub_237D39040(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237D3907C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237D39244(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_16_22(uint64_t a1)
{
  v1[2] = v4;
  v1[3] = v3;
  v1[4] = v2;
  v1[5] = a1;

  return type metadata accessor for ComposedTabularTransformer(0, (v1 + 2));
}

uint64_t OUTLINED_FUNCTION_23_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_24_11()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_25_13@<X0>(uint64_t a1@<X0>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{

  return ComposedTabularTransformer.init(_:_:)(a1, v9, v7, v10, v8, a6, x8_0);
}

void __swiftcall Event.init(origin:itemCount:totalItemCount:metrics:)(CreateMLComponents::Event *__return_ptr retstr, Swift::String origin, Swift::Int itemCount, Swift::Int_optional totalItemCount, Swift::OpaquePointer metrics)
{
  retstr->origin = origin;
  retstr->itemCount = itemCount;
  retstr->totalItemCount.value = totalItemCount.value;
  retstr->totalItemCount.is_nil = totalItemCount.is_nil;
  retstr->metrics = metrics;
}

uint64_t Event.origin.getter()
{
  v1 = *v0;
  sub_237EF8260();
  return v1;
}

uint64_t Event.origin.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Event.totalItemCount.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t Event.metrics.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Event.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 32);
  sub_237EF9330();

  MEMORY[0x2383E0710](v1, v2);
  MEMORY[0x2383E0710](8236, 0xE200000000000000);
  v4 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v4);

  MEMORY[0x2383E0710](543584032, 0xE400000000000000);
  if (v3)
  {
    v5 = 0xE100000000000000;
    v6 = 63;
  }

  else
  {
    sub_237CF446C();
    v6 = sub_237EF9220();
    v5 = v7;
  }

  MEMORY[0x2383E0710](v6, v5);

  MEMORY[0x2383E0710](0x63697274656D202CLL, 0xEB00000000203A73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0, &qword_237F03CE0);
  sub_237C758C4();
  v8 = sub_237EF8220();
  MEMORY[0x2383E0710](v8);

  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0x3C746E657645;
}

uint64_t MetricsKey.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_237D39A18@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = MetricsKey.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_237D39A58@<X0>(uint64_t *a1@<X8>)
{
  result = MetricsKey.debugDescription.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MetricsKey.debugDescription.getter()
{
  v1 = *v0;
  sub_237EF8260();
  return v1;
}

unint64_t sub_237D39AB4()
{
  result = qword_280C8DE68[0];
  if (!qword_280C8DE68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C8DE68);
  }

  return result;
}

uint64_t sub_237D39B0C(uint64_t a1, int a2)
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

uint64_t sub_237D39B4C(uint64_t result, int a2, int a3)
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

uint64_t MultivariateLinearRegressorConfiguration.randomSeed.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

void __swiftcall MultivariateLinearRegressorConfiguration.init()(CreateMLComponents::MultivariateLinearRegressorConfiguration *__return_ptr retstr)
{
  *&retstr->batchSize = xmmword_237F09360;
  retstr->earlyStoppingTolerance = 0.01;
  retstr->earlyStoppingIterationCount = 5;
  retstr->learningRate = 0.005;
  *(&retstr->randomSeed.value + 4) = 0;
  LOBYTE(retstr[1].batchSize) = 1;
}

uint64_t static MultivariateLinearRegressorConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v7 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_237D39DA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A69536863746162 && a2 == 0xE900000000000065;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000237EFDE80 == a2;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x8000000237EFDEA0 == a2;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x8000000237EFDEC0 == a2;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x676E696E7261656CLL && a2 == 0xEC00000065746152;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465)
          {

            return 5;
          }

          else
          {
            v11 = sub_237EF9D40();

            if (v11)
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

unint64_t sub_237D39FB4(char a1)
{
  result = 0x7A69536863746162;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0x676E696E7261656CLL;
      break;
    case 5:
      result = 0x65536D6F646E6172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237D3A094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D39DA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D3A0BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D39FAC();
  *a1 = result;
  return result;
}

uint64_t sub_237D3A0E4(uint64_t a1)
{
  v2 = sub_237D3A37C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D3A120(uint64_t a1)
{
  v2 = sub_237D3A37C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MultivariateLinearRegressorConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB11B0, &qword_237F0DAB0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  v10 = *(v1 + 8);
  v14 = *(v1 + 24);
  v15 = v10;
  v13 = *(v1 + 40);
  v12[1] = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D3A37C();
  sub_237EFA1B0();
  v21 = 0;
  OUTLINED_FUNCTION_24_5();
  sub_237EF9A50();
  if (!v2)
  {
    v20 = 1;
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A50();
    v19 = 2;
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A40();
    v18 = 3;
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A50();
    v17 = 4;
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A40();
    v16 = 5;
    OUTLINED_FUNCTION_24_5();
    sub_237EF99F0();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_237D3A37C()
{
  result = qword_27DEB11B8;
  if (!qword_27DEB11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB11B8);
  }

  return result;
}

uint64_t MultivariateLinearRegressorConfiguration.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  MEMORY[0x2383E2210](*v0);
  MEMORY[0x2383E2210](v1);
  sub_237EFA150();
  MEMORY[0x2383E2210](v2);
  sub_237EFA150();
  if (v4 == 1)
  {
    return sub_237EFA140();
  }

  sub_237EFA140();
  return MEMORY[0x2383E2210](v3);
}

uint64_t MultivariateLinearRegressorConfiguration.hashValue.getter()
{
  sub_237EFA120();
  MultivariateLinearRegressorConfiguration.hash(into:)();
  return sub_237EFA170();
}

uint64_t MultivariateLinearRegressorConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB11C0, &qword_237F0DAB8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D3A37C();
  sub_237EFA190();
  if (!v2)
  {
    v29 = 0;
    OUTLINED_FUNCTION_0_36();
    v11 = sub_237EF9950();
    v28 = 1;
    OUTLINED_FUNCTION_0_36();
    v12 = sub_237EF9950();
    v27 = 2;
    OUTLINED_FUNCTION_0_36();
    sub_237EF9940();
    v14 = v13;
    v26 = 3;
    OUTLINED_FUNCTION_0_36();
    v23 = sub_237EF9950();
    v25 = 4;
    OUTLINED_FUNCTION_0_36();
    sub_237EF9940();
    v16 = v15;
    v24 = 5;
    OUTLINED_FUNCTION_0_36();
    v18 = sub_237EF98F0();
    v19 = v10;
    v21 = v20;
    (*(v7 + 8))(v19, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
    *(a2 + 24) = v23;
    *(a2 + 32) = v16;
    *(a2 + 40) = v18;
    *(a2 + 48) = v21 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237D3A734(uint64_t a1)
{
  sub_237EFA120();
  MultivariateLinearRegressorConfiguration.hash(into:)();
  return sub_237EFA170();
}

unint64_t sub_237D3A7A8()
{
  result = qword_27DEB11C8;
  if (!qword_27DEB11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB11C8);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_237D3A84C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237D3A86C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MultivariateLinearRegressorConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MultivariateLinearRegressorConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237D3AA20()
{
  result = qword_27DEB11D0;
  if (!qword_27DEB11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB11D0);
  }

  return result;
}

unint64_t sub_237D3AA78()
{
  result = qword_27DEB11D8;
  if (!qword_27DEB11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB11D8);
  }

  return result;
}

unint64_t sub_237D3AAD0()
{
  result = qword_27DEB11E0;
  if (!qword_27DEB11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB11E0);
  }

  return result;
}

uint64_t PoseSelectionStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_237EFA120();
  MEMORY[0x2383E2210](v1);
  return sub_237EFA170();
}

CreateMLComponents::PoseSelector __swiftcall PoseSelector.init(strategy:confidenceThreshold:)(CreateMLComponents::PoseSelectionStrategy strategy, Swift::Float confidenceThreshold)
{
  *v2 = *strategy;
  *(v2 + 4) = confidenceThreshold;
  result.confidenceThreshold = confidenceThreshold;
  result.strategy = strategy;
  return result;
}

CreateMLComponents::PoseSelector __swiftcall PoseSelector.init(strategy:)(CreateMLComponents::PoseSelectionStrategy strategy)
{
  *v1 = *strategy;
  OUTLINED_FUNCTION_17_23(v1);
  result.confidenceThreshold = v3;
  result.strategy = v2;
  return result;
}

CreateMLComponents::PoseSelector __swiftcall PoseSelector.init()()
{
  *v0 = 0;
  OUTLINED_FUNCTION_17_23(v0);
  result.confidenceThreshold = v2;
  result.strategy = v1;
  return result;
}

void PoseSelector.applied(to:eventHandler:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v170 = a2;
  v184 = a1;
  v185 = *(a1 + 16);
  switch(*v3)
  {
    case 1:
      if (!v185)
      {
        goto LABEL_169;
      }

      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_8_37();
      OUTLINED_FUNCTION_33_8();
      OUTLINED_FUNCTION_23_18();
      if (v10)
      {
        goto LABEL_170;
      }

      OUTLINED_FUNCTION_13_20();
      if (!__OFADD__(1, 1))
      {
        OUTLINED_FUNCTION_1_43();
        sub_237EF8260();
        OUTLINED_FUNCTION_32_9();
        sub_237EF8260();
        while (1)
        {
          do
          {
            OUTLINED_FUNCTION_6_28();
            OUTLINED_FUNCTION_20_17();
          }

          while (!v10 & v82);
          OUTLINED_FUNCTION_30_15();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_3_45();
          }

          OUTLINED_FUNCTION_12_26();
          if (v82)
          {
            v158 = OUTLINED_FUNCTION_11_26();
            v186 = v159;
            v150 = sub_237C62D70(v158, v159, 1);
          }

          OUTLINED_FUNCTION_14_26(v150, v151, v152, v153, v154, v155, v156, v157, v163, v164, v166, v168, v170, v171, v173, v175, v177, v179, v180, v182, v184, v185, v186, v190);
        }
      }

      goto LABEL_196;
    case 2:
      if (!v185)
      {
        goto LABEL_169;
      }

      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_8_37();
      OUTLINED_FUNCTION_33_8();
      v93 = 1;
LABEL_67:
      OUTLINED_FUNCTION_23_18();
      if (v10)
      {
        goto LABEL_170;
      }

      OUTLINED_FUNCTION_13_20();
      if (__OFADD__(v93, 1))
      {
        goto LABEL_194;
      }

      v94 = *(v197 + 24 * v93);
      v203 = v93 + 1;
      OUTLINED_FUNCTION_0_37();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_32_9();
      v95 = 0;
      v96 = MEMORY[0x277D84F90];
      while (2)
      {
        if (v4)
        {
          goto LABEL_75;
        }

LABEL_71:
        v97 = v95 + 1;
        if (!__OFADD__(v95, 1))
        {
          if (v97 < v93)
          {
            v4 = *(v94 + 64 + 8 * v97);
            ++v95;
            if (v4)
            {
              v95 = v97;
LABEL_75:
              OUTLINED_FUNCTION_5_34();
              OUTLINED_FUNCTION_21_19();
              if (!(!v10 & v82))
              {
                v188 = *v98;
                v192 = v98[1];
                sub_237EF8260();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_3_45();
                }

                v107 = *(v96 + 24);
                if (*(v96 + 16) >= v107 >> 1)
                {
                  OUTLINED_FUNCTION_2_44(v107);
                  OUTLINED_FUNCTION_16_23();
                }

                OUTLINED_FUNCTION_15_25(isUniquelyReferenced_nonNull_native, v100, v101, v102, v103, v104, v105, v106, v163, v164, v166, v168, v170, v171, v173, v175, v177, v179, v180, v182, v184, v185, v188, v192);
              }

              continue;
            }

            goto LABEL_71;
          }

          v108 = *(v96 + 16);
          if (v108)
          {
            OUTLINED_FUNCTION_10_1();
            sub_237C85534();
            v93 = *(v96 + 40);
            v109 = *(v96 + 56);
            sub_237EF8260();
            while (v108 != 1)
            {
              OUTLINED_FUNCTION_28_13();
              if (v82)
              {
                goto LABEL_177;
              }

              OUTLINED_FUNCTION_24_12();
              if (*(v110 + 56) < v109)
              {
                OUTLINED_FUNCTION_18_21();

                OUTLINED_FUNCTION_26_12();
              }
            }
          }

          else
          {
            v109 = 0.0;
          }

          OUTLINED_FUNCTION_1_43();
          v112 = v111 >> 6;
          sub_237EF8260();
          v113 = 0;
          v114 = MEMORY[0x277D84F90];
          while (v93)
          {
LABEL_95:
            OUTLINED_FUNCTION_6_28();
            OUTLINED_FUNCTION_22_17();
            if (!(!v10 & v82))
            {
              OUTLINED_FUNCTION_31_8();
              v193 = v4;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_3_45();
              }

              v4 = *(v114 + 16);
              v116 = *(v114 + 24);
              v117 = v4 + 1;
              if (v4 >= v116 >> 1)
              {
                OUTLINED_FUNCTION_2_44(v116);
                OUTLINED_FUNCTION_16_23();
              }

              *(v114 + 16) = v117;
              OUTLINED_FUNCTION_4_38(v114 + 40 * v4, v163, v164, v166, v168, v170, v171, v173, v175, v177, v179, v180, v182, v184, v185, v186, v193);
            }
          }

          while (1)
          {
            v115 = v113 + 1;
            if (__OFADD__(v113, 1))
            {
              goto LABEL_175;
            }

            if (v115 >= v112)
            {
              break;
            }

            v93 = *(v5 + 64 + 8 * v115);
            ++v113;
            if (v93)
            {
              v113 = v115;
              goto LABEL_95;
            }
          }

          v118 = *(v114 + 16);
          if (v118)
          {
            OUTLINED_FUNCTION_10_1();
            sub_237C85534();
            v93 = *(v114 + 40);
            v119 = *(v114 + 56);
            sub_237EF8260();
            while (v118 != 1)
            {
              OUTLINED_FUNCTION_28_13();
              if (v82)
              {
                goto LABEL_179;
              }

              OUTLINED_FUNCTION_24_12();
              if (*(v120 + 56) < v119)
              {
                OUTLINED_FUNCTION_18_21();

                OUTLINED_FUNCTION_25_14();
              }
            }

            if (v109 < v119)
            {
LABEL_111:

              OUTLINED_FUNCTION_7_32();
              goto LABEL_67;
            }
          }

          else
          {

            if (v109 < 0.0)
            {
              goto LABEL_111;
            }
          }

          v93 = v203;
          goto LABEL_67;
        }

        break;
      }

      __break(1u);
LABEL_174:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
      goto LABEL_195;
    case 3:
      if (!v185)
      {
        goto LABEL_169;
      }

      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_8_37();
      OUTLINED_FUNCTION_33_8();
      v121 = 1;
      while (2)
      {
        OUTLINED_FUNCTION_23_18();
        if (v10)
        {
LABEL_170:
          v161 = v170;
          v162 = v182;
          *v170 = v5;
          v170[1] = v180;
LABEL_171:
          v161[2] = v162;
        }

        else
        {
          OUTLINED_FUNCTION_13_20();
          if (!__OFADD__(v121, 1))
          {
            v122 = *(v197 + 24 * v121);
            v204 = v121 + 1;
            OUTLINED_FUNCTION_0_37();
            swift_bridgeObjectRetain_n();
            OUTLINED_FUNCTION_32_9();
            v123 = 0;
            v124 = MEMORY[0x277D84F90];
            while (v4)
            {
LABEL_122:
              OUTLINED_FUNCTION_5_34();
              OUTLINED_FUNCTION_21_19();
              if (!(!v10 & v82))
              {
                v127 = v126[1];
                v189 = *v126;
                sub_237EF8260();
                v128 = swift_isUniquelyReferenced_nonNull_native();
                if ((v128 & 1) == 0)
                {
                  v128 = OUTLINED_FUNCTION_3_45();
                }

                v136 = *(v124 + 24);
                if (*(v124 + 16) >= v136 >> 1)
                {
                  OUTLINED_FUNCTION_2_44(v136);
                  OUTLINED_FUNCTION_16_23();
                }

                OUTLINED_FUNCTION_15_25(v128, v129, v130, v131, v132, v133, v134, v135, v163, v164, v166, v168, v170, v171, v173, v175, v177, v179, v180, v182, v184, v185, v189, v127);
              }
            }

            while (1)
            {
              v125 = v123 + 1;
              if (__OFADD__(v123, 1))
              {
                goto LABEL_174;
              }

              if (v125 >= v121)
              {
                break;
              }

              v4 = *(v122 + 64 + 8 * v125);
              ++v123;
              if (v4)
              {
                v123 = v125;
                goto LABEL_122;
              }
            }

            v137 = *(v124 + 16);
            if (v137)
            {
              OUTLINED_FUNCTION_10_1();
              sub_237C85534();
              v121 = *(v124 + 40);
              v138 = *(v124 + 48);
              sub_237EF8260();
              while (v137 != 1)
              {
                OUTLINED_FUNCTION_28_13();
                if (v82)
                {
                  goto LABEL_178;
                }

                OUTLINED_FUNCTION_24_12();
                if (*(v139 + 48) < v138)
                {
                  OUTLINED_FUNCTION_18_21();

                  OUTLINED_FUNCTION_26_12();
                }
              }
            }

            else
            {
              v138 = 0.0;
            }

            OUTLINED_FUNCTION_1_43();
            v141 = v140 >> 6;
            sub_237EF8260();
            v142 = 0;
            v143 = MEMORY[0x277D84F90];
            while (v121)
            {
LABEL_142:
              OUTLINED_FUNCTION_6_28();
              OUTLINED_FUNCTION_22_17();
              if (!(!v10 & v82))
              {
                OUTLINED_FUNCTION_31_8();
                v194 = v4;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_3_45();
                }

                v4 = *(v143 + 16);
                v145 = *(v143 + 24);
                v146 = v4 + 1;
                if (v4 >= v145 >> 1)
                {
                  OUTLINED_FUNCTION_2_44(v145);
                  OUTLINED_FUNCTION_16_23();
                }

                *(v143 + 16) = v146;
                OUTLINED_FUNCTION_4_38(v143 + 40 * v4, v163, v164, v166, v168, v170, v171, v173, v175, v177, v179, v180, v182, v184, v185, v186, v194);
              }
            }

            while (1)
            {
              v144 = v142 + 1;
              if (__OFADD__(v142, 1))
              {
                goto LABEL_176;
              }

              if (v144 >= v141)
              {
                break;
              }

              v121 = *(v5 + 64 + 8 * v144);
              ++v142;
              if (v121)
              {
                v142 = v144;
                goto LABEL_142;
              }
            }

            v147 = *(v143 + 16);
            if (v147)
            {
              OUTLINED_FUNCTION_10_1();
              sub_237C85534();
              v121 = *(v143 + 40);
              v148 = *(v143 + 48);
              sub_237EF8260();
              while (v147 != 1)
              {
                OUTLINED_FUNCTION_28_13();
                if (v82)
                {
                  goto LABEL_180;
                }

                OUTLINED_FUNCTION_24_12();
                if (*(v149 + 48) < v148)
                {
                  OUTLINED_FUNCTION_18_21();

                  OUTLINED_FUNCTION_25_14();
                }
              }

              if (v138 < v148)
              {
LABEL_158:

                OUTLINED_FUNCTION_7_32();
                continue;
              }
            }

            else
            {

              if (v138 < 0.0)
              {
                goto LABEL_158;
              }
            }

            v121 = v204;
            continue;
          }

LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
        }

        return;
      }

    case 4:
      if (!v185)
      {
        goto LABEL_169;
      }

      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_8_37();
      OUTLINED_FUNCTION_33_8();
      OUTLINED_FUNCTION_23_18();
      if (v10)
      {
        goto LABEL_170;
      }

      OUTLINED_FUNCTION_13_20();
      if (!__OFADD__(1, 1))
      {
        OUTLINED_FUNCTION_1_43();
        sub_237EF8260();
        OUTLINED_FUNCTION_32_9();
        sub_237EF8260();
        while (1)
        {
          do
          {
            OUTLINED_FUNCTION_6_28();
            OUTLINED_FUNCTION_20_17();
          }

          while (!v10 & v82);
          OUTLINED_FUNCTION_30_15();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_3_45();
          }

          OUTLINED_FUNCTION_12_26();
          if (v82)
          {
            v91 = OUTLINED_FUNCTION_11_26();
            v186 = v92;
            v83 = sub_237C62D70(v91, v92, 1);
          }

          OUTLINED_FUNCTION_14_26(v83, v84, v85, v86, v87, v88, v89, v90, v163, v164, v166, v168, v170, v171, v173, v175, v177, v179, v180, v182, v184, v185, v186, v190);
        }
      }

      goto LABEL_193;
    default:
      if (!v185)
      {
LABEL_169:
        sub_237CC6D04();
        v160 = sub_237EF8230();
        v170[1] = 0x6C6C414F50494E56;
        v170[2] = 0xE800000000000000;
        *v170 = v160;
        return;
      }

      OUTLINED_FUNCTION_9_26();
      v6 = v2[4];
      v165 = v2 + 4;
      v167 = v2[5];
      v7 = v2[6];
      sub_237EF8260();
      v169 = v7;
      sub_237EF8260();
      v8 = 1;
      while (2)
      {
        v202 = v6 + 64;
        v181 = v6;
        v178 = v6 + 72;
        v9 = v8;
LABEL_5:
        OUTLINED_FUNCTION_23_18();
        if (!v10)
        {
          OUTLINED_FUNCTION_13_20();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_197;
          }

          v12 = &v165[3 * v9];
          v13 = v12[1];
          v14 = v12[2];
          v15 = v181;
          v16 = *(v181 + 16);
          v183 = *v12;
          v172 = v11;
          v174 = v13;
          v176 = v14;
          if (v16)
          {
            v205 = MEMORY[0x277D84F90];
            sub_237EF8260();
            sub_237EF8260();
            sub_237C62D70(0, v16, 0);
            v19 = sub_237D299E0();
            v20 = v205;
            v21 = 0;
            v191 = v16;
            if (v19 < 0)
            {
              goto LABEL_181;
            }

            while (1)
            {
              if (v19 >= 1 << *(v15 + 32))
              {
                goto LABEL_181;
              }

              v22 = v19 >> 6;
              if ((*(v202 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
              {
                goto LABEL_182;
              }

              if (*(v15 + 36) != v17)
              {
                goto LABEL_183;
              }

              v195 = v18;
              v23 = *(v15 + 56) + 40 * v19;
              v24 = *(v23 + 8);
              v198 = v17;
              v200 = *v23;
              v25 = *(v23 + 16);
              v26 = *(v23 + 24);
              v27 = *(v23 + 32);
              v206 = v20;
              v28 = v15;
              v29 = *(v20 + 16);
              v30 = *(v20 + 24);
              v31 = v20;
              sub_237EF8260();
              v20 = v31;
              if (v29 >= v30 >> 1)
              {
                v43 = OUTLINED_FUNCTION_11_26();
                sub_237C62D70(v43, v29 + 1, 1);
                v20 = v206;
              }

              *(v20 + 16) = v29 + 1;
              v32 = v20 + 40 * v29;
              *(v32 + 32) = v200;
              *(v32 + 40) = v24;
              *(v32 + 48) = v25;
              *(v32 + 56) = v26;
              *(v32 + 64) = v27;
              v33 = 1 << *(v28 + 32);
              if (v19 >= v33)
              {
                goto LABEL_184;
              }

              v34 = *(v202 + 8 * v22);
              if ((v34 & (1 << v19)) == 0)
              {
                goto LABEL_185;
              }

              v15 = v28;
              if (*(v28 + 36) != v198)
              {
                goto LABEL_186;
              }

              v35 = v34 & (-2 << (v19 & 0x3F));
              if (v35)
              {
                v33 = __clz(__rbit64(v35)) | v19 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v36 = v22 << 6;
                v37 = v22 + 1;
                v38 = (v178 + 8 * v22);
                while (v37 < (v33 + 63) >> 6)
                {
                  v40 = *v38++;
                  v39 = v40;
                  v36 += 64;
                  ++v37;
                  if (v40)
                  {
                    v41 = v20;
                    sub_237CB231C(v19, v198, v195 & 1);
                    v20 = v41;
                    v33 = __clz(__rbit64(v39)) + v36;
                    goto LABEL_24;
                  }
                }

                v42 = v20;
                sub_237CB231C(v19, v198, v195 & 1);
                v20 = v42;
LABEL_24:
                v15 = v181;
              }

              if (++v21 == v191)
              {
                break;
              }

              v18 = 0;
              v17 = *(v15 + 36);
              v19 = v33;
              if (v33 < 0)
              {
                goto LABEL_181;
              }
            }

            v44 = v183;
            v13 = v174;
          }

          else
          {
            v44 = *v12;
            sub_237EF8260();
            sub_237EF8260();
            v20 = MEMORY[0x277D84F90];
          }

          sub_237D27DD8(v20);
          v46 = v45;

          v47 = *(v44 + 16);
          if (v47)
          {
            v207 = MEMORY[0x277D84F90];
            sub_237C62D70(0, v47, 0);
            v50 = sub_237D299E0();
            v51 = v207;
            v52 = v183;
            v53 = 0;
            v54 = v183 + 64;
            v187 = v47;
            if (v50 < 0)
            {
              goto LABEL_187;
            }

            while (1)
            {
              if (v50 >= 1 << *(v52 + 32))
              {
                goto LABEL_187;
              }

              v55 = v50 >> 6;
              if ((*(v54 + 8 * (v50 >> 6)) & (1 << v50)) == 0)
              {
                goto LABEL_188;
              }

              if (*(v52 + 36) != v48)
              {
                goto LABEL_189;
              }

              v199 = v53;
              v201 = v48;
              v196 = v49;
              v56 = *(v52 + 56) + 40 * v50;
              v58 = *v56;
              v57 = *(v56 + 8);
              v59 = *(v56 + 16);
              v60 = *(v56 + 24);
              v61 = *(v56 + 32);
              v208 = v51;
              v63 = *(v51 + 16);
              v62 = *(v51 + 24);
              v64 = v52;
              v65 = v51;
              sub_237EF8260();
              v51 = v65;
              if (v63 >= v62 >> 1)
              {
                v79 = OUTLINED_FUNCTION_11_26();
                sub_237C62D70(v79, v63 + 1, 1);
                v51 = v208;
              }

              *(v51 + 16) = v63 + 1;
              v66 = v51 + 40 * v63;
              *(v66 + 32) = v58;
              *(v66 + 40) = v57;
              *(v66 + 48) = v59;
              *(v66 + 56) = v60;
              *(v66 + 64) = v61;
              v67 = 1 << *(v64 + 32);
              if (v50 >= v67)
              {
                goto LABEL_190;
              }

              v54 = v183 + 64;
              v68 = *(v183 + 64 + 8 * v55);
              if ((v68 & (1 << v50)) == 0)
              {
                goto LABEL_191;
              }

              v52 = v64;
              if (*(v64 + 36) != v201)
              {
                goto LABEL_192;
              }

              v69 = v68 & (-2 << (v50 & 0x3F));
              if (v69)
              {
                v67 = __clz(__rbit64(v69)) | v50 & 0x7FFFFFFFFFFFFFC0;
                v70 = v187;
                v71 = v199;
              }

              else
              {
                v72 = v55 << 6;
                v73 = v55 + 1;
                v74 = (v183 + 72 + 8 * v55);
                v70 = v187;
                v71 = v199;
                while (v73 < (v67 + 63) >> 6)
                {
                  v76 = *v74++;
                  v75 = v76;
                  v72 += 64;
                  ++v73;
                  if (v76)
                  {
                    v77 = v51;
                    sub_237CB231C(v50, v201, v196 & 1);
                    v51 = v77;
                    v52 = v183;
                    v67 = __clz(__rbit64(v75)) + v72;
                    goto LABEL_47;
                  }
                }

                v78 = v51;
                sub_237CB231C(v50, v201, v196 & 1);
                v51 = v78;
                v52 = v183;
              }

LABEL_47:
              v53 = v71 + 1;
              if (v53 == v70)
              {
                break;
              }

              v49 = 0;
              v48 = *(v52 + 36);
              v50 = v67;
              if (v67 < 0)
              {
                goto LABEL_187;
              }
            }

            v13 = v174;
            v14 = v176;
          }

          else
          {
            v52 = v44;
            v51 = MEMORY[0x277D84F90];
          }

          v6 = v52;
          sub_237D27DD8(v51);
          v81 = v80;

          if (v46 < v81)
          {

            v167 = v13;
            v169 = v14;
            v8 = v172;
            continue;
          }

          v9 = v172;
          goto LABEL_5;
        }

        break;
      }

      v161 = v170;
      v162 = v169;
      *v170 = v181;
      v170[1] = v167;
      goto LABEL_171;
  }
}

uint64_t sub_237D3BEF8(uint64_t *a1, uint64_t *a2)
{
  PoseSelector.applied(to:eventHandler:)(*a2, a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t PoseSelector.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000017, 0x8000000237EFDEE0);
  sub_237EF9670();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_237D3C00C()
{
  result = qword_27DEB11E8;
  if (!qword_27DEB11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB11E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PoseSelectionStrategy(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PoseSelector(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && a1[8])
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 5;
      v2 = v3 - 5;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for PoseSelector(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_2_44@<X0>(unint64_t a1@<X8>)
{

  return sub_237C62D70((a1 > 1), v1, 1);
}

void *OUTLINED_FUNCTION_3_45()
{
  v2 = *(v0 + 16) + 1;

  return sub_237C62D70(0, v2, 1);
}

void OUTLINED_FUNCTION_4_38(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(a1 + 32) = a16;
  *(a1 + 40) = a17;
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  *(a1 + 64) = v17;
}

uint64_t OUTLINED_FUNCTION_8_37()
{

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_9_26()
{

  return sub_237C85534();
}

uint64_t OUTLINED_FUNCTION_13_20()
{

  return sub_237C85534();
}

void OUTLINED_FUNCTION_14_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v25 + 16) = v24;
  v32 = v25 + v28 * v27;
  *(v32 + 32) = a24;
  *(v32 + 40) = v26;
  *(v32 + 48) = v30;
  *(v32 + 56) = v31;
  *(v32 + 64) = v29;
}

void OUTLINED_FUNCTION_15_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v25 + 16) = v24;
  v31 = v25 + v26 * v27;
  *(v31 + 32) = a23;
  *(v31 + 40) = a24;
  *(v31 + 48) = v29;
  *(v31 + 56) = v30;
  *(v31 + 64) = v28;
}

uint64_t OUTLINED_FUNCTION_18_21()
{

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_30_15()
{

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_31_8()
{

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_32_9()
{

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_33_8()
{

  return sub_237EF8260();
}

uint64_t AnnotatedFeatureProvider.annotationColumnID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_2();
  sub_237EF62C0();
  OUTLINED_FUNCTION_22_3();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t AnnotatedFeatureProvider.annotationColumnID.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_2();
  sub_237EF62C0();
  OUTLINED_FUNCTION_22_3();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t AnnotatedFeatureProvider.featuresColumnName.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));
  sub_237EF8260();
  return v2;
}

uint64_t AnnotatedFeatureProvider.featuresColumnName.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 48));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AnnotatedFeatureProvider.resultsColumnName.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  sub_237EF8260();
  return v2;
}

uint64_t AnnotatedFeatureProvider.resultsColumnName.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 52));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AnnotatedFeatureProvider.init(_:annotationsColumnName:featuresColumnName:resultsColumnName:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  (*(v17 + 16))(a9, a1, v18);
  OUTLINED_FUNCTION_43_0();
  swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for AnnotatedFeatureProvider(0, a8, a10, a11);
  sub_237EF62D0();
  result = (*(v16 + 8))(a1, a8);
  v21 = (a9 + *(v19 + 48));
  *v21 = a4;
  v21[1] = a5;
  v22 = (a9 + *(v19 + 52));
  *v22 = a6;
  v22[1] = a7;
  return result;
}

uint64_t AnnotatedFeatureProvider.fitted(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7[27] = a6;
  v7[28] = v6;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = a1;
  v7[29] = a6[3];
  v9 = sub_237EF6290();
  v7[30] = v9;
  v7[31] = a6[4];
  v7[32] = a6[2];
  v7[33] = OUTLINED_FUNCTION_18_22(v9, v10, v11, v12, &associated type descriptor for SupervisedEstimator.Annotation);
  v13 = sub_237EF8A60();
  v7[34] = v13;
  v14 = OUTLINED_FUNCTION_9_27();
  v7[35] = v14;
  OUTLINED_FUNCTION_1_2();
  WitnessTable = swift_getWitnessTable();
  v7[36] = WitnessTable;
  v7[10] = v9;
  v7[11] = v13;
  v7[12] = v14;
  v7[13] = WitnessTable;
  v16 = sub_237EF9380();
  v7[37] = v16;
  OUTLINED_FUNCTION_6_1(v16);
  v7[38] = v17;
  v7[39] = OUTLINED_FUNCTION_27_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEADEA8, &unk_237F04C00);
  OUTLINED_FUNCTION_18(v18);
  v7[40] = OUTLINED_FUNCTION_27_0();
  v19 = sub_237EF61A0();
  v7[41] = v19;
  OUTLINED_FUNCTION_6_1(v19);
  v7[42] = v20;
  v7[43] = OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[44] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v7[45] = v22;
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  OUTLINED_FUNCTION_43_0();
  v23 = sub_237EF6290();
  v7[49] = v23;
  OUTLINED_FUNCTION_6_1(v23);
  v7[50] = v24;
  v7[51] = swift_task_alloc();
  v7[52] = swift_task_alloc();
  v7[53] = *(v9 - 8);
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_237D3CC5C()
{
  v80 = v0[49];
  v1 = v0[33];
  v76 = v0[32];
  v77 = v0[31];
  v2 = v0[29];
  v3 = (v0[28] + *(v0[27] + 48));
  v0[56] = *v3;
  v0[57] = v3[1];
  sub_237EF61C0();
  sub_237EF62C0();
  sub_237EF62B0();
  sub_237EF61C0();

  v4 = swift_task_alloc();
  v4[2] = v76;
  v4[3] = v2;
  v4[4] = v77;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  OUTLINED_FUNCTION_1_22();
  WitnessTable = swift_getWitnessTable();
  v7 = OUTLINED_FUNCTION_29_14();
  sub_237C9339C(v7, v8, v80, v1, v5, WitnessTable);
  v81 = v9;
  v10 = v0[40];
  v11 = v0[41];
  v12 = v0[24];
  v78 = *(v0[50] + 8);
  v78(v0[52], v0[49]);

  sub_237C89E7C(v12, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    v38 = v0[33];
    v68 = v0[32];
    v69 = v0[31];
    v70 = v0[49];
    v39 = v0[29];
    (*(v0[42] + 32))(v0[43], v0[40], v0[41]);
    sub_237EF61C0();
    sub_237EF62B0();
    sub_237EF61C0();

    v40 = swift_task_alloc();
    v40[2] = v68;
    v40[3] = v39;
    v40[4] = v69;
    v41 = OUTLINED_FUNCTION_29_14();
    sub_237C9339C(v41, v42, v70, v38, v5, WitnessTable);
    v72 = v43;
    v75 = v0[38];
    v67 = v0[37];
    v44 = v0[32];
    v66 = v0[33];
    v86 = v0[31];
    v65 = v0[29];
    v78(v0[51], v0[49]);

    v0[18] = v81;
    sub_237EFA000();

    v45 = OUTLINED_FUNCTION_107(&unk_284AD4CC0);
    v45[2] = v44;
    v45[3] = v65;
    v45[4] = v86;
    v46 = swift_task_alloc();
    v46[2] = v44;
    v46[3] = v65;
    v46[4] = v86;
    v46[5] = sub_237D3FFFC;
    v46[6] = v45;
    OUTLINED_FUNCTION_43_4();
    sub_237EF90F0();
    v47 = OUTLINED_FUNCTION_31_2();
    v79 = type metadata accessor for AnnotatedFeature(v47, v48, v66, v49);
    OUTLINED_FUNCTION_20_8();
    v83 = swift_getWitnessTable();
    v50 = OUTLINED_FUNCTION_29_14();
    v56 = sub_237C8FFEC(v50, v51, v67, v79, v52, v53, v54, v55);
    v0[58] = v56;

    v57 = *(v75 + 8);
    v58 = OUTLINED_FUNCTION_31_0();
    v57(v58);

    v0[19] = v56;
    v0[20] = v72;
    sub_237EFA000();

    v59 = OUTLINED_FUNCTION_107(&unk_284AD4CE8);
    v59[2] = v44;
    v59[3] = v65;
    v59[4] = v86;
    v60 = swift_task_alloc();
    v60[2] = v44;
    v60[3] = v65;
    v60[4] = v86;
    v60[5] = sub_237D3FDEC;
    v60[6] = v59;
    v62 = sub_237C8FFEC(sub_237D3FFCC, v60, v67, v79, MEMORY[0x277D84A98], v83, MEMORY[0x277D84AC0], v61);
    v0[59] = v62;

    v63 = OUTLINED_FUNCTION_31_0();
    v57(v63);

    v0[21] = v62;
    v84 = *(v86 + 48) + **(v86 + 48);
    v64 = swift_task_alloc();
    v0[60] = v64;
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    *v64 = v0;
    v64[1] = sub_237D3D658;

    __asm { BRAA            X8, X16 }
  }

  v73 = v0[33];
  v74 = v0[37];
  v71 = v0[32];
  v85 = v0[31];
  v13 = v0[29];
  sub_237C89EEC(v0[40]);
  v0[15] = v81;
  sub_237EFA000();

  v14 = OUTLINED_FUNCTION_107(&unk_284AD4C98);
  v14[2] = v71;
  v14[3] = v13;
  v14[4] = v85;
  v15 = swift_task_alloc();
  v15[2] = v71;
  v15[3] = v13;
  v15[4] = v85;
  v15[5] = sub_237D3FFFC;
  v15[6] = v14;
  sub_237EF90F0();
  v16 = OUTLINED_FUNCTION_31_2();
  v19 = type metadata accessor for AnnotatedFeature(v16, v17, v73, v18);
  OUTLINED_FUNCTION_20_8();
  swift_getWitnessTable();
  v20 = OUTLINED_FUNCTION_29_14();
  v26 = sub_237C8FFEC(v20, v21, v74, v19, v22, v23, v24, v25);
  v0[62] = v26;

  v27 = OUTLINED_FUNCTION_31_0();
  v28(v27);

  v0[16] = v26;
  v82 = (*(v85 + 40) + **(v85 + 40));
  v29 = swift_task_alloc();
  v0[63] = v29;
  v30 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  v31 = swift_getWitnessTable();
  *v29 = v0;
  v29[1] = sub_237D3D9C8;
  v32 = v0[46];
  v34 = v0[31];
  v33 = v0[32];
  v35 = v0[25];
  v36 = v0[26];

  return v82(v32, v0 + 16, v35, v36, v30, v31, v33, v34);
}

uint64_t sub_237D3D658()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 488) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D3D770()
{
  (*(v0[53] + 8))(v0[54], v0[30]);
  v3 = OUTLINED_FUNCTION_31_0();
  v4(v3);
  (*(v0[45] + 32))(v0[48], v0[47], v0[44]);
  if ((sub_237D0510C() & 1) == 0)
  {
    OUTLINED_FUNCTION_44_5("AnnotatedFeatureProvider");
  }

  OUTLINED_FUNCTION_5_35();
  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_26_13();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_21_20();
  sub_237EF9AC0();
  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_1_44();
  swift_allocObject();
  v5 = sub_237EF8940();
  v7 = OUTLINED_FUNCTION_14_27(v5, v6);
  v8(v7);
  sub_237D3C4BC(v2, v1);
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_42_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB11F0, &qword_237F0DE18);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_19_22(inited, xmmword_237F03530, v10, v11, v12, v13, v14, v15, v16, v39, v42, v45);
  sub_237EF8230();
  v17 = OUTLINED_FUNCTION_36_9();
  v19 = v18(v17);
  v27 = OUTLINED_FUNCTION_32_10(v19, v20, v21, v22, v23, v24, v25, v26, v40, v43, v46, v48, v50, v52, v54, v56);
  v28(v27);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_23_19(AssociatedConformanceWitness, v30, v31, v32, v33, v34, v35, v36, v41, v44, v47, v49, v51, v53, v55, v57, v58);

  OUTLINED_FUNCTION_3_0();

  return v37();
}

uint64_t sub_237D3D9C8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 512) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D3DAD0()
{
  (*(v0[45] + 32))(v0[48], v0[46], v0[44]);
  if ((sub_237D0510C() & 1) == 0)
  {
    OUTLINED_FUNCTION_44_5("AnnotatedFeatureProvider");
  }

  OUTLINED_FUNCTION_5_35();
  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_26_13();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_21_20();
  sub_237EF9AC0();
  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_1_44();
  swift_allocObject();
  v3 = sub_237EF8940();
  v5 = OUTLINED_FUNCTION_14_27(v3, v4);
  v6(v5);
  sub_237D3C4BC(v2, v1);
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_42_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB11F0, &qword_237F0DE18);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_19_22(inited, xmmword_237F03530, v8, v9, v10, v11, v12, v13, v14, v37, v40, v43);
  sub_237EF8230();
  v15 = OUTLINED_FUNCTION_36_9();
  v17 = v16(v15);
  v25 = OUTLINED_FUNCTION_32_10(v17, v18, v19, v20, v21, v22, v23, v24, v38, v41, v44, v46, v48, v50, v52, v54);
  v26(v25);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_23_19(AssociatedConformanceWitness, v28, v29, v30, v31, v32, v33, v34, v39, v42, v45, v47, v49, v51, v53, v55, v56);

  OUTLINED_FUNCTION_3_0();

  return v35();
}

uint64_t sub_237D3DCF8()
{
  v1 = v0[55];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v5 = v0[30];
  v6 = *(v0[53] + 8);
  v6(v0[54], v5);
  (*(v3 + 8))(v2, v4);
  v6(v1, v5);
  OUTLINED_FUNCTION_7_33();

  OUTLINED_FUNCTION_3_0();

  return v7();
}

uint64_t sub_237D3DE18()
{
  (*(v0[53] + 8))(v0[55], v0[30]);
  OUTLINED_FUNCTION_7_33();

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237D3DF00@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_21_20();
  v9 = sub_237EF90F0();
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  OUTLINED_FUNCTION_9();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  (*(v11 + 16))(&v20 - v14, a1, v9, v13);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    (*(v11 + 8))(v15, v9);
    sub_237C84150();
    v16 = swift_allocError();
    *v17 = 0xD000000000000018;
    *(v17 + 8) = 0x8000000237F0DE00;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = 1;
    result = swift_willThrow();
    *a4 = v16;
  }

  else
  {
    OUTLINED_FUNCTION_22_3();
    return (*(v19 + 32))(a5, v15, v5);
  }

  return result;
}

uint64_t sub_237D3E0B4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_237EF90F0();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_237D3E16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v15 = sub_237EF90F0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v22 - v18;
  (*(v20 + 16))(&v22 - v18, a1, v15, v17);
  (*(v11 + 16))(v14, a2, AssociatedTypeWitness);
  return AnnotatedFeature.init(feature:annotation:)(v19, v14, v15, AssociatedTypeWitness, a6);
}

void AnnotatedFeatureProvider.encode(_:to:)()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_40_7(v2, v3);
  v5 = *(v4 + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11_27();
  v6 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v6);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27_15();
  v13 = OUTLINED_FUNCTION_34_5();
  v14(v13);
  OUTLINED_FUNCTION_31_9();
  sub_237EF82F0();

  if (__swift_getEnumTagSinglePayload(v9, 1, v0) == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_24_13();
    v16(v15);
    (*(v11 + 8))(v1, v5);
    OUTLINED_FUNCTION_22_3();
    (*(v17 + 8))(v9, v0);
    OUTLINED_FUNCTION_12_6();
  }
}

void AnnotatedFeatureProvider.decode(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v2 + 32);
  v9 = *(v2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v34 = v11;
  OUTLINED_FUNCTION_9();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  (*(v8 + 64))(v5, v9, v8, v13);
  if (!v1)
  {
    OUTLINED_FUNCTION_26_13();
    v33 = 0;
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_11_27();
    sub_237EF9AC0();
    OUTLINED_FUNCTION_6_29();
    OUTLINED_FUNCTION_1_44();
    swift_allocObject();
    v16 = sub_237EF8940();
    v31 = v0;
    v32 = v7;
    v17 = v16;
    v18 = MEMORY[0x30];
    v19 = (v0 + *(v3 + 48));
    v20 = v19[1];
    v30 = *v19;
    *v21 = v30;
    v21[1] = v20;
    v22 = OUTLINED_FUNCTION_33_9(v21, v18);
    v23(v22);
    sub_237D3C4BC(v17, 0);
    swift_bridgeObjectRetain_n();
    v24 = sub_237EF8230();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB11F0, &qword_237F0DE18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F03530;
    v26 = v31;
    *(inited + 32) = v30;
    *(inited + 40) = v20;
    v27 = (v26 + *(v3 + 52));
    v28 = v27[1];
    *(inited + 48) = *v27;
    *(inited + 56) = v28;
    sub_237EF8260();
    v29 = sub_237EF8230();
    (*(v34 + 8))(v15, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    ColumnSelectorTransformer.init(transformers:columnMapping:)(v24, v29, v32);
  }

  OUTLINED_FUNCTION_12_6();
}

void (*sub_237D3E784(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = AnnotatedFeatureProvider.annotationColumnID.modify();
  return sub_237C803C0;
}

uint64_t sub_237D3E7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_237C6A904;

  return AnnotatedFeatureProvider.fitted(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, a6);
}

uint64_t AnnotatedFeatureProvider<>.makeTransformer()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v21 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26_13();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_237EF9AC0();
  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_1_44();
  swift_allocObject();
  v7 = sub_237EF8940();
  v8 = (v3 + *(a1 + 48));
  v9 = *v8;
  v10 = v8[1];
  *v11 = *v8;
  v11[1] = v10;
  v12 = *(a2 + 16);
  swift_bridgeObjectRetain_n();
  v12(v21, a2);
  sub_237D3C4BC(v7, TupleTypeMetadata2);
  v13 = sub_237EF8230();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB11F0, &qword_237F0DE18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  *(inited + 32) = v9;
  *(inited + 40) = v10;
  v15 = (v3 + *(a1 + 52));
  v16 = v15[1];
  *(inited + 48) = *v15;
  *(inited + 56) = v16;
  sub_237EF8260();
  v17 = sub_237EF8230();
  swift_getAssociatedConformanceWitness();
  return ColumnSelectorTransformer.init(transformers:columnMapping:)(v13, v17, a3);
}

uint64_t AnnotatedFeatureProvider<>.update(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v7[18] = *(a5 + 24);
  v10 = sub_237EF6290();
  v7[19] = v10;
  v7[20] = *(a6 + 8);
  v7[21] = *(a5 + 16);
  v7[22] = OUTLINED_FUNCTION_18_22(v10, v11, v12, v13, &associated type descriptor for SupervisedEstimator.Annotation);
  v14 = sub_237EF8A60();
  v7[23] = v14;
  v15 = OUTLINED_FUNCTION_9_27();
  v7[24] = v15;
  OUTLINED_FUNCTION_1_2();
  WitnessTable = swift_getWitnessTable();
  v7[25] = WitnessTable;
  v7[2] = v10;
  v7[3] = v14;
  v7[4] = v15;
  v7[5] = WitnessTable;
  v17 = sub_237EF9380();
  v7[26] = v17;
  OUTLINED_FUNCTION_6_1(v17);
  v7[27] = v18;
  v19 = OUTLINED_FUNCTION_27_0();
  v7[28] = v19;
  v7[29] = OUTLINED_FUNCTION_18_22(v19, v20, v21, v22, &associated type descriptor for SupervisedEstimator.Transformer);
  v23 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v23);
  v7[30] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_0();
  v24 = sub_237EF6290();
  v7[31] = v24;
  OUTLINED_FUNCTION_6_1(v24);
  v7[32] = v25;
  v7[33] = OUTLINED_FUNCTION_27_0();
  v7[34] = *(v10 - 8);
  v7[35] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_237D3ED20()
{
  v1 = v0[31];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[16];
  v6 = (v0[17] + *(v0[15] + 48));
  v0[36] = *v6;
  v0[37] = v6[1];
  v42 = v2;
  sub_237EF61C0();
  sub_237EF62C0();
  sub_237EF62B0();
  sub_237EF61C0();

  v7 = swift_task_alloc();
  v7[2] = v42;
  v7[3] = v4;
  v7[4] = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  OUTLINED_FUNCTION_1_22();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237D3FE0C, v7, v1, v3, v8, WitnessTable);
  v11 = v10;
  v40 = v0[27];
  v38 = v0[28];
  v39 = v0[26];
  v12 = v0[21];
  v37 = v0[22];
  v43 = v0[20];
  v13 = v0[18];
  v14 = v0[16];
  (*(v0[32] + 8))(v0[33], v0[31]);

  v0[9] = v11;
  sub_237EF8260();
  sub_237EFA000();

  v15 = OUTLINED_FUNCTION_107(&unk_284AD4D10);
  v15[2] = v12;
  v15[3] = v13;
  v15[4] = v14;
  v16 = swift_task_alloc();
  v16[2] = v12;
  v16[3] = v13;
  v16[4] = v14;
  v16[5] = sub_237D3FE30;
  v16[6] = v15;
  OUTLINED_FUNCTION_43_4();
  sub_237EF90F0();
  v17 = OUTLINED_FUNCTION_31_2();
  v20 = type metadata accessor for AnnotatedFeature(v17, v18, v37, v19);
  OUTLINED_FUNCTION_20_8();
  swift_getWitnessTable();
  v21 = OUTLINED_FUNCTION_29_14();
  v27 = sub_237C8FFEC(v21, v22, v39, v20, v23, v24, v25, v26);
  v0[38] = v27;

  (*(v40 + 8))(v38, v39);

  v0[10] = v27;
  v41 = (*(v43 + 40) + **(v43 + 40));
  v28 = swift_task_alloc();
  v0[39] = v28;
  OUTLINED_FUNCTION_43_0();
  v29 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  v30 = swift_getWitnessTable();
  *v28 = v0;
  v28[1] = sub_237D3F174;
  v31 = v0[30];
  v33 = v0[20];
  v32 = v0[21];
  v34 = v0[13];
  v35 = v0[14];

  return v41(v31, v0 + 10, v34, v35, v29, v30, v32, v33);
}

uint64_t sub_237D3F174()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 320) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D3F284()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[19];
  __swift_storeEnumTagSinglePayload(v0[30], 0, 1, v0[29]);
  v0[6] = v1;
  v0[7] = v2;
  sub_237EF82B0();
  sub_237EF8300();
  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t sub_237D3F3A0()
{
  (*(v0[34] + 8))(v0[35], v0[19]);
  OUTLINED_FUNCTION_43_7();

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237D3F434@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_237EF90F0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9, v11);
  if (__swift_getEnumTagSinglePayload(v13, 1, AssociatedTypeWitness) != 1)
  {
    return (*(*(AssociatedTypeWitness - 8) + 32))(a5, v13, AssociatedTypeWitness);
  }

  (*(v10 + 8))(v13, v9);
  sub_237C84150();
  v14 = swift_allocError();
  *v15 = 0xD000000000000018;
  *(v15 + 8) = 0x8000000237F0DE00;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 1;
  result = swift_willThrow();
  *a4 = v14;
  return result;
}

uint64_t sub_237D3F5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v19 - v11;
  v13 = sub_237EF90F0();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a1, v13, v14);
  (*(v10 + 16))(v12, a2, AssociatedTypeWitness);
  return AnnotatedFeature.init(feature:annotation:)(v16, v12, v13, AssociatedTypeWitness, a6);
}

uint64_t sub_237D3F794(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_237EF90F0();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

void AnnotatedFeatureProvider<>.encodeWithOptimizer(_:to:)()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_40_7(v2, v3);
  v5 = *(v4 + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11_27();
  v6 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v6);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27_15();
  v13 = OUTLINED_FUNCTION_34_5();
  v14(v13);
  OUTLINED_FUNCTION_31_9();
  sub_237EF82F0();

  if (__swift_getEnumTagSinglePayload(v9, 1, v0) == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_24_13();
    v16(v15);
    (*(v11 + 8))(v1, v5);
    OUTLINED_FUNCTION_22_3();
    (*(v17 + 8))(v9, v0);
    OUTLINED_FUNCTION_12_6();
  }
}

void AnnotatedFeatureProvider<>.decodeWithOptimizer(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v3 = v2;
  v5 = v4;
  v32 = v6;
  v34 = v7;
  v8 = *(v7 + 16);
  v33 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  OUTLINED_FUNCTION_9();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  (*(v3 + 40))(v5, v8, v3, v13);
  if (!v1)
  {
    OUTLINED_FUNCTION_26_13();
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_11_27();
    sub_237EF9AC0();
    OUTLINED_FUNCTION_6_29();
    OUTLINED_FUNCTION_1_44();
    swift_allocObject();
    v16 = sub_237EF8940();
    v17 = MEMORY[0x30];
    v18 = *(v34 + 48);
    v31 = v0;
    v19 = (v0 + v18);
    v20 = *v19;
    v21 = v19[1];
    *v22 = *v19;
    v22[1] = v21;
    v23 = OUTLINED_FUNCTION_33_9(v22, v17);
    v24(v23);
    sub_237D3C4BC(v16, 0);
    swift_bridgeObjectRetain_n();
    v25 = sub_237EF8230();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB11F0, &qword_237F0DE18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F03530;
    *(inited + 32) = v20;
    *(inited + 40) = v21;
    v27 = (v31 + *(v34 + 52));
    v28 = v27[1];
    *(inited + 48) = *v27;
    *(inited + 56) = v28;
    sub_237EF8260();
    v29 = sub_237EF8230();
    (*(v11 + 8))(v15, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    ColumnSelectorTransformer.init(transformers:columnMapping:)(v25, v29, v32);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D3FCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 - 8);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_237C6B728;

  return AnnotatedFeatureProvider<>.update(_:with:eventHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_237D3FEA4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237D3FEE0(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v1 = sub_237EF62C0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void OUTLINED_FUNCTION_5_35()
{
  v2 = v0[39];
  v3 = v0[40];
  *(v1 - 96) = v0[43];
  *(v1 - 88) = v3;
  *(v1 - 80) = v2;
}

uint64_t OUTLINED_FUNCTION_7_33()
{
}

uint64_t OUTLINED_FUNCTION_9_27()
{

  return swift_getWitnessTable();
}

char *OUTLINED_FUNCTION_14_27(uint64_t a1, void *a2)
{
  v5 = *(v3 + 48);
  *a2 = v2;
  a2[1] = v4;
  return a2 + v5;
}

uint64_t OUTLINED_FUNCTION_18_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_19_22(__n128 *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v12;
  a1[2].n128_u64[1] = v14;
  v16 = (a12 + *(a11 + 52));
  v17 = v16[1];
  *(v13 + 48) = *v16;
  *(v13 + 56) = v17;

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_23_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17)
{

  return ColumnSelectorTransformer.init(transformers:columnMapping:)(v18, v17, a15);
}

uint64_t OUTLINED_FUNCTION_31_9()
{
  v4 = (v0 + *(v1 + 48));
  v5 = v4[1];
  *(v2 - 96) = *v4;
  *(v2 - 88) = v5;

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_42_6()
{

  return sub_237EF8230();
}

uint64_t OUTLINED_FUNCTION_43_7()
{
}

uint64_t OUTLINED_FUNCTION_44_5@<X0>(uint64_t a1@<X8>)
{

  return sub_237D05198(0xD000000000000018, (a1 - 32) | 0x8000000000000000);
}

uint64_t FullyConnectedNetworkRegressor.decode(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v53 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v50 = *v3;
  v13 = type metadata accessor for FullyConnectedNetworkRegressorModel(0, a2[2], a2[3], a2[4]);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v14);
  v16 = *(v15 + 8);
  WitnessTable = swift_getWitnessTable();
  result = v16(v13, v13, WitnessTable, v14, v15);
  if (!v55)
  {
    v19 = v53;
    v56 = v7;
    v48 = a3;
    v49 = v13;
    sub_237C6BDB8();
    v21 = v20;
    v22 = *(v20 + 16);
    if (v22)
    {
      v57 = MEMORY[0x277D84F90];
      sub_237C62DB0(0, v22, 0);
      v23 = v57;
      v24 = v53 + 16;
      v25 = v21 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v52 = *(v53 + 72);
      v54 = *(v53 + 16);
      v51 = (v19 + 8);
      v26 = v56;
      do
      {
        v27 = v24;
        v54(v12, v25, v26);
        v26 = v56;
        v28 = sub_237EF6810();
        (*v51)(v12, v56);
        v30 = *(v57 + 16);
        v29 = *(v57 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_237C62DB0(v29 > 1, v30 + 1, 1);
          v26 = v56;
        }

        *(v57 + 16) = v30 + 1;
        *(v57 + 8 * v30 + 32) = v28;
        v25 += v52;
        --v22;
        v24 = v27;
      }

      while (v22);
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
    }

    v31 = sub_237C60B7C(1, v23);
    v33 = v32;
    v35 = v34;
    v37 = v36;
    if (v36)
    {
      sub_237EF9DE0();
      swift_unknownObjectRetain_n();
      v42 = swift_dynamicCastClass();
      if (!v42)
      {
        swift_unknownObjectRelease();
        v42 = MEMORY[0x277D84F90];
      }

      v43 = *(v42 + 16);

      if (__OFSUB__(v37 >> 1, v35))
      {
        __break(1u);
      }

      else if (v43 == (v37 >> 1) - v35)
      {
        v39 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v40 = v48;
        v41 = v50;
        if (v39)
        {
          goto LABEL_18;
        }

        v39 = MEMORY[0x277D84F90];
LABEL_17:
        swift_unknownObjectRelease();
LABEL_18:
        v44 = sub_237C60C7C(v39, v41);

        if ((v44 & 1) == 0)
        {
          v45 = sub_237EF93E0();
          swift_allocError();
          v47 = v46;
          sub_237EF93D0();
          (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84168], v45);
          swift_willThrow();
          return (*(*(v49 - 8) + 8))(v40, v49);
        }

        return result;
      }

      swift_unknownObjectRelease();
    }

    sub_237C62A88(v31, v33, v35, v37);
    v39 = v38;
    v40 = v48;
    v41 = v50;
    goto LABEL_17;
  }

  return result;
}

uint64_t FullyConnectedNetworkRegressor.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for FullyConnectedNetwork(0);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v43 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1278, &qword_237F0DED8);
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v44 = v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5E8, &unk_237F05B90);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v41 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 8);
  v21 = type metadata accessor for FullyConnectedNetworkRegressorModel(0, a3[2], a3[3], a3[4]);
  WitnessTable = swift_getWitnessTable();
  v23 = v45;
  result = v20(a1, v21, WitnessTable, v18, v19);
  if (!v23)
  {
    v25 = v41;
    v45 = v17;
    v27 = v43;
    v26 = v44;
    v28 = a1;
    sub_237C6FDA0(a1 + *(v21 + 44), v44, &qword_27DEB1278, &qword_237F0DED8);
    if (__swift_getEnumTagSinglePayload(v26, 1, v42) == 1)
    {
      return sub_237C65484(v26, &qword_27DEB1278, &qword_237F0DED8);
    }

    else
    {
      v29 = v45;
      sub_237D41948(v26, v45);
      sub_237C6FDA0(v29, v25, &qword_27DEAE5E8, &unk_237F05B90);
      sub_237D41A80(v28, v27, type metadata accessor for FullyConnectedNetwork);
      v30 = *v25;
      if (*(v25 + 4) <= 0.0)
      {
        v36 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_237C6BDB8();
        v32 = v31;
        v44 = &v41;
        MEMORY[0x28223BE20](v31);
        OUTLINED_FUNCTION_27();
        *(v33 - 16) = v25;
        *(v33 - 8) = v27;
        sub_237CD1620(sub_237D41A0C, v34, v32);
        v36 = v35;
      }

      OUTLINED_FUNCTION_5_36();
      sub_237C65484(v25, &qword_27DEAE5E8, &unk_237F05B90);
      v46 = 0;
      v47 = v30;
      v48 = v36;
      v37 = *(a2 + 24);
      v38 = *(a2 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a2, v37);
      v39 = *(v38 + 16);
      v40 = sub_237D419B8();
      v39(&v46, &type metadata for SGDStorage, v40, v37, v38);
      sub_237C65484(v45, &qword_27DEAE5E8, &unk_237F05B90);
    }
  }

  return result;
}

void FullyConnectedNetworkRegressor.decodeWithOptimizer(from:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v127 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2B0, &unk_237F03690);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19();
  v138 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v151 = v10;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  OUTLINED_FUNCTION_1();
  v144 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v160 = v13;
  MEMORY[0x28223BE20](v14);
  v159 = &v126 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0, &qword_237F08F20);
  OUTLINED_FUNCTION_18(v16);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19();
  v150 = v18;
  v164 = sub_237EF6C60();
  OUTLINED_FUNCTION_1();
  v147 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  v157 = v22 - v21;
  v149 = type metadata accessor for SGDDenseLayer(0);
  OUTLINED_FUNCTION_1();
  v156 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5();
  v163 = v26 - v25;
  v158 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v155 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_2();
  v165 = v29;
  MEMORY[0x28223BE20](v30);
  v154 = &v126 - v31;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1288, &unk_237F0DEE0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_19();
  v152 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D0, &unk_237F166A0);
  OUTLINED_FUNCTION_18(v34);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_19();
  v143 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8, &unk_237F06050);
  OUTLINED_FUNCTION_18(v37);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v38);
  v40 = &v126 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5E8, &unk_237F05B90);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v42);
  v44 = &v126 - v43;
  v45 = type metadata accessor for FullyConnectedNetworkRegressorModel(0, a2[2], a2[3], a2[4]);
  OUTLINED_FUNCTION_1();
  v47 = v46;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v48);
  v50 = &v126 - v49;
  v51 = v167;
  FullyConnectedNetworkRegressor.decode(from:)(a1, a2, &v126 - v49);
  if (v51)
  {
    return;
  }

  v167 = v40;
  v140 = v41;
  v148 = v44;
  v161 = v50;
  v146 = v47;
  v145 = v45;
  v52 = *(a1 + 24);
  v53 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v52);
  v54 = *(v53 + 16);
  v55 = sub_237D41A2C();
  v54(v168, &type metadata for SGDStorage, &type metadata for SGDStorage, v55, v52, v53);
  v166 = 0;
  v56 = v168[2];
  v57 = sub_237EF6580();
  __swift_storeEnumTagSinglePayload(v167, 1, 1, v57);
  v58 = sub_237EF6530();
  __swift_storeEnumTagSinglePayload(v143, 1, 1, v58);
  v59 = type metadata accessor for FullyConnectedNetwork(0);
  v60 = sub_237C77B74();
  v143 = v59;
  v142 = v60;
  sub_237EF6660();
  sub_237C6BDB8();
  v62 = v61;
  v63 = 0;
  v137 = *(v61 + 16);
  v64 = v155;
  v136 = v155 + 16;
  v128 = (v155 + 32);
  v141 = (v147 + 1);
  v139 = (v144 + 16);
  v147 = (v144 + 8);
  v126 = (v144 + 32);
  v135 = (v155 + 8);
  v65 = v157;
  v66 = v158;
  v67 = v165;
  v68 = v156;
  v69 = v146;
  v70 = v154;
  v129 = v56;
  v134 = v61;
  while (1)
  {
    if (v137 == v63)
    {

      v74 = v145;
LABEL_20:
      v122 = *(v74 + 44);
      v123 = v161;
      sub_237C65484(&v161[v122], &qword_27DEB1278, &qword_237F0DED8);
      sub_237D41948(v148, &v123[v122]);
      __swift_storeEnumTagSinglePayload(&v123[v122], 0, 1, v140);
      (*(v69 + 16))(v127, v123, v74);
      (*(v69 + 8))(v123, v74);
      return;
    }

    if (v63 >= *(v62 + 16))
    {
      break;
    }

    v71 = v62 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v63;
    v72 = *(v64 + 16);
    v167 = v63;
    v72(v70, v71, v66);
    v73 = *(v56 + 16);
    v74 = v145;
    if (v167 == v73)
    {

      (*v135)(v70, v66);
      goto LABEL_20;
    }

    if (v167 >= v73)
    {
      goto LABEL_24;
    }

    v75 = v56 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v167;
    v76 = v152;
    v77 = *(v153 + 48);
    v78 = *v128;
    (*v128)(v152, v70, v66);
    sub_237D41A80(v75, &v76[v77], type metadata accessor for SGDDenseLayer);
    v78(v67, v76, v66);
    v79 = v163;
    sub_237D41AE0(&v76[v77], v163);
    sub_237EF67F0();
    LODWORD(v75) = sub_237EF6C40();
    v80 = *v141;
    (*v141)(v65, v164);
    v81 = OUTLINED_FUNCTION_12_27();
    MEMORY[0x28223BE20](v81);
    OUTLINED_FUNCTION_27();
    *(v82 - 16) = v65;
    *(v82 - 8) = v75;
    v83 = v166;
    sub_237C62804(sub_237C77BCC, v84, v81);
    v86 = v85;
    v67 = v87;

    if (!v86)
    {

      sub_237C6514C();
      swift_allocError();
      *v124 = 0xD000000000000025;
      v124[1] = 0x8000000237EFB480;
      swift_willThrow();
      OUTLINED_FUNCTION_0_38();
      sub_237D41B44(v79, v125);
      (*v135)(v165, v66);
      sub_237C65484(v148, &qword_27DEAE5E8, &unk_237F05B90);
      (*(v146 + 8))(v161, v145);
      return;
    }

    v88 = v159;
    v89 = v162;
    v131 = *v139;
    v131(v159, v79, v162);
    v90 = sub_237C651A0();
    v91 = sub_237EF6B10();

    OUTLINED_FUNCTION_10();
    v92 = v150;
    v132 = v90;
    sub_237EF7F00();
    v166 = v83;
    v93 = v92;
    v144 = *v147;
    (v144)(v88, v89);
    v133 = v91;
    __swift_storeEnumTagSinglePayload(v92, 0, 1, v91);
    v94 = *(v140 + 56);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD300, &qword_237F05BA0);
    v130 = v94;
    sub_237EF6650();
    v95 = v151;
    sub_237C6FDA0(v79 + *(v149 + 20), v151, &qword_27DEAD600, &unk_237F049C0);
    if (__swift_getEnumTagSinglePayload(v95, 1, v89) == 1)
    {

      OUTLINED_FUNCTION_0_38();
      sub_237D41B44(v79, v96);
      v97 = OUTLINED_FUNCTION_2_45();
      v98(v97);
      sub_237C65484(v95, &qword_27DEAD600, &unk_237F049C0);
LABEL_14:
      v68 = v156;
      v65 = v157;
      v69 = v146;
      v70 = v154;
      v64 = v155;
      goto LABEL_17;
    }

    (*v126)(v160, v95, v89);
    v99 = v138;
    sub_237EF67C0();
    v100 = v164;
    if (__swift_getEnumTagSinglePayload(v99, 1, v164) == 1)
    {

      sub_237C65484(v99, &qword_27DEAD2B0, &unk_237F03690);
    }

    else
    {
      v101 = sub_237EF6C40();
      v80(v99, v100);
      v102 = OUTLINED_FUNCTION_12_27();
      MEMORY[0x28223BE20](v102);
      OUTLINED_FUNCTION_27();
      *(v103 - 16) = v99;
      *(v103 - 8) = v101;
      v104 = v166;
      sub_237C62804(sub_237C77BCC, v105, v102);
      v107 = v106;
      v109 = v108;

      if (v107)
      {

        v110 = v93;
        v111 = v159;
        v112 = v162;
        v131(v159, v160, v162);
        OUTLINED_FUNCTION_10();
        v113 = v133;
        sub_237EF7F00();
        v166 = v104;
        v132 = v109;
        v114 = v144;
        (v144)(v111, v112);
        __swift_storeEnumTagSinglePayload(v110, 0, 1, v113);
        sub_237EF6650();

        v114(v160, v112);
        OUTLINED_FUNCTION_0_38();
        sub_237D41B44(v163, v115);
        v116 = OUTLINED_FUNCTION_2_45();
        v117(v116);
        goto LABEL_14;
      }

      v166 = v104;
    }

    v118 = v163;
    v68 = v156;
    v70 = v154;
    (v144)(v160, v162);
    OUTLINED_FUNCTION_0_38();
    sub_237D41B44(v118, v119);
    v120 = OUTLINED_FUNCTION_2_45();
    v121(v120);
    v65 = v157;
    v69 = v146;
    v64 = v155;
LABEL_17:
    v56 = v129;
    v62 = v134;
    v63 = v167 + 1;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_237D41948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5E8, &unk_237F05B90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_237D419B8()
{
  result = qword_27DEB1280;
  if (!qword_27DEB1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB1280);
  }

  return result;
}

unint64_t sub_237D41A2C()
{
  result = qword_27DEB1290[0];
  if (!qword_27DEB1290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB1290);
  }

  return result;
}

uint64_t sub_237D41A80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_237D41AE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SGDDenseLayer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D41B44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_36()
{

  return sub_237D41B44(v0, type metadata accessor for FullyConnectedNetwork);
}

uint64_t OUTLINED_FUNCTION_12_27()
{

  return sub_237EF6870();
}

uint64_t SlidingWindowTransformer.init(stride:length:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double SlidingWindowTransformer.applied<A>(to:eventHandler:)@<D0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v13 = v4[1];
  (*(v15 + 16))(v12, v10);
  AnyTemporalSequence.init<A>(_:)(v12, *(a1 + 16), a2, a3, v19);
  *a4 = v14;
  *(a4 + 8) = v13;
  v16 = v19[1];
  *(a4 + 16) = v19[0];
  *(a4 + 32) = v16;
  result = *&v20;
  v18 = v21;
  *(a4 + 48) = v20;
  *(a4 + 64) = v18;
  return result;
}

uint64_t sub_237D41D40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656469727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237D41E08(char a1)
{
  if (a1)
  {
    return 0x6874676E656CLL;
  }

  else
  {
    return 0x656469727473;
  }
}

uint64_t sub_237D41E60(uint64_t a1)
{
  sub_237EFA120();
  sub_237C5ED64(v3, *v1);
  return sub_237EFA170();
}

uint64_t sub_237D41EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D41D40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D41F0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C787C4();
  *a1 = result;
  return result;
}

uint64_t sub_237D41F38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D41F8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t SlidingWindowTransformer.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SlidingWindowTransformer.CodingKeys(255, *(a2 + 16), a3, a4);
  OUTLINED_FUNCTION_6_30();
  swift_getWitnessTable();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v15 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  v14[1] = *(v4 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  v18 = 0;
  v11 = v16;
  sub_237EF9A50();
  if (v11)
  {
    return (*(v15 + 8))(v10, v6);
  }

  v13 = v15;
  v17 = 1;
  sub_237EF9A50();
  return (*(v13 + 8))(v10, v6);
}

uint64_t SlidingWindowTransformer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v18 = a5;
  type metadata accessor for SlidingWindowTransformer.CodingKeys(255, a2, a3, a4);
  OUTLINED_FUNCTION_6_30();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_34_0();
  v7 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA190();
  if (!v5)
  {
    v13 = v18;
    v20 = 0;
    v14 = sub_237EF9950();
    v19 = 1;
    v16 = sub_237EF9950();
    (*(v9 + 8))(v12, v7);
    *v13 = v14;
    v13[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237D42344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8.n128_f64[0] = SlidingWindowTransformer.applied<A>(to:eventHandler:)(a7, a5, a6, a1);
  v9 = *(v7 + 8);

  return v9(v8);
}

uint64_t SlidingWindowTransformer.WindowSequence.count.getter()
{
  result = *(v0 + 48);
  if ((*(v0 + 56) & 1) == 0)
  {
    v2 = *v0;
    if (*v0)
    {
      if (result != 0x8000000000000000 || v2 != -1)
      {
        result /= v2;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t SlidingWindowTransformer.WindowSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v7 = *v5;
  v8 = v5[1];
  v9 = *(a1 + 16);
  v10 = type metadata accessor for AnyTemporalSequence(0, v9, a3, a4);
  (*(*(v10 - 8) + 16))(v12, v5 + 2, v10);
  return sub_237D424B8(v7, v8, v12, v9, x8_0);
}

uint64_t sub_237D424B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 96) = 0;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  v9 = type metadata accessor for AnyTemporalSequence(0, a4, a3, a4);
  v10 = *(v9 - 8);
  (*(v10 + 16))(a5 + 16, a3, v9);
  AnyTemporalSequence.makeAsyncIterator()();
  *(a5 + 80) = v15;
  type metadata accessor for SlidingWindowTransformer.WindowSequence.Iterator.SlidingWindowBuffer(0, a4, v11, v12);
  v13 = sub_237D4263C(a2);
  result = (*(v10 + 8))(a3, v9);
  *(a5 + 104) = v13;
  return result;
}

uint64_t sub_237D425DC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  SlidingWindowTransformer.WindowSequence.makeAsyncIterator()(a1, a3, a4, x8_0);
  v7 = *(*(a1 - 8) + 8);

  return v7(v5, a1);
}

uint64_t sub_237D4263C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_237D43C7C(a1);
  return v2;
}

uint64_t sub_237D42698()
{
  v1 = *(*(v0 + 16) + 104);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_0_3(sub_237D426B8, v1);
}

uint64_t sub_237D426B8()
{
  OUTLINED_FUNCTION_2_0();
  sub_237D43CF8();
  v0 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_237D42714()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 16);
  *(v1 + 96) = 0;

  *(v1 + 144) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  OUTLINED_FUNCTION_3_0();

  return v2();
}

uint64_t sub_237D42780(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_3(sub_237D427A0, 0);
}

uint64_t sub_237D427A0()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 32) + 104);
  *(v0 + 40) = v2;
  *(v0 + 48) = *(type metadata accessor for TemporalFeature(0, *(v1 + 16), v3, v4) + 28);

  return MEMORY[0x2822009F8](sub_237D4281C, v2, 0);
}

uint64_t sub_237D4281C()
{
  OUTLINED_FUNCTION_2_0();
  sub_237D43D98(*(v0 + 16) + *(v0 + 48));
  v1 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_237D42884()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 96);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 16);
    *(v1 + 96) = v4;
    v7 = *v5;
    v6 = v5[1];
    v11 = *(v5 + 1);
    v8 = v5[4];
    sub_237EF8260();

    *(v1 + 112) = v7;
    *(v1 + 120) = v6;
    *(v1 + 128) = v11;
    *(v1 + 144) = v8;
    OUTLINED_FUNCTION_3_0();

    return v9();
  }

  return result;
}

uint64_t SlidingWindowTransformer.WindowSequence.Iterator.next()()
{
  OUTLINED_FUNCTION_2_0();
  v1[39] = v2;
  v1[40] = v0;
  v1[38] = v3;
  v4 = *(v2 + 16);
  v1[41] = v4;
  v7 = type metadata accessor for TemporalFeature(255, v4, v5, v6);
  v1[42] = v7;
  OUTLINED_FUNCTION_34_0();
  v8 = sub_237EF90F0();
  v1[43] = v8;
  v1[44] = *(v8 - 8);
  v1[45] = swift_task_alloc();
  v1[46] = *(v7 - 8);
  v1[47] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237D42A58()
{
  OUTLINED_FUNCTION_2_0();
  v1 = v0[40];
  v2 = *(v1 + 88);
  v0[35] = *(v1 + 80);
  v0[36] = v2;

  v3 = swift_task_alloc();
  v0[48] = v3;
  v4 = OUTLINED_FUNCTION_34_0();
  type metadata accessor for AnyTemporalIterator(v4, v5, v6, v7);
  *v3 = v0;
  v8 = OUTLINED_FUNCTION_3_46();

  return AnyTemporalIterator.next()(v8);
}

uint64_t sub_237D42AF0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v3 + 392) = v0;

  if (v0)
  {
    v6 = sub_237D439B0;
  }

  else
  {
    v6 = sub_237D42C04;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_237D42C04()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = *(v0 + 320);
  if (EnumTagSinglePayload == 1)
  {
    (*(*(v0 + 352) + 8))(v1, *(v0 + 344));
    v5 = *(v4 + 120);
    if (v5)
    {
      v6 = *(v0 + 320);
      v7 = *(v6 + 144);
      v8 = *(v6 + 128);
      *(v0 + 160) = *(v6 + 112);
      *(v0 + 168) = v5;
      *(v0 + 176) = v8;
      *(v0 + 192) = v7;
      v9 = swift_task_alloc();
      *(v0 + 512) = v9;
      *v9 = v0;
      v9[1] = sub_237D436D0;
      v10 = *(v0 + 312);
      v11 = v0 + 16;
      v12 = v0 + 160;
LABEL_4:

      return sub_237D43A10(v11, v12, v10);
    }

    v22 = *(v0 + 304);
    v22[1] = 0u;
    v22[2] = 0u;
    *v22 = 0u;
    OUTLINED_FUNCTION_12_28();

    OUTLINED_FUNCTION_3_0();

    return v23();
  }

  else
  {
    (*(*(v0 + 368) + 32))(*(v0 + 376), v1, v2);
    v14 = *(v4 + 120);
    if (v14)
    {
      v15 = *(v4 + 112);
      v16 = *(v0 + 376);
      if (*v16 != v15 || v14 != v16[1])
      {
        v25 = *(v4 + 128);
        v18 = *(v4 + 144);
        if ((sub_237EF9D40() & 1) == 0)
        {
          *(v0 + 240) = v15;
          *(v0 + 248) = v14;
          *(v0 + 256) = v25;
          *(v0 + 272) = v18;
          v24 = swift_task_alloc();
          *(v0 + 400) = v24;
          *v24 = v0;
          v24[1] = sub_237D42EB0;
          v10 = *(v0 + 312);
          v11 = v0 + 112;
          v12 = v0 + 240;
          goto LABEL_4;
        }
      }
    }

    v19 = swift_task_alloc();
    *(v0 + 472) = v19;
    *v19 = v0;
    v19[1] = sub_237D43320;
    v20 = *(v0 + 376);
    v21 = *(v0 + 312);

    return sub_237D42780(v20, v21);
  }
}

uint64_t sub_237D42EB0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_237D42F94()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 128);
  *(v0 + 408) = *(v0 + 112);
  *(v0 + 424) = v1;
  *(v0 + 440) = *(v0 + 144);
  v2 = swift_task_alloc();
  *(v0 + 456) = v2;
  *v2 = v0;
  v2[1] = sub_237D43034;

  return sub_237D4267C();
}

uint64_t sub_237D43034()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  *(v2 + 464) = v5;
  *v5 = v4;
  v5[1] = sub_237D43198;
  v6 = *(v1 + 312);
  v7 = *(v1 + 376);

  return sub_237D42780(v7, v6);
}

uint64_t sub_237D43198()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_237D4327C()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 304);
  v6 = *(v0 + 424);
  v7 = *(v0 + 408);
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 336));
  *v3 = v7;
  *(v3 + 16) = v6;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  OUTLINED_FUNCTION_12_28();

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237D43320()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_237D43404()
{
  v1 = *(*(v0 + 320) + 104);
  *(v0 + 480) = v1;
  return OUTLINED_FUNCTION_0_3(sub_237D43424, v1);
}

uint64_t sub_237D43424()
{
  v1 = v0[60];
  v0[61] = *(v1 + 144);
  v0[62] = *(v1 + 128);
  return OUTLINED_FUNCTION_0_3(sub_237D43450, 0);
}

uint64_t sub_237D43450()
{
  OUTLINED_FUNCTION_2_0();
  if (v0[61] == v0[62])
  {
    v4 = v0[40];
    v5 = v4[12];
    v6 = v4[1];
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v9 = *v4;
      if (v9 != -1)
      {
        v10 = v8;
        if (v9)
        {
          v10 = v8 % v9;
        }

        if (v10)
        {
          goto LABEL_7;
        }
      }

      if (v5 >= v8)
      {
        v20 = v0[60];
        v21 = v0[47];
        v23 = *v21;
        v22 = v21[1];
        v24 = v21[4];
        v0[25] = v23;
        v0[26] = v22;
        v0[27] = v8;
        v0[28] = v5;
        v0[29] = v24;
        sub_237EF8260();
        v1 = sub_237D435AC;
        v2 = v20;
        v3 = 0;

        return MEMORY[0x2822009F8](v1, v2, v3);
      }
    }

    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

LABEL_7:
  (*(v0[46] + 8))(v0[47], v0[42]);
  v11 = v0[40];
  v12 = *(v11 + 88);
  v0[35] = *(v11 + 80);
  v0[36] = v12;

  v13 = swift_task_alloc();
  v0[48] = v13;
  v14 = OUTLINED_FUNCTION_34_0();
  type metadata accessor for AnyTemporalIterator(v14, v15, v16, v17);
  *v13 = v0;
  v18 = OUTLINED_FUNCTION_3_46();

  return AnyTemporalIterator.next()(v18);
}

uint64_t sub_237D435AC()
{
  OUTLINED_FUNCTION_2_0();
  sub_237D44010();
  *(v0 + 504) = v1;
  v2 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_237D4360C()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 304);
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 336));
  *(v0 + 296) = v1;
  OUTLINED_FUNCTION_34_0();
  v3 = sub_237EF8A60();
  TemporalFeature.init(id:feature:)(v0 + 200, v0 + 296, v3, v0 + 64, v4);
  v5 = *(v0 + 72);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 80);
  *v2 = *(v0 + 64);
  *(v2 + 8) = v5;
  *(v2 + 16) = v8;
  *(v2 + 32) = v6;
  *(v2 + 40) = v7;
  OUTLINED_FUNCTION_12_28();

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t sub_237D436D0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_237D437B4()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 32);
  *(v0 + 520) = *(v0 + 16);
  *(v0 + 536) = v1;
  *(v0 + 552) = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 568) = v2;
  *v2 = v0;
  v2[1] = sub_237D43854;

  return sub_237D4267C();
}

uint64_t sub_237D43854()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_237D43938()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 304);
  v2 = *(v0 + 536);
  v3 = *(v0 + 552);
  *v1 = *(v0 + 520);
  v1[1] = v2;
  v1[2] = v3;
  OUTLINED_FUNCTION_12_28();

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237D439B0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_12_28();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237D43A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 120) = a3;
  *(v4 + 128) = v3;
  *(v4 + 112) = a1;
  *(v4 + 136) = *a2;
  *(v4 + 152) = *(a2 + 32);
  return OUTLINED_FUNCTION_0_3(sub_237D43A40, 0);
}

uint64_t sub_237D43A40()
{
  OUTLINED_FUNCTION_2_0();
  v4 = v0[16];
  v5 = v4[12];
  v6 = v4[1];
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v8 < 0 != v7)
  {
    if (v5 > 0)
    {
      v9 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if (v7)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v10 = *v4;
    if (!*v4)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v8 == 0x8000000000000000 && v10 == -1)
    {
      goto LABEL_26;
    }

    v12 = v8 / v10;
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_24;
    }

    v9 = v13 * v10;
    if ((v13 * v10) >> 64 != (v13 * v10) >> 63)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return MEMORY[0x2822009F8](v1, v2, v3);
    }

    if (v9 < v5)
    {
LABEL_14:
      v1 = v0[18];
      v14 = v0[19];
      v0[8] = v0[17];
      v0[9] = v1;
      v0[10] = v9;
      v0[11] = v5;
      v0[12] = v14;
      v7 = __OFSUB__(v5, v9);
      v15 = v5 - v9;
      if (!v7)
      {
        v0[20] = v15;
        v16 = v4[13];
        v0[21] = v16;
        sub_237EF8260();
        v1 = sub_237D43B84;
        v2 = v16;
        v3 = 0;

        return MEMORY[0x2822009F8](v1, v2, v3);
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  v17 = v0[14];
  v17[1] = 0u;
  v17[2] = 0u;
  *v17 = 0u;
  OUTLINED_FUNCTION_3_0();

  return v18();
}

uint64_t sub_237D43B84()
{
  OUTLINED_FUNCTION_2_0();
  sub_237D442A0(*(v0 + 160));
  *(v0 + 176) = v1;
  v2 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_237D43BE4()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 112);
  *(v0 + 104) = *(v0 + 176);
  v2 = sub_237EF8A60();
  TemporalFeature.init(id:feature:)(v0 + 64, v0 + 104, v2, v0 + 16, v3);
  v4 = *(v0 + 24);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v4;
  *(v1 + 16) = v7;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  OUTLINED_FUNCTION_3_0();

  return v8();
}

uint64_t *sub_237D43C7C(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[14] = sub_237EF8110();
  v3 = sub_237EF8110();
  v1[17] = 0;
  v1[18] = 0;
  v1[15] = v3;
  v1[16] = a1;
  return v1;
}

uint64_t sub_237D43CF8()
{
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  OUTLINED_FUNCTION_11_28(v0 + 112, v2);
  sub_237EF8A60();
  sub_237EF8A50();
  swift_endAccess();
  OUTLINED_FUNCTION_11_28(v0 + 120, v2);
  sub_237EF8A50();
  return swift_endAccess();
}

uint64_t sub_237D43D98(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  v9 = MEMORY[0x28223BE20](v7);
  if (v1[18] == v1[16])
  {
    v10 = v1[17];
    OUTLINED_FUNCTION_11_28((v1 + 14), v27);
    OUTLINED_FUNCTION_43_3();
    sub_237EF8A60();
    sub_237EF8990();
    v11 = v1[14];
    sub_237D44944(v10, v2[14], v4);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v13 = v11 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v13 = v11;
    }

    (*(v6 + 24))(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, a1, v4);
    result = swift_endAccess();
    v15 = v2[17];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (!v16)
    {
      v18 = v2[16];
      if (v18)
      {
        if (v17 != 0x8000000000000000 || v18 != -1)
        {
          v2[17] = v17 % v18;
          return result;
        }

        goto LABEL_27;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  (*(v6 + 16))(&v27[-v8 - 8], a1, v4, v9);
  OUTLINED_FUNCTION_11_28((v1 + 14), v27);
  OUTLINED_FUNCTION_43_3();
  sub_237EF8A60();
  sub_237EF8A20();
  result = swift_endAccess();
  v20 = v1[18];
  v16 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v16)
  {
    goto LABEL_23;
  }

  v1[18] = v21;
  v22 = v1[17];
  v16 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = v1[16];
  if (!v24)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  if (v23 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_28;
  }

  v1[17] = v23 % v24;
  if (v21 == v24)
  {
    swift_beginAccess();
    v26 = v1[15];
    OUTLINED_FUNCTION_1_24();
    swift_getWitnessTable();
    result = sub_237EF8EC0();
    if (result)
    {
      v1[15] = v1[14];
      sub_237EF8260();
    }
  }

  return result;
}

void sub_237D44010()
{
  v1 = v0[18];
  if (v1 != v0[16])
  {
    swift_beginAccess();
    goto LABEL_8;
  }

  v2 = v0[17];
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v1 - v2 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  swift_beginAccess();
  v14 = v0[14];
  v13[0] = v2;
  sub_237EF8A60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8, &qword_237F09CD0);
  swift_getWitnessTable();
  sub_237D44998();
  sub_237EF8490();
  OUTLINED_FUNCTION_11_28((v0 + 15), v13);
  sub_237EF8AB0();
  swift_endAccess();
  v3 = v0[16];
  v4 = v0[17];
  v5 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_237EF8260();
    v6 = sub_237EF8AA0();
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13[3] = v6;
    v13[4] = v8;
    v13[5] = v10;
    v13[6] = v12;
    v14 = v5;
    OUTLINED_FUNCTION_11_28((v0 + 15), v13);
    sub_237EF84A0();
    swift_endAccess();
LABEL_8:
    sub_237EF8260();
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_237D44248(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_237D442A0(uint64_t a1)
{
  sub_237D44010();
  v3 = *(v1 + 144);
  if (v3 == *(v1 + 128))
  {
    if (__OFSUB__(v3, a1))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_43_3();
      sub_237EF8A60();
      OUTLINED_FUNCTION_1_24();
      swift_getWitnessTable();
      sub_237EF8EE0();
      OUTLINED_FUNCTION_43_3();
      sub_237EF9240();
      swift_getWitnessTable();
      sub_237EF8A90();
    }
  }
}

uint64_t sub_237D44394()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return SlidingWindowTransformer.WindowSequence.Iterator.next()();
}

uint64_t sub_237D4443C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_237D44510;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_237D44510()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t sub_237D44608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D4465C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D446A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_237D446E0(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_237D4474C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_237D44824(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237D44944(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_237D44998()
{
  result = qword_27DEB1518[0];
  if (!qword_27DEB1518[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAF7F8, &qword_237F09CD0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB1518);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_28(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_28()
{
}

void sub_237D44A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76_2();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_19_0();
  v29 = v28;
  OUTLINED_FUNCTION_22_3();
  (*(v30 + 32))(v29);
  a9 = v22;
  a10 = v21;
  a11 = v20;
  a12 = v27;
  v31 = type metadata accessor for ComposedSupervisedTemporalEstimator(0, &a9);
  (*(*(v21 - 8) + 32))(v29 + *(v31 + 52), v23, v21);
  OUTLINED_FUNCTION_75_2();
}

void sub_237D44B20()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = type metadata accessor for TemporalTransformerToEstimatorAdaptor(0, v4, v0, v4);
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - v18;
  OUTLINED_FUNCTION_22_3();
  (*(v20 + 32))(v13, v11, v7);
  TemporalTransformer.adaptedAsEstimator()(v5, v1);
  OUTLINED_FUNCTION_22_3();
  (*(v21 + 8))(v9, v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_37();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = v14;
  v30 = AssociatedTypeWitness;
  v31 = WitnessTable;
  v32 = AssociatedConformanceWitness;
  v25 = type metadata accessor for TemporalEstimatorToSupervisedAdaptor(255, &v29);
  OUTLINED_FUNCTION_0_39();
  v26 = swift_getWitnessTable();
  v29 = v7;
  v30 = v25;
  v31 = v3;
  v32 = v26;
  v27 = OUTLINED_FUNCTION_30_4();
  type metadata accessor for ComposedSupervisedTemporalEstimator(v27, v28);
  OUTLINED_FUNCTION_31_0();
  TemporalEstimator.adaptedAsSupervised<A>(annotationType:)();
  (*(v16 + 8))(v19, v14);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237D44D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  TemporalEstimatorToSupervisedAdaptor.init(_:)(a1, a4, a6);
  v12 = OUTLINED_FUNCTION_20_3();
  v14 = type metadata accessor for TemporalEstimatorToSupervisedAdaptor(v12, v13);
  OUTLINED_FUNCTION_0_39();
  v17[0] = v14;
  v17[1] = a3;
  v17[2] = swift_getWitnessTable();
  v17[3] = a5;
  v15 = type metadata accessor for ComposedSupervisedTemporalEstimator(0, v17);
  return (*(*(a3 - 8) + 32))(a6 + *(v15 + 52), a2, a3);
}

uint64_t sub_237D44E40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  (*(v10 + 32))(a5);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_81_1();
  swift_getAssociatedConformanceWitness();
  v11 = OUTLINED_FUNCTION_20_3();
  v13 = type metadata accessor for TemporalEstimatorToSupervisedAdaptor(v11, v12);
  OUTLINED_FUNCTION_0_39();
  v16[0] = a2;
  v16[1] = v13;
  v16[2] = a4;
  v16[3] = swift_getWitnessTable();
  v14 = type metadata accessor for ComposedSupervisedTemporalEstimator(0, v16);
  return TemporalEstimatorToSupervisedAdaptor.init(_:)(a1, a3, a5 + *(v14 + 52));
}

uint64_t sub_237D44F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10[12] = a9;
  v10[13] = v9;
  v10[10] = a7;
  v10[11] = a8;
  v10[8] = a5;
  v10[9] = a6;
  v10[6] = a3;
  v10[7] = a4;
  v10[4] = a1;
  v10[5] = a2;
  v10[14] = a5[5];
  v10[15] = a5[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[16] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v10[17] = v17;
  v10[18] = swift_task_alloc();
  v10[19] = swift_task_alloc();
  v18 = a5[4];
  v19 = a5[2];
  OUTLINED_FUNCTION_65_2();
  v20 = swift_getAssociatedTypeWitness();
  v10[20] = v20;
  OUTLINED_FUNCTION_1_1();
  v10[21] = v21;
  v10[22] = OUTLINED_FUNCTION_27_0();
  swift_getAssociatedTypeWitness();
  v10[23] = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedTypeWitness();
  v10[24] = v22;
  OUTLINED_FUNCTION_42();
  v27 = type metadata accessor for AnnotatedFeature(v23, v24, v25, v26);
  v10[25] = v27;
  OUTLINED_FUNCTION_18(v27);
  v10[26] = OUTLINED_FUNCTION_27_0();
  v10[27] = *(v22 - 8);
  v10[28] = swift_task_alloc();
  v10[29] = swift_task_alloc();
  v10[30] = type metadata accessor for AnnotatedFeature(0, a7, v20, v28);
  OUTLINED_FUNCTION_1_1();
  v10[31] = v29;
  v10[32] = OUTLINED_FUNCTION_27_0();
  v30 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v30);
  v10[33] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v10[34] = v31;
  v10[35] = OUTLINED_FUNCTION_27_0();
  v32 = swift_getAssociatedTypeWitness();
  v10[36] = v32;
  OUTLINED_FUNCTION_6_1(v32);
  v10[37] = v33;
  v10[38] = OUTLINED_FUNCTION_27_0();
  v34 = swift_checkMetadataState();
  v10[39] = v34;
  OUTLINED_FUNCTION_6_1(v34);
  v10[40] = v35;
  v10[41] = swift_task_alloc();
  v36 = swift_task_alloc();
  v10[42] = v36;
  OUTLINED_FUNCTION_15_0();
  v41 = (v37 + *v37);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v10[43] = v38;
  *v38 = v39;
  v38[1] = sub_237D45440;

  return v41(v36, a2, a3, a4, a6, a7, a8, a9, v19, v18);
}

uint64_t sub_237D45440()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 352) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_237D45540(uint64_t a1)
{
  v2 = v1[44];
  sub_237EF8B90();
  if (v2)
  {
    (*(v1[40] + 8))(v1[42], v1[39]);
    OUTLINED_FUNCTION_14_28();
    OUTLINED_FUNCTION_74_1();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_54_3();

    __asm { BRAA            X1, X16 }
  }

  v5 = sub_237EF8110();
  v6 = OUTLINED_FUNCTION_59_4(v5);
  v7(v6);
  OUTLINED_FUNCTION_48();
  v8 = v1[33];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  OUTLINED_FUNCTION_46_5(v8);
  if (!v9)
  {
    v10 = OUTLINED_FUNCTION_56_6();
    v11(v10);
    OUTLINED_FUNCTION_15_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v1[45] = v12;
    *v12 = v13;
    OUTLINED_FUNCTION_21_21(v12);
    OUTLINED_FUNCTION_54_3();

    __asm { BRAA            X8, X16 }
  }

  (*(v1[37] + 8))(v1[38], v1[36]);
  sub_237EF8B90();
  v16 = v1[2];
  v1[3] = v16;
  v1[47] = v16;
  OUTLINED_FUNCTION_15_0();
  v17 = swift_task_alloc();
  v1[48] = v17;
  OUTLINED_FUNCTION_23_8();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  *v17 = v1;
  OUTLINED_FUNCTION_20_18();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237D458F8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 368) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_237D459F8()
{
  v1 = v0[27];
  v23 = v0[29];
  v2 = v0[24];
  (*(v1 + 16))(v0[28]);
  v3 = OUTLINED_FUNCTION_27_16();
  v4(v3);
  OUTLINED_FUNCTION_35_7();
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v1 + 8))(v23, v2);
  v5 = OUTLINED_FUNCTION_81_1();
  v6(v5);
  v7 = v0[46];
  v8 = v0[33];
  v9 = v0[30];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    (*(v0[37] + 8))(v0[38], v0[36]);
    sub_237EF8B90();
    if (v7)
    {

      v10 = OUTLINED_FUNCTION_31_0();
      v11(v10);
      OUTLINED_FUNCTION_14_28();
      OUTLINED_FUNCTION_74_1();

      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_54_3();

      __asm { BRAA            X1, X16 }
    }

    v20 = v0[2];
    v0[3] = v20;
    v0[47] = v20;
    OUTLINED_FUNCTION_15_0();
    v21 = swift_task_alloc();
    v0[48] = v21;
    OUTLINED_FUNCTION_23_8();
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    swift_getAssociatedConformanceWitness();
    *v21 = v0;
    OUTLINED_FUNCTION_20_18();

    __asm { BRAA            X8, X16 }
  }

  v14 = OUTLINED_FUNCTION_56_6();
  v15(v14);
  OUTLINED_FUNCTION_15_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[45] = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_21_21(v16);
  OUTLINED_FUNCTION_54_3();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237D45E04()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 392) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D45F0C()
{
  v1 = v0[39];
  v12 = v0[23];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  (*(v0[40] + 32))(v0[41]);
  (*(v4 + 32))(v3, v2, v5);
  swift_getAssociatedConformanceWitness();
  v6 = OUTLINED_FUNCTION_81_1();
  ComposedTemporalTransformer.init(_:_:)(v6, v7, v1, v5, v12, v8, v9);

  OUTLINED_FUNCTION_3_0();

  return v10();
}

uint64_t sub_237D46098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_45_4();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237D46164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  (*(v14[31] + 8))(v14[32], v14[30]);
  v15 = OUTLINED_FUNCTION_52_6();
  v16(v15);
  v17 = OUTLINED_FUNCTION_31_0();
  v18(v17);
  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_45_4();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237D4627C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  (*(v14[40] + 8))(v14[42], v14[39]);
  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_45_4();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237D46360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[17] = a10;
  v11[18] = v10;
  v11[15] = v47;
  v11[16] = a9;
  v11[13] = a8;
  v11[14] = v46;
  v11[11] = a6;
  v11[12] = a7;
  v11[9] = a4;
  v11[10] = a5;
  v11[7] = a2;
  v11[8] = a3;
  v11[6] = a1;
  v11[19] = a6[5];
  v11[20] = a6[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[21] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v11[22] = v15;
  v11[23] = swift_task_alloc();
  v11[24] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v11[25] = v16;
  v11[26] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_65_2();
  v17 = swift_getAssociatedTypeWitness();
  v11[27] = v17;
  OUTLINED_FUNCTION_6_1(v17);
  v11[28] = v18;
  v11[29] = OUTLINED_FUNCTION_27_0();
  v19 = a6[4];
  v20 = a6[2];
  OUTLINED_FUNCTION_65_2();
  v21 = swift_getAssociatedTypeWitness();
  v11[30] = v21;
  OUTLINED_FUNCTION_1_1();
  v11[31] = v22;
  v11[32] = OUTLINED_FUNCTION_27_0();
  swift_getAssociatedTypeWitness();
  v11[33] = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedTypeWitness();
  v11[34] = v23;
  v24 = OUTLINED_FUNCTION_23_8();
  v27 = type metadata accessor for AnnotatedFeature(v24, v25, v21, v26);
  v11[35] = v27;
  OUTLINED_FUNCTION_18(v27);
  v11[36] = OUTLINED_FUNCTION_27_0();
  v11[37] = *(v23 - 8);
  v11[38] = swift_task_alloc();
  v11[39] = swift_task_alloc();
  v11[40] = swift_task_alloc();
  v11[41] = type metadata accessor for AnnotatedFeature(0, v46, v21, v28);
  OUTLINED_FUNCTION_1_1();
  v11[42] = v29;
  v11[43] = swift_task_alloc();
  v11[44] = swift_task_alloc();
  OUTLINED_FUNCTION_23_8();
  v30 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v30);
  v11[45] = swift_task_alloc();
  v11[46] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v11[47] = v31;
  v11[48] = OUTLINED_FUNCTION_27_0();
  v32 = swift_getAssociatedTypeWitness();
  v11[49] = v32;
  OUTLINED_FUNCTION_6_1(v32);
  v11[50] = v33;
  v11[51] = OUTLINED_FUNCTION_27_0();
  v34 = swift_checkMetadataState();
  v11[52] = v34;
  OUTLINED_FUNCTION_6_1(v34);
  v11[53] = v35;
  v11[54] = swift_task_alloc();
  v36 = swift_task_alloc();
  v11[55] = v36;
  OUTLINED_FUNCTION_15_0();
  v41 = (v37 + *v37);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v11[56] = v38;
  *v38 = v39;
  v38[1] = sub_237D46920;

  return v41(v36, a2, a4, a5, a7, v46, v47, a10, v20, v19);
}

uint64_t sub_237D46920()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 456) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237D46A20()
{
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_40_8();
  v1 = v0[57];
  sub_237EF8B90();
  if (v1)
  {
    (*(v0[53] + 8))(v0[55], v0[52]);
    OUTLINED_FUNCTION_11_29();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_39_7();

    return v2();
  }

  else
  {
    v5 = sub_237EF8110();
    v6 = OUTLINED_FUNCTION_59_4(v5);
    v7(v6);
    OUTLINED_FUNCTION_48();
    v8 = v0[46];
    swift_getAssociatedConformanceWitness();
    sub_237EF91A0();
    OUTLINED_FUNCTION_46_5(v8);
    if (v9)
    {
      v10 = OUTLINED_FUNCTION_69_3();
      (*(v11 + 8))(v10);
      v0[3] = sub_237EF8110();
      OUTLINED_FUNCTION_89_0();
      v12();
      sub_237EF86F0();
      v13 = v0[45];
      v14 = v0[41];
      v15 = v0[27];
      swift_getAssociatedConformanceWitness();
      sub_237EF91A0();
      if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
      {
        v16 = OUTLINED_FUNCTION_53_5();
        v17(v16);
        sub_237EF8B90();
        OUTLINED_FUNCTION_8_38();
        v44 = swift_task_alloc();
        OUTLINED_FUNCTION_44_6(v44);
        OUTLINED_FUNCTION_1_2();
        swift_getWitnessTable();
        v45 = OUTLINED_FUNCTION_60_5();
        *v15 = v0;
        OUTLINED_FUNCTION_6_31(v45);
        OUTLINED_FUNCTION_81();

        __asm { BRAA            X8, X16 }
      }

      v30 = OUTLINED_FUNCTION_19_23();
      v32 = v31(v30);
      OUTLINED_FUNCTION_12_29(v32, v33, v34, v35, v36, v37, v38, v39, v48, v49, v50, v51, v52, v53, v54, v55, 0);
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      v0[60] = v40;
      *v40 = v41;
      OUTLINED_FUNCTION_9_28(v40);
    }

    else
    {
      v18 = OUTLINED_FUNCTION_48_6();
      v20 = v19(v18);
      OUTLINED_FUNCTION_12_29(v20, v21, v22, v23, v24, v25, v26, v27, v48, v49, v50, v51, v52, v53, v54, v55, 0);
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      v0[58] = v28;
      *v28 = v29;
      OUTLINED_FUNCTION_25_15(v28);
    }

    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_39_7();

    return v42();
  }
}

uint64_t sub_237D46F10()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 472) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D47010()
{
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_40_8();
  v3 = OUTLINED_FUNCTION_32_11();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_16();
  v6(v5);
  OUTLINED_FUNCTION_35_7();
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v0 + 8))(v63, v2);
  v7 = OUTLINED_FUNCTION_81_1();
  v8(v7);
  v9 = v1[59];
  v10 = v1[49];
  v11 = v1[46];
  v12 = v1[41];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    v25 = OUTLINED_FUNCTION_48_6();
    v27 = v26(v25);
    OUTLINED_FUNCTION_12_29(v27, v28, v29, v30, v31, v32, v33, v34, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v1[58] = v35;
    *v35 = v36;
    OUTLINED_FUNCTION_25_15(v35);
    goto LABEL_9;
  }

  v13 = OUTLINED_FUNCTION_69_3();
  v14 = v1[26];
  (*(v15 + 8))(v13);
  v1[3] = sub_237EF8110();
  OUTLINED_FUNCTION_42();
  v16();
  sub_237EF86F0();
  OUTLINED_FUNCTION_50_6();
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  OUTLINED_FUNCTION_46_5(v10);
  if (!v17)
  {
    v37 = OUTLINED_FUNCTION_19_23();
    v39 = v38(v37);
    OUTLINED_FUNCTION_12_29(v39, v40, v41, v42, v43, v44, v45, v46, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v1[60] = v47;
    *v47 = v48;
    OUTLINED_FUNCTION_9_28(v47);
LABEL_9:
    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_39_7();

    return v49();
  }

  v18 = OUTLINED_FUNCTION_53_5();
  v19(v18);
  sub_237EF8B90();
  if (!v9)
  {
    OUTLINED_FUNCTION_8_38();
    v51 = swift_task_alloc();
    OUTLINED_FUNCTION_44_6(v51);
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    v52 = OUTLINED_FUNCTION_60_5();
    *v14 = v1;
    OUTLINED_FUNCTION_6_31(v52);
    OUTLINED_FUNCTION_81();

    __asm { BRAA            X8, X16 }
  }

  v20 = OUTLINED_FUNCTION_31_0();
  v21(v20);
  OUTLINED_FUNCTION_11_29();
  OUTLINED_FUNCTION_33_10();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_39_7();

  return v22();
}

uint64_t sub_237D474D8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D475E0()
{
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_40_8();
  v3 = v1[43];
  v4 = OUTLINED_FUNCTION_32_11();
  v5(v4);
  v6 = OUTLINED_FUNCTION_27_16();
  v7(v6);
  OUTLINED_FUNCTION_35_7();
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v0 + 8))(v45, v2);
  v8 = OUTLINED_FUNCTION_81_1();
  v9(v8);
  v10 = v1[61];
  OUTLINED_FUNCTION_50_6();
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  OUTLINED_FUNCTION_46_5(v0 + 8);
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_53_5();
    v13(v12);
    sub_237EF8B90();
    if (!v10)
    {
      OUTLINED_FUNCTION_8_38();
      v33 = swift_task_alloc();
      OUTLINED_FUNCTION_44_6(v33);
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      v34 = OUTLINED_FUNCTION_60_5();
      *v3 = v1;
      OUTLINED_FUNCTION_6_31(v34);
      OUTLINED_FUNCTION_81();

      __asm { BRAA            X8, X16 }
    }

    v14 = OUTLINED_FUNCTION_31_0();
    v15(v14);
    OUTLINED_FUNCTION_11_29();
    OUTLINED_FUNCTION_33_10();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_39_7();

    return v16();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_19_23();
    v21 = v20(v19);
    OUTLINED_FUNCTION_12_29(v21, v22, v23, v24, v25, v26, v27, v28, v37, v38, v39, v40, v41, v42, v43, v44, v45);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v1[60] = v29;
    *v29 = v30;
    OUTLINED_FUNCTION_9_28(v29);
    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_39_7();

    return v31();
  }
}

uint64_t sub_237D47960()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 520) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D47A78()
{
  v1 = v0[54];
  v2 = v0[52];
  v11 = v0[33];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[6];
  (*(v0[53] + 32))(v1);
  (*(v5 + 32))(v4, v3, v6);
  OUTLINED_FUNCTION_42();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ComposedTemporalTransformer.init(_:_:)(v1, v4, v2, v6, v11, AssociatedConformanceWitness, v7);

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t sub_237D47C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_4_39();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_81();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_237D47D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_40_8();
  (*(v20[42] + 8))(v20[44], v20[41]);
  v21 = OUTLINED_FUNCTION_52_6();
  v22(v21);
  v23 = OUTLINED_FUNCTION_31_0();
  v24(v23);
  OUTLINED_FUNCTION_4_39();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_81();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_237D47E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_40_8();
  (*(v20[42] + 8))(v20[43], v20[41]);
  v21 = OUTLINED_FUNCTION_52_6();
  v22(v21);
  v23 = OUTLINED_FUNCTION_31_0();
  v24(v23);
  OUTLINED_FUNCTION_4_39();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_81();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_237D47F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_40_8();
  (*(v20[53] + 8))(v20[55], v20[52]);
  OUTLINED_FUNCTION_4_39();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_81();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_237D4808C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a3 + 32) + 56))(a1, a2, *(a3 + 16), *(a3 + 32));
  if (!v3)
  {
    v12[5] = *(a3 + 52);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(a3 + 40);
    v11 = *(a3 + 24);
    v12[0] = AssociatedTypeWitness;
    v12[1] = swift_getAssociatedTypeWitness();
    v12[2] = swift_getAssociatedConformanceWitness();
    v12[3] = swift_getAssociatedConformanceWitness();
    v10 = type metadata accessor for ComposedTemporalTransformer(0, v12);
    return (*(v9 + 56))(a1 + *(v10 + 52), a2, v11, v9);
  }

  return result;
}

uint64_t sub_237D481F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = a2[3];
  v38 = a2[5];
  v40 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v33 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v31 - v11;
  v12 = a2[4];
  v13 = a2[2];
  OUTLINED_FUNCTION_65_2();
  v14 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v36 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v31 - v21;
  v23 = *(v12 + 64);
  v37 = a1;
  v24 = v41;
  result = v23(a1, v13, v12, v20);
  if (!v24)
  {
    v31 = v13;
    v32 = v18;
    v41 = v14;
    v26 = AssociatedTypeWitness;
    (*(v38 + 64))(v37, v40, v38);
    v27 = v32;
    v28 = v41;
    (*(v36 + 32))(v32, v22, v41);
    (*(v33 + 32))(v9, v39, v26);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v30 = swift_getAssociatedConformanceWitness();
    return ComposedTemporalTransformer.init(_:_:)(v27, v9, v28, v26, AssociatedConformanceWitness, v30, v34);
  }

  return result;
}

uint64_t sub_237D484F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_237C6B728;

  return sub_237D44F60(a1, a2, a3, a4, a9, a5, a6, a7, a8);
}

uint64_t sub_237D485F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v16 = swift_task_alloc();
  *(v10 + 16) = v16;
  *v16 = v10;
  v16[1] = sub_237C6A904;

  return sub_237D46360(a1, a2, a3, a4, a5, a10, a6, a7, a8, v22);
}

void Estimator.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v42 = v4;
  v6 = v5;
  v8 = v7;
  v46 = v9;
  v47 = v10;
  OUTLINED_FUNCTION_1_1();
  v44 = v0;
  v45 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v43 = v14 - v13;
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v18 = OUTLINED_FUNCTION_51_5();
  v21 = type metadata accessor for EstimatorToTemporalAdaptor(v18, v19, v20, v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - v23;
  v40 = v6;
  v41 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_30_16();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = v21;
  v49 = AssociatedTypeWitness;
  v50 = WitnessTable;
  v51 = AssociatedConformanceWitness;
  v28 = OUTLINED_FUNCTION_30_4();
  v30 = type metadata accessor for TemporalEstimatorToSupervisedAdaptor(v28, v29);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v40 - v33;
  (*(v16 + 16))(v1, v44, v8, v32);
  EstimatorToTemporalAdaptor.init(_:)(v1, v8, v24);
  TemporalEstimatorToSupervisedAdaptor.init(_:)(v24, v21, v34);
  v35 = v43;
  v36 = v40;
  (*(v45 + 16))(v43, v46, v40);
  OUTLINED_FUNCTION_0_39();
  v37 = swift_getWitnessTable();
  sub_237D44A70(v34, v35, v30, v36, v37, v41, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  (*(v17 + 16))(v16 - v15, v18, v5);
  (*(v9 + 16))(v13, v7, v3);
  v19 = OUTLINED_FUNCTION_88_1();
  sub_237E069C4(v19, v20, v3, v5, v1, v21);
  OUTLINED_FUNCTION_38_0();
}

void SupervisedEstimator.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v47 = v0;
  v48 = v1;
  v49 = v2;
  v4 = v3;
  v51 = v5;
  v52 = v6;
  v8 = type metadata accessor for TemporalTransformerToEstimatorAdaptor(0, v1, v2, v7);
  OUTLINED_FUNCTION_1_1();
  v50 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_37();
  WitnessTable = swift_getWitnessTable();
  v45 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = v8;
  v54 = AssociatedTypeWitness;
  v55 = WitnessTable;
  v56 = AssociatedConformanceWitness;
  v15 = OUTLINED_FUNCTION_30_4();
  v46 = type metadata accessor for TemporalEstimatorToSupervisedAdaptor(v15, v16);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  OUTLINED_FUNCTION_1_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  OUTLINED_FUNCTION_89_0();
  v30 = type metadata accessor for SupervisedEstimatorToTemporalAdaptor(v26, v27, v28, v29);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v43 - v33;
  (*(v21 + 16))(v25, v47, v4, v32);
  OUTLINED_FUNCTION_89_0();
  SupervisedEstimatorToTemporalAdaptor.init(_:)(v37, v35, v36);
  TemporalTransformer.adaptedAsEstimator()(v48, v49);
  TemporalEstimator.adaptedAsSupervised<A>(annotationType:)();
  (*(v50 + 8))(v12, v8);
  OUTLINED_FUNCTION_1_45();
  v38 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_39();
  v39 = v46;
  v40 = swift_getWitnessTable();
  sub_237D44A70(v34, v19, v30, v39, v38, v40, v41, v42, v43, AssociatedConformanceWitness, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v41 = v0;
  v42 = v1;
  v3 = v2;
  v38 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v43 = v10;
  OUTLINED_FUNCTION_1_1();
  v40 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v39 = v14 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_81_1();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = v7;
  v45 = AssociatedTypeWitness;
  v46 = v3;
  v47 = AssociatedConformanceWitness;
  v16 = OUTLINED_FUNCTION_30_4();
  v18 = type metadata accessor for TemporalEstimatorToSupervisedAdaptor(v16, v17);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  OUTLINED_FUNCTION_1_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v29 = type metadata accessor for SupervisedEstimatorToTemporalAdaptor(0, v9, v5, v28);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_67_1();
  (*(v23 + 16))(v27, v41, v9);
  SupervisedEstimatorToTemporalAdaptor.init(_:)(&protocol requirements base descriptor for SupervisedEstimator, v27, v9);
  v31 = v39;
  (*(v40 + 16))(v39, v42, v7);
  TemporalEstimatorToSupervisedAdaptor.init(_:)(v31, v7, v21);
  OUTLINED_FUNCTION_1_45();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_39();
  v33 = swift_getWitnessTable();
  sub_237D44A70(&protocol requirements base descriptor for SupervisedEstimator, v21, v29, v18, WitnessTable, v33, v34, v35, v36, AssociatedConformanceWitness, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  OUTLINED_FUNCTION_38_0();
}

void TemporalEstimator.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v1;
  v26[0] = v5;
  v26[1] = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v15 = OUTLINED_FUNCTION_51_5();
  v19 = type metadata accessor for SupervisedEstimatorToTemporalAdaptor(v15, v16, v18, v17);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  v22 = v26 - v21;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_67_1();
  (*(v24 + 16))(v0, v3, v9);
  (*(v13 + 16))(v2, v11, v7);
  SupervisedEstimatorToTemporalAdaptor.init(_:)(v22, v2, v7);
  OUTLINED_FUNCTION_1_45();
  WitnessTable = swift_getWitnessTable();
  sub_237D44D14(v0, v22, v19, v9, WitnessTable, v26[0]);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  (*(v17 + 16))(v16 - v15, v18, v5);
  (*(v9 + 16))(v13, v7, v3);
  OUTLINED_FUNCTION_63_2();
  sub_237D44D14(v19, v20, v21, v22, v1, v23);
  OUTLINED_FUNCTION_38_0();
}

void sub_237D494B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_37_0();
  v48 = v23;
  v49 = v22;
  v46 = v24;
  v47 = v25;
  v26 = v21;
  v28 = v27;
  OUTLINED_FUNCTION_1_1();
  v45 = a21;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_67_1();
  v33 = v32(0, v30, v31);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v34);
  v36 = &v44 - v35;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5();
  v40 = v39 - v38;
  (*(v41 + 16))(v39 - v38, v26, v28);
  OUTLINED_FUNCTION_42();
  v42();
  OUTLINED_FUNCTION_89_0();
  v46();
  WitnessTable = swift_getWitnessTable();
  v45(v40, v36, v28, v33, v49, WitnessTable);
  OUTLINED_FUNCTION_38_0();
}

void SupervisedTemporalEstimator.appending<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_237D496D0();
}

{
  sub_237D496D0();
}

{
  sub_237D496D0();
}

void sub_237D496D0()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  v5 = v4;
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  (*(v15 + 16))(v14 - v13, v16, v1);
  (*(v7 + 16))(v11, v5, v0);
  OUTLINED_FUNCTION_64_2();
  v3();
  OUTLINED_FUNCTION_38_0();
}

void get_witness_table_18CreateMLComponents27SupervisedTemporalEstimatorRzAA0E0Rd__11Transformer_5InputQYd__AD_6OutputRTzr__lAA08ComposedcdE0VyxAA0de2ToC7AdaptorVyAA0ejdK0Vyqd__G10AnnotationQzGGAaBHPyHCTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76_2();
  a19 = v20;
  a20 = v21;
  v23 = *v22;
  v24 = v22[2];
  v26 = v25(255, v22[1], v22[3]);
  OUTLINED_FUNCTION_16_24();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_31_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a9 = v26;
  a10 = AssociatedTypeWitness;
  a11 = WitnessTable;
  a12 = AssociatedConformanceWitness;
  v30 = OUTLINED_FUNCTION_20_3();
  v32 = type metadata accessor for TemporalEstimatorToSupervisedAdaptor(v30, v31);
  OUTLINED_FUNCTION_0_39();
  v33 = swift_getWitnessTable();
  a9 = v23;
  a10 = v32;
  a11 = v24;
  a12 = v33;
  OUTLINED_FUNCTION_2_46(v33, &a9);
  OUTLINED_FUNCTION_75_2();
}

uint64_t sub_237D49900(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}