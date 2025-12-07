uint64_t FeatureType.ShapedArrayParameters.init(dataType:shape:optional:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v7 = *a1;
  v8 = &a4[*(type metadata accessor for FeatureType.ShapedArrayParameters(0) + 20)];
  v9 = type metadata accessor for Proto_ArrayFeatureType(0);
  type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_23_17(&v8[*(v9 + 28)]);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v14 = *(a2 + 16);
  if (v14)
  {
    v23 = MEMORY[0x277D84F90];
    sub_2574845B8(0, v14, 0);
    v15 = v23;
    v16 = *(v23 + 16);
    v17 = 32;
    do
    {
      v18 = *(a2 + v17);
      v19 = *(v23 + 24);
      if (v16 >= v19 >> 1)
      {
        v20 = OUTLINED_FUNCTION_174(v19);
        sub_2574845B8(v20, v16 + 1, 1);
      }

      *(v23 + 16) = v16 + 1;
      *(v23 + 8 * v16 + 32) = v18;
      v17 += 8;
      ++v16;
      --v14;
    }

    while (v14);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v22 = qword_257771998[v7];
  *v8 = v15;
  *(v8 + 1) = v22;
  v8[16] = 1;
  *a4 = a3 & 1;
  return result;
}

uint64_t type metadata accessor for FeatureType.ShapedArrayParameters(uint64_t a1)
{
  result = qword_281538058;
  if (!qword_281538058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void FeatureType.ShapedArrayParameters.init(dataType:shapeFlexibility:optional:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  OUTLINED_FUNCTION_13(v30);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = *v27;
  v35 = *(v25 + 8);
  v36 = &v29[*(type metadata accessor for FeatureType.ShapedArrayParameters(0) + 20)];
  *v36 = MEMORY[0x277D84F90];
  v37 = type metadata accessor for Proto_ArrayFeatureType(0);
  v38 = *(v37 + 24);
  v39 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  OUTLINED_FUNCTION_23_17(&v36[*(v37 + 28)]);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  if (v35)
  {
    sub_2576A5D40();
  }

  else
  {
    sub_2576A5AB8();
  }

  swift_storeEnumTagMultiPayload();

  __swift_storeEnumTagSinglePayload(v33, 0, 1, v39);
  sub_257690A04(v33, &v36[v38]);
  *(v36 + 1) = qword_257771998[v34];
  v36[16] = 1;
  *v29 = v23 & 1;
  OUTLINED_FUNCTION_35();
}

uint64_t FeatureType.ShapedArrayParameters.shape.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeatureType.ShapedArrayParameters(0) + 20));
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    sub_257483724(0, v2, 0);
    result = v10;
    v4 = (v1 + 32);
    v5 = *(v10 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v11 = result;
      v8 = *(result + 24);
      if (v5 >= v8 >> 1)
      {
        v9 = OUTLINED_FUNCTION_174(v8);
        sub_257483724(v9, v5 + 1, 1);
        result = v11;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t FeatureType.ShapedArrayParameters.shape.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v13 = MEMORY[0x277D84F90];
    sub_2574845B8(0, v4, 0);
    v5 = v13;
    v6 = *(v13 + 16);
    v7 = 32;
    do
    {
      v8 = *(a1 + v7);
      v9 = *(v13 + 24);
      if (v6 >= v9 >> 1)
      {
        v10 = OUTLINED_FUNCTION_174(v9);
        sub_2574845B8(v10, v6 + 1, 1);
      }

      *(v13 + 16) = v6 + 1;
      *(v13 + 8 * v6 + 32) = v8;
      v7 += 8;
      ++v6;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v11 = *(type metadata accessor for FeatureType.ShapedArrayParameters(0) + 20);

  *(v2 + v11) = v5;
  return result;
}

uint64_t (*FeatureType.ShapedArrayParameters.shape.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = FeatureType.ShapedArrayParameters.shape.getter();
  return sub_2576A42E4;
}

uint64_t sub_2576A42E4(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return FeatureType.ShapedArrayParameters.shape.setter(*a1);
  }

  FeatureType.ShapedArrayParameters.shape.setter(v2);
}

uint64_t FeatureType.ShapedArrayParameters.dataType.getter()
{
  v2 = OUTLINED_FUNCTION_16_1();
  result = type metadata accessor for FeatureType.ShapedArrayParameters(v2);
  v4 = v1 + *(result + 20);
  v5 = *(v4 + 8);
  if (*(v4 + 16))
  {
    v6 = 0x203020102uLL >> (8 * v5);
  }

  else
  {
    switch(v5)
    {
      case 65552:
        LOBYTE(v6) = 0;
        break;
      case 131104:
        LOBYTE(v6) = 3;
        break;
      case 65600:
        goto LABEL_9;
      case 131072:
        LOBYTE(v6) = 4;
        break;
      default:
        if (v5 != 65568)
        {
LABEL_9:
          LOBYTE(v6) = 2;
        }

        else
        {
          LOBYTE(v6) = 1;
        }

        break;
    }
  }

  *v0 = v6;
  return result;
}

uint64_t sub_2576A43FC@<X0>(_BYTE *a1@<X8>)
{
  result = FeatureType.ShapedArrayParameters.dataType.getter();
  *a1 = v3;
  return result;
}

uint64_t FeatureType.ShapedArrayParameters.dataType.setter(char *a1)
{
  v2 = qword_257771998[*a1];
  result = type metadata accessor for FeatureType.ShapedArrayParameters(0);
  v4 = v1 + *(result + 20);
  *(v4 + 8) = v2;
  *(v4 + 16) = 1;
  return result;
}

uint64_t sub_2576A44B8@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v3 = 0x503020105uLL >> (8 * result);
  if (result == 65600)
  {
    v4 = 2;
  }

  else
  {
    v4 = 5;
  }

  if (result == 0x20000)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  if (result == 131104)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  if (result == 65568)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (result == 65552)
  {
    v7 = 0;
  }

  if ((a2 & 1) == 0)
  {
    LOBYTE(v3) = v7;
  }

  *a3 = v3;
  return result;
}

uint64_t (*FeatureType.ShapedArrayParameters.dataType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for FeatureType.ShapedArrayParameters(0) + 20);
  *(a1 + 8) = v3;
  sub_2576A44B8(*(v1 + v3 + 8), *(v1 + v3 + 16), &v6);
  v4 = v6;
  if (v6 == 5)
  {
    v4 = 2;
  }

  *(a1 + 12) = v4;
  return sub_2576A45A8;
}

uint64_t sub_2576A45A8(uint64_t result)
{
  v1 = *result + *(result + 8);
  *(v1 + 8) = qword_257771998[*(result + 12)];
  *(v1 + 16) = 1;
  return result;
}

uint64_t FeatureType.ShapedArrayParameters.shapeFlexibility.getter()
{
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36_8();
  v11 = OUTLINED_FUNCTION_29_13();
  sub_2576A6098(v1 + *(v11 + 24), v2);
  result = __swift_getEnumTagSinglePayload(v2, 1, v4);
  if (result == 1)
  {
    *v0 = 0;
    *(v0 + 8) = -1;
  }

  else
  {
    OUTLINED_FUNCTION_2_46();
    sub_2576A642C();
    OUTLINED_FUNCTION_1_55();
    sub_2576A6380();
    sub_2576A48B8();
    OUTLINED_FUNCTION_0_71();
    return sub_2576A63D4(v8, v13);
  }

  return result;
}

uint64_t sub_2576A4710@<X0>(uint64_t a1@<X8>)
{
  result = FeatureType.ShapedArrayParameters.shapeFlexibility.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_2576A4754(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_2576A611C(v3, v1);
  return FeatureType.ShapedArrayParameters.shapeFlexibility.setter(&v3);
}

uint64_t FeatureType.ShapedArrayParameters.shapeFlexibility.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = *(a1 + 8);
  if (v7 == 255)
  {
    type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
    OUTLINED_FUNCTION_44();
  }

  else
  {
    v8 = *a1;

    if (v7)
    {
      sub_2576A5D40();
    }

    else
    {
      sub_2576A5AB8();
    }

    v13 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
    swift_storeEnumTagMultiPayload();
    sub_2576A6108(v8, v7);
    v9 = v6;
    v10 = 0;
    v11 = 1;
    v12 = v13;
  }

  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  type metadata accessor for FeatureType.ShapedArrayParameters(0);
  v14 = OUTLINED_FUNCTION_29_13();
  return sub_257690A04(v6, v1 + *(v14 + 24));
}

void sub_2576A48B8()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for SizeRange(0);
  v5 = OUTLINED_FUNCTION_24(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v6 = type metadata accessor for Proto_ArrayFeatureType.ShapeRange(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = (v9 - v8);
  v11 = type metadata accessor for Proto_ArrayFeatureType.Shape(0);
  v12 = OUTLINED_FUNCTION_24(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v71 = v14 - v13;
  v15 = type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes(0);
  v16 = OUTLINED_FUNCTION_13(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_55();
  OUTLINED_FUNCTION_205();
  sub_2576A6380();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_2576A642C();
    v21 = *v10;
    v22 = *(*v10 + 16);
    if (v22)
    {
      v65 = v1;
      v67 = v3;
      v23 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
      sub_257484640(v23, v22, 0);
      v24 = v73;
      v25 = type metadata accessor for Proto_SizeRange(0);
      OUTLINED_FUNCTION_24(v25);
      v27 = v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      v29 = *(v28 + 72);
      do
      {
        OUTLINED_FUNCTION_10_33();
        sub_2576A6380();
        v31 = *(v73 + 16);
        v30 = *(v73 + 24);
        if (v31 >= v30 >> 1)
        {
          v32 = OUTLINED_FUNCTION_13_1(v30);
          sub_257484640(v32, v31 + 1, 1);
        }

        *(v73 + 16) = v31 + 1;
        OUTLINED_FUNCTION_193();
        sub_2576A642C();
        v27 += v29;
        --v22;
      }

      while (v22);
      OUTLINED_FUNCTION_0_71();
      sub_2576A63D4(v65, v57);
      v58 = OUTLINED_FUNCTION_8_30();
LABEL_22:
      sub_2576A63D4(v58, v59);
      v3 = v67;
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_0_71();
    sub_2576A63D4(v1, v61);
    v62 = OUTLINED_FUNCTION_8_30();
LABEL_25:
    sub_2576A63D4(v62, v63);
    v24 = MEMORY[0x277D84F90];
LABEL_26:
    *v3 = v24;
    *(v3 + 8) = EnumCaseMultiPayload == 1;
    OUTLINED_FUNCTION_35();
    return;
  }

  sub_2576A642C();
  v33 = *v19;
  v34 = *(*v19 + 16);
  v35 = v19;
  if (!v34)
  {
    OUTLINED_FUNCTION_0_71();
    sub_2576A63D4(v1, v64);
    OUTLINED_FUNCTION_9_30();
    v62 = v19;
    goto LABEL_25;
  }

  v66 = v1;
  v67 = v3;
  v36 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
  sub_257484E90(v36, v34, 0);
  v37 = 0;
  v24 = v73;
  OUTLINED_FUNCTION_193();
  v38 = v71;
  v69 = v34;
  v70 = v33;
  while (v37 < *(v33 + 16))
  {
    sub_2576A6380();
    v39 = *v38;
    v40 = *(*v38 + 16);
    if (v40)
    {
      v41 = v35;
      v72 = MEMORY[0x277D84F90];
      v42 = OUTLINED_FUNCTION_25_14();
      sub_257483724(v42, v43, v44);
      v45 = v72;
      v46 = (v39 + 32);
      v47 = *(v72 + 16);
      do
      {
        v49 = *v46++;
        v48 = v49;
        v50 = *(v72 + 24);
        if (v47 >= v50 >> 1)
        {
          v51 = OUTLINED_FUNCTION_174(v50);
          sub_257483724(v51, v47 + 1, 1);
        }

        *(v72 + 16) = v47 + 1;
        *(v72 + 8 * v47++ + 32) = v48;
        --v40;
      }

      while (v40);
      OUTLINED_FUNCTION_11_29();
      v38 = v71;
      sub_2576A63D4(v71, v52);
      v35 = v41;
      v34 = v69;
      v33 = v70;
    }

    else
    {
      OUTLINED_FUNCTION_11_29();
      sub_2576A63D4(v38, v53);
      v45 = MEMORY[0x277D84F90];
    }

    v55 = *(v73 + 16);
    v54 = *(v73 + 24);
    if (v55 >= v54 >> 1)
    {
      v56 = OUTLINED_FUNCTION_13_1(v54);
      sub_257484E90(v56, v55 + 1, 1);
    }

    ++v37;
    *(v73 + 16) = v55 + 1;
    *(v73 + 8 * v55 + 32) = v45;
    if (v37 == v34)
    {
      OUTLINED_FUNCTION_0_71();
      sub_2576A63D4(v66, v60);
      OUTLINED_FUNCTION_9_30();
      v58 = v35;
      goto LABEL_22;
    }
  }

  __break(1u);
}

void (*FeatureType.ShapedArrayParameters.shapeFlexibility.modify(void *a1))(void ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  v3[3] = v4;
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 64);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v3[6] = __swift_coroFrameAllocStub(v10);
  v3[7] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v3[8] = v11;
  v12 = *(type metadata accessor for FeatureType.ShapedArrayParameters(0) + 20);
  *(v3 + 3) = v12;
  v13 = v1 + v12;
  v14 = *(type metadata accessor for Proto_ArrayFeatureType(0) + 24);
  *(v3 + 18) = v14;
  sub_2576A6098(v13 + v14, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
  {
    *v3 = 0;
    *(v3 + 8) = -1;
  }

  else
  {
    OUTLINED_FUNCTION_2_46();
    sub_2576A642C();
    OUTLINED_FUNCTION_1_55();
    sub_2576A6380();
    sub_2576A48B8();
    OUTLINED_FUNCTION_0_71();
    sub_2576A63D4(v7, v15);
  }

  return sub_2576A4F60;
}

void sub_2576A4F60(void ***a1, char a2)
{
  v7 = *a1;
  v8 = **a1;
  v9 = *(*a1 + 8);
  if (a2)
  {
    if (v9 != 255)
    {
      sub_2576A611C(**a1, v9);

      if (v9)
      {
        sub_2576A5D40();
      }

      else
      {
        sub_2576A5AB8();
      }

      swift_storeEnumTagMultiPayload();
      sub_2576A6108(v8, v9);
    }

    OUTLINED_FUNCTION_19_23();
    __swift_storeEnumTagSinglePayload(v2, v10, 1, v11);
    sub_257690A04(v2, v6 + v5);
    sub_2576A6108(*v7, *(v7 + 8));
  }

  else
  {
    if (v9 != 255)
    {

      if (v9)
      {
        sub_2576A5D40();
      }

      else
      {
        sub_2576A5AB8();
      }

      swift_storeEnumTagMultiPayload();
      sub_2576A6108(v8, v9);
    }

    OUTLINED_FUNCTION_19_23();
    __swift_storeEnumTagSinglePayload(v9, v12, 1, v13);
    sub_257690A04(v9, v6 + v5);
  }

  free(v8);
  free(v9);
  free(v2);
  free(v3);
  free(v4);

  free(v7);
}

double FeatureType.ShapedArrayParameters.defaultValue.getter()
{
  type metadata accessor for FeatureType.ShapedArrayParameters(0);
  type metadata accessor for Proto_ArrayFeatureType(0);
  OUTLINED_FUNCTION_33_9();
  result = OUTLINED_FUNCTION_14_15(v0);
  if (v1 == 1)
  {
    result = v4;
  }

  if (!v1)
  {
    return v3;
  }

  return result;
}

void FeatureType.ShapedArrayParameters.defaultValue.setter(double a1)
{
  v3 = v1 + *(type metadata accessor for FeatureType.ShapedArrayParameters(0) + 20);
  v4 = *(v3 + 8);
  if (*(v3 + 16) == 1)
  {
    switch(v4)
    {
      case 1:
      case 5:
        goto LABEL_7;
      case 3:
        goto LABEL_9;
      default:
        goto LABEL_8;
    }
  }

  if (v4 != 131104)
  {
    if (v4 == 65568)
    {
      goto LABEL_7;
    }

    if (v4 != 0x20000)
    {
      if (v4 != 65552)
      {
LABEL_8:
        type metadata accessor for Proto_ArrayFeatureType(0);
        OUTLINED_FUNCTION_33_9();
        *v7 = a1;
        v8 = 2;
        goto LABEL_19;
      }

LABEL_7:
      *&v5 = a1;
      v6 = v5;
      type metadata accessor for Proto_ArrayFeatureType(0);
      OUTLINED_FUNCTION_33_9();
      *v7 = v6;
      v8 = 1;
LABEL_19:
      *(v7 + 8) = v8;
      return;
    }

    goto LABEL_14;
  }

LABEL_9:
  OUTLINED_FUNCTION_30_11();
  if (!(v10 ^ v11 | v9))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a1 <= -2147483650.0)
  {
    goto LABEL_20;
  }

  if (a1 < 2147483650.0)
  {
    goto LABEL_18;
  }

  __break(1u);
LABEL_14:
  OUTLINED_FUNCTION_30_11();
  if (!(v10 ^ v11 | v9))
  {
    goto LABEL_21;
  }

  if (a1 <= -2147483650.0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 2147483650.0)
  {
LABEL_18:
    type metadata accessor for Proto_ArrayFeatureType(0);
    OUTLINED_FUNCTION_33_9();
    *v7 = a1;
    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
}

void (*FeatureType.ShapedArrayParameters.defaultValue.modify(uint64_t a1))(double *a1)
{
  *(a1 + 8) = v1;
  type metadata accessor for FeatureType.ShapedArrayParameters(0);
  v3 = OUTLINED_FUNCTION_29_13();
  v5 = OUTLINED_FUNCTION_14_15((v1 + *(v3 + 28)));
  if (v4 == 1)
  {
    v5 = v7;
  }

  if (!v4)
  {
    v5 = v6;
  }

  *a1 = v5;
  return sub_2576A52E4;
}

void sub_2576A530C()
{
  OUTLINED_FUNCTION_31();
  v2 = type metadata accessor for SizeRange(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = (v7 - v6);
  v47 = *v0;
  v9 = *(*v0 + 16);
  if (v0[8])
  {
    if (v9)
    {
      sub_257484040(0, v9, 0);
      OUTLINED_FUNCTION_193();
      v11 = v47 + v10;
      v12 = *(v5 + 72);
      do
      {
        OUTLINED_FUNCTION_13_19();
        sub_2576A6380();
        if (v8[1] < 0)
        {
          if (*v8 < 0)
          {
            goto LABEL_29;
          }

          OUTLINED_FUNCTION_35_9(*v8);
          v16 = sub_257743974();
          OUTLINED_FUNCTION_28_17(v16, v17);
        }

        else
        {
          if (*v8 < 0)
          {
            goto LABEL_28;
          }

          OUTLINED_FUNCTION_35_9(*v8);
          v13 = sub_257743974();
          OUTLINED_FUNCTION_28_17(v13, v14);
          v15 = sub_257743974();
          MEMORY[0x259C64E90](v15);
        }

        OUTLINED_FUNCTION_15_16();
        v18 = v1;
        v20 = *(v1 + 16);
        v19 = *(v1 + 24);
        if (v20 >= v19 >> 1)
        {
          v22 = OUTLINED_FUNCTION_13_1(v19);
          sub_257484040(v22, v20 + 1, 1);
          v18 = v1;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 24 * v20;
        *(v21 + 32) = v49;
        *(v21 + 40) = v51;
        *(v21 + 48) = 0;
        v11 += v12;
      }

      while (v5 != 1);
    }

    goto LABEL_26;
  }

  v23 = MEMORY[0x277D84F90];
  if (!v9)
  {
LABEL_26:
    OUTLINED_FUNCTION_35();
    return;
  }

  v50 = MEMORY[0x277D84F90];
  sub_257484040(0, v9, 0);
  v24 = 0;
  v46 = v9;
  while (v24 < *(v47 + 16))
  {
    v48 = v24;
    v25 = *(v47 + 32 + 8 * v24);
    v26 = *(v25 + 16);
    if (v26)
    {

      v27 = OUTLINED_FUNCTION_25_14();
      sub_257483754(v27, v28, v29);
      v30 = v23;
      v31 = v25 + 32;
      do
      {
        v31 += 8;
        v32 = sub_257743974();
        v34 = v33;
        v36 = *(v30 + 16);
        v35 = *(v30 + 24);
        if (v36 >= v35 >> 1)
        {
          v38 = OUTLINED_FUNCTION_13_1(v35);
          sub_257483754(v38, v36 + 1, 1);
        }

        *(v30 + 16) = v36 + 1;
        v37 = v30 + 16 * v36;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
        --v26;
      }

      while (v26);
      v9 = v46;
      v23 = MEMORY[0x277D84F90];
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    v39 = sub_257743604();
    v41 = v40;

    v43 = *(v50 + 16);
    v42 = *(v50 + 24);
    if (v43 >= v42 >> 1)
    {
      v45 = OUTLINED_FUNCTION_174(v42);
      sub_257484040(v45, v43 + 1, 1);
    }

    v24 = v48 + 1;
    *(v50 + 16) = v43 + 1;
    v44 = v50 + 24 * v43;
    *(v44 + 32) = v39;
    *(v44 + 40) = v41;
    *(v44 + 48) = 0;
    if (v48 + 1 == v9)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t FeatureType.ShapedArrayParameters.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v1 = &a1[*(type metadata accessor for FeatureType.ShapedArrayParameters(0) + 20)];
  *v1 = MEMORY[0x277D84F90];
  *(v1 + 1) = 0;
  v1[16] = 1;
  v2 = type metadata accessor for Proto_ArrayFeatureType(0);
  type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_23_17(&v1[*(v2 + 28)]);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void static FeatureType.ShapedArrayParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v3 = OUTLINED_FUNCTION_0_0();
    type metadata accessor for FeatureType.ShapedArrayParameters(v3);

    sub_2574C0698();
  }
}

void FeatureType.ShapedArrayParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v1 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_36_8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_2576A6380();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_257744000;
  *(v12 + 32) = 0x6570616873;
  *(v12 + 40) = 0xE500000000000000;
  v13 = FeatureType.ShapedArrayParameters.shape.getter();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v12 + 48) = v13;
  *(v12 + 72) = v14;
  *(v12 + 80) = 0x6570795461746164;
  *(v12 + 88) = 0xE800000000000000;
  *(v12 + 120) = &type metadata for FeatureType.ShapedArrayParameters.DataType;
  FeatureType.ShapedArrayParameters.dataType.getter();
  *(v12 + 128) = 0xD000000000000010;
  *(v12 + 136) = 0x8000000257781200;
  *(v12 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880DB8, &qword_257771760);
  FeatureType.ShapedArrayParameters.shapeFlexibility.getter();
  strcpy((v12 + 176), "defaultValue");
  *(v12 + 189) = 0;
  *(v12 + 190) = -5120;
  v15 = &v0[*(v10 + 20)];
  v16 = &v15[*(type metadata accessor for Proto_ArrayFeatureType(0) + 28)];
  v17 = *v16;
  v18 = *(v16 + 8);
  if (v18)
  {
    if (v18 == 1)
    {
      v19 = *&v17;
    }

    else
    {
      v19 = 0.0;
      if (v18 == 2)
      {
        v19 = v17;
      }
    }
  }

  else
  {
    v19 = SLODWORD(v17);
  }

  v20 = MEMORY[0x277D839F8];
  *(v12 + 192) = v19;
  *(v12 + 216) = v20;
  *(v12 + 224) = 0x6E6F6974704F7369;
  *(v12 + 232) = 0xEA00000000006C61;
  LOBYTE(v20) = *v0;
  *(v12 + 264) = MEMORY[0x277D839B0];
  *(v12 + 240) = v20;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v1);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

void sub_2576A5AB8()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_ArrayFeatureType.Shape(v3);
  OUTLINED_FUNCTION_63();
  v34 = v5;
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v12 = *(v2 + 16);
  if (v12)
  {
    v29 = v0;
    v13 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484560(v13, v12, 0);
    v14 = 0;
    v15 = v37;
    v31 = v8;
    v32 = v2 + 32;
    v30 = v11;
    v33 = v12;
    while (v14 < *(v2 + 16))
    {
      v16 = *(v32 + 8 * v14);

      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = v2;
        v36 = MEMORY[0x277D84F90];
        sub_2574845B8(0, v17, 0);
        v19 = v36;
        v20 = *(v36 + 16);
        v21 = 32;
        do
        {
          v22 = *(v16 + v21);
          v36 = v19;
          v23 = *(v19 + 24);
          if (v20 >= v23 >> 1)
          {
            v24 = OUTLINED_FUNCTION_174(v23);
            sub_2574845B8(v24, v20 + 1, 1);
            v19 = v36;
          }

          *(v19 + 16) = v20 + 1;
          *(v19 + 8 * v20 + 32) = v22;
          v21 += 8;
          ++v20;
          --v17;
        }

        while (v17);

        v2 = v18;
        v8 = v31;
      }

      else
      {

        v19 = MEMORY[0x277D84F90];
      }

      *v8 = v19;
      OUTLINED_FUNCTION_12_28();
      sub_2576A642C();
      v37 = v15;
      v26 = *(v15 + 16);
      v25 = *(v15 + 24);
      if (v26 >= v25 >> 1)
      {
        v27 = OUTLINED_FUNCTION_13_1(v25);
        sub_257484560(v27, v26 + 1, 1);
        v15 = v37;
      }

      ++v14;
      *(v15 + 16) = v26 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_12_28();
      sub_2576A642C();
      if (v14 == v33)
      {

        v0 = v29;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
LABEL_16:
    *v0 = v15;
    OUTLINED_FUNCTION_35();
  }
}

void sub_2576A5D40()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for SizeRange(v3);
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = type metadata accessor for Proto_SizeRange(0);
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  type metadata accessor for Proto_ArrayFeatureType.ShapeRange(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v10 = *(v2 + 16);
  if (v10)
  {
    v19 = v0;
    v11 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_2574845E8(v11, v10, 0);
    v12 = v20;
    OUTLINED_FUNCTION_193();
    v14 = v2 + v13;
    v15 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_13_19();
      sub_2576A6380();
      OUTLINED_FUNCTION_10_33();
      sub_2576A6380();
      OUTLINED_FUNCTION_15_16();
      v17 = *(v20 + 16);
      v16 = *(v20 + 24);
      if (v17 >= v16 >> 1)
      {
        v18 = OUTLINED_FUNCTION_13_1(v16);
        sub_2574845E8(v18, v17 + 1, 1);
      }

      *(v20 + 16) = v17 + 1;
      OUTLINED_FUNCTION_193();
      sub_2576A642C();
      v14 += v15;
      --v10;
    }

    while (v10);

    v0 = v19;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  *v0 = v12;
  OUTLINED_FUNCTION_35();
}

uint64_t static FeatureType.ShapedArrayParameters.ShapeFlexibility.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {

      sub_25748244C();
      v3 = v2;

      return v3 & 1;
    }

    return 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_205();

  return sub_257482390(v5, v6);
}

uint64_t FeatureType.ShapedArrayParameters.DataType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 65600)
  {
    v2 = 2;
  }

  else
  {
    v2 = 5;
  }

  if (result == 0x20000)
  {
    v3 = 4;
  }

  else
  {
    v3 = v2;
  }

  if (result == 131104)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  if (result == 65568)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (result == 65552)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2576A6058@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureType.ShapedArrayParameters.DataType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2576A6098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576A6108(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_2576A611C(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

unint64_t sub_2576A6134()
{
  result = qword_281537BA8;
  if (!qword_281537BA8)
  {
    type metadata accessor for Proto_ArrayFeatureType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281537BA8);
  }

  return result;
}

unint64_t sub_2576A6190()
{
  result = qword_27F880DC0;
  if (!qword_27F880DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880DC0);
  }

  return result;
}

uint64_t sub_2576A620C(uint64_t a1)
{
  result = type metadata accessor for Proto_ArrayFeatureType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s21ShapedArrayParametersV8DataTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2576A6380()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_205();
  v4(v3);
  return v0;
}

uint64_t sub_2576A63D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2576A642C()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_205();
  v4(v3);
  return v0;
}

double OUTLINED_FUNCTION_14_15@<D0>(_BYTE *a1@<X8>)
{
  result = 0.0;
  if (a1[8] == 2)
  {
    return *a1;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_16()
{

  return sub_2576A63D4(v0, type metadata accessor for SizeRange);
}

void OUTLINED_FUNCTION_28_17(uint64_t a1, uint64_t a2)
{
  *(v2 - 104) = a1;
  *(v2 - 96) = a2;

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_29_13()
{

  return type metadata accessor for Proto_ArrayFeatureType(0);
}

uint64_t OUTLINED_FUNCTION_36_8()
{

  return type metadata accessor for FeatureType.ShapedArrayParameters(0);
}

void sub_2576A66C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result + 0x4000000000000000 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_257743704();
  if (!sub_2576A708C(a2, v8, a4))
  {
    sub_2576A72C4(a2, a3, a4);
    if (__OFADD__(result, v9))
    {
LABEL_28:
      __break(1u);
      return;
    }

    if (result + v9 <= 120)
    {
      sub_2576A7674(a2, a3, a4);
      MEMORY[0x259C64E90]();

      return;
    }
  }

  if (!a4)
  {

    return;
  }

  if (a4 != 1)
  {
    v24 = *(a2 + 16);
    if (!v24)
    {
      return;
    }

    v25 = 0;
    v26 = (a2 + 40);
    v27 = (a3 + 48);
    v43 = v24 - 1;
    v44 = *(a2 + 16);
    for (i = a3; ; a3 = i)
    {
      if (v24 == v25)
      {
        OUTLINED_FUNCTION_16_16();
        return;
      }

      if (v25 >= *(a3 + 16))
      {
        break;
      }

      v29 = *(v26 - 1);
      v28 = *v26;
      v30 = *(v27 - 2);
      v31 = *(v27 - 1);
      v32 = *v27;

      v33 = OUTLINED_FUNCTION_4_39();
      sub_2576A8798(v33, v34, v35);
      sub_2576A7944(v29, v28, result, v30, v31, v32);
      v37 = v36;
      v39 = v38;

      v40 = OUTLINED_FUNCTION_4_39();
      sub_257483A28(v40, v41, v42);
      MEMORY[0x259C64E90](v37, v39);

      if (v43 != v25)
      {
        OUTLINED_FUNCTION_16_16();
      }

      v26 += 2;
      v27 += 24;
      ++v25;
      v24 = v44;
    }

    __break(1u);
    goto LABEL_27;
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = a2 + 48;
    while (v10 != v11)
    {
      v13 = OUTLINED_FUNCTION_5_40();
      sub_2576A8798(v13, v14, v15);
      v16 = sub_257743974();
      v18 = OUTLINED_FUNCTION_35_10(v16, v17, result);
      v20 = v19;
      v21 = OUTLINED_FUNCTION_5_40();
      sub_257483A28(v21, v22, v23);

      MEMORY[0x259C64E90](v18, v20);

      if (v10 - 1 != v11)
      {
        OUTLINED_FUNCTION_16_16();
      }

      v12 += 24;
      ++v11;
    }
  }
}

uint64_t sub_2576A6968@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = 0;
  a2[2] = *(a1 + 16);
}

uint64_t sub_2576A6978(uint64_t a1)
{

  return a1;
}

uint64_t sub_2576A69C4()
{
  v0 = *(DenseSupportVectorCollection.vectors.getter() + 16);

  return v0;
}

uint64_t sub_2576A69F0(uint64_t a1)
{
  v1 = *(SparseSupportVectorCollection.vectors.getter() + 16);

  return v1;
}

uint64_t sub_2576A6A1C()
{
  v1 = OUTLINED_FUNCTION_39_10();
  v2 = type metadata accessor for DenseSupportVector(v1);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_28_18();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E18, &qword_257771B68);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27_15();
  if (!v0)
  {
    goto LABEL_4;
  }

  v6 = sub_2577014A8();
  v7 = OUTLINED_FUNCTION_205();
  sub_2576AAB64(v7, v8, v9);
  OUTLINED_FUNCTION_10_34();
  v16 = OUTLINED_FUNCTION_36_9(v10, v11, v12, v13, v14, v15);
  v17 = OUTLINED_FUNCTION_4_39();
  sub_2574695E4(v17, v18, v19);
  if (v16 != v0)
  {
    __break(1u);
LABEL_4:
    v6 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_45_7();
  return v6;
}

uint64_t sub_2576A6B40()
{
  v1 = OUTLINED_FUNCTION_39_10();
  v2 = type metadata accessor for SupportVectorCoefficients(v1);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_28_18();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E00, &qword_257771B50);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27_15();
  if (!v0)
  {
    goto LABEL_4;
  }

  v6 = sub_2577014A8();
  v7 = OUTLINED_FUNCTION_205();
  sub_2576AAB64(v7, v8, v9);
  OUTLINED_FUNCTION_9_31();
  v16 = OUTLINED_FUNCTION_36_9(v10, v11, v12, v13, v14, v15);
  v17 = OUTLINED_FUNCTION_4_39();
  sub_2574695E4(v17, v18, v19);
  if (v16 != v0)
  {
    __break(1u);
LABEL_4:
    v6 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_45_7();
  return v6;
}

uint64_t sub_2576A6C64()
{
  v2 = OUTLINED_FUNCTION_39_10();
  v3 = type metadata accessor for DenseSupportVectorCollection(v2);
  v4 = OUTLINED_FUNCTION_13(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E28, &unk_257771B78);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(DenseSupportVectorCollection.vectors.getter() + 16);

  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = sub_257701EC8(v9, 0);
  v11 = type metadata accessor for DenseSupportVector(0);
  OUTLINED_FUNCTION_13(v11);
  sub_2576AAB64(v0, v1, type metadata accessor for DenseSupportVectorCollection);
  v12 = OUTLINED_FUNCTION_37_11();
  v15 = sub_2576A8F1C(v12, v13, v14);
  sub_2574695E4(v8, &qword_27F880E28, &unk_257771B78);
  if (v15 != v9)
  {
    __break(1u);
LABEL_4:
    v10 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_45_7();
  return v10;
}

uint64_t sub_2576A6DCC()
{
  v2 = OUTLINED_FUNCTION_39_10();
  v3 = type metadata accessor for SparseSupportVectorCollection(v2);
  v4 = OUTLINED_FUNCTION_13(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E10, &qword_257771B60);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(SparseSupportVectorCollection.vectors.getter() + 16);

  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = sub_257701ECC(v9, 0);
  v11 = type metadata accessor for SparseSupportVector(0);
  OUTLINED_FUNCTION_13(v11);
  sub_2576AAB64(v0, v1, type metadata accessor for SparseSupportVectorCollection);
  v12 = OUTLINED_FUNCTION_37_11();
  v15 = sub_2576A9654(v12, v13, v14);
  sub_2574695E4(v8, &qword_27F880E10, &qword_257771B60);
  if (v15 != v9)
  {
    __break(1u);
LABEL_4:
    v10 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_45_7();
  return v10;
}

uint64_t sub_2576A6F34(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {

    return MEMORY[0x277D84F90];
  }

  v3 = sub_257701514();
  v4 = sub_2576A9D8C(&v6, v3 + 32, v2, a1);

  if (v4 == v2)
  {

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2576A6FDC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2576A8A20(a1, a2);

  return v2;
}

BOOL sub_2576A708C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return 0;
  }

  if (a3 != 1)
  {
    return *(a1 + 16) != 0;
  }

  v3 = (a1 + 48);
  v4 = *(a1 + 16) + 1;
  do
  {
    v5 = --v4 != 0;
    if (!v4)
    {
      break;
    }

    v6 = v3 + 24;
    v7 = *(v3 - 2);
    v8 = *v3;
    v9 = OUTLINED_FUNCTION_173();
    sub_2576A8798(v9, v10, v8);
    v12 = sub_2576A708C(v7, v11, v8);
    v13 = OUTLINED_FUNCTION_173();
    sub_257483A28(v13, v14, v8);
    v3 = v6;
  }

  while (!v12);
  return v5;
}

uint64_t sub_2576A7140(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v29 = MEMORY[0x277D84F90];
    v3 = OUTLINED_FUNCTION_52_4();
    sub_257483754(v3, v4, v5);
    v6 = v29;
    v28 = a1;
    v7 = (a1 + 40);
    v8 = v2;
    do
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v12 = *(v29 + 16);
      v11 = *(v29 + 24);

      if (v12 >= v11 >> 1)
      {
        sub_257483754((v11 > 1), v12 + 1, 1);
      }

      *(v29 + 16) = v12 + 1;
      v13 = v29 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v7 += 5;
      --v8;
    }

    while (v8);
    v30 = MEMORY[0x277D84F90];
    v14 = OUTLINED_FUNCTION_52_4();
    sub_257484040(v14, v15, v16);
    v17 = (v28 + 64);
    do
    {
      v18 = *(v17 - 2);
      v19 = *(v17 - 1);
      v20 = *v17;
      v21 = OUTLINED_FUNCTION_4_39();
      sub_2576A8798(v21, v22, v23);
      v25 = *(v30 + 16);
      v24 = *(v30 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_257484040((v24 > 1), v25 + 1, 1);
      }

      v17 += 40;
      *(v30 + 16) = v25 + 1;
      v26 = v30 + 24 * v25;
      *(v26 + 32) = v18;
      *(v26 + 40) = v19;
      *(v26 + 48) = v20;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v6;
}

void sub_2576A72C4(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {

    sub_2577436A4();
    return;
  }

  if (a3 == 1)
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      return;
    }

    v54 = MEMORY[0x277D84F90];
    v6 = OUTLINED_FUNCTION_52_4();
    sub_257483724(v6, v7, v8);
    v9 = v54;
    v10 = (a1 + 48);
    v11 = v5;
    do
    {
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;
      v15 = OUTLINED_FUNCTION_277();
      sub_2576A8798(v15, v16, v14);
      v17 = OUTLINED_FUNCTION_277();
      v19 = sub_2576A72C4(v17, v18, v14);
      v20 = OUTLINED_FUNCTION_277();
      sub_257483A28(v20, v21, v14);
      OUTLINED_FUNCTION_38_8();
      if (v23)
      {
        sub_257483724(v22 > 1, v12, 1);
        v9 = v54;
      }

      v10 += 24;
      *(v9 + 16) = v12;
      *(v9 + 8 * v13 + 32) = v19;
      --v11;
    }

    while (v11);
    v42 = 0;
    v43 = v13 + 1;
    v44 = 32;
    do
    {
      v45 = *(v9 + v44);
      v46 = __OFADD__(v42, v45);
      v42 += v45;
      if (v46)
      {
        __break(1u);
        goto LABEL_37;
      }

      v44 += 8;
      --v43;
    }

    while (v43);

    if (__OFADD__(v42, 2))
    {
      goto LABEL_41;
    }

    if (v5 + 0x3FFFFFFFFFFFFFFFLL < 0)
    {
      goto LABEL_42;
    }

    if (!__OFADD__(v42 + 2, 2 * v5 - 2))
    {
      return;
    }

    __break(1u);
LABEL_29:
    v47 = 0;
    v48 = v13 + 1;
    v49 = 32;
    while (1)
    {
      v50 = *(v9 + v49);
      v46 = __OFADD__(v47, v50);
      v47 += v50;
      if (v46)
      {
        break;
      }

      v49 += 8;
      if (!--v48)
      {

        if (__OFADD__(v47, 2))
        {
          goto LABEL_43;
        }

        v51 = *(v52 + 16);
        if (v51 + 0x3FFFFFFFFFFFFFFFLL < 0)
        {
          goto LABEL_44;
        }

        if (__OFADD__(v47 + 2, 2 * v51 - 2))
        {
          goto LABEL_45;
        }

        return;
      }
    }
  }

  else
  {
    v24 = *(a1 + 16);
    if (!v24)
    {
      return;
    }

    v55 = MEMORY[0x277D84F90];
    sub_257483724(0, v24, 0);
    v9 = v55;
    v25 = *(a2 + 16);
    v52 = a1;
    v26 = (a1 + 40);
    v27 = a2 + 48;
    while (v25)
    {
      v53 = v24;
      v28 = *v26;

      v29 = OUTLINED_FUNCTION_22_19();
      sub_2576A8798(v29, v30, v31);
      v13 = sub_2577436A4();
      v32 = OUTLINED_FUNCTION_22_19();
      v35 = sub_2576A72C4(v32, v33, v34);

      v36 = OUTLINED_FUNCTION_22_19();
      sub_257483A28(v36, v37, v38);
      v39 = v13 + v35;
      if (__OFADD__(v13, v35))
      {
        goto LABEL_38;
      }

      v40 = v39 + 2;
      if (__OFADD__(v39, 2))
      {
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_38_8();
      if (v23)
      {
        sub_257483724(v41 > 1, v28, 1);
        v9 = v55;
      }

      *(v9 + 16) = v28;
      *(v9 + 8 * v13 + 32) = v40;
      --v25;
      v26 += 2;
      v27 += 24;
      v24 = v53 - 1;
      if (v53 == 1)
      {
        goto LABEL_29;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_2576A75C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!sub_2576A708C(a3, a2, a5))
  {
    if (a2)
    {
      a1 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        __break(1u);
        goto LABEL_10;
      }

      v8 = OUTLINED_FUNCTION_173();
      sub_2576A72C4(v8, v9, a5);
      if (!__OFADD__(a1, v10))
      {
        return;
      }

      __break(1u);
    }

    v11 = OUTLINED_FUNCTION_173();
    sub_2576A72C4(v11, v12, a5);
    if (!__OFADD__(a1, v13))
    {
      return;
    }

LABEL_10:
    __break(1u);
  }
}

void sub_2576A7674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24_17();
  v6 = v5;
  v7 = v3;
  if (!v4)
  {

LABEL_19:
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_25_15();
    return;
  }

  if (v4 == 1)
  {
    v8 = *(v3 + 16);
    if (v8)
    {
      v49 = MEMORY[0x277D84F90];
      v9 = OUTLINED_FUNCTION_52_4();
      sub_257483754(v9, v10, v11);
      v12 = v7 + 48;
      do
      {
        v13 = OUTLINED_FUNCTION_21_20();
        sub_2576A8798(v13, v14, v15);
        v16 = OUTLINED_FUNCTION_21_20();
        v19 = sub_2576A7674(v16, v17, v18);
        v21 = v20;
        v22 = OUTLINED_FUNCTION_21_20();
        sub_257483A28(v22, v23, v24);
        v26 = *(v49 + 16);
        v25 = *(v49 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_257483754((v25 > 1), v26 + 1, 1);
        }

        v12 += 24;
        *(v49 + 16) = v26 + 1;
        v27 = v49 + 16 * v26;
        *(v27 + 32) = v19;
        *(v27 + 40) = v21;
        --v8;
      }

      while (v8);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    OUTLINED_FUNCTION_11_30(&qword_27F87A200);
    OUTLINED_FUNCTION_34_10();

    OUTLINED_FUNCTION_33_10();

    v28 = 93;
    goto LABEL_18;
  }

  v29 = *(v3 + 16);
  if (!v29)
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    OUTLINED_FUNCTION_11_30(&qword_27F87A200);
    OUTLINED_FUNCTION_34_10();

    OUTLINED_FUNCTION_33_10();

    v28 = 125;
LABEL_18:
    MEMORY[0x259C64E90](v28, 0xE100000000000000);
    goto LABEL_19;
  }

  v52 = MEMORY[0x277D84F90];
  sub_257483754(0, v29, 0);
  v30 = *(v7 + 16);
  v31 = (v7 + 40);
  v32 = v6 + 48;
  v33 = *(v6 + 16);
  while (v30)
  {
    if (!v33)
    {
      goto LABEL_21;
    }

    v47 = v30;
    v48 = v29;
    v50 = *(v31 - 1);
    v51 = *v31;
    swift_bridgeObjectRetain_n();
    v34 = OUTLINED_FUNCTION_4_39();
    sub_2576A8798(v34, v35, v36);
    MEMORY[0x259C64E90](8250, 0xE200000000000000);
    v37 = OUTLINED_FUNCTION_4_39();
    v40 = sub_2576A7674(v37, v38, v39);
    MEMORY[0x259C64E90](v40);

    v41 = OUTLINED_FUNCTION_4_39();
    sub_257483A28(v41, v42, v43);
    v45 = *(v52 + 16);
    v44 = *(v52 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_257483754((v44 > 1), v45 + 1, 1);
    }

    *(v52 + 16) = v45 + 1;
    v46 = v52 + 16 * v45;
    --v33;
    *(v46 + 32) = v50;
    *(v46 + 40) = v51;
    v30 = v47 - 1;
    v31 += 2;
    v32 += 24;
    --v29;
    if (v48 == 1)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2576A7944(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 + 0x4000000000000000 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = sub_257743704();
  v14 = v13;

  MEMORY[0x259C64E90](result, a2);
  MEMORY[0x259C64E90](58, 0xE100000000000000);
  v15 = sub_2577436A4();
  v16 = sub_2577436A4();
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (__OFADD__(v17, 2))
  {
LABEL_30:
    __break(1u);
    return;
  }

  sub_2576A75C0(a3, v17 + 2, a4, a5, a6);
  if (v18)
  {

    v53 = 32;
    v54 = 0xE100000000000000;
    sub_2576A7674(a4, a5, a6);
    MEMORY[0x259C64E90]();

LABEL_15:
    MEMORY[0x259C64E90](v53, v54);

    return;
  }

  OUTLINED_FUNCTION_16_16();
  if (!a6)
  {
    v53 = v12;
    v54 = v14;
    MEMORY[0x259C64E90](8224, 0xE200000000000000);
    MEMORY[0x259C64E90](a4, a5);
    goto LABEL_15;
  }

  if (a6 == 1)
  {

    v19 = *(a4 + 16);
    if (v19)
    {
      v20 = a4;
      v21 = 0;
      v22 = v20 + 48;
      while (v19 != v21)
      {
        v23 = OUTLINED_FUNCTION_5_40();
        sub_2576A8798(v23, v24, v25);
        v26 = sub_257743974();
        v28 = OUTLINED_FUNCTION_35_10(v26, v27, a3 + 1);
        v30 = v29;
        v31 = OUTLINED_FUNCTION_5_40();
        sub_257483A28(v31, v32, v33);

        MEMORY[0x259C64E90](v28, v30);

        if (v19 - 1 != v21)
        {
          OUTLINED_FUNCTION_16_16();
        }

        v22 += 24;
        ++v21;
      }

      return;
    }

    v49 = 23899;
LABEL_26:
    MEMORY[0x259C64E90](v49, 0xE200000000000000);
    return;
  }

  v34 = *(a4 + 16);
  if (!v34)
  {
    v49 = 32123;
    goto LABEL_26;
  }

  v35 = 0;
  v36 = (a4 + 40);
  v37 = a5 + 48;
  v50 = v34 - 1;
  v51 = v34;
  v52 = a5;
  while (v34 != v35)
  {
    if (v35 >= *(a5 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v39 = *(v36 - 1);
    v38 = *v36;

    v40 = OUTLINED_FUNCTION_5_40();
    sub_2576A8798(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_35_10(v39, v38, a3 + 1);
    v45 = v44;

    v46 = OUTLINED_FUNCTION_5_40();
    sub_257483A28(v46, v47, v48);
    MEMORY[0x259C64E90](v43, v45);

    if (v50 != v35)
    {
      OUTLINED_FUNCTION_16_16();
    }

    v36 += 2;
    v37 += 24;
    ++v35;
    v34 = v51;
    a5 = v52;
  }
}

uint64_t sub_2576A7C70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2576A7140(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2576A7C98(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2576A7CA8@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_32(*v1);
  *a1 = result;
  return result;
}

void (*sub_2576A7CD4(void *a1, unint64_t *a2))(uint64_t a1)
{
  v5 = __swift_coroFrameAllocStub(0x21uLL);
  *a1 = v5;
  v6 = *a2;
  v8 = *v2;
  v7 = v2[1];
  v9 = OUTLINED_FUNCTION_289();
  sub_2576C2B8C();
  if (v9)
  {
    v10 = v8 + 16 * v6;
    v12 = *(v10 + 32);
    v11 = *(v10 + 40);
    v13 = OUTLINED_FUNCTION_289();
    sub_2576C2B8C();
    if (v13)
    {
      v14 = v7 + 24 * v6;
      v15 = *(v14 + 32);
      v16 = *(v14 + 40);
      v17 = *(v14 + 48);
      *v5 = v12;
      v5[1] = v11;
      v5[2] = v15;
      v5[3] = v16;
      *(v5 + 32) = v17;

      sub_2576A8798(v15, v16, v17);
      return sub_2576A7DEC;
    }
  }

  else
  {
    sub_2576A81B8(v6, v8);
    __break(1u);
  }

  result = sub_2576A8644(v6, v7);
  __break(1u);
  return result;
}

void sub_2576A7DEC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);

  sub_257483A28(v2, v3, v4);

  free(v1);
}

uint64_t sub_2576A7E48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2576A7E80(*a1, a1[1], *v2);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_2576A7E80(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0 || *(a3 + 16) < a2)
  {
    __break(1u);
  }

  else
  {
    v3 = result;

    return v3;
  }

  return result;
}

uint64_t sub_2576A7EE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2576A6978(*v1);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_2576A7F20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2576A7F50(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2576A7F50(uint64_t result, uint64_t a2)
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

uint64_t sub_2576A7F78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_2576A7FB4(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_2576A7FB4(uint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t sub_2576A8010(uint64_t a1, uint64_t a2)
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

uint64_t sub_2576A808C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2576A7C98(*a1);
  *a2 = result;
  return result;
}

__n128 sub_2576A80B8@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

unint64_t sub_2576A80DC()
{
  result = qword_27F880DD8;
  if (!qword_27F880DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880DD8);
  }

  return result;
}

uint64_t sub_2576A81B8(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {

    return v2;
  }

LABEL_7:
  sub_257743834();
  MEMORY[0x259C64E90](0xD000000000000043, 0x8000000257781250);
  MEMORY[0x259C64E90](0x676E69727453, 0xE600000000000000);
  MEMORY[0x259C64E90](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v4 = sub_257743AF4();
  MEMORY[0x259C64E90](v4);

  result = sub_2577438D4();
  __break(1u);
  return result;
}

uint64_t sub_2576A8300()
{
  v2 = OUTLINED_FUNCTION_15_17();
  type metadata accessor for Proto_DenseVector(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_6();
  if (v0 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_41_10();
  if (!(!v5 & v4))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_52();
  if (OUTLINED_FUNCTION_6_39())
  {
    sub_2576AA004(v1, type metadata accessor for Proto_DenseVector);
    return OUTLINED_FUNCTION_18_27();
  }

LABEL_8:
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_40_9();
  MEMORY[0x259C64E90](0xD000000000000043, 0x8000000257781250);
  OUTLINED_FUNCTION_29_14();
  MEMORY[0x259C64E90](0xD000000000000011);
  v7 = OUTLINED_FUNCTION_0_72();
  MEMORY[0x259C64E90](v7);
  swift_getObjectType();
  v8 = sub_257743AF4();
  MEMORY[0x259C64E90](v8);

  result = OUTLINED_FUNCTION_17_19("Fatal error", v9, v10, v11, v12);
  __break(1u);
  return result;
}

uint64_t sub_2576A8420()
{
  v2 = OUTLINED_FUNCTION_15_17();
  type metadata accessor for Proto_SparseVector(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_6();
  if (v0 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_41_10();
  if (!(!v5 & v4))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_52();
  if (OUTLINED_FUNCTION_6_39())
  {
    sub_2576AA004(v1, type metadata accessor for Proto_SparseVector);
    return OUTLINED_FUNCTION_18_27();
  }

LABEL_8:
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_29_14();
  MEMORY[0x259C64E90](0xD000000000000012);
  v7 = OUTLINED_FUNCTION_0_72();
  MEMORY[0x259C64E90](v7);
  swift_getObjectType();
  v8 = sub_257743AF4();
  MEMORY[0x259C64E90](v8);

  result = OUTLINED_FUNCTION_17_19("Fatal error", v9, v10, v11, v12);
  __break(1u);
  return result;
}

uint64_t sub_2576A852C(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    return v2;
  }

LABEL_7:
  sub_257743834();
  OUTLINED_FUNCTION_29_14();
  MEMORY[0x259C64E90](0xD000000000000043);
  MEMORY[0x259C64E90](0x656C62756F44, 0xE600000000000000);
  v4 = OUTLINED_FUNCTION_0_72();
  MEMORY[0x259C64E90](v4);
  swift_getObjectType();
  v5 = sub_257743AF4();
  MEMORY[0x259C64E90](v5);

  result = OUTLINED_FUNCTION_17_19("Fatal error", v6, v7, 0, 0xE000000000000000);
  __break(1u);
  return result;
}

uint64_t sub_2576A8644(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    sub_257483A28(v5, v6, v7);
    return v2;
  }

LABEL_7:
  sub_257743834();
  MEMORY[0x259C64E90](0xD000000000000043, 0x8000000257781250);
  MEMORY[0x259C64E90](0x646F4E746E697250, 0xE900000000000065);
  MEMORY[0x259C64E90](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v4 = sub_257743AF4();
  MEMORY[0x259C64E90](v4);

  result = sub_2577438D4();
  __break(1u);
  return result;
}

uint64_t sub_2576A8798(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
    }

    else if (a3 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_2576A87F4()
{
  v2 = OUTLINED_FUNCTION_15_17();
  type metadata accessor for SparseSupportVector(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_6();
  if (v0 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_41_10();
  if (!(!v5 & v4))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_52();
  if (OUTLINED_FUNCTION_6_39())
  {
    sub_2576AA004(v1, type metadata accessor for SparseSupportVector);
    return OUTLINED_FUNCTION_18_27();
  }

LABEL_8:
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_40_9();
  MEMORY[0x259C64E90](0xD000000000000043, 0x8000000257781250);
  OUTLINED_FUNCTION_29_14();
  MEMORY[0x259C64E90](0xD000000000000013);
  v7 = OUTLINED_FUNCTION_0_72();
  MEMORY[0x259C64E90](v7);
  swift_getObjectType();
  v8 = sub_257743AF4();
  MEMORY[0x259C64E90](v8);

  result = OUTLINED_FUNCTION_17_19("Fatal error", v9, v10, v11, v12);
  __break(1u);
  return result;
}

uint64_t sub_2576A8914()
{
  v2 = OUTLINED_FUNCTION_15_17();
  type metadata accessor for DenseSupportVector(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_6();
  if (v0 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_41_10();
  if (!(!v5 & v4))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_52();
  if (OUTLINED_FUNCTION_6_39())
  {
    sub_2576AA004(v1, type metadata accessor for DenseSupportVector);
    return OUTLINED_FUNCTION_18_27();
  }

LABEL_8:
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_29_14();
  MEMORY[0x259C64E90](0xD000000000000012);
  v7 = OUTLINED_FUNCTION_0_72();
  MEMORY[0x259C64E90](v7);
  swift_getObjectType();
  v8 = sub_257743AF4();
  MEMORY[0x259C64E90](v8);

  result = OUTLINED_FUNCTION_17_19("Fatal error", v9, v10, v11, v12);
  __break(1u);
  return result;
}

uint64_t sub_2576A8A20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = sub_257701578(*(a1 + 16), 0);
  v6 = sub_2576A9E7C(&v8, v5 + 32, v2, a1, a2);

  if (v6 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v5;
}

void sub_2576A8CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_24_17();
  a25 = v27;
  a26 = v29;
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v28;
    v33 = OUTLINED_FUNCTION_20_16();
    v35 = v34(v33);
    v32(&a10, v35 + 32, v31, v26);
    OUTLINED_FUNCTION_13_20();
    OUTLINED_FUNCTION_4_39();
    OUTLINED_FUNCTION_44_6();
    if (!v36)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_25_15();
}

uint64_t sub_2576A8DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v10 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  result = sub_2576A9FA8(v10, &v24 - v16, a6);
  v19 = *(v14 + 44);
  *&v17[v19] = 0;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
LABEL_10:
    sub_2576AABC0(v17, a1, a4, a5);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = *(*v17 + 16);
    v22 = *v17 + 32;
    while (v21 != v20)
    {
      v23 = *(v22 + 8 * v20);
      *&v17[v19] = v20 + 1;
      *(a2 + 8 * v20++) = v23;
      if (a3 == v20)
      {
        goto LABEL_10;
      }
    }

    a3 = v21;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_2576A8F1C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v59 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E20, &qword_257771B70);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v58 - v7;
  v66 = type metadata accessor for DenseSupportVector(0);
  v8 = *(v66 - 8);
  v9 = MEMORY[0x28223BE20](v66);
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v58 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v58 - v15;
  MEMORY[0x28223BE20](v14);
  v65 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E28, &unk_257771B78);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - v20;
  sub_2576AAB64(v3, &v58 - v20, type metadata accessor for DenseSupportVectorCollection);
  v22 = *(v19 + 44);
  DenseSupportVectorCollection.vectors.getter();

  result = sub_2576AA004(v3, type metadata accessor for DenseSupportVectorCollection);
  v69 = v21;
  v64 = v22;
  *&v21[v22] = 0;
  if (!a2)
  {
    v24 = 0;
    goto LABEL_32;
  }

  if (!a3)
  {
LABEL_29:
    v24 = a3;
LABEL_32:
    sub_2576AABC0(v69, v59, &qword_27F880E28, &unk_257771B78);
    return v24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v25 = *v69;
    v26 = *(*v69 + 16);
    v70 = *v69;
    v62 = v26;
    v63 = v16;
    v68 = a3;
    v60 = v13;
    while (1)
    {
      v72 = a2;
      if (v26)
      {
        v27 = v24;
        v73 = MEMORY[0x277D84F90];
        sub_2574836CC(0, v26, 0);
        v28 = v73;
        v29 = *(type metadata accessor for Proto_DenseVector(0) - 8);
        v30 = v26;
        v31 = v25 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
        v32 = *(v29 + 72);
        do
        {
          sub_2576AAB64(v31, v16, type metadata accessor for Proto_DenseVector);
          v73 = v28;
          v33 = v16;
          v35 = *(v28 + 16);
          v34 = *(v28 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_2574836CC(v34 > 1, v35 + 1, 1);
            v28 = v73;
          }

          *(v28 + 16) = v35 + 1;
          sub_2576A9FA8(v33, v28 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v35, type metadata accessor for DenseSupportVector);
          v31 += v32;
          --v30;
          v16 = v33;
        }

        while (v30);
        v24 = v27;
        a3 = v68;
        a2 = v72;
        v25 = v70;
      }

      else
      {
        v28 = MEMORY[0x277D84F90];
      }

      v36 = *(v28 + 16);

      if (v24 == v36)
      {
        v57 = v71;
        __swift_storeEnumTagSinglePayload(v71, 1, 1, v66);
        sub_2574695E4(v57, &qword_27F880E20, &qword_257771B70);
        goto LABEL_32;
      }

      v37 = *(v25 + 16);
      if (v37)
      {
        v73 = MEMORY[0x277D84F90];
        sub_2574836CC(0, v37, 0);
        v38 = v73;
        v39 = *(type metadata accessor for Proto_DenseVector(0) - 8);
        v40 = v25 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
        v41 = *(v39 + 72);
        do
        {
          sub_2576AAB64(v40, v13, type metadata accessor for Proto_DenseVector);
          v73 = v38;
          v43 = *(v38 + 16);
          v42 = *(v38 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_2574836CC(v42 > 1, v43 + 1, 1);
            v38 = v73;
          }

          *(v38 + 16) = v43 + 1;
          result = sub_2576A9FA8(v13, v38 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v43, type metadata accessor for DenseSupportVector);
          v40 += v41;
          --v37;
        }

        while (v37);
        a2 = v72;
        v25 = v70;
      }

      else
      {
        v38 = MEMORY[0x277D84F90];
      }

      if (v24 >= *(v38 + 16))
      {
        break;
      }

      v44 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v45 = *(v8 + 72);
      sub_2576AAB64(v38 + v44 + v45 * v24, v71, type metadata accessor for DenseSupportVector);

      v46 = *(v25 + 16);
      if (v46)
      {
        v67 = v24;
        v73 = MEMORY[0x277D84F90];
        sub_2574836CC(0, v46, 0);
        v47 = v73;
        v48 = *(type metadata accessor for Proto_DenseVector(0) - 8);
        v49 = v25 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
        v50 = *(v48 + 72);
        v51 = v61;
        do
        {
          sub_2576AAB64(v49, v51, type metadata accessor for Proto_DenseVector);
          v73 = v47;
          v53 = *(v47 + 16);
          v52 = *(v47 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_2574836CC(v52 > 1, v53 + 1, 1);
            v47 = v73;
          }

          *(v47 + 16) = v53 + 1;
          sub_2576A9FA8(v51, v47 + v44 + v53 * v45, type metadata accessor for DenseSupportVector);
          v49 += v50;
          --v46;
        }

        while (v46);

        v24 = v67;
        a3 = v68;
        a2 = v72;
        v13 = v60;
        v25 = v70;
      }

      *&v69[v64] = ++v24;
      v54 = v71;
      __swift_storeEnumTagSinglePayload(v71, 0, 1, v66);
      v55 = v54;
      v56 = v65;
      sub_2576A9FA8(v55, v65, type metadata accessor for DenseSupportVector);
      sub_2576A9FA8(v56, a2, type metadata accessor for DenseSupportVector);
      if (v24 == a3)
      {
        goto LABEL_29;
      }

      a2 += v45;
      v26 = v62;
      v16 = v63;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2576A9654(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v59 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E08, &qword_257771B58);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v58 - v7;
  v66 = type metadata accessor for SparseSupportVector(0);
  v8 = *(v66 - 8);
  v9 = MEMORY[0x28223BE20](v66);
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v58 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v58 - v15;
  MEMORY[0x28223BE20](v14);
  v65 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E10, &qword_257771B60);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - v20;
  sub_2576AAB64(v3, &v58 - v20, type metadata accessor for SparseSupportVectorCollection);
  v22 = *(v19 + 44);
  SparseSupportVectorCollection.vectors.getter();

  result = sub_2576AA004(v3, type metadata accessor for SparseSupportVectorCollection);
  v69 = v21;
  v64 = v22;
  *&v21[v22] = 0;
  if (!a2)
  {
    v24 = 0;
    goto LABEL_32;
  }

  if (!a3)
  {
LABEL_29:
    v24 = a3;
LABEL_32:
    sub_2576AABC0(v69, v59, &qword_27F880E10, &qword_257771B60);
    return v24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v25 = *v69;
    v26 = *(*v69 + 16);
    v70 = *v69;
    v62 = v26;
    v63 = v16;
    v68 = a3;
    v60 = v13;
    while (1)
    {
      v72 = a2;
      if (v26)
      {
        v27 = v24;
        v73 = MEMORY[0x277D84F90];
        sub_257483674(0, v26, 0);
        v28 = v73;
        v29 = *(type metadata accessor for Proto_SparseVector(0) - 8);
        v30 = v26;
        v31 = v25 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
        v32 = *(v29 + 72);
        do
        {
          sub_2576AAB64(v31, v16, type metadata accessor for Proto_SparseVector);
          v73 = v28;
          v33 = v16;
          v35 = *(v28 + 16);
          v34 = *(v28 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_257483674(v34 > 1, v35 + 1, 1);
            v28 = v73;
          }

          *(v28 + 16) = v35 + 1;
          sub_2576A9FA8(v33, v28 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v35, type metadata accessor for SparseSupportVector);
          v31 += v32;
          --v30;
          v16 = v33;
        }

        while (v30);
        v24 = v27;
        a3 = v68;
        a2 = v72;
        v25 = v70;
      }

      else
      {
        v28 = MEMORY[0x277D84F90];
      }

      v36 = *(v28 + 16);

      if (v24 == v36)
      {
        v57 = v71;
        __swift_storeEnumTagSinglePayload(v71, 1, 1, v66);
        sub_2574695E4(v57, &qword_27F880E08, &qword_257771B58);
        goto LABEL_32;
      }

      v37 = *(v25 + 16);
      if (v37)
      {
        v73 = MEMORY[0x277D84F90];
        sub_257483674(0, v37, 0);
        v38 = v73;
        v39 = *(type metadata accessor for Proto_SparseVector(0) - 8);
        v40 = v25 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
        v41 = *(v39 + 72);
        do
        {
          sub_2576AAB64(v40, v13, type metadata accessor for Proto_SparseVector);
          v73 = v38;
          v43 = *(v38 + 16);
          v42 = *(v38 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_257483674(v42 > 1, v43 + 1, 1);
            v38 = v73;
          }

          *(v38 + 16) = v43 + 1;
          result = sub_2576A9FA8(v13, v38 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v43, type metadata accessor for SparseSupportVector);
          v40 += v41;
          --v37;
        }

        while (v37);
        a2 = v72;
        v25 = v70;
      }

      else
      {
        v38 = MEMORY[0x277D84F90];
      }

      if (v24 >= *(v38 + 16))
      {
        break;
      }

      v44 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v45 = *(v8 + 72);
      sub_2576AAB64(v38 + v44 + v45 * v24, v71, type metadata accessor for SparseSupportVector);

      v46 = *(v25 + 16);
      if (v46)
      {
        v67 = v24;
        v73 = MEMORY[0x277D84F90];
        sub_257483674(0, v46, 0);
        v47 = v73;
        v48 = *(type metadata accessor for Proto_SparseVector(0) - 8);
        v49 = v25 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
        v50 = *(v48 + 72);
        v51 = v61;
        do
        {
          sub_2576AAB64(v49, v51, type metadata accessor for Proto_SparseVector);
          v73 = v47;
          v53 = *(v47 + 16);
          v52 = *(v47 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_257483674(v52 > 1, v53 + 1, 1);
            v47 = v73;
          }

          *(v47 + 16) = v53 + 1;
          sub_2576A9FA8(v51, v47 + v44 + v53 * v45, type metadata accessor for SparseSupportVector);
          v49 += v50;
          --v46;
        }

        while (v46);

        v24 = v67;
        a3 = v68;
        a2 = v72;
        v13 = v60;
        v25 = v70;
      }

      *&v69[v64] = ++v24;
      v54 = v71;
      __swift_storeEnumTagSinglePayload(v71, 0, 1, v66);
      v55 = v54;
      v56 = v65;
      sub_2576A9FA8(v55, v65, type metadata accessor for SparseSupportVector);
      sub_2576A9FA8(v56, a2, type metadata accessor for SparseSupportVector);
      if (v24 == a3)
      {
        goto LABEL_29;
      }

      a2 += v45;
      v26 = v62;
      v16 = v63;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2576A9D8C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a4 + 16);
    v11 = a3 - 1;
    while (1)
    {
      if (v10 == v9)
      {
        v6 = v10;
        goto LABEL_12;
      }

      if (v9 >= *(a4 + 16))
      {
        break;
      }

      v12 = a2 + v8;
      v13 = *(a4 + v8 + 40);
      v14 = *(a4 + v8 + 48);
      v15 = *(a4 + v8 + 56);
      v16 = *(a4 + v8 + 64);
      v17 = *(a4 + v8 + 72);
      *v12 = *(a4 + v8 + 32);
      *(v12 + 8) = v13;
      *(v12 + 16) = v14;
      *(v12 + 24) = v15;
      *(v12 + 32) = v16;
      *(v12 + 40) = v17;
      if (v11 == v9)
      {
        sub_257466F40(v13, v14, v15);

        goto LABEL_12;
      }

      sub_257466F40(v13, v14, v15);

      v8 += 48;
      ++v9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2576A9E7C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *result = a4;
    result[1] = a5;
    result[2] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v16 = a3;
    v17 = result;
    v7 = 0;
    v8 = *(a4 + 16);
    v9 = a3 - 1;
    v10 = (a4 + 40);
    for (i = (a5 + 48); ; i += 24)
    {
      if (v8 == v7)
      {
        a3 = v8;
        result = v17;
        goto LABEL_13;
      }

      if (v7 >= *(a4 + 16))
      {
        break;
      }

      if (v7 >= *(a5 + 16))
      {
        goto LABEL_15;
      }

      v12 = *v10;
      v13 = *(i - 2);
      v14 = *(i - 1);
      v15 = *i;
      *v6 = *(v10 - 1);
      *(v6 + 8) = v12;
      *(v6 + 16) = v13;
      *(v6 + 24) = v14;
      *(v6 + 32) = v15;
      if (v9 == v7)
      {

        sub_2576A8798(v13, v14, v15);
        a3 = v16;
        result = v17;
        goto LABEL_13;
      }

      v6 += 40;

      result = sub_2576A8798(v13, v14, v15);
      v10 += 2;
      ++v7;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2576A9FA8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_205();
  v5(v4);
  return a2;
}

uint64_t sub_2576AA004(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_2576AA05C(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v10 = 0;
    a3 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = result;
    v9 = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v25 = a4;
    while (1)
    {
      if (v9 >= a3)
      {
        goto LABEL_24;
      }

      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v13 >= v11)
          {
            v7 = 0;
            a3 = v9;
            result = v24;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v13);
          ++v10;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v13 = v10;
LABEL_15:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v13 << 6);
      v16 = (*(a4 + 48) + 16 * v15);
      v17 = v16[1];
      v18 = *(a4 + 56) + 24 * v15;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *v8 = *v16;
      *(v8 + 8) = v17;
      *(v8 + 16) = v19;
      *(v8 + 24) = v20;
      *(v8 + 32) = v21;
      v22 = a3;
      if (v12 == a3)
      {
        break;
      }

      v8 += 40;

      result = sub_2576AAC1C(v19, v20, v21);
      v9 = v12;
      v10 = v13;
      a4 = v25;
      a3 = v22;
    }

    sub_2576AAC1C(v19, v20, v21);
    v10 = v13;
    result = v24;
    a4 = v25;
    a3 = v22;
LABEL_19:
    v5 = v23;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_2576AA20C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = (v9 << 9) | (8 * __clz(__rbit64(v7)));
      v13 = *(*(a4 + 56) + v12);
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + v12);
      a2[1] = v13;
      a2 += 2;
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2576AA300(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = (*(a4 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = *(*(a4 + 56) + 8 * v16);
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      v11[2] = v19;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 3;

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

void *sub_2576AA460(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = v16 | (v15 << 6);
      v18 = *(*(a4 + 48) + 8 * v17);
      v19 = (*(a4 + 56) + 16 * v17);
      v21 = *v19;
      v20 = v19[1];
      *v11 = v18;
      v11[1] = v21;
      v11[2] = v20;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 3;

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

void *sub_2576AA5C0(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = (*(a4 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = *(*(a4 + 56) + 8 * v16);
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      v11[2] = v19;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 3;

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

void *sub_2576AA728(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
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
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v25 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v15 == v10)
      {
        break;
      }

      v11 += 4;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v25;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2576AA8B0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v52 = a7;
  v53 = a8;
  v50 = a5;
  v51 = a6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v46 = *(v49 - 8);
  v12 = MEMORY[0x28223BE20](v49);
  v48 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v47 = &v43 - v15;
  v16 = a4 + 64;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a4 + 64);
  if (!a2)
  {
    v21 = 0;
    a3 = 0;
LABEL_22:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v21;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v43 = -1 << *(a4 + 32);
    v44 = a1;
    v20 = 0;
    v21 = 0;
    v22 = (63 - v17) >> 6;
    v45 = a3;
    while (1)
    {
      if (v20 >= a3)
      {
        goto LABEL_25;
      }

      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_26;
      }

      if (!v19)
      {
        while (1)
        {
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v24 >= v22)
          {
            v19 = 0;
            a3 = v20;
            a1 = v44;
            goto LABEL_20;
          }

          v19 = *(v16 + 8 * v24);
          ++v21;
          if (v19)
          {
            v54 = a2;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v54 = a2;
      v24 = v21;
LABEL_16:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v24 << 6);
      v27 = a4;
      v28 = *(a4 + 48);
      v29 = *(a4 + 56);
      v30 = (v28 + 16 * v26);
      v31 = *v30;
      v32 = v30[1];
      v33 = v52(0);
      OUTLINED_FUNCTION_13(v33);
      v35 = v29 + *(v34 + 72) * v26;
      v36 = v48;
      sub_2576AAB64(v35, &v48[*(v49 + 48)], v53);
      *v36 = v31;
      v36[1] = v32;
      v37 = v36;
      v38 = v47;
      v40 = v50;
      v39 = v51;
      sub_2576AABC0(v37, v47, v50, v51);
      v41 = v38;
      v42 = v54;
      sub_2576AABC0(v41, v54, v40, v39);
      a3 = v45;
      if (v23 == v45)
      {
        break;
      }

      a2 = v42 + *(v46 + 72);

      v20 = v23;
      v21 = v24;
      a4 = v27;
    }

    v21 = v24;
    a1 = v44;
    a4 = v27;
LABEL_20:
    v17 = v43;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2576AAB64(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_205();
  v5(v4);
  return a2;
}

uint64_t sub_2576AABC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t sub_2576AAC1C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_257486740(result, a2);
  }

  if (a3 == 1)
  {
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2576AAC68(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2576AACA8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_3_52()
{
  *(v2 - 48) = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v0 + 0x20);

  return swift_unknownObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_6_39()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_30(unint64_t *a1)
{
  v4 = MEMORY[0x277D83958];

  return sub_25767A50C(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_12_29()
{
  *(v0 - 48) = 0;
  *(v0 - 40) = 0xE000000000000000;

  return sub_257743834();
}

uint64_t OUTLINED_FUNCTION_13_20()
{
}

void OUTLINED_FUNCTION_16_16()
{

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_17_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2577438D4();
}

uint64_t OUTLINED_FUNCTION_23_18@<X0>(uint64_t (*a1)(void)@<X6>, void (*a2)(void)@<X7>, uint64_t a3@<X8>, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_2576AA8B0(va, v4 + a3, v5, v6, v7, v8, a1, a2);
}

void OUTLINED_FUNCTION_31_9()
{

  JUMPOUT(0x259C64E90);
}

void OUTLINED_FUNCTION_33_10()
{

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_34_10()
{

  return sub_257743604();
}

uint64_t OUTLINED_FUNCTION_35_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2576A7944(a1, a2, a3, v4, v3, v5);
}

uint64_t OUTLINED_FUNCTION_36_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{

  return sub_2576A8DF8(v8, v6 + 32, v7, v9, v10, a6);
}

void OUTLINED_FUNCTION_40_9()
{
  v1 = *(v0 - 40);
  *(v0 - 48) = *(v0 - 48);
  *(v0 - 40) = v1;
}

uint64_t OUTLINED_FUNCTION_45_7()
{

  return sub_2576AA004(v1, v0);
}

Swift::Void __swiftcall Model.rename(feature:to:)(Swift::String feature, Swift::String to)
{
  v835 = to;
  v852 = feature;
  v5 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_196();
  v10 = OUTLINED_FUNCTION_38_0(v9);
  v819 = type metadata accessor for MLProgram.Function(v10);
  v11 = OUTLINED_FUNCTION_13(v819);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = type metadata accessor for MLProgram(v13);
  v15 = OUTLINED_FUNCTION_13(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_1();
  v17 = OUTLINED_FUNCTION_38_0(v16);
  v18 = type metadata accessor for NeuralNetwork(v17);
  v19 = OUTLINED_FUNCTION_13(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12_1();
  v21 = OUTLINED_FUNCTION_38_0(v20);
  v22 = type metadata accessor for NeuralNetworkRegressor(v21);
  v23 = OUTLINED_FUNCTION_13(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12_1();
  v25 = OUTLINED_FUNCTION_38_0(v24);
  v26 = type metadata accessor for Proto_NeuralNetworkPreprocessing(v25);
  v27 = OUTLINED_FUNCTION_24(v26);
  v851 = v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_196();
  v32 = OUTLINED_FUNCTION_38_0(v31);
  v33 = type metadata accessor for NeuralNetwork.Preprocessor(v32);
  v34 = OUTLINED_FUNCTION_24(v33);
  v853 = v35;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25_0();
  v841 = v36;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_167();
  v840 = v39;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_167();
  v850 = v42;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_167();
  v839 = v44;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_196();
  v47 = OUTLINED_FUNCTION_38_0(v46);
  v48 = type metadata accessor for NeuralNetwork.Layer(v47);
  v49 = OUTLINED_FUNCTION_24(v48);
  v823 = v50;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v53);
  v55 = (&v810 - v54);
  v56 = type metadata accessor for Proto_NeuralNetworkLayer(0);
  v57 = OUTLINED_FUNCTION_24(v56);
  v854 = v58;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_25_0();
  v847 = v59;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_167();
  v846 = v61;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_196();
  v845 = v63;
  v64 = type metadata accessor for NeuralNetworkClassifier(0);
  v65 = OUTLINED_FUNCTION_13(v64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_12_1();
  v67 = OUTLINED_FUNCTION_38_0(v66);
  v68 = type metadata accessor for Proto_Model(v67);
  v69 = OUTLINED_FUNCTION_24(v68);
  v843 = v70;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_12_1();
  v844 = v71;
  v72 = type metadata accessor for Model(0);
  v73 = OUTLINED_FUNCTION_24(v72);
  v849 = v74;
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_25_0();
  v838 = v75;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_196();
  v78 = OUTLINED_FUNCTION_38_0(v77);
  v79 = type metadata accessor for PipelineConfiguration(v78);
  v80 = OUTLINED_FUNCTION_13(v79);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_12_1();
  v82 = OUTLINED_FUNCTION_38_0(v81);
  v83 = type metadata accessor for PipelineRegressorConfiguration(v82);
  v84 = OUTLINED_FUNCTION_13(v83);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_12_1();
  v86 = OUTLINED_FUNCTION_38_0(v85);
  v87 = type metadata accessor for PipelineClassifierConfiguration(v86);
  v88 = OUTLINED_FUNCTION_13(v87);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_12_1();
  v90 = OUTLINED_FUNCTION_38_0(v89);
  v91 = type metadata accessor for ItemSimilarityRecommenderConfiguration(v90);
  v92 = OUTLINED_FUNCTION_13(v91);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_12_1();
  v94 = OUTLINED_FUNCTION_38_0(v93);
  v95 = type metadata accessor for WordTaggerConfiguration(v94);
  v96 = OUTLINED_FUNCTION_13(v95);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_12_1();
  v98 = OUTLINED_FUNCTION_38_0(v97);
  v99 = type metadata accessor for NonMaximumSuppressorConfiguration(v98);
  v100 = OUTLINED_FUNCTION_13(v99);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_12_1();
  v814 = v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v103 = OUTLINED_FUNCTION_13(v102);
  MEMORY[0x28223BE20](v103);
  v105 = OUTLINED_FUNCTION_38_0(&v810 - v104);
  v106 = type metadata accessor for Proto_FeatureVectorizer.InputColumn(v105);
  v107 = OUTLINED_FUNCTION_24(v106);
  v837 = v108;
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_12_1();
  v110 = OUTLINED_FUNCTION_38_0(v109);
  v111 = type metadata accessor for FeatureVectorizerConfiguration.Input(v110);
  v112 = OUTLINED_FUNCTION_24(v111);
  v848 = v113;
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_167();
  v842 = v115;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_196();
  v118 = OUTLINED_FUNCTION_38_0(v117);
  v119 = type metadata accessor for FeatureVectorizerConfiguration(v118);
  v120 = OUTLINED_FUNCTION_13(v119);
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_12_1();
  v122 = OUTLINED_FUNCTION_38_0(v121);
  v825 = type metadata accessor for ModelKind(v122);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_196();
  v126 = OUTLINED_FUNCTION_38_0(v125);
  v127 = type metadata accessor for FeatureDescription(v126);
  v128 = OUTLINED_FUNCTION_24(v127);
  LOBYTE(v130) = v129;
  v131 = MEMORY[0x28223BE20](v128);
  v133 = &v810 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v131);
  v135 = &v810 - v134;
  v834 = v2;
  Model.inputs.getter();
  v137 = v136;
  v138 = v136[2];
  v821 = 0;
  while (1)
  {
    if (v138 == v5)
    {

      OUTLINED_FUNCTION_34_11();
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_56_3();
    if (v142)
    {
      __break(1u);
LABEL_412:
      __break(1u);
LABEL_413:
      __break(1u);
      goto LABEL_414;
    }

    OUTLINED_FUNCTION_68_2();
    v4 = v143 * v5;
    OUTLINED_FUNCTION_42_12();
    sub_2576AF17C(v144 + v4, v135, v145);
    OUTLINED_FUNCTION_49_6();
    v148 = v148 && v146 == v147;
    if (v148)
    {
      break;
    }

    v149 = sub_257743994();
    OUTLINED_FUNCTION_10_35();
    sub_2576AF1DC(v135, v150);
    if (v149)
    {
      goto LABEL_12;
    }

    ++v5;
  }

  OUTLINED_FUNCTION_10_35();
  sub_2576AF1DC(v135, v151);
LABEL_12:

  OUTLINED_FUNCTION_34_11();
  Model.inputs.getter();
  v137 = v152;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_13;
  }

LABEL_414:
  sub_25767A6C4(v137, v139, v140, v141);
  v137 = v808;
LABEL_13:
  sub_2576AF100(v5, v137);
  OUTLINED_FUNCTION_27_16((v137 + v3 + v4));

  OUTLINED_FUNCTION_34_11();
  Model.inputs.setter();
LABEL_14:
  Model.outputs.getter();
  v137 = v153;
  v5 = 0;
  v4 = v153[2];
  while (1)
  {
    if (v4 == v5)
    {

      OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_73_0();
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_56_3();
    if (v142)
    {
      goto LABEL_412;
    }

    OUTLINED_FUNCTION_68_2();
    v155 = v154 * v5;
    OUTLINED_FUNCTION_42_12();
    sub_2576AF17C(v156 + v155, v133, v157);
    OUTLINED_FUNCTION_49_6();
    if (v148 && v158 == v159)
    {
      break;
    }

    v161 = sub_257743994();
    OUTLINED_FUNCTION_10_35();
    sub_2576AF1DC(v133, v162);
    if (v161)
    {
      goto LABEL_25;
    }

    ++v5;
  }

  OUTLINED_FUNCTION_10_35();
  sub_2576AF1DC(v133, v163);
LABEL_25:

  OUTLINED_FUNCTION_34_11();
  Model.outputs.getter();
  v165 = v164;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25767A6C4(v165, v166, v167, v168);
    v165 = v809;
  }

  OUTLINED_FUNCTION_73_0();
  sub_2576AF100(v5, v165);
  v169 = (v165 + v3 + v155);
  v130 = v169[1];
  OUTLINED_FUNCTION_27_16(v169);

  OUTLINED_FUNCTION_34_11();
  Model.outputs.setter();
LABEL_28:
  Model.predictedFeatureName.getter();
  OUTLINED_FUNCTION_49_6();
  v173 = v148 && v171 == v172;
  v174 = v822;
  if (v173)
  {

    OUTLINED_FUNCTION_34_11();
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_59_2(v170);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_34_11();
  if (v130)
  {
LABEL_35:

    Model.predictedFeatureName.setter();
  }

  Model.predictedProbabilitiesName.getter();
  v176 = v175;
  OUTLINED_FUNCTION_49_6();
  if (v148 && v178 == v179)
  {

    OUTLINED_FUNCTION_34_11();
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_59_2(v177);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_34_11();
  if (v130)
  {
LABEL_43:

    Model.predictedProbabilitiesName.setter();
  }

  Model.kind.getter();
  OUTLINED_FUNCTION_35_11();
  v130 = v176;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_392();
      sub_2576AF11C(v421, v422, v423);
      PipelineRegressorConfiguration.models.getter();
      v425 = *(v424 + 16);

      if (!v425)
      {
        goto LABEL_303;
      }

      v427 = 0;
      while (1)
      {
        PipelineRegressorConfiguration.models.getter();
        v429 = v428;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25767A694(v429, v430, v431, v432);
          v429 = v435;
        }

        if (v427 >= *(v429 + 16))
        {
          goto LABEL_419;
        }

        OUTLINED_FUNCTION_12_30();
        v433._countAndFlagsBits = OUTLINED_FUNCTION_11_31();
        Model.rename(feature:to:)(v433, v434);
        PipelineRegressorConfiguration.models.setter(v429);
        if (v425 == ++v427)
        {
LABEL_303:
          OUTLINED_FUNCTION_45_8(v3, v426, type metadata accessor for PipelineRegressorConfiguration);
          OUTLINED_FUNCTION_29_15();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_20_17();
          sub_25746EEC4(v606, v607, v608, v609, v610, v611, v612, v613, v810, v811, v812, v813, v814, v815, v816, v817, v818, v819, v820, v821);
          v614 = type metadata accessor for Proto_Model.OneOf_Type(0);
          OUTLINED_FUNCTION_5_41(v614);
          OUTLINED_FUNCTION_34_11();
          sub_2574FE574();
          OUTLINED_FUNCTION_0_73();
          sub_2576AF1DC(v425, v615);
          v605 = type metadata accessor for PipelineRegressorConfiguration;
          goto LABEL_304;
        }
      }

    case 2u:
      v270 = OUTLINED_FUNCTION_31_10();
      sub_2576AF11C(v270, v133, v271);
      v272 = *(PipelineConfiguration.models.getter() + 16);

      if (!v272)
      {
        goto LABEL_339;
      }

      v274 = v133;
      v275 = 0;
      v276 = *v274;
      v277 = MEMORY[0x277D84F90];
      while (1)
      {
        v278 = *(v276 + 16);
        if (v278)
        {
          OUTLINED_FUNCTION_39_11(v277);
          sub_257695CE0(v278);
          OUTLINED_FUNCTION_12_30();
          v280 = v276 + v279;
          v282 = *(v281 + 72);
          v283 = v830;
          do
          {
            OUTLINED_FUNCTION_40_10();
            sub_2576AF17C(v280, v283, v284);
            v285 = v855;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v286 = OUTLINED_FUNCTION_8_31();
              sub_257483F38(v286, v287, v288);
              v283 = v830;
              v285 = v855;
            }

            v290 = *(v285 + 16);
            v289 = *(v285 + 24);
            if (v290 >= v289 >> 1)
            {
              v293 = OUTLINED_FUNCTION_16_17(v289);
              sub_257483F38(v293, v290 + 1, 1);
              v283 = v830;
              v285 = v855;
            }

            *(v285 + 16) = v290 + 1;
            OUTLINED_FUNCTION_12_30();
            sub_2576AF11C(v283, v285 + v291 + *(v292 + 72) * v290, type metadata accessor for Model);
            v280 += v282;
            --v278;
          }

          while (v278);
        }

        else
        {
          v285 = v277;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25767A694(v285, v294, v295, v296);
          v285 = v318;
        }

        if (v275 >= *(v285 + 16))
        {
          goto LABEL_416;
        }

        OUTLINED_FUNCTION_12_30();
        v174 = v285 + v297;
        v299 = *(v298 + 72);
        v300._countAndFlagsBits = OUTLINED_FUNCTION_11_31();
        Model.rename(feature:to:)(v300, v301);
        v302 = *(v285 + 16);
        if (v302)
        {
          OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
          sub_257695D70(v302);
          do
          {
            v303 = OUTLINED_FUNCTION_31_10();
            v304 = v838;
            sub_2576AF17C(v303, v838, v305);
            OUTLINED_FUNCTION_40_10();
            OUTLINED_FUNCTION_75_5(v306, v307, v308);
            sub_2576AF1DC(v304, type metadata accessor for Model);
            OUTLINED_FUNCTION_52_5();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v309 = OUTLINED_FUNCTION_7_32();
              sub_257484E38(v309, v310, v311);
              v304 = v855;
            }

            v313 = *(v304 + 16);
            v312 = *(v304 + 24);
            if (v313 >= v312 >> 1)
            {
              v317 = OUTLINED_FUNCTION_16_17(v312);
              sub_257484E38(v317, v313 + 1, 1);
              v304 = v855;
            }

            *(v304 + 16) = v313 + 1;
            OUTLINED_FUNCTION_6_40();
            sub_2576AF11C(v316, v314 + v315 * v313, type metadata accessor for Proto_Model);
            v174 += v299;
            --v302;
          }

          while (v302);

          v276 = v304;
          v277 = MEMORY[0x277D84F90];
        }

        else
        {

          v277 = MEMORY[0x277D84F90];
          v276 = MEMORY[0x277D84F90];
        }

        if (++v275 == v272)
        {
          v133 = v824;
          *v824 = v276;
LABEL_339:
          OUTLINED_FUNCTION_58_1(v133, v273, type metadata accessor for PipelineConfiguration);
          OUTLINED_FUNCTION_35_11();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_20_17();
          sub_25746EEC4(v688, v689, v690, v691, v692, v693, v694, v695, v810, v811, v812, v813, v814, v815, v816, v817, v818, v819, v820, v821);
          v696 = type metadata accessor for Proto_Model.OneOf_Type(0);
          OUTLINED_FUNCTION_5_41(v696);
          sub_2574FE574();
          OUTLINED_FUNCTION_0_73();
          sub_2576AF1DC(v174, v697);
          v627 = type metadata accessor for PipelineConfiguration;
          goto LABEL_340;
        }
      }

    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
      v181 = type metadata accessor for ModelKind;
      goto LABEL_46;
    case 7u:
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_38_6();
      sub_2576AF11C(v319, v320, v321);
      v322 = *(FeatureVectorizerConfiguration.inputs.getter() + 16);

      if (!v322)
      {
        goto LABEL_306;
      }

      v324 = 0;
      while (2)
      {
        v325 = *v827;
        v326 = *(*v827 + 16);
        if (v326)
        {
          OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
          sub_257695CF8(v326);
          OUTLINED_FUNCTION_12_30();
          v55 = (v325 + v327);
          v329 = *(v328 + 72);
          v330 = v855;
          v174 = v842;
          do
          {
            OUTLINED_FUNCTION_41_11();
            sub_2576AF17C(v55, v174, v331);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v332 = OUTLINED_FUNCTION_7_32();
              sub_2574840A0(v332, v333, v334);
              v330 = v855;
            }

            v133 = v330[2];
            v335 = v330[3];
            if (v133 >= v335 >> 1)
            {
              v338 = OUTLINED_FUNCTION_16_17(v335);
              sub_2574840A0(v338, v133 + 1, 1);
              v330 = v855;
            }

            v330[2] = v133 + 1;
            OUTLINED_FUNCTION_6_40();
            v174 = v842;
            sub_2576AF11C(v842, v336 + v337 * v133, type metadata accessor for FeatureVectorizerConfiguration.Input);
            v55 = (v55 + v329);
            --v326;
          }

          while (v326);
        }

        OUTLINED_FUNCTION_56_3();
        if (v142)
        {
          goto LABEL_421;
        }

        OUTLINED_FUNCTION_28_19();
        OUTLINED_FUNCTION_44_7();
        OUTLINED_FUNCTION_261();
        sub_2576AF17C(v339, v340, v341);

        v130 = *v55;
        v342 = v55[1];

        OUTLINED_FUNCTION_43_10();
        sub_2576AF1DC(v55, v343);
        OUTLINED_FUNCTION_72_3();
        if (v148 && v342 == v344)
        {
        }

        else
        {
          OUTLINED_FUNCTION_57_0();
          OUTLINED_FUNCTION_71_3();
          if ((v130 & 1) == 0)
          {
            goto LABEL_164;
          }
        }

        v130 = FeatureVectorizerConfiguration.inputs.getter();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25767A6AC(v130, v346, v347, v348);
          v130 = v365;
        }

        OUTLINED_FUNCTION_74_1();
        if (v142)
        {
          goto LABEL_425;
        }

        v55 = (v130 + v174);
        v349 = (v130 + v174 + v133 * v324);
        v350 = v349[1];
        OUTLINED_FUNCTION_27_16(v349);

        v351 = *(v130 + 16);
        if (v351)
        {
          OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
          sub_257695D88(v351);
          v174 = v836;
          do
          {
            OUTLINED_FUNCTION_44_7();
            OUTLINED_FUNCTION_38_6();
            sub_2576AF17C(v352, v353, v354);
            OUTLINED_FUNCTION_41_11();
            sub_2576AF17C(v350, v174, v355);
            OUTLINED_FUNCTION_43_10();
            sub_2576AF1DC(v350, v356);
            OUTLINED_FUNCTION_52_5();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v357 = OUTLINED_FUNCTION_7_32();
              sub_257484ED0(v357, v358, v359);
              v350 = v855;
            }

            v361 = *(v350 + 16);
            v360 = *(v350 + 24);
            if (v361 >= v360 >> 1)
            {
              v364 = OUTLINED_FUNCTION_16_17(v360);
              sub_257484ED0(v364, v361 + 1, 1);
              v350 = v855;
            }

            *(v350 + 16) = v361 + 1;
            OUTLINED_FUNCTION_6_40();
            v174 = v836;
            sub_2576AF11C(v836, v362 + v363 * v361, type metadata accessor for Proto_FeatureVectorizer.InputColumn);
            v55 = (v55 + v133);
            --v351;
          }

          while (v351);
        }

        else
        {

          v350 = MEMORY[0x277D84F90];
        }

        *v827 = v350;
LABEL_164:
        if (++v324 == v322)
        {
LABEL_306:
          v174 = v827;
          OUTLINED_FUNCTION_45_8(v827, v323, type metadata accessor for FeatureVectorizerConfiguration);
          OUTLINED_FUNCTION_29_15();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_20_17();
          sub_25746EEC4(v628, v629, v630, v631, v632, v633, v634, v635, v810, v811, v812, v813, v814, v815, v816, v817, v818, v819, v820, v821);
          v636 = type metadata accessor for Proto_Model.OneOf_Type(0);
          OUTLINED_FUNCTION_5_41(v636);
          OUTLINED_FUNCTION_34_11();
          sub_2574FE574();
          OUTLINED_FUNCTION_0_73();
          sub_2576AF1DC(v130, v637);
          v181 = type metadata accessor for FeatureVectorizerConfiguration;
          goto LABEL_46;
        }

        continue;
      }

    case 0xEu:
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_261();
      sub_2576AF11C(v184, v185, v186);
      v187 = type metadata accessor for Proto_NonMaximumSuppression(0);
      v188 = (v55 + v187[8]);
      v189 = v188[1];
      OUTLINED_FUNCTION_49_6();
      v192 = v148 && v189 == v191;
      if (v192 || (OUTLINED_FUNCTION_59_2(v190) & 1) != 0)
      {
        OUTLINED_FUNCTION_50_6();

        OUTLINED_FUNCTION_18_28();
        *v188 = v193;
        v188[1] = v174;
      }

      v194 = OUTLINED_FUNCTION_48_4(v187[9]);
      v196 = v148 && v189 == v195;
      if (v196 || (OUTLINED_FUNCTION_59_2(v194) & 1) != 0)
      {
        OUTLINED_FUNCTION_50_6();

        OUTLINED_FUNCTION_18_28();
        *v188 = v197;
        v188[1] = v174;
      }

      v198 = OUTLINED_FUNCTION_48_4(v187[10]);
      v200 = v148 && v189 == v199;
      if (v200 || (OUTLINED_FUNCTION_59_2(v198) & 1) != 0)
      {
        OUTLINED_FUNCTION_50_6();

        OUTLINED_FUNCTION_18_28();
        *v188 = v201;
        v188[1] = v174;
      }

      v202 = OUTLINED_FUNCTION_48_4(v187[11]);
      v204 = v148 && v189 == v203;
      if (v204 || (OUTLINED_FUNCTION_59_2(v202) & 1) != 0)
      {
        OUTLINED_FUNCTION_50_6();

        OUTLINED_FUNCTION_18_28();
        *v188 = v205;
        v188[1] = v174;
      }

      v206 = OUTLINED_FUNCTION_48_4(v187[12]);
      v208 = v148 && v189 == v207;
      if (v208 || (v209 = OUTLINED_FUNCTION_59_2(v206), countAndFlagsBits = v852._countAndFlagsBits, object = v852._object, (v209 & 1) != 0))
      {
        OUTLINED_FUNCTION_50_6();

        OUTLINED_FUNCTION_18_28();
        *v188 = v212;
        v188[1] = v174;
      }

      v213 = (v55 + v187[13]);
      v214 = *v213 == countAndFlagsBits && v213[1] == object;
      if (v214 || (OUTLINED_FUNCTION_55_5(*v213) & 1) != 0)
      {
        v188 = v835._object;

        OUTLINED_FUNCTION_306();
        *v213 = v215;
        v213[1] = v188;
      }

      v216 = OUTLINED_FUNCTION_64_5();
      OUTLINED_FUNCTION_45_8(v216, v217, v218);
      OUTLINED_FUNCTION_29_15();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_20_17();
      sub_25746EEC4(v219, v220, v221, v222, v223, v224, v225, v226, v810, v811, v812, v813, v814, v815, v816, v817, v818, v819, v820, v821);
      v227 = type metadata accessor for Proto_Model.OneOf_Type(0);
      OUTLINED_FUNCTION_5_41(v227);
      OUTLINED_FUNCTION_34_11();
      sub_2574FE574();
      OUTLINED_FUNCTION_0_73();
      sub_2576AF1DC(v188, v228);
      v229 = type metadata accessor for NonMaximumSuppressorConfiguration;
      goto LABEL_266;
    case 0x17u:
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_261();
      sub_2576AF11C(v436, v437, v438);
      v439 = v55[4];
      OUTLINED_FUNCTION_49_6();
      v442 = v148 && v439 == v441;
      if (v442 || (v443 = OUTLINED_FUNCTION_55_5(v440), v444 = v852._countAndFlagsBits, v445 = v852._object, (v443 & 1) != 0))
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_18_28();
        v55[3] = v446;
        v55[4] = v176;
      }

      v447 = v55[5];
      v448 = v447 == v444 && v55[6] == v445;
      if (v448 || (v449 = OUTLINED_FUNCTION_55_5(v447), v450 = v852._countAndFlagsBits, v451 = v852._object, (v449 & 1) != 0))
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_18_28();
        v55[5] = v452;
        v55[6] = v176;
      }

      v453 = v55[7];
      v454 = v453 == v450 && v55[8] == v451;
      if (v454 || (v455 = OUTLINED_FUNCTION_55_5(v453), v456 = v852._countAndFlagsBits, v457 = v852._object, (v455 & 1) != 0))
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_18_28();
        v55[7] = v458;
        v55[8] = v176;
      }

      v459 = v55[9];
      v460 = v459 == v456 && v55[10] == v457;
      if (v460 || (OUTLINED_FUNCTION_55_5(v459) & 1) != 0)
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_306();
        v55[9] = v461;
        v55[10] = v176;
      }

      v462 = OUTLINED_FUNCTION_64_5();
      OUTLINED_FUNCTION_58_1(v462, v463, v464);
      OUTLINED_FUNCTION_35_11();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_20_17();
      sub_25746EEC4(v465, v466, v467, v468, v469, v470, v471, v472, v810, v811, v812, v813, v814, v815, v816, v817, v818, v819, v820, v821);
      v473 = type metadata accessor for Proto_Model.OneOf_Type(0);
      OUTLINED_FUNCTION_5_41(v473);
      sub_2574FE574();
      OUTLINED_FUNCTION_0_73();
      sub_2576AF1DC(v174, v474);
      v229 = type metadata accessor for WordTaggerConfiguration;
      goto LABEL_266;
    case 0x1Bu:
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_261();
      sub_2576AF11C(v475, v476, v477);
      v478 = v55[2];
      OUTLINED_FUNCTION_49_6();
      v481 = v148 && v478 == v480;
      if (v481 || (v482 = OUTLINED_FUNCTION_55_5(v479), v483 = v852._countAndFlagsBits, v484 = v852._object, (v482 & 1) != 0))
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_18_28();
        v55[1] = v485;
        v55[2] = v176;
      }

      v486 = v55[3];
      v487 = v486 == v483 && v55[4] == v484;
      if (v487 || (v488 = OUTLINED_FUNCTION_55_5(v486), v489 = v852._countAndFlagsBits, v490 = v852._object, (v488 & 1) != 0))
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_18_28();
        v55[3] = v491;
        v55[4] = v176;
      }

      v492 = v55[5];
      v493 = v492 == v489 && v55[6] == v490;
      if (v493 || (v494 = OUTLINED_FUNCTION_55_5(v492), v495 = v852._countAndFlagsBits, v496 = v852._object, (v494 & 1) != 0))
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_18_28();
        v55[5] = v497;
        v55[6] = v176;
      }

      v498 = v55[7];
      v499 = v498 == v495 && v55[8] == v496;
      if (v499 || (v500 = OUTLINED_FUNCTION_55_5(v498), v501 = v852._countAndFlagsBits, v502 = v852._object, (v500 & 1) != 0))
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_18_28();
        v55[7] = v503;
        v55[8] = v176;
      }

      v504 = v55[9];
      v505 = v504 == v501 && v55[10] == v502;
      if (v505 || (v506 = OUTLINED_FUNCTION_55_5(v504), v507 = v852._countAndFlagsBits, v508 = v852._object, (v506 & 1) != 0))
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_18_28();
        v55[9] = v509;
        v55[10] = v176;
      }

      v510 = v55[11];
      v511 = v510 == v507 && v55[12] == v508;
      if (v511 || (OUTLINED_FUNCTION_55_5(v510) & 1) != 0)
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_306();
        v55[11] = v512;
        v55[12] = v176;
      }

      v513 = OUTLINED_FUNCTION_64_5();
      OUTLINED_FUNCTION_58_1(v513, v514, v515);
      OUTLINED_FUNCTION_35_11();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_20_17();
      sub_25746EEC4(v516, v517, v518, v519, v520, v521, v522, v523, v810, v811, v812, v813, v814, v815, v816, v817, v818, v819, v820, v821);
      v524 = type metadata accessor for Proto_Model.OneOf_Type(0);
      OUTLINED_FUNCTION_5_41(v524);
      sub_2574FE574();
      OUTLINED_FUNCTION_0_73();
      sub_2576AF1DC(v174, v525);
      v229 = type metadata accessor for ItemSimilarityRecommenderConfiguration;
LABEL_266:
      v182 = v229;
      v183 = v55;
      goto LABEL_47;
    case 0x1Cu:
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_38_6();
      sub_2576AF11C(v366, v367, v368);
      v369 = *(NeuralNetwork.layers.getter() + 16);

      v848 = v369;
      if (!v369)
      {
        goto LABEL_341;
      }

      v133 = 0;
      v370 = *v176;
      v174 = MEMORY[0x277D84F90];
      do
      {
        v371 = v370[2];
        v849 = v370;
        if (v371)
        {
          OUTLINED_FUNCTION_70_5();
          OUTLINED_FUNCTION_12_30();
          v373 = v370 + v372;
          v375 = *(v374 + 72);
          v376 = v833;
          do
          {
            OUTLINED_FUNCTION_2_47();
            sub_2576AF17C(v373, v376, v377);
            v174 = v855;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v378 = OUTLINED_FUNCTION_8_31();
              sub_2574841E8(v378, v379, v380);
              OUTLINED_FUNCTION_54_5();
            }

            OUTLINED_FUNCTION_53_4();
            if (v142)
            {
              v382 = OUTLINED_FUNCTION_13_21(v381);
              sub_2574841E8(v382, v383, v384);
              OUTLINED_FUNCTION_54_5();
            }

            OUTLINED_FUNCTION_17_20();
            v373 += v375;
            --v371;
          }

          while (v371);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25767A67C(v174, v385, v386, v387);
          v174 = v405;
        }

        if (!*(v174 + 16))
        {
          goto LABEL_417;
        }

        OUTLINED_FUNCTION_30_12();
        v3 = v174 + v388;
        v130 = *(v4 + 72);
        v389 = (v174 + v388);
        v390 = OUTLINED_FUNCTION_11_31();
        sub_2576ADC50(v390, v391, v392, v393);
        v394 = *(v174 + 16);
        if (v394)
        {
          OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
          sub_257695D40(v394);
          v395 = v847;
          do
          {
            OUTLINED_FUNCTION_25_16();
            OUTLINED_FUNCTION_2_47();
            sub_2576AF17C(v55, v395, v396);
            OUTLINED_FUNCTION_26_12();
            OUTLINED_FUNCTION_52_5();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v397 = OUTLINED_FUNCTION_7_32();
              sub_2574843E0(v397, v398, v399);
              v389 = v855;
            }

            v395 = v389[2];
            OUTLINED_FUNCTION_53_4();
            if (v142)
            {
              v402 = OUTLINED_FUNCTION_13_21(v400);
              sub_2574843E0(v402, v403, v404);
              v389 = v855;
            }

            v389[2] = v5;
            OUTLINED_FUNCTION_6_40();
            OUTLINED_FUNCTION_23_19(v401);
            v3 += v130;
            --v394;
          }

          while (v394);

          v370 = v389;
          v174 = MEMORY[0x277D84F90];
        }

        else
        {

          v174 = MEMORY[0x277D84F90];
          v370 = MEMORY[0x277D84F90];
        }

        OUTLINED_FUNCTION_62_6();
        v176 = v829;
      }

      while (!v148);
      *v829 = v370;
LABEL_341:
      v698 = *(NeuralNetwork.preprocessors.getter() + 16);

      OUTLINED_FUNCTION_66_5();
      v854 = v698;
      if (v698)
      {
        for (i = 0; i != v854; ++i)
        {
          v701 = *(v176[1] + 16);
          if (v701)
          {
            OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
            sub_257695D28(v701);
            OUTLINED_FUNCTION_12_30();
            OUTLINED_FUNCTION_60_3();
            v702 = v841;
            do
            {
              OUTLINED_FUNCTION_1_56();
              sub_2576AF17C(v174, v702, v703);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v704 = OUTLINED_FUNCTION_7_32();
                sub_257484240(v704, v705, v706);
                v176 = v855;
              }

              OUTLINED_FUNCTION_61_4();
              if (v142)
              {
                v710 = OUTLINED_FUNCTION_16_17(v707);
                sub_257484240(v710, v702, 1);
                v176 = v855;
              }

              v176[2] = v702;
              OUTLINED_FUNCTION_6_40();
              OUTLINED_FUNCTION_19_24();
              v702 = v841;
              sub_2576AF11C(v841, v708, v709);
              v174 += v3;
              --v701;
            }

            while (v701);
          }

          OUTLINED_FUNCTION_56_3();
          if (v142)
          {
            goto LABEL_423;
          }

          OUTLINED_FUNCTION_28_19();
          v711 = v133 * i;
          OUTLINED_FUNCTION_4_40();
          OUTLINED_FUNCTION_392();
          sub_2576AF17C(v712, v713, v714);

          v130 = *v3;
          v176 = *(v3 + 8);

          OUTLINED_FUNCTION_3_53();
          sub_2576AF1DC(v3, v715);
          OUTLINED_FUNCTION_72_3();
          if (v148 && v176 == v716)
          {

            OUTLINED_FUNCTION_66_5();
          }

          else
          {
            OUTLINED_FUNCTION_57_0();
            OUTLINED_FUNCTION_71_3();
            OUTLINED_FUNCTION_66_5();
            if ((v130 & 1) == 0)
            {
              continue;
            }
          }

          v130 = NeuralNetwork.preprocessors.getter();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25767A664(v130, v718, v719, v720);
            v130 = v737;
          }

          OUTLINED_FUNCTION_74_1();
          if (v142)
          {
            goto LABEL_427;
          }

          v174 += v130;
          v176 = *(v174 + v711 + 8);
          OUTLINED_FUNCTION_27_16((v174 + v711));

          v721 = *(v130 + 16);
          if (v721)
          {
            OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
            sub_257695D58(v721);
            do
            {
              OUTLINED_FUNCTION_4_40();
              OUTLINED_FUNCTION_69_2(v722, v723, v724);
              OUTLINED_FUNCTION_1_56();
              OUTLINED_FUNCTION_75_5(v725, v726, v727);
              OUTLINED_FUNCTION_3_53();
              sub_2576AF1DC(v176, v728);
              v729 = v855;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v730 = OUTLINED_FUNCTION_8_31();
                sub_257484438(v730, v731, v732);
                v729 = v855;
              }

              v734 = v729[2];
              v733 = v729[3];
              v3 = v734 + 1;
              if (v734 >= v733 >> 1)
              {
                v736 = OUTLINED_FUNCTION_16_17(v733);
                sub_257484438(v736, v734 + 1, 1);
                v729 = v855;
              }

              v729[2] = v3;
              OUTLINED_FUNCTION_12_30();
              OUTLINED_FUNCTION_21_21(v729 + v735);
              v174 += v133;
              --v721;
            }

            while (v721);
          }

          else
          {

            v729 = MEMORY[0x277D84F90];
          }

          OUTLINED_FUNCTION_66_5();
          v176[1] = v729;
        }
      }

      v174 = v176;
      OUTLINED_FUNCTION_45_8(v176, v699, type metadata accessor for NeuralNetwork);
      OUTLINED_FUNCTION_29_15();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_20_17();
      sub_25746EEC4(v738, v739, v740, v741, v742, v743, v744, v745, v810, v811, v812, v813, v814, v815, v816, v817, v818, v819, v820, v821);
      v746 = type metadata accessor for Proto_Model.OneOf_Type(0);
      OUTLINED_FUNCTION_5_41(v746);
      OUTLINED_FUNCTION_34_11();
      sub_2574FE574();
      OUTLINED_FUNCTION_0_73();
      sub_2576AF1DC(v130, v747);
      v181 = type metadata accessor for NeuralNetwork;
      goto LABEL_46;
    case 0x1Du:
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_38_6();
      sub_2576AF11C(v554, v555, v556);
      v557 = *(NeuralNetworkClassifier.layers.getter() + 16);

      v848 = v557;
      if (!v557)
      {
        goto LABEL_373;
      }

      v133 = 0;
      v558 = *v176;
      v559 = MEMORY[0x277D84F90];
      do
      {
        v560 = v558[2];
        v849 = v558;
        if (v560)
        {
          OUTLINED_FUNCTION_70_5();
          OUTLINED_FUNCTION_12_30();
          v562 = v558 + v561;
          v564 = *(v563 + 72);
          v565 = v831;
          do
          {
            OUTLINED_FUNCTION_2_47();
            sub_2576AF17C(v562, v565, v566);
            v559 = v855;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v567 = OUTLINED_FUNCTION_8_31();
              sub_2574841E8(v567, v568, v569);
              OUTLINED_FUNCTION_54_5();
            }

            OUTLINED_FUNCTION_53_4();
            if (v142)
            {
              v571 = OUTLINED_FUNCTION_13_21(v570);
              sub_2574841E8(v571, v572, v573);
              OUTLINED_FUNCTION_54_5();
            }

            OUTLINED_FUNCTION_17_20();
            v562 += v564;
            --v560;
          }

          while (v560);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25767A67C(v559, v574, v575, v576);
          v559 = v594;
        }

        if (!*(v559 + 16))
        {
          goto LABEL_420;
        }

        OUTLINED_FUNCTION_30_12();
        v3 = v559 + v577;
        v130 = *(v4 + 72);
        v578 = (v559 + v577);
        v579 = OUTLINED_FUNCTION_11_31();
        sub_2576ADC50(v579, v580, v581, v582);
        v583 = *(v559 + 16);
        if (v583)
        {
          OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
          sub_257695D40(v583);
          v584 = v845;
          do
          {
            OUTLINED_FUNCTION_25_16();
            OUTLINED_FUNCTION_2_47();
            sub_2576AF17C(v55, v584, v585);
            OUTLINED_FUNCTION_26_12();
            OUTLINED_FUNCTION_52_5();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v586 = OUTLINED_FUNCTION_7_32();
              sub_2574843E0(v586, v587, v588);
              v578 = v855;
            }

            v584 = v578[2];
            OUTLINED_FUNCTION_53_4();
            if (v142)
            {
              v591 = OUTLINED_FUNCTION_13_21(v589);
              sub_2574843E0(v591, v592, v593);
              v578 = v855;
            }

            v578[2] = v5;
            OUTLINED_FUNCTION_6_40();
            OUTLINED_FUNCTION_23_19(v590);
            v3 += v130;
            --v583;
          }

          while (v583);

          v558 = v578;
          v559 = MEMORY[0x277D84F90];
        }

        else
        {

          v559 = MEMORY[0x277D84F90];
          v558 = MEMORY[0x277D84F90];
        }

        OUTLINED_FUNCTION_62_6();
      }

      while (!v148);
      v176 = v826;
      *v826 = v558;
LABEL_373:
      v748 = *(NeuralNetworkClassifier.preprocessors.getter() + 16);

      v174 = v176;
      if (v748)
      {
        for (j = 0; j != v748; ++j)
        {
          v750 = *(*(v174 + 8) + 16);
          if (v750)
          {
            OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
            sub_257695D28(v750);
            OUTLINED_FUNCTION_12_30();
            OUTLINED_FUNCTION_60_3();
            v751 = v839;
            do
            {
              OUTLINED_FUNCTION_1_56();
              sub_2576AF17C(v174, v751, v752);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v753 = OUTLINED_FUNCTION_7_32();
                sub_257484240(v753, v754, v755);
                v176 = v855;
              }

              OUTLINED_FUNCTION_61_4();
              if (v142)
              {
                v759 = OUTLINED_FUNCTION_16_17(v756);
                sub_257484240(v759, v751, 1);
                v176 = v855;
              }

              v176[2] = v751;
              OUTLINED_FUNCTION_6_40();
              OUTLINED_FUNCTION_19_24();
              v751 = v839;
              sub_2576AF11C(v839, v757, v758);
              v174 += v3;
              --v750;
            }

            while (v750);
          }

          OUTLINED_FUNCTION_56_3();
          if (v142)
          {
            goto LABEL_424;
          }

          OUTLINED_FUNCTION_28_19();
          v760 = v133 * j;
          OUTLINED_FUNCTION_4_40();
          OUTLINED_FUNCTION_392();
          sub_2576AF17C(v761, v762, v763);

          v130 = *v3;
          v176 = *(v3 + 8);

          OUTLINED_FUNCTION_3_53();
          sub_2576AF1DC(v3, v764);
          OUTLINED_FUNCTION_72_3();
          if (v148 && v176 == v765)
          {
          }

          else
          {
            OUTLINED_FUNCTION_57_0();
            OUTLINED_FUNCTION_71_3();
            if ((v130 & 1) == 0)
            {
              goto LABEL_403;
            }
          }

          v130 = NeuralNetworkClassifier.preprocessors.getter();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25767A664(v130, v767, v768, v769);
            v130 = v788;
          }

          OUTLINED_FUNCTION_74_1();
          if (v142)
          {
            goto LABEL_428;
          }

          v770 = v130 + v174;
          v176 = *(v770 + v760 + 8);
          OUTLINED_FUNCTION_27_16((v770 + v760));

          v771 = *(v130 + 16);
          if (v771)
          {
            OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
            sub_257695D58(v771);
            do
            {
              OUTLINED_FUNCTION_4_40();
              OUTLINED_FUNCTION_69_2(v772, v773, v774);
              OUTLINED_FUNCTION_1_56();
              OUTLINED_FUNCTION_75_5(v775, v776, v777);
              OUTLINED_FUNCTION_3_53();
              sub_2576AF1DC(v176, v778);
              OUTLINED_FUNCTION_52_5();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v779 = OUTLINED_FUNCTION_7_32();
                sub_257484438(v779, v780, v781);
                v176 = v855;
              }

              v783 = v176[2];
              v782 = v176[3];
              if (v783 >= v782 >> 1)
              {
                v787 = OUTLINED_FUNCTION_16_17(v782);
                sub_257484438(v787, v783 + 1, 1);
                v176 = v855;
              }

              v176[2] = v783 + 1;
              OUTLINED_FUNCTION_6_40();
              v3 = v786;
              sub_2576AF11C(v786, v784 + v785 * v783, type metadata accessor for Proto_NeuralNetworkPreprocessing);
              v770 += v133;
              --v771;
            }

            while (v771);
          }

          else
          {

            v176 = MEMORY[0x277D84F90];
          }

          v826[1] = v176;
LABEL_403:
          v174 = v826;
        }
      }

      v789 = (v174 + *(type metadata accessor for Proto_NeuralNetworkClassifier(0) + 36));
      v790 = v789[1];
      OUTLINED_FUNCTION_49_6();
      v793 = v148 && v790 == v792;
      if (v793 || (OUTLINED_FUNCTION_55_5(v791) & 1) != 0)
      {
        v130 = v835._object;

        OUTLINED_FUNCTION_306();
        *v789 = v794;
        v789[1] = v130;
      }

      v795 = OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_45_8(v795, v796, v797);
      OUTLINED_FUNCTION_29_15();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_20_17();
      sub_25746EEC4(v798, v799, v800, v801, v802, v803, v804, v805, v810, v811, v812, v813, v814, v815, v816, v817, v818, v819, v820, v821);
      v806 = type metadata accessor for Proto_Model.OneOf_Type(0);
      OUTLINED_FUNCTION_5_41(v806);
      OUTLINED_FUNCTION_34_11();
      sub_2574FE574();
      OUTLINED_FUNCTION_0_73();
      sub_2576AF1DC(v130, v807);
      v181 = type metadata accessor for NeuralNetworkClassifier;
      goto LABEL_46;
    case 0x1Eu:
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_38_6();
      sub_2576AF11C(v230, v231, v232);
      v233 = *(NeuralNetworkRegressor.layers.getter() + 16);

      v848 = v233;
      if (!v233)
      {
        goto LABEL_307;
      }

      v133 = 0;
      v234 = *v176;
      v174 = MEMORY[0x277D84F90];
      break;
    case 0x1Fu:
      v526 = OUTLINED_FUNCTION_31_10();
      v133 = v816;
      sub_2576AF11C(v526, v816, v527);
      v137 = v133;
      MLProgram.functions.getter();
      v528 = 0;
      v531 = v529 + 64;
      v530 = *(v529 + 64);
      v853 = v529 + 64;
      v854 = v529;
      v532 = 1 << *(v529 + 32);
      v533 = -1;
      if (v532 < 64)
      {
        v533 = ~(-1 << v532);
      }

      v534 = v533 & v530;
      v3 = (v532 + 63) >> 6;
      if ((v533 & v530) != 0)
      {
        goto LABEL_270;
      }

LABEL_271:
      v4 = v820;
      do
      {
        v5 = v528 + 1;
        if (__OFADD__(v528, 1))
        {
          goto LABEL_413;
        }

        if (v5 >= v3)
        {

          OUTLINED_FUNCTION_58_1(v133, v616, type metadata accessor for MLProgram);
          OUTLINED_FUNCTION_35_11();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_20_17();
          sub_25746EEC4(v617, v618, v619, v620, v621, v622, v623, v624, v810, v811, v812, v813, v814, v815, v816, v817, v818, v819, v820, v821);
          v625 = type metadata accessor for Proto_Model.OneOf_Type(0);
          OUTLINED_FUNCTION_5_41(v625);
          sub_2574FE574();
          OUTLINED_FUNCTION_0_73();
          sub_2576AF1DC(v174, v626);
          v627 = type metadata accessor for MLProgram;
LABEL_340:
          v182 = v627;
          v183 = v133;
          goto LABEL_47;
        }

        v534 = *(v531 + 8 * v5);
        ++v528;
      }

      while (!v534);
      while (1)
      {
        v535 = (*(v854 + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v534)))));
        v536 = *v535;
        v537 = v535[1];
        MLProgram.functions.getter();
        v539 = v538;

        sub_257657BA8(v536, v537, v539, v4);
        v540 = v819;
        if (__swift_getEnumTagSinglePayload(v4, 1, v819) == 1)
        {
          goto LABEL_429;
        }

        v534 &= v534 - 1;

        OUTLINED_FUNCTION_261();
        sub_2576AF11C(v541, v542, v543);
        v544 = OUTLINED_FUNCTION_11_31();
        sub_2576ADDC0(v544, v545, v546, v547);
        v548 = OUTLINED_FUNCTION_64_5();
        v549 = v818;
        sub_2576AF17C(v548, v818, v550);
        __swift_storeEnumTagSinglePayload(v549, 0, 1, v540);
        MLProgram.functions.getter();
        v855 = v551;
        v137 = &v855;
        sub_257657BD4(v549, v536, v537);
        v552 = OUTLINED_FUNCTION_52_5();
        v130 = v821;
        sub_25765B92C(v552);
        v174 = v553;
        v821 = v130;

        sub_2576AF1DC(v55, type metadata accessor for MLProgram.Function);

        *(v133 + 8) = v174;
        v528 = v5;
        LOBYTE(v130) = v834;
        v531 = v853;
        if (!v534)
        {
          goto LABEL_271;
        }

LABEL_270:
        v5 = v528;
        v4 = v820;
      }

    default:
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_392();
      sub_2576AF11C(v406, v407, v408);
      PipelineClassifierConfiguration.models.getter();
      v410 = *(v409 + 16);

      if (!v410)
      {
        goto LABEL_302;
      }

      v412 = 0;
      while (1)
      {
        PipelineClassifierConfiguration.models.getter();
        v414 = v413;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25767A694(v414, v415, v416, v417);
          v414 = v420;
        }

        if (v412 >= *(v414 + 16))
        {
          goto LABEL_418;
        }

        OUTLINED_FUNCTION_12_30();
        v418._countAndFlagsBits = OUTLINED_FUNCTION_11_31();
        Model.rename(feature:to:)(v418, v419);
        PipelineClassifierConfiguration.models.setter(v414);
        if (v410 == ++v412)
        {
LABEL_302:
          OUTLINED_FUNCTION_45_8(v3, v411, type metadata accessor for PipelineClassifierConfiguration);
          OUTLINED_FUNCTION_29_15();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_20_17();
          sub_25746EEC4(v595, v596, v597, v598, v599, v600, v601, v602, v810, v811, v812, v813, v814, v815, v816, v817, v818, v819, v820, v821);
          v603 = type metadata accessor for Proto_Model.OneOf_Type(0);
          OUTLINED_FUNCTION_5_41(v603);
          OUTLINED_FUNCTION_34_11();
          sub_2574FE574();
          OUTLINED_FUNCTION_0_73();
          sub_2576AF1DC(v410, v604);
          v605 = type metadata accessor for PipelineClassifierConfiguration;
LABEL_304:
          v182 = v605;
          v183 = v3;
          goto LABEL_47;
        }
      }
  }

  do
  {
    v235 = v234[2];
    v849 = v234;
    if (v235)
    {
      OUTLINED_FUNCTION_70_5();
      OUTLINED_FUNCTION_12_30();
      v237 = v234 + v236;
      v239 = *(v238 + 72);
      v240 = v832;
      do
      {
        OUTLINED_FUNCTION_2_47();
        sub_2576AF17C(v237, v240, v241);
        v174 = v855;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v242 = OUTLINED_FUNCTION_8_31();
          sub_2574841E8(v242, v243, v244);
          OUTLINED_FUNCTION_54_5();
        }

        OUTLINED_FUNCTION_53_4();
        if (v142)
        {
          v246 = OUTLINED_FUNCTION_13_21(v245);
          sub_2574841E8(v246, v247, v248);
          OUTLINED_FUNCTION_54_5();
        }

        OUTLINED_FUNCTION_17_20();
        v237 += v239;
        --v235;
      }

      while (v235);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25767A67C(v174, v249, v250, v251);
      v174 = v269;
    }

    if (!*(v174 + 16))
    {
      __break(1u);
LABEL_416:
      __break(1u);
LABEL_417:
      __break(1u);
LABEL_418:
      __break(1u);
LABEL_419:
      __break(1u);
LABEL_420:
      __break(1u);
LABEL_421:
      __break(1u);
LABEL_422:
      __break(1u);
LABEL_423:
      __break(1u);
LABEL_424:
      __break(1u);
LABEL_425:
      __break(1u);
LABEL_426:
      __break(1u);
LABEL_427:
      __break(1u);
LABEL_428:
      __break(1u);
LABEL_429:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_30_12();
    v3 = v174 + v252;
    v130 = *(v4 + 72);
    v253 = (v174 + v252);
    v254 = OUTLINED_FUNCTION_11_31();
    sub_2576ADC50(v254, v255, v256, v257);
    v258 = *(v174 + 16);
    if (v258)
    {
      OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
      sub_257695D40(v258);
      v259 = v846;
      do
      {
        OUTLINED_FUNCTION_25_16();
        OUTLINED_FUNCTION_2_47();
        sub_2576AF17C(v55, v259, v260);
        OUTLINED_FUNCTION_26_12();
        OUTLINED_FUNCTION_52_5();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v261 = OUTLINED_FUNCTION_7_32();
          sub_2574843E0(v261, v262, v263);
          v253 = v855;
        }

        v259 = v253[2];
        OUTLINED_FUNCTION_53_4();
        if (v142)
        {
          v266 = OUTLINED_FUNCTION_13_21(v264);
          sub_2574843E0(v266, v267, v268);
          v253 = v855;
        }

        v253[2] = v5;
        OUTLINED_FUNCTION_6_40();
        OUTLINED_FUNCTION_23_19(v265);
        v3 += v130;
        --v258;
      }

      while (v258);

      v234 = v253;
      v174 = MEMORY[0x277D84F90];
    }

    else
    {

      v174 = MEMORY[0x277D84F90];
      v234 = MEMORY[0x277D84F90];
    }

    OUTLINED_FUNCTION_62_6();
    v176 = v828;
  }

  while (!v148);
  *v828 = v234;
LABEL_307:
  v638 = *(NeuralNetworkRegressor.preprocessors.getter() + 16);

  OUTLINED_FUNCTION_67_6();
  v854 = v638;
  if (v638)
  {
    for (k = 0; k != v854; ++k)
    {
      v641 = *(v176[1] + 16);
      if (v641)
      {
        OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
        sub_257695D28(v641);
        OUTLINED_FUNCTION_12_30();
        OUTLINED_FUNCTION_60_3();
        v642 = v840;
        do
        {
          OUTLINED_FUNCTION_1_56();
          sub_2576AF17C(v174, v642, v643);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v644 = OUTLINED_FUNCTION_7_32();
            sub_257484240(v644, v645, v646);
            v176 = v855;
          }

          OUTLINED_FUNCTION_61_4();
          if (v142)
          {
            v650 = OUTLINED_FUNCTION_16_17(v647);
            sub_257484240(v650, v642, 1);
            v176 = v855;
          }

          v176[2] = v642;
          OUTLINED_FUNCTION_6_40();
          OUTLINED_FUNCTION_19_24();
          v642 = v840;
          sub_2576AF11C(v840, v648, v649);
          v174 += v3;
          --v641;
        }

        while (v641);
      }

      OUTLINED_FUNCTION_56_3();
      if (v142)
      {
        goto LABEL_422;
      }

      OUTLINED_FUNCTION_28_19();
      v651 = v133 * k;
      OUTLINED_FUNCTION_4_40();
      OUTLINED_FUNCTION_392();
      sub_2576AF17C(v652, v653, v654);

      v130 = *v3;
      v176 = *(v3 + 8);

      OUTLINED_FUNCTION_3_53();
      sub_2576AF1DC(v3, v655);
      OUTLINED_FUNCTION_72_3();
      if (v148 && v176 == v656)
      {

        OUTLINED_FUNCTION_67_6();
      }

      else
      {
        OUTLINED_FUNCTION_57_0();
        OUTLINED_FUNCTION_71_3();
        OUTLINED_FUNCTION_67_6();
        if ((v130 & 1) == 0)
        {
          continue;
        }
      }

      v130 = NeuralNetworkRegressor.preprocessors.getter();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25767A664(v130, v658, v659, v660);
        v130 = v677;
      }

      OUTLINED_FUNCTION_74_1();
      if (v142)
      {
        goto LABEL_426;
      }

      v174 += v130;
      v176 = *(v174 + v651 + 8);
      OUTLINED_FUNCTION_27_16((v174 + v651));

      v661 = *(v130 + 16);
      if (v661)
      {
        OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
        sub_257695D58(v661);
        do
        {
          OUTLINED_FUNCTION_4_40();
          OUTLINED_FUNCTION_69_2(v662, v663, v664);
          OUTLINED_FUNCTION_1_56();
          OUTLINED_FUNCTION_75_5(v665, v666, v667);
          OUTLINED_FUNCTION_3_53();
          sub_2576AF1DC(v176, v668);
          v669 = v855;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v670 = OUTLINED_FUNCTION_8_31();
            sub_257484438(v670, v671, v672);
            v669 = v855;
          }

          v674 = v669[2];
          v673 = v669[3];
          v3 = v674 + 1;
          if (v674 >= v673 >> 1)
          {
            v676 = OUTLINED_FUNCTION_16_17(v673);
            sub_257484438(v676, v674 + 1, 1);
            v669 = v855;
          }

          v669[2] = v3;
          OUTLINED_FUNCTION_12_30();
          OUTLINED_FUNCTION_21_21(v669 + v675);
          v174 += v133;
          --v661;
        }

        while (v661);
      }

      else
      {

        v669 = MEMORY[0x277D84F90];
      }

      OUTLINED_FUNCTION_67_6();
      v176[1] = v669;
    }
  }

  v174 = v176;
  OUTLINED_FUNCTION_45_8(v176, v639, type metadata accessor for NeuralNetworkRegressor);
  OUTLINED_FUNCTION_29_15();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_20_17();
  sub_25746EEC4(v678, v679, v680, v681, v682, v683, v684, v685, v810, v811, v812, v813, v814, v815, v816, v817, v818, v819, v820, v821);
  v686 = type metadata accessor for Proto_Model.OneOf_Type(0);
  OUTLINED_FUNCTION_5_41(v686);
  OUTLINED_FUNCTION_34_11();
  sub_2574FE574();
  OUTLINED_FUNCTION_0_73();
  sub_2576AF1DC(v130, v687);
  v181 = type metadata accessor for NeuralNetworkRegressor;
LABEL_46:
  v182 = v181;
  v183 = v174;
LABEL_47:
  sub_2576AF1DC(v183, v182);
}

uint64_t sub_2576ADB74(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = type metadata accessor for FeatureDescription(0);
    OUTLINED_FUNCTION_24(v8);
    result = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v10 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

void sub_2576ADC50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  v10 = *(v4 + v9);
  swift_beginAccess();
  v11 = *(v10 + 32);
  v12 = sub_2576AE470(a1, a2, v11);
  if (v13)
  {
    goto LABEL_6;
  }

  v14 = v12;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25767A634(v11, v15, v16, v17);
    v11 = v23;
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (v14 >= *(v11 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v11 + 16 * v14;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;

  NeuralNetwork.Layer.inputNames.setter();
LABEL_6:
  v19 = *(v4 + v9);
  swift_beginAccess();
  v11 = *(v19 + 40);
  v20 = sub_2576AE470(a1, a2, v11);
  if (v21)
  {
    return;
  }

  a2 = v20;

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_25767A634(v11, v15, v16, v17);
  v11 = v24;
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_9:
  if (a2 >= *(v11 + 16))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v22 = v11 + 16 * a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;

  NeuralNetwork.Layer.outputNames.setter();
}

void sub_2576ADDC0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v69 = a3;
  v70 = a4;
  v9 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880698, &qword_25776CFE0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v65 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v67 = &v62 - v14;
  MEMORY[0x28223BE20](v13);
  v68 = &v62 - v15;
  v16 = type metadata accessor for MLProgram.Block(0);
  v63 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v64 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v74 = &v62 - v19;
  v20 = type metadata accessor for MLProgram.NamedValueType(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = (&v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = v4;
  v27 = MLProgram.Function.inputs.getter();
  v28 = *(v27 + 16);
  v75 = 0;
  v72 = a2;
  for (i = a1; ; a1 = i)
  {
    if (v28 == v9)
    {

      goto LABEL_15;
    }

    if (v9 >= *(v27 + 16))
    {
      goto LABEL_35;
    }

    v5 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v6 = *(v21 + 72) * v9;
    sub_2576AF17C(v27 + v5 + v6, v23, type metadata accessor for MLProgram.NamedValueType);
    if (*v23 == a1 && v23[1] == a2)
    {
      break;
    }

    v30 = sub_257743994();
    sub_2576AF1DC(v23, type metadata accessor for MLProgram.NamedValueType);
    if (v30)
    {
      goto LABEL_12;
    }

    ++v9;
  }

  sub_2576AF1DC(v23, type metadata accessor for MLProgram.NamedValueType);
LABEL_12:

  v27 = MLProgram.Function.inputs.getter();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    if (v9 >= *(v27 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    v31 = (v27 + v5 + v6);
    v32 = v70;
    *v31 = v69;
    v31[1] = v32;

    MLProgram.Function.inputs.setter();
LABEL_15:
    v27 = v76;
    MLProgram.Function.blockSpecializations.getter();
    v5 = 0;
    v35 = v33 + 64;
    v34 = *(v33 + 64);
    v71 = v33;
    v36 = 1 << *(v33 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & v34;
    v6 = (v36 + 63) >> 6;
    v73 = v16;
    v66 = v33 + 64;
    if ((v37 & v34) != 0)
    {
      break;
    }

LABEL_19:
    v39 = v72;
    v9 = i;
    while (1)
    {
      v40 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v40 >= v6)
      {

        return;
      }

      v38 = *(v35 + 8 * v40);
      ++v5;
      if (v38)
      {
        v5 = v40;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    sub_25767A64C(v27, v24, v25, v26);
    v27 = v61;
  }

  while (1)
  {
    v39 = v72;
    v9 = i;
LABEL_24:
    v41 = (*(v71 + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v38)))));
    v43 = *v41;
    v42 = v41[1];
    MLProgram.Function.blockSpecializations.getter();
    v45 = v44;

    v16 = v68;
    sub_257657B7C(v43, v42, v45, v68);
    v46 = v73;
    if (__swift_getEnumTagSinglePayload(v16, 1, v73) == 1)
    {
      break;
    }

    v47 = v74;
    sub_2576AF11C(v16, v74, type metadata accessor for MLProgram.Block);
    sub_2576AE4FC(v9, v39, v69, v70);
    v48 = v67;
    sub_2576AF17C(v47, v67, type metadata accessor for MLProgram.Block);
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v46);
    MLProgram.Function.blockSpecializations.getter();
    v50 = v49;
    if (__swift_getEnumTagSinglePayload(v48, 1, v46) == 1)
    {
      v16 = v46;
      sub_2574695E4(v48, &qword_27F880698, &qword_25776CFE0);
      v51 = sub_25765368C(v43, v42);
      if (v52)
      {
        v53 = v51;
        swift_isUniquelyReferenced_nonNull_native();
        v78 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806A0, &qword_25776CFE8);
        v16 = v73;
        sub_257743894();
        v50 = v78;

        v54 = v65;
        sub_2576AF11C(*(v50 + 56) + *(v63 + 72) * v53, v65, type metadata accessor for MLProgram.Block);
        sub_2577438B4();
        v55 = 0;
        v56 = v75;
      }

      else
      {
        v55 = 1;
        v56 = v75;
        v54 = v65;
      }

      v35 = v66;
      __swift_storeEnumTagSinglePayload(v54, v55, 1, v16);

      sub_2574695E4(v54, &qword_27F880698, &qword_25776CFE0);
    }

    else
    {
      v57 = v48;
      v58 = v64;
      sub_2576AF11C(v57, v64, type metadata accessor for MLProgram.Block);
      swift_isUniquelyReferenced_nonNull_native();
      v78 = v50;
      sub_25765C2DC(v58, v43, v42);

      v50 = v78;
      v56 = v75;
      v35 = v66;
    }

    v38 &= v38 - 1;
    sub_257653AF8(v50);
    v60 = v59;
    v75 = v56;

    sub_2576AF1DC(v74, type metadata accessor for MLProgram.Block);
    v27 = v76;

    *(v27 + 24) = v60;
    if (!v38)
    {
      goto LABEL_19;
    }
  }

LABEL_38:
  __break(1u);
}

uint64_t sub_2576AE470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_257743994() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

void sub_2576AE4FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = v4;
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v10 = type metadata accessor for MLProgram.NamedValueType(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MLProgram.Block.inputs.getter();
  v18 = 0;
  v19 = *(v17 + 16);
  while (1)
  {
    if (v19 == v18)
    {

      v18 = v31;
      v7 = v32;
      v21 = v33;
      goto LABEL_15;
    }

    if (v18 >= *(v17 + 16))
    {
      goto LABEL_28;
    }

    v6 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v5 = *(v11 + 72) * v18;
    sub_2576AF17C(v17 + v6 + v5, v13, type metadata accessor for MLProgram.NamedValueType);
    if (*v13 == a1 && v13[1] == v33)
    {
      break;
    }

    v7 = sub_257743994();
    sub_2576AF1DC(v13, type metadata accessor for MLProgram.NamedValueType);
    if (v7)
    {
      goto LABEL_12;
    }

    ++v18;
  }

  sub_2576AF1DC(v13, type metadata accessor for MLProgram.NamedValueType);
LABEL_12:

  v17 = MLProgram.Block.inputs.getter();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v21 = v33;
    if (v18 >= *(v17 + 16))
    {
      __break(1u);
    }

    else
    {
      v22 = (v17 + v6 + v5);
      v18 = v31;
      v7 = v32;
      *v22 = v31;
      v22[1] = v7;

      MLProgram.Block.inputs.setter();
LABEL_15:
      v17 = *(v8 + 8);
      v23 = sub_2576AE470(a1, v21, v17);
      if (v24)
      {
        goto LABEL_20;
      }

      v11 = v23;

      v25 = v17;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          break;
        }

        goto LABEL_18;
      }
    }

    sub_25767A634(v17, v14, v15, v16);
    v25 = v29;
    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_18:
    if (v11 >= *(v25 + 16))
    {
      goto LABEL_33;
    }

    v26 = v25 + 16 * v11;
    *(v26 + 32) = v18;
    *(v26 + 40) = v7;

    *(v8 + 8) = v25;
    v21 = v33;
LABEL_20:
    v5 = *(MLProgram.Block.operations.getter() + 16);

    if (!v5)
    {
      return;
    }

    v6 = 0;
    while (1)
    {
      v17 = v8;
      v11 = MLProgram.Block.operations.getter();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25767A604(v11, v14, v15, v16);
        v11 = v27;
      }

      if (v6 >= *(v11 + 16))
      {
        break;
      }

      type metadata accessor for MLProgram.Operation(0);
      sub_2576AE86C(a1, v21, v18, v7);
      MLProgram.Block.operations.setter();
      if (v5 == ++v6)
      {
        return;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    sub_25767A64C(v17, v14, v15, v16);
    v17 = v28;
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_2576AE86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a3;
  v73 = a4;
  v74 = a1;
  v75 = a2;
  v6 = type metadata accessor for MLProgram.NamedValueType(0);
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880610, &qword_25776CC98);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v66 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v71 = &v62 - v13;
  MEMORY[0x28223BE20](v12);
  v70 = &v62 - v14;
  v78 = type metadata accessor for MLProgram.Argument(0);
  v64 = *(v78 - 8);
  v15 = MEMORY[0x28223BE20](v78 - 8);
  v65 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v80 = &v62 - v17;
  MLProgram.Operation.inputs.getter();
  v22 = 0;
  v23 = 0;
  v25 = v18 + 64;
  v24 = *(v18 + 64);
  v76 = v18;
  v77 = v4;
  v26 = 1 << *(v18 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v24;
  v29 = (v26 + 63) >> 6;
  v67 = v29;
  v68 = v18 + 64;
  v69 = v8;
  if ((v27 & v24) != 0)
  {
    while (1)
    {
      v79 = v23;
LABEL_9:
      v31 = (*(v76 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v28)))));
      v33 = *v31;
      v32 = v31[1];
      MLProgram.Operation.inputs.getter();
      v35 = v34;

      v36 = v70;
      sub_257657A94(v33, v32, v35, v70);
      v37 = v78;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v78);
      v39 = v71;
      if (EnumTagSinglePayload == 1)
      {
        goto LABEL_36;
      }

      v40 = v80;
      sub_2576AF11C(v36, v80, type metadata accessor for MLProgram.Argument);
      sub_2576AEEFC(v74, v75, v72, v73);
      sub_2576AF17C(v40, v39, type metadata accessor for MLProgram.Argument);
      __swift_storeEnumTagSinglePayload(v39, 0, 1, v37);
      MLProgram.Operation.inputs.getter();
      v42 = v41;
      if (__swift_getEnumTagSinglePayload(v39, 1, v37) == 1)
      {
        sub_2574695E4(v39, &qword_27F880610, &qword_25776CC98);
        v43 = sub_25765368C(v33, v32);
        v25 = v68;
        v8 = v69;
        if (v44)
        {
          v45 = v43;
          swift_isUniquelyReferenced_nonNull_native();
          v81 = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880618, &unk_25776D480);
          sub_257743894();
          v42 = v81;

          v46 = v66;
          sub_2576AF11C(*(v42 + 56) + *(v64 + 72) * v45, v66, type metadata accessor for MLProgram.Argument);
          v47 = v78;
          sub_2577438B4();
          v48 = 0;
          v23 = v79;
        }

        else
        {
          v48 = 1;
          v47 = v78;
          v23 = v79;
          v46 = v66;
        }

        __swift_storeEnumTagSinglePayload(v46, v48, 1, v47);

        sub_2574695E4(v46, &qword_27F880610, &qword_25776CC98);
      }

      else
      {
        v49 = v39;
        v50 = v65;
        sub_2576AF11C(v49, v65, type metadata accessor for MLProgram.Argument);
        swift_isUniquelyReferenced_nonNull_native();
        v81 = v42;
        sub_25765C1BC(v50, v33, v32);

        v42 = v81;
        v23 = v79;
        v25 = v68;
        v8 = v69;
      }

      v29 = v67;
      v28 &= v28 - 1;
      sub_257648D44(v42);
      v5 = v51;

      sub_2576AF1DC(v80, type metadata accessor for MLProgram.Argument);
      v52 = v77;

      *(v52 + 16) = v5;
      if (!v28)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v30 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      sub_25767A64C(v25, v19, v20, v21);
      v25 = v61;
      goto LABEL_30;
    }

    if (v30 >= v29)
    {
      break;
    }

    v28 = *(v25 + 8 * v30);
    ++v22;
    if (v28)
    {
      v79 = v23;
      v22 = v30;
      goto LABEL_9;
    }
  }

  v79 = v23;

  v25 = MLProgram.Operation.outputs.getter();
  v23 = 0;
  v53 = *(v25 + 16);
  v55 = v74;
  v54 = v75;
  v56 = v63;
  while (1)
  {
    if (v53 == v23)
    {

      return;
    }

    if (v23 >= *(v25 + 16))
    {
      goto LABEL_33;
    }

    v5 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v29 = *(v56 + 72) * v23;
    sub_2576AF17C(v25 + v5 + v29, v8, type metadata accessor for MLProgram.NamedValueType);
    if (*v8 == v55 && v8[1] == v54)
    {
      break;
    }

    v58 = sub_257743994();
    sub_2576AF1DC(v8, type metadata accessor for MLProgram.NamedValueType);
    if (v58)
    {
      goto LABEL_29;
    }

    ++v23;
  }

  sub_2576AF1DC(v8, type metadata accessor for MLProgram.NamedValueType);
LABEL_29:

  v25 = MLProgram.Operation.outputs.getter();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_30:
  if (v23 < *(v25 + 16))
  {
    v59 = (v25 + v5 + v29);
    v60 = v73;
    *v59 = v72;
    v59[1] = v60;

    MLProgram.Operation.outputs.setter();
    return;
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_2576AEEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v23 = a1;
  v24 = a2;
  v4 = type metadata accessor for MLProgram.Argument.Binding(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MLProgram.Argument.bindings.getter();
  v9 = *(v8 + 16);

  if (v9)
  {
    for (i = 0; v9 != i; ++i)
    {
      MLProgram.Argument.bindings.getter();
      v12 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25767A5EC(v12, v13, v14, v15);
        v12 = v20;
      }

      if (i >= *(v12 + 16))
      {
        __break(1u);
        return;
      }

      v16 = (v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * i);
      sub_2576AF17C(v16, v7, type metadata accessor for MLProgram.Argument.Binding);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2576AF1DC(v7, type metadata accessor for MLProgram.Argument.Binding);
      }

      else
      {
        if (*v7 == v23 && v7[1] == v24)
        {
        }

        else
        {
          v18 = sub_257743994();

          if ((v18 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        sub_2576AF1DC(v16, type metadata accessor for MLProgram.Argument.Binding);
        v19 = v22;
        *v16 = v21;
        v16[1] = v19;
        swift_storeEnumTagMultiPayload();
      }

LABEL_16:
      MLProgram.Argument.bindings.setter();
    }
  }
}

unint64_t sub_2576AF100(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_2576AF11C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2576AF17C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2576AF1DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_17_20()
{
  *(v2 + 16) = v3;
  v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v0;

  return sub_2576AF11C(v1, v6, type metadata accessor for NeuralNetwork.Layer);
}

uint64_t OUTLINED_FUNCTION_21_21@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 + *(v1 + 72) * v3;

  return sub_2576AF11C(v2, v5, type metadata accessor for Proto_NeuralNetworkPreprocessing);
}

uint64_t OUTLINED_FUNCTION_23_19@<X0>(uint64_t a1@<X8>)
{

  return sub_2576AF11C(v2, a1 + v1 * v3, type metadata accessor for Proto_NeuralNetworkLayer);
}

uint64_t OUTLINED_FUNCTION_25_16()
{

  return sub_2576AF17C(v1, v0, type metadata accessor for NeuralNetwork.Layer);
}

uint64_t OUTLINED_FUNCTION_26_12()
{

  return sub_2576AF1DC(v0, type metadata accessor for NeuralNetwork.Layer);
}

uint64_t OUTLINED_FUNCTION_27_16@<X0>(void *a1@<X8>)
{
  v3 = *(v1 - 272);
  *a1 = *(v1 - 280);
  a1[1] = v3;
}

uint64_t OUTLINED_FUNCTION_36_10()
{
}

uint64_t OUTLINED_FUNCTION_45_8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(v3 - 464);

  return sub_2576AF17C(a1, v5, a3);
}

uint64_t OUTLINED_FUNCTION_50_6()
{
}

uint64_t OUTLINED_FUNCTION_55_5(uint64_t a1)
{

  return sub_257743994();
}

uint64_t OUTLINED_FUNCTION_57_0()
{

  return sub_257743994();
}

uint64_t OUTLINED_FUNCTION_58_1(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(v3 - 464);

  return sub_2576AF17C(a1, v5, a3);
}

uint64_t OUTLINED_FUNCTION_59_2(uint64_t a1)
{

  return sub_257743994();
}

uint64_t OUTLINED_FUNCTION_69_2(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *(v4 - 152);

  return sub_2576AF17C(v3, v6, a3);
}

uint64_t OUTLINED_FUNCTION_70_5()
{
  *(v2 - 96) = v0;

  return sub_257695D10(v1);
}

uint64_t OUTLINED_FUNCTION_71_3()
{
}

uint64_t OUTLINED_FUNCTION_75_5(uint64_t a1, uint64_t a2, void (*a3)(void))
{

  return sub_2576AF17C(v3, v4, a3);
}

uint64_t static NeuralNetwork.Layer.meanVarianceNormalize(name:inputName:outputName:kind:amount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v40 = a7;
  v41 = a8;
  v38 = a3;
  v39 = a5;
  v42 = a1;
  v43 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v13 = OUTLINED_FUNCTION_13(v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for NeuralNetwork.Border(0);
  v17 = OUTLINED_FUNCTION_13(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v21 = type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(0);
  v22 = OUTLINED_FUNCTION_13(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v29 = v28 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v30 = swift_allocObject();
  v37 = xmmword_2577442B0;
  *(v30 + 16) = xmmword_2577442B0;
  *(v30 + 32) = v38;
  *(v30 + 40) = a4;
  v31 = swift_allocObject();
  *(v31 + 16) = v37;
  *(v31 + 32) = v39;
  *(v31 + 40) = a6;
  OUTLINED_FUNCTION_2_48();
  sub_2576B029C(v40, v25, v32);
  OUTLINED_FUNCTION_1_57();
  sub_2576B029C(v41, v20, v33);

  NeuralNetwork.Layer.PadParameters.init(kind:amount:)(v25, v20, v29);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v34 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a9 + v34) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v31);
  sub_2574897E0(v15);
  v35 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v35);
  sub_25752846C();
  return sub_257634BB4(v29);
}

uint64_t static NeuralNetwork.Layer.Kind.meanVarianceNormalize(kind:amount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NeuralNetwork.Border(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(0);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_2_48();
  sub_2576B029C(a1, v15, v16);
  OUTLINED_FUNCTION_1_57();
  sub_2576B029C(a2, v10, v17);
  NeuralNetwork.Layer.PadParameters.init(kind:amount:)(v15, v10, a3);
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.MeanVarianceNormalizeParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_2577442C0;
  *(v1 + 32) = 0x432073736F726341;
  *(v1 + 40) = 0xEF736C656E6E6168;
  v3 = 1702195828;
  if (*v0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*v0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 64) = 0xD000000000000012;
  *(v1 + 72) = 0x8000000257781320;
  if (v0[1])
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v3 = 0x65736C6166;
    v6 = 0xE500000000000000;
  }

  *(v1 + 80) = v3;
  *(v1 + 88) = v6;
  *(v1 + 96) = 0x6E6F6C69737045;
  *(v1 + 104) = 0xE700000000000000;
  *(v1 + 112) = sub_257743794();
  *(v2 + 120) = v7;
  return v2;
}

uint64_t (*NeuralNetwork.Layer.MeanVarianceNormalizeParameters.acrossChannels.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_257642180;
}

uint64_t (*NeuralNetwork.Layer.MeanVarianceNormalizeParameters.normalizeVariance.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 1);
  return sub_2576AFCE8;
}

float (*NeuralNetwork.Layer.MeanVarianceNormalizeParameters.epsilon.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return sub_25749D38C;
}

uint64_t NeuralNetwork.Layer.MeanVarianceNormalizeParameters.init(acrossChannels:normalizeVariance:epsilon:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>, float a4@<S0>)
{
  *a3 = 0;
  *(a3 + 4) = 0;
  type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a3 = a1;
  *(a3 + 1) = a2;
  *(a3 + 4) = a4;
  return result;
}

BOOL static NeuralNetwork.Layer.MeanVarianceNormalizeParameters.== infix(_:_:)(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1) && a1[1] == a2[1])
  {
    type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(0);
    sub_2577431B4();
    sub_2576B038C(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.MeanVarianceNormalizeParameters.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(0);
  OUTLINED_FUNCTION_3_54();
  sub_2576B038C(v1, v2, &unk_2577668F8);

  return sub_2577435F4();
}

uint64_t NeuralNetwork.Layer.MeanVarianceNormalizeParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(0);
  OUTLINED_FUNCTION_3_54();
  sub_2576B038C(v0, v1, &unk_2577668F8);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576AFF54(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(0);
  sub_2576B038C(&qword_27F87DF38, type metadata accessor for Proto_MeanVarianceNormalizeLayerParams, &unk_2577668F8);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.MeanVarianceNormalizeParameters.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  type metadata accessor for NeuralNetwork.Layer.MeanVarianceNormalizeParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_2576B029C(v1, v13 - v12, type metadata accessor for NeuralNetwork.Layer.MeanVarianceNormalizeParameters);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2577442C0;
  strcpy((v14 + 32), "acrossChannels");
  *(v14 + 47) = -18;
  v15 = MEMORY[0x277D839B0];
  *(v14 + 48) = *v1;
  *(v14 + 72) = v15;
  *(v14 + 80) = 0xD000000000000011;
  *(v14 + 88) = 0x800000025777F3A0;
  *(v14 + 96) = *(v1 + 1);
  *(v14 + 120) = v15;
  *(v14 + 128) = 0x6E6F6C69737065;
  *(v14 + 136) = 0xE700000000000000;
  v16 = *(v1 + 4);
  *(v14 + 168) = MEMORY[0x277D83A90];
  *(v14 + 144) = v16;
  v17 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v17);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.MeanVarianceNormalizeParameters(uint64_t a1)
{
  result = qword_27F880E38;
  if (!qword_27F880E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576B029C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2576B038C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576B0400(uint64_t a1)
{
  result = type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t FeatureType.StateParameters.elementType.getter@<X0>(_BYTE *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8D0, &qword_257748898);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Proto_StateFeatureType.OneOf_Type(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v10 = OUTLINED_FUNCTION_7_33();
  sub_2576B0674(v1 + *(v10 + 20), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    *v2 = MEMORY[0x277D84F90];
    *(v2 + 8) = 0;
    *(v2 + 16) = 1;
    v11 = type metadata accessor for Proto_ArrayFeatureType(0);
    v12 = *(v11 + 24);
    v13 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
    __swift_storeEnumTagSinglePayload(v2 + v12, 1, 1, v13);
    v14 = v2 + *(v11 + 28);
    *v14 = 0;
    *(v14 + 8) = -1;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_2576B06E4(v7);
    }
  }

  else
  {
    sub_2576B0B14();
  }

  type metadata accessor for FeatureType.ShapedArrayParameters(0);
  OUTLINED_FUNCTION_1_58();
  result = sub_2576B0B14();
  *a1 = 0;
  return result;
}

uint64_t sub_2576B0674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8D0, &qword_257748898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576B06E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8D0, &qword_257748898);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2576B074C()
{
  v1 = type metadata accessor for FeatureType.ShapedArrayParameters(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = type metadata accessor for FeatureType.StateParameters.ElementType(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  v8 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-v9];
  v22 = 0x6574617453;
  v23 = 0xE500000000000000;
  v11 = *v0;
  if (v11 == 1)
  {
    MEMORY[0x259C64E90](63, 0xE100000000000000);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442C0;
  *(inited + 32) = 1701869908;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = xmmword_257771DA0;
  *(inited + 64) = 0;
  strcpy((inited + 72), "Element Type");
  *(inited + 85) = 0;
  *(inited + 86) = -5120;
  FeatureType.StateParameters.elementType.getter(v10);
  sub_2576B1134();
  OUTLINED_FUNCTION_0_74();
  sub_2576B0B14();
  sub_2576A374C();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_2576B1378(v5, type metadata accessor for FeatureType.ShapedArrayParameters);
  OUTLINED_FUNCTION_4_41();
  *(inited + 88) = v14;
  *(inited + 96) = v16;
  *(inited + 104) = v18;
  *(inited + 112) = 0x6C616E6F6974704FLL;
  *(inited + 120) = 0xE800000000000000;
  v21[7] = v11;
  *(inited + 128) = sub_257743674();
  *(inited + 136) = v19;
  *(inited + 144) = 0;
  return sub_2576AACFC(inited);
}

uint64_t sub_2576B09B4(uint64_t a1)
{
  v1 = type metadata accessor for FeatureType.StateParameters.ElementType(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2576B1134();
  return FeatureType.StateParameters.elementType.setter(v3);
}

uint64_t FeatureType.StateParameters.elementType.setter(uint64_t a1)
{
  v2 = type metadata accessor for FeatureType.ShapedArrayParameters(0);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v3 = type metadata accessor for FeatureType.StateParameters(0);
  sub_2576B06E4(v1 + *(v3 + 20));
  OUTLINED_FUNCTION_0_74();
  sub_2576B0B14();
  OUTLINED_FUNCTION_1_58();
  sub_2576B0B14();
  type metadata accessor for Proto_StateFeatureType.OneOf_Type(0);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_2576B0B14()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v3(v2);
  OUTLINED_FUNCTION_4();
  (*(v4 + 32))(v0, v1);
  return v0;
}

void (*FeatureType.StateParameters.elementType.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for FeatureType.ShapedArrayParameters(0);
  v3[1] = v4;
  OUTLINED_FUNCTION_13(v4);
  v3[2] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = type metadata accessor for FeatureType.StateParameters.ElementType(0);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  FeatureType.StateParameters.elementType.getter(v9);
  return sub_2576B0C34;
}

void sub_2576B0C34(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[2];
  v6 = **a1;
  if (a2)
  {
    sub_2576B1134();
    v7 = type metadata accessor for FeatureType.StateParameters(0);
    sub_2576B06E4(v6 + *(v7 + 20));
    OUTLINED_FUNCTION_0_74();
    sub_2576B0B14();
    OUTLINED_FUNCTION_1_58();
    sub_2576B0B14();
    type metadata accessor for Proto_StateFeatureType.OneOf_Type(0);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_4_41();
  }

  else
  {
    v12 = type metadata accessor for FeatureType.StateParameters(0);
    sub_2576B06E4(v6 + *(v12 + 20));
    OUTLINED_FUNCTION_0_74();
    sub_2576B0B14();
    OUTLINED_FUNCTION_1_58();
    sub_2576B0B14();
    type metadata accessor for Proto_StateFeatureType.OneOf_Type(0);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t FeatureType.StateParameters.init(elementType:optional:)@<X0>(char a1@<W1>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for FeatureType.ShapedArrayParameters(0);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v5 = &a2[*(OUTLINED_FUNCTION_7_33() + 20)];
  v6 = type metadata accessor for Proto_StateFeatureType.OneOf_Type(0);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  type metadata accessor for Proto_StateFeatureType(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_2576B06E4(v5);
  OUTLINED_FUNCTION_0_74();
  sub_2576B0B14();
  OUTLINED_FUNCTION_1_58();
  sub_2576B0B14();
  OUTLINED_FUNCTION_21();
  result = __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  *a2 = a1;
  return result;
}

void static FeatureType.StateParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v3 = OUTLINED_FUNCTION_0_0();
    type metadata accessor for FeatureType.StateParameters(v3);

    sub_2574C55BC();
  }
}

uint64_t FeatureType.StateParameters.customMirror.getter()
{
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_33();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  sub_2576B1134();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_257743FF0;
  *(v10 + 32) = 0x54746E656D656C65;
  *(v10 + 40) = 0xEB00000000657079;
  *(v10 + 72) = type metadata accessor for FeatureType.StateParameters.ElementType(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v10 + 48));
  FeatureType.StateParameters.elementType.getter(boxed_opaque_existential_0);
  *(v10 + 80) = 0x6E6F6974704F7369;
  *(v10 + 88) = 0xEA00000000006C61;
  v12 = *v0;
  *(v10 + 120) = MEMORY[0x277D839B0];
  *(v10 + 96) = v12;
  v13 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v13);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t sub_2576B1134()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v3(v2);
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t static FeatureType.StateParameters.ElementType.== infix(_:_:)()
{
  type metadata accessor for FeatureType.ShapedArrayParameters(0);
  OUTLINED_FUNCTION_4();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E48, &qword_257771DB0);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  sub_2576B1134();
  sub_2576B1134();
  sub_2576B0B14();
  sub_2576B0B14();
  if (*v5 == *v3)
  {
    sub_2574C0698();
    v9 = v8;
    sub_2576B1378(v3, type metadata accessor for FeatureType.ShapedArrayParameters);
    sub_2576B1378(v5, type metadata accessor for FeatureType.ShapedArrayParameters);
    if (v9)
    {
      return 1;
    }
  }

  else
  {
    sub_2576B1378(v3, type metadata accessor for FeatureType.ShapedArrayParameters);
    sub_2576B1378(v5, type metadata accessor for FeatureType.ShapedArrayParameters);
  }

  return 0;
}

uint64_t sub_2576B1378(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2576B13D4()
{
  result = qword_27F87A980;
  if (!qword_27F87A980)
  {
    type metadata accessor for Proto_StateFeatureType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A980);
  }

  return result;
}

uint64_t sub_2576B1458(uint64_t a1)
{
  result = type metadata accessor for Proto_StateFeatureType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2576B14D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureType.ShapedArrayParameters(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_25745F3B8);
}

uint64_t __swift_get_extra_inhabitant_indexTm_4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 254)
  {
    v5 = *a1;
    v6 = v5 >= 2;
    v7 = (v5 + 2147483646) & 0x7FFFFFFF;
    if (v6)
    {
      return (v7 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = a4(0);
    v12 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v12, a2, v11);
  }
}

uint64_t sub_2576B15B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeatureType.ShapedArrayParameters(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_25745F3D0);
}

_BYTE *__swift_store_extra_inhabitant_indexTm_4(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = a5(0);
    v9 = &v6[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2576B16A0(uint64_t a1)
{
  v2 = type metadata accessor for FeatureType.ShapedArrayParameters(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_4_41()
{

  return sub_2576B1378(v0, type metadata accessor for FeatureType.StateParameters.ElementType);
}

uint64_t OUTLINED_FUNCTION_7_33()
{

  return type metadata accessor for FeatureType.StateParameters(0);
}

uint64_t static NeuralNetwork.Layer.rankPreservingReshape(name:inputName:outputName:targetShape:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a5;
  v26 = a1;
  v27 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = (v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v18 = swift_allocObject();
  v24 = xmmword_2577442B0;
  *(v18 + 16) = xmmword_2577442B0;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  v19 = swift_allocObject();
  *(v19 + 16) = v24;
  *(v19 + 32) = v25;
  *(v19 + 40) = a6;
  *v17 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_RankPreservingReshapeLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.setter(v20);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v21 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a7 + v21) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v19);
  sub_2574897E0(v13);
  v22 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v22);
  sub_25752846C();
  return sub_257634BB4(v17);
}

uint64_t static NeuralNetwork.Layer.Kind.rankPreservingReshape(targetShape:)@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_RankPreservingReshapeLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.setter(v1);
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.RankPreservingReshapeParameters.init(targetShape:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_RankPreservingReshapeLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  return NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.setter(a1);
}

uint64_t NeuralNetwork.Layer.RankPreservingReshapeParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_2577442B0;
  strcpy((v1 + 32), "Target Shape");
  *(v1 + 45) = 0;
  *(v1 + 46) = -5120;
  v3 = *v0;
  v4 = *(*v0 + 16);
  if (v4)
  {
    v16 = v1;
    v17 = MEMORY[0x277D84F90];
    sub_257483754(0, v4, 0);
    v5 = v3 + 32;
    do
    {
      v5 += 8;
      v6 = sub_257743974();
      v8 = v7;
      v10 = *(v17 + 16);
      v9 = *(v17 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_257483754((v9 > 1), v10 + 1, 1);
      }

      *(v17 + 16) = v10 + 1;
      v11 = v17 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      --v4;
    }

    while (v4);
    v2 = v16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  v12 = sub_257743604();
  v14 = v13;

  *(v2 + 48) = v12;
  *(v2 + 56) = v14;
  return v2;
}

uint64_t NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_257483724(0, v2, 0);
    result = v9;
    v4 = (v1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v10 = result;
      v8 = *(result + 24);
      if (v5 >= v8 >> 1)
      {
        sub_257483724(v8 > 1, v5 + 1, 1);
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v11 = MEMORY[0x277D84F90];
    sub_2574845B8(0, v4, 0);
    v5 = v11;
    v6 = *(v11 + 16);
    v7 = 32;
    do
    {
      v8 = *(a1 + v7);
      v9 = *(v11 + 24);
      if (v6 >= v9 >> 1)
      {
        sub_2574845B8(v9 > 1, v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      *(v11 + 8 * v6 + 32) = v8;
      v7 += 8;
      ++v6;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  *v2 = v5;
  return result;
}

uint64_t (*NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.getter();
  return sub_2576B1EA0;
}

uint64_t sub_2576B1EA0(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.setter(*a1);
  }

  NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.setter(v2);
}

BOOL static NeuralNetwork.Layer.RankPreservingReshapeParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_257487374())
  {
    type metadata accessor for Proto_RankPreservingReshapeLayerParams(0);
    sub_2577431B4();
    sub_2576B22C8(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.RankPreservingReshapeParameters.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for NeuralNetwork.Layer.RankPreservingReshapeParameters(0);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  sub_2576B221C(v0, v11 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2577442B0;
  *(v12 + 32) = 0x6853746567726174;
  *(v12 + 40) = 0xEB00000000657061;
  v13 = NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.getter();
  *(v12 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v12 + 48) = v13;
  v14 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.RankPreservingReshapeParameters(uint64_t a1)
{
  result = qword_27F880E70;
  if (!qword_27F880E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576B221C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.RankPreservingReshapeParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576B22C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576B2338(uint64_t a1)
{
  result = type metadata accessor for Proto_RankPreservingReshapeLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2576B23A4()
{
  OUTLINED_FUNCTION_31();
  v42 = *MEMORY[0x277D85DE8];
  type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C78, &qword_257770B68);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v40 = 0x6567616D49;
  v41 = 0xE500000000000000;
  if (*v0 == 1)
  {
    MEMORY[0x259C64E90](63, 0xE100000000000000);
  }

  v38 = 60;
  v39 = 0xE100000000000000;
  OUTLINED_FUNCTION_8_32();
  v14 = &v0[v13];
  v37 = *&v0[v13];
  OUTLINED_FUNCTION_201();
  v15 = sub_257743974();
  MEMORY[0x259C64E90](v15);

  MEMORY[0x259C64E90](38851, 0xA200000000000000);
  v37 = *(v14 + 1);
  OUTLINED_FUNCTION_201();
  v16 = sub_257743974();
  MEMORY[0x259C64E90](v16);

  MEMORY[0x259C64E90](62, 0xE100000000000000);
  MEMORY[0x259C64E90](v38, v39);

  FeatureType.ImageParameters.sizeFlexibility.getter();
  v17 = OUTLINED_FUNCTION_35_12(v12);
  sub_2574695E4(v12, &qword_27F880C78, &qword_257770B68);
  if (v17 != 1 || (type metadata accessor for Proto_ImageFeatureType(0), OUTLINED_FUNCTION_28_20(), v19) && *v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2577442B0;
    *(inited + 32) = 1701869908;
    *(inited + 40) = 0xE400000000000000;
    v21 = v41;
    *(inited + 48) = v40;
    *(inited + 56) = v21;
    *(inited + 64) = 0;
    FeatureType.ImageParameters.sizeFlexibility.getter();
    if (OUTLINED_FUNCTION_35_12(v9) == 1)
    {
      sub_2574695E4(v9, &qword_27F880C78, &qword_257770B68);
    }

    else
    {
      OUTLINED_FUNCTION_11_32();
      sub_2576B4DAC();
      sub_2576B3B20();
      v23 = v22;
      v25 = v24;
      v27 = v26;
      sub_257469AE0();
      inited = v28;
      OUTLINED_FUNCTION_1_59();
      sub_2576B3600(v4, v29);
      *(inited + 16) = 2;
      *(inited + 72) = 0xD000000000000010;
      *(inited + 80) = 0x8000000257781370;
      *(inited + 88) = v23;
      *(inited + 96) = v25;
      *(inited + 104) = v27;
    }

    type metadata accessor for Proto_ImageFeatureType(0);
    OUTLINED_FUNCTION_28_20();
    if (v19)
    {
      v31 = 0xE300000000000000;
      v32 = 4343634;
      switch(*v30)
      {
        case 1:
          v31 = 0xE900000000000065;
          v32 = 0x6C61637379617247;
          goto LABEL_17;
        case 2:
          goto LABEL_17;
        case 3:
          v32 = 5392194;
          goto LABEL_17;
        case 4:
          v31 = 0x8000000257781350;
          v32 = 0xD000000000000013;
LABEL_17:
          v33 = *(inited + 16);
          if (v33 >= *(inited + 24) >> 1)
          {
            sub_257469AE0();
            inited = v35;
          }

          *(inited + 16) = v33 + 1;
          v34 = inited + 40 * v33;
          *(v34 + 32) = 0x705320726F6C6F43;
          *(v34 + 40) = 0xEB00000000656361;
          *(v34 + 48) = v32;
          *(v34 + 56) = v31;
          *(v34 + 64) = 0;
          break;
        default:
          break;
      }
    }

    sub_2576AACFC(inited);
  }

  OUTLINED_FUNCTION_35();
}

void FeatureType.ImageParameters.init(width:height:colorSpace:optional:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  OUTLINED_FUNCTION_8_32();
  v11 = &v7[v10];
  v12 = type metadata accessor for Proto_ImageFeatureType(0);
  type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v11 = v5;
  v11[1] = v3;
  v17 = v11 + *(v12 + 28);
  *v17 = v9 + 1;
  v17[8] = 1;
  *v7 = v1;
  OUTLINED_FUNCTION_35();
}

void FeatureType.ImageParameters.colorSpace.getter(char *a2@<X8>)
{
  OUTLINED_FUNCTION_8_32();
  OUTLINED_FUNCTION_26_13();
  OUTLINED_FUNCTION_28_20();
  if (v3)
  {
    OUTLINED_FUNCTION_18_29();
  }

  else
  {
    v4 = 4;
  }

  *a2 = v4;
}

uint64_t FeatureType.ImageParameters.Size.init(width:height:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t FeatureType.ImageParameters.sizeFlexibility.getter()
{
  v1 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(v1);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  OUTLINED_FUNCTION_8_32();
  OUTLINED_FUNCTION_26_13();
  OUTLINED_FUNCTION_24_18();
  sub_257487308(v10);
  v11 = 1;
  if (OUTLINED_FUNCTION_35_12(v9) != 1)
  {
    OUTLINED_FUNCTION_12_31();
    sub_2576B4DAC();
    OUTLINED_FUNCTION_7_34();
    sub_2576B418C();
    sub_2576B2E1C();
    OUTLINED_FUNCTION_0_75();
    sub_2576B3600(v5, v12);
    v11 = 0;
  }

  v13 = type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
  return __swift_storeEnumTagSinglePayload(v0, v11, 1, v13);
}

uint64_t FeatureType.ImageParameters.width.setter(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_32();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*FeatureType.ImageParameters.width.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  OUTLINED_FUNCTION_8_32();
  v4 = *(v1 + v3);
  *(a1 + 16) = v3;
  *a1 = v4;
  return sub_2576B2B48;
}

uint64_t FeatureType.ImageParameters.height.setter(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_32();
  *(v1 + v4 + 8) = a1;
  return result;
}

uint64_t (*FeatureType.ImageParameters.height.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  OUTLINED_FUNCTION_8_32();
  *(a1 + 16) = v3;
  *a1 = *(v1 + v3 + 8);
  return sub_2576B2BD8;
}

uint64_t sub_2576B2BEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C78, &qword_257770B68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_257487308(a1);
  return FeatureType.ImageParameters.sizeFlexibility.setter(v4);
}

uint64_t FeatureType.ImageParameters.sizeFlexibility.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C78, &qword_257770B68);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  sub_257487308(a1);
  v12 = type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    OUTLINED_FUNCTION_24_18();
    sub_2574695E4(v13, v14, v15);
    OUTLINED_FUNCTION_24_18();
    sub_2574695E4(v16, v17, v18);
    v19 = 1;
  }

  else
  {
    sub_2576B33FC();
    sub_2574695E4(a1, &qword_27F880C78, &qword_257770B68);
    OUTLINED_FUNCTION_1_59();
    sub_2576B3600(v7, v20);
    v19 = 0;
  }

  v21 = type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  __swift_storeEnumTagSinglePayload(v11, v19, 1, v21);
  OUTLINED_FUNCTION_8_32();
  v23 = v2 + v22;
  v24 = type metadata accessor for Proto_ImageFeatureType(0);
  return sub_2576B338C(v11, v23 + *(v24 + 24));
}

void sub_2576B2E1C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v57 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A0, &unk_2577487A0);
  v4 = OUTLINED_FUNCTION_13(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v53 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v51 - v8;
  type metadata accessor for Proto_SizeRange(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v54 = (v11 - v12);
  MEMORY[0x28223BE20](v13);
  v15 = (&v51 - v14);
  v16 = type metadata accessor for Proto_ImageFeatureType.ImageSizeRange(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v21 = type metadata accessor for Proto_ImageFeatureType.ImageSize(0);
  v51 = *(v21 - 8);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_3();
  v24 = (v23 - v22);
  v56 = type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v52 = (v27 - v26);
  v28 = type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes(0);
  v29 = OUTLINED_FUNCTION_13(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v32 = (v31 - v30);
  type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_34();
  v55 = v1;
  sub_2576B418C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2576B4DAC();
    sub_257487308(v20 + *(v16 + 20));
    OUTLINED_FUNCTION_65(v9);
    if (v34)
    {
      *v15 = 0;
      v15[1] = 0;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_65(v9);
      v47 = v53;
      v46 = v54;
      if (!v34)
      {
        sub_2574695E4(v9, &qword_27F87A8A0, &unk_2577487A0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_55();
      sub_2576B4DAC();
      v47 = v53;
      v46 = v54;
    }

    OUTLINED_FUNCTION_3_55();
    sub_2576B4DAC();
    sub_257487308(v20 + *(v16 + 24));
    OUTLINED_FUNCTION_65(v47);
    if (v34)
    {
      *v46 = 0;
      v46[1] = 0;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_0_75();
      sub_2576B3600(v55, v48);
      OUTLINED_FUNCTION_14_16();
      OUTLINED_FUNCTION_65(v47);
      if (!v34)
      {
        sub_2574695E4(v47, &qword_27F87A8A0, &unk_2577487A0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_75();
      sub_2576B3600(v55, v49);
      OUTLINED_FUNCTION_14_16();
      OUTLINED_FUNCTION_3_55();
      sub_2576B4DAC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C80, &unk_257770B70);
    OUTLINED_FUNCTION_3_55();
    sub_2576B4DAC();
    swift_storeEnumTagMultiPayload();
LABEL_21:
    OUTLINED_FUNCTION_35();
    return;
  }

  sub_2576B4DAC();
  v35 = *v32;
  v36 = *(*v32 + 16);
  if (!v36)
  {
    OUTLINED_FUNCTION_0_75();
    sub_2576B3600(v55, v50);
    OUTLINED_FUNCTION_15_18();
    v37 = MEMORY[0x277D84F90];
LABEL_20:
    *v52 = v37;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_11_32();
    sub_2576B4DAC();
    goto LABEL_21;
  }

  v58 = MEMORY[0x277D84F90];
  sub_257484F80(0, v36, 0);
  v37 = v58;
  v38 = v35 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
  v39 = *(v51 + 72);
  while (1)
  {
    sub_2576B418C();
    v40 = *v24;
    if (*v24 < 0)
    {
      break;
    }

    v41 = v24[1];
    sub_2576B3600(v24, type metadata accessor for Proto_ImageFeatureType.ImageSize);
    if (v41 < 0)
    {
      goto LABEL_23;
    }

    v58 = v37;
    v43 = *(v37 + 16);
    v42 = *(v37 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_257484F80((v42 > 1), v43 + 1, 1);
      v37 = v58;
    }

    *(v37 + 16) = v43 + 1;
    v44 = v37 + 16 * v43;
    *(v44 + 32) = v40;
    *(v44 + 40) = v41;
    v38 += v39;
    if (!--v36)
    {
      OUTLINED_FUNCTION_0_75();
      sub_2576B3600(v55, v45);
      OUTLINED_FUNCTION_15_18();
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_2576B338C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576B33FC()
{
  v1 = OUTLINED_FUNCTION_16_1();
  v2 = type metadata accessor for SizeRange(v1);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v6 = (v4 - v5);
  v8 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_135_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_49();
  sub_2576B418C();
  OUTLINED_FUNCTION_201();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C80, &unk_257770B70);
    sub_2576B4DAC();
    sub_2576B4DAC();
    sub_2576B418C();
    sub_2576B418C();
    sub_2576B438C();
    OUTLINED_FUNCTION_4_42();
    sub_2576B3600(v0, v13);
    sub_2576B3600(v11, v6);
  }

  else
  {
    sub_2576B41E8();
  }

  type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2576B3600(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void FeatureType.ImageParameters.sizeFlexibility.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  *v3 = v0;
  v3[1] = type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 64);
  v3[2] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  v3[3] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  OUTLINED_FUNCTION_13(v7);
  v3[4] = OUTLINED_FUNCTION_27_17();
  v8 = OUTLINED_FUNCTION_27_17();
  v3[5] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C78, &qword_257770B68);
  OUTLINED_FUNCTION_13(v9);
  v3[6] = OUTLINED_FUNCTION_27_17();
  v3[7] = OUTLINED_FUNCTION_27_17();
  v10 = OUTLINED_FUNCTION_27_17();
  v3[8] = v10;
  OUTLINED_FUNCTION_8_32();
  *(v3 + 18) = v11;
  v12 = *(OUTLINED_FUNCTION_26_13() + 24);
  *(v3 + 19) = v12;
  sub_257487308(v0 + v12);
  v13 = 1;
  if (OUTLINED_FUNCTION_35_12(v8) != 1)
  {
    OUTLINED_FUNCTION_12_31();
    sub_2576B4DAC();
    OUTLINED_FUNCTION_7_34();
    sub_2576B418C();
    sub_2576B2E1C();
    OUTLINED_FUNCTION_0_75();
    sub_2576B3600(v6, v14);
    v13 = 0;
  }

  v15 = type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
  __swift_storeEnumTagSinglePayload(v10, v13, 1, v15);
  OUTLINED_FUNCTION_35();
}

void sub_2576B3818()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 64);
  if (v4)
  {
    v6 = *(v1 + 40);
    v5 = *(v1 + 48);
    v8 = *(v1 + 24);
    v7 = *(v1 + 32);
    v9 = *(v1 + 16);
    sub_257487308(*(*v0 + 64));
    FeatureType.ImageParameters.sizeFlexibility.setter(v5);
    sub_2574695E4(v3, &qword_27F880C78, &qword_257770B68);
  }

  else
  {
    sub_257487308(*(*v0 + 64));
    v10 = type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v10);
    v12 = *(v1 + 56);
    v13 = *(v1 + 64);
    if (EnumTagSinglePayload == 1)
    {
      v14 = OUTLINED_FUNCTION_263();
      sub_2574695E4(v14, v15, &qword_257770B68);
      sub_2574695E4(v12, &qword_27F880C78, &qword_257770B68);
      v16 = 1;
    }

    else
    {
      sub_2576B33FC();
      sub_2574695E4(v13, &qword_27F880C78, &qword_257770B68);
      OUTLINED_FUNCTION_1_59();
      sub_2576B3600(v12, v17);
      v16 = 0;
    }

    v18 = *(v1 + 76);
    v2 = *(v1 + 56);
    v3 = *(v1 + 64);
    v6 = *(v1 + 40);
    v5 = *(v1 + 48);
    v8 = *(v1 + 24);
    v7 = *(v1 + 32);
    v19 = *v1 + *(v1 + 72);
    v9 = *(v1 + 16);
    __swift_storeEnumTagSinglePayload(v7, v16, 1, *(v1 + 8));
    sub_2576B338C(v7, v19 + v18);
  }

  free(v3);
  free(v2);
  free(v5);
  free(v6);
  free(v7);
  free(v8);
  free(v9);
  OUTLINED_FUNCTION_35();

  free(v20);
}

uint64_t FeatureType.ImageParameters.colorSpace.setter(char *a1)
{
  v2 = qword_257772190[*a1];
  OUTLINED_FUNCTION_8_32();
  result = OUTLINED_FUNCTION_26_13();
  v4 = v1 + *(result + 28);
  *v4 = v2;
  *(v4 + 8) = 1;
  return result;
}

uint64_t (*FeatureType.ImageParameters.colorSpace.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  OUTLINED_FUNCTION_8_32();
  *(a1 + 8) = v3;
  *(a1 + 12) = *(OUTLINED_FUNCTION_26_13() + 28);
  OUTLINED_FUNCTION_28_20();
  if (v4)
  {
    OUTLINED_FUNCTION_18_29();
  }

  else
  {
    v5 = 4;
  }

  *(a1 + 16) = v5;
  return sub_2576B3AF0;
}

uint64_t sub_2576B3AF0(uint64_t result)
{
  v1 = *result + *(result + 8) + *(result + 12);
  *v1 = qword_257772190[*(result + 16)];
  *(v1 + 8) = 1;
  return result;
}

void sub_2576B3B20()
{
  OUTLINED_FUNCTION_31();
  v2 = type metadata accessor for SizeRange(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_135_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = (v7 - v6);
  OUTLINED_FUNCTION_2_49();
  sub_2576B418C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C80, &unk_257770B70);
    OUTLINED_FUNCTION_13_22();
    sub_2576B4DAC();
    sub_2576B4DAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257743FF0;
    OUTLINED_FUNCTION_31_11(inited, 26967);
    SizeRange.description.getter();
    *(inited + 48) = v10;
    *(inited + 56) = v11;
    *(inited + 64) = 0;
    *(inited + 72) = 0x746867696548;
    *(inited + 80) = 0xE600000000000000;
    SizeRange.description.getter();
    *(inited + 88) = v12;
    *(inited + 96) = v13;
    *(inited + 104) = 0;
    sub_2576A6964(inited);
    sub_2576B3600(v0, type metadata accessor for SizeRange);
    sub_2576B3600(v1, type metadata accessor for SizeRange);
  }

  else
  {
    v14 = *v8;
    v15 = *(*v8 + 16);
    if (v15)
    {
      v24 = MEMORY[0x277D84F90];
      sub_257484040(0, v15, 0);
      v16 = v14 + 40;
      do
      {
        v22 = sub_257743974();
        v23 = v17;
        MEMORY[0x259C64E90](38851, 0xA200000000000000);
        v18 = sub_257743974();
        MEMORY[0x259C64E90](v18);

        v20 = *(v24 + 16);
        v19 = *(v24 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_257484040((v19 > 1), v20 + 1, 1);
        }

        v16 += 16;
        *(v24 + 16) = v20 + 1;
        v21 = v24 + 24 * v20;
        *(v21 + 32) = v22;
        *(v21 + 40) = v23;
        *(v21 + 48) = 0;
        --v15;
      }

      while (v15);
    }
  }

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_35();
}

uint64_t FeatureType.ImageParameters.init()@<X0>(_BYTE *a2@<X8>)
{
  *a2 = 0;
  OUTLINED_FUNCTION_8_32();
  v4 = &a2[v3];
  v5 = type metadata accessor for Proto_ImageFeatureType(0);
  *v4 = 0;
  v4[1] = 0;
  type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = v4 + *(v5 + 28);
  *v10 = 0;
  v10[8] = 1;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void static FeatureType.ImageParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    OUTLINED_FUNCTION_8_32();

    sub_2574BCFA0();
  }
}

void FeatureType.ImageParameters.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v21 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v28);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  v30 = type metadata accessor for FeatureType.ImageParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  sub_2576B418C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_257744000;
  v33 = OUTLINED_FUNCTION_31_11(v32, 26999);
  v34 = &v20[*(v30 + 20)];
  v35 = MEMORY[0x277D83B88];
  v37 = *v34;
  v36 = v34[1];
  v33[6] = v37;
  v33[9] = v35;
  v33[10] = 0x746867696568;
  v33[11] = 0xE600000000000000;
  v33[12] = v36;
  v33[15] = v35;
  v33[16] = 0x78656C46657A6973;
  v33[17] = 0xEF7974696C696269;
  *(v32 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C78, &qword_257770B68);
  __swift_allocate_boxed_opaque_existential_0((v32 + 144));
  FeatureType.ImageParameters.sizeFlexibility.getter();
  *(v32 + 176) = 0x617053726F6C6F63;
  *(v32 + 184) = 0xEA00000000006563;
  *(v32 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E80, &qword_257771F20);
  FeatureType.ImageParameters.colorSpace.getter((v32 + 192));
  *(v32 + 224) = 0x6E6F6974704F7369;
  *(v32 + 232) = 0xEA00000000006C61;
  v38 = *v20;
  *(v32 + 264) = MEMORY[0x277D839B0];
  *(v32 + 240) = v38;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  (*(v23 + 104))(v27, *MEMORY[0x277D84C38], v21);
  OUTLINED_FUNCTION_201();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576B418C()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

void sub_2576B41E8()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_ImageFeatureType.ImageSize(v3);
  OUTLINED_FUNCTION_63();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = (v6 - v5);
  type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v8 = *(v2 + 16);
  if (v8)
  {
    v15 = MEMORY[0x277D84F90];
    sub_257484F28(0, v8, 0);
    v9 = v15;
    v10 = (v2 + 40);
    while (1)
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      if (v12 < 0)
      {
        break;
      }

      *v7 = v12;
      if (v11 < 0)
      {
        goto LABEL_12;
      }

      v7[1] = v11;
      v14 = *(v15 + 16);
      v13 = *(v15 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_257484F28(v13 > 1, v14 + 1, 1);
      }

      v10 += 2;
      *(v15 + 16) = v14 + 1;
      sub_2576B4DAC();
      if (!--v8)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
LABEL_10:
    *v0 = v9;
    OUTLINED_FUNCTION_35();
  }
}

void sub_2576B438C()
{
  OUTLINED_FUNCTION_31();
  v1 = OUTLINED_FUNCTION_16_1();
  v2 = type metadata accessor for Proto_SizeRange(v1);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v4 = type metadata accessor for Proto_ImageFeatureType.ImageSizeRange(0);
  v5 = *(v4 + 20);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
  v9 = *(v4 + 24);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  sub_2576B4DAC();
  sub_2574695E4(v0 + v5, &qword_27F87A8A0, &unk_2577487A0);
  sub_2576B4DAC();
  __swift_storeEnumTagSinglePayload(v0 + v5, 0, 1, v2);
  OUTLINED_FUNCTION_263();
  sub_2576B4DAC();
  sub_2574695E4(v0 + v9, &qword_27F87A8A0, &unk_2577487A0);
  sub_2576B4DAC();
  __swift_storeEnumTagSinglePayload(v0 + v9, 0, 1, v2);
  OUTLINED_FUNCTION_35();
}