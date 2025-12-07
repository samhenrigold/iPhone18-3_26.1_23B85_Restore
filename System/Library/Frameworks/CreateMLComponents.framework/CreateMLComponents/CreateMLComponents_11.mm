void sub_237D49AC8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_2_46(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ComposedSupervisedTemporalEstimator(255, a2);

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_4_39()
{
}

uint64_t OUTLINED_FUNCTION_6_31(uint64_t a1)
{
  *(v2 + 8) = sub_237D47960;
  v5 = v1[24];
  v6 = v1[19];
  v4[5] = v1[20];
  v4[6] = v6;
  v4[3] = v3;
  v4[4] = a1;
  v4[2] = v3;
  return v5;
}

uint64_t OUTLINED_FUNCTION_8_38()
{
  v1 = v0[19];
  v2 = v0[2];
  v3 = v0[3];
  v0[4] = v2;
  v0[5] = v3;
  v0[62] = v2;
  v0[63] = v3;
  return v1 + 48;
}

uint64_t OUTLINED_FUNCTION_20_18()
{
  *(v0 + 8) = sub_237D45E04;
  result = v1[19];
  v4 = v1[14];
  *(v2 + 16) = v1[15];
  *(v2 + 24) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_10()
{
}

uint64_t OUTLINED_FUNCTION_35_7()
{

  return AnnotatedFeature.init(feature:annotation:)(v0, v3, v2, v4, v1);
}

uint64_t OUTLINED_FUNCTION_44_6(uint64_t a1)
{
  *(v1 + 512) = a1;

  return sub_237EF8A60();
}

uint64_t OUTLINED_FUNCTION_45_4()
{
}

uint64_t OUTLINED_FUNCTION_60_5()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_74_1()
{
}

unint64_t ConcatenationError.errorDescription.getter()
{
  v2 = 0xD000000000000038;
  v3 = *(v0 + 8);
  if (v3)
  {
    if (v3 == 1)
    {
      OUTLINED_FUNCTION_25_9();
    }

    else
    {
      OUTLINED_FUNCTION_2_47();
      OUTLINED_FUNCTION_0_40();
      MEMORY[0x2383E0710](v1, v3);
      OUTLINED_FUNCTION_5_38();
      return v5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_9();
    return 0xD00000000000004ELL;
  }

  return v2;
}

unint64_t ConcatenationError.debugDescription.getter()
{
  v2 = 0xD000000000000038;
  v3 = *(v0 + 8);
  if (v3)
  {
    if (v3 == 1)
    {
      OUTLINED_FUNCTION_25_9();
    }

    else
    {
      OUTLINED_FUNCTION_2_47();
      OUTLINED_FUNCTION_0_40();
      MEMORY[0x2383E0710](v1, v3);
      OUTLINED_FUNCTION_5_38();
      return v5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_9();
    return 0xD00000000000004ELL;
  }

  return v2;
}

uint64_t static ConcatenationError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_237D4A584(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_237D4A584(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v13 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v15 = sub_237EF9D40();
      v16 = OUTLINED_FUNCTION_3_47();
      OUTLINED_FUNCTION_1_46(v16, v17);
      v18 = OUTLINED_FUNCTION_3_47();
      sub_237D4A584(v18, v19);
      return v15 & 1;
    }

    OUTLINED_FUNCTION_1_46(v13, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    v9 = OUTLINED_FUNCTION_3_47();
    OUTLINED_FUNCTION_1_46(v9, v10);
    v11 = OUTLINED_FUNCTION_3_47();
    sub_237D4A584(v11, v12);
    return 0;
  }

  v6 = 1;
  sub_237D4A584(*a1, 1uLL);
  sub_237D4A584(v4, 1uLL);
  return v6;
}

uint64_t sub_237D4A570(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    return sub_237EF8260();
  }

  return result;
}

uint64_t sub_237D4A584(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_237D4A59C()
{
  result = qword_27DEB15A0;
  if (!qword_27DEB15A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB15A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18CreateMLComponents18ConcatenationErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_237D4A614(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237D4A668(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_237D4A6C4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void OUTLINED_FUNCTION_0_40()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_1_46(uint64_t a1, unint64_t a2)
{
  sub_237D4A570(a1, a2);
  sub_237D4A570(v2, v3);

  return sub_237D4A584(v2, v3);
}

uint64_t OUTLINED_FUNCTION_2_47()
{

  return sub_237EF9330();
}

void OUTLINED_FUNCTION_5_38()
{

  JUMPOUT(0x2383E0710);
}

uint64_t sub_237D4A7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  OUTLINED_FUNCTION_1();
  v57 = v6;
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26();
  v56 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v52 = v51 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  OUTLINED_FUNCTION_1();
  v55 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26();
  v54 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v53 = v51 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA58, &qword_237F17520);
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_26();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v51 - v28;
  v51[1] = a2;
  OUTLINED_FUNCTION_3_48();
  v30 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  v34 = MEMORY[0x28223BE20](v33);
  v36 = v51 - v35;
  v37 = a1;
  (*(v32 + 16))(v51 - v35, a1, v30, v34);
  OUTLINED_FUNCTION_3_48();
  if (swift_dynamicCast())
  {
    (*(v22 + 32))(v26, v29, v20);
    sub_237EF6B10();
    sub_237EF7DF0();
    OUTLINED_FUNCTION_1_47();
    MEMORY[0](a1, v30);
    (*(v22 + 8))(v26, v20);
    return MEMORY[0](v36, v30);
  }

  v38 = v59;
  v51[0] = v37;
  OUTLINED_FUNCTION_3_48();
  if (swift_dynamicCast())
  {
    v39 = v55;
    v40 = v53;
    (*(v55 + 32))(v53, v19, v38);
    v41 = v54;
    (*(v39 + 16))(v54, v40, v38);
    sub_237C651A0();
    sub_237EF6B10();
    sub_237EF7F00();
    OUTLINED_FUNCTION_1_47();
    MEMORY[0](v51[0], v30);
    v42 = *(v39 + 8);
    v42(v41, v38);
    v42(v40, v38);
    return MEMORY[0](v36, v30);
  }

  v43 = v52;
  OUTLINED_FUNCTION_3_48();
  v44 = v58;
  v45 = swift_dynamicCast();
  v46 = v51[0];
  if (v45)
  {
    v48 = v56;
    v47 = v57;
    (*(v57 + 32))(v56, v43, v44);
    sub_237EF6B10();
    sub_237EF7DF0();
    OUTLINED_FUNCTION_1_47();
    MEMORY[0](v46, v30);
    (*(v47 + 8))(v48, v44);
    return MEMORY[0](v36, v30);
  }

  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_237EF9330();

  strcpy(v61, "Scalar type ");
  BYTE5(v61[1]) = 0;
  HIWORD(v61[1]) = -5120;
  v50 = sub_237EFA220();
  MEMORY[0x2383E0710](v50);

  MEMORY[0x2383E0710](0xD000000000000012, 0x8000000237EFE040);
  result = sub_237EF9740("Fatal error", 11, 2, v61[0], v61[1], "CreateMLComponents/Tensor+MLShapedArray.swift", 45, 2, 46);
  __break(1u);
  return result;
}

void *sub_237D4ADB0(void *result, uint64_t a2, void *__src, uint64_t a4)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 - result < -3)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if ((v4 + 3) >= 7)
  {
    v5 = v4 / 4;
    if (v5 >= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = v5;
    }

    if (a4 < 0)
    {
      v6 = v5;
    }

    if (!__src)
    {
      return result;
    }
  }

  else
  {
LABEL_4:
    v5 = 0;
    v6 = 0;
    if (!__src)
    {
      return result;
    }
  }

  if (v6)
  {
    if (v5 >= v6)
    {
      return memcpy(result, __src, 4 * v6);
    }

    goto LABEL_17;
  }

  return result;
}

void *sub_237D4AE54(void *result, uint64_t a2, void *__src, uint64_t a4)
{
  if (result)
  {
    v4 = (a2 - result) / 2;
    if (!__src)
    {
      return result;
    }
  }

  else
  {
    v4 = 0;
    if (!__src)
    {
      return result;
    }
  }

  if (a4)
  {
    if (v4 < a4)
    {
      __break(1u);
    }

    else
    {
      return memcpy(result, __src, 2 * a4);
    }
  }

  return result;
}

uint64_t sub_237D4AECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v21[7] = a5;
  v21[0] = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0, &unk_237F03680);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v21 - v10;
  v12 = sub_237EF6430();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_237EF6450();
  MEMORY[0x28223BE20](v18 - 8);
  sub_237EF8260();
  sub_237EF6460();
  (*(v14 + 104))(v17, *a4, v12);
  v19 = sub_237EF64B0();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v19);
  v21[4] = a1;
  v21[5] = a2;
  return sub_237EF69E0();
}

void sub_237D4B0A8(void *result, uint64_t a2, double *a3, uint64_t a4)
{
  v4 = a4;
  if (!result)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (!v12)
    {
LABEL_13:

      return;
    }

    goto LABEL_11;
  }

  v7 = (a2 - result) / 4;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_3:
  v14 = MEMORY[0x277D84F90];
  sub_237C63670(0, a4 & ~(a4 >> 63), 0);
  if (v4 < 0)
  {
    goto LABEL_15;
  }

  v8 = v14;
  v9 = *(v14 + 16);
  do
  {
    v10 = *a3;
    v11 = *(v14 + 24);
    v12 = v9 + 1;
    if (v9 >= v11 >> 1)
    {
      sub_237C63670(v11 > 1, v9 + 1, 1);
    }

    v13 = v10;
    *(v14 + 16) = v12;
    *(v14 + 4 * v9 + 32) = v13;
    ++a3;
    ++v9;
    --v4;
  }

  while (v4);
LABEL_11:
  if (v7 >= v12)
  {
    memcpy(result, (v8 + 32), 4 * v12);
    goto LABEL_13;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t SerializationError.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SerializationError(0);
  OUTLINED_FUNCTION_4_40();
  MEMORY[0x28223BE20](v8);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_237D4B4D4(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v21 = *v10;
      v22 = v10[1];
      OUTLINED_FUNCTION_0_41();
      sub_237EF9330();
      MEMORY[0x2383E0710](0xD000000000000038, 0x8000000237EFE060);
      MEMORY[0x2383E0710](v21, v22);

      MEMORY[0x2383E0710](11817, 0xE200000000000000);
      return v24[0];
    }

    v12 = OUTLINED_FUNCTION_1_48();
    v13(v12);
    OUTLINED_FUNCTION_0_41();
    sub_237EF9330();

    OUTLINED_FUNCTION_10_23();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_1_48();
    v17(v16);
    OUTLINED_FUNCTION_0_41();
    sub_237EF9330();

    OUTLINED_FUNCTION_10_23();
    v15 = v18 + 6;
  }

  v24[0] = v15;
  v24[1] = v14;
  sub_237D4B9FC(&qword_280C8E568, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v19 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v19);

  MEMORY[0x2383E0710](46, 0xE100000000000000);
  v20 = v24[0];
  (*(v4 + 8))(v7, v2);
  return v20;
}

uint64_t type metadata accessor for SerializationError(uint64_t a1)
{
  result = qword_280C8E648;
  if (!qword_280C8E648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237D4B4D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SerializationError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SerializationError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v38 = v5;
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  type metadata accessor for SerializationError(0);
  OUTLINED_FUNCTION_4_40();
  MEMORY[0x28223BE20](v11);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB15A8, &qword_237F0E530);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v38 - v21;
  v24 = (&v38 + *(v23 + 56) - v21);
  sub_237D4B4D4(a1, &v38 - v21);
  sub_237D4B4D4(a2, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_237D4B4D4(v22, v19);
    if (!swift_getEnumCaseMultiPayload())
    {
      v35 = v38;
      v34 = v39;
      (*(v38 + 32))(v10, v24, v39);
      v28 = sub_237EF5EA0();
      v36 = *(v35 + 8);
      v36(v10, v34);
      v36(v19, v34);
      goto LABEL_20;
    }

    (*(v38 + 8))(v19, v39);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_237D4B4D4(v22, v16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v38;
      v26 = v39;
      (*(v38 + 32))(v7, v24, v39);
      v28 = sub_237EF5EA0();
      v29 = *(v27 + 8);
      v29(v7, v26);
      v29(v16, v26);
LABEL_20:
      sub_237D4B958(v22);
      return v28 & 1;
    }

    (*(v38 + 8))(v16, v39);
    goto LABEL_17;
  }

  sub_237D4B4D4(v22, v13);
  v31 = *v13;
  v30 = v13[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {

LABEL_17:
    sub_237D4B8F0(v22);
    goto LABEL_18;
  }

  if (v31 == *v24 && v30 == v24[1])
  {

    goto LABEL_22;
  }

  v33 = sub_237EF9D40();

  if (v33)
  {
LABEL_22:
    sub_237D4B958(v22);
    v28 = 1;
    return v28 & 1;
  }

  sub_237D4B958(v22);
LABEL_18:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_237D4B8F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB15A8, &qword_237F0E530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D4B958(uint64_t a1)
{
  v2 = type metadata accessor for SerializationError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D4B9FC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_237D4BA58(uint64_t a1)
{
  result = sub_237EF5EF0();
  if (v2 <= 0x3F)
  {
    result = sub_237D4BACC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237D4BACC()
{
  result = qword_280C8E570;
  if (!qword_280C8E570)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280C8E570);
  }

  return result;
}

uint64_t sub_237D4BB38(uint64_t a1)
{
  type metadata accessor for DataFrameRowFeatureProvider();
  v2 = swift_allocObject();
  v3 = sub_237EF8260();
  sub_237D4BC3C(v3, a1);
  return v2;
}

uint64_t sub_237D4BBE0()
{

  return swift_deallocClassInstance();
}

void *sub_237D4BC3C(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1678, &unk_237F0E6E0);
  MEMORY[0x28223BE20](v30);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v29 = v24 - v8;
  v2[2] = a1;
  v2[4] = a2;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v24[0] = v2;
    v31 = MEMORY[0x277D84F90];
    sub_237EF8260();
    sub_237C63804(0, v9, 0);
    v10 = v31;
    v28 = *(a1 + 16);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1670, &qword_237F0E6A0);
    v12 = result;
    v13 = 0;
    v14 = *(result - 1);
    v25 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v26 = v9;
    v24[1] = v14 + 32;
    v24[2] = v14 + 16;
    v27 = a1;
    while (v28 != v13)
    {
      if (v13 >= *(a1 + 16))
      {
        goto LABEL_11;
      }

      v16 = v29;
      v15 = v30;
      v17 = *(v30 + 48);
      (*(v14 + 16))(&v29[v17], v25 + *(v14 + 72) * v13, v12);
      *v6 = v13;
      (*(v14 + 32))(&v6[*(v15 + 48)], &v16[v17], v12);
      v18 = sub_237EF6240();
      v20 = v19;
      result = sub_237D4C40C(v6);
      v31 = v10;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_237C63804((v21 > 1), v22 + 1, 1);
        v10 = v31;
      }

      *(v10 + 16) = v22 + 1;
      v23 = (v10 + 24 * v22);
      v23[4] = v18;
      v23[5] = v20;
      v23[6] = v13++;
      a1 = v27;
      if (v26 == v13)
      {

        v2 = v24[0];
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_9:
    v2[3] = sub_237D27C38(v10);
    return v2;
  }

  return result;
}

uint64_t sub_237D4BF28()
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1670, &qword_237F0E6A0);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - v4;
  v6 = *(v0 + 16);
  KeyPath = swift_getKeyPath();
  v8 = *(v6 + 16);
  if (v8)
  {
    v29 = MEMORY[0x277D84F90];
    sub_237C62D90(0, v8, 0);
    v9 = v29;
    v11 = *(v2 + 16);
    v10 = v2 + 16;
    v12 = v6 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v24 = *(v10 + 56);
    v25 = v11;
    v23 = (v10 - 8);
    do
    {
      v13 = v26;
      v14 = v10;
      v25(v5, v12, v26);
      v15 = KeyPath;
      swift_getAtKeyPath();
      (*v23)(v5, v13);
      v16 = v27;
      v17 = v28;
      v29 = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_237C62D90((v18 > 1), v19 + 1, 1);
        v9 = v29;
      }

      *(v9 + 16) = v19 + 1;
      v20 = v9 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v12 += v24;
      --v8;
      v10 = v14;
      KeyPath = v15;
    }

    while (v8);
  }

  return sub_237CADF98();
}

uint64_t sub_237D4C118@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1670, &qword_237F0E6A0);
  result = sub_237EF6240();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237D4C158(uint64_t *a1)
{
  sub_237EF8260();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1670, &qword_237F0E6A0);
  return sub_237EF6250();
}

unint64_t sub_237D4C1B0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1670, &qword_237F0E6A0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  v10 = *(v1 + 24);
  if (!*(v10 + 16))
  {
    return 0;
  }

  result = sub_237D2FC30(a1);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = *(*(v10 + 56) + 8 * result);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v14 = *(v2 + 16);
    if (v13 < *(v14 + 16))
    {
      (*(v6 + 16))(v9, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v4);
      sub_237EF62A0();
      (*(v6 + 8))(v9, v4);
      return v15[1];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237D4C38C()
{

  return v0;
}

uint64_t sub_237D4C3B4()
{
  sub_237D4C38C();

  return swift_deallocClassInstance();
}

uint64_t sub_237D4C40C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1678, &unk_237F0E6E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_237D4C494()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  OUTLINED_FUNCTION_3_49(v0, sel_addObject_);
}

void sub_237D4C4F0()
{
  OUTLINED_FUNCTION_0_42();
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  OUTLINED_FUNCTION_3_49(v1, sel_addObject_);
}

void sub_237D4C54C()
{
  OUTLINED_FUNCTION_0_42();
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithChar_];
  OUTLINED_FUNCTION_3_49(v1, sel_addObject_);
}

void sub_237D4C5A8()
{
  OUTLINED_FUNCTION_0_42();
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  OUTLINED_FUNCTION_3_49(v1, sel_addObject_);
}

void sub_237D4C604()
{
  OUTLINED_FUNCTION_0_42();
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedChar_];
  OUTLINED_FUNCTION_3_49(v1, sel_addObject_);
}

void sub_237D4C660()
{
  OUTLINED_FUNCTION_0_42();
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  OUTLINED_FUNCTION_3_49(v1, sel_addObject_);
}

void sub_237D4C6BC(uint64_t a1, SEL *a2)
{
  v3 = *(v2 + 8);
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) *a2];
  [v3 addObject_];
}

void sub_237D4C728(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 8);
  sub_237D4D3C8();
  sub_237EF8260();
  v5 = sub_237D6B380(a1);
  [v4 addObject_];
}

uint64_t sub_237D4C7A4(float a1)
{
  v3 = *v1;
  v4 = v1[1];
  [v4 count];
  v5 = sub_237DA2564();
  OUTLINED_FUNCTION_1_49(v5, v6, v7);
  sub_237D86C8C();
  OUTLINED_FUNCTION_5_39();
  OUTLINED_FUNCTION_2_48();
  swift_endAccess();
  v8 = sub_237D6B140(a1);
  [v4 addObject_];

  OUTLINED_FUNCTION_11_28(v3 + 120, &v10);
  sub_237D6D14C(v11);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return swift_endAccess();
}

uint64_t sub_237D4C880(double a1)
{
  v3 = *v1;
  v4 = v1[1];
  [v4 count];
  v5 = sub_237DA2564();
  OUTLINED_FUNCTION_1_49(v5, v6, v7);
  sub_237D86C8C();
  OUTLINED_FUNCTION_5_39();
  OUTLINED_FUNCTION_2_48();
  swift_endAccess();
  v8 = sub_237D6B214(a1);
  [v4 addObject_];

  OUTLINED_FUNCTION_11_28(v3 + 120, &v10);
  sub_237D6D14C(v11);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return swift_endAccess();
}

uint64_t sub_237D4C95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v20 = v3[1];
  [v20 count];
  v7 = sub_237DA2564();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_11_28(v6 + 120, v23);
  sub_237D86C8C();
  v14 = *(*(v6 + 120) + 16);
  sub_237D86D60(v14);
  sub_237D6D628(v14, v7, v9, v11, v13 & 1, (v6 + 120));
  swift_endAccess();
  v23[3] = a2;
  v23[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  v16 = v23[6];
  v17 = sub_237D6B2E8(v23);
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1(v23);
    [v20 addObject_];
  }

  OUTLINED_FUNCTION_11_28(v6 + 120, v22);
  sub_237D6D14C(v23);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return swift_endAccess();
}

uint64_t sub_237D4CAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);
  [v6 count];
  v7 = sub_237DA2564();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_237D86C8C();
  v14 = *(*(v3 + 16) + 16);
  sub_237D86D60(v14);
  sub_237D6D628(v14, v7, v9, v11, v13 & 1, (v3 + 16));
  [v6 addObject_];
  sub_237E31298();
  v20[0] = v15;
  v20[1] = v16;
  v20[2] = v17;
  _s14KeyedContainerVMa_0(0, a2, a3, v18);

  sub_237EF8260();
  swift_getWitnessTable();
  sub_237EF9A90();
  sub_237D6D14C(v20);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_237D4CC4C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = v1[1];
  [v4 count];
  v5 = sub_237DA2564();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_237D86C8C();
  v12 = *(v1[2] + 16);
  sub_237D86D60(v12);
  sub_237D6D628(v12, v5, v7, v9, v11 & 1, v1 + 2);
  v13 = v1[2];
  v14 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  [v4 addObject_];
  v15 = *v2;
  a1[3] = &_s16UnkeyedContainerVN;
  a1[4] = sub_237D4D374();
  *a1 = v15;
  a1[1] = v14;
  a1[2] = v13;

  sub_237EF8260();
  sub_237D6D14C(v17);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_237D4CD70@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);

  v5 = [v3 count];
  v6 = _s18ReferencingEncoderCMa();
  swift_allocObject();
  v7 = sub_237D4F80C(v4, v5, v3);
  a1[3] = v6;
  result = sub_237D4D31C();
  a1[4] = result;
  *a1 = v7;
  return result;
}

unint64_t sub_237D4D31C()
{
  result = qword_27DEB1680;
  if (!qword_27DEB1680)
  {
    _s18ReferencingEncoderCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB1680);
  }

  return result;
}

unint64_t sub_237D4D374()
{
  result = qword_280C8D838[0];
  if (!qword_280C8D838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C8D838);
  }

  return result;
}

unint64_t sub_237D4D3C8()
{
  result = qword_280C8CCF0;
  if (!qword_280C8CCF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C8CCF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_49(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_48()
{

  return sub_237D6D628(v5, v1, v2, v3, v4 & 1, (v0 + 120));
}

id OUTLINED_FUNCTION_3_49(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_5_39()
{
  v2 = *(*(v0 + 120) + 16);

  return sub_237D86D60(v2);
}

uint64_t sub_237D4D4AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v13 = MEMORY[0x277D84F90];
    sub_237C62DB0(0, v4, 0);
    v6 = 0;
    v5 = v13;
    v7 = (a1 + 32);
    while (v6 < *(a1 + 16))
    {
      v8 = *v7;
      v13 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_237C62DB0(v9 > 1, v10 + 1, 1);
        v5 = v13;
      }

      ++v6;
      *(v5 + 16) = v10 + 1;
      *(v5 + 8 * v10 + 32) = v8;
      v7 += 2;
      if (v4 == v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v11 = *(sub_237CAE03C(v5) + 16);

    if (v11 == v4)
    {
      v13 = a1;
      sub_237EF8260();
      sub_237D4ECA0(&v13);

      *a2 = v13;
      return result;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t BaseLogisticRegressionClassifierModel.coefficients.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t BaseLogisticRegressionClassifierModel.featureCount.getter()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == 2)
  {
    return v2 - 1;
  }

  v3 = __OFSUB__(v1, 1);
  v4 = v1 - 1;
  if (v3)
  {
    __break(1u);
  }

  else if (v4)
  {
    v2 /= v4;
    return v2 - 1;
  }

  __break(1u);
  return result;
}

uint64_t BaseLogisticRegressionClassifierModel.init<A>(coefficients:classCount:)()
{
  OUTLINED_FUNCTION_6_32();
  v4 = v3;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v7);
  *(v4 + 73) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  (*(v6 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v9 = sub_237EF8A90();
  result = (*(v6 + 8))(v2, v0);
  *v4 = v9;
  *(v4 + 8) = v1;
  return result;
}

long double *sub_237D4D828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  if (a4[1] == 2)
  {
    return sub_237D4DDAC(a1, a2, a3, *a4 + 32, *(*a4 + 16), 1, a5);
  }

  else
  {
    return sub_237D4E168(*(*a4 + 16), a4, a1, a3, a5);
  }
}

uint64_t BaseLogisticRegressionClassifierModel.applied(features:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  memcpy(__dst, v3, 0x59uLL);
  sub_237D4D938(__dst, v11);
  sub_237C70604(a2, a3);
  return sub_237CC8230(v6, v7, v8, v9, __dst, a2, a3);
}

uint64_t BaseLogisticRegressionClassifierModel.mostLikelyIndices(for:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  memcpy(__dst, v2, 0x59uLL);
  sub_237D4D938(__dst, v8);
  return sub_237CC8304(v3, v4, v5, v6, __dst);
}

uint64_t sub_237D4D9F0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_237D4DA30(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_237D4DA98(uint64_t a1)
{
  __dst[12] = *MEMORY[0x277D85DE8];
  memcpy(__dst, v1, 0x59uLL);
  v3 = *(a1 + 8);
  if (v3 < 0)
  {
    goto LABEL_33;
  }

  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v33 = MEMORY[0x277D84F90];
  sub_237C62DB0(0, v3, 0);
  v6 = 0;
  v7 = 0;
  v4 = v33;
  v30 = *(a1 + 32);
  v29 = __dst[1];
  v8 = __dst[1] - 1;
  v9 = __OFSUB__(__dst[1], 1);
  v27 = v9;
  v10 = 8 * v8;
  v26 = 8 * v8;
  if ((8 * v8) <= 1)
  {
    v10 = 1;
  }

  v24[1] = v10;
  v25 = (__dst[1] + 0xFFFFFFFFFFFFFFFLL) >> 61;
  v28 = v3;
  while (1)
  {
    if (v30)
    {
      v11 = (*a1 + v6);
      v12 = *(a1 + 24);
      goto LABEL_13;
    }

    v13 = *(a1 + 24);
    if ((v7 * v13) >> 64 != (v7 * v13) >> 63)
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    v11 = (*a1 + 8 * v7 * v13);
    v12 = 1;
LABEL_13:
    if (v29 != 2)
    {
      break;
    }

    dot(_:_:)(v11, *(a1 + 16), v12, __dst[0] + 32, *(__dst[0] + 16), 1);
    v15 = exp(-v14);
    v16 = log1p(v15);
    v17 = exp(-v16) >= 0.5;
LABEL_21:
    v33 = v4;
    v21 = *(v4 + 16);
    v20 = *(v4 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_237C62DB0(v20 > 1, v21 + 1, 1);
      v4 = v33;
    }

    ++v7;
    *(v4 + 16) = v21 + 1;
    *(v4 + 8 * v21 + 32) = v17;
    v6 += 8;
    if (v28 == v7)
    {
      return v4;
    }
  }

  if (v27)
  {
    goto LABEL_30;
  }

  if (v8 < 0)
  {
    goto LABEL_31;
  }

  if (v25)
  {
    goto LABEL_32;
  }

  if (v26 >= 1025)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_41(v22, &v32);
      v19 = v11;
      if (v11)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_0_43();
      isStackAllocationSafe = MEMORY[0x2383E2DF0]();
      v17 = v32;
      goto LABEL_21;
    }
  }

  MEMORY[0x28223BE20](isStackAllocationSafe);
  OUTLINED_FUNCTION_4_41((v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0)), &v31);
  v19 = v11;
  if (!v11)
  {
    v17 = v31;
    goto LABEL_21;
  }

  swift_willThrow();

  __break(1u);
LABEL_35:

  OUTLINED_FUNCTION_0_43();
  result = MEMORY[0x2383E2DF0]();
  __break(1u);
  return result;
}

uint64_t sub_237D4DDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  dot(_:_:)(a1, a2, a3, a4, a5, a6);
  v9 = exp(-v8);
  v10 = log1p(v9);
  v11 = exp(-v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD408, &qword_237F0B070);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_237F04760;
  *(v12 + 32) = 0;
  *(v12 + 40) = 1.0 - v11;
  *(v12 + 48) = 1;
  *(v12 + 56) = v11;

  return sub_237D4D4AC(v12, a7);
}

uint64_t sub_237D4DE4C()
{
  OUTLINED_FUNCTION_6_32();
  v2 = *(v1 + 8);
  sub_237D0B424();
  v9 = isStackAllocationSafe;
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  if (v2 >> 60)
  {
    goto LABEL_10;
  }

  if ((8 * v2) <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v5 = OUTLINED_FUNCTION_3_50(v4, v8);
    OUTLINED_FUNCTION_2_49(v5);
    if (!v0)
    {
      return v9;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_2_49(v7);
    if (!v0)
    {
      OUTLINED_FUNCTION_0_43();
      MEMORY[0x2383E2DF0]();
      return v9;
    }
  }

  OUTLINED_FUNCTION_0_43();
  result = MEMORY[0x2383E2DF0]();
  __break(1u);
  return result;
}

void sub_237D4DF94(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (!a1)
  {
    goto LABEL_13;
  }

  v9 = a1;
  if (a2 >= 1)
  {
    bzero(a1, 8 * a2);
  }

  UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
  v10 = *(a3 + 8);
  if (v10 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  for (; v10; --v10)
  {
    v11 = exp(-*v9);
    v12 = log1p(v11);
    v13 = exp(-v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD408, &qword_237F0B070);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_237F04760;
    *(v14 + 32) = 0;
    *(v14 + 40) = 1.0 - v13;
    *(v14 + 48) = 1;
    *(v14 + 56) = v13;
    sub_237D4D4AC(v14, &v21);
    v15 = v21;
    v16 = *a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_237D0B424();
      v16 = v19;
      *a7 = v19;
    }

    v18 = *(v16 + 16);
    if (v18 >= *(v16 + 24) >> 1)
    {
      sub_237D0B424();
      v16 = v20;
      *a7 = v20;
    }

    *(v16 + 16) = v18 + 1;
    *(v16 + 8 * v18 + 32) = v15;
    ++v9;
  }
}

long double *sub_237D4E168@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a7@<X6>, void *x8_0@<X8>)
{
  v8 = *(a4 + 8);
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v8 == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 != 0x8000000000000000 || v8 != 0)
  {
    return sub_237D4E1E8(a5, a7, v8, x8_0);
  }

LABEL_10:
  __break(1u);
  return v10;
}

long double *sub_237D4E1E8@<X0>(uint64_t isStackAllocationSafe@<X0>, void *a2@<X2>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a3 - 1;
  if (!__OFSUB__(a3, 1))
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v6 >> 60))
    {
      v4 = a2;
      if ((8 * v6) <= 1024)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

    __break(1u);
  }

  __break(1u);
LABEL_8:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_1_50(v10, a4);
    if (!v4)
    {
      OUTLINED_FUNCTION_0_43();

LABEL_17:
      JUMPOUT(0x2383E2DF0);
    }

LABEL_16:

    OUTLINED_FUNCTION_0_43();
    MEMORY[0x2383E2DF0]();
    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  MEMORY[0x28223BE20](isStackAllocationSafe);
  v8 = OUTLINED_FUNCTION_3_50(v7, v11);
  result = OUTLINED_FUNCTION_1_50(v8, v12);
  if (v4)
  {
    swift_willThrow();

    __break(1u);
    goto LABEL_16;
  }

  *a4 = v12[0];
  return result;
}

long double *sub_237D4E388@<X0>(long double *result@<X0>, uint64_t a2@<X1>, long double *a3@<X2>, unint64_t a7@<X6>, void *a8@<X8>)
{
  if (!result)
  {
    goto LABEL_25;
  }

  v12 = result;
  v14 = 8 * a2;
  if (a2 >= 1)
  {
    bzero(result, 8 * a2);
  }

  result = UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      a3 = v12;
      v15 = a2;
      do
      {
        *a3 = exp(*a3);
        ++a3;
        --v15;
      }

      while (v15);
      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

LABEL_8:
  sub_237E96130(v12, a2, 1);
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v17 = v16 + 1.0;
      v18 = v12;
      v19 = a2;
      do
      {
        *v18 = *v18 / v17;
        ++v18;
        --v19;
      }

      while (v19);
    }

    sub_237D0C804();
    v21 = v20;
    v22 = 0.0;
    if (a2)
    {
      v23 = v14;
      v24 = v12;
      do
      {
        v25 = *v24++;
        v22 = v22 + v25;
        v23 -= 8;
      }

      while (v23);
    }

    v8 = 1.0 - v22;
    a7 = *(v20 + 16);
    a3 = (a7 + 1);
    if (a7 < *(v20 + 24) >> 1)
    {
      goto LABEL_16;
    }
  }

  sub_237D0C804();
  v21 = v34;
LABEL_16:
  *(v21 + 16) = a3;
  v26 = v21 + 16 * a7;
  *(v26 + 32) = 0;
  *(v26 + 40) = v8;
  if (a2)
  {
    v27 = a7 + 2;
    v28 = 16 * a7;
    v29 = 1;
    do
    {
      v30 = *v12;
      if ((v27 - 1) >= *(v21 + 24) >> 1)
      {
        sub_237D0C804();
        v21 = v33;
      }

      v31 = v30;
      *(v21 + 16) = v27;
      v32 = v21 + v28;
      ++v12;
      *(v32 + 48) = v29;
      *(v32 + 56) = v31;
      ++v27;
      v28 += 16;
      ++v29;
      v14 -= 8;
    }

    while (v14);
  }

  return sub_237D4D4AC(v21, a8);
}

uint64_t sub_237D4E5AC(uint64_t isStackAllocationSafe, uint64_t a2, char *a3)
{
  v4 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *(isStackAllocationSafe + 8);
    v6 = v5 * v4;
    if ((v5 * v4) >> 64 == (v5 * v4) >> 63)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!(v6 >> 60))
      {
        v3 = a3;
        if ((8 * v6) <= 1024)
        {
          goto LABEL_6;
        }

        goto LABEL_11;
      }

      __break(1u);
    }
  }

  __break(1u);
LABEL_11:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_5_40(v10);
    if (!v3)
    {
      OUTLINED_FUNCTION_0_43();
      MEMORY[0x2383E2DF0]();
      return v12;
    }

    goto LABEL_17;
  }

LABEL_6:
  MEMORY[0x28223BE20](isStackAllocationSafe);
  v8 = OUTLINED_FUNCTION_3_50(v7, v11);
  OUTLINED_FUNCTION_5_40(v8);
  if (v3)
  {
    swift_willThrow();

    __break(1u);
LABEL_17:

    OUTLINED_FUNCTION_0_43();
    result = MEMORY[0x2383E2DF0]();
    __break(1u);
    return result;
  }

  return v12;
}

void sub_237D4E700(char *a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  if (!a1)
  {
    goto LABEL_23;
  }

  v6 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    goto LABEL_20;
  }

  v8 = a1;
  v9 = *(a3 + 8);
  v20[0] = a1;
  v20[1] = a2 - 1;
  v20[2] = v9;
  v20[3] = v9;
  v21 = 0;
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a2 != 1)
  {
    v11 = 0;
    while ((v11 * v9) >> 64 == (v11 * v9) >> 63)
    {
      if (v9)
      {
        if (v9 < 1)
        {
          goto LABEL_19;
        }

        bzero(v8, 8 * v9);
      }

      ++v11;
      v8 += 8 * v9;
      if (v6 == v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_11:
  UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(a4, 0, a3, 1);
  if (v9 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v12 = MEMORY[0x277D84F90];
  if (v9)
  {
    v22 = MEMORY[0x277D84F90];
    sub_237C63824(0, v9, 0);
    v13 = 0;
    v12 = v22;
    do
    {
      v18 = v13;
      sub_237D4E8A4(&v18, v20, a2, &v19);
      v14 = v19;
      v22 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_237C63824((v15 > 1), v16 + 1, 1);
        v12 = v22;
      }

      ++v13;
      *(v12 + 16) = v16 + 1;
      *(v12 + 8 * v16 + 32) = v14;
    }

    while (v9 != v13);
  }

  *a5 = v12;
}

uint64_t *sub_237D4E8A4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = *result;
  if (*(a2 + 32))
  {
    v11 = *(a2 + 24);
    if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
    {
LABEL_36:
      __break(1u);
      return result;
    }

    v12 = *a2 + 8 * v10 * v11;
    v13 = 1;
  }

  else
  {
    v12 = *a2 + 8 * v10;
    v13 = *(a2 + 24);
  }

  i = *(a2 + 8);
  if (i)
  {
    if ((i & 0x8000000000000000) == 0)
    {
      v4 = 0;
      while (1)
      {
        v5 = v4 * v13;
        if ((v4 * v13) >> 64 != (v4 * v13) >> 63)
        {
          break;
        }

        ++v4;
        *(v12 + 8 * v5) = exp(*(v12 + 8 * v5));
        if (i == v4)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_10:
  sub_237E96130(v12, i, v13);
  if (i < 0)
  {
    goto LABEL_32;
  }

  if (i)
  {
    v16 = 0;
    v17 = v15 + 1.0;
    do
    {
      v18 = v16 * v13;
      if ((v16 * v13) >> 64 != (v16 * v13) >> 63)
      {
        goto LABEL_30;
      }

      ++v16;
      *(v12 + 8 * v18) = *(v12 + 8 * v18) / v17;
    }

    while (i != v16);
  }

  sub_237D0C804();
  v5 = i * v13;
  if ((i * v13) >> 64 != (i * v13) >> 63)
  {
    goto LABEL_33;
  }

  v20 = v19;
  v4 = 8 * v13;
  if (v5)
  {
    v21 = 0;
    v22 = 0.0;
    do
    {
      v22 = v22 + *(v12 + v21);
      v21 += v4;
    }

    while (8 * v13 * i != v21);
  }

  else
  {
    v22 = 0.0;
  }

  *&v7 = 1.0 - v22;
  v6 = *(v19 + 16);
  a3 = v6 + 1;
  if (v6 >= *(v19 + 24) >> 1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    *(v20 + 16) = a3;
    v23 = v20 + 16 * v6;
    *(v23 + 32) = 0;
    *(v23 + 40) = LODWORD(v7);
    if (!v5)
    {
      break;
    }

    v5 = 0;
    a3 = v6 + 2;
    v6 *= 16;
    v13 *= 8 * i;
    for (i = 1; ; ++i)
    {
      v7 = *(v12 + v5);
      if (a3 - 1 >= *(v20 + 24) >> 1)
      {
        sub_237D0C804();
        v20 = v26;
      }

      v24 = v7;
      *(v20 + 16) = a3;
      v25 = v20 + v6;
      *(v25 + 48) = i;
      *(v25 + 56) = v24;
      if (__OFADD__(i + 1, 1))
      {
        break;
      }

      ++a3;
      v6 += 16;
      v5 += v4;
      if (v13 == v5)
      {
        return sub_237D4D4AC(v20, a4);
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    sub_237D0C804();
    v20 = v27;
  }

  return sub_237D4D4AC(v20, a4);
}

void sub_237D4EB10(double *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    goto LABEL_24;
  }

  v9 = a1;
  v11 = 8 * a2;
  if (a2 >= 1)
  {
    bzero(a1, 8 * a2);
  }

  v12 = a3[1];
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (!v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
  if (a2)
  {
    if (a2 < 0)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v15 = v9;
    v16 = a2;
    do
    {
      *v15 = exp(*v15);
      ++v15;
      --v16;
    }

    while (v16);
  }

  sub_237E96130(v9, a2, 1);
  if (a2 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a2)
  {
    v18 = v17 + 1.0;
    v19 = v9;
    v20 = a2;
    do
    {
      *v19 = *v19 / v18;
      ++v19;
      --v20;
    }

    while (v20);
  }

  sub_237E96130(v9, a2, 1);
  v22 = 0;
  if (a2)
  {
    v23 = 1.0 - v21;
    v24 = 1;
    do
    {
      v25 = *v9++;
      v26 = v25;
      if (v23 < v25)
      {
        v22 = v24;
        v23 = v26;
      }

      ++v24;
      v11 -= 8;
    }

    while (v11);
  }

  *a7 = v22;
}

uint64_t sub_237D4ECA0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643CC(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  result = sub_237D4ED0C(v9);
  *a1 = v2;
  return result;
}

uint64_t sub_237D4ED0C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_237EF9AA0();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1688, &unk_237F0E940);
        v6 = sub_237EF89B0();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_237D4EE7C(v7, v8, a1, v4);
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
    return sub_237D4EE10(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_237D4EE10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = *(v8 + 8);
        if (*(v8 - 8) >= v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v8;
        *v8 = *(v8 - 16);
        *(v8 - 8) = v9;
        *(v8 - 16) = v10;
        v8 -= 16;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_237D4EE7C(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v84 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v79 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9 + 8);
        v11 = 16 * v7;
        v12 = *a3 + 16 * v7;
        v13 = *(v12 + 8);
        v14 = (v12 + 40);
        v15 = v7 + 2;
        while (1)
        {
          v16 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v17 = (v13 < v10) ^ (*(v14 - 4) >= *v14);
          v14 += 4;
          ++v15;
          if ((v17 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_114;
          }

          if (v7 < v9)
          {
            if (v6 >= v16)
            {
              v6 = v16;
            }

            v18 = 16 * v6 - 16;
            v19 = v9;
            v20 = v7;
            do
            {
              if (v20 != --v19)
              {
                v21 = *a3;
                if (!*a3)
                {
                  goto LABEL_119;
                }

                v22 = v21 + v11;
                v23 = v21 + v18;
                v24 = *v22;
                v25 = *(v22 + 8);
                v26 = v11 != v18 || v22 >= v23 + 16;
                if (v26)
                {
                  *v22 = *v23;
                }

                *v23 = v24;
                *(v23 + 8) = v25;
              }

              ++v20;
              v18 -= 16;
              v11 += 16;
            }

            while (v20 < v19);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_113;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_115;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v27 = *a3;
            v28 = *a3 + 16 * v9;
            v29 = v7 - v9;
            do
            {
              v30 = v29;
              v31 = v28;
              do
              {
                v32 = *(v31 + 8);
                if (*(v31 - 8) >= v32)
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_117;
                }

                v33 = *v31;
                *v31 = *(v31 - 16);
                *(v31 - 8) = v32;
                *(v31 - 16) = v33;
                v31 -= 16;
                v26 = __CFADD__(v30++, 1);
              }

              while (!v26);
              ++v9;
              v28 += 16;
              --v29;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_112;
      }

      v81 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0B510();
        v8 = v77;
      }

      v34 = v8[2];
      v35 = v34 + 1;
      if (v34 >= v8[3] >> 1)
      {
        sub_237D0B510();
        v8 = v78;
      }

      v8[2] = v35;
      v36 = v8 + 4;
      v37 = &v8[2 * v34 + 4];
      *v37 = v7;
      v37[1] = v9;
      v82 = *a1;
      if (!*a1)
      {
        goto LABEL_120;
      }

      if (v34)
      {
        while (1)
        {
          v38 = v35 - 1;
          v39 = &v36[2 * v35 - 2];
          v40 = &v8[2 * v35];
          if (v35 >= 4)
          {
            break;
          }

          if (v35 == 3)
          {
            v41 = v8[4];
            v42 = v8[5];
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_62:
            if (v44)
            {
              goto LABEL_102;
            }

            v56 = *v40;
            v55 = v40[1];
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            v59 = v57;
            if (v57)
            {
              goto LABEL_105;
            }

            v60 = v39[1];
            v61 = v60 - *v39;
            if (__OFSUB__(v60, *v39))
            {
              goto LABEL_108;
            }

            if (__OFADD__(v58, v61))
            {
              goto LABEL_110;
            }

            if (v58 + v61 >= v43)
            {
              if (v43 < v61)
              {
                v38 = v35 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v35 < 2)
          {
            goto LABEL_104;
          }

          v63 = *v40;
          v62 = v40[1];
          v51 = __OFSUB__(v62, v63);
          v58 = v62 - v63;
          v59 = v51;
LABEL_77:
          if (v59)
          {
            goto LABEL_107;
          }

          v65 = *v39;
          v64 = v39[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_109;
          }

          if (v66 < v58)
          {
            goto LABEL_91;
          }

LABEL_84:
          if (v38 - 1 >= v35)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
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
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_118;
          }

          v70 = &v36[2 * v38 - 2];
          v71 = *v70;
          v72 = &v36[2 * v38];
          v73 = v72[1];
          sub_237D4F49C((*a3 + 16 * *v70), (*a3 + 16 * *v72), (*a3 + 16 * v73), v82);
          if (v5)
          {
            goto LABEL_95;
          }

          if (v73 < v71)
          {
            goto LABEL_97;
          }

          v74 = v8;
          v75 = v8[2];
          if (v38 > v75)
          {
            goto LABEL_98;
          }

          *v70 = v71;
          v70[1] = v73;
          if (v38 >= v75)
          {
            goto LABEL_99;
          }

          v35 = v75 - 1;
          memmove(&v36[2 * v38], v72 + 2, 16 * (v75 - 1 - v38));
          v74[2] = v75 - 1;
          v76 = v75 > 2;
          v8 = v74;
          v5 = 0;
          if (!v76)
          {
            goto LABEL_91;
          }
        }

        v45 = &v36[2 * v35];
        v46 = *(v45 - 8);
        v47 = *(v45 - 7);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_100;
        }

        v50 = *(v45 - 6);
        v49 = *(v45 - 5);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_101;
        }

        v52 = v40[1];
        v53 = v52 - *v40;
        if (__OFSUB__(v52, *v40))
        {
          goto LABEL_103;
        }

        v51 = __OFADD__(v43, v53);
        v54 = v43 + v53;
        if (v51)
        {
          goto LABEL_106;
        }

        if (v54 >= v48)
        {
          v68 = *v39;
          v67 = v39[1];
          v51 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v51)
          {
            goto LABEL_111;
          }

          if (v43 < v69)
          {
            v38 = v35 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_62;
      }

LABEL_91:
      v6 = a3[1];
      v7 = v81;
      a4 = v79;
      if (v81 >= v6)
      {
        v84 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_121;
  }

  sub_237D4F370(&v84, *a1, a3);
LABEL_95:
}

uint64_t sub_237D4F370(uint64_t *a1, float *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_237D4F620(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_237D4F49C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_237D4F49C(float *a1, float *a2, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_237D0D050(a1, (a2 - a1) / 16, a4);
    v10 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[2] >= v6[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 4;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 4;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_237D0D050(a2, (a3 - a2) / 16, a4);
  v10 = &v4[4 * v9];
LABEL_15:
  for (v5 -= 4; v10 > v4 && v6 > v7; v5 -= 4)
  {
    if (*(v6 - 2) < *(v10 - 2))
    {
      v15 = v6 - 4;
      v13 = v5 + 4 == v6;
      v6 -= 4;
      if (!v13)
      {
        *v5 = *v15;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 4)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 4;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[4 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

char *sub_237D4F634(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0470, &qword_237F0B068);
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

long double *OUTLINED_FUNCTION_1_50@<X0>(long double *a1@<X0>, void *a2@<X8>)
{

  return sub_237D4E388(a1, v4, v3, v2, a2);
}

void OUTLINED_FUNCTION_2_49(double *a1)
{

  sub_237D4DF94(a1, v5, v4, v3, v2, v1, (v6 - 80));
}

void OUTLINED_FUNCTION_4_41(double *a1@<X0>, uint64_t *a2@<X8>)
{

  sub_237D4EB10(a1, v2, (v3 - 208), a2);
}

void OUTLINED_FUNCTION_5_40(char *a1)
{

  sub_237D4E700(a1, v3, v2, v1, (v4 - 64));
}

void *sub_237D4F80C(void *a1, uint64_t a2, void *a3)
{
  *(v3 + 128) = a1;
  *(v3 + 136) = a3;
  *(v3 + 144) = a2;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  OUTLINED_FUNCTION_0_44((a1 + 3), v20);
  memcpy(__dst, a1 + 3, sizeof(__dst));
  v6 = a1[14];
  OUTLINED_FUNCTION_0_44((a1 + 15), v19);
  v7 = sub_237D6B330(__dst, v6, a1[15]);

  v8 = a3;
  sub_237C9FEDC(__dst, &v18);
  sub_237EF8260();
  sub_237EF8260();

  v9 = sub_237DA2564();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  swift_beginAccess();
  sub_237D86C8C();
  v16 = *(v7[15] + 16);
  sub_237D86D60(v16);
  sub_237D6D628(v16, v9, v11, v13, v15 & 1, v7 + 15);
  swift_endAccess();

  return v7;
}

BOOL sub_237D4F964()
{
  OUTLINED_FUNCTION_0_44(v0 + 16, v8);
  v1 = sub_237D6DA5C();
  OUTLINED_FUNCTION_0_44(v0 + 120, v7);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v2 + 16);
  OUTLINED_FUNCTION_0_44(v3 + 120, v6);
  return v1 == v4 + ~*(*(v3 + 120) + 16);
}

void sub_237D4F9E0()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);

  sub_237D4FD74(v1, v2, v3, v4);
}

uint64_t sub_237D4FA18()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_44(v0 + 16, v15);
  v2 = sub_237D6DA5C();
  if (v2 != 1)
  {
    if (!v2)
    {
      v4 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
      v5 = &qword_27DEAEDC8;
      v6 = 0x277CBEAC0;
      goto LABEL_6;
    }

LABEL_11:
    result = sub_237EF9740("Fatal error", 11, 2, 0xD000000000000042, 0x8000000237EFE270, "CreateMLComponents/BlobJSONEncoder.ReferencingEncoder.swift", 59, 2, 62);
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v3 = sub_237D6B08C();
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  swift_endAccess();
  v5 = &qword_280C8E1F8;
  v6 = 0x277D82BB8;
LABEL_6:
  v7 = sub_237C75918(0, v5, v6);
  v17 = v7;
  v16[0] = v4;
  v9 = *(v1 + 136);
  v8 = *(v1 + 144);
  v10 = *(v1 + 152);
  if (*(v1 + 160))
  {
    sub_237C75918(0, &qword_280C8CCF0, 0x277CCACA8);
    v11 = v9;
    sub_237EF8260();
    v12 = sub_237D6B380(v8);
    __swift_project_boxed_opaque_existential_1(v16, v17);
    [v11 setObject:sub_237EF9D30() forKeyedSubscript:v12];

    swift_unknownObjectRelease();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v16, v7);
    [v9 insertObject:sub_237EF9D30() atIndex:v8];
    swift_unknownObjectRelease();
    sub_237D4FD74(v9, v8, v10, 0);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  v13 = sub_237CB34AC();

  sub_237D4FD74(*(v13 + 136), *(v13 + 144), *(v13 + 152), *(v13 + 160));
  return v13;
}

uint64_t sub_237D4FC70()
{
  sub_237D4FA18();

  return swift_deallocClassInstance();
}

uint64_t sub_237D4FCD0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_237D4FD10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_237D4FD74(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t sub_237D4FDC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_237C531B8(&v12, v10 + 40 * a1 + 32);
}

void *sub_237D4FE58(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  (*(v12 + 32))(&v22 - v17, v16);
  v19 = swift_allocObject();
  (*(v12 + 16))(v14, v18, a6);
  v20 = sub_237D4FFCC(a1, v14, a3, a4, v19, a6, a7);
  (*(v12 + 8))(v18, a6);
  return v20;
}

void *sub_237D4FFCC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v12 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v26 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  (*(v12 + 32))(&v26 - v16, v15);
  *(a5 + 128) = a1;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);

  v18 = a4;
  v19 = sub_237EFA1E0();
  *(a5 + 136) = v18;
  *(a5 + 144) = v19;
  *(a5 + 152) = v20;
  *(a5 + 160) = 1;
  swift_beginAccess();
  memcpy(__dst, a1 + 3, sizeof(__dst));
  v21 = a1[14];
  swift_beginAccess();
  v22 = sub_237D6B330(__dst, v21, a1[15]);
  swift_beginAccess();
  sub_237C9FEDC(__dst, v28);
  sub_237EF8260();
  sub_237EF8260();

  sub_237D86C8C();
  v23 = *(v22[15] + 16);
  sub_237D86D60(v23);
  v24 = v26;
  (*(v12 + 16))(v26, v17, a6);
  sub_237D4FDC0(v23, v24, v22 + 15, a6, v27);
  swift_endAccess();

  (*(v12 + 8))(v17, a6);

  return v22;
}

uint64_t OUTLINED_FUNCTION_0_44(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

unint64_t AudioReaderError.errorDescription.getter()
{
  v1 = 0xD000000000000020;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000006BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000006FLL;
  }
}

unint64_t AudioReaderError.debugDescription.getter()
{
  v1 = 0xD000000000000020;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000006BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000006FLL;
  }
}

uint64_t AudioReaderError.hashValue.getter()
{
  v1 = *v0;
  sub_237EFA120();
  MEMORY[0x2383E2210](v1);
  return sub_237EFA170();
}

unint64_t sub_237D503AC()
{
  result = qword_27DEB1690;
  if (!qword_27DEB1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB1690);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioReaderError(_BYTE *result, unsigned int a2, unsigned int a3)
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

float sub_237D504FC(float a1, float a2, float a3, float a4, float a5)
{
  result = (((a5 - a3) / (a4 - a2)) * a1) + (a3 - (((a5 - a3) / (a4 - a2)) * a2));
  if ((LODWORD(result) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    return (a3 + a5) * 0.5;
  }

  return result;
}

unint64_t sub_237D5053C(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  if (*(a1 + 16))
  {
    v8 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_10_31();
    v1 = v8;
    do
    {
      OUTLINED_FUNCTION_15_26();
      if (v4)
      {
        sub_237C63670(v3 > 1, a1, 1);
        v1 = v8;
      }

      OUTLINED_FUNCTION_12_30();
    }

    while (!v5);
  }

  v6 = sub_237CB8628(v1);

  return v6 | ((HIDWORD(v6) & 1) << 32);
}

unint64_t sub_237D505F8(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  if (*(a1 + 16))
  {
    v8 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_10_31();
    v1 = v8;
    do
    {
      OUTLINED_FUNCTION_15_26();
      if (v4)
      {
        sub_237C63670(v3 > 1, a1, 1);
        v1 = v8;
      }

      OUTLINED_FUNCTION_12_30();
    }

    while (!v5);
  }

  v6 = sub_237CB8628(v1);

  return v6 | ((HIDWORD(v6) & 1) << 32);
}

void sub_237D506B4(uint64_t a1)
{
  OUTLINED_FUNCTION_8_39();
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v20 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_10_31();
    v4 = v20;
    do
    {
      OUTLINED_FUNCTION_13_21();
      if (v6)
      {
        OUTLINED_FUNCTION_16_25(v5);
        v4 = v20;
      }

      OUTLINED_FUNCTION_11_30();
    }

    while (!v7);
  }

  v8 = sub_237D60F80(v4);

  if ((v8 & 0x100000000) != 0)
  {
    goto LABEL_24;
  }

  if (v3)
  {
    v10 = *&v8;
    v11 = (v2 + 40);
    v12 = MEMORY[0x277D84F90];
    do
    {
      *&v9 = *(v11 - 1);
      if (*&v9 == v10)
      {
        v19 = v9;
        v13 = *v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_51(*(v12 + 16));
        }

        v15 = *(v12 + 16);
        v14 = *(v12 + 24);
        if (v15 >= v14 >> 1)
        {
          OUTLINED_FUNCTION_0_45(v14);
        }

        *(v12 + 16) = v15 + 1;
        v16 = v12 + 12 * v15;
        *(&v9 + 1) = *(&v19 + 1);
        *(v16 + 32) = v19;
        *(v16 + 40) = v13;
      }

      v11 += 3;
      --v3;
    }

    while (v3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v17 = *(v12 + 16);
  if (!v17)
  {

LABEL_24:
    OUTLINED_FUNCTION_7_34();
    goto LABEL_25;
  }

  if (v17 != 1)
  {
    do
    {
      OUTLINED_FUNCTION_3_51();
    }

    while (v18 != 1);
  }

  OUTLINED_FUNCTION_14_29();
LABEL_25:
  OUTLINED_FUNCTION_5_41();
  OUTLINED_FUNCTION_9_29();
}

void sub_237D50830(uint64_t a1)
{
  OUTLINED_FUNCTION_8_39();
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v20 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_10_31();
    v4 = v20;
    do
    {
      OUTLINED_FUNCTION_13_21();
      if (v6)
      {
        OUTLINED_FUNCTION_16_25(v5);
        v4 = v20;
      }

      OUTLINED_FUNCTION_11_30();
    }

    while (!v7);
  }

  v8 = sub_237D60F80(v4);

  if ((v8 & 0x100000000) != 0)
  {
    goto LABEL_24;
  }

  if (v3)
  {
    v10 = *&v8;
    v11 = (v2 + 36);
    v12 = MEMORY[0x277D84F90];
    do
    {
      if (COERCE_FLOAT(*v11) == v10)
      {
        *&v9 = *v11;
        v19 = v9;
        v13 = *(v11 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_51(*(v12 + 16));
        }

        v15 = *(v12 + 16);
        v14 = *(v12 + 24);
        if (v15 >= v14 >> 1)
        {
          OUTLINED_FUNCTION_0_45(v14);
        }

        *(v12 + 16) = v15 + 1;
        v16 = v12 + 12 * v15;
        *(v16 + 32) = v13;
        *(&v9 + 1) = *(&v19 + 1);
        *(v16 + 36) = v19;
      }

      v11 = (v11 + 12);
      --v3;
    }

    while (v3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v17 = *(v12 + 16);
  if (!v17)
  {

LABEL_24:
    OUTLINED_FUNCTION_7_34();
    goto LABEL_25;
  }

  if (v17 != 1)
  {
    do
    {
      OUTLINED_FUNCTION_2_50();
    }

    while (v18 != 1);
  }

  OUTLINED_FUNCTION_14_29();
LABEL_25:
  OUTLINED_FUNCTION_5_41();
  OUTLINED_FUNCTION_9_29();
}

void sub_237D509AC(uint64_t a1)
{
  OUTLINED_FUNCTION_22_18();
  v5 = sub_237D505F8(v4);
  if ((v5 & 0x100000000) == 0 && v1 >= 0.0 && *&v5 >= v1)
  {
    v7 = sub_237D5053C(a1);
    if ((v7 & 0x100000000) == 0 && v2 >= 0.0 && *&v7 >= v2)
    {
      sub_237D506B4(a1);
      if ((v10 & 0x100000000) == 0 && v9 <= v2)
      {
        v11 = OUTLINED_FUNCTION_4_42();
        sub_237D50A8C(v11);
        if ((v12 & 0x100000000) != 0 && *(a1 + 16) >= 2uLL)
        {
          v13 = OUTLINED_FUNCTION_4_42();
          sub_237D50BB0(v13);
        }
      }
    }
  }

  OUTLINED_FUNCTION_20_19();
}

void sub_237D50A8C(uint64_t a1)
{
  OUTLINED_FUNCTION_8_39();
  if (*(v3 + 16))
  {
    OUTLINED_FUNCTION_22_18();
    v5 = (v4 + 36);
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = *(v5 - 1);
      if (v7 == v2 && COERCE_FLOAT(*v5) >= v1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_51(*(v6 + 16));
        }

        OUTLINED_FUNCTION_6_33();
        if (v10)
        {
          OUTLINED_FUNCTION_0_45(v9);
        }

        OUTLINED_FUNCTION_21_22();
        *(v11 + 32) = v7;
        *(v11 + 36) = v12;
      }

      OUTLINED_FUNCTION_17_24();
    }

    while (!v13);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v14 = *(v6 + 16);
  if (v14)
  {
    if (v14 != 1)
    {
      do
      {
        OUTLINED_FUNCTION_3_51();
      }

      while (v15 != 1);
    }

    OUTLINED_FUNCTION_18_24();
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_29();
}

void sub_237D50BB0(uint64_t a1)
{
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_19_24();
  if (v2)
  {
    v6 = (v1 + 40);
    v7 = MEMORY[0x277D84F90];
    v8 = v2;
    do
    {
      *&v5 = *(v6 - 1);
      if (*&v5 < v3)
      {
        v40 = v5;
        v9 = *v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_51(*(v7 + 16));
        }

        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          OUTLINED_FUNCTION_0_45(v10);
        }

        *(v7 + 16) = v11 + 1;
        v12 = v7 + 12 * v11;
        *(&v5 + 1) = *(&v40 + 1);
        *(v12 + 32) = v40;
        *(v12 + 40) = v9;
      }

      v6 += 3;
      --v8;
    }

    while (v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v13 = *(v7 + 16);
  if (!v13)
  {
    goto LABEL_44;
  }

  v14 = *(v7 + 32);
  v15 = *(v7 + 36);
  v16 = *(v7 + 40);
  if (v13 != 1)
  {
    do
    {
      OUTLINED_FUNCTION_3_51();
      if (v38)
      {
        v15 = v18;
        v16 = v19;
      }
    }

    while (v17 != 1);
  }

  if (v2)
  {
    v20 = (v1 + 40);
    v21 = MEMORY[0x277D84F90];
    do
    {
      if (COERCE_FLOAT(*(v20 - 1)) > v3)
      {
        v41 = *(v20 - 1);
        v22 = *v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_51(*(v21 + 16));
        }

        OUTLINED_FUNCTION_6_33();
        if (v24)
        {
          OUTLINED_FUNCTION_0_45(v23);
        }

        OUTLINED_FUNCTION_21_22();
        *(v25 + 32) = v41;
        *(v25 + 40) = v22;
      }

      OUTLINED_FUNCTION_17_24();
    }

    while (!v26);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v27 = *(v21 + 16);
  if (!v27)
  {
LABEL_44:

LABEL_45:
    OUTLINED_FUNCTION_7_34();
    goto LABEL_46;
  }

  v28 = *(v21 + 32);
  v29 = *(v21 + 36);
  v30 = *(v21 + 40);
  v31 = v27 - 1;
  if (v31)
  {
    v32 = (v21 + 52);
    v33 = *(v21 + 36);
    do
    {
      v34 = *(v32 - 2);
      v35 = *(v32 - 1);
      v36 = *v32;
      v32 += 3;
      v37 = v36;
      if (v35 < v33)
      {
        v28 = v34;
        v29 = v35;
        v30 = v37;
        v33 = v35;
      }

      --v31;
    }

    while (v31);
  }

  v38 = v15 < v4 && v29 < v4;
  if (v38)
  {
    goto LABEL_45;
  }

  sub_237D504FC(v3, v14, v16, v28, v30);
  v39 = (v3 - (v14 - (v15 * ((v28 - v14) / (v29 - v15))))) / ((v28 - v14) / (v29 - v15));
  if (COERCE_UNSIGNED_INT(fabs(v39)) >= 0x7F800000)
  {
    v39 = v15;
  }

  if (v39 < v4)
  {
    goto LABEL_45;
  }

LABEL_46:
  OUTLINED_FUNCTION_5_41();
  OUTLINED_FUNCTION_23_20();
}

void sub_237D50E04(uint64_t a1)
{
  OUTLINED_FUNCTION_22_18();
  v5 = sub_237D505F8(v4);
  if ((v5 & 0x100000000) == 0 && v2 >= 0.0 && *&v5 >= v2)
  {
    v7 = sub_237D5053C(a1);
    if ((v7 & 0x100000000) == 0 && v1 >= 0.0 && *&v7 >= v1)
    {
      sub_237D50830(a1);
      if ((v10 & 0x100000000) == 0 && v9 <= v2)
      {
        v11 = OUTLINED_FUNCTION_4_42();
        sub_237D50EE4(v11);
        if ((v12 & 0x100000000) != 0 && *(a1 + 16) >= 2uLL)
        {
          v13 = OUTLINED_FUNCTION_4_42();
          sub_237D51008(v13);
        }
      }
    }
  }

  OUTLINED_FUNCTION_20_19();
}

void sub_237D50EE4(uint64_t a1)
{
  OUTLINED_FUNCTION_8_39();
  if (*(v3 + 16))
  {
    OUTLINED_FUNCTION_22_18();
    v5 = (v4 + 36);
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = *(v5 - 1);
      if (COERCE_FLOAT(*v5) == v2 && v7 >= v1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_51(*(v6 + 16));
        }

        OUTLINED_FUNCTION_6_33();
        if (v10)
        {
          OUTLINED_FUNCTION_0_45(v9);
        }

        OUTLINED_FUNCTION_21_22();
        *(v11 + 32) = v7;
        *(v11 + 36) = v12;
      }

      OUTLINED_FUNCTION_17_24();
    }

    while (!v13);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v14 = *(v6 + 16);
  if (v14)
  {
    if (v14 != 1)
    {
      do
      {
        OUTLINED_FUNCTION_2_50();
      }

      while (v15 != 1);
    }

    OUTLINED_FUNCTION_18_24();
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_29();
}

void sub_237D51008(uint64_t a1)
{
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_19_24();
  if (v2)
  {
    v6 = (v1 + 36);
    v7 = MEMORY[0x277D84F90];
    v8 = v2;
    do
    {
      if (COERCE_FLOAT(*v6) < v3)
      {
        *&v5 = *v6;
        v39 = v5;
        v9 = *(v6 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_51(*(v7 + 16));
        }

        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          OUTLINED_FUNCTION_0_45(v10);
        }

        *(v7 + 16) = v11 + 1;
        v12 = v7 + 12 * v11;
        *(v12 + 32) = v9;
        *(&v5 + 1) = *(&v39 + 1);
        *(v12 + 36) = v39;
      }

      v6 = (v6 + 12);
      --v8;
    }

    while (v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v13 = *(v7 + 16);
  if (!v13)
  {
    goto LABEL_42;
  }

  v14 = *(v7 + 32);
  v15 = *(v7 + 36);
  v16 = *(v7 + 40);
  if (v13 != 1)
  {
    do
    {
      OUTLINED_FUNCTION_2_50();
      if (v38)
      {
        v15 = v18;
        v16 = v19;
      }
    }

    while (v17 != 1);
  }

  if (v2)
  {
    v20 = (v1 + 36);
    v21 = MEMORY[0x277D84F90];
    do
    {
      if (COERCE_FLOAT(*v20) > v3)
      {
        v40 = *v20;
        v22 = *(v20 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_51(*(v21 + 16));
        }

        OUTLINED_FUNCTION_6_33();
        if (v24)
        {
          OUTLINED_FUNCTION_0_45(v23);
        }

        OUTLINED_FUNCTION_21_22();
        *(v25 + 32) = v22;
        *(v25 + 36) = v40;
      }

      OUTLINED_FUNCTION_17_24();
    }

    while (!v26);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v27 = *(v21 + 16);
  if (!v27)
  {
LABEL_42:

LABEL_43:
    OUTLINED_FUNCTION_7_34();
    goto LABEL_44;
  }

  v28 = *(v21 + 32);
  v29 = *(v21 + 36);
  v30 = *(v21 + 40);
  v31 = v27 - 1;
  if (v31)
  {
    v32 = (v21 + 52);
    v33 = *(v21 + 32);
    do
    {
      v34 = *(v32 - 2);
      v35 = *(v32 - 1);
      v36 = *v32;
      v32 += 3;
      v37 = v36;
      if (v34 < v33)
      {
        v28 = v34;
        v29 = v35;
        v30 = v37;
        v33 = v34;
      }

      --v31;
    }

    while (v31);
  }

  v38 = v14 < v4 && v28 < v4;
  if (v38)
  {
    goto LABEL_43;
  }

  sub_237D504FC(v3, v15, v16, v29, v30);
  if (sub_237D504FC(v3, v15, v14, v29, v28) < v4)
  {
    goto LABEL_43;
  }

LABEL_44:
  OUTLINED_FUNCTION_5_41();
  OUTLINED_FUNCTION_23_20();
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PrecisionRecallCurve.Point(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PrecisionRecallCurve.Point(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

char *OUTLINED_FUNCTION_0_45@<X0>(unint64_t a1@<X8>)
{

  return sub_237C636E8((a1 > 1), v1, 1);
}

char *OUTLINED_FUNCTION_1_51@<X0>(uint64_t a1@<X8>)
{

  return sub_237C636E8(0, a1 + 1, 1);
}

void OUTLINED_FUNCTION_10_31()
{

  sub_237C63670(0, v0, 0);
}

void OUTLINED_FUNCTION_16_25(unint64_t a1@<X8>)
{

  sub_237C63670(a1 > 1, v1, 1);
}

void TabularEstimator.write(_:to:overwrite:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v11);
  v5(v4, v1);
  v6 = type metadata accessor for EstimatorPackageEncoder(0);
  OUTLINED_FUNCTION_6_3(v6);
  OUTLINED_FUNCTION_7_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_2(v7, &off_284AD6C18);
    v8 = OUTLINED_FUNCTION_2_4();
    v9(v8);
    sub_237C66728(v13, &v12);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAD880, &qword_237F03D78);
    OUTLINED_FUNCTION_8_3(v10);
    sub_237D8533C();
    sub_237D8508C();

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  OUTLINED_FUNCTION_11_3();
}

void TabularEstimator.read(from:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v10);
  v5(v4, v0);
  v6 = type metadata accessor for EstimatorPackageDecoder(0);
  OUTLINED_FUNCTION_6_3(v6);
  OUTLINED_FUNCTION_10_4();
  if (!v1)
  {
    OUTLINED_FUNCTION_9_2(v7, &off_284AD6C00);
    v8 = OUTLINED_FUNCTION_4_3();
    v9(v8);
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  OUTLINED_FUNCTION_11_3();
}

void SupervisedTabularEstimator.write(_:to:overwrite:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v11);
  v5(v4, v1);
  v6 = type metadata accessor for EstimatorPackageEncoder(0);
  OUTLINED_FUNCTION_6_3(v6);
  OUTLINED_FUNCTION_7_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_2(v7, &off_284AD6C18);
    v8 = OUTLINED_FUNCTION_2_4();
    v9(v8);
    sub_237C66728(v13, &v12);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAD880, &qword_237F03D78);
    OUTLINED_FUNCTION_8_3(v10);
    sub_237D8533C();
    sub_237D8508C();

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  OUTLINED_FUNCTION_11_3();
}

void SupervisedTabularEstimator.read(from:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v10);
  v5(v4, v0);
  v6 = type metadata accessor for EstimatorPackageDecoder(0);
  OUTLINED_FUNCTION_6_3(v6);
  OUTLINED_FUNCTION_10_4();
  if (!v1)
  {
    OUTLINED_FUNCTION_9_2(v7, &off_284AD6C00);
    v8 = OUTLINED_FUNCTION_4_3();
    v9(v8);
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  OUTLINED_FUNCTION_11_3();
}

void UpdatableSupervisedTabularEstimator.writeWithOptimizer(_:to:overwrite:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v11);
  v5(v4, v1);
  v6 = type metadata accessor for EstimatorPackageEncoder(0);
  OUTLINED_FUNCTION_6_3(v6);
  OUTLINED_FUNCTION_7_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_2(v7, &off_284AD6C18);
    v8 = OUTLINED_FUNCTION_2_4();
    v9(v8);
    sub_237C66728(v13, &v12);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAD880, &qword_237F03D78);
    OUTLINED_FUNCTION_8_3(v10);
    sub_237D8533C();
    sub_237D8508C();

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  OUTLINED_FUNCTION_11_3();
}

void UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v10);
  v5(v4, v0);
  v6 = type metadata accessor for EstimatorPackageDecoder(0);
  OUTLINED_FUNCTION_6_3(v6);
  OUTLINED_FUNCTION_10_4();
  if (!v1)
  {
    OUTLINED_FUNCTION_9_2(v7, &off_284AD6C00);
    v8 = OUTLINED_FUNCTION_4_3();
    v9(v8);
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  OUTLINED_FUNCTION_11_3();
}

void sub_237D51BD4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  os_unfair_lock_lock(v3);
  if (XGDMatrixSetDenseInfo())
  {
    if (XGBGetLastError())
    {
      v4 = sub_237EF8640();
      v6 = v5;
      sub_237D5206C();
      swift_allocError();
      *v7 = v4;
      v7[1] = v6;
      swift_willThrow();
      os_unfair_lock_unlock(v3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    os_unfair_lock_unlock(v3);
  }
}

uint64_t sub_237D51C98(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  *(v1 + 24) = nullsub_1;
  *(v1 + 32) = v6;
  if ((v3 | v2) < 0)
  {
    __break(1u);
  }

  result = XGDMatrixCreateFromMat();
  if (result)
  {
    result = XGBGetLastError();
    if (result)
    {
      v8 = sub_237EF8640();
      v10 = v9;
      sub_237D5206C();
      swift_allocError();
      *v11 = v8;
      v11[1] = v10;
      swift_willThrow();

      swift_deallocPartialClassInstance();
      return v1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237D51E3C(uint64_t a1)
{
  *(v1 + 24) = nullsub_1;
  *(v1 + 32) = a1;

  result = XGDMatrixCreateFromMat();
  if (result)
  {
    result = XGBGetLastError();
    if (result)
    {
      v3 = sub_237EF8640();
      v5 = v4;
      sub_237D5206C();
      swift_allocError();
      *v6 = v3;
      v6[1] = v5;
      swift_willThrow();

      swift_deallocPartialClassInstance();
      return v1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_237D51FAC()
{
  XGDMatrixFree();
  v1 = *(v0 + 24);

  v1(v2);

  MEMORY[0x2383E2DF0](*(v0 + 40), -1, -1);

  return v0;
}

uint64_t sub_237D52014()
{
  sub_237D51FAC();

  return swift_deallocClassInstance();
}

unint64_t sub_237D5206C()
{
  result = qword_27DEB1698;
  if (!qword_27DEB1698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB1698);
  }

  return result;
}

uint64_t ColumnAggregator.columnSelection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_237D520D4(v2, v3);
}

uint64_t sub_237D520D4(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return sub_237EF8260();
  }

  return v2;
}

uint64_t ColumnAggregator.columnSelection.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_237D52128(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_237D52128(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t ColumnAggregator.init(columnSelection:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

void ColumnAggregator.applied(to:eventHandler:)()
{
  OUTLINED_FUNCTION_13_4();
  v62 = v2;
  v65 = v3;
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v4);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v6;
  v58 = *(v6 + 32);
  v7 = *(v58 + 8);
  v59 = v8;
  v60 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v56 = v10;
  v11 = sub_237EF6310();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v64 = v15;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v69 = sub_237EF61A0();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v0 + 8);
  v67 = *v0;
  v68 = v24;
  sub_237D520D4(v67, v24);
  v25 = sub_237CACD68(&v67);
  sub_237D52128(v67, v68);
  v67 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
  sub_237D5D274(&qword_27DEAEC30, &qword_27DEAEBD0, qword_237F0EC30);
  sub_237EF6180();

  v26 = sub_237EF6170();
  (*(v20 + 8))(v23, v69);
  v27 = 0;
  v28 = 0;
  v70 = *(v26 + 16);
  v66 = v13 + 16;
  v29 = (v13 + 8);
  while (v70 != v27)
  {
    if (v27 >= *(v26 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_53_6();
    v32 = (*(v13 + 16))(v18, v30 + v31 * v27, v11);
    sub_237D52688(v32, v33, v34, v35, v36, v37, v38, v39, v55, v56, AssociatedTypeWitness, v58, v59, v60, v61, v62, v63, v64, v65, v66);
    if (v1)
    {
      (*v29)(v18, v11);
      goto LABEL_14;
    }

    v41 = v40;
    ++v27;
    (*v29)(v18, v11);
    v42 = __OFADD__(v28, v41);
    v28 += v41;
    if (v42)
    {
      __break(1u);
      break;
    }
  }

  v43 = v59;
  v63 = *(v63 + 24);
  v55 = sub_237EF7E90();
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  v44 = v43;
  sub_237EF9CE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_237F04760;
  *(v45 + 32) = sub_237EF6100();
  *(v45 + 40) = v28;
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  v46 = v44;
  sub_237EF7F80();
  v47 = 0;
  v67 = 0;
  v48 = v58;
  while (v70 != v47)
  {
    if (v47 >= *(v26 + 16))
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_53_6();
    v51 = v64;
    (*(v13 + 16))(v64, v49 + v50 * v47, v11);
    sub_237D54820(v51, &v67, v65, v46, v63, v48, v52, v53, v55, v56, AssociatedTypeWitness, v58, v59, v60, v61, v62, v63, v64, v65, v66);
    if (v1)
    {
      (*v29)(v51, v11);

      OUTLINED_FUNCTION_22_3();
      (*(v54 + 8))(v65);
      goto LABEL_16;
    }

    ++v47;
    (*v29)(v51, v11);
  }

LABEL_14:

LABEL_16:
  OUTLINED_FUNCTION_12_6();
}

void sub_237D52688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v22;
  a20 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19D8, &unk_237F17500);
  OUTLINED_FUNCTION_7_35(v24, &v354);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA8, &unk_237F06900);
  v28 = OUTLINED_FUNCTION_3_2(v27, v376);
  v334 = v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19B8, &qword_237F0F090);
  OUTLINED_FUNCTION_7_35(v32, &v358);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17B0, &unk_237F0EEF0);
  OUTLINED_FUNCTION_18(v35);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA0, &unk_237F07330);
  v39 = OUTLINED_FUNCTION_7_35(v38, &v355);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA90, &unk_237F068F0);
  v44 = OUTLINED_FUNCTION_3_2(v43, v377);
  v338 = v45;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1990, &qword_237F0F070);
  OUTLINED_FUNCTION_7_35(v48, &v365);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17B8, &unk_237F17A30);
  OUTLINED_FUNCTION_18(v51);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
  v55 = OUTLINED_FUNCTION_7_35(v54, &v362);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA80, &unk_237F068E0);
  v60 = OUTLINED_FUNCTION_3_2(v59, &a11);
  v341 = v61;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1960, &qword_237F0F050);
  OUTLINED_FUNCTION_7_35(v64, &v374);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_19();
  v360 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17C0, &unk_237F0EF00);
  OUTLINED_FUNCTION_18(v67);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA78, &qword_237F068D8);
  v71 = OUTLINED_FUNCTION_7_35(v70, &v372);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v72);
  v359 = v331 - v73;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v75);
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA68, &qword_237F068D0);
  OUTLINED_FUNCTION_1();
  v351 = v76;
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_2_2();
  v375 = v78;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1938, &qword_237F0F030);
  OUTLINED_FUNCTION_7_35(v81, &a15);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_19();
  v368 = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAE8, &qword_237F06920);
  v85 = OUTLINED_FUNCTION_3_2(v84, &a13);
  v356 = v86;
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_22_1();
  v361 = v88;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1918, &unk_237F17510);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_19();
  v369 = v90;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAD8, &unk_237F0EF10);
  OUTLINED_FUNCTION_1();
  v364 = v91;
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_2_2();
  v363 = v93;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_22_1();
  v365 = v95;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18F8, &qword_237F0F000);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_19();
  v370 = v97;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAC8, &unk_237F06910);
  OUTLINED_FUNCTION_1();
  v367 = v98;
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_2_2();
  v366 = v100;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v101);
  v103 = v331 - v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18D8, &unk_237F17550);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v104);
  v106 = v331 - v105;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAB8, &qword_237F0EF20);
  OUTLINED_FUNCTION_1();
  v109 = v108;
  MEMORY[0x28223BE20](v110);
  v112 = v331 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v113);
  v115 = v331 - v114;
  sub_237EF62F0();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_6;
  }

  v331[2] = v112;
  v332 = v106;
  v116 = v372;
  v331[4] = v115;
  v331[3] = v109;
  v331[1] = v103;
  v117 = v371;
  v118 = v373;
  v119 = v375;
  v331[5] = v20;
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA0, &unk_237F0EF50);
  if (swift_dynamicCastMetatype())
  {
    sub_237EF62E0();
    v120 = sub_237CA2ED8();
    if (v120 >= 2)
    {
      v121 = *(v120 + 16);
      sub_237C583C0(v120);
    }

    else
    {
      v121 = 0;
    }

    OUTLINED_FUNCTION_31_10();
    v124 = OUTLINED_FUNCTION_31_0();
    v125(v124);
    OUTLINED_FUNCTION_2_51();
    sub_237D5D274(v126, &qword_27DEAEAB8, &qword_237F0EF20);
    sub_237EF86F0();
    OUTLINED_FUNCTION_1_52();
    sub_237D5D274(v127, &qword_27DEAEAB8, &qword_237F0EF20);
    while (1)
    {
      v128 = v332;
      OUTLINED_FUNCTION_23_12();
      sub_237EF8DE0();
      OUTLINED_FUNCTION_30_17();
      if (v198)
      {
        break;
      }

      v129 = sub_237EF8F00();
      v131 = *v130;
      sub_237EF8260();
      v132 = OUTLINED_FUNCTION_29_15();
      v129(v132);
      sub_237EF8DF0();
      if (v131)
      {
        v133 = *(v131 + 16);

        if (v133 != v121)
        {
          goto LABEL_20;
        }
      }

      else if (v121)
      {
LABEL_20:
        sub_237C65484(v332, &qword_27DEB18D8, &unk_237F17550);
        OUTLINED_FUNCTION_41_5();
        sub_237EF6300();
        v134 = OUTLINED_FUNCTION_50_7();
        v135 = OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v134);
        OUTLINED_FUNCTION_34_6(v135, v136);
        swift_willThrow();
        v137 = OUTLINED_FUNCTION_69_4();
        v138(v137);
        goto LABEL_6;
      }
    }

    sub_237C65484(v128, &qword_27DEB18D8, &unk_237F17550);
    v139 = OUTLINED_FUNCTION_69_4();
    v140(v139);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_31_10();
    sub_237EF62E0();
    v122 = sub_237CA2EF4();
    if (v122 >= 2)
    {
      v123 = *(v122 + 16);
      sub_237C583C0(v122);
    }

    else
    {
      v123 = 0;
    }

    (*(v367 + 16))(v366, v107, v117);
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_57_6(v144);
    sub_237EF86F0();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_57_6(v145);
    while (1)
    {
      v146 = v370;
      OUTLINED_FUNCTION_24_8();
      sub_237EF8DE0();
      OUTLINED_FUNCTION_30_17();
      if (v198)
      {
        break;
      }

      v147 = OUTLINED_FUNCTION_39_8();
      OUTLINED_FUNCTION_54_4(v147, v148);
      v149 = OUTLINED_FUNCTION_29_15();
      v21(v149);
      OUTLINED_FUNCTION_58_4();
      if (&unk_237F06910)
      {

        if (v123 != 0xD0002778CLL)
        {
          goto LABEL_32;
        }
      }

      else if (v123)
      {
LABEL_32:
        sub_237C65484(v370, &qword_27DEB18F8, &qword_237F0F000);
        sub_237EF6300();
        v150 = OUTLINED_FUNCTION_50_7();
        v151 = OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v150);
        OUTLINED_FUNCTION_34_6(v151, v152);
        swift_willThrow();
        v153 = OUTLINED_FUNCTION_67_2();
        v154(v153);
        goto LABEL_6;
      }
    }

    sub_237C65484(v146, &qword_27DEB18F8, &qword_237F0F000);
    v155 = OUTLINED_FUNCTION_67_2();
    v156(v155);
    goto LABEL_6;
  }

  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8, &qword_237F07050);
  if (OUTLINED_FUNCTION_35_8(v141))
  {
    sub_237EF62E0();
    v142 = sub_237CA2FC0();
    if (v142 >= 2)
    {
      v143 = *(v142 + 16);
      sub_237C583C0(v142);
    }

    else
    {
      v143 = 0;
    }

    v159 = v364;
    v160 = OUTLINED_FUNCTION_51_6();
    v161(v160);
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_57_6(v162);
    sub_237EF86F0();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_57_6(v163);
    while (1)
    {
      v164 = v369;
      OUTLINED_FUNCTION_24_8();
      sub_237EF8DE0();
      OUTLINED_FUNCTION_30_17();
      if (v198)
      {
        break;
      }

      v165 = OUTLINED_FUNCTION_39_8();
      OUTLINED_FUNCTION_54_4(v165, v166);
      v167 = OUTLINED_FUNCTION_29_15();
      v21(v167);
      OUTLINED_FUNCTION_58_4();
      if (&unk_237F0EF10)
      {

        if (v143 != 0x100001F15ELL)
        {
          goto LABEL_44;
        }
      }

      else if (v143)
      {
LABEL_44:
        sub_237C65484(v369, &qword_27DEB1918, &unk_237F17510);
        sub_237EF6300();
        v168 = OUTLINED_FUNCTION_50_7();
        v169 = OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v168);
        OUTLINED_FUNCTION_34_6(v169, v170);
        swift_willThrow();
        (*(v159 + 8))(v365, v118);
        goto LABEL_6;
      }
    }

    sub_237C65484(v164, &qword_27DEB1918, &unk_237F17510);
    (*(v159 + 8))(v365, v118);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8, &qword_237F15D00);
  OUTLINED_FUNCTION_31_0();
  if (!swift_dynamicCastMetatype())
  {
    v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50, &unk_237F068C0);
    OUTLINED_FUNCTION_31_0();
    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_24_15();
      sub_237EF62E0();
      v172 = v344;
      sub_237CA3018(v344);
      OUTLINED_FUNCTION_26_14(v172, 1, &v372);
      v374 = v171;
      if (v198)
      {
        sub_237C65484(v172, &qword_27DEB17C0, &unk_237F0EF00);
        v173 = MEMORY[0x277D84F90];
      }

      else
      {
        OUTLINED_FUNCTION_37_8();
        sub_237CF9FF0(v192, v193, v194, v195);
        v196 = OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_28_1(v196, v197, v171);
        if (v198)
        {
          sub_237C65484(v343, &qword_27DEAEA78, &qword_237F068D8);
          v173 = MEMORY[0x277D84F90];
          v171 = v374;
        }

        else
        {
          v171 = v374;
          v173 = sub_237EF7E20();
          OUTLINED_FUNCTION_22_3();
          v199 = OUTLINED_FUNCTION_31_0();
          v200(v199);
        }
      }

      OUTLINED_FUNCTION_63_3();
      v201(v119, v357, v362);
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_55_5(v202);
      v203 = v360;
      sub_237EF86F0();
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_55_5(v204);
      v375 = v171 - 8;
      v373 = v173;
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_30_17();
        if (v198)
        {
          break;
        }

        v205 = sub_237EF8F00();
        v206 = v359;
        sub_237C9E294(v207, v359, &qword_27DEAEA78, &qword_237F068D8);
        v208 = OUTLINED_FUNCTION_29_15();
        v205(v208);
        sub_237EF8DF0();
        OUTLINED_FUNCTION_65_3();
        sub_237C9E294(v209, v210, &qword_27DEAEA78, &qword_237F068D8);
        OUTLINED_FUNCTION_28_1(v206, 1, v374);
        if (v198)
        {
          OUTLINED_FUNCTION_36_10();
          sub_237C65484(v230, v231, v232);
          OUTLINED_FUNCTION_36_10();
          sub_237C65484(v233, v234, v235);
LABEL_89:

          v203 = v360;
          goto LABEL_90;
        }

        v211 = sub_237EF7E20();
        v212 = OUTLINED_FUNCTION_23_12();
        v213(v212);
        v214 = *(v211 + 16);
        if (v214 != *(v373 + 16))
        {
          sub_237C65484(v206, &qword_27DEAEA78, &qword_237F068D8);

          goto LABEL_89;
        }

        v203 = v360;
        if (v214 && v211 != v373)
        {
          v215 = 32;
          while (*(v211 + v215) == *(v373 + v215))
          {
            v215 += 8;
            if (!--v214)
            {
              goto LABEL_75;
            }
          }

          sub_237C65484(v206, &qword_27DEAEA78, &qword_237F068D8);

LABEL_90:
          sub_237C65484(v203, &qword_27DEB1960, &qword_237F0F050);
          OUTLINED_FUNCTION_41_5();
          sub_237EF6300();
          v236 = OUTLINED_FUNCTION_50_7();
          v237 = OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v236);
          OUTLINED_FUNCTION_34_6(v237, v238);
LABEL_91:
          swift_willThrow();
          OUTLINED_FUNCTION_18_25();
          v240 = v357;
          v241 = v362;
          goto LABEL_141;
        }

LABEL_75:
        sub_237C65484(v206, &qword_27DEAEA78, &qword_237F068D8);
      }

      sub_237C65484(v203, &qword_27DEB1960, &qword_237F0F050);
      if (*(v373 + 16) > 1uLL)
      {

        v228 = sub_237D4A59C();
        OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v228);
        *v229 = xmmword_237F07A60;
        goto LABEL_91;
      }

      sub_237CA2FF8(v373);
      OUTLINED_FUNCTION_56_7();
      OUTLINED_FUNCTION_18_25();
      v240 = v357;
      v241 = v362;
      goto LABEL_141;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
    OUTLINED_FUNCTION_9_11();
    v375 = v187;
    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_70_3();
      OUTLINED_FUNCTION_32_12();
      sub_237CA3104(v188);
      OUTLINED_FUNCTION_26_14(v116, 1, &v362);
      if (v198)
      {
        v189 = &qword_27DEB17B8;
        v190 = &unk_237F17A30;
        v191 = &v368;
      }

      else
      {
        OUTLINED_FUNCTION_37_8();
        sub_237CF9FF0(v221, v222, v223, v224);
        v225 = OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_28_1(v225, v226, v375);
        if (!v227)
        {
          v374 = sub_237EF7E20();
          OUTLINED_FUNCTION_22_3();
          v242 = OUTLINED_FUNCTION_31_0();
          v243(v242);
          goto LABEL_92;
        }

        v189 = &qword_27DEAD600;
        v190 = &unk_237F049C0;
        v191 = &v363;
      }

      sub_237C65484(*(v191 - 32), v189, v190);
      v374 = MEMORY[0x277D84F90];
LABEL_92:
      OUTLINED_FUNCTION_63_3();
      v244(v339, v345, v352);
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_55_5(v245);
      v246 = v350;
      sub_237EF86F0();
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_55_5(v247);
      OUTLINED_FUNCTION_66_2();
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_30_17();
        if (v198)
        {
          break;
        }

        v248 = sub_237EF8F00();
        OUTLINED_FUNCTION_65_3();
        sub_237C9E294(v249, v250, &qword_27DEAD600, &unk_237F049C0);
        v251 = OUTLINED_FUNCTION_29_15();
        v248(v251);
        sub_237EF8DF0();
        OUTLINED_FUNCTION_65_3();
        sub_237C9E294(v252, v253, &qword_27DEAD600, &unk_237F049C0);
        OUTLINED_FUNCTION_28_1(&unk_237F068E0, 1, v375);
        if (v198)
        {
          OUTLINED_FUNCTION_36_10();
          sub_237C65484(v274, v275, v276);
          OUTLINED_FUNCTION_36_10();
          sub_237C65484(v277, v278, v279);
          goto LABEL_103;
        }

        v254 = sub_237EF7E20();
        v255 = OUTLINED_FUNCTION_23_12();
        v256(v255);
        v257 = *(v254 + 16);
        if (v257 != *(v374 + 16))
        {
          goto LABEL_102;
        }

        if (v257 && v254 != v374)
        {
          v258 = 32;
          while (*(v254 + v258) == *(v374 + v258))
          {
            v258 += 8;
            if (!--v257)
            {
              goto LABEL_101;
            }
          }

LABEL_102:
          sub_237C65484(v353, &qword_27DEAD600, &unk_237F049C0);

LABEL_103:

          sub_237C65484(v350, &qword_27DEB1990, &qword_237F0F070);
          OUTLINED_FUNCTION_41_5();
          sub_237EF6300();
          v259 = OUTLINED_FUNCTION_50_7();
          v260 = OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v259);
          OUTLINED_FUNCTION_34_6(v260, v261);
LABEL_104:
          swift_willThrow();
          OUTLINED_FUNCTION_18_25();
          v240 = v345;
          v262 = &a11;
          goto LABEL_140;
        }

LABEL_101:
        sub_237C65484(v353, &qword_27DEAD600, &unk_237F049C0);

        v246 = v350;
      }

      sub_237C65484(v246, &qword_27DEB1990, &qword_237F0F070);
      if (*(v374 + 16) > 1uLL)
      {

        v272 = sub_237D4A59C();
        OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v272);
        *v273 = xmmword_237F07A60;
        goto LABEL_104;
      }

      sub_237CA2FF8(v374);
      OUTLINED_FUNCTION_56_7();
      OUTLINED_FUNCTION_18_25();
      v240 = v345;
      v319 = &a11;
LABEL_148:
      v241 = *(v319 - 32);
LABEL_141:
      v239(v240, v241);
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
    OUTLINED_FUNCTION_9_11();
    v375 = v216;
    if (!swift_dynamicCastMetatype())
    {
      sub_237C75918(0, &qword_27DEAF160, 0x277CBFF48);
      OUTLINED_FUNCTION_31_0();
      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_6;
      }

      OUTLINED_FUNCTION_24_15();
      sub_237EF62E0();
      v263 = sub_237CA32DC();
      if (v263 >= 2)
      {
        v302 = [v263 shape];
        v303 = OUTLINED_FUNCTION_62_3();
        sub_237D5CEDC(v303);
        sub_237C75918(0, &qword_280C8CCF8, 0x277CCABB0);
        OUTLINED_FUNCTION_9_11();
        v264 = sub_237EF8910();
      }

      else
      {
        v264 = MEMORY[0x277D84F90];
      }

      OUTLINED_FUNCTION_63_3();
      v304(v333, v337, v347);
      OUTLINED_FUNCTION_2_51();
      sub_237D5D274(v305, &qword_27DEAEAA8, &unk_237F06900);
      sub_237EF86F0();
      OUTLINED_FUNCTION_1_52();
      sub_237D5D274(v306, &qword_27DEAEAA8, &unk_237F06900);
      while (1)
      {
        v307 = v346;
        sub_237EF8DE0();
        OUTLINED_FUNCTION_30_17();
        if (v198)
        {
          break;
        }

        v308 = sub_237EF8F00();
        v310 = *v309;
        v311 = *v309;
        v312 = OUTLINED_FUNCTION_29_15();
        v308(v312);
        sub_237EF8DF0();
        if (v310)
        {
          v313 = [v311 shape];
          sub_237C75918(0, &qword_280C8CCF8, 0x277CCABB0);
          OUTLINED_FUNCTION_9_11();
          sub_237EF8910();

          sub_237EF8260();
          v314 = OUTLINED_FUNCTION_24_8();
          LOBYTE(v313) = sub_237C60FA4(v314, v315);

          if (v313)
          {
            continue;
          }
        }

        sub_237C65484(v346, &qword_27DEB19D8, &unk_237F17500);
        OUTLINED_FUNCTION_41_5();
        sub_237EF6300();
        v316 = OUTLINED_FUNCTION_50_7();
        v317 = OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v316);
        OUTLINED_FUNCTION_34_6(v317, v318);
        goto LABEL_139;
      }

      sub_237C65484(v346, &qword_27DEB19D8, &unk_237F17500);
      if (sub_237D6DA5C() <= 1)
      {
        sub_237CA338C(v264);
        OUTLINED_FUNCTION_62_3();

        if (v307)
        {
          [v307 integerValue];
        }

        OUTLINED_FUNCTION_18_25();
        v330(v337, v347);
        goto LABEL_6;
      }

      v320 = sub_237D4A59C();
      OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v320);
      *v321 = xmmword_237F07A60;
LABEL_139:
      swift_willThrow();
      OUTLINED_FUNCTION_18_25();
      v240 = v337;
      v262 = v376;
LABEL_140:
      v241 = *(v262 - 32);
      goto LABEL_141;
    }

    OUTLINED_FUNCTION_31_10();
    OUTLINED_FUNCTION_70_3();
    OUTLINED_FUNCTION_32_12();
    sub_237CA31F0(v217);
    OUTLINED_FUNCTION_26_14(v116, 1, &v355);
    if (v198)
    {
      v218 = &qword_27DEB17B0;
      v219 = &unk_237F0EEF0;
      v220 = &v361;
    }

    else
    {
      OUTLINED_FUNCTION_37_8();
      sub_237CF9FF0(v265, v266, v267, v268);
      v269 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_28_1(v269, v270, v375);
      if (!v271)
      {
        v280 = sub_237EF7E20();
        OUTLINED_FUNCTION_22_3();
        v281 = OUTLINED_FUNCTION_31_0();
        v282(v281);
        goto LABEL_116;
      }

      v218 = &qword_27DEAEAA0;
      v219 = &unk_237F07330;
      v220 = &v356;
    }

    sub_237C65484(*(v220 - 32), v218, v219);
    v280 = MEMORY[0x277D84F90];
LABEL_116:
    OUTLINED_FUNCTION_63_3();
    v283(v335, v340, v349);
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_55_5(v284);
    sub_237EF86F0();
    v374 = *(v336 + 36);
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_55_5(v285);
    OUTLINED_FUNCTION_66_2();
    while (1)
    {
      sub_237EF8DE0();
      OUTLINED_FUNCTION_30_17();
      if (v198)
      {
        break;
      }

      v286 = sub_237EF8F00();
      OUTLINED_FUNCTION_65_3();
      sub_237C9E294(v287, v288, &qword_27DEAEAA0, &unk_237F07330);
      v289 = OUTLINED_FUNCTION_29_15();
      v286(v289);
      sub_237EF8DF0();
      OUTLINED_FUNCTION_37_8();
      sub_237C9E294(v290, v291, &qword_27DEAEAA0, &unk_237F07330);
      v292 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_28_1(v292, v293, v375);
      if (v198)
      {
        OUTLINED_FUNCTION_36_10();
        sub_237C65484(v324, v325, v326);
        OUTLINED_FUNCTION_36_10();
        sub_237C65484(v327, v328, v329);
        goto LABEL_127;
      }

      v294 = sub_237EF7E20();
      v295 = OUTLINED_FUNCTION_23_12();
      v296(v295);
      v297 = *(v294 + 16);
      if (v297 != *(v280 + 16))
      {
        goto LABEL_126;
      }

      if (v297 && v294 != v280)
      {
        v298 = 32;
        while (*(v294 + v298) == *(v280 + v298))
        {
          v298 += 8;
          if (!--v297)
          {
            goto LABEL_125;
          }
        }

LABEL_126:
        sub_237C65484(v342, &qword_27DEAEAA0, &unk_237F07330);

LABEL_127:

        sub_237C65484(v348, &qword_27DEB19B8, &qword_237F0F090);
        OUTLINED_FUNCTION_41_5();
        sub_237EF6300();
        v299 = OUTLINED_FUNCTION_50_7();
        v300 = OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v299);
        OUTLINED_FUNCTION_34_6(v300, v301);
LABEL_128:
        swift_willThrow();
        OUTLINED_FUNCTION_18_25();
        v240 = v340;
        v262 = v377;
        goto LABEL_140;
      }

LABEL_125:
      sub_237C65484(v342, &qword_27DEAEAA0, &unk_237F07330);
    }

    sub_237C65484(v348, &qword_27DEB19B8, &qword_237F0F090);
    if (*(v280 + 16) > 1uLL)
    {

      v322 = sub_237D4A59C();
      OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v322);
      *v323 = xmmword_237F07A60;
      goto LABEL_128;
    }

    sub_237CA2FF8(v280);
    OUTLINED_FUNCTION_56_7();
    OUTLINED_FUNCTION_18_25();
    v240 = v340;
    v319 = v377;
    goto LABEL_148;
  }

  OUTLINED_FUNCTION_45_5();
  v157 = sub_237CA2FDC();
  if (v157 >= 2)
  {
    v158 = *(v157 + 16);
    sub_237C583C0(v157);
  }

  else
  {
    v158 = 0;
  }

  v174 = v354;
  v175 = v356;
  v176 = OUTLINED_FUNCTION_51_6();
  v177(v176);
  OUTLINED_FUNCTION_2_51();
  OUTLINED_FUNCTION_57_6(v178);
  sub_237EF86F0();
  OUTLINED_FUNCTION_1_52();
  OUTLINED_FUNCTION_57_6(v179);
  while (1)
  {
    v180 = v368;
    OUTLINED_FUNCTION_24_8();
    sub_237EF8DE0();
    OUTLINED_FUNCTION_30_17();
    if (v198)
    {
      break;
    }

    v181 = OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_54_4(v181, v182);
    v183 = OUTLINED_FUNCTION_29_15();
    v21(v183);
    OUTLINED_FUNCTION_58_4();
    if (&qword_237F06920)
    {

      if (v158 != 0x6000277ACLL)
      {
        goto LABEL_57;
      }
    }

    else if (v158)
    {
LABEL_57:
      sub_237C65484(v368, &qword_27DEB1938, &qword_237F0F030);
      sub_237EF6300();
      v184 = OUTLINED_FUNCTION_50_7();
      v185 = OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v184);
      OUTLINED_FUNCTION_34_6(v185, v186);
      swift_willThrow();
      (*(v175 + 8))(v361, v174);
      goto LABEL_6;
    }
  }

  sub_237C65484(v180, &qword_27DEB1938, &qword_237F0F030);
  (*(v175 + 8))(v361, v174);
LABEL_6:
  OUTLINED_FUNCTION_12_6();
}

void sub_237D54820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v21;
  a20 = v22;
  v327 = v23;
  v328 = v20;
  v326 = v24;
  v26 = v25;
  v28 = v27;
  v330 = v29;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA8, &unk_237F06900);
  OUTLINED_FUNCTION_3_2(v32, &v303);
  v280 = v33;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17B0, &unk_237F0EEF0);
  OUTLINED_FUNCTION_18(v36);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA0, &unk_237F07330);
  OUTLINED_FUNCTION_7_35(v39, v305);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA90, &unk_237F068F0);
  OUTLINED_FUNCTION_3_2(v42, v306);
  v282 = v43;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17B8, &unk_237F17A30);
  OUTLINED_FUNCTION_18(v46);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
  OUTLINED_FUNCTION_7_35(v49, &v308);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA80, &unk_237F068E0);
  OUTLINED_FUNCTION_3_2(v52, &v310);
  v285 = v53;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17C0, &unk_237F0EF00);
  OUTLINED_FUNCTION_18(v56);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA78, &qword_237F068D8);
  OUTLINED_FUNCTION_7_35(v59, &v316);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA68, &qword_237F068D0);
  OUTLINED_FUNCTION_3_2(v62, &v315);
  v288 = v63;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v65);
  v325 = v26;
  v66 = sub_237EF7E90();
  v67 = sub_237EF90F0();
  v68 = sub_237EF90F0();
  OUTLINED_FUNCTION_3_2(v68, &v319);
  v290 = v69;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v71);
  v297 = v67;
  v292 = *(v67 - 8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v73);
  v329 = v66;
  v74 = sub_237EF6290();
  OUTLINED_FUNCTION_3_2(v74, &v327);
  v295 = v75;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAE8, &qword_237F06920);
  OUTLINED_FUNCTION_3_2(v78, &v329);
  v299 = v79;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAD8, &unk_237F0EF10);
  OUTLINED_FUNCTION_3_2(v82, &a9);
  v302 = v83;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAC8, &unk_237F06910);
  OUTLINED_FUNCTION_3_2(v86, &a13);
  v305[1] = v87;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAB8, &qword_237F0EF20);
  OUTLINED_FUNCTION_3_2(v90, &a16);
  v307 = v91;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v93);
  v323 = sub_237EF8A60();
  sub_237EF6290();
  OUTLINED_FUNCTION_1();
  v310 = v95;
  v311 = v94;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF450, &qword_237F08850);
  OUTLINED_FUNCTION_1();
  v312 = v99;
  v313 = v98;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_19();
  v322 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17C8, &qword_237F0EF30);
  OUTLINED_FUNCTION_1();
  v314 = v103;
  v315 = v102;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_19();
  v321 = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17D0, &qword_237F0EF38);
  OUTLINED_FUNCTION_1();
  v316 = v107;
  v317 = v106;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_19();
  v320 = v109;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17D8, &qword_237F0EF40);
  OUTLINED_FUNCTION_1();
  v318 = v111;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v112);
  v114 = (&v277 - v113);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17E0, &qword_237F0EF48);
  OUTLINED_FUNCTION_1();
  v319 = v116;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v117);
  v119 = &v277 - v118;
  v324 = sub_237EF6290();
  OUTLINED_FUNCTION_1();
  v121 = v120;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v122);
  v124 = &v277 - v123;
  sub_237EF62F0();
  if (!swift_dynamicCastMetatype())
  {
    v278 = v115;
    v277 = v110;
    v121 = v320;
    v130 = v321;
    v131 = v322;
    v324 = v31;
    v279 = v28;
    if (swift_dynamicCastMetatype())
    {
      v132 = v119;
      v133 = v324;
      sub_237EF62E0();
      OUTLINED_FUNCTION_27_17();
      MEMORY[0x28223BE20](v134);
      OUTLINED_FUNCTION_4_43();
      *(v135 - 32) = v136;
      *(v135 - 24) = v119;
      v137 = v330;
      *(v135 - 16) = v330;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_10_32();
      OUTLINED_FUNCTION_46_6();
      if (v20)
      {
        v138 = *(v319 + 8);
        v139 = v119;
        v140 = &v300;
        goto LABEL_13;
      }

      v146 = v278;
      v147 = v319;
      if (!__OFADD__(*v137, 1))
      {
        ++*v137;
        (*(v147 + 8))(v119, v146);
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_75;
    }

    if (swift_dynamicCastMetatype())
    {
      sub_237EF62E0();
      OUTLINED_FUNCTION_43_8();
      MEMORY[0x28223BE20](v141);
      OUTLINED_FUNCTION_4_43();
      *(v142 - 32) = v143;
      *(v142 - 24) = v114;
      v144 = v330;
      *(v142 - 16) = v330;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_10_32();
      OUTLINED_FUNCTION_52_7();
      if (!v20)
      {
        v145 = v277;
        v156 = v318;
        if (!__OFADD__(*v144, 1))
        {
          ++*v144;
          v138 = *(v156 + 8);
          v139 = v114;
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_88;
      }

      v138 = *(v318 + 8);
      v139 = v114;
      v140 = &v299;
LABEL_13:
      v145 = *(v140 - 32);
LABEL_21:
      v138(v139, v145);
      goto LABEL_22;
    }

    v148 = swift_dynamicCastMetatype();
    v114 = v324;
    if (v148)
    {
      v149 = v121;
      sub_237EF62E0();
      OUTLINED_FUNCTION_43_8();
      MEMORY[0x28223BE20](v150);
      OUTLINED_FUNCTION_4_43();
      *(v151 - 32) = v152;
      *(v151 - 24) = v121;
      v153 = v330;
      *(v151 - 16) = v330;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_10_32();
      OUTLINED_FUNCTION_52_7();
      if (v20)
      {
        v155 = v316;
        v154 = v317;
LABEL_34:
        (*(v155 + 8))(v149, v154);
        goto LABEL_22;
      }

      v160 = *v153 + 1;
      v155 = v316;
      v154 = v317;
      if (!__OFADD__(*v153, 1))
      {
        goto LABEL_33;
      }

      __break(1u);
    }

    else if (swift_dynamicCastMetatype())
    {
      v149 = v130;
      sub_237EF62E0();
      OUTLINED_FUNCTION_43_8();
      MEMORY[0x28223BE20](v157);
      OUTLINED_FUNCTION_4_43();
      *(v158 - 32) = v159;
      *(v158 - 24) = v130;
      v153 = v330;
      *(v158 - 16) = v330;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_16_26();
      OUTLINED_FUNCTION_36_10();
      v133 = v327;
      v20 = v328;
      sub_237D14EC8();
      OUTLINED_FUNCTION_52_7();
      if (v20)
      {
        v155 = v314;
        v154 = v315;
        goto LABEL_34;
      }

      v160 = *v153 + 1;
      v155 = v314;
      v154 = v315;
      if (__OFADD__(*v153, 1))
      {
        __break(1u);
        goto LABEL_108;
      }

LABEL_33:
      *v153 = v160;
      goto LABEL_34;
    }

    if (swift_dynamicCastMetatype())
    {
      sub_237EF62E0();
      OUTLINED_FUNCTION_43_8();
      MEMORY[0x28223BE20](v161);
      OUTLINED_FUNCTION_6_34(&v277);
      *(v162 - 32) = v163;
      *(v162 - 24) = v131;
      v164 = v330;
      *(v162 - 16) = v330;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_16_26();
      v20 = v328;
      sub_237D14EC8();
      OUTLINED_FUNCTION_52_7();
      if (v20)
      {
        v166 = v312;
        v165 = v313;
      }

      else
      {
        v166 = v312;
        v165 = v313;
        if (__OFADD__(*v164, 1))
        {
          __break(1u);
          goto LABEL_113;
        }

        ++*v164;
      }

      (*(v166 + 8))(v131, v165);
      goto LABEL_22;
    }

    if (swift_dynamicCastMetatype())
    {
      v167 = v309[1];
      sub_237EF62E0();
      OUTLINED_FUNCTION_1_22();
      swift_getWitnessTable();
      sub_237EF8E80();
      v168 = a10;
      if (a10 >= 2)
      {
        v172 = v279;
        v119 = sub_237EF8A00();
        sub_237C583C0(v168);
        v169 = v330;
        v171 = v325;
        v170 = v326;
      }

      else
      {
        v119 = 0;
        v169 = v330;
        v171 = v325;
        v170 = v326;
        v172 = v279;
      }

      OUTLINED_FUNCTION_43_8();
      MEMORY[0x28223BE20](v175);
      OUTLINED_FUNCTION_17_25();
      *(v176 - 48) = v172;
      *(v176 - 40) = v171;
      *(v176 - 32) = v170;
      *(v176 - 24) = v167;
      *(v176 - 16) = v169;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_16_26();
      v20 = v328;
      sub_237D14EC8();
      OUTLINED_FUNCTION_52_7();
      if (v20)
      {
        v177 = v310;
      }

      else
      {
        v177 = v310;
        if (__OFADD__(*v169, v119))
        {
          __break(1u);
          goto LABEL_128;
        }

        *v169 += v119;
      }

      (*(v177 + 8))(v167, v311);
      goto LABEL_22;
    }

    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA0, &unk_237F0EF50);
    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_32_12();
      OUTLINED_FUNCTION_45_5();
      v173 = sub_237CA2ED8();
      if (v173 >= 2)
      {
        v174 = *(v173 + 16);
        sub_237C583C0(v173);
      }

      else
      {
        v174 = 0;
      }

      v179 = v330;
      OUTLINED_FUNCTION_27_17();
      MEMORY[0x28223BE20](v180);
      OUTLINED_FUNCTION_64_3();
      v181 = v309[0];
      *(v182 - 32) = v183;
      *(v182 - 24) = v181;
      *(v182 - 16) = v179;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_16_26();
      v20 = v328;
      sub_237D14EC8();
      OUTLINED_FUNCTION_46_6();
      if (v20)
      {
        v138 = *(v307 + 8);
        v139 = v181;
        v184 = &a16;
        goto LABEL_56;
      }

      v185 = __OFADD__(*v179, v174);
      v186 = *v179 + v174;
      v187 = v308;
      v188 = v307;
      if (!v185)
      {
        *v179 = v186;
        (*(v188 + 8))(v181, v187);
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_144;
    }

    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_32_12();
      OUTLINED_FUNCTION_45_5();
      v178 = sub_237CA2EF4();
      if (v178 >= 2)
      {
        v119 = *(v178 + 16);
        sub_237C583C0(v178);
      }

      else
      {
        v119 = 0;
      }

      v190 = v330;
      v133 = v327;
      OUTLINED_FUNCTION_27_17();
      MEMORY[0x28223BE20](v191);
      OUTLINED_FUNCTION_64_3();
      v192 = v306[1];
      *(v193 - 32) = v194;
      *(v193 - 24) = v192;
      *(v193 - 16) = v190;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_16_26();
      v195 = v328;
      sub_237D14EC8();
      OUTLINED_FUNCTION_46_6();
      if (!v195)
      {
        if (__OFADD__(*v190, v119))
        {
          __break(1u);
          goto LABEL_154;
        }

        *v190 += v119;
      }

      OUTLINED_FUNCTION_18_25();
      v139 = v192;
      v140 = &a13;
      goto LABEL_13;
    }

    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8, &qword_237F07050);
    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_68;
    }

    v119 = v305[0];
    sub_237EF62E0();
    v133 = v119;
    v189 = sub_237CA2FC0();
    if (v189 >= 2)
    {
      v132 = *(v189 + 16);
      sub_237C583C0(v189);
    }

    else
    {
      v132 = 0;
    }

    OUTLINED_FUNCTION_27_17();
    MEMORY[0x28223BE20](v198);
    OUTLINED_FUNCTION_4_43();
    *(v199 - 32) = v200;
    v201 = v305[0];
    v114 = v330;
    *(v199 - 24) = v305[0];
    *(v199 - 16) = v114;
    OUTLINED_FUNCTION_0_18();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_10_32();
    OUTLINED_FUNCTION_46_6();
    if (v20)
    {
      OUTLINED_FUNCTION_18_25();
      v139 = v201;
LABEL_77:
      v140 = &a9;
      goto LABEL_13;
    }

LABEL_75:
    if (!__OFADD__(*v114, v132))
    {
      OUTLINED_FUNCTION_38_6(*v114 + v132);
      OUTLINED_FUNCTION_18_25();
      v139 = v305[0];
      goto LABEL_77;
    }

LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  v125 = sub_237EF62E0();
  v119 = &v277;
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_17_25();
  v127 = v325;
  v126 = v326;
  *(v128 - 48) = v28;
  *(v128 - 40) = v127;
  *(v128 - 32) = v126;
  *(v128 - 24) = v124;
  v129 = v330;
  *(v128 - 16) = v330;
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_26();
  OUTLINED_FUNCTION_59_5();
  if (v20)
  {
    goto LABEL_9;
  }

  if (!__OFADD__(*v129, 1))
  {
    ++*v129;
LABEL_9:
    (v121)[1](v124, v324);
    goto LABEL_22;
  }

  __break(1u);
LABEL_68:
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8, &qword_237F15D00);
  if (OUTLINED_FUNCTION_35_8(v196))
  {
    v119 = v304;
    sub_237EF62E0();
    v133 = v119;
    v197 = sub_237CA2FDC();
    if (v197 >= 2)
    {
      sub_237C583C0(v197);
    }

    OUTLINED_FUNCTION_27_17();
    MEMORY[0x28223BE20](v202);
    OUTLINED_FUNCTION_4_43();
    *(v203 - 32) = v204;
    v205 = v330;
    *(v203 - 24) = v304;
    *(v203 - 16) = v205;
    OUTLINED_FUNCTION_0_18();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_10_32();
    OUTLINED_FUNCTION_46_6();
    if (v20)
    {
      goto LABEL_86;
    }

    OUTLINED_FUNCTION_19_25();
    if (!v185)
    {
      OUTLINED_FUNCTION_38_6(v206);
LABEL_86:
      OUTLINED_FUNCTION_18_25();
      v139 = v304;
      v140 = &v329;
      goto LABEL_13;
    }

    goto LABEL_155;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_31_10();
    sub_237EF62E0();
    OUTLINED_FUNCTION_1_22();
    OUTLINED_FUNCTION_37_8();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_32_12();
    v133 = v121;
    sub_237EF8E80();
    OUTLINED_FUNCTION_26_14(v129, 1, &v325);
    if (v212)
    {
      (*(v290 + 8))(v298, v291);
      goto LABEL_109;
    }

    v119 = v294;
    (*(v292 + 32))(v294, v298, v297);
    OUTLINED_FUNCTION_28_1(v119, 1, v329);
    if (v212)
    {
      OUTLINED_FUNCTION_18_25();
      v213(v294, v297);
      goto LABEL_109;
    }

    v214 = v329;
    v133 = v294;
    v119 = sub_237EF7E20();
    OUTLINED_FUNCTION_22_3();
    (*(v215 + 8))(v133, v214);
LABEL_108:

LABEL_109:
    OUTLINED_FUNCTION_27_17();
    MEMORY[0x28223BE20](v227);
    OUTLINED_FUNCTION_4_43();
    *(v228 - 32) = v229;
    v230 = v330;
    *(v228 - 24) = v301;
    *(v228 - 16) = v230;
    OUTLINED_FUNCTION_0_18();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_10_32();
    OUTLINED_FUNCTION_46_6();
    if (!v20)
    {
      OUTLINED_FUNCTION_19_25();
      if (v185)
      {
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      OUTLINED_FUNCTION_38_6(v231);
    }

    OUTLINED_FUNCTION_18_25();
    v139 = v301;
    v140 = &v327;
    goto LABEL_13;
  }

LABEL_88:
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50, &unk_237F068C0);
  if (OUTLINED_FUNCTION_35_8(v207))
  {
    OUTLINED_FUNCTION_25_16();
    OUTLINED_FUNCTION_49_7();
    sub_237CA3018(v208);
    OUTLINED_FUNCTION_26_14(v114, 1, &v316);
    if (v212)
    {
      v209 = &qword_27DEB17C0;
      v210 = &unk_237F0EF00;
      v211 = &v321;
    }

    else
    {
      v119 = v287;
      sub_237CF9FF0(v293, v287, &qword_27DEAEA78, &qword_237F068D8);
      OUTLINED_FUNCTION_28_1(v119, 1, v121);
      if (!v221)
      {
        v119 = v287;
        sub_237EF7E20();
        OUTLINED_FUNCTION_22_3();
        (*(v232 + 8))(v119, v121);
LABEL_113:

LABEL_103:
        OUTLINED_FUNCTION_27_17();
        MEMORY[0x28223BE20](v222);
        OUTLINED_FUNCTION_4_43();
        *(v223 - 32) = v224;
        v225 = v330;
        *(v223 - 24) = v296;
        *(v223 - 16) = v225;
        OUTLINED_FUNCTION_0_18();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_10_32();
        v133 = v20;
        if (!v20)
        {
          OUTLINED_FUNCTION_19_25();
          if (v185)
          {
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

          OUTLINED_FUNCTION_38_6(v226);
        }

        OUTLINED_FUNCTION_18_25();
        v139 = v296;
        v140 = &v315;
        goto LABEL_13;
      }

      v209 = &qword_27DEAEA78;
      v210 = &qword_237F068D8;
      v211 = &v313;
    }

    sub_237C65484(*(v211 - 32), v209, v210);
    goto LABEL_103;
  }

  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  if (OUTLINED_FUNCTION_35_8(v216))
  {
    OUTLINED_FUNCTION_25_16();
    OUTLINED_FUNCTION_49_7();
    sub_237CA3104(v217);
    OUTLINED_FUNCTION_26_14(v114, 1, &v308);
    if (v212)
    {
      v218 = &qword_27DEB17B8;
      v219 = &unk_237F17A30;
      v220 = &v312;
    }

    else
    {
      OUTLINED_FUNCTION_37_8();
      sub_237CF9FF0(v238, v239, v240, v241);
      v242 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_28_1(v242, v243, v121);
      if (!v244)
      {
        v119 = v284;
        sub_237EF7E20();
        OUTLINED_FUNCTION_22_3();
        (*(v252 + 8))(v119, v121);
LABEL_128:

LABEL_122:
        OUTLINED_FUNCTION_27_17();
        MEMORY[0x28223BE20](v245);
        OUTLINED_FUNCTION_17_25();
        OUTLINED_FUNCTION_6_34(v246);
        *(v247 - 32) = v248;
        v249 = v330;
        *(v247 - 24) = v289;
        *(v247 - 16) = v249;
        OUTLINED_FUNCTION_0_18();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_16_26();
        OUTLINED_FUNCTION_59_5();
        v133 = v20;
        if (!v20)
        {
          OUTLINED_FUNCTION_19_25();
          if (v185)
          {
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
            while (1)
            {
              __break(1u);
LABEL_161:
              MEMORY[0x2383E1490](0, v119);
LABEL_134:
              OUTLINED_FUNCTION_62_3();

              v119 = [v133 integerValue];

LABEL_149:
              OUTLINED_FUNCTION_43_8();
              MEMORY[0x28223BE20](v271);
              OUTLINED_FUNCTION_17_25();
              OUTLINED_FUNCTION_6_34(v272);
              *(v273 - 32) = v274;
              v275 = v330;
              *(v273 - 24) = v283;
              *(v273 - 16) = v275;
              OUTLINED_FUNCTION_0_18();
              swift_getWitnessTable();
              OUTLINED_FUNCTION_16_26();
              v276 = v328;
              sub_237D14EC8();
              v133 = v276;
              if (v276)
              {
                break;
              }

              if (!__OFADD__(*v330, v119))
              {
                OUTLINED_FUNCTION_38_6(*v330 + v119);
                break;
              }
            }

            v138 = *(v280 + 8);
            v139 = v283;
            v251 = &v303;
            goto LABEL_126;
          }

          OUTLINED_FUNCTION_38_6(v250);
        }

        v138 = *(v285 + 8);
        v139 = v289;
        v251 = &v310;
LABEL_126:
        v145 = *(v251 - 32);
        goto LABEL_21;
      }

      v218 = &qword_27DEAD600;
      v219 = &unk_237F049C0;
      v220 = v309;
    }

    sub_237C65484(*(v220 - 32), v218, v219);
    goto LABEL_122;
  }

  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  if (OUTLINED_FUNCTION_35_8(v233))
  {
    OUTLINED_FUNCTION_25_16();
    OUTLINED_FUNCTION_49_7();
    sub_237CA31F0(v234);
    OUTLINED_FUNCTION_26_14(v114, 1, v305);
    if (v212)
    {
      v235 = &qword_27DEB17B0;
      v236 = &unk_237F0EEF0;
      v237 = &v307;
    }

    else
    {
      OUTLINED_FUNCTION_37_8();
      sub_237CF9FF0(v257, v258, v259, v260);
      v261 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_28_1(v261, v262, v121);
      if (!v263)
      {
        v119 = v281;
        sub_237EF7E20();
        OUTLINED_FUNCTION_22_3();
        (*(v270 + 8))(v119, v121);
LABEL_144:

        goto LABEL_139;
      }

      v235 = &qword_27DEAEAA0;
      v236 = &unk_237F07330;
      v237 = &v304;
    }

    sub_237C65484(*(v237 - 32), v235, v236);
LABEL_139:
    OUTLINED_FUNCTION_27_17();
    MEMORY[0x28223BE20](v264);
    OUTLINED_FUNCTION_17_25();
    OUTLINED_FUNCTION_6_34(v265);
    *(v266 - 32) = v267;
    v268 = v330;
    *(v266 - 24) = v286;
    *(v266 - 16) = v268;
    OUTLINED_FUNCTION_0_18();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_16_26();
    OUTLINED_FUNCTION_59_5();
    v133 = v20;
    if (!v20)
    {
      OUTLINED_FUNCTION_19_25();
      if (v185)
      {
        goto LABEL_159;
      }

      OUTLINED_FUNCTION_38_6(v269);
    }

    v138 = *(v282 + 8);
    v139 = v286;
    v184 = v306;
LABEL_56:
    v145 = *(v184 - 32);
    goto LABEL_21;
  }

  sub_237C75918(0, &qword_27DEAF160, 0x277CBFF48);
  OUTLINED_FUNCTION_31_0();
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_24_15();
    sub_237EF62E0();
    v253 = sub_237CA32DC();
    if (v253 >= 2)
    {
      v254 = [v253 shape];
      v255 = OUTLINED_FUNCTION_62_3();
      sub_237D5CEDC(v255);
      sub_237C75918(0, &qword_280C8CCF8, 0x277CCABB0);
      OUTLINED_FUNCTION_9_11();
      v119 = sub_237EF8910();

      if (sub_237D6DA5C())
      {
        v133 = (v119 & 0xC000000000000001);
        sub_237C85538();
        if ((v119 & 0xC000000000000001) != 0)
        {
          goto LABEL_161;
        }

        v256 = *(v119 + 32);
        goto LABEL_134;
      }
    }

    v119 = 0;
    goto LABEL_149;
  }

LABEL_22:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D564E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v45 = a4;
  v46 = a6;
  v42 = a5;
  v44 = a1;
  v8 = sub_237EF90F0();
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37[-v9];
  v11 = *(a7 - 8);
  MEMORY[0x28223BE20](v12);
  v43 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_237EF90F0();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v37[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAF7F8, &qword_237F09CD0);
  v48 = v19;
  v20 = sub_237EF6290();
  v21 = sub_237CE32D8();
  WitnessTable = swift_getWitnessTable();
  v49 = v19;
  v50 = v20;
  v23 = v20;
  v51 = v21;
  v52 = WitnessTable;
  *&v40 = v21;
  v24 = WitnessTable;
  v41 = sub_237EF9380();
  MEMORY[0x28223BE20](v41);
  v49 = v48;
  v50 = v23;
  v51 = v21;
  v52 = v24;
  v53 = sub_237EF9370();
  v38 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v26 = &v37[-v25];
  v49 = 0;
  sub_237EFA000();
  v48 = v26;
  sub_237EF9350();
  v27 = (v39 + 32);
  v41 = v11 + 40;
  v42 = v11 + 32;
  v40 = xmmword_237F04760;
  while (1)
  {
    sub_237EF9360();
    if (__swift_getEnumTagSinglePayload(v18, 1, TupleTypeMetadata2) == 1)
    {
      return (*(v38 + 8))(v48, v53);
    }

    v28 = *v18;
    (*v27)(v10, &v18[*(TupleTypeMetadata2 + 48)], v47);
    if (__swift_getEnumTagSinglePayload(v10, 1, a7) == 1)
    {
      break;
    }

    v29 = TupleTypeMetadata2;
    v30 = v43;
    (*(v11 + 32))(v43, v10, a7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
    inited = swift_initStackObject();
    *(inited + 16) = v40;
    *(inited + 32) = v28;
    v32 = v45;
    *(inited + 40) = *v46;
    v33 = sub_237D166DC(inited, v32);
    swift_setDeallocating();
    v34 = v30;
    TupleTypeMetadata2 = v29;
    (*(v11 + 40))(v44 + *(v11 + 72) * v33, v34, a7);
  }

  (*(v39 + 8))(v10, v47);
  sub_237C84150();
  swift_allocError();
  *v36 = 0xD000000000000010;
  *(v36 + 8) = 0x8000000237F0ED70;
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  swift_willThrow();
  return (*(v38 + 8))(v48, v53);
}

uint64_t sub_237D569E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52 = a4;
  v53 = a6;
  v51 = a1;
  v55 = a7;
  v10 = *(a7 - 8);
  v49 = a9;
  MEMORY[0x28223BE20](a1);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17E0, &qword_237F0EF48);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17E8, &qword_237F0EF60);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17F0, &qword_237F0EF68);
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  v25 = *(v17 + 60);
  (*(v13 + 16))(&v19[v25], a5, v12, v22);
  (*(v13 + 32))(v15, &v19[v25], v12);
  v26 = &v24[*(v21 + 60)];
  sub_237D5D274(&qword_27DEB17F8, &qword_27DEB17E0, &qword_237F0EF48);
  sub_237EF86F0();
  v27 = *(v21 + 64);
  v45 = v24;
  v44 = v27;
  v24[v27] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1800, &qword_237F0EF70);
  v29 = 0;
  v30 = *(result + 36);
  v50 = v10;
  v47 = v10 + 40;
  v46 = xmmword_237F04760;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    sub_237D5D274(&qword_27DEB1808, &qword_27DEB17E0, &qword_237F0EF48);
    sub_237EF8DE0();
    if (*&v26[v30] == v54[0])
    {
      v40 = v45;
      *v45 = v31;
      *(v40 + v44) = 1;
      return sub_237C65484(v40, &qword_27DEB17F0, &qword_237F0EF68);
    }

    v32 = sub_237EF8F00();
    v34 = *v33;
    v35 = v33[1];
    v32(v54, 0);
    sub_237EF8DF0();
    if (v35)
    {
      v41 = v45;
      *v45 = v31;
      sub_237C84150();
      swift_allocError();
      *v42 = 0xD000000000000010;
      *(v42 + 8) = 0x8000000237F0ED70;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v41, &qword_27DEB17F0, &qword_237F0EF68);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
    inited = swift_initStackObject();
    *(inited + 16) = v46;
    *(inited + 32) = v29;
    *(inited + 40) = *v53;
    LOBYTE(v54[0]) = v34;
    sub_237D5D1B8();
    v37 = v48;
    v38 = v55;
    sub_237EF83B0();
    v39 = sub_237D166DC(inited, v52);
    swift_setDeallocating();
    result = (*(v50 + 40))(v51 + *(v50 + 72) * v39, v37, v38);
    ++v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D56EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52 = a4;
  v53 = a6;
  v51 = a1;
  v55 = a7;
  v10 = *(a7 - 8);
  v49 = a9;
  MEMORY[0x28223BE20](a1);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17D8, &qword_237F0EF40);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1818, &qword_237F0EF78);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1820, &qword_237F0EF80);
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  v25 = *(v17 + 60);
  (*(v13 + 16))(&v19[v25], a5, v12, v22);
  (*(v13 + 32))(v15, &v19[v25], v12);
  v26 = &v24[*(v21 + 60)];
  sub_237D5D274(&qword_27DEB1828, &qword_27DEB17D8, &qword_237F0EF40);
  sub_237EF86F0();
  v27 = *(v21 + 64);
  v45 = v24;
  v44 = v27;
  v24[v27] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1830, &qword_237F0EF88);
  v29 = 0;
  v30 = *(result + 36);
  v50 = v10;
  v47 = v10 + 40;
  v46 = xmmword_237F04760;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    sub_237D5D274(&qword_27DEB1838, &qword_27DEB17D8, &qword_237F0EF40);
    sub_237EF8DE0();
    if (*&v26[v30] == v54[0])
    {
      v40 = v45;
      *v45 = v31;
      *(v40 + v44) = 1;
      return sub_237C65484(v40, &qword_27DEB1820, &qword_237F0EF80);
    }

    v32 = sub_237EF8F00();
    v34 = *v33;
    v35 = *(v33 + 4);
    v32(v54, 0);
    sub_237EF8DF0();
    if (v35)
    {
      v41 = v45;
      *v45 = v31;
      sub_237C84150();
      swift_allocError();
      *v42 = 0xD000000000000010;
      *(v42 + 8) = 0x8000000237F0ED70;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v41, &qword_27DEB1820, &qword_237F0EF80);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
    inited = swift_initStackObject();
    *(inited + 16) = v46;
    *(inited + 32) = v29;
    *(inited + 40) = *v53;
    LODWORD(v54[0]) = v34;
    sub_237D5D20C();
    v37 = v48;
    v38 = v55;
    sub_237EF83B0();
    v39 = sub_237D166DC(inited, v52);
    swift_setDeallocating();
    result = (*(v50 + 40))(v51 + *(v50 + 72) * v39, v37, v38);
    ++v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D57388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v51 = a4;
  v52 = a6;
  v50 = a1;
  v54 = a7;
  v10 = *(a7 - 8);
  v48 = a9;
  MEMORY[0x28223BE20](a1);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17D0, &qword_237F0EF38);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1848, &qword_237F0EF90);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1850, &qword_237F0EF98);
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = *(v17 + 60);
  (*(v13 + 16))(&v19[v25], a5, v12, v22);
  (*(v13 + 32))(v15, &v19[v25], v12);
  v26 = &v24[*(v21 + 60)];
  sub_237D5D274(&qword_27DEB1858, &qword_27DEB17D0, &qword_237F0EF38);
  sub_237EF86F0();
  v27 = *(v21 + 64);
  v44 = v24;
  v43 = v27;
  v24[v27] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1860, &qword_237F0EFA0);
  v29 = 0;
  v30 = *(result + 36);
  v49 = v10;
  v46 = v10 + 40;
  v45 = xmmword_237F04760;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    sub_237D5D274(&qword_27DEB1868, &qword_27DEB17D0, &qword_237F0EF38);
    sub_237EF8DE0();
    if (*&v26[v30] == v53[0])
    {
      v39 = v44;
      *v44 = v31;
      *(v39 + v43) = 1;
      return sub_237C65484(v39, &qword_27DEB1850, &qword_237F0EF98);
    }

    v32 = sub_237EF8F00();
    v34 = *(v33 + 8);
    v32(v53, 0);
    sub_237EF8DF0();
    if (v34)
    {
      v40 = v44;
      *v44 = v31;
      sub_237C84150();
      swift_allocError();
      *v41 = 0xD000000000000010;
      *(v41 + 8) = 0x8000000237F0ED70;
      *(v41 + 16) = 0;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v40, &qword_27DEB1850, &qword_237F0EF98);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
    inited = swift_initStackObject();
    *(inited + 16) = v45;
    *(inited + 32) = v29;
    *(inited + 40) = *v52;
    v36 = v47;
    v37 = v54;
    sub_237EF83A0();
    v38 = sub_237D166DC(inited, v51);
    swift_setDeallocating();
    result = (*(v49 + 40))(v50 + *(v49 + 72) * v38, v36, v37);
    ++v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D57840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48 = a4;
  v49 = a6;
  v44 = a5;
  v47 = a1;
  v50 = *(a7 - 8);
  v46 = a9;
  MEMORY[0x28223BE20](a1);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17C8, &qword_237F0EF30);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1870, &qword_237F0EFA8);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1878, &qword_237F0EFB0);
  v20 = v19 - 8;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v24 = *(v16 + 60);
  (*(v12 + 16))(&v18[v24], v44, v11, v21);
  (*(v12 + 32))(v14, &v18[v24], v11);
  v25 = &v23[*(v20 + 60)];
  sub_237D5D274(&qword_27DEB1880, &qword_27DEB17C8, &qword_237F0EF30);
  sub_237EF86F0();
  v26 = *(v20 + 64);
  v42 = v23;
  v41 = v26;
  v23[v26] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1888, &qword_237F0EFB8);
  v28 = 0;
  v29 = *(result + 36);
  v44 = v50 + 40;
  v43 = xmmword_237F04760;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    sub_237D5D274(&qword_27DEB1890, &qword_27DEB17C8, &qword_237F0EF30);
    sub_237EF8DE0();
    if (*&v25[v29] == v51[0])
    {
      v37 = v42;
      *v42 = v30;
      *(v37 + v41) = 1;
      return sub_237C65484(v37, &qword_27DEB1878, &qword_237F0EFB0);
    }

    v31 = sub_237EF8F00();
    v33 = *(v32 + 4);
    v31(v51, 0);
    sub_237EF8DF0();
    if (v33)
    {
      v38 = v42;
      *v42 = v30;
      sub_237C84150();
      swift_allocError();
      *v39 = 0xD000000000000010;
      *(v39 + 8) = 0x8000000237F0ED70;
      *(v39 + 16) = 0;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v38, &qword_27DEB1878, &qword_237F0EFB0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
    inited = swift_initStackObject();
    *(inited + 16) = v43;
    *(inited + 32) = v28;
    *(inited + 40) = *v49;
    v35 = v45;
    sub_237EF81E0();
    v36 = sub_237D166DC(inited, v48);
    swift_setDeallocating();
    result = (*(v50 + 40))(v47 + *(v50 + 72) * v36, v35, a7);
    ++v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D57D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48 = a4;
  v49 = a6;
  v44 = a5;
  v47 = a1;
  v50 = *(a7 - 8);
  v46 = a9;
  MEMORY[0x28223BE20](a1);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF450, &qword_237F08850);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1898, &qword_237F0EFC0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18A0, &qword_237F0EFC8);
  v20 = v19 - 8;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v24 = *(v16 + 60);
  (*(v12 + 16))(&v18[v24], v44, v11, v21);
  (*(v12 + 32))(v14, &v18[v24], v11);
  v25 = &v23[*(v20 + 60)];
  sub_237D5D274(&qword_27DEB18A8, &qword_27DEAF450, &qword_237F08850);
  sub_237EF86F0();
  v26 = *(v20 + 64);
  v42 = v23;
  v41 = v26;
  v23[v26] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18B0, &qword_237F0EFD0);
  v28 = 0;
  v29 = *(result + 36);
  v44 = v50 + 40;
  v43 = xmmword_237F04760;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    sub_237D5D274(&qword_27DEB18B8, &qword_27DEAF450, &qword_237F08850);
    sub_237EF8DE0();
    if (*&v25[v29] == v51[0])
    {
      v37 = v42;
      *v42 = v30;
      *(v37 + v41) = 1;
      return sub_237C65484(v37, &qword_27DEB18A0, &qword_237F0EFC8);
    }

    v31 = sub_237EF8F00();
    v33 = *(v32 + 8);
    v31(v51, 0);
    sub_237EF8DF0();
    if (v33)
    {
      v38 = v42;
      *v42 = v30;
      sub_237C84150();
      swift_allocError();
      *v39 = 0xD000000000000010;
      *(v39 + 8) = 0x8000000237F0ED70;
      *(v39 + 16) = 0;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v38, &qword_27DEB18A0, &qword_237F0EFC8);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
    inited = swift_initStackObject();
    *(inited + 16) = v43;
    *(inited + 32) = v28;
    *(inited + 40) = *v49;
    v35 = v45;
    sub_237EF81D0();
    v36 = sub_237D166DC(inited, v48);
    swift_setDeallocating();
    result = (*(v50 + 40))(v47 + *(v50 + 72) * v36, v35, a7);
    ++v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D581C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7)
{
  v45 = a6;
  v58 = a5;
  v42 = a4;
  v41 = a1;
  v46 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = sub_237EF90F0();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v35 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAF7F8, &qword_237F09CD0);
  v47 = sub_237EF8A60();
  v14 = sub_237EF6290();
  v15 = sub_237CE32D8();
  WitnessTable = swift_getWitnessTable();
  v54 = v13;
  v55 = v14;
  v56 = v15;
  v57 = WitnessTable;
  *&v43 = sub_237EF9380();
  MEMORY[0x28223BE20](v43);
  v54 = v13;
  v55 = v14;
  v56 = v15;
  v57 = WitnessTable;
  v39 = sub_237EF9370();
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v18 = &v35 - v17;
  v54 = 0;
  v48 = v13;
  v58 = v15;
  sub_237EFA000();
  v38 = v18;
  sub_237EF9350();
  v19 = (v46 + 32);
  v40 = v46 + 40;
  v20 = v37;
  v43 = xmmword_237F04760;
  v44 = a7;
LABEL_2:
  sub_237EF9360();
  v21 = v55;
  if (v55)
  {
    if (v55 == 1)
    {
      return (*(v36 + 8))(v38, v39);
    }

    else
    {
      v22 = v54;
      v54 = 0;
      v53 = v55;
      v23 = v47;
      v24 = swift_getWitnessTable();
      v25 = v48;
      sub_237EFA000();
      sub_237D5D260(v22, v21);
      v49 = v51;
      v50 = v52;
      v54 = v25;
      v55 = v23;
      v56 = v58;
      v57 = v24;
      sub_237EF9380();
      sub_237EF9350();
      while (1)
      {
        v54 = v48;
        v55 = v47;
        v56 = v58;
        v57 = v24;
        sub_237EF9370();
        sub_237EF9360();
        if (__swift_getEnumTagSinglePayload(v12, 1, TupleTypeMetadata2) == 1)
        {

          goto LABEL_2;
        }

        v26 = *v12;
        v27 = TupleTypeMetadata2;
        v28 = v12 + *(TupleTypeMetadata2 + 48);
        v29 = v20;
        v30 = v20;
        v31 = v44;
        (*v19)(v29, v28, v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
        result = swift_initStackObject();
        *(result + 16) = v43;
        *(result + 32) = v22;
        if (__OFADD__(*v45, v26))
        {
          break;
        }

        *(result + 40) = *v45 + v26;
        v33 = sub_237D166DC(result, v42);
        swift_setDeallocating();
        (*(v46 + 40))(v41 + *(v46 + 72) * v33, v30, v31);
        v20 = v30;
        TupleTypeMetadata2 = v27;
      }

      __break(1u);
    }
  }

  else
  {
    sub_237C84150();
    swift_allocError();
    *v34 = 0xD000000000000010;
    *(v34 + 8) = 0x8000000237F0ED70;
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0;
    swift_willThrow();
    return (*(v36 + 8))(v38, v39);
  }

  return result;
}

uint64_t sub_237D58740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v60 = a6;
  v56 = a1;
  v57 = a4;
  v51 = a7;
  v10 = *(a7 - 8);
  v54 = a9;
  MEMORY[0x28223BE20](a1);
  v52 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAB8, &qword_237F0EF20);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18C0, &qword_237F0EFD8);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18C8, &unk_237F0EFE0);
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v45 - v23;
  v25 = *(v17 + 60);
  (*(v13 + 16))(&v19[v25], a5, v12, v22);
  (*(v13 + 32))(v15, &v19[v25], v12);
  v26 = &v24[*(v21 + 60)];
  sub_237D5D274(&qword_27DEB18D0, &qword_27DEAEAB8, &qword_237F0EF20);
  sub_237EF86F0();
  v27 = *(v21 + 64);
  v46 = v24;
  v45[0] = v27;
  v24[v27] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18D8, &unk_237F17550);
  v29 = 0;
  v30 = *(result + 36);
  v55 = v10;
  v53 = v10 + 40;
  v58 = xmmword_237F04760;
  v49 = v12;
  v48 = v26;
  for (i = v30; ; v30 = i)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    sub_237D5D274(&qword_27DEAEAC0, &qword_27DEAEAB8, &qword_237F0EF20);
    sub_237EF8DE0();
    if (*&v26[v30] == v59[0])
    {
      v42 = v46;
      *v46 = v31;
      *(v42 + v45[0]) = 1;
      return sub_237C65484(v42, &qword_27DEB18C8, &unk_237F0EFE0);
    }

    v32 = sub_237EF8F00();
    v34 = *v33;
    sub_237EF8260();
    v32(v59, 0);
    result = sub_237EF8DF0();
    if (!v34)
    {
      v43 = v46;
      *v46 = v31;
      sub_237C84150();
      swift_allocError();
      *v44 = 0xD000000000000010;
      *(v44 + 8) = 0x8000000237F0ED70;
      *(v44 + 16) = 0;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v43, &qword_27DEB18C8, &unk_237F0EFE0);
    }

    v50 = v29 + 1;
    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = 0;
      while (v36 < *(v34 + 16))
      {
        v37 = *(v34 + 32 + v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
        result = swift_initStackObject();
        *(result + 16) = v58;
        *(result + 32) = v29;
        if (__OFADD__(*v60, v36))
        {
          goto LABEL_15;
        }

        v38 = result;
        *(result + 40) = *v60 + v36;
        LOBYTE(v59[0]) = v37;
        sub_237D5D1B8();
        v39 = v51;
        v40 = v52;
        sub_237EF83B0();
        v41 = sub_237D166DC(v38, v57);
        swift_setDeallocating();
        result = (*(v55 + 40))(v56 + *(v55 + 72) * v41, v40, v39);
        if (v35 == ++v36)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
      break;
    }

LABEL_10:

    v29 = v50;
    v26 = v48;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D58CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v59 = a6;
  v55 = a1;
  v56 = a4;
  v50 = a7;
  v10 = *(a7 - 8);
  v53 = a9;
  MEMORY[0x28223BE20](a1);
  v51 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAC8, &unk_237F06910);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18E0, &qword_237F0EFF0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18E8, &qword_237F0EFF8);
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v44 - v23;
  v25 = *(v17 + 60);
  (*(v13 + 16))(&v19[v25], a5, v12, v22);
  (*(v13 + 32))(v15, &v19[v25], v12);
  v26 = &v24[*(v21 + 60)];
  sub_237D5D274(&qword_27DEB18F0, &qword_27DEAEAC8, &unk_237F06910);
  sub_237EF86F0();
  v27 = *(v21 + 64);
  v45 = v24;
  v44[0] = v27;
  v24[v27] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18F8, &qword_237F0F000);
  v29 = 0;
  v30 = *(result + 36);
  v54 = v10;
  v52 = v10 + 40;
  v57 = xmmword_237F04760;
  v48 = v12;
  v47 = v26;
  for (i = v30; ; v30 = i)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    sub_237D5D274(&qword_27DEAEAD0, &qword_27DEAEAC8, &unk_237F06910);
    sub_237EF8DE0();
    if (*&v26[v30] == v58[0])
    {
      v41 = v45;
      *v45 = v31;
      *(v41 + v44[0]) = 1;
      return sub_237C65484(v41, &qword_27DEB18E8, &qword_237F0EFF8);
    }

    v32 = sub_237EF8F00();
    v34 = *v33;
    sub_237EF8260();
    v32(v58, 0);
    result = sub_237EF8DF0();
    if (!v34)
    {
      v42 = v45;
      *v45 = v31;
      sub_237C84150();
      swift_allocError();
      *v43 = 0xD000000000000010;
      *(v43 + 8) = 0x8000000237F0ED70;
      *(v43 + 16) = 0;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v42, &qword_27DEB18E8, &qword_237F0EFF8);
    }

    v49 = v29 + 1;
    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = 0;
      while (v36 < *(v34 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
        result = swift_initStackObject();
        *(result + 16) = v57;
        *(result + 32) = v29;
        if (__OFADD__(*v59, v36))
        {
          goto LABEL_15;
        }

        v37 = result;
        *(result + 40) = *v59 + v36;
        v38 = v50;
        v39 = v51;
        sub_237EF83A0();
        v40 = sub_237D166DC(v37, v56);
        swift_setDeallocating();
        result = (*(v54 + 40))(v55 + *(v54 + 72) * v40, v39, v38);
        if (v35 == ++v36)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
      break;
    }

LABEL_10:

    v29 = v49;
    v26 = v47;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D591EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a4;
  *&v54 = a5;
  v52 = a1;
  v10 = *(a7 - 8);
  v55 = a6;
  v56 = v10;
  v51 = a9;
  MEMORY[0x28223BE20](a1);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAD8, &unk_237F0EF10);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1900, &qword_237F0F008);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1908, &unk_237F0F010);
  v22 = v21 - 8;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v43 - v24;
  v26 = *(v18 + 60);
  (*(v14 + 16))(&v20[v26], v54, v13, v23);
  (*(v14 + 32))(v16, &v20[v26], v13);
  v27 = v13;
  v28 = &v25[*(v22 + 60)];
  sub_237D5D274(&qword_27DEB1910, &qword_27DEAEAD8, &unk_237F0EF10);
  sub_237EF86F0();
  v29 = *(v22 + 64);
  v45 = v25;
  v44 = v29;
  v25[v29] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1918, &unk_237F17510);
  v31 = 0;
  v32 = *(result + 36);
  v50 = v56 + 40;
  v54 = xmmword_237F04760;
  v48 = v27;
  v47 = v28;
  v46 = v32;
  while (!__OFADD__(v31, 1))
  {
    sub_237D5D274(&qword_27DEAEAE0, &qword_27DEAEAD8, &unk_237F0EF10);
    sub_237EF8DE0();
    if (*&v28[v32] == v57[0])
    {
      v40 = v45;
      *v45 = v31 + 1;
      *(v40 + v44) = 1;
      return sub_237C65484(v40, &qword_27DEB1908, &unk_237F0F010);
    }

    v49 = v31 + 1;
    v33 = sub_237EF8F00();
    v35 = *v34;
    sub_237EF8260();
    v33(v57, 0);
    result = sub_237EF8DF0();
    if (!v35)
    {
      v41 = v45;
      *v45 = v49;
      sub_237C84150();
      swift_allocError();
      *v42 = 0xD000000000000010;
      *(v42 + 8) = 0x8000000237F0ED70;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v41, &qword_27DEB1908, &unk_237F0F010);
    }

    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = 0;
      while (v37 < *(v35 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
        result = swift_initStackObject();
        *(result + 16) = v54;
        *(result + 32) = v31;
        if (__OFADD__(*v55, v37))
        {
          goto LABEL_14;
        }

        v38 = result;
        *(result + 40) = *v55 + v37;
        sub_237EF81E0();
        v39 = sub_237D166DC(v38, v53);
        swift_setDeallocating();
        result = (*(v56 + 40))(v52 + *(v56 + 72) * v39, v12, a7);
        if (v36 == ++v37)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
      break;
    }

LABEL_10:

    v31 = v49;
    v28 = v47;
    v32 = v46;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D5972C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a4;
  *&v54 = a5;
  v52 = a1;
  v10 = *(a7 - 8);
  v55 = a6;
  v56 = v10;
  v51 = a9;
  MEMORY[0x28223BE20](a1);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAE8, &qword_237F06920);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1920, &qword_237F0F020);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1928, &qword_237F0F028);
  v22 = v21 - 8;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v43 - v24;
  v26 = *(v18 + 60);
  (*(v14 + 16))(&v20[v26], v54, v13, v23);
  (*(v14 + 32))(v16, &v20[v26], v13);
  v27 = v13;
  v28 = &v25[*(v22 + 60)];
  sub_237D5D274(&qword_27DEB1930, &qword_27DEAEAE8, &qword_237F06920);
  sub_237EF86F0();
  v29 = *(v22 + 64);
  v45 = v25;
  v44 = v29;
  v25[v29] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1938, &qword_237F0F030);
  v31 = 0;
  v32 = *(result + 36);
  v50 = v56 + 40;
  v54 = xmmword_237F04760;
  v48 = v27;
  v47 = v28;
  v46 = v32;
  while (!__OFADD__(v31, 1))
  {
    sub_237D5D274(&qword_27DEAEAF0, &qword_27DEAEAE8, &qword_237F06920);
    sub_237EF8DE0();
    if (*&v28[v32] == v57[0])
    {
      v40 = v45;
      *v45 = v31 + 1;
      *(v40 + v44) = 1;
      return sub_237C65484(v40, &qword_27DEB1928, &qword_237F0F028);
    }

    v49 = v31 + 1;
    v33 = sub_237EF8F00();
    v35 = *v34;
    sub_237EF8260();
    v33(v57, 0);
    result = sub_237EF8DF0();
    if (!v35)
    {
      v41 = v45;
      *v45 = v49;
      sub_237C84150();
      swift_allocError();
      *v42 = 0xD000000000000010;
      *(v42 + 8) = 0x8000000237F0ED70;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v41, &qword_27DEB1928, &qword_237F0F028);
    }

    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = 0;
      while (v37 < *(v35 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
        result = swift_initStackObject();
        *(result + 16) = v54;
        *(result + 32) = v31;
        if (__OFADD__(*v55, v37))
        {
          goto LABEL_14;
        }

        v38 = result;
        *(result + 40) = *v55 + v37;
        sub_237EF81D0();
        v39 = sub_237D166DC(v38, v53);
        swift_setDeallocating();
        result = (*(v56 + 40))(v52 + *(v56 + 72) * v39, v12, a7);
        if (v36 == ++v37)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
      break;
    }

LABEL_10:

    v31 = v49;
    v28 = v47;
    v32 = v46;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D59C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v66 = a6;
  v79 = a5;
  v63 = a4;
  v62 = a1;
  v67 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_237EF90F0();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v47[-v13];
  v15 = sub_237EF7E90();
  v16 = sub_237EF90F0();
  v49 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v53 = &v47[-v17];
  v57 = v15;
  v68 = *(v15 - 8);
  MEMORY[0x28223BE20](v18);
  v60 = &v47[-v19];
  v54 = v20;
  v56 = swift_getTupleTypeMetadata2();
  v21 = sub_237EF90F0();
  MEMORY[0x28223BE20](v21 - 8);
  v55 = &v47[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAF7F8, &qword_237F09CD0);
  v24 = sub_237EF6290();
  v25 = sub_237CE32D8();
  WitnessTable = swift_getWitnessTable();
  v75 = v23;
  v76 = v24;
  v77 = v25;
  v78 = WitnessTable;
  v27 = WitnessTable;
  v61 = WitnessTable;
  *&v64 = sub_237EF9380();
  MEMORY[0x28223BE20](v64);
  v75 = v23;
  v76 = v24;
  v77 = v25;
  v78 = v27;
  v59 = sub_237EF9370();
  v48 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v29 = &v47[-v28];
  v75 = 0;
  v79 = v23;
  v30 = v57;
  v69 = v25;
  sub_237EFA000();
  v58 = v29;
  sub_237EF9350();
  v52 = (v49 + 32);
  v51 = (v68 + 32);
  v31 = (v67 + 32);
  v61 = v67 + 40;
  v50 = (v68 + 8);
  v64 = xmmword_237F04760;
  v65 = v10;
LABEL_2:
  v32 = v55;
  sub_237EF9360();
  v33 = v56;
  if (__swift_getEnumTagSinglePayload(v32, 1, v56) == 1)
  {
    return (*(v48 + 8))(v58, v59);
  }

  v68 = *v32;
  v34 = v32 + *(v33 + 48);
  v35 = v53;
  (*v52)(v53, v34, v54);
  if (__swift_getEnumTagSinglePayload(v35, 1, v30) == 1)
  {
    (*(v49 + 8))(v35, v54);
    sub_237C84150();
    swift_allocError();
    *v46 = 0xD000000000000010;
    *(v46 + 8) = 0x8000000237F0ED70;
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0;
    swift_willThrow();
    return (*(v48 + 8))(v58, v59);
  }

  else
  {
    (*v51)(v60, v35, v30);
    v75 = 0;
    swift_getWitnessTable();
    v74 = sub_237EF7F50();
    v36 = sub_237EF8A60();
    v37 = swift_getWitnessTable();
    v38 = v79;
    v39 = v69;
    sub_237EFA000();

    v70 = v72;
    v71 = v73;
    v75 = v38;
    v76 = v36;
    v77 = v39;
    v78 = v37;
    sub_237EF9380();
    sub_237EF9350();
    while (1)
    {
      v75 = v79;
      v76 = v36;
      v77 = v69;
      v78 = v37;
      sub_237EF9370();
      sub_237EF9360();
      if (__swift_getEnumTagSinglePayload(v14, 1, TupleTypeMetadata2) == 1)
      {

        v30 = v57;
        (*v50)(v60, v57);
        goto LABEL_2;
      }

      v40 = *v14;
      v41 = TupleTypeMetadata2;
      v42 = v14 + *(TupleTypeMetadata2 + 48);
      v43 = v65;
      (*v31)(v65, v42, a7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
      result = swift_initStackObject();
      *(result + 16) = v64;
      *(result + 32) = v68;
      if (__OFADD__(*v66, v40))
      {
        break;
      }

      *(result + 40) = *v66 + v40;
      v45 = sub_237D166DC(result, v63);
      swift_setDeallocating();
      (*(v67 + 40))(v62 + *(v67 + 72) * v45, v43, a7);
      TupleTypeMetadata2 = v41;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_237D5A4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v76 = a4;
  *&v77 = a5;
  v75 = a1;
  v10 = *(a7 - 8);
  v78 = a6;
  v79 = v10;
  v74 = a9;
  MEMORY[0x28223BE20](a1);
  v73 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50, &unk_237F068C0);
  v81 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v71 = v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA78, &qword_237F068D8);
  MEMORY[0x28223BE20](v13 - 8);
  v66 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v65 = v56 - v16;
  MEMORY[0x28223BE20](v17);
  v64 = v56 - v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1940, &qword_237F0F038);
  MEMORY[0x28223BE20](v63);
  v62 = v56 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA68, &qword_237F068D0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v56 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1948, &qword_237F0F040);
  v25 = v24 - 8;
  MEMORY[0x28223BE20](v24);
  v27 = v56 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1950, &qword_237F0F048);
  v29 = v28 - 8;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = v56 - v31;
  v33 = *(v25 + 60);
  (*(v21 + 16))(&v27[v33], v77, v20, v30);
  (*(v21 + 32))(v23, &v27[v33], v20);
  v34 = v67;
  v35 = &v32[*(v29 + 60)];
  sub_237D5D274(&qword_27DEB1958, &qword_27DEAEA68, &qword_237F068D0);
  sub_237EF86F0();
  v36 = *(v29 + 64);
  v68 = v32;
  v56[0] = v36;
  v32[v36] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1960, &qword_237F0F050);
  v38 = 0;
  v39 = *(result + 36);
  v61 = (v81 + 32);
  v72 = v79 + 40;
  v57 = (v81 + 8);
  v77 = xmmword_237F04760;
  v60 = v20;
  v59 = v35;
  v58 = v39;
  while (!__OFADD__(v38, 1))
  {
    *v68 = v38 + 1;
    sub_237D5D274(&qword_27DEAEA70, &qword_27DEAEA68, &qword_237F068D0);
    sub_237EF8DE0();
    if (*&v35[v39] == v80)
    {
      v54 = v68;
      *(v68 + v56[0]) = 1;
      return sub_237C65484(v54, &qword_27DEB1950, &qword_237F0F048);
    }

    v69 = v38 + 1;
    v81 = v38;
    v70 = sub_237EF8F00();
    v40 = v65;
    sub_237C9E294(v41, v65, &qword_27DEAEA78, &qword_237F068D8);
    v70(&v80, 0);
    sub_237EF8DF0();
    v42 = v64;
    sub_237CF9FF0(v40, v64, &qword_27DEAEA78, &qword_237F068D8);
    v43 = *(v63 + 48);
    v44 = v62;
    sub_237CF9FF0(v42, &v62[v43], &qword_27DEAEA78, &qword_237F068D8);
    v45 = &v44[v43];
    v46 = v66;
    sub_237CF9FF0(v45, v66, &qword_27DEAEA78, &qword_237F068D8);
    if (__swift_getEnumTagSinglePayload(v46, 1, v34) == 1)
    {
      sub_237C65484(v46, &qword_27DEAEA78, &qword_237F068D8);
      sub_237C84150();
      swift_allocError();
      *v55 = 0xD000000000000010;
      *(v55 + 8) = 0x8000000237F0ED70;
      *(v55 + 16) = 0;
      *(v55 + 24) = 0;
      *(v55 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v68, &qword_27DEB1950, &qword_237F0F048);
    }

    (*v61)(v71, v46, v34);
    sub_237D5D274(&qword_27DEB1968, &qword_27DEAEA50, &unk_237F068C0);
    result = sub_237EF7F50();
    v47 = result;
    v48 = *(result + 16);
    if (v48)
    {
      v49 = 0;
      while (v49 < *(v47 + 16))
      {
        v50 = *(v47 + 32 + 4 * v49);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
        result = swift_initStackObject();
        *(result + 16) = v77;
        *(result + 32) = v81;
        if (__OFADD__(*v78, v49))
        {
          goto LABEL_15;
        }

        v51 = result;
        *(result + 40) = *v78 + v49;
        LODWORD(v80) = v50;
        sub_237D5D20C();
        v52 = v73;
        sub_237EF83B0();
        v53 = sub_237D166DC(v51, v76);
        swift_setDeallocating();
        result = (*(v79 + 40))(v75 + *(v79 + 72) * v53, v52, a7);
        if (v48 == ++v49)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
      break;
    }

LABEL_10:

    v34 = v67;
    result = (*v57)(v71, v67);
    v38 = v69;
    v35 = v59;
    v39 = v58;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D5AD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v71 = a5;
  v73 = a1;
  v74 = a4;
  v10 = *(a7 - 8);
  v76 = a6;
  v77 = v10;
  v72 = a9;
  MEMORY[0x28223BE20](a1);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  *&v75 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
  MEMORY[0x28223BE20](v14 - 8);
  v64 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v54 - v17;
  MEMORY[0x28223BE20](v18);
  v63 = &v54 - v19;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1970, &qword_237F0F058);
  MEMORY[0x28223BE20](v62);
  v61 = &v54 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA80, &unk_237F068E0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v54 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1978, &qword_237F0F060);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = &v54 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1980, &qword_237F0F068);
  v30 = v29 - 8;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v54 - v32;
  v34 = *(v26 + 60);
  (*(v22 + 16))(&v28[v34], v71, v21, v31);
  (*(v22 + 32))(v24, &v28[v34], v21);
  v35 = &v33[*(v30 + 60)];
  sub_237D5D274(&qword_27DEB1988, &qword_27DEAEA80, &unk_237F068E0);
  sub_237EF86F0();
  v36 = *(v30 + 64);
  v65 = v33;
  v55 = v36;
  v33[v36] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1990, &qword_237F0F070);
  v38 = 0;
  v39 = *(result + 36);
  v60 = (v75 + 32);
  v71 = v77 + 40;
  v56 = (v75 + 8);
  v75 = xmmword_237F04760;
  v59 = v21;
  v58 = v35;
  v57 = v39;
  while (!__OFADD__(v38, 1))
  {
    *v65 = v38 + 1;
    sub_237D5D274(&qword_27DEAEA88, &qword_27DEAEA80, &unk_237F068E0);
    sub_237EF8DE0();
    if (*&v35[v39] == v78)
    {
      v52 = v65;
      *(v65 + v55) = 1;
      return sub_237C65484(v52, &qword_27DEB1980, &qword_237F0F068);
    }

    v66 = v38 + 1;
    v67 = sub_237EF8F00();
    sub_237C9E294(v40, v70, &qword_27DEAD600, &unk_237F049C0);
    v67(&v78, 0);
    sub_237EF8DF0();
    v41 = v63;
    sub_237CF9FF0(v70, v63, &qword_27DEAD600, &unk_237F049C0);
    v42 = *(v62 + 48);
    v43 = v61;
    sub_237CF9FF0(v41, &v61[v42], &qword_27DEAD600, &unk_237F049C0);
    v44 = &v43[v42];
    v45 = v64;
    sub_237CF9FF0(v44, v64, &qword_27DEAD600, &unk_237F049C0);
    v46 = v69;
    if (__swift_getEnumTagSinglePayload(v45, 1, v69) == 1)
    {
      sub_237C65484(v45, &qword_27DEAD600, &unk_237F049C0);
      sub_237C84150();
      swift_allocError();
      *v53 = 0xD000000000000010;
      *(v53 + 8) = 0x8000000237F0ED70;
      *(v53 + 16) = 0;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v65, &qword_27DEB1980, &qword_237F0F068);
    }

    (*v60)(v68, v45, v46);
    sub_237D5D274(&qword_27DEAD2F8, &qword_27DEAD6A0, &qword_237F036B0);
    result = sub_237EF7F50();
    v47 = result;
    v48 = *(result + 16);
    if (v48)
    {
      v49 = 0;
      while (v49 < *(v47 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
        result = swift_initStackObject();
        *(result + 16) = v75;
        *(result + 32) = v38;
        if (__OFADD__(*v76, v49))
        {
          goto LABEL_14;
        }

        v50 = result;
        *(result + 40) = *v76 + v49;
        sub_237EF81E0();
        v51 = sub_237D166DC(v50, v74);
        swift_setDeallocating();
        result = (*(v77 + 40))(v73 + *(v77 + 72) * v51, v12, a7);
        if (v48 == ++v49)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
      break;
    }

LABEL_10:

    result = (*v56)(v68, v69);
    v38 = v66;
    v35 = v58;
    v39 = v57;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D5B580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v71 = a5;
  v73 = a1;
  v74 = a4;
  v10 = *(a7 - 8);
  v76 = a6;
  v77 = v10;
  v72 = a9;
  MEMORY[0x28223BE20](a1);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  *&v75 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA0, &unk_237F07330);
  MEMORY[0x28223BE20](v14 - 8);
  v64 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v54 - v17;
  MEMORY[0x28223BE20](v18);
  v63 = &v54 - v19;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1998, &qword_237F0F078);
  MEMORY[0x28223BE20](v62);
  v61 = &v54 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA90, &unk_237F068F0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v54 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19A0, &qword_237F0F080);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = &v54 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19A8, &qword_237F0F088);
  v30 = v29 - 8;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v54 - v32;
  v34 = *(v26 + 60);
  (*(v22 + 16))(&v28[v34], v71, v21, v31);
  (*(v22 + 32))(v24, &v28[v34], v21);
  v35 = &v33[*(v30 + 60)];
  sub_237D5D274(&qword_27DEB19B0, &qword_27DEAEA90, &unk_237F068F0);
  sub_237EF86F0();
  v36 = *(v30 + 64);
  v65 = v33;
  v55 = v36;
  v33[v36] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19B8, &qword_237F0F090);
  v38 = 0;
  v39 = *(result + 36);
  v60 = (v75 + 32);
  v71 = v77 + 40;
  v56 = (v75 + 8);
  v75 = xmmword_237F04760;
  v59 = v21;
  v58 = v35;
  v57 = v39;
  while (!__OFADD__(v38, 1))
  {
    *v65 = v38 + 1;
    sub_237D5D274(&qword_27DEAEA98, &qword_27DEAEA90, &unk_237F068F0);
    sub_237EF8DE0();
    if (*&v35[v39] == v78)
    {
      v52 = v65;
      *(v65 + v55) = 1;
      return sub_237C65484(v52, &qword_27DEB19A8, &qword_237F0F088);
    }

    v66 = v38 + 1;
    v67 = sub_237EF8F00();
    sub_237C9E294(v40, v70, &qword_27DEAEAA0, &unk_237F07330);
    v67(&v78, 0);
    sub_237EF8DF0();
    v41 = v63;
    sub_237CF9FF0(v70, v63, &qword_27DEAEAA0, &unk_237F07330);
    v42 = *(v62 + 48);
    v43 = v61;
    sub_237CF9FF0(v41, &v61[v42], &qword_27DEAEAA0, &unk_237F07330);
    v44 = &v43[v42];
    v45 = v64;
    sub_237CF9FF0(v44, v64, &qword_27DEAEAA0, &unk_237F07330);
    v46 = v69;
    if (__swift_getEnumTagSinglePayload(v45, 1, v69) == 1)
    {
      sub_237C65484(v45, &qword_27DEAEAA0, &unk_237F07330);
      sub_237C84150();
      swift_allocError();
      *v53 = 0xD000000000000010;
      *(v53 + 8) = 0x8000000237F0ED70;
      *(v53 + 16) = 0;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v65, &qword_27DEB19A8, &qword_237F0F088);
    }

    (*v60)(v68, v45, v46);
    sub_237D5D274(qword_280C8CD78, &qword_27DEAEA60, &unk_237F07350);
    result = sub_237EF7F50();
    v47 = result;
    v48 = *(result + 16);
    if (v48)
    {
      v49 = 0;
      while (v49 < *(v47 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
        result = swift_initStackObject();
        *(result + 16) = v75;
        *(result + 32) = v38;
        if (__OFADD__(*v76, v49))
        {
          goto LABEL_14;
        }

        v50 = result;
        *(result + 40) = *v76 + v49;
        sub_237EF81D0();
        v51 = sub_237D166DC(v50, v74);
        swift_setDeallocating();
        result = (*(v77 + 40))(v73 + *(v77 + 72) * v51, v12, a7);
        if (v48 == ++v49)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
      break;
    }

LABEL_10:

    result = (*v56)(v68, v69);
    v38 = v66;
    v35 = v58;
    v39 = v57;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D5BDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v76 = a6;
  v88 = a5;
  v72 = a4;
  v71 = a1;
  v77 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v75 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = sub_237EF90F0();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v58 - v11);
  v64 = sub_237EF7E90();
  v78 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA8, &unk_237F06900);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19C0, &qword_237F0F098);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19C8, &unk_237F0F0A0);
  v23 = v22 - 8;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v58 - v25;
  v27 = *(v19 + 60);
  (*(v15 + 16))(&v21[v27], v88, v14, v24);
  v28 = &v21[v27];
  v29 = TupleTypeMetadata2;
  (*(v15 + 32))(v17, v28, v14);
  v30 = a7;
  v31 = &v26[*(v23 + 60)];
  sub_237D5D274(&qword_27DEB19D0, &qword_27DEAEAA8, &unk_237F06900);
  v65 = v31;
  sub_237EF86F0();
  v32 = *(v23 + 64);
  v66 = v26;
  v59 = v32;
  v26[v32] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19D8, &unk_237F17500);
  v34 = 0;
  v35 = *(result + 36);
  v62 = (v78 + 8);
  v74 = (v77 + 32);
  v70 = v77 + 40;
  v73 = xmmword_237F04760;
  v69 = v14;
  v61 = v35;
LABEL_2:
  if (__OFADD__(v34, 1))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  *v66 = v34 + 1;
  sub_237D5D274(&qword_27DEAEAB0, &qword_27DEAEAA8, &unk_237F06900);
  v36 = v65;
  sub_237EF8DE0();
  if (*&v36[v35] == v84)
  {
    v56 = v66;
    *(v66 + v59) = 1;
    return sub_237C65484(v56, &qword_27DEB19C8, &unk_237F0F0A0);
  }

  v68 = v34 + 1;
  v78 = v34;
  v37 = sub_237EF8F00();
  v39 = *v38;
  v40 = *v38;
  v37(&v84, 0);
  sub_237EF8DF0();
  if (v39)
  {
    v84 = 0;
    v41 = v40;
    v42 = v64;
    swift_getWitnessTable();
    v43 = v63;
    v67 = v41;
    sub_237EF7F20();
    v44 = sub_237EF7F50();
    (*v62)(v43, v42);
    v83 = v44;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8, &qword_237F09CD0);
    v46 = sub_237EF8A60();
    v47 = sub_237CE32D8();
    WitnessTable = swift_getWitnessTable();
    sub_237EFA000();

    v79 = v81;
    v80 = v82;
    v88 = v45;
    v84 = v45;
    v85 = v46;
    v49 = v46;
    v86 = v47;
    v87 = WitnessTable;
    v50 = WitnessTable;
    sub_237EF9380();
    sub_237EF9350();
    while (1)
    {
      v84 = v88;
      v85 = v49;
      v86 = v47;
      v87 = v50;
      sub_237EF9370();
      sub_237EF9360();
      if (__swift_getEnumTagSinglePayload(v12, 1, v29) == 1)
      {

        v34 = v68;
        v35 = v61;
        goto LABEL_2;
      }

      v51 = *v12;
      v52 = v29;
      v53 = v12 + *(v29 + 48);
      v54 = v75;
      (*v74)(v75, v53, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
      result = swift_initStackObject();
      *(result + 16) = v73;
      *(result + 32) = v78;
      if (__OFADD__(*v76, v51))
      {
        break;
      }

      *(result + 40) = *v76 + v51;
      v55 = sub_237D166DC(result, v72);
      swift_setDeallocating();
      (*(v77 + 40))(v71 + *(v77 + 72) * v55, v54, v30);
      v29 = v52;
    }

    __break(1u);
    goto LABEL_14;
  }

  sub_237C84150();
  swift_allocError();
  *v57 = 0xD000000000000010;
  *(v57 + 8) = 0x8000000237F0ED70;
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  *(v57 + 32) = 0;
  swift_willThrow();
  return sub_237C65484(v66, &qword_27DEB19C8, &unk_237F0F0A0);
}

uint64_t sub_237D5C5D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65536E6D756C6F63 && a2 == 0xEF6E6F697463656CLL)
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

uint64_t sub_237D5C6A4(uint64_t a1)
{
  sub_237EFA120();
  sub_237C55258();
  return sub_237EFA170();
}

uint64_t sub_237D5C6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D5C5D4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237D5C75C@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_31();
  *a1 = result & 1;
  return result;
}

uint64_t sub_237D5C794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D5C7E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237D5C83C()
{
  ColumnAggregator.applied(to:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ColumnAggregator.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000022, 0x8000000237EFE410);
  sub_237EF9670();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

void ColumnAggregator<>.encode(to:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  type metadata accessor for ColumnAggregator.CodingKeys(255, v3[2], v3[3], v3[4]);
  OUTLINED_FUNCTION_22_19();
  WitnessTable = swift_getWitnessTable();
  v4 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v12 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &WitnessTable - v7;
  v9 = *v0;
  v10 = *(v0 + 8);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237D520D4(v9, v10);
  sub_237EFA1B0();
  v13 = v9;
  v14 = v10;
  sub_237D5CCC4();
  sub_237EF9A70();
  sub_237D52128(v13, v14);
  (*(v12 + 8))(v8, v4);
  OUTLINED_FUNCTION_12_6();
}

void ColumnAggregator<>.init(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v16 = v3;
  type metadata accessor for ColumnAggregator.CodingKeys(255, v4, v5, v6);
  OUTLINED_FUNCTION_22_19();
  swift_getWitnessTable();
  v7 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237EFA190();
  if (!v0)
  {
    sub_237D5CD18();
    sub_237EF9970();
    (*(v9 + 8))(v12, v7);
    v13 = v15;
    *v16 = v14;
    *(v16 + 8) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_12_6();
}

unint64_t sub_237D5CCC4()
{
  result = qword_27DEB16A0;
  if (!qword_27DEB16A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB16A0);
  }

  return result;
}

unint64_t sub_237D5CD18()
{
  result = qword_27DEB16A8[0];
  if (!qword_27DEB16A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB16A8);
  }

  return result;
}

uint64_t sub_237D5CD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_237D5CDC0(_BYTE *result, int a2, int a3)
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

void sub_237D5CEDC(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_237D5D1B8()
{
  result = qword_27DEB1810;
  if (!qword_27DEB1810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB1810);
  }

  return result;
}

unint64_t sub_237D5D20C()
{
  result = qword_27DEB1840;
  if (!qword_27DEB1840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB1840);
  }

  return result;
}

uint64_t sub_237D5D260(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_237D5D274(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_9_11();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_6_34(uint64_t a1@<X8>)
{
  v2 = *(v1 - 136);
  *(a1 - 48) = *(v1 - 608);
  *(a1 - 40) = v2;
}

uint64_t OUTLINED_FUNCTION_10_32()
{

  return sub_237D14EC8();
}

uint64_t OUTLINED_FUNCTION_25_16()
{

  return sub_237EF62E0();
}

uint64_t OUTLINED_FUNCTION_35_8(uint64_t a1)
{

  return swift_dynamicCastMetatype();
}

uint64_t OUTLINED_FUNCTION_39_8()
{

  return sub_237EF8F00();
}

uint64_t OUTLINED_FUNCTION_45_5()
{

  return sub_237EF62E0();
}

unint64_t OUTLINED_FUNCTION_50_7()
{

  return sub_237D4A59C();
}

uint64_t OUTLINED_FUNCTION_54_4(uint64_t a1, uint64_t *a2)
{

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_55_5(unint64_t *a1)
{

  return sub_237D5D274(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_56_7()
{
}

uint64_t OUTLINED_FUNCTION_57_6(unint64_t *a1)
{

  return sub_237D5D274(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_58_4()
{

  return sub_237EF8DF0();
}

uint64_t OUTLINED_FUNCTION_59_5()
{

  return sub_237D14EC8();
}

uint64_t OUTLINED_FUNCTION_70_3()
{

  return sub_237EF62E0();
}

uint64_t TemporalFeature.init(id:feature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 32);
  *a4 = *a1;
  *(a4 + 8) = v8;
  *(a4 + 16) = *(a1 + 16);
  *(a4 + 32) = v9;
  v10 = type metadata accessor for TemporalFeature(0, a3, a3, a5);
  v11 = *(*(a3 - 8) + 32);
  v12 = a4 + *(v10 + 28);

  return v11(v12, a2, a3);
}

uint64_t TemporalFeature.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  return sub_237EF8260();
}

__n128 TemporalFeature.id.setter(__int128 *a1)
{
  v4 = a1[1];
  v5 = *a1;
  v2 = *(a1 + 4);

  result = v4;
  *v1 = v5;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_237D5D840(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65727574616566 && a2 == 0xE700000000000000)
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

uint64_t sub_237D5D900(char a1)
{
  if (a1)
  {
    return 0x65727574616566;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_237D5D93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D5D840(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D5D968(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D5D9BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t static TemporalFeature<A>.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[2];
  v7 = a1[3];
  v6 = a1[4];
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = a2[4];
  v13 = *a1 == *a2 && a1[1] == v9;
  if (!v13 && (sub_237EF9D40() & 1) == 0)
  {
    return 0;
  }

  v14 = v5 == v11 && v7 == v10;
  if (!v14 || v6 != v12)
  {
    return 0;
  }

  type metadata accessor for TemporalFeature(0, a3, v8, v9);
  return sub_237EF8520() & 1;
}

uint64_t TemporalFeature<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  sub_237EF8610();
  MEMORY[0x2383E2210](v5);
  MEMORY[0x2383E2210](v6);
  MEMORY[0x2383E2210](v7);
  return sub_237EF83E0();
}

uint64_t TemporalFeature<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_237EFA120();
  TemporalFeature<A>.hash(into:)(v5, a1, a2);
  return sub_237EFA170();
}

uint64_t sub_237D5DBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_237EFA120();
  TemporalFeature<A>.hash(into:)(v6, a2, v4);
  return sub_237EFA170();
}

uint64_t TemporalFeature<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v5 = v4;
  v17[1] = a2;
  v18 = *(a2 + 16);
  type metadata accessor for TemporalFeature.CodingKeys(255, v18, a3, a4);
  OUTLINED_FUNCTION_0_46();
  swift_getWitnessTable();
  v7 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v17 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  v13 = v5[1];
  v14 = v5[4];
  v21 = *v5;
  v22 = v13;
  v23 = *(v5 + 1);
  v24 = v14;
  v25 = 0;
  sub_237D5DE0C();
  sub_237EF8260();
  v15 = v20;
  sub_237EF9A70();

  if (!v15)
  {
    LOBYTE(v21) = 1;
    sub_237EF9A70();
  }

  return (*(v9 + 8))(v12, v7);
}

unint64_t sub_237D5DE0C()
{
  result = qword_27DEB19E0;
  if (!qword_27DEB19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB19E0);
  }

  return result;
}

uint64_t TemporalFeature<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v34 = a4;
  OUTLINED_FUNCTION_1_1();
  v33 = v6;
  MEMORY[0x28223BE20](v7);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TemporalFeature.CodingKeys(255, v9, v10, v11);
  OUTLINED_FUNCTION_0_46();
  swift_getWitnessTable();
  v38 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v35 = v12;
  MEMORY[0x28223BE20](v13);
  v16 = type metadata accessor for TemporalFeature(0, a2, v14, v15);
  OUTLINED_FUNCTION_1_1();
  v32 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v39;
  sub_237EFA190();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v20;
  v39 = v16;
  v23 = v36;
  v44 = 0;
  sub_237D5E1D0();
  sub_237EF9970();
  v24 = v41;
  v25 = v43;
  *v22 = v40;
  *(v22 + 1) = v24;
  *(v22 + 1) = v42;
  *(v22 + 4) = v25;
  LOBYTE(v40) = 1;
  sub_237EF9970();
  v26 = OUTLINED_FUNCTION_2_52();
  v27(v26);
  v28 = v39;
  (*(v33 + 32))(&v22[*(v39 + 28)], v23, a2);
  v29 = v32;
  (*(v32 + 16))(v34, v22, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v29 + 8))(v22, v28);
}

unint64_t sub_237D5E1D0()
{
  result = qword_27DEB19E8;
  if (!qword_27DEB19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB19E8);
  }

  return result;
}