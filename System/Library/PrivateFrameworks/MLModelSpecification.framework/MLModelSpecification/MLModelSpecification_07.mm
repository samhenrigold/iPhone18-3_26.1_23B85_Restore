uint64_t sub_257501C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_25751B040(&qword_27F87BC90, type metadata accessor for Proto_PipelineRegressor, &unk_25774FC14);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257501CB8(uint64_t a1)
{
  v2 = sub_25751B040(&qword_27F87BA48, type metadata accessor for Proto_PipelineRegressor, &unk_25774FEA4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257501D80(uint64_t a1, uint64_t a2)
{
  sub_25751B040(&qword_27F87BA48, type metadata accessor for Proto_PipelineRegressor, &unk_25774FEA4);

  return sub_257743424();
}

uint64_t sub_257501E2C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8908);
  __swift_project_value_buffer(v0, qword_27F8E8908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shortDescription";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257502034()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      v3 = OUTLINED_FUNCTION_6_8();
      sub_2575020AC(v3, v4, v5, v6);
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743394();
    }
  }

  return result;
}

uint64_t sub_2575020AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_FeatureDescription(0);
  type metadata accessor for Proto_FeatureType(0);
  sub_25751B040(&qword_281537E88, type metadata accessor for Proto_FeatureType, &unk_25774A308);
  return sub_2577433D4();
}

uint64_t sub_257502160()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v0 = v1) == 0))
  {
    OUTLINED_FUNCTION_1_6();
    if (!v4 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v0 = v1) == 0))
    {
      OUTLINED_FUNCTION_280();
      OUTLINED_FUNCTION_11_6();
      result = sub_257502200(v5, v6, v7, v8);
      if (!v0)
      {
        type metadata accessor for Proto_FeatureDescription(0);
        return OUTLINED_FUNCTION_7_5();
      }
    }
  }

  return result;
}

uint64_t sub_257502200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_FeatureType(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for Proto_FeatureDescription(0);
  sub_257487308(a1 + *(v9 + 28));
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F879C38, &qword_257744550);
  }

  sub_25751BA6C();
  sub_25751B040(&qword_281537E88, type metadata accessor for Proto_FeatureType, &unk_25774A308);
  sub_257743574();
  return sub_25751BA18();
}

void _s20MLModelSpecification18FeatureDescriptionV2eeoiySbAC_ACtFZ_0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_267();
  v2 = type metadata accessor for Proto_FeatureType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_75_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C40, &qword_257750390);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = *v1 == *v0 && v1[1] == v0[1];
  if (!v10 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_23;
  }

  v11 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v11 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_23;
  }

  v21 = type metadata accessor for Proto_FeatureDescription(0);
  v12 = *(v21 + 28);
  v13 = *(v6 + 48);
  OUTLINED_FUNCTION_62_0(v1 + v12);
  OUTLINED_FUNCTION_62_0(v0 + v12);
  OUTLINED_FUNCTION_155(v9, 1, v2);
  if (v10)
  {
    OUTLINED_FUNCTION_155(&v9[v13], 1, v2);
    if (v10)
    {
      sub_2574695E4(v9, &qword_27F879C38, &qword_257744550);
LABEL_22:
      sub_2577431B4();
      OUTLINED_FUNCTION_0_23();
      v19 = sub_25751B040(v17, v18, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_4_2(v19);
      goto LABEL_23;
    }

LABEL_19:
    sub_2574695E4(v9, &qword_27F879C40, &qword_257750390);
    goto LABEL_23;
  }

  sub_257487308(v9);
  OUTLINED_FUNCTION_155(&v9[v13], 1, v2);
  if (v14)
  {
    sub_25751BA18();
    goto LABEL_19;
  }

  sub_25751BA6C();
  sub_2574C9990();
  v16 = v15;
  sub_25751BA18();
  sub_25751BA18();
  sub_2574695E4(v9, &qword_27F879C38, &qword_257744550);
  if (v16)
  {
    goto LABEL_22;
  }

LABEL_23:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_25750270C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25751B040(&qword_27F87BC70, type metadata accessor for Proto_FeatureDescription, &unk_25774FB24);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575027AC(uint64_t a1)
{
  v2 = sub_25751B040(&qword_2815379E0, type metadata accessor for Proto_FeatureDescription, &unk_257750084);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257502874(uint64_t a1, uint64_t a2)
{
  sub_25751B040(&qword_2815379E0, type metadata accessor for Proto_FeatureDescription, &unk_257750084);

  return sub_257743424();
}

uint64_t sub_2575028F4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8920);
  __swift_project_value_buffer(v0, qword_27F8E8920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "shortDescription";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "versionString";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "author";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "license";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 100;
  *v16 = "userDefined";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257502B78()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_10_7();
        sub_257743394();
        break;
      default:
        if (result == 100)
        {
          v3 = OUTLINED_FUNCTION_6_8();
          sub_257502C1C(v3, v4, v5, v6);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_257502C94()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_6();
  if (!v3 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v0 = v1) == 0))
  {
    OUTLINED_FUNCTION_1_6();
    if (!v5 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v0 = v1) == 0))
    {
      OUTLINED_FUNCTION_1_6();
      if (!v6 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v0 = v1) == 0))
      {
        OUTLINED_FUNCTION_1_6();
        if (!v7 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v0 = v1) == 0))
        {
          if (!*(*(v2 + 64) + 16) || (sub_257743184(), result = sub_257743444(), !v0))
          {
            type metadata accessor for Proto_Metadata(0);
            return OUTLINED_FUNCTION_7_5();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_257502DAC(uint64_t a1)
{
  OUTLINED_FUNCTION_26_2(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  v6 = v2[2] == v1[2] && v2[3] == v1[3];
  if (!v6 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  v7 = v2[4] == v1[4] && v2[5] == v1[5];
  if (!v7 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  v8 = v2[6] == v1[6] && v2[7] == v1[7];
  if (!v8 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  sub_2574769AC(v2[8], v1[8]);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_Metadata(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_23();
  v12 = sub_25751B040(v10, v11, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v12) & 1;
}

uint64_t sub_257502EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25751B040(&qword_27F87BCA0, type metadata accessor for Proto_Metadata, &unk_25774F9FC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257502F9C(uint64_t a1)
{
  v2 = sub_25751B040(&qword_281537F48, type metadata accessor for Proto_Metadata, &unk_25774FA34);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257503064(uint64_t a1, uint64_t a2)
{
  sub_25751B040(&qword_281537F48, type metadata accessor for Proto_Metadata, &unk_25774FA34);

  return sub_257743424();
}

uint64_t sub_2575030E4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8938);
  __swift_project_value_buffer(v0, qword_27F8E8938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257745520;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "output";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "state";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "predictedFeatureName";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "predictedProbabilitiesName";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575033A4()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
      case 5:
        OUTLINED_FUNCTION_10_7();
        sub_257743394();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_257503458(v3, v4, v5, v6);
        break;
      case 3:
        OUTLINED_FUNCTION_6_8();
        sub_257503F7C();
        break;
      case 6:
        OUTLINED_FUNCTION_6_8();
        sub_257503FF0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_257503458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_FeatureDescription(0);
  sub_25751B040(&qword_2815379E0, type metadata accessor for Proto_FeatureDescription, &unk_257750084);
  return sub_2577433C4();
}

void sub_2575034F8()
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), !v0))
  {
    if (!*(v1[2] + 16) || (OUTLINED_FUNCTION_46_2(), OUTLINED_FUNCTION_1_14(), sub_25751B040(v3, v4, &unk_257750084), v5 = OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_15_3(v5), !v0))
    {
      if (!*(v1[3] + 16) || (OUTLINED_FUNCTION_46_2(), OUTLINED_FUNCTION_1_14(), sub_25751B040(v6, v7, &unk_257750084), v8 = OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_15_3(v8), !v0))
      {
        OUTLINED_FUNCTION_1_6();
        if (!v9 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), !v0))
        {
          OUTLINED_FUNCTION_1_6();
          if (!v10 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), !v0))
          {
            if (!*(v1[4] + 16) || (OUTLINED_FUNCTION_46_2(), OUTLINED_FUNCTION_1_14(), sub_25751B040(v11, v12, &unk_257750084), v13 = OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_15_3(v13), !v0))
            {
              type metadata accessor for Proto_FunctionDescription(0);
              OUTLINED_FUNCTION_7_5();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t _s20MLModelSpecification19FunctionDescriptionV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  OUTLINED_FUNCTION_26_2(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  sub_25747EBD4();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_25747EBD4();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_25747EBD4();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v2[5] == v1[5] && v2[6] == v1[6];
  if (!v9 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  v10 = v2[7] == v1[7] && v2[8] == v1[8];
  if (!v10 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_FunctionDescription(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_23();
  v13 = sub_25751B040(v11, v12, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v13) & 1;
}

uint64_t sub_257503790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_257503804(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2575038CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25751B040(&qword_27F87BC98, type metadata accessor for Proto_FunctionDescription, &unk_25774F90C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25750396C(uint64_t a1)
{
  v2 = sub_25751B040(&qword_27F87BA18, type metadata accessor for Proto_FunctionDescription, &unk_25774FE2C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257503A34(uint64_t a1, uint64_t a2)
{
  sub_25751B040(&qword_27F87BA18, type metadata accessor for Proto_FunctionDescription, &unk_25774FE2C);

  return sub_257743424();
}

uint64_t sub_257503AB4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8950);
  __swift_project_value_buffer(v0, qword_27F8E8950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_257748730;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 20;
  *v4 = "functions";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 21;
  *v8 = "defaultFunctionName";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 100;
  *v10 = "metadata";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 1;
  *v12 = "input";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 10;
  *v14 = "output";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 13;
  *v16 = "state";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "predictedFeatureName";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 12;
  *v20 = "predictedProbabilitiesName";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 50;
  *v22 = "trainingInput";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_257503E30()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 10:
        OUTLINED_FUNCTION_6_8();
        sub_257503FF0();
        break;
      case 11:
      case 12:
      case 21:
        OUTLINED_FUNCTION_10_7();
        sub_257743394();
        break;
      case 13:
        v10 = OUTLINED_FUNCTION_6_8();
        sub_257504064(v10, v11, v12, v13);
        break;
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
        continue;
      case 20:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_257504104(v3, v4, v5, v6, v7, &qword_27F87BA18, v8, v9);
        break;
      default:
        switch(result)
        {
          case 100:
            v18 = OUTLINED_FUNCTION_6_8();
            sub_257504240(v18, v19, v20, v21);
            break;
          case 50:
            v14 = OUTLINED_FUNCTION_6_8();
            sub_2575041A0(v14, v15, v16, v17);
            break;
          case 1:
            OUTLINED_FUNCTION_6_8();
            sub_257503F7C();
            break;
        }

        break;
    }
  }
}

uint64_t sub_257503F7C()
{
  v0 = OUTLINED_FUNCTION_27_5();
  type metadata accessor for Proto_FeatureDescription(v0);
  OUTLINED_FUNCTION_1_14();
  sub_25751B040(v1, v2, &unk_257750084);
  OUTLINED_FUNCTION_12_10();
  return sub_2577433C4();
}

uint64_t sub_257503FF0()
{
  v0 = OUTLINED_FUNCTION_27_5();
  type metadata accessor for Proto_FeatureDescription(v0);
  OUTLINED_FUNCTION_1_14();
  sub_25751B040(v1, v2, &unk_257750084);
  OUTLINED_FUNCTION_12_10();
  return sub_2577433C4();
}

uint64_t sub_257504064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_FeatureDescription(0);
  sub_25751B040(&qword_2815379E0, type metadata accessor for Proto_FeatureDescription, &unk_257750084);
  return sub_2577433C4();
}

uint64_t sub_257504104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  a5(0);
  sub_25751B040(a6, a7, a8);
  return sub_2577433C4();
}

uint64_t sub_2575041A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_FeatureDescription(0);
  sub_25751B040(&qword_2815379E0, type metadata accessor for Proto_FeatureDescription, &unk_257750084);
  return sub_2577433C4();
}

uint64_t sub_257504240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_ModelDescription(0);
  type metadata accessor for Proto_Metadata(0);
  sub_25751B040(&qword_281537F48, type metadata accessor for Proto_Metadata, &unk_25774FA34);
  return sub_2577433D4();
}

void sub_2575042F4()
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_2_7();
  if (!*(*(v1 + 24) + 16) || (OUTLINED_FUNCTION_46_2(), OUTLINED_FUNCTION_1_14(), sub_25751B040(v4, v5, &unk_257750084), v6 = OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_15_3(v6), (v0 = v2) == 0))
  {
    if (!*(v3[4] + 16) || (OUTLINED_FUNCTION_46_2(), OUTLINED_FUNCTION_1_14(), sub_25751B040(v7, v8, &unk_257750084), v9 = OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_15_3(v9), (v0 = v2) == 0))
    {
      OUTLINED_FUNCTION_1_6();
      if (!v10 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), (v0 = v2) == 0))
      {
        OUTLINED_FUNCTION_1_6();
        if (!v11 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), (v0 = v2) == 0))
        {
          if (!*(v3[5] + 16) || (OUTLINED_FUNCTION_46_2(), OUTLINED_FUNCTION_1_14(), sub_25751B040(v12, v13, &unk_257750084), v14 = OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_15_3(v14), (v0 = v2) == 0))
          {
            if (!*(*v3 + 16) || (type metadata accessor for Proto_FunctionDescription(0), sub_25751B040(&qword_27F87BA18, type metadata accessor for Proto_FunctionDescription, &unk_25774FE2C), v15 = OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_15_3(v15), (v0 = v2) == 0))
            {
              OUTLINED_FUNCTION_1_6();
              if (!v16 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), (v0 = v2) == 0))
              {
                if (!*(v3[10] + 16) || (OUTLINED_FUNCTION_46_2(), OUTLINED_FUNCTION_1_14(), sub_25751B040(v17, v18, &unk_257750084), v19 = OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_15_3(v19), (v0 = v2) == 0))
                {
                  OUTLINED_FUNCTION_280();
                  OUTLINED_FUNCTION_11_6();
                  sub_257504534(v20, v21, v22, v23);
                  if (!v0)
                  {
                    type metadata accessor for Proto_ModelDescription(0);
                    OUTLINED_FUNCTION_7_5();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_257504534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD0, &unk_257744360);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_Metadata(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for Proto_ModelDescription(0);
  sub_257487308(a1 + *(v9 + 52));
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F879BD0, &unk_257744360);
  }

  sub_25751BA6C();
  sub_25751B040(&qword_281537F48, type metadata accessor for Proto_Metadata, &unk_25774FA34);
  sub_257743574();
  return sub_25751BA18();
}

uint64_t sub_257504A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_257504AE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_257504BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25751B040(&qword_27F87BCA8, type metadata accessor for Proto_ModelDescription, &unk_25774F7E4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257504C50(uint64_t a1)
{
  v2 = sub_25751B040(&qword_281537B00, type metadata accessor for Proto_ModelDescription, &unk_25774F81C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257504D18(uint64_t a1, uint64_t a2)
{
  sub_25751B040(&qword_281537B00, type metadata accessor for Proto_ModelDescription, &unk_25774F81C);

  return sub_257743424();
}

uint64_t sub_257504DB8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2577435B4();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_257743FF0;
  v13 = (v12 + v11);
  v14 = v12 + v11 + v9[14];
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21870];
  v16 = sub_257743584();
  OUTLINED_FUNCTION_4();
  v18 = *(v17 + 104);
  (v18)(v14, v15, v16);
  v19 = v13 + v10 + v9[14];
  *(v13 + v10) = 2;
  *v19 = a5;
  *(v19 + 1) = 5;
  v19[16] = 2;
  v18();
  return sub_257743594();
}

uint64_t sub_257504F70()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_10_7();
      sub_2577432D4();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743394();
    }
  }

  return result;
}

void sub_257504FDC()
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), !v0))
  {
    if (sub_2576FF394(*(v1 + 16), *(v1 + 24)) || (OUTLINED_FUNCTION_3_10(), sub_2577434D4(), !v0))
    {
      type metadata accessor for Proto_SerializedModel(0);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_257505074(uint64_t a1)
{
  OUTLINED_FUNCTION_26_2(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_257743994() & 1) == 0 || (MEMORY[0x259C648D0](*(v2 + 16), *(v2 + 24), *(v1 + 16), *(v1 + 24)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_SerializedModel(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_23();
  v8 = sub_25751B040(v6, v7, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v8) & 1;
}

uint64_t sub_25750515C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25751B040(&qword_27F87BC78, type metadata accessor for Proto_SerializedModel, &unk_25774F6F4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575051FC(uint64_t a1)
{
  v2 = sub_25751B040(&qword_27F87B9F8, type metadata accessor for Proto_SerializedModel, &unk_25775000C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575052C4(uint64_t a1, uint64_t a2)
{
  sub_25751B040(&qword_27F87B9F8, type metadata accessor for Proto_SerializedModel, &unk_25775000C);

  return sub_257743424();
}

uint64_t sub_257505344()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8980);
  __swift_project_value_buffer(v0, qword_27F8E8980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_25774F430;
  v4 = v88 + v3 + v1[14];
  *(v88 + v3) = 1;
  *v4 = "specificationVersion";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v88 + v3 + v2 + v1[14];
  *(v88 + v3 + v2) = 2;
  *v8 = "description";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v88 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 10;
  *v10 = "isUpdatable";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v88 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 200;
  *v12 = "pipelineClassifier";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v7();
  v13 = (v88 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 201;
  *v14 = "pipelineRegressor";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v7();
  v15 = (v88 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 202;
  *v16 = "pipeline";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v88 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 300;
  *v18 = "glmRegressor";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v7();
  v19 = (v88 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 301;
  *v20 = "supportVectorRegressor";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v7();
  v21 = (v88 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 302;
  *v22 = "treeEnsembleRegressor";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v7();
  v23 = (v88 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 303;
  *v24 = "neuralNetworkRegressor";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v7();
  v25 = (v88 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 304;
  *v26 = "bayesianProbitRegressor";
  *(v26 + 1) = 23;
  v26[16] = 2;
  v7();
  v27 = (v88 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 400;
  *v28 = "glmClassifier";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v7();
  v29 = (v88 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 401;
  *v30 = "supportVectorClassifier";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v7();
  v31 = (v88 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 402;
  *v32 = "treeEnsembleClassifier";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v7();
  v33 = (v88 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 403;
  *v34 = "neuralNetworkClassifier";
  *(v34 + 1) = 23;
  v34[16] = 2;
  v7();
  v35 = (v88 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 404;
  *v36 = "kNearestNeighborsClassifier";
  *(v36 + 1) = 27;
  v36[16] = 2;
  v7();
  v37 = (v88 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 500;
  *v38 = "neuralNetwork";
  *(v38 + 1) = 13;
  v38[16] = 2;
  v7();
  v39 = (v88 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 501;
  *v40 = "itemSimilarityRecommender";
  *(v40 + 1) = 25;
  v40[16] = 2;
  v7();
  v41 = (v88 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 502;
  *v42 = "mlProgram";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  v43 = (v88 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 503;
  *v44 = "odieLibrary";
  *(v44 + 1) = 11;
  v44[16] = 2;
  v7();
  v45 = (v88 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 555;
  *v46 = "customModel";
  *(v46 + 1) = 11;
  v46[16] = 2;
  v7();
  v47 = (v88 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 556;
  *v48 = "linkedModel";
  *(v48 + 1) = 11;
  v48[16] = 2;
  v7();
  v49 = (v88 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 560;
  *v50 = "classConfidenceThresholding";
  *(v50 + 1) = 27;
  v50[16] = 2;
  v7();
  v51 = (v88 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 600;
  *v52 = "oneHotEncoder";
  *(v52 + 1) = 13;
  v52[16] = 2;
  v7();
  v53 = (v88 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 601;
  *v54 = "imputer";
  *(v54 + 1) = 7;
  v54[16] = 2;
  v7();
  v55 = (v88 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 602;
  *v56 = "featureVectorizer";
  *(v56 + 1) = 17;
  v56[16] = 2;
  v7();
  v57 = (v88 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 603;
  *v58 = "dictVectorizer";
  *(v58 + 1) = 14;
  v58[16] = 2;
  v7();
  v59 = (v88 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 604;
  *v60 = "scaler";
  *(v60 + 1) = 6;
  v60[16] = 2;
  v7();
  v61 = (v88 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 606;
  *v62 = "categoricalMapping";
  *(v62 + 1) = 18;
  v62[16] = 2;
  v7();
  v63 = (v88 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 607;
  *v64 = "normalizer";
  *(v64 + 1) = 10;
  v64[16] = 2;
  v7();
  v65 = (v88 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 609;
  *v66 = "arrayFeatureExtractor";
  *(v66 + 1) = 21;
  v66[16] = 2;
  v7();
  v67 = (v88 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 610;
  *v68 = "nonMaximumSuppression";
  *(v68 + 1) = 21;
  v68[16] = 2;
  v7();
  v69 = (v88 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 900;
  *v70 = "identity";
  *(v70 + 1) = 8;
  v70[16] = 2;
  v7();
  v71 = (v88 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 2000;
  *v72 = "textClassifier";
  *(v72 + 1) = 14;
  v72[16] = 2;
  v7();
  v73 = (v88 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 2001;
  *v74 = "wordTagger";
  *(v74 + 1) = 10;
  v74[16] = 2;
  v7();
  v75 = (v88 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 2002;
  *v76 = "visionFeaturePrint";
  *(v76 + 1) = 18;
  v76[16] = 2;
  v7();
  v77 = (v88 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 2003;
  *v78 = "soundAnalysisPreprocessing";
  *(v78 + 1) = 26;
  v78[16] = 2;
  v7();
  v79 = (v88 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 2004;
  *v80 = "gazetteer";
  *(v80 + 1) = 9;
  v80[16] = 2;
  v7();
  v81 = (v88 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 2005;
  *v82 = "wordEmbedding";
  *(v82 + 1) = 13;
  v82[16] = 2;
  v7();
  v83 = (v88 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 2006;
  *v84 = "audioFeaturePrint";
  *(v84 + 1) = 17;
  v84[16] = 2;
  v7();
  v85 = (v88 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 3000;
  *v86 = "serializedModel";
  *(v86 + 1) = 15;
  v86[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_257505EB0()
{
  OUTLINED_FUNCTION_64_0();
  result = sub_257505EE0();
  qword_281538018 = result;
  return result;
}

uint64_t sub_257505EE0()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p;
  v2 = type metadata accessor for Proto_ModelDescription(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable) = 0;
  v3 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  v4 = type metadata accessor for Proto_Model.OneOf_Type(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  return v0;
}

void sub_257505F58()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_75_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  *(v0 + 16) = 0;
  v7 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p;
  type metadata accessor for Proto_ModelDescription(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable;
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable) = 0;
  v13 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  type metadata accessor for Proto_Model.OneOf_Type(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_296(v2 + 16, &v26);
  v18 = *(v2 + 16);
  swift_beginAccess();
  *(v0 + 16) = v18;
  v19 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p;
  OUTLINED_FUNCTION_296(v2 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p, &v25);
  sub_257487308(v2 + v19);
  OUTLINED_FUNCTION_70_1(v0 + v7, v24);
  sub_25751BB28();
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable;
  OUTLINED_FUNCTION_296(v2 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable, v24);
  LOBYTE(v20) = *(v2 + v20);
  swift_beginAccess();
  *(v0 + v12) = v20;
  v21 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  OUTLINED_FUNCTION_296(v2 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type, &v23);
  sub_257487308(v2 + v21);

  OUTLINED_FUNCTION_70_1(v0 + v13, &v22);
  sub_25751BB28();
  swift_endAccess();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257506184()
{
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p, &qword_27F879BD8, &qword_257750240);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type, &qword_27F879BE0, &qword_257744370);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_257506240(uint64_t a1)
{
  sub_2575063A0(319, &qword_281537AE0, type metadata accessor for Proto_ModelDescription, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2575063A0(319, &qword_281538030, type metadata accessor for Proto_Model.OneOf_Type, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2575063A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25750646C(uint64_t a1)
{
  result = sub_2577431B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_23Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2577431B4();
  OUTLINED_FUNCTION_18_3();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B9B0, &qword_257770B80);
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t __swift_store_extra_inhabitant_index_24Tm()
{
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_18_3();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_55_0();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B9B0, &qword_257770B80);
    v5 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v5, v0, v0, v6);
}

void sub_2575066D8(uint64_t a1)
{
  sub_2577431B4();
  if (v1 <= 0x3F)
  {
    sub_2575063A0(319, &qword_281537F10, type metadata accessor for Proto_Pipeline, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2575067B4(uint64_t a1)
{
  sub_2575063A0(319, &qword_27F87B9B8, type metadata accessor for Proto_Model, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2575068A0();
    if (v2 <= 0x3F)
    {
      sub_2577431B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2575068A0()
{
  if (!qword_27F87A680)
  {
    v0 = sub_257743774();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87A680);
    }
  }
}

void sub_257506938(uint64_t a1)
{
  sub_2575063A0(319, &qword_27F87B9D0, type metadata accessor for Proto_FeatureDescription, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_257506A28(uint64_t a1)
{
  result = type metadata accessor for Proto_PipelineClassifier(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Proto_PipelineRegressor(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Proto_Pipeline(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Proto_GLMRegressor(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Proto_SupportVectorRegressor(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Proto_TreeEnsembleRegressor(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Proto_NeuralNetworkRegressor(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for Proto_BayesianProbitRegressor(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for Proto_GLMClassifier(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for Proto_SupportVectorClassifier(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for Proto_TreeEnsembleClassifier(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for Proto_NeuralNetworkClassifier(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for Proto_KNearestNeighborsClassifier(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for Proto_NeuralNetwork(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for Proto_ItemSimilarityRecommender(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for Proto_MILSpec_Program(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for Proto_Odie_Library(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for Proto_CustomModel(319);
                                    if (v19 <= 0x3F)
                                    {
                                      result = type metadata accessor for Proto_LinkedModel(319);
                                      if (v20 <= 0x3F)
                                      {
                                        result = type metadata accessor for Proto_ClassConfidenceThresholding(319);
                                        if (v21 <= 0x3F)
                                        {
                                          result = type metadata accessor for Proto_OneHotEncoder(319);
                                          if (v22 <= 0x3F)
                                          {
                                            result = type metadata accessor for Proto_Imputer(319);
                                            if (v23 <= 0x3F)
                                            {
                                              result = type metadata accessor for Proto_FeatureVectorizer(319);
                                              if (v24 <= 0x3F)
                                              {
                                                result = type metadata accessor for Proto_DictVectorizer(319);
                                                if (v25 <= 0x3F)
                                                {
                                                  result = type metadata accessor for Proto_Scaler(319);
                                                  if (v26 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for Proto_CategoricalMapping(319);
                                                    if (v27 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for Proto_Normalizer(319);
                                                      if (v28 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for Proto_ArrayFeatureExtractor(319);
                                                        if (v29 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for Proto_NonMaximumSuppression(319);
                                                          if (v30 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for Proto_Identity(319);
                                                            if (v31 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for Proto_CoreMLModels_TextClassifier(319);
                                                              if (v32 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for Proto_CoreMLModels_WordTagger(319);
                                                                if (v33 <= 0x3F)
                                                                {
                                                                  result = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint(319);
                                                                  if (v34 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing(319);
                                                                    if (v35 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for Proto_CoreMLModels_Gazetteer(319);
                                                                      if (v36 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for Proto_CoreMLModels_WordEmbedding(319);
                                                                        if (v37 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint(319);
                                                                          if (v38 <= 0x3F)
                                                                          {
                                                                            result = type metadata accessor for Proto_SerializedModel(319);
                                                                            if (v39 <= 0x3F)
                                                                            {
                                                                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                              return 0;
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

  return result;
}

void sub_257506D94(uint64_t a1)
{
  sub_2577431B4();
  if (v1 <= 0x3F)
  {
    sub_2575063A0(319, &qword_281537E68, type metadata accessor for Proto_FeatureType, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_257506E80(uint64_t a1)
{
  sub_2575063A0(319, &qword_27F87B9D8, type metadata accessor for Proto_FunctionDescription, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2575063A0(319, &qword_27F87B9D0, type metadata accessor for Proto_FeatureDescription, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2577431B4();
      if (v3 <= 0x3F)
      {
        sub_2575063A0(319, &qword_281537F28, type metadata accessor for Proto_Metadata, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_257507020(uint64_t a1)
{
  sub_2575070B8();
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2575070B8()
{
  if (!qword_27F87B9E0)
  {
    v0 = sub_2577435E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87B9E0);
    }
  }
}

uint64_t sub_25750713C(uint64_t a1)
{
  result = sub_2577431B4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Proto_Model._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2575071C0()
{
  OUTLINED_FUNCTION_188_0();
  v1 = *(type metadata accessor for Proto_Model(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Proto_Model._StorageClass(0);
    swift_allocObject();
    OUTLINED_FUNCTION_71_0();
    sub_257505F58();
    *(v0 + v1) = v2;
  }

  OUTLINED_FUNCTION_11_6();
  sub_257507254(v3, v4, v5, v6);
  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_257507254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_257743234();
    if (v4 || (v12 & 1) != 0)
    {
      return result;
    }

    if (!v10 & v9)
    {
      switch(result)
      {
        case 3000:
          sub_257514348(a1, a2, a3, a4);
          break;
        case 2:
          sub_2575078CC(a2, a1, a3, a4);
          break;
        case 10:
          sub_2575079A8(a2, a1, a3, a4);
          break;
        case 200:
          sub_257507A34(a1, a2, a3, a4);
          break;
        case 201:
          sub_257507F88(a1, a2, a3, a4);
          break;
        case 202:
          sub_2575084F8(a1, a2, a3, a4);
          break;
        case 555:
          sub_25750D688(a1, a2, a3, a4);
          break;
        case 556:
          sub_25750DBF8(a1, a2, a3, a4);
          break;
        case 560:
          sub_25750E168(a1, a2, a3, a4);
          break;
        case 900:
          sub_2575117C8(a1, a2, a3, a4);
          break;
        case 1:
          sub_257507848(a2, a1, a3, a4);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 600:
          sub_25750E6D8(a1, a2, a3, a4);
          break;
        case 601:
          sub_25750EC48(a1, a2, a3, a4);
          break;
        case 602:
          sub_25750F1B8(a1, a2, a3, a4);
          break;
        case 603:
          sub_25750F728(a1, a2, a3, a4);
          break;
        case 604:
          sub_25750FC98(a1, a2, a3, a4);
          break;
        case 605:
        case 608:
          continue;
        case 606:
          sub_257510208(a1, a2, a3, a4);
          break;
        case 607:
          sub_257510778(a1, a2, a3, a4);
          break;
        case 609:
          sub_257510CE8(a1, a2, a3, a4);
          break;
        case 610:
          sub_257511258(a1, a2, a3, a4);
          break;
        default:
          JUMPOUT(0);
      }
    }
  }
}

uint64_t sub_257507848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_257743304();
  return swift_endAccess();
}

uint64_t sub_2575078CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_ModelDescription(0);
  sub_25751B040(&qword_281537B00, type metadata accessor for Proto_ModelDescription, &unk_25774F81C);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575079A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_257743274();
  return swift_endAccess();
}

uint64_t sub_257507A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v36 = a3;
  v35 = a2;
  v5 = type metadata accessor for Proto_PipelineClassifier(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v31 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB50, &qword_257750248);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - v20;
  __swift_storeEnumTagSinglePayload(&v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v30 = a1;
  v28 = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_25751BA18();
    }

    else
    {
      sub_2574695E4(v21, &qword_27F87BB50, &qword_257750248);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }
  }

  sub_25751B040(&qword_27F87BA60, type metadata accessor for Proto_PipelineClassifier, &unk_25774FF1C);
  v24 = v33;
  sub_2577433D4();
  if (v24)
  {
    v25 = v21;
    return sub_2574695E4(v25, &qword_27F87BB50, &qword_257750248);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BB50, &qword_257750248);
    v25 = v19;
    return sub_2574695E4(v25, &qword_27F87BB50, &qword_257750248);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v21, &qword_27F87BB50, &qword_257750248);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v14);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257507F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_PipelineRegressor(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB58, &qword_257750250);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v21, &qword_27F87BB58, &qword_257750250);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BA48, type metadata accessor for Proto_PipelineRegressor, &unk_25774FEA4);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BB58, &qword_257750250);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BB58, &qword_257750250);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BB58, &qword_257750250);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BB58, &qword_257750250);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575084F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_Pipeline(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B9B0, &qword_257770B80);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2574695E4(v21, &qword_27F87B9B0, &qword_257770B80);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BA78, type metadata accessor for Proto_Pipeline, &unk_25774FF94);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87B9B0, &qword_257770B80);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87B9B0, &qword_257770B80);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87B9B0, &qword_257770B80);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87B9B0, &qword_257770B80);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257508A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_GLMRegressor(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB60, &qword_257750258);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574695E4(v21, &qword_27F87BB60, &qword_257750258);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87AE28, type metadata accessor for Proto_GLMRegressor, &unk_25774B3A0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BB60, &qword_257750258);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BB60, &qword_257750258);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BB60, &qword_257750258);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BB60, &qword_257750258);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257508FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SupportVectorRegressor(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB68, &qword_257750260);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2574695E4(v21, &qword_27F87BB68, &qword_257750260);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BAD0, type metadata accessor for Proto_SupportVectorRegressor, &unk_257769F50);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BB68, &qword_257750260);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BB68, &qword_257750260);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BB68, &qword_257750260);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BB68, &qword_257750260);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257509548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_TreeEnsembleRegressor(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB70, &qword_257750268);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2574695E4(v21, &qword_27F87BB70, &qword_257750268);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BAD8, type metadata accessor for Proto_TreeEnsembleRegressor, &unk_25776AD98);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BB70, &qword_257750268);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BB70, &qword_257750268);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BB70, &qword_257750268);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BB70, &qword_257750268);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257509AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_NeuralNetworkRegressor(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB78, &qword_257750270);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2574695E4(v21, &qword_27F87BB78, &qword_257750270);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BAE0, type metadata accessor for Proto_NeuralNetworkRegressor, &unk_257762B40);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BB78, &qword_257750270);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BB78, &qword_257750270);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BB78, &qword_257750270);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BB78, &qword_257750270);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750A028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_BayesianProbitRegressor(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB80, &qword_257750278);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_2574695E4(v21, &qword_27F87BB80, &qword_257750278);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87A490, type metadata accessor for Proto_BayesianProbitRegressor, &unk_257746910);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BB80, &qword_257750278);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BB80, &qword_257750278);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BB80, &qword_257750278);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BB80, &qword_257750278);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750A598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_GLMClassifier(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB88, &qword_257750280);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_2574695E4(v21, &qword_27F87BB88, &qword_257750280);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_281537D78, type metadata accessor for Proto_GLMClassifier, &unk_25774AF50);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BB88, &qword_257750280);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BB88, &qword_257750280);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BB88, &qword_257750280);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BB88, &qword_257750280);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750AB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SupportVectorClassifier(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB90, &qword_257750288);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_2574695E4(v21, &qword_27F87BB90, &qword_257750288);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BAE8, type metadata accessor for Proto_SupportVectorClassifier, &unk_257769FC8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BB90, &qword_257750288);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BB90, &qword_257750288);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BB90, &qword_257750288);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BB90, &qword_257750288);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750B078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_TreeEnsembleClassifier(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB98, &qword_257750290);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_2574695E4(v21, &qword_27F87BB98, &qword_257750290);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BAF0, type metadata accessor for Proto_TreeEnsembleClassifier, &unk_25776AD20);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BB98, &qword_257750290);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BB98, &qword_257750290);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BB98, &qword_257750290);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BB98, &qword_257750290);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750B5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_NeuralNetworkClassifier(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBA0, &qword_257750298);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_2574695E4(v21, &qword_27F87BBA0, &qword_257750298);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BAF8, type metadata accessor for Proto_NeuralNetworkClassifier, &unk_257763FE0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BBA0, &qword_257750298);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BBA0, &qword_257750298);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BBA0, &qword_257750298);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BBA0, &qword_257750298);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750BB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBA8, &unk_2577502A0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_2574695E4(v21, &qword_27F87BBA8, &unk_2577502A0);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB00, type metadata accessor for Proto_KNearestNeighborsClassifier, &unk_257750D14);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BBA8, &unk_2577502A0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BBA8, &unk_2577502A0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BBA8, &unk_2577502A0);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BBA8, &unk_2577502A0);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750C0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_NeuralNetwork(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A328, &unk_257752BB0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_2574695E4(v21, &qword_27F87A328, &unk_257752BB0);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87A0A8, type metadata accessor for Proto_NeuralNetwork, &unk_257766128);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87A328, &unk_257752BB0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87A328, &unk_257752BB0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87A328, &unk_257752BB0);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87A328, &unk_257752BB0);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750C638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ItemSimilarityRecommender(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBB0, &qword_2577502B0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_2574695E4(v21, &qword_27F87BBB0, &qword_2577502B0);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87AF58, type metadata accessor for Proto_ItemSimilarityRecommender, &unk_25774BC60);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BBB0, &qword_2577502B0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BBB0, &qword_2577502B0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BBB0, &qword_2577502B0);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BBB0, &qword_2577502B0);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750CBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_MILSpec_Program(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBB8, &qword_2577502B8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_2574695E4(v21, &qword_27F87BBB8, &qword_2577502B8);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87B6B8, type metadata accessor for Proto_MILSpec_Program, &unk_25774F198);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BBB8, &qword_2577502B8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BBB8, &qword_2577502B8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BBB8, &qword_2577502B8);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BBB8, &qword_2577502B8);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750D118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_Odie_Library(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBC0, &qword_2577502C0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_2574695E4(v21, &qword_27F87BBC0, &qword_2577502C0);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB08, type metadata accessor for Proto_Odie_Library, &unk_257767CE4);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BBC0, &qword_2577502C0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BBC0, &qword_2577502C0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BBC0, &qword_2577502C0);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BBC0, &qword_2577502C0);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750D688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_CustomModel(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBC8, &qword_2577502C8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_2574695E4(v21, &qword_27F87BBC8, &qword_2577502C8);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87A5D8, type metadata accessor for Proto_CustomModel, &unk_257747234);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BBC8, &qword_2577502C8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BBC8, &qword_2577502C8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BBC8, &qword_2577502C8);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BBC8, &qword_2577502C8);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750DBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_LinkedModel(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBD0, &qword_2577502D0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_2574695E4(v21, &qword_27F87BBD0, &qword_2577502D0);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87AFE0, type metadata accessor for Proto_LinkedModel, &unk_25774BFC8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BBD0, &qword_2577502D0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BBD0, &qword_2577502D0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BBD0, &qword_2577502D0);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BBD0, &qword_2577502D0);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750E168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ClassConfidenceThresholding(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBD8, &qword_2577502D8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_2574695E4(v21, &qword_27F87BBD8, &qword_2577502D8);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87A568, type metadata accessor for Proto_ClassConfidenceThresholding, &unk_257746DD4);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BBD8, &qword_2577502D8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BBD8, &qword_2577502D8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BBD8, &qword_2577502D8);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BBD8, &qword_2577502D8);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750E6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_OneHotEncoder(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBE0, &qword_2577502E0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_2574695E4(v21, &qword_27F87BBE0, &qword_2577502E0);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB10, type metadata accessor for Proto_OneHotEncoder, &unk_257768020);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BBE0, &qword_2577502E0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BBE0, &qword_2577502E0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BBE0, &qword_2577502E0);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BBE0, &qword_2577502E0);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750EC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_Imputer(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBE8, &qword_2577502E8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_2574695E4(v21, &qword_27F87BBE8, &qword_2577502E8);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87AEB0, type metadata accessor for Proto_Imputer, &unk_25774B7F4);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BBE8, &qword_2577502E8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BBE8, &qword_2577502E8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BBE8, &qword_2577502E8);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BBE8, &qword_2577502E8);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750F1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_FeatureVectorizer(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBF0, &qword_2577502F0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_2574695E4(v21, &qword_27F87BBF0, &qword_2577502F0);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87AC98, type metadata accessor for Proto_FeatureVectorizer, &unk_25774A6C0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BBF0, &qword_2577502F0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BBF0, &qword_2577502F0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BBF0, &qword_2577502F0);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BBF0, &qword_2577502F0);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750F728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_DictVectorizer(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBF8, &qword_2577502F8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_2574695E4(v21, &qword_27F87BBF8, &qword_2577502F8);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87A850, type metadata accessor for Proto_DictVectorizer, &unk_257748648);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BBF8, &qword_2577502F8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BBF8, &qword_2577502F8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BBF8, &qword_2577502F8);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BBF8, &qword_2577502F8);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750FC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_Scaler(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC00, &qword_257750300);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_2574695E4(v21, &qword_27F87BC00, &qword_257750300);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB18, type metadata accessor for Proto_Scaler, &unk_257768874);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BC00, &qword_257750300);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BC00, &qword_257750300);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BC00, &qword_257750300);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BC00, &qword_257750300);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257510208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_CategoricalMapping(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC08, &qword_257750308);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_2574695E4(v21, &qword_27F87BC08, &qword_257750308);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87A510, type metadata accessor for Proto_CategoricalMapping, &unk_257746C64);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BC08, &qword_257750308);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BC08, &qword_257750308);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BC08, &qword_257750308);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BC08, &qword_257750308);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257510778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_Normalizer(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC10, &qword_257750310);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_2574695E4(v21, &qword_27F87BC10, &qword_257750310);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87A130, type metadata accessor for Proto_Normalizer, &unk_257767B60);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BC10, &qword_257750310);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BC10, &qword_257750310);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BC10, &qword_257750310);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BC10, &qword_257750310);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257510CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ArrayFeatureExtractor(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC18, &qword_257750318);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_2574695E4(v21, &qword_27F87BC18, &qword_257750318);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87A358, type metadata accessor for Proto_ArrayFeatureExtractor, &unk_257745EBC);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BC18, &qword_257750318);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BC18, &qword_257750318);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BC18, &qword_257750318);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BC18, &qword_257750318);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257511258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_NonMaximumSuppression(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC20, &qword_257750320);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_2574695E4(v21, &qword_27F87BC20, &qword_257750320);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB20, type metadata accessor for Proto_NonMaximumSuppression, &unk_257767854);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BC20, &qword_257750320);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BC20, &qword_257750320);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BC20, &qword_257750320);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BC20, &qword_257750320);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575117C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_Identity(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC28, &qword_257750328);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_2574695E4(v21, &qword_27F87BC28, &qword_257750328);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87AE70, type metadata accessor for Proto_Identity, &unk_25774B524);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BC28, &qword_257750328);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BC28, &qword_257750328);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BC28, &qword_257750328);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BC28, &qword_257750328);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257511D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC30, &qword_257750330);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_2574695E4(v21, &qword_27F87BC30, &qword_257750330);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB28, type metadata accessor for Proto_CoreMLModels_TextClassifier, &unk_25776A32C);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BC30, &qword_257750330);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BC30, &qword_257750330);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BC30, &qword_257750330);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BC30, &qword_257750330);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575122A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC38, &qword_257750338);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_2574695E4(v21, &qword_27F87BC38, &qword_257750338);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB30, type metadata accessor for Proto_CoreMLModels_WordTagger, &unk_25776B924);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BC38, &qword_257750338);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BC38, &qword_257750338);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BC38, &qword_257750338);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BC38, &qword_257750338);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257512818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC40, &qword_257750340);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_2574695E4(v21, &qword_27F87BC40, &qword_257750340);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB38, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint, &unk_25776B520);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BC40, &qword_257750340);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BC40, &qword_257750340);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BC40, &qword_257750340);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BC40, &qword_257750340);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257512D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC48, &qword_257750348);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_2574695E4(v21, &qword_27F87BC48, &qword_257750348);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB40, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing, &unk_257768B9C);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BC48, &qword_257750348);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BC48, &qword_257750348);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BC48, &qword_257750348);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BC48, &qword_257750348);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575132F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC50, &qword_257750350);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_2574695E4(v21, &qword_27F87BC50, &qword_257750350);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87ACE8, type metadata accessor for Proto_CoreMLModels_Gazetteer, &unk_25774A91C);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BC50, &qword_257750350);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BC50, &qword_257750350);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BC50, &qword_257750350);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BC50, &qword_257750350);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257513868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_WordEmbedding(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC58, &qword_257750358);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_2574695E4(v21, &qword_27F87BC58, &qword_257750358);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB48, type metadata accessor for Proto_CoreMLModels_WordEmbedding, &unk_25776B754);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BC58, &qword_257750358);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BC58, &qword_257750358);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BC58, &qword_257750358);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BC58, &qword_257750358);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257513DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC60, &qword_257750360);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_2574695E4(v21, &qword_27F87BC60, &qword_257750360);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87A3D0, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint, &unk_257746350);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BC60, &qword_257750360);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BC60, &qword_257750360);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BC60, &qword_257750360);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BC60, &qword_257750360);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257514348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SerializedModel(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC68, &qword_257750368);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v28[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_2574695E4(v21, &qword_27F87BC68, &qword_257750368);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87B9F8, type metadata accessor for Proto_SerializedModel, &unk_25775000C);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87BC68, &qword_257750368);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87BC68, &qword_257750368);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87BC68, &qword_257750368);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87BC68, &qword_257750368);
  v27 = v29;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575148B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_10_7();
  result = sub_25751491C(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_222();
    return sub_257743194();
  }

  return result;
}

uint64_t sub_25751491C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_2577434F4(), !v4))
  {
    result = sub_257514F30(a1, a2, a3, a4);
    if (!v4)
    {
      v13 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable;
      swift_beginAccess();
      if (*(a1 + v13) == 1)
      {
        sub_2577434B4();
      }

      v14 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
      swift_beginAccess();
      sub_257487308(a1 + v14);
      v15 = type metadata accessor for Proto_Model.OneOf_Type(0);
      result = __swift_getEnumTagSinglePayload(v11, 1, v15);
      if (result != 1)
      {
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            sub_257515354(a1, a2, a3, a4);
            break;
          case 2u:
            sub_257515588(a1, a2, a3, a4);
            break;
          case 3u:
            sub_2575157BC(a1, a2, a3, a4);
            break;
          case 4u:
            sub_2575159F0(a1, a2, a3, a4);
            break;
          case 5u:
            sub_257515C24(a1, a2, a3, a4);
            break;
          case 6u:
            sub_257515E58(a1, a2, a3, a4);
            break;
          case 7u:
            sub_25751608C(a1, a2, a3, a4);
            break;
          case 8u:
            sub_2575162C0(a1, a2, a3, a4);
            break;
          case 9u:
            sub_2575164F4(a1, a2, a3, a4);
            break;
          case 0xAu:
            sub_257516728(a1, a2, a3, a4);
            break;
          case 0xBu:
            sub_25751695C(a1, a2, a3, a4);
            break;
          case 0xCu:
            sub_257516B90(a1, a2, a3, a4);
            break;
          case 0xDu:
            sub_257516DC4(a1, a2, a3, a4);
            break;
          case 0xEu:
            sub_257516FF8(a1, a2, a3, a4);
            break;
          case 0xFu:
            sub_25751722C(a1, a2, a3, a4);
            break;
          case 0x10u:
            sub_257517460(a1, a2, a3, a4);
            break;
          case 0x11u:
            sub_257517694(a1, a2, a3, a4);
            break;
          case 0x12u:
            sub_2575178C8(a1, a2, a3, a4);
            break;
          case 0x13u:
            sub_257517AFC(a1, a2, a3, a4);
            break;
          case 0x14u:
            sub_257517D30(a1, a2, a3, a4);
            break;
          case 0x15u:
            sub_257517F64(a1, a2, a3, a4);
            break;
          case 0x16u:
            sub_257518198(a1, a2, a3, a4);
            break;
          case 0x17u:
            sub_2575183CC(a1, a2, a3, a4);
            break;
          case 0x18u:
            sub_257518600(a1, a2, a3, a4);
            break;
          case 0x19u:
            sub_257518834(a1, a2, a3, a4);
            break;
          case 0x1Au:
            sub_257518A68(a1, a2, a3, a4);
            break;
          case 0x1Bu:
            sub_257518C9C(a1, a2, a3, a4);
            break;
          case 0x1Cu:
            sub_257518ED0(a1, a2, a3, a4);
            break;
          case 0x1Du:
            sub_257519104(a1, a2, a3, a4);
            break;
          case 0x1Eu:
            sub_257519338(a1, a2, a3, a4);
            break;
          case 0x1Fu:
            sub_25751956C(a1, a2, a3, a4);
            break;
          case 0x20u:
            sub_2575197A0(a1, a2, a3, a4);
            break;
          case 0x21u:
            sub_2575199D4(a1, a2, a3, a4);
            break;
          case 0x22u:
            sub_257519C08(a1, a2, a3, a4);
            break;
          case 0x23u:
            sub_257519E3C(a1, a2, a3, a4);
            break;
          case 0x24u:
            sub_25751A070(a1, a2, a3, a4);
            break;
          case 0x25u:
            sub_25751A2A4(a1, a2, a3, a4);
            break;
          default:
            sub_257515124(a1, a2, a3, a4);
            break;
        }

        return sub_25751BA18();
      }
    }
  }

  return result;
}

uint64_t sub_257514F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_ModelDescription(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F879BD8, &qword_257750240);
  }

  sub_25751BA6C();
  sub_25751B040(&qword_281537B00, type metadata accessor for Proto_ModelDescription, &unk_25774F81C);
  sub_257743574();
  return sub_25751BA18();
}

uint64_t sub_257515124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_PipelineClassifier(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BA60, type metadata accessor for Proto_PipelineClassifier, &unk_25774FF1C);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257515354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_PipelineRegressor(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BA48, type metadata accessor for Proto_PipelineRegressor, &unk_25774FEA4);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257515588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Pipeline(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BA78, type metadata accessor for Proto_Pipeline, &unk_25774FF94);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575157BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GLMRegressor(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87AE28, type metadata accessor for Proto_GLMRegressor, &unk_25774B3A0);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575159F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SupportVectorRegressor(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BAD0, type metadata accessor for Proto_SupportVectorRegressor, &unk_257769F50);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257515C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_TreeEnsembleRegressor(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BAD8, type metadata accessor for Proto_TreeEnsembleRegressor, &unk_25776AD98);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257515E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_NeuralNetworkRegressor(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BAE0, type metadata accessor for Proto_NeuralNetworkRegressor, &unk_257762B40);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_25751608C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BayesianProbitRegressor(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87A490, type metadata accessor for Proto_BayesianProbitRegressor, &unk_257746910);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575162C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GLMClassifier(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_281537D78, type metadata accessor for Proto_GLMClassifier, &unk_25774AF50);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575164F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SupportVectorClassifier(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BAE8, type metadata accessor for Proto_SupportVectorClassifier, &unk_257769FC8);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257516728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_TreeEnsembleClassifier(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BAF0, type metadata accessor for Proto_TreeEnsembleClassifier, &unk_25776AD20);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_25751695C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_NeuralNetworkClassifier(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BAF8, type metadata accessor for Proto_NeuralNetworkClassifier, &unk_257763FE0);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257516B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB00, type metadata accessor for Proto_KNearestNeighborsClassifier, &unk_257750D14);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257516DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_NeuralNetwork(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87A0A8, type metadata accessor for Proto_NeuralNetwork, &unk_257766128);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257516FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ItemSimilarityRecommender(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87AF58, type metadata accessor for Proto_ItemSimilarityRecommender, &unk_25774BC60);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_25751722C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_MILSpec_Program(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87B6B8, type metadata accessor for Proto_MILSpec_Program, &unk_25774F198);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257517460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Odie_Library(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB08, type metadata accessor for Proto_Odie_Library, &unk_257767CE4);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257517694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CustomModel(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87A5D8, type metadata accessor for Proto_CustomModel, &unk_257747234);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575178C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LinkedModel(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87AFE0, type metadata accessor for Proto_LinkedModel, &unk_25774BFC8);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257517AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ClassConfidenceThresholding(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87A568, type metadata accessor for Proto_ClassConfidenceThresholding, &unk_257746DD4);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257517D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_OneHotEncoder(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB10, type metadata accessor for Proto_OneHotEncoder, &unk_257768020);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257517F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Imputer(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87AEB0, type metadata accessor for Proto_Imputer, &unk_25774B7F4);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257518198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_FeatureVectorizer(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87AC98, type metadata accessor for Proto_FeatureVectorizer, &unk_25774A6C0);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575183CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_DictVectorizer(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87A850, type metadata accessor for Proto_DictVectorizer, &unk_257748648);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257518600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Scaler(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB18, type metadata accessor for Proto_Scaler, &unk_257768874);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257518834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CategoricalMapping(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87A510, type metadata accessor for Proto_CategoricalMapping, &unk_257746C64);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257518A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Normalizer(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87A130, type metadata accessor for Proto_Normalizer, &unk_257767B60);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257518C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ArrayFeatureExtractor(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87A358, type metadata accessor for Proto_ArrayFeatureExtractor, &unk_257745EBC);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257518ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_NonMaximumSuppression(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB20, type metadata accessor for Proto_NonMaximumSuppression, &unk_257767854);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257519104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Identity(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87AE70, type metadata accessor for Proto_Identity, &unk_25774B524);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257519338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB28, type metadata accessor for Proto_CoreMLModels_TextClassifier, &unk_25776A32C);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_25751956C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB30, type metadata accessor for Proto_CoreMLModels_WordTagger, &unk_25776B924);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575197A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB38, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint, &unk_25776B520);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575199D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB40, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing, &unk_257768B9C);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257519C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87ACE8, type metadata accessor for Proto_CoreMLModels_Gazetteer, &unk_25774A91C);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257519E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CoreMLModels_WordEmbedding(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB48, type metadata accessor for Proto_CoreMLModels_WordEmbedding, &unk_25776B754);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_25751A070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87A3D0, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint, &unk_257746350);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_25751A2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SerializedModel(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87B9F8, type metadata accessor for Proto_SerializedModel, &unk_25775000C);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

void sub_25751A5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v27 = OUTLINED_FUNCTION_6_13(v26, &a13);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BCB8, &qword_257750378);
  OUTLINED_FUNCTION_6_13(v31, &a11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  v34 = v73 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v36 = OUTLINED_FUNCTION_13(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v37);
  v39 = OUTLINED_FUNCTION_38_0(v73 - v38);
  v40 = type metadata accessor for Proto_ModelDescription(v39);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_12_1();
  v79 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BCC0, &qword_257750380);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v44);
  v46 = v73 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  v48 = OUTLINED_FUNCTION_13(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v49);
  v51 = v73 - v50;
  OUTLINED_FUNCTION_296(v25 + 16, &v87);
  v52 = *(v25 + 16);
  OUTLINED_FUNCTION_296(v23 + 16, &v86);
  if (v52 == *(v23 + 16))
  {
    v73[1] = v30;
    v74 = v34;
    v78 = v23;
    v53 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p;
    OUTLINED_FUNCTION_296(v25 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p, &v85);
    v54 = v25 + v53;
    v55 = v78;
    sub_257487308(v54);
    v56 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p;
    OUTLINED_FUNCTION_296(v55 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p, &v84);
    v57 = *(v43 + 48);
    sub_257487308(v51);
    sub_257487308(v55 + v56);
    OUTLINED_FUNCTION_155(v46, 1, v40);
    if (v59)
    {

      sub_2574695E4(v51, &qword_27F879BD8, &qword_257750240);
      OUTLINED_FUNCTION_155(&v46[v57], 1, v40);
      v58 = v25;
      if (v59)
      {
        sub_2574695E4(v46, &qword_27F879BD8, &qword_257750240);
        goto LABEL_12;
      }
    }

    else
    {
      sub_257487308(v46);
      OUTLINED_FUNCTION_155(&v46[v57], 1, v40);
      if (!v59)
      {
        OUTLINED_FUNCTION_38_1();
        sub_25751BA6C();

        v60 = OUTLINED_FUNCTION_280();
        v61 = sub_257504714(v60);
        sub_25751BA18();
        sub_2574695E4(v51, &qword_27F879BD8, &qword_257750240);
        sub_25751BA18();
        v58 = v25;
        sub_2574695E4(v46, &qword_27F879BD8, &qword_257750240);
        if (v61)
        {
LABEL_12:
          v62 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable;
          OUTLINED_FUNCTION_296(v58 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable, &v83);
          LODWORD(v62) = *(v58 + v62);
          v63 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable;
          OUTLINED_FUNCTION_296(v55 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable, &v82);
          if (v62 == *(v55 + v63))
          {
            v64 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
            OUTLINED_FUNCTION_296(v58 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type, &v81);
            v65 = v58 + v64;
            v66 = v78;
            v67 = v76;
            sub_257487308(v65);
            v68 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
            OUTLINED_FUNCTION_296(v66 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type, &v80);
            v69 = *(v75 + 48);
            v70 = v74;
            sub_257487308(v67);
            sub_257487308(v66 + v68);
            v71 = v77;
            OUTLINED_FUNCTION_155(v70, 1, v77);
            if (v59)
            {

              sub_2574695E4(v67, &qword_27F879BE0, &qword_257744370);
              OUTLINED_FUNCTION_155(v70 + v69, 1, v71);
              if (v59)
              {
                sub_2574695E4(v70, &qword_27F879BE0, &qword_257744370);
                goto LABEL_14;
              }
            }

            else
            {
              sub_257487308(v70);
              OUTLINED_FUNCTION_155(v70 + v69, 1, v71);
              if (!v72)
              {
                sub_25751BA6C();
                sub_2574FE8FC();

                sub_25751BA18();
                sub_2574695E4(v67, &qword_27F879BE0, &qword_257744370);
                sub_25751BA18();
                sub_2574695E4(v70, &qword_27F879BE0, &qword_257744370);
                goto LABEL_14;
              }

              sub_2574695E4(v67, &qword_27F879BE0, &qword_257744370);
              OUTLINED_FUNCTION_11_9();
            }

            sub_2574695E4(v70, &qword_27F87BCB8, &qword_257750378);
            goto LABEL_14;
          }
        }

LABEL_13:

        goto LABEL_14;
      }

      sub_2574695E4(v51, &qword_27F879BD8, &qword_257750240);
      OUTLINED_FUNCTION_66_0();
      sub_25751BA18();
    }

    sub_2574695E4(v46, &qword_27F87BCC0, &qword_257750380);
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_25751AC90(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_257743A14();
  a1(0);
  sub_25751B040(a2, a3, a4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25751AD3C()
{
  OUTLINED_FUNCTION_376();
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t sub_25751ADC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25751B040(&qword_27F87BAC8, type metadata accessor for Proto_Model, &unk_25774F644);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25751AE68(uint64_t a1)
{
  v2 = sub_25751B040(&qword_281537FF0, type metadata accessor for Proto_Model, &unk_2577500FC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25751AF30(uint64_t a1, uint64_t a2)
{
  sub_25751B040(&qword_281537FF0, type metadata accessor for Proto_Model, &unk_2577500FC);

  return sub_257743424();
}

uint64_t sub_25751B040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25751BA18()
{
  v1 = OUTLINED_FUNCTION_376();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_25751BA6C()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

uint64_t sub_25751BAC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Model.OneOf_Type(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25751BB28()
{
  OUTLINED_FUNCTION_267();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_205();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_11_9()
{

  return sub_25751BA18();
}

uint64_t OUTLINED_FUNCTION_15_3(uint64_t a1)
{

  return sub_257743564();
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1)
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_21_6()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_42_2()
{

  return sub_25751BA18();
}

uint64_t OUTLINED_FUNCTION_43_2()
{

  return sub_25751BA18();
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return sub_25751BA6C();
}

uint64_t OUTLINED_FUNCTION_61_1()
{

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_62_0(uint64_t a1)
{

  return sub_257487308(a1);
}

uint64_t OUTLINED_FUNCTION_63_0()
{

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_64_0()
{
  type metadata accessor for Proto_Model._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_70_1(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_25751BF14(uint64_t a1)
{
  result = sub_2577431B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25751C0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25751C138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_SquaredEuclideanDistance(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_2574538D0);
}

uint64_t sub_25751C190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Proto_SquaredEuclideanDistance(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_2574538E0);
}

uint64_t sub_25751C218(uint64_t a1)
{
  v2 = type metadata accessor for Proto_SquaredEuclideanDistance(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v4 = sub_2577431B4();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
      return 0;
    }
  }

  return v2;
}

void sub_25751C364(uint64_t a1)
{
  sub_25751C558(319, &qword_281537590, type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_25751C508();
    if (v2 <= 0x3F)
    {
      sub_25751C558(319, &qword_281537578, type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2577431B4();
        if (v4 <= 0x3F)
        {
          sub_25751C558(319, &qword_2815378A0, type metadata accessor for Proto_NearestNeighborsIndex, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_25751C558(319, &qword_281537CA0, type metadata accessor for Proto_Int64Parameter, MEMORY[0x277D83D88]);
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

void sub_25751C508()
{
  if (!qword_27F87BD38)
  {
    v0 = sub_2577437B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87BD38);
    }
  }
}

void sub_25751C558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25751C620(uint64_t a1)
{
  sub_25751C558(319, &qword_27F87BD50, type metadata accessor for Proto_FloatVector, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_25751C558(319, &qword_2815378D0, type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_25751C558(319, &qword_2815378B8, type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2577431B4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25751C774@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  v4 = a1 + *(v3 + 20);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = -1;
  v5 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
  OUTLINED_FUNCTION_22_5(v5);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v6 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  OUTLINED_FUNCTION_22_5(v6);
  v7 = *(v3 + 36);
  v8 = type metadata accessor for Proto_Int64Parameter(0);

  return __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v8);
}

uint64_t sub_25751C830@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  type metadata accessor for Proto_NearestNeighborsIndex(0);
  v1 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(0);
  OUTLINED_FUNCTION_22_5(v1);
  v2 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction(0);
  OUTLINED_FUNCTION_22_5(v2);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void sub_25751C8A0()
{
  OUTLINED_FUNCTION_31();
  v29[1] = type metadata accessor for Proto_Int64Vector(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_17_3();
  v29[0] = type metadata accessor for Proto_StringVector(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = (v6 - v5);
  type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = (v29 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BEA0, &qword_257751090);
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_40_2();
  sub_257524434();
  sub_257524434();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_18_6();
    sub_257524434();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2575243E0();
      if (sub_257487374())
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_0_24();
        v19 = sub_257523BF0(v17, v18, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_185_0(v19);
      }

      OUTLINED_FUNCTION_4_9();
      sub_257524388(v1, v20);
      OUTLINED_FUNCTION_4_9();
      v22 = v11;
LABEL_14:
      sub_257524388(v22, v21);
      OUTLINED_FUNCTION_5_15();
      sub_257524388(v0, v28);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_4_9();
    v24 = v11;
  }

  else
  {
    OUTLINED_FUNCTION_18_6();
    sub_257524434();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2575243E0();
      if (sub_257479C78(*v14, *v7))
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_0_24();
        sub_257523BF0(v25, v26, MEMORY[0x277D216D0]);
        sub_257743644();
      }

      OUTLINED_FUNCTION_3_14();
      sub_257524388(v7, v27);
      OUTLINED_FUNCTION_3_14();
      v22 = v14;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_3_14();
    v24 = v14;
  }

  sub_257524388(v24, v23);
  sub_2574695E4(v0, &qword_27F87BEA0, &qword_257751090);
LABEL_15:
  OUTLINED_FUNCTION_35();
}

void sub_25751CC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v24 = type metadata accessor for Proto_InverseDistanceWeighting(0);
  v25 = OUTLINED_FUNCTION_13(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v26 = OUTLINED_FUNCTION_17_3();
  v27 = type metadata accessor for Proto_UniformWeighting(v26);
  v28 = OUTLINED_FUNCTION_13(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  v31 = v30 - v29;
  type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_11();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BE98, &qword_257751088);
  OUTLINED_FUNCTION_13(v39);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_40_2();
  sub_257524434();
  sub_257524434();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_16_2();
    sub_257524434();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2575243E0();
      sub_2577431B4();
      OUTLINED_FUNCTION_0_24();
      sub_257523BF0(v41, v42, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_360();
      sub_257743644();
      sub_257524388(v21, type metadata accessor for Proto_InverseDistanceWeighting);
      v43 = OUTLINED_FUNCTION_222();
LABEL_9:
      sub_257524388(v43, v44);
      OUTLINED_FUNCTION_10_12();
      sub_257524388(v20, v49);
      goto LABEL_10;
    }

    v45 = type metadata accessor for Proto_InverseDistanceWeighting;
    v46 = v35;
  }

  else
  {
    OUTLINED_FUNCTION_16_2();
    sub_257524434();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2575243E0();
      sub_2577431B4();
      OUTLINED_FUNCTION_0_24();
      sub_257523BF0(v47, v48, MEMORY[0x277D216D0]);
      sub_257743644();
      sub_257524388(v31, type metadata accessor for Proto_UniformWeighting);
      v43 = v38;
      v44 = type metadata accessor for Proto_UniformWeighting;
      goto LABEL_9;
    }

    v45 = type metadata accessor for Proto_UniformWeighting;
    v46 = v38;
  }

  sub_257524388(v46, v45);
  sub_2574695E4(v20, &qword_27F87BE98, &qword_257751088);
LABEL_10:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_25751CF74@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Proto_SingleKdTreeIndex(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void sub_25751CFAC()
{
  OUTLINED_FUNCTION_31();
  v29[1] = type metadata accessor for Proto_SingleKdTreeIndex(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = type metadata accessor for Proto_LinearIndex(v3);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BEB0, &qword_2577510A0);
  OUTLINED_FUNCTION_13(v16);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_40_2();
  sub_257524434();
  sub_257524434();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_15_4();
    sub_257524434();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2575243E0();
      sub_2577431B4();
      OUTLINED_FUNCTION_0_24();
      sub_257523BF0(v24, v25, MEMORY[0x277D216D0]);
      sub_257743644();
      sub_257524388(v8, type metadata accessor for Proto_LinearIndex);
      sub_257524388(v15, type metadata accessor for Proto_LinearIndex);
      OUTLINED_FUNCTION_1_15();
      sub_257524388(v0, v26);
      goto LABEL_11;
    }

    v22 = type metadata accessor for Proto_LinearIndex;
    v23 = v15;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_15_4();
  sub_257524434();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_2_14();
    v23 = v12;
LABEL_8:
    sub_257524388(v23, v22);
    sub_2574695E4(v0, &qword_27F87BEB0, &qword_2577510A0);
    goto LABEL_11;
  }

  sub_2575243E0();
  if (*v12 == *v1)
  {
    sub_2577431B4();
    OUTLINED_FUNCTION_0_24();
    v20 = sub_257523BF0(v18, v19, MEMORY[0x277D216D0]);
    OUTLINED_FUNCTION_185_0(v20);
  }

  OUTLINED_FUNCTION_2_14();
  sub_257524388(v1, v21);
  OUTLINED_FUNCTION_2_14();
  sub_257524388(v12, v27);
  OUTLINED_FUNCTION_1_15();
  sub_257524388(v0, v28);
LABEL_11:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_25751D32C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Proto_SquaredEuclideanDistance(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BEA8, &qword_257751098);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  sub_257524434();
  sub_257524434();
  sub_2575243E0();
  sub_2575243E0();
  sub_2577431B4();
  OUTLINED_FUNCTION_0_24();
  sub_257523BF0(v12, v13, MEMORY[0x277D216D0]);
  v14 = sub_257743644();
  sub_257524388(v6, type metadata accessor for Proto_SquaredEuclideanDistance);
  sub_257524388(v9, type metadata accessor for Proto_SquaredEuclideanDistance);
  return v14 & 1;
}

uint64_t sub_25751D4F4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8998);
  __swift_project_value_buffer(v0, qword_27F8E8998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577503A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "nearestNeighborsIndex";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "numberOfNeighbors";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 100;
  *v12 = "stringClassLabels";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 101;
  *v14 = "int64ClassLabels";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 110;
  *v16 = "defaultStringLabel";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 111;
  *v18 = "defaultInt64Label";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 200;
  *v20 = "uniformWeighting";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 210;
  *v22 = "inverseDistanceWeighting";
  *(v22 + 1) = 24;
  v22[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_25751D83C()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 210:
        v31 = OUTLINED_FUNCTION_6_10();
        sub_25751EB34(v31, v32, v33, v34);
        break;
      case 3:
        v19 = OUTLINED_FUNCTION_6_8();
        sub_25751D9E4(v19, v20, v21, v22);
        break;
      case 100:
        v27 = OUTLINED_FUNCTION_6_10();
        sub_25751DA98(v27, v28, v29, v30);
        break;
      case 101:
        v23 = OUTLINED_FUNCTION_6_10();
        sub_25751DF90(v23, v24, v25, v26);
        break;
      case 110:
        v7 = OUTLINED_FUNCTION_6_8();
        sub_25751E488(v7, v8, v9, v10);
        break;
      case 111:
        v15 = OUTLINED_FUNCTION_6_8();
        sub_25751E564(v15, v16, v17, v18);
        break;
      case 200:
        v11 = OUTLINED_FUNCTION_6_10();
        sub_25751E630(v11, v12, v13, v14);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_25751D930(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_25751D930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  type metadata accessor for Proto_NearestNeighborsIndex(0);
  sub_257523BF0(&qword_27F87BDD8, type metadata accessor for Proto_NearestNeighborsIndex, &unk_257750EF4);
  return sub_2577433D4();
}

uint64_t sub_25751D9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  type metadata accessor for Proto_Int64Parameter(0);
  sub_257523BF0(&qword_27F87BE80, type metadata accessor for Proto_Int64Parameter, &unk_2577686C0);
  return sub_2577433D4();
}

uint64_t sub_25751DA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD18, &unk_25776D8A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A878, &unk_257748700);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_2574AD5D8(a1, v10, &qword_27F87BD18, &unk_25776D8A0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87BD18, &unk_25776D8A0);
  }

  else
  {
    sub_2575243E0();
    sub_2575243E0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257524388(v14, type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels);
    }

    else
    {
      sub_2574695E4(v20, &qword_27F87A878, &unk_257748700);
      sub_2575243E0();
      sub_2575243E0();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_257523BF0(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87A878, &unk_257748700);
  }

  sub_2574AD5D8(v20, v18, &qword_27F87A878, &unk_257748700);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87A878, &unk_257748700);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87A878, &unk_257748700);
  }

  sub_2575243E0();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87A878, &unk_257748700);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87BD18, &unk_25776D8A0);
  sub_2575243E0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_25751DF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_Int64Vector(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD18, &unk_25776D8A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A880, &qword_25774AFD0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_2574AD5D8(a1, v10, &qword_27F87BD18, &unk_25776D8A0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87BD18, &unk_25776D8A0);
  }

  else
  {
    sub_2575243E0();
    sub_2575243E0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v20, &qword_27F87A880, &qword_25774AFD0);
      sub_2575243E0();
      sub_2575243E0();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_257524388(v14, type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels);
    }
  }

  sub_257523BF0(&qword_281537E60, type metadata accessor for Proto_Int64Vector, &unk_257747CFC);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_2574AD5D8(v20, v18, &qword_27F87A880, &qword_25774AFD0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87A880, &qword_25774AFD0);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_2575243E0();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87A880, &qword_25774AFD0);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87BD18, &unk_25776D8A0);
  sub_2575243E0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_25751E488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_257743384();
  if (v4)
  {
  }

  if (v11)
  {
    v7 = a2 + *(type metadata accessor for Proto_KNearestNeighborsClassifier(0) + 20);
    if (*(v7 + 16) == 255)
    {
      v8 = -1;
    }

    else
    {
      sub_257743244();
      v8 = *(v7 + 16);
    }

    v9 = *v7;
    v10 = *(v7 + 8);
    *v7 = 0;
    *(v7 + 8) = v11;
    *(v7 + 16) = 0;
    return sub_25746706C(v9, v10, v8);
  }

  return result;
}

uint64_t sub_25751E630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for Proto_UniformWeighting(0);
  v6 = MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD20, &unk_2577504C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BE88, &qword_257751078);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  __swift_storeEnumTagSinglePayload(&v27 - v19, 1, 1, v5);
  v27 = *(type metadata accessor for Proto_KNearestNeighborsClassifier(0) + 24);
  v28 = a1;
  sub_2574AD5D8(a1 + v27, v10, &qword_27F87BD20, &unk_2577504C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v30 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87BD20, &unk_2577504C0);
  }

  else
  {
    sub_2575243E0();
    sub_2575243E0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257524388(v14, type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme);
    }

    else
    {
      sub_2574695E4(v20, &qword_27F87BE88, &qword_257751078);
      sub_2575243E0();
      sub_2575243E0();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_257523BF0(&qword_27F87BDC0, type metadata accessor for Proto_UniformWeighting, &unk_257750FE4);
  v21 = v32;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87BE88, &qword_257751078);
  }

  sub_2574AD5D8(v20, v18, &qword_27F87BE88, &qword_257751078);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87BE88, &qword_257751078);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87BE88, &qword_257751078);
  }

  sub_2575243E0();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v30;
  sub_2574695E4(v20, &qword_27F87BE88, &qword_257751078);
  v26 = v27;
  v25 = v28;
  sub_2574695E4(v28 + v27, &qword_27F87BD20, &unk_2577504C0);
  sub_2575243E0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25 + v26, 0, 1, v24);
}

uint64_t sub_25751EB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for Proto_InverseDistanceWeighting(0);
  v6 = MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD20, &unk_2577504C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BE90, &qword_257751080);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  __swift_storeEnumTagSinglePayload(&v27 - v19, 1, 1, v5);
  v27 = *(type metadata accessor for Proto_KNearestNeighborsClassifier(0) + 24);
  v28 = a1;
  sub_2574AD5D8(a1 + v27, v10, &qword_27F87BD20, &unk_2577504C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v30 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87BD20, &unk_2577504C0);
  }

  else
  {
    sub_2575243E0();
    sub_2575243E0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v20, &qword_27F87BE90, &qword_257751080);
      sub_2575243E0();
      sub_2575243E0();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_257524388(v14, type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme);
    }
  }

  sub_257523BF0(&qword_27F87BDA8, type metadata accessor for Proto_InverseDistanceWeighting, &unk_257750F6C);
  v21 = v32;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87BE90, &qword_257751080);
  }

  sub_2574AD5D8(v20, v18, &qword_27F87BE90, &qword_257751080);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87BE90, &qword_257751080);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87BE90, &qword_257751080);
  }

  sub_2575243E0();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v30;
  sub_2574695E4(v20, &qword_27F87BE90, &qword_257751080);
  v26 = v27;
  v25 = v28;
  sub_2574695E4(v28 + v27, &qword_27F87BD20, &unk_2577504C0);
  sub_2575243E0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25 + v26, 0, 1, v24);
}

uint64_t sub_25751F038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD20, &unk_2577504C0);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD18, &unk_25776D8A0);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_32_4();
  v12 = OUTLINED_FUNCTION_6_14();
  result = sub_25751F264(v12, v13, v14, v15);
  if (!v4)
  {
    v17 = OUTLINED_FUNCTION_6_14();
    sub_25751F444(v17, v18, v19, v20);
    sub_2574AD5D8(v3, v5, &qword_27F87BD18, &unk_25776D8A0);
    type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
    OUTLINED_FUNCTION_35_2(v5);
    if (!v21)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v22 = OUTLINED_FUNCTION_6_14();
        sub_25751F838(v22, v23, v24, v25);
      }

      else
      {
        v26 = OUTLINED_FUNCTION_6_14();
        sub_25751F624(v26, v27, v28, v29);
      }

      OUTLINED_FUNCTION_5_15();
      sub_257524388(v5, v30);
    }

    v31 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
    if (*(v3 + *(v31 + 20) + 16) != 255)
    {
      v32 = OUTLINED_FUNCTION_6_14();
      if (v36)
      {
        sub_25751FAC8(v32, v33, v34, v35);
      }

      else
      {
        sub_25751FA4C(v32, v33, v34, v35);
      }
    }

    sub_2574AD5D8(v3 + *(v31 + 24), v9, &qword_27F87BD20, &unk_2577504C0);
    type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
    OUTLINED_FUNCTION_35_2(v9);
    if (!v21)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v37 = OUTLINED_FUNCTION_6_14();
        sub_25751FD64(v37, v38, v39, v40);
      }

      else
      {
        v41 = OUTLINED_FUNCTION_6_14();
        sub_25751FB44(v41, v42, v43, v44);
      }

      OUTLINED_FUNCTION_10_12();
      sub_257524388(v9, v45);
    }

    OUTLINED_FUNCTION_222();
    return sub_257743194();
  }

  return result;
}

uint64_t sub_25751F264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD28, &unk_25776D890);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  sub_2574AD5D8(a1 + *(v11 + 32), v7, &qword_27F87BD28, &unk_25776D890);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87BD28, &unk_25776D890);
  }

  sub_2575243E0();
  sub_257523BF0(&qword_27F87BDD8, type metadata accessor for Proto_NearestNeighborsIndex, &unk_257750EF4);
  sub_257743574();
  return sub_257524388(v10, type metadata accessor for Proto_NearestNeighborsIndex);
}

uint64_t sub_25751F444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Int64Parameter(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  sub_2574AD5D8(a1 + *(v11 + 36), v7, &qword_27F87BD30, &unk_2577504D0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87BD30, &unk_2577504D0);
  }

  sub_2575243E0();
  sub_257523BF0(&qword_27F87BE80, type metadata accessor for Proto_Int64Parameter, &unk_2577686C0);
  sub_257743574();
  return sub_257524388(v10, type metadata accessor for Proto_Int64Parameter);
}

uint64_t sub_25751F624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD18, &unk_25776D8A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_StringVector(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v7, &qword_27F87BD18, &unk_25776D8A0);
  v11 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87BD18, &unk_25776D8A0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2575243E0();
      sub_257523BF0(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);
      sub_257743574();
      return sub_257524388(v10, type metadata accessor for Proto_StringVector);
    }

    result = sub_257524388(v7, type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels);
  }

  __break(1u);
  return result;
}

uint64_t sub_25751F838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD18, &unk_25776D8A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Int64Vector(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v7, &qword_27F87BD18, &unk_25776D8A0);
  v11 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87BD18, &unk_25776D8A0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2575243E0();
      sub_257523BF0(&qword_281537E60, type metadata accessor for Proto_Int64Vector, &unk_257747CFC);
      sub_257743574();
      return sub_257524388(v10, type metadata accessor for Proto_Int64Vector);
    }

    result = sub_257524388(v7, type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels);
  }

  __break(1u);
  return result;
}

uint64_t sub_25751FA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  v6 = *(a1 + *(result + 20) + 16);
  if (v6 != 255 && (v6 & 1) == 0)
  {
    return sub_257743534();
  }

  __break(1u);
  return result;
}

uint64_t sub_25751FAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  v6 = *(a1 + *(result + 20) + 16);
  if (v6 != 255 && (v6 & 1) != 0)
  {
    return sub_257743504();
  }

  __break(1u);
  return result;
}

uint64_t sub_25751FB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD20, &unk_2577504C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_UniformWeighting(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  sub_2574AD5D8(a1 + *(v11 + 24), v7, &qword_27F87BD20, &unk_2577504C0);
  v12 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87BD20, &unk_2577504C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2575243E0();
      sub_257523BF0(&qword_27F87BDC0, type metadata accessor for Proto_UniformWeighting, &unk_257750FE4);
      sub_257743574();
      return sub_257524388(v10, type metadata accessor for Proto_UniformWeighting);
    }

    result = sub_257524388(v7, type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme);
  }

  __break(1u);
  return result;
}

uint64_t sub_25751FD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD20, &unk_2577504C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_InverseDistanceWeighting(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  sub_2574AD5D8(a1 + *(v11 + 24), v7, &qword_27F87BD20, &unk_2577504C0);
  v12 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87BD20, &unk_2577504C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2575243E0();
      sub_257523BF0(&qword_27F87BDA8, type metadata accessor for Proto_InverseDistanceWeighting, &unk_257750F6C);
      sub_257743574();
      return sub_257524388(v10, type metadata accessor for Proto_InverseDistanceWeighting);
    }

    result = sub_257524388(v7, type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme);
  }

  __break(1u);
  return result;
}

void _s20MLModelSpecification29NearestNeighborsConfigurationV2eeoiySbAC_ACtFZ_0()
{
  OUTLINED_FUNCTION_31();
  v118 = v3;
  v119 = v2;
  v107 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v104 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD20, &unk_2577504C0);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_198();
  v105 = v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BEC8, &qword_2577510B8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_198();
  v108 = v11;
  v113 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v109 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD18, &unk_25776D8A0);
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_198();
  v110 = v17;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BED0, &qword_2577510C0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_198();
  v114 = v19;
  v116 = type metadata accessor for Proto_Int64Parameter(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v111 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  OUTLINED_FUNCTION_13(v23);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_198();
  v115 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BED8, &qword_2577510C8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_40_2();
  v28 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD28, &unk_25776D890);
  OUTLINED_FUNCTION_13(v33);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_32_4();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BEE0, &unk_2577510D0) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  v38 = &v104 - v37;
  v117 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  v39 = *(v117 + 32);
  v40 = *(v35 + 56);
  sub_2574AD5D8(v119 + v39, v38, &qword_27F87BD28, &unk_25776D890);
  v41 = v118 + v39;
  v42 = v118;
  sub_2574AD5D8(v41, &v38[v40], &qword_27F87BD28, &unk_25776D890);
  OUTLINED_FUNCTION_155(v38, 1, v28);
  if (v43)
  {
    OUTLINED_FUNCTION_155(&v38[v40], 1, v28);
    if (v43)
    {
      sub_2574695E4(v38, &qword_27F87BD28, &unk_25776D890);
      goto LABEL_11;
    }

LABEL_9:
    v44 = &qword_27F87BEE0;
    v45 = &unk_2577510D0;
    v46 = v38;
LABEL_31:
    sub_2574695E4(v46, v44, v45);
    goto LABEL_32;
  }

  sub_2574AD5D8(v38, v1, &qword_27F87BD28, &unk_25776D890);
  OUTLINED_FUNCTION_155(&v38[v40], 1, v28);
  if (v43)
  {
    sub_257524388(v1, type metadata accessor for Proto_NearestNeighborsIndex);
    goto LABEL_9;
  }

  sub_2575243E0();
  _s20MLModelSpecification29NearestNeighborsConfigurationV10ParametersV2eeoiySbAE_AEtFZ_0();
  v48 = v47;
  sub_257524388(v32, type metadata accessor for Proto_NearestNeighborsIndex);
  sub_257524388(v1, type metadata accessor for Proto_NearestNeighborsIndex);
  sub_2574695E4(v38, &qword_27F87BD28, &unk_25776D890);
  if ((v48 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  v49 = v117;
  v50 = *(v117 + 36);
  v51 = *(v26 + 48);
  v52 = v119;
  sub_2574AD5D8(v119 + v50, v0, &qword_27F87BD30, &unk_2577504D0);
  sub_2574AD5D8(v42 + v50, v0 + v51, &qword_27F87BD30, &unk_2577504D0);
  v53 = v116;
  OUTLINED_FUNCTION_155(v0, 1, v116);
  if (v43)
  {
    OUTLINED_FUNCTION_155(v0 + v51, 1, v53);
    if (v43)
    {
      sub_2574695E4(v0, &qword_27F87BD30, &unk_2577504D0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v54 = v115;
  sub_2574AD5D8(v0, v115, &qword_27F87BD30, &unk_2577504D0);
  OUTLINED_FUNCTION_155(v0 + v51, 1, v53);
  if (v55)
  {
    sub_257524388(v54, type metadata accessor for Proto_Int64Parameter);
LABEL_19:
    v44 = &qword_27F87BED8;
    v45 = &qword_2577510C8;
    v46 = v0;
    goto LABEL_31;
  }

  v56 = v111;
  sub_2575243E0();
  OUTLINED_FUNCTION_222();
  v57 = sub_257615594();
  sub_257524388(v56, type metadata accessor for Proto_Int64Parameter);
  v58 = OUTLINED_FUNCTION_360();
  sub_257524388(v58, v59);
  sub_2574695E4(v0, &qword_27F87BD30, &unk_2577504D0);
  if ((v57 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  v60 = *(v112 + 48);
  v61 = v114;
  OUTLINED_FUNCTION_42_3(v52, v114);
  OUTLINED_FUNCTION_42_3(v42, v61 + v60);
  v62 = v113;
  OUTLINED_FUNCTION_155(v61, 1, v113);
  if (v43)
  {
    v63 = OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_155(v63, v64, v62);
    if (v43)
    {
      sub_2574695E4(v61, &qword_27F87BD18, &unk_25776D8A0);
      goto LABEL_34;
    }

LABEL_29:
    v44 = &qword_27F87BED0;
    v45 = &qword_2577510C0;
LABEL_30:
    v46 = v61;
    goto LABEL_31;
  }

  v65 = v110;
  sub_2574AD5D8(v61, v110, &qword_27F87BD18, &unk_25776D8A0);
  v66 = OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_155(v66, v67, v62);
  if (v68)
  {
    OUTLINED_FUNCTION_5_15();
    sub_257524388(v65, v69);
    goto LABEL_29;
  }

  v70 = v109;
  sub_2575243E0();
  OUTLINED_FUNCTION_360();
  sub_25751C8A0();
  v72 = v71;
  sub_257524388(v70, type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels);
  sub_257524388(v65, type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels);
  sub_2574695E4(v61, &qword_27F87BD18, &unk_25776D8A0);
  if ((v72 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_34:
  v73 = *(v49 + 20);
  v74 = (v52 + v73);
  v75 = *(v52 + v73 + 16);
  v76 = (v42 + v73);
  v77 = *(v42 + v73 + 16);
  if (v75 == 255)
  {
    if (v77 != 255)
    {
      goto LABEL_32;
    }
  }

  else if (v77 == 255 || (sub_2574AB6EC(*v74, v74[1], v75 & 1, *v76, v76[1], v77 & 1) & 1) == 0)
  {
    goto LABEL_32;
  }

  v78 = *(v49 + 24);
  v79 = *(v106 + 48);
  v80 = v108;
  OUTLINED_FUNCTION_42_3(v52 + v78, v108);
  v81 = v42 + v78;
  v61 = v80;
  OUTLINED_FUNCTION_42_3(v81, v80 + v79);
  v82 = v107;
  OUTLINED_FUNCTION_155(v80, 1, v107);
  if (v43)
  {
    v83 = OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_155(v83, v84, v82);
    if (v43)
    {
      sub_2574695E4(v80, &qword_27F87BD20, &unk_2577504C0);
LABEL_49:
      sub_2577431B4();
      OUTLINED_FUNCTION_0_24();
      sub_257523BF0(v102, v103, MEMORY[0x277D216D0]);
      sub_257743644();
      goto LABEL_32;
    }

    goto LABEL_47;
  }

  v85 = v80;
  v86 = v105;
  sub_2574AD5D8(v85, v105, &qword_27F87BD20, &unk_2577504C0);
  v87 = OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_155(v87, v88, v82);
  if (v89)
  {
    OUTLINED_FUNCTION_10_12();
    sub_257524388(v86, v90);
LABEL_47:
    v44 = &qword_27F87BEC8;
    v45 = &qword_2577510B8;
    goto LABEL_30;
  }

  v91 = v104;
  sub_2575243E0();
  v92 = OUTLINED_FUNCTION_360();
  sub_25751CC20(v92, v93, v94, v95, v96, v97, v98, v99, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
  v101 = v100;
  sub_257524388(v91, type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme);
  sub_257524388(v86, type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme);
  sub_2574695E4(v61, &qword_27F87BD20, &unk_2577504C0);
  if (v101)
  {
    goto LABEL_49;
  }

LABEL_32:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257520930(uint64_t a1, uint64_t a2)
{
  v4 = sub_257523BF0(&qword_27F87BE78, type metadata accessor for Proto_KNearestNeighborsClassifier, &unk_257750CDC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575209D0(uint64_t a1)
{
  v2 = sub_257523BF0(&qword_27F87BB00, type metadata accessor for Proto_KNearestNeighborsClassifier, &unk_257750D14);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257520A98(uint64_t a1, uint64_t a2)
{
  sub_257523BF0(&qword_27F87BB00, type metadata accessor for Proto_KNearestNeighborsClassifier, &unk_257750D14);

  return sub_257743424();
}

uint64_t sub_257520B18()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E89B0);
  __swift_project_value_buffer(v0, qword_27F8E89B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "numberOfDimensions";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "floatSamples";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 100;
  *v12 = "linearIndex";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 110;
  *v14 = "singleKdTreeIndex";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 200;
  *v16 = "squaredEuclideanDistance";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257520D9C()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 200:
        v15 = OUTLINED_FUNCTION_6_10();
        sub_2575218F4(v15, v16, v17, v18);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_257520E4C(v3, v4, v5, v6);
        break;
      case 100:
        v11 = OUTLINED_FUNCTION_6_10();
        sub_257520EEC(v11, v12, v13, v14);
        break;
      case 110:
        v7 = OUTLINED_FUNCTION_6_10();
        sub_2575213F0(v7, v8, v9, v10);
        break;
      case 1:
        OUTLINED_FUNCTION_10_7();
        sub_257743304();
        break;
    }
  }

  return result;
}

uint64_t sub_257520E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_FloatVector(0);
  sub_257523BF0(&qword_27F87A718, type metadata accessor for Proto_FloatVector, &unk_257747B94);
  return sub_2577433C4();
}

uint64_t sub_257520EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for Proto_LinearIndex(0);
  v6 = MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD40, &unk_257774DE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BE48, &qword_257751060);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  __swift_storeEnumTagSinglePayload(&v27 - v19, 1, 1, v5);
  v27 = *(type metadata accessor for Proto_NearestNeighborsIndex(0) + 24);
  v28 = a1;
  sub_2574AD5D8(a1 + v27, v10, &qword_27F87BD40, &unk_257774DE0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v30 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87BD40, &unk_257774DE0);
  }

  else
  {
    sub_2575243E0();
    sub_2575243E0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257524388(v14, type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType);
    }

    else
    {
      sub_2574695E4(v20, &qword_27F87BE48, &qword_257751060);
      sub_2575243E0();
      sub_2575243E0();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_257523BF0(&qword_27F87BD90, type metadata accessor for Proto_LinearIndex, &unk_257750E7C);
  v21 = v32;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87BE48, &qword_257751060);
  }

  sub_2574AD5D8(v20, v18, &qword_27F87BE48, &qword_257751060);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87BE48, &qword_257751060);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87BE48, &qword_257751060);
  }

  sub_2575243E0();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v30;
  sub_2574695E4(v20, &qword_27F87BE48, &qword_257751060);
  v26 = v27;
  v25 = v28;
  sub_2574695E4(v28 + v27, &qword_27F87BD40, &unk_257774DE0);
  sub_2575243E0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25 + v26, 0, 1, v24);
}

uint64_t sub_2575213F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for Proto_SingleKdTreeIndex(0);
  v6 = MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD40, &unk_257774DE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BE50, &qword_257751068);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  __swift_storeEnumTagSinglePayload(&v27 - v19, 1, 1, v5);
  v27 = *(type metadata accessor for Proto_NearestNeighborsIndex(0) + 24);
  v28 = a1;
  sub_2574AD5D8(a1 + v27, v10, &qword_27F87BD40, &unk_257774DE0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v30 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87BD40, &unk_257774DE0);
  }

  else
  {
    sub_2575243E0();
    sub_2575243E0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v20, &qword_27F87BE50, &qword_257751068);
      sub_2575243E0();
      sub_2575243E0();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_257524388(v14, type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType);
    }
  }

  sub_257523BF0(&qword_27F87BD78, type metadata accessor for Proto_SingleKdTreeIndex, &unk_257750E04);
  v21 = v32;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87BE50, &qword_257751068);
  }

  sub_2574AD5D8(v20, v18, &qword_27F87BE50, &qword_257751068);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87BE50, &qword_257751068);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87BE50, &qword_257751068);
  }

  sub_2575243E0();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v30;
  sub_2574695E4(v20, &qword_27F87BE50, &qword_257751068);
  v26 = v27;
  v25 = v28;
  sub_2574695E4(v28 + v27, &qword_27F87BD40, &unk_257774DE0);
  sub_2575243E0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25 + v26, 0, 1, v24);
}

uint64_t sub_2575218F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_SquaredEuclideanDistance(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD48, &unk_257750590);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction(0);
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BE58, &qword_257751070);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  __swift_storeEnumTagSinglePayload(&v26 - v17, 1, 1, v5);
  v19 = *(type metadata accessor for Proto_NearestNeighborsIndex(0) + 28);
  v29 = a1;
  v27 = v19;
  sub_2574AD5D8(a1 + v19, v10, &qword_27F87BD48, &unk_257750590);
  v28 = v11;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87BD48, &unk_257750590);
  }

  else
  {
    sub_2575243E0();
    sub_2575243E0();
    sub_2574695E4(v18, &qword_27F87BE58, &qword_257751070);
    sub_2575243E0();
    sub_2575243E0();
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
  }

  sub_257523BF0(&qword_27F87BD60, type metadata accessor for Proto_SquaredEuclideanDistance, &unk_257750D8C);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87BE58, &qword_257751070);
  }

  sub_2574AD5D8(v18, v16, &qword_27F87BE58, &qword_257751070);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_2574695E4(v18, &qword_27F87BE58, &qword_257751070);
    v22 = v16;
    return sub_2574695E4(v22, &qword_27F87BE58, &qword_257751070);
  }

  sub_2575243E0();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v18, &qword_27F87BE58, &qword_257751070);
  v24 = v29;
  v25 = v27;
  sub_2574695E4(v29 + v27, &qword_27F87BD48, &unk_257750590);
  sub_2575243E0();
  return __swift_storeEnumTagSinglePayload(v24 + v25, 0, 1, v28);
}

uint64_t sub_257521DAC()
{
  OUTLINED_FUNCTION_2_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD40, &unk_257774DE0);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_32_4();
  if (!*v1 || (OUTLINED_FUNCTION_11_6(), result = sub_2577434F4(), !v0))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Proto_FloatVector(0), sub_257523BF0(&qword_27F87A718, type metadata accessor for Proto_FloatVector, &unk_257747B94), OUTLINED_FUNCTION_55_0(), result = sub_257743564(), !v0))
    {
      v7 = type metadata accessor for Proto_NearestNeighborsIndex(0);
      sub_2574AD5D8(v2 + *(v7 + 24), v3, &qword_27F87BD40, &unk_257774DE0);
      type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(0);
      OUTLINED_FUNCTION_35_2(v3);
      if (v8)
      {
        goto LABEL_10;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_11_6();
        v9 = v0;
        sub_2575221B0(v10, v11, v12, v13);
      }

      else
      {
        OUTLINED_FUNCTION_11_6();
        v9 = v0;
        sub_257521F90(v14, v15, v16, v17);
      }

      v0 = v9;
      OUTLINED_FUNCTION_1_15();
      result = sub_257524388(v3, v18);
      if (!v9)
      {
LABEL_10:
        OUTLINED_FUNCTION_11_6();
        result = sub_2575223D0(v19, v20, v21, v22);
        if (!v0)
        {
          OUTLINED_FUNCTION_10_7();
          return sub_257743194();
        }
      }
    }
  }

  return result;
}

uint64_t sub_257521F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD40, &unk_257774DE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_LinearIndex(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  sub_2574AD5D8(a1 + *(v11 + 24), v7, &qword_27F87BD40, &unk_257774DE0);
  v12 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87BD40, &unk_257774DE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2575243E0();
      sub_257523BF0(&qword_27F87BD90, type metadata accessor for Proto_LinearIndex, &unk_257750E7C);
      sub_257743574();
      return sub_257524388(v10, type metadata accessor for Proto_LinearIndex);
    }

    result = sub_257524388(v7, type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType);
  }

  __break(1u);
  return result;
}

uint64_t sub_2575221B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD40, &unk_257774DE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_SingleKdTreeIndex(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  sub_2574AD5D8(a1 + *(v11 + 24), v7, &qword_27F87BD40, &unk_257774DE0);
  v12 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87BD40, &unk_257774DE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2575243E0();
      sub_257523BF0(&qword_27F87BD78, type metadata accessor for Proto_SingleKdTreeIndex, &unk_257750E04);
      sub_257743574();
      return sub_257524388(v10, type metadata accessor for Proto_SingleKdTreeIndex);
    }

    result = sub_257524388(v7, type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType);
  }

  __break(1u);
  return result;
}

uint64_t sub_2575223D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD48, &unk_257750590);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_SquaredEuclideanDistance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  sub_2574AD5D8(a1 + *(v11 + 28), v7, &qword_27F87BD48, &unk_257750590);
  v12 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87BD48, &unk_257750590);
  }

  sub_2575243E0();
  sub_257523BF0(&qword_27F87BD60, type metadata accessor for Proto_SquaredEuclideanDistance, &unk_257750D8C);
  sub_257743574();
  return sub_257524388(v10, type metadata accessor for Proto_SquaredEuclideanDistance);
}

void _s20MLModelSpecification29NearestNeighborsConfigurationV10ParametersV2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v51 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD48, &unk_257750590);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_198();
  v50 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BEB8, &qword_2577510A8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD40, &unk_257774DE0);
  OUTLINED_FUNCTION_13(v19);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = &v46 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BEC0, &qword_2577510B0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  v26 = &v46 - v25;
  if (*v3 != *v1)
  {
    goto LABEL_23;
  }

  sub_25747BE18();
  if ((v27 & 1) == 0)
  {
    goto LABEL_23;
  }

  v46 = v7;
  v28 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  v49 = v1;
  v29 = *(v28 + 24);
  v30 = *(v23 + 48);
  v47 = v28;
  v48 = v3;
  sub_2574AD5D8(v3 + v29, v26, &qword_27F87BD40, &unk_257774DE0);
  sub_2574AD5D8(v49 + v29, &v26[v30], &qword_27F87BD40, &unk_257774DE0);
  OUTLINED_FUNCTION_26_0(v26);
  if (v31)
  {
    OUTLINED_FUNCTION_26_0(&v26[v30]);
    if (v31)
    {
      sub_2574695E4(v26, &qword_27F87BD40, &unk_257774DE0);
      goto LABEL_13;
    }

LABEL_11:
    v33 = &qword_27F87BEC0;
    v34 = &qword_2577510B0;
    v35 = v26;
LABEL_22:
    sub_2574695E4(v35, v33, v34);
    goto LABEL_23;
  }

  sub_2574AD5D8(v26, v22, &qword_27F87BD40, &unk_257774DE0);
  OUTLINED_FUNCTION_26_0(&v26[v30]);
  if (v31)
  {
    OUTLINED_FUNCTION_1_15();
    sub_257524388(v22, v32);
    goto LABEL_11;
  }

  sub_2575243E0();
  sub_25751CFAC();
  v37 = v36;
  sub_257524388(v18, type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType);
  sub_257524388(v22, type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType);
  sub_2574695E4(v26, &qword_27F87BD40, &unk_257774DE0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  v38 = *(v47 + 28);
  v39 = *(v11 + 48);
  sub_2574AD5D8(v48 + v38, v14, &qword_27F87BD48, &unk_257750590);
  sub_2574AD5D8(v49 + v38, &v14[v39], &qword_27F87BD48, &unk_257750590);
  OUTLINED_FUNCTION_155(v14, 1, v51);
  if (v31)
  {
    OUTLINED_FUNCTION_26_0(&v14[v39]);
    if (v31)
    {
      sub_2574695E4(v14, &qword_27F87BD48, &unk_257750590);
LABEL_25:
      sub_2577431B4();
      OUTLINED_FUNCTION_0_24();
      sub_257523BF0(v44, v45, MEMORY[0x277D216D0]);
      sub_257743644();
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v40 = v50;
  sub_2574AD5D8(v14, v50, &qword_27F87BD48, &unk_257750590);
  OUTLINED_FUNCTION_26_0(&v14[v39]);
  if (v41)
  {
    sub_257524388(v40, type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction);
LABEL_21:
    v33 = &qword_27F87BEB8;
    v34 = &qword_2577510A8;
    v35 = v14;
    goto LABEL_22;
  }

  v42 = v46;
  sub_2575243E0();
  v43 = sub_25751D32C(v40, v42);
  sub_257524388(v42, type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction);
  sub_257524388(v40, type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction);
  sub_2574695E4(v14, &qword_27F87BD48, &unk_257750590);
  if (v43)
  {
    goto LABEL_25;
  }

LABEL_23:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257522B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_257523BF0(&qword_27F87BE40, type metadata accessor for Proto_NearestNeighborsIndex, &unk_257750BEC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257522BA8(uint64_t a1)
{
  v2 = sub_257523BF0(&qword_27F87BDD8, type metadata accessor for Proto_NearestNeighborsIndex, &unk_257750EF4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257522C70(uint64_t a1, uint64_t a2)
{
  sub_257523BF0(&qword_27F87BDD8, type metadata accessor for Proto_NearestNeighborsIndex, &unk_257750EF4);

  return sub_257743424();
}

uint64_t sub_257522D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_257523BF0(&qword_27F87BE30, type metadata accessor for Proto_UniformWeighting, &unk_257750AFC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257522DB8(uint64_t a1)
{
  v2 = sub_257523BF0(&qword_27F87BDC0, type metadata accessor for Proto_UniformWeighting, &unk_257750FE4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257522E80(uint64_t a1, uint64_t a2)
{
  sub_257523BF0(&qword_27F87BDC0, type metadata accessor for Proto_UniformWeighting, &unk_257750FE4);

  return sub_257743424();
}

uint64_t sub_257522F24(uint64_t a1, uint64_t a2)
{
  v4 = sub_257523BF0(&qword_27F87BE38, type metadata accessor for Proto_InverseDistanceWeighting, &unk_257750A0C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257522FC4(uint64_t a1)
{
  v2 = sub_257523BF0(&qword_27F87BDA8, type metadata accessor for Proto_InverseDistanceWeighting, &unk_257750F6C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25752308C(uint64_t a1, uint64_t a2)
{
  sub_257523BF0(&qword_27F87BDA8, type metadata accessor for Proto_InverseDistanceWeighting, &unk_257750F6C);

  return sub_257743424();
}

uint64_t sub_257523130(uint64_t a1, uint64_t a2)
{
  v4 = sub_257523BF0(&qword_27F87BE60, type metadata accessor for Proto_LinearIndex, &unk_25775091C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575231D0(uint64_t a1)
{
  v2 = sub_257523BF0(&qword_27F87BD90, type metadata accessor for Proto_LinearIndex, &unk_257750E7C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257523298(uint64_t a1, uint64_t a2)
{
  sub_257523BF0(&qword_27F87BD90, type metadata accessor for Proto_LinearIndex, &unk_257750E7C);

  return sub_257743424();
}

uint64_t sub_257523314()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8A10);
  __swift_project_value_buffer(v0, qword_27F8E8A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2577442B0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "leafSize";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_257743594();
}

uint64_t sub_257523480()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743304();
    }
  }

  return result;
}

uint64_t sub_2575234D0()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v1 || (OUTLINED_FUNCTION_11_6(), result = sub_2577434F4(), !v0))
  {
    type metadata accessor for Proto_SingleKdTreeIndex(0);
    OUTLINED_FUNCTION_10_7();
    return sub_257743194();
  }

  return result;
}

uint64_t sub_25752354C(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SingleKdTreeIndex(v2);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_24();
  sub_257523BF0(v3, v4, MEMORY[0x277D216D0]);
  return sub_257743644() & 1;
}

uint64_t sub_257523630(uint64_t a1, uint64_t a2)
{
  v4 = sub_257523BF0(&qword_27F87BE68, type metadata accessor for Proto_SingleKdTreeIndex, &unk_25775082C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575236D0(uint64_t a1)
{
  v2 = sub_257523BF0(&qword_27F87BD78, type metadata accessor for Proto_SingleKdTreeIndex, &unk_257750E04);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257523798(uint64_t a1, uint64_t a2)
{
  sub_257523BF0(&qword_27F87BD78, type metadata accessor for Proto_SingleKdTreeIndex, &unk_257750E04);

  return sub_257743424();
}

uint64_t sub_257523824(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2577435B4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2577435A4();
}

uint64_t sub_25752386C()
{
  OUTLINED_FUNCTION_0_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_0_24();
  sub_257523BF0(v0, v1, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_55_0();
  return sub_257743644() & 1;
}

uint64_t sub_2575238D8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_257743A14();
  a1(0);
  sub_257523BF0(a2, a3, a4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25752397C(uint64_t a1, uint64_t a2)
{
  v4 = sub_257523BF0(&qword_27F87BE70, type metadata accessor for Proto_SquaredEuclideanDistance, &unk_25775073C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257523A1C(uint64_t a1)
{
  v2 = sub_257523BF0(&qword_27F87BD60, type metadata accessor for Proto_SquaredEuclideanDistance, &unk_257750D8C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257523AE4(uint64_t a1, uint64_t a2)
{
  sub_257523BF0(&qword_27F87BD60, type metadata accessor for Proto_SquaredEuclideanDistance, &unk_257750D8C);

  return sub_257743424();
}

uint64_t sub_257523BF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257524388(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2575243E0()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_205();
  v4(v3);
  return v0;
}

uint64_t sub_257524434()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_205();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_22_5(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_42_3(uint64_t a1, uint64_t a2)
{

  return sub_2574AD5D8(a1, a2, v2, v3);
}

void _s20MLModelSpecification13NeuralNetworkV22ValidPaddingParametersV2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_118_1();
  type metadata accessor for Proto_BorderAmounts(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v7 = OUTLINED_FUNCTION_201();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_74_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA48, &qword_2577673F8) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_32_3();
  v13 = *(type metadata accessor for Proto_ValidPadding(0) + 20);
  v14 = *(v11 + 56);
  OUTLINED_FUNCTION_344_0(v1 + v13);
  OUTLINED_FUNCTION_344_0(v0 + v13);
  OUTLINED_FUNCTION_42_0(v2);
  if (v19)
  {
    OUTLINED_FUNCTION_42_0(v2 + v14);
    if (v19)
    {
      sub_2574695E4(v2, &qword_27F879AC8, &unk_257744010);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  v18 = OUTLINED_FUNCTION_264();
  sub_257487308(v18);
  OUTLINED_FUNCTION_42_0(v2 + v14);
  if (v19)
  {
    OUTLINED_FUNCTION_98_1();
    sub_257609BCC();
LABEL_10:
    v20 = &qword_27F87FA48;
    v21 = &qword_2577673F8;
LABEL_11:
    sub_2574695E4(v2, v20, v21);
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_97_2();
  sub_257609B78();
  sub_257481C78(*v4, *v3);
  if ((v22 & 1) == 0)
  {
    OUTLINED_FUNCTION_99_1();
    sub_257609BCC();
    OUTLINED_FUNCTION_412_0();
    v20 = &qword_27F879AC8;
    v21 = &unk_257744010;
    goto LABEL_11;
  }

  v23 = sub_2577431B4();
  OUTLINED_FUNCTION_1_16();
  v26 = sub_2575FB760(v24, v25, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_401_0(v26);
  OUTLINED_FUNCTION_219_0();
  sub_257609BCC();
  sub_257609BCC();
  sub_2574695E4(v2, &qword_27F879AC8, &unk_257744010);
  if ((v23 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_2577431B4();
  OUTLINED_FUNCTION_1_16();
  sub_2575FB760(v15, v16, MEMORY[0x277D216D0]);
  v17 = sub_257743644();
LABEL_13:
  OUTLINED_FUNCTION_65_0(v17);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257524890@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_293_0(a1);
  v1 = OUTLINED_FUNCTION_395_0(0xE000000000000000);
  v2 = type metadata accessor for Proto_LoopLayerParams(v1);
  OUTLINED_FUNCTION_322_0(v2);
  type metadata accessor for Proto_NeuralNetwork(0);
  OUTLINED_FUNCTION_6_11();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_6_11();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void _s20MLModelSpecification13NeuralNetworkV5LayerV14LoopParametersV2eeoiySbAG_AGtFZ_0()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_NeuralNetwork(v5);
  OUTLINED_FUNCTION_42_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A328, &unk_257752BB0);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_341_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA70, &qword_257767428);
  OUTLINED_FUNCTION_41_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_338_0();
  if (!v12)
  {
    goto LABEL_28;
  }

  v12 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v12 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_28;
  }

  v27 = type metadata accessor for Proto_LoopLayerParams(0);
  v28 = v0;
  v13 = v27[7];
  v14 = *(v3 + 48);
  sub_257487308(v1 + v13);
  sub_257487308(v28 + v13);
  OUTLINED_FUNCTION_65(v4);
  if (v12)
  {
    OUTLINED_FUNCTION_65(v4 + v14);
    if (v12)
    {
      sub_2574695E4(v4, &qword_27F87A328, &unk_257752BB0);
      goto LABEL_18;
    }

LABEL_16:
    v16 = v4;
LABEL_27:
    sub_2574695E4(v16, &qword_27F87FA70, &qword_257767428);
    goto LABEL_28;
  }

  sub_257487308(v4);
  OUTLINED_FUNCTION_65(v4 + v14);
  if (v15)
  {
    OUTLINED_FUNCTION_96_2();
    sub_257609BCC();
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_63_1();
  sub_257609B78();
  OUTLINED_FUNCTION_62_1();
  sub_2575E87B0();
  OUTLINED_FUNCTION_218_0();
  sub_257609BCC();
  OUTLINED_FUNCTION_405();
  sub_257609BCC();
  sub_2574695E4(v4, &qword_27F87A328, &unk_257752BB0);
  if ((&unk_257752BB0 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_18:
  v17 = v27[8];
  v18 = *(v3 + 48);
  OUTLINED_FUNCTION_153_0();
  sub_257487308(v19);
  sub_257487308(v28 + v17);
  OUTLINED_FUNCTION_65(v2);
  if (v12)
  {
    OUTLINED_FUNCTION_65(v2 + v18);
    if (v12)
    {
      sub_2574695E4(v2, &qword_27F87A328, &unk_257752BB0);
LABEL_31:
      v22 = v27[6];
      sub_2577431B4();
      OUTLINED_FUNCTION_1_16();
      v25 = sub_2575FB760(v23, v24, MEMORY[0x277D216D0]);
      v21 = OUTLINED_FUNCTION_266_0(v1 + v22, v28 + v22, v26, v25);
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  sub_257487308(v2);
  OUTLINED_FUNCTION_65(v2 + v18);
  if (v20)
  {
    OUTLINED_FUNCTION_96_2();
    sub_257609BCC();
LABEL_26:
    v16 = v2;
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_63_1();
  sub_257609B78();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_365();
  sub_2575E87B0();
  OUTLINED_FUNCTION_218_0();
  sub_257609BCC();
  OUTLINED_FUNCTION_194();
  sub_257609BCC();
  sub_2574695E4(v2, &qword_27F87A328, &unk_257752BB0);
  if (&qword_27F87A328)
  {
    goto LABEL_31;
  }

LABEL_28:
  v21 = 0;
LABEL_29:
  OUTLINED_FUNCTION_65_0(v21);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257524CF4(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_337_0(a1);
  v2 = sub_25749B324(v1);
  OUTLINED_FUNCTION_369_0(v2, v3, v4);

  return sub_257743A64();
}

uint64_t sub_257524EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_337_0(a1);
  v5 = a3(v4);
  OUTLINED_FUNCTION_400_0(v5, v6);
  return sub_257743A64();
}

uint64_t sub_257524F2C(uint64_t a1)
{
  OUTLINED_FUNCTION_280_0(a1);
  OUTLINED_FUNCTION_410_0();
  return sub_257743A64();
}

uint64_t sub_257524F6C(uint64_t a1)
{
  OUTLINED_FUNCTION_280_0(a1);
  v2 = OUTLINED_FUNCTION_336_0(v1);
  MEMORY[0x259C651F0](v2);
  return sub_257743A64();
}

uint64_t sub_257524FB8(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_337_0(a1);
  OUTLINED_FUNCTION_368_0(v1);
  return sub_257743A64();
}

uint64_t sub_257524FF4(uint64_t a1)
{
  OUTLINED_FUNCTION_280_0(a1);
  MEMORY[0x259C651F0](v1 & 1);
  return sub_257743A64();
}

uint64_t sub_257525030(uint64_t a1)
{
  OUTLINED_FUNCTION_280_0(a1);
  OUTLINED_FUNCTION_410_0();
  return sub_257743A64();
}

uint64_t sub_257525070(uint64_t a1)
{
  OUTLINED_FUNCTION_280_0(a1);
  MEMORY[0x259C651F0](v1);
  return sub_257743A64();
}

uint64_t sub_2575250FC(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_391_0();
  }

  sub_257743694();
}