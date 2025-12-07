uint64_t sub_2575D80D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F800, type metadata accessor for Proto_RandomBernoulliStaticLayerParams, &unk_257758370);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D8178(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D918, type metadata accessor for Proto_RandomBernoulliStaticLayerParams, &unk_257761718);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D8240(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D918, type metadata accessor for Proto_RandomBernoulliStaticLayerParams, &unk_257761718);

  return sub_257743424();
}

uint64_t sub_2575D82C0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9AA8);
  __swift_project_value_buffer(v0, qword_27F8E9AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "seed";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "prob";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575D8488()
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
      OUTLINED_FUNCTION_89_2();
      sub_2577432E4();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_53();
      sub_257743324();
    }
  }

  return result;
}

void sub_2575D84EC()
{
  OUTLINED_FUNCTION_188_0();
  v2 = v1;
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_8_6(), sub_257743504(), !v0))
  {
    v3.n128_f32[0] = OUTLINED_FUNCTION_284();
    if (!v4 || (OUTLINED_FUNCTION_64_1(), sub_2577434E4(), !v0))
    {
      v2(0, v3);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2575D8570()
{
  OUTLINED_FUNCTION_104_0();
  if (!v1)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_119_0(v0);
  if (!v1)
  {
    return 0;
  }

  v2(0, v3);
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_1_16();
  v6 = sub_2575FB760(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v6) & 1;
}

uint64_t sub_2575D8660(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F808, type metadata accessor for Proto_RandomBernoulliDynamicLayerParams, &unk_257758280);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D8700(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D900, type metadata accessor for Proto_RandomBernoulliDynamicLayerParams, &unk_2577616A0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D87C8(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D900, type metadata accessor for Proto_RandomBernoulliDynamicLayerParams, &unk_2577616A0);

  return sub_257743424();
}

uint64_t sub_2575D8874()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9AC0);
  __swift_project_value_buffer(v0, qword_27F8E9AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "seed";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "numSamples";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isLogits";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "eps";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "temperature";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575D8AF4()
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
      case 2:
        OUTLINED_FUNCTION_10_7();
        sub_257743324();
        break;
      case 3:
        OUTLINED_FUNCTION_112_1();
        sub_257743274();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_10_7();
        sub_2577432E4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2575D8B9C(uint64_t a1)
{
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_8_6(), result = sub_257743504(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_12_11(), result = sub_257743504(), !v1))
    {
      OUTLINED_FUNCTION_388_0();
      if (!v4 || (OUTLINED_FUNCTION_12_8(), result = sub_2577434B4(), !v1))
      {
        if (!*(v2 + 20) || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v1))
        {
          if (!*(v2 + 24) || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v1))
          {
            type metadata accessor for Proto_CategoricalDistributionLayerParams(0);
            return OUTLINED_FUNCTION_7_5();
          }
        }
      }
    }
  }

  return result;
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV33CategoricalDistributionParametersV2eeoiySbAG_AGtFZ_0()
{
  OUTLINED_FUNCTION_104_0();
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_65_2();
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_246_0();
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_329_0();
  if (!v2 || *(v1 + 24) != *(v0 + 24))
  {
    return 0;
  }

  type metadata accessor for Proto_CategoricalDistributionLayerParams(0);
  OUTLINED_FUNCTION_409_0();
  OUTLINED_FUNCTION_1_16();
  v5 = sub_2575FB760(v3, v4, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v5) & 1;
}

uint64_t sub_2575D8D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F810, type metadata accessor for Proto_CategoricalDistributionLayerParams, &unk_257758190);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D8E00(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D8E8, type metadata accessor for Proto_CategoricalDistributionLayerParams, &unk_257761628);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D8EC8(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D8E8, type metadata accessor for Proto_CategoricalDistributionLayerParams, &unk_257761628);

  return sub_257743424();
}

uint64_t sub_2575D8F48()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9AD8);
  __swift_project_value_buffer(v0, qword_27F8E9AD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axes";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "keepDims";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "reduceAll";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575D91CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EDC0, type metadata accessor for Proto_ReduceL1LayerParams, &unk_2577580A0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D926C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D8D0, type metadata accessor for Proto_ReduceL1LayerParams, &unk_257765570);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D9334(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D8D0, type metadata accessor for Proto_ReduceL1LayerParams, &unk_257765570);

  return sub_257743424();
}

uint64_t sub_2575D93E0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9AF0);
  __swift_project_value_buffer(v0, qword_27F8E9AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axes";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "keepDims";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "reduceAll";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2575D95E8()
{
  OUTLINED_FUNCTION_188_0();
  v3 = v2;
  if (!*(OUTLINED_FUNCTION_6_15() + 16) || (OUTLINED_FUNCTION_8_6(), sub_257743484(), !v0))
  {
    OUTLINED_FUNCTION_349_0();
    if (!v4 || (OUTLINED_FUNCTION_12_11(), sub_2577434B4(), !v0))
    {
      if (*(v1 + 9) != 1 || (OUTLINED_FUNCTION_12_8(), sub_2577434B4(), !v0))
      {
        v3(0);
        OUTLINED_FUNCTION_7_5();
      }
    }
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2575D970C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EDC8, type metadata accessor for Proto_ReduceL2LayerParams, &unk_257757FB0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D97AC(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D8B8, type metadata accessor for Proto_ReduceL2LayerParams, &unk_2577654F8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D9874(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D8B8, type metadata accessor for Proto_ReduceL2LayerParams, &unk_2577654F8);

  return sub_257743424();
}

uint64_t sub_2575D9920()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9B08);
  __swift_project_value_buffer(v0, qword_27F8E9B08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axes";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "keepDims";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "reduceAll";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575D9BA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EDD0, type metadata accessor for Proto_ReduceMaxLayerParams, &unk_257757EC0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D9C44(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D8A0, type metadata accessor for Proto_ReduceMaxLayerParams, &unk_257765480);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D9D0C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D8A0, type metadata accessor for Proto_ReduceMaxLayerParams, &unk_257765480);

  return sub_257743424();
}

uint64_t sub_2575D9DB8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9B20);
  __swift_project_value_buffer(v0, qword_27F8E9B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axes";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "keepDims";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "reduceAll";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575DA03C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EDD8, type metadata accessor for Proto_ReduceMinLayerParams, &unk_257757DD0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DA0DC(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D888, type metadata accessor for Proto_ReduceMinLayerParams, &unk_257765408);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DA1A4(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D888, type metadata accessor for Proto_ReduceMinLayerParams, &unk_257765408);

  return sub_257743424();
}

uint64_t sub_2575DA250()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9B38);
  __swift_project_value_buffer(v0, qword_27F8E9B38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axes";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "keepDims";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "reduceAll";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575DA4D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EDE0, type metadata accessor for Proto_ReduceSumLayerParams, &unk_257757CE0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DA574(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D870, type metadata accessor for Proto_ReduceSumLayerParams, &unk_257765390);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DA63C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D870, type metadata accessor for Proto_ReduceSumLayerParams, &unk_257765390);

  return sub_257743424();
}

uint64_t sub_2575DA6E8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9B50);
  __swift_project_value_buffer(v0, qword_27F8E9B50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axes";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "keepDims";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "reduceAll";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575DA96C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EDE8, type metadata accessor for Proto_ReduceProdLayerParams, &unk_257757BF0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DAA0C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D858, type metadata accessor for Proto_ReduceProdLayerParams, &unk_257765318);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DAAD4(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D858, type metadata accessor for Proto_ReduceProdLayerParams, &unk_257765318);

  return sub_257743424();
}

uint64_t sub_2575DAB80()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9B68);
  __swift_project_value_buffer(v0, qword_27F8E9B68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axes";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "keepDims";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "reduceAll";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575DAE04(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EDF0, type metadata accessor for Proto_ReduceMeanLayerParams, &unk_257757B00);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DAEA4(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D840, type metadata accessor for Proto_ReduceMeanLayerParams, &unk_2577652A0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DAF6C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D840, type metadata accessor for Proto_ReduceMeanLayerParams, &unk_2577652A0);

  return sub_257743424();
}

uint64_t sub_2575DB018()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9B80);
  __swift_project_value_buffer(v0, qword_27F8E9B80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axes";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "keepDims";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "reduceAll";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575DB29C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EDF8, type metadata accessor for Proto_ReduceLogSumLayerParams, &unk_257757A10);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DB33C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D828, type metadata accessor for Proto_ReduceLogSumLayerParams, &unk_257765228);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DB404(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D828, type metadata accessor for Proto_ReduceLogSumLayerParams, &unk_257765228);

  return sub_257743424();
}

uint64_t sub_2575DB4B0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9B98);
  __swift_project_value_buffer(v0, qword_27F8E9B98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axes";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "keepDims";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "reduceAll";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575DB734(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EE00, type metadata accessor for Proto_ReduceSumSquareLayerParams, &unk_257757920);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DB7D4(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D810, type metadata accessor for Proto_ReduceSumSquareLayerParams, &unk_2577651B0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DB89C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D810, type metadata accessor for Proto_ReduceSumSquareLayerParams, &unk_2577651B0);

  return sub_257743424();
}

uint64_t sub_2575DB948()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9BB0);
  __swift_project_value_buffer(v0, qword_27F8E9BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axes";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "keepDims";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "reduceAll";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575DBB50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_7_8(a1);
  if ((sub_257487374() & 1) == 0 || *(v4 + 8) != *(v3 + 8) || *(v4 + 9) != *(v3 + 9))
  {
    return 0;
  }

  a3(0);
  OUTLINED_FUNCTION_327_0();
  OUTLINED_FUNCTION_1_16();
  v9 = sub_2575FB760(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v9) & 1;
}

uint64_t sub_2575DBC68(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EE08, type metadata accessor for Proto_ReduceLogSumExpLayerParams, &unk_257757830);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DBD08(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D7F8, type metadata accessor for Proto_ReduceLogSumExpLayerParams, &unk_257765138);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DBDD0(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D7F8, type metadata accessor for Proto_ReduceLogSumExpLayerParams, &unk_257765138);

  return sub_257743424();
}

uint64_t sub_2575DBF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EE80, type metadata accessor for Proto_ExpandDimsLayerParams, &unk_257757740);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DBFCC(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D7E0, type metadata accessor for Proto_ExpandDimsLayerParams, &unk_257764B20);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DC094(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D7E0, type metadata accessor for Proto_ExpandDimsLayerParams, &unk_257764B20);

  return sub_257743424();
}

uint64_t sub_2575DC170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_104_0();
  if (!v3)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_0_0();
  v5(v4);
  OUTLINED_FUNCTION_95_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_1_16();
  v8 = sub_2575FB760(v6, v7, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v8) & 1;
}

uint64_t sub_2575DC27C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EFE8, type metadata accessor for Proto_FlattenTo2DLayerParams, &unk_257757690);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DC31C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D7D0, type metadata accessor for Proto_FlattenTo2DLayerParams, &unk_257763950);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DC3E4(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D7D0, type metadata accessor for Proto_FlattenTo2DLayerParams, &unk_257763950);

  return sub_257743424();
}

uint64_t sub_2575DC4AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = OUTLINED_FUNCTION_7_8(a1);
  if ((v6(v5) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  OUTLINED_FUNCTION_95_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_1_16();
  v9 = sub_2575FB760(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v9) & 1;
}

uint64_t sub_2575DC5C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F120, type metadata accessor for Proto_ReshapeStaticLayerParams, &unk_2577575A0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DC664(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D7B8, type metadata accessor for Proto_ReshapeStaticLayerParams, &unk_257762D20);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DC72C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D7B8, type metadata accessor for Proto_ReshapeStaticLayerParams, &unk_257762D20);

  return sub_257743424();
}

uint64_t sub_2575DC814(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EFF0, type metadata accessor for Proto_ReshapeLikeLayerParams, &unk_2577574B0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DC8B4(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D7A0, type metadata accessor for Proto_ReshapeLikeLayerParams, &unk_2577638D8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DC97C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D7A0, type metadata accessor for Proto_ReshapeLikeLayerParams, &unk_2577638D8);

  return sub_257743424();
}

uint64_t sub_2575DCA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EFF8, type metadata accessor for Proto_ReshapeDynamicLayerParams, &unk_2577573C0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DCAC0(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D788, type metadata accessor for Proto_ReshapeDynamicLayerParams, &unk_257763860);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DCB88(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D788, type metadata accessor for Proto_ReshapeDynamicLayerParams, &unk_257763860);

  return sub_257743424();
}

uint64_t sub_2575DCC04()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9C40);
  __swift_project_value_buffer(v0, qword_27F8E9C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axes";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "squeezeAll";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575DCDCC(uint64_t a1)
{
  if (!*(OUTLINED_FUNCTION_6_15() + 16) || (OUTLINED_FUNCTION_8_6(), result = sub_257743484(), !v1))
  {
    OUTLINED_FUNCTION_349_0();
    if (!v3 || (OUTLINED_FUNCTION_12_11(), result = sub_2577434B4(), !v1))
    {
      type metadata accessor for Proto_SqueezeLayerParams(0);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_2575DCE48(uint64_t a1)
{
  OUTLINED_FUNCTION_7_8(a1);
  if ((sub_257487374() & 1) == 0 || *(v2 + 8) != *(v1 + 8))
  {
    return 0;
  }

  type metadata accessor for Proto_SqueezeLayerParams(0);
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_1_16();
  v6 = sub_2575FB760(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v6) & 1;
}

uint64_t sub_2575DCF60(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EEC0, type metadata accessor for Proto_SqueezeLayerParams, &unk_2577572D0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DD000(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D770, type metadata accessor for Proto_SqueezeLayerParams, &unk_257764850);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DD0C8(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D770, type metadata accessor for Proto_SqueezeLayerParams, &unk_257764850);

  return sub_257743424();
}

uint64_t sub_2575DD148()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9C58);
  __swift_project_value_buffer(v0, qword_27F8E9C58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axis";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "K";
  *(v10 + 1) = 1;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "useBottomK";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575DD350()
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
      case 3:
        OUTLINED_FUNCTION_112_1();
        sub_257743274();
        break;
      case 2:
        OUTLINED_FUNCTION_89_2();
        sub_2577433B4();
        break;
      case 1:
        OUTLINED_FUNCTION_53();
        sub_257743324();
        break;
    }
  }

  return result;
}

uint64_t sub_2575DD3CC(uint64_t a1)
{
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_8_6(), result = sub_257743504(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_12_11(), result = sub_257743554(), !v1))
    {
      OUTLINED_FUNCTION_388_0();
      if (!v4 || (OUTLINED_FUNCTION_12_8(), result = sub_2577434B4(), !v1))
      {
        type metadata accessor for Proto_TopKLayerParams(0);
        return OUTLINED_FUNCTION_7_5();
      }
    }
  }

  return result;
}

uint64_t sub_2575DD460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_104_0();
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_65_2();
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_246_0();
  if (!v4)
  {
    return 0;
  }

  type metadata accessor for Proto_TopKLayerParams(0);
  OUTLINED_FUNCTION_327_0();
  OUTLINED_FUNCTION_1_16();
  v8 = sub_2575FB760(v6, v7, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v8) & 1;
}

uint64_t sub_2575DD530(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F750, type metadata accessor for Proto_TopKLayerParams, &unk_2577571E0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DD5D0(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D758, type metadata accessor for Proto_TopKLayerParams, &unk_257762000);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DD698(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D758, type metadata accessor for Proto_TopKLayerParams, &unk_257762000);

  return sub_257743424();
}

uint64_t sub_2575DD718()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9C70);
  __swift_project_value_buffer(v0, qword_27F8E9C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axis";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "removeDim";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2575DD8E0()
{
  OUTLINED_FUNCTION_188_0();
  v2 = v1;
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_8_6(), sub_257743504(), !v0))
  {
    OUTLINED_FUNCTION_349_0();
    if (!v3 || (OUTLINED_FUNCTION_12_11(), sub_2577434B4(), !v0))
    {
      v2(0);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2575DD9D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EE60, type metadata accessor for Proto_ArgMaxLayerParams, &unk_2577570F0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DDA78(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D740, type metadata accessor for Proto_ArgMaxLayerParams, &unk_257764D00);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DDB40(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D740, type metadata accessor for Proto_ArgMaxLayerParams, &unk_257764D00);

  return sub_257743424();
}

uint64_t sub_2575DDBEC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9C88);
  __swift_project_value_buffer(v0, qword_27F8E9C88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axis";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "removeDim";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575DDE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EE58, type metadata accessor for Proto_ArgMinLayerParams, &unk_257757000);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DDECC(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D728, type metadata accessor for Proto_ArgMinLayerParams, &unk_257764D78);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DDF94(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D728, type metadata accessor for Proto_ArgMinLayerParams, &unk_257764D78);

  return sub_257743424();
}

uint64_t sub_2575DE040()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9CA0);
  __swift_project_value_buffer(v0, qword_27F8E9CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axis";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "numSplits";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "splitSizes";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575DE248(uint64_t a1)
{
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_8_6(), result = sub_257743504(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_12_11(), result = sub_257743554(), !v1))
    {
      OUTLINED_FUNCTION_307_0();
      if (!v4 || (OUTLINED_FUNCTION_12_8(), result = sub_2577434A4(), !v1))
      {
        type metadata accessor for Proto_SplitNDLayerParams(0);
        return OUTLINED_FUNCTION_7_5();
      }
    }
  }

  return result;
}

uint64_t sub_2575DE2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_104_0();
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_65_2();
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_269_0();
  if ((sub_257487374() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_SplitNDLayerParams(0);
  OUTLINED_FUNCTION_327_0();
  OUTLINED_FUNCTION_1_16();
  v7 = sub_2575FB760(v5, v6, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v7) & 1;
}

uint64_t sub_2575DE3C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F780, type metadata accessor for Proto_SplitNDLayerParams, &unk_257756F10);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DE460(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D710, type metadata accessor for Proto_SplitNDLayerParams, &unk_257761D30);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DE528(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D710, type metadata accessor for Proto_SplitNDLayerParams, &unk_257761D30);

  return sub_257743424();
}

uint64_t sub_2575DE5D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F8F0, type metadata accessor for Proto_CeilLayerParams, &unk_257756DE8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DE670(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D6F8, type metadata accessor for Proto_CeilLayerParams, &unk_257756E20);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DE738(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D6F8, type metadata accessor for Proto_CeilLayerParams, &unk_257756E20);

  return sub_257743424();
}

uint64_t sub_2575DE7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F8F8, type metadata accessor for Proto_RoundLayerParams, &unk_257756C80);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DE87C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D6D8, type metadata accessor for Proto_RoundLayerParams, &unk_257756CB8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DE944(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D6D8, type metadata accessor for Proto_RoundLayerParams, &unk_257756CB8);

  return sub_257743424();
}

uint64_t sub_2575DE9E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F900, type metadata accessor for Proto_FloorLayerParams, &unk_257756B18);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DEA88(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D6B8, type metadata accessor for Proto_FloorLayerParams, &unk_257756B50);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DEB50(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D6B8, type metadata accessor for Proto_FloorLayerParams, &unk_257756B50);

  return sub_257743424();
}

uint64_t sub_2575DEBF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F908, type metadata accessor for Proto_SignLayerParams, &unk_2577569B0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DEC94(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D698, type metadata accessor for Proto_SignLayerParams, &unk_2577569E8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DED5C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D698, type metadata accessor for Proto_SignLayerParams, &unk_2577569E8);

  return sub_257743424();
}

uint64_t sub_2575DEDD8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9D18);
  __swift_project_value_buffer(v0, qword_27F8E9D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "minVal";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "maxVal";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575DF01C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ED98, type metadata accessor for Proto_ClipLayerParams, &unk_2577568C0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DF0BC(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D680, type metadata accessor for Proto_ClipLayerParams, &unk_2577657C8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DF184(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D680, type metadata accessor for Proto_ClipLayerParams, &unk_2577657C8);

  return sub_257743424();
}

uint64_t sub_2575DF230()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9D30);
  __swift_project_value_buffer(v0, qword_27F8E9D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257745520;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "beginIds";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "beginMasks";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "endIds";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "endMasks";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "strides";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "squeezeMasks";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575DF4F0()
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
      case 3:
      case 5:
        OUTLINED_FUNCTION_10_7();
        sub_2577432B4();
        break;
      case 2:
      case 4:
      case 6:
        OUTLINED_FUNCTION_10_7();
        sub_257743254();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2575DF598(uint64_t a1)
{
  if (!*(OUTLINED_FUNCTION_6_15() + 16) || (OUTLINED_FUNCTION_8_6(), result = sub_257743484(), !v1))
  {
    OUTLINED_FUNCTION_285_0();
    if (!v4 || (OUTLINED_FUNCTION_12_11(), result = sub_257743454(), !v1))
    {
      OUTLINED_FUNCTION_307_0();
      if (!v5 || (OUTLINED_FUNCTION_12_8(), result = sub_257743484(), !v1))
      {
        if (!*(v2[3] + 16) || (OUTLINED_FUNCTION_12_8(), result = sub_257743454(), !v1))
        {
          if (!*(v2[4] + 16) || (OUTLINED_FUNCTION_12_8(), result = sub_257743484(), !v1))
          {
            if (!*(v2[5] + 16) || (OUTLINED_FUNCTION_12_8(), result = sub_257743454(), !v1))
            {
              type metadata accessor for Proto_SliceStaticLayerParams(0);
              return OUTLINED_FUNCTION_7_5();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV21SliceStaticParametersV2eeoiySbAG_AGtFZ_0(uint64_t a1)
{
  OUTLINED_FUNCTION_7_8(a1);
  if ((sub_257487374() & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_393_0();
  if ((sub_257479C08(v3, v4) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_269_0();
  if ((sub_257487374() & 1) == 0)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_182_0();
  if ((sub_257479C08(v5, v6) & 1) == 0 || (sub_257487374() & 1) == 0 || (sub_257479C08(*(v2 + 40), *(v1 + 40)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_SliceStaticLayerParams(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_1_16();
  v9 = sub_2575FB760(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v9) & 1;
}

uint64_t sub_2575DF79C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EF18, type metadata accessor for Proto_SliceStaticLayerParams, &unk_257756810);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DF83C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D670, type metadata accessor for Proto_SliceStaticLayerParams, &unk_257764418);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575DF904(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D670, type metadata accessor for Proto_SliceStaticLayerParams, &unk_257764418);

  return sub_257743424();
}

uint64_t sub_2575DF984()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9D48);
  __swift_project_value_buffer(v0, qword_27F8E9D48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "beginMasks";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "endIds";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "endMasks";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "strides";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "squeezeMasks";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575DFC04()
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
      case 2:
      case 4:
      case 6:
        OUTLINED_FUNCTION_10_7();
        sub_257743254();
        break;
      case 3:
      case 5:
        OUTLINED_FUNCTION_10_7();
        sub_2577432B4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2575DFCA4(uint64_t a1)
{
  if (!*(OUTLINED_FUNCTION_6_15() + 16) || (OUTLINED_FUNCTION_12_11(), result = sub_257743454(), !v1))
  {
    OUTLINED_FUNCTION_285_0();
    if (!v4 || (OUTLINED_FUNCTION_12_8(), result = sub_257743484(), !v1))
    {
      OUTLINED_FUNCTION_307_0();
      if (!v5 || (OUTLINED_FUNCTION_12_8(), result = sub_257743454(), !v1))
      {
        if (!*(*(v2 + 24) + 16) || (OUTLINED_FUNCTION_12_8(), result = sub_257743484(), !v1))
        {
          if (!*(*(v2 + 32) + 16) || (OUTLINED_FUNCTION_12_8(), result = sub_257743454(), !v1))
          {
            type metadata accessor for Proto_SliceDynamicLayerParams(0);
            return OUTLINED_FUNCTION_7_5();
          }
        }
      }
    }
  }

  return result;
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV22SliceDynamicParametersV2eeoiySbAG_AGtFZ_0(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_7_8(a1);
  if ((sub_257479C08(v3, v4) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_393_0();
  if ((sub_257487374() & 1) == 0)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_269_0();
  if ((sub_257479C08(v5, v6) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_182_0();
  if ((sub_257487374() & 1) == 0 || (sub_257479C08(*(v2 + 32), *(v1 + 32)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_SliceDynamicLayerParams(0);
  OUTLINED_FUNCTION_409_0();
  OUTLINED_FUNCTION_1_16();
  v9 = sub_2575FB760(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v9) & 1;
}

uint64_t sub_2575DFE44()
{
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_77_0();

  return v1(v0);
}

uint64_t sub_2575DFEA8()
{
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_311_0();

  return v1(v0);
}

uint64_t sub_2575DFF40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EF20, type metadata accessor for Proto_SliceDynamicLayerParams, &unk_257756720);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575DFFE0(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D658, type metadata accessor for Proto_SliceDynamicLayerParams, &unk_2577643A0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E00A8(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D658, type metadata accessor for Proto_SliceDynamicLayerParams, &unk_2577643A0);

  return sub_257743424();
}

uint64_t sub_2575E0144()
{
  OUTLINED_FUNCTION_18_4();
  while (1)
  {
    OUTLINED_FUNCTION_294();
    result = sub_257743234();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_148_1();
      v0();
    }
  }

  return result;
}

uint64_t sub_2575E0234(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ED48, type metadata accessor for Proto_TileLayerParams, &unk_257756630);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E02D4(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87A268, type metadata accessor for Proto_TileLayerParams, &unk_257765C78);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E039C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87A268, type metadata accessor for Proto_TileLayerParams, &unk_257765C78);

  return sub_257743424();
}

uint64_t sub_2575E0484(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F910, type metadata accessor for Proto_GetShapeLayerParams, &unk_2577564C8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E0524(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D628, type metadata accessor for Proto_GetShapeLayerParams, &unk_257756500);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E05EC(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D628, type metadata accessor for Proto_GetShapeLayerParams, &unk_257756500);

  return sub_257743424();
}

uint64_t sub_2575E0674()
{
  OUTLINED_FUNCTION_0_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_1_16();
  sub_2575FB760(v0, v1, MEMORY[0x277D216D0]);
  v2 = OUTLINED_FUNCTION_44_1();
  return OUTLINED_FUNCTION_266_0(v2, v3, v4, v5) & 1;
}

uint64_t sub_2575E06F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F918, type metadata accessor for Proto_ErfLayerParams, &unk_257756360);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E0794(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D608, type metadata accessor for Proto_ErfLayerParams, &unk_257756398);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E085C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D608, type metadata accessor for Proto_ErfLayerParams, &unk_257756398);

  return sub_257743424();
}

uint64_t sub_2575E08F4()
{
  OUTLINED_FUNCTION_382_0();
  v3 = v2;
  v5 = v4;
  v6 = sub_2577435B4();
  __swift_allocate_value_buffer(v6, v5);
  __swift_project_value_buffer(v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v8 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2577442B0;
  v10 = v9 + v8 + v7[14];
  *(v9 + v8) = v3;
  *v10 = v1;
  *(v10 + 8) = v0;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21870];
  sub_257743584();
  OUTLINED_FUNCTION_4();
  (*(v12 + 104))(v10, v11);
  return sub_257743594();
}

uint64_t sub_2575E0A5C()
{
  OUTLINED_FUNCTION_18_4();
  while (1)
  {
    OUTLINED_FUNCTION_294();
    result = sub_257743234();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_291_0();
      v0();
    }
  }

  return result;
}

uint64_t sub_2575E0B20()
{
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_386_0();
  if (v2)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        if (v0 == 1)
        {
LABEL_8:
          type metadata accessor for Proto_GeluLayerParams(0);
          OUTLINED_FUNCTION_95_0();
          sub_2577431B4();
          OUTLINED_FUNCTION_1_16();
          v5 = sub_2575FB760(v3, v4, MEMORY[0x277D216D0]);
          return OUTLINED_FUNCTION_4_2(v5) & 1;
        }
      }

      else if (v0 == 2)
      {
        goto LABEL_8;
      }
    }

    else if (!v0)
    {
      goto LABEL_8;
    }
  }

  else if (v0 == v1)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_2575E0C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F7A8, type metadata accessor for Proto_GeluLayerParams, &unk_257756270);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E0D24(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D5F0, type metadata accessor for Proto_GeluLayerParams, &unk_257761BC8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E0DEC(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D5F0, type metadata accessor for Proto_GeluLayerParams, &unk_257761BC8);

  return sub_257743424();
}

uint64_t sub_2575E0E6C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9DC0);
  __swift_project_value_buffer(v0, qword_27F8E9DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "EXACT";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TANH_APPROXIMATION";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SIGMOID_APPROXIMATION";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575E1094()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9DD8);
  __swift_project_value_buffer(v0, qword_27F8E9DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "endValue";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "startValue";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "stepSizeValue";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575E129C()
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

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_2577432E4();
    }
  }

  return result;
}

uint64_t sub_2575E130C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_267_0();
  if (!v1 || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v0))
  {
    OUTLINED_FUNCTION_305_0();
    if (!v3 || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v0))
    {
      OUTLINED_FUNCTION_284();
      if (!v4 || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v0))
      {
        type metadata accessor for Proto_RangeStaticLayerParams(0);
        return OUTLINED_FUNCTION_7_5();
      }
    }
  }

  return result;
}

uint64_t sub_2575E13B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_164_1(a1);
  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_83_1(v4);
  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_334_0();
  if (!v5)
  {
    return 0;
  }

  type metadata accessor for Proto_RangeStaticLayerParams(0);
  OUTLINED_FUNCTION_327_0();
  OUTLINED_FUNCTION_1_16();
  v8 = sub_2575FB760(v6, v7, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v8) & 1;
}

uint64_t sub_2575E1484(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F138, type metadata accessor for Proto_RangeStaticLayerParams, &unk_257756198);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E1524(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D5E0, type metadata accessor for Proto_RangeStaticLayerParams, &unk_257762C30);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E15EC(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D5E0, type metadata accessor for Proto_RangeStaticLayerParams, &unk_257762C30);

  return sub_257743424();
}

uint64_t sub_2575E166C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9DF0);
  __swift_project_value_buffer(v0, qword_27F8E9DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "startValue";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "stepSizeValue";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575E1834()
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

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_10_7();
      sub_2577432E4();
    }
  }

  return result;
}

uint64_t sub_2575E1928(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F140, type metadata accessor for Proto_RangeDynamicLayerParams, &unk_2577560A8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E19C8(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D5C8, type metadata accessor for Proto_RangeDynamicLayerParams, &unk_257762BB8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E1A90(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D5C8, type metadata accessor for Proto_RangeDynamicLayerParams, &unk_257762BB8);

  return sub_257743424();
}

uint64_t sub_2575E1B3C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9E08);
  __swift_project_value_buffer(v0, qword_27F8E9E08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axis";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "windowSize";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "step";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575E1D44()
{
  OUTLINED_FUNCTION_18_4();
  while (1)
  {
    OUTLINED_FUNCTION_294();
    result = sub_257743234();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_148_1();
        v0();
        break;
      case 2:
        OUTLINED_FUNCTION_148_1();
        sub_2577433B4();
        break;
      case 1:
        OUTLINED_FUNCTION_148_1();
        sub_257743324();
        break;
    }
  }

  return result;
}

uint64_t sub_2575E1DD8(uint64_t a1)
{
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_8_6(), result = sub_257743504(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_12_11(), result = sub_257743554(), !v1))
    {
      if (!*(v2 + 16) || (OUTLINED_FUNCTION_12_8(), result = sub_257743554(), !v1))
      {
        type metadata accessor for Proto_SlidingWindowsLayerParams(0);
        return OUTLINED_FUNCTION_7_5();
      }
    }
  }

  return result;
}

uint64_t sub_2575E1E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_104_0();
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_65_2();
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_332_0();
  if (!v4)
  {
    return 0;
  }

  type metadata accessor for Proto_SlidingWindowsLayerParams(0);
  OUTLINED_FUNCTION_327_0();
  OUTLINED_FUNCTION_1_16();
  v7 = sub_2575FB760(v5, v6, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v7) & 1;
}

uint64_t sub_2575E1F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EF28, type metadata accessor for Proto_SlidingWindowsLayerParams, &unk_257755FB8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E1FEC(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D5B0, type metadata accessor for Proto_SlidingWindowsLayerParams, &unk_257764328);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E20B4(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D5B0, type metadata accessor for Proto_SlidingWindowsLayerParams, &unk_257764328);

  return sub_257743424();
}

uint64_t sub_2575E2134()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9E20);
  __swift_project_value_buffer(v0, qword_27F8E9E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "normalizedShape";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "eps";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "gamma";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "beta";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575E23A4()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__gamma;
  v2 = type metadata accessor for Proto_WeightParams(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__beta, 1, 1, v2);
  return v0;
}

uint64_t sub_2575E2420(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v3 - 8);
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = 0;
  v4 = OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__gamma;
  v5 = type metadata accessor for Proto_WeightParams(0);
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__beta, 1, 1, v5);
  swift_beginAccess();
  v6 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v6;
  swift_beginAccess();
  v7 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v7;
  v8 = OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__gamma;
  swift_beginAccess();
  sub_257487308(a1 + v8);
  swift_beginAccess();

  sub_25751BB28();
  swift_endAccess();
  v9 = OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__beta;
  swift_beginAccess();
  sub_257487308(a1 + v9);

  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  return v1;
}

uint64_t sub_2575E2654()
{

  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__gamma, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__beta, &qword_27F87A1A0, &qword_257745750);
  return v0;
}

void sub_2575E2704(uint64_t a1)
{
  sub_25759B3F4(319, &qword_27F87BFC0, type metadata accessor for Proto_WeightParams, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2575E27E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_257743234();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_2575E28E8(a2, a1, a3, a4, MEMORY[0x277D21758]);
        break;
      case 2:
        sub_2575E293C(a2, a1, a3, a4, MEMORY[0x277D21778]);
        break;
      case 3:
        sub_2575E2990(a2, a1, a3, a4);
        break;
      case 4:
        sub_2575E2A6C(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

void sub_2575E28E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_404_0();
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_82_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_111_1();
  v6 = v5();
  OUTLINED_FUNCTION_306_0(v6);
  OUTLINED_FUNCTION_405_0();
}

void sub_2575E293C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_404_0();
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_82_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_111_1();
  v6 = v5();
  OUTLINED_FUNCTION_306_0(v6);
  OUTLINED_FUNCTION_405_0();
}

uint64_t sub_2575E2990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575E2A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575E2B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(*(a1 + 16) + 16) || (, sub_257743484(), result = , !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 24) || (result = sub_2577434E4(), !v4))
    {
      result = sub_2575E2C58(a1, a2, a3, a4);
      if (!v4)
      {
        return sub_2575E2E4C(a1, a2, a3, a4);
      }
    }
  }

  return result;
}

uint64_t sub_2575E2C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__gamma;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A1A0, &qword_257745750);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_2575E2E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__beta;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A1A0, &qword_257745750);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_257743574();
  return sub_257609BCC();
}

BOOL sub_2575E306C(uint64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v41);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA30, &qword_2577673D8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v40 = v38 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v20 = v38 - v19;
  swift_beginAccess();
  swift_beginAccess();
  if ((sub_257487374() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v21 = *(a1 + 24);
  swift_beginAccess();
  if (v21 != *(a2 + 24))
  {
    return 0;
  }

  v38[0] = v15;
  v38[1] = v5;
  v39 = v9;
  v22 = OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__gamma;
  swift_beginAccess();
  sub_257487308(a1 + v22);
  v23 = OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__gamma;
  swift_beginAccess();
  v24 = *(v6 + 48);
  sub_257487308(v20);
  sub_257487308(a2 + v23);
  v25 = v41;
  if (__swift_getEnumTagSinglePayload(v11, 1, v41) == 1)
  {

    sub_2574695E4(v20, &qword_27F87A1A0, &qword_257745750);
    if (__swift_getEnumTagSinglePayload(&v11[v24], 1, v25) == 1)
    {
      sub_2574695E4(v11, &qword_27F87A1A0, &qword_257745750);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  sub_257487308(v11);
  if (__swift_getEnumTagSinglePayload(&v11[v24], 1, v25) == 1)
  {

    sub_2574695E4(v20, &qword_27F87A1A0, &qword_257745750);
    sub_257609BCC();
LABEL_8:
    sub_2574695E4(v11, &qword_27F87FA30, &qword_2577673D8);
LABEL_9:

    return 0;
  }

  sub_257609B78();

  sub_257598490();
  v27 = v26;
  sub_257609BCC();
  sub_2574695E4(v20, &qword_27F87A1A0, &qword_257745750);
  sub_257609BCC();
  sub_2574695E4(v11, &qword_27F87A1A0, &qword_257745750);
  if ((v27 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_11:
  v28 = OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__beta;
  swift_beginAccess();
  v29 = v40;
  sub_257487308(a1 + v28);
  v30 = OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__beta;
  swift_beginAccess();
  v31 = *(v6 + 48);
  v32 = v39;
  sub_257487308(v29);
  v33 = a2 + v30;
  v34 = v41;
  sub_257487308(v33);
  if (__swift_getEnumTagSinglePayload(v32, 1, v34) != 1)
  {
    sub_257487308(v32);
    if (__swift_getEnumTagSinglePayload(v32 + v31, 1, v34) == 1)
    {

      sub_2574695E4(v29, &qword_27F87A1A0, &qword_257745750);
      sub_257609BCC();
      goto LABEL_16;
    }

    sub_257609B78();
    sub_257598490();
    v37 = v36;

    sub_257609BCC();
    sub_2574695E4(v29, &qword_27F87A1A0, &qword_257745750);
    sub_257609BCC();
    sub_2574695E4(v32, &qword_27F87A1A0, &qword_257745750);
    return (v37 & 1) != 0;
  }

  sub_2574695E4(v29, &qword_27F87A1A0, &qword_257745750);
  if (__swift_getEnumTagSinglePayload(v32 + v31, 1, v34) != 1)
  {
LABEL_16:
    sub_2574695E4(v32, &qword_27F87FA30, &qword_2577673D8);
    return 0;
  }

  sub_2574695E4(v32, &qword_27F87A1A0, &qword_257745750);
  return 1;
}

uint64_t sub_2575E3884(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EED8, type metadata accessor for Proto_LayerNormalizationLayerParams, &unk_257755EC8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E3924(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D598, type metadata accessor for Proto_LayerNormalizationLayerParams, &unk_2577646E8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E39EC(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D598, type metadata accessor for Proto_LayerNormalizationLayerParams, &unk_2577646E8);

  return sub_257743424();
}

uint64_t sub_2575E3AAC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9E38);
  __swift_project_value_buffer(v0, qword_27F8E9E38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "iouThreshold";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "scoreThreshold";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "maxBoxes";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "perClassSuppression";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575E3CF0()
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
      case 2:
        OUTLINED_FUNCTION_10_7();
        sub_2577432E4();
        break;
      case 3:
        OUTLINED_FUNCTION_89_2();
        sub_2577433B4();
        break;
      case 4:
        OUTLINED_FUNCTION_112_1();
        sub_257743274();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2575E3D8C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_267_0();
  if (!v2 || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v0))
  {
    OUTLINED_FUNCTION_305_0();
    if (!v4 || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v0))
    {
      if (!*(v1 + 8) || (OUTLINED_FUNCTION_12_8(), result = sub_257743554(), !v0))
      {
        OUTLINED_FUNCTION_388_0();
        if (!v5 || (OUTLINED_FUNCTION_12_8(), result = sub_2577434B4(), !v0))
        {
          type metadata accessor for Proto_NonMaximumSuppressionLayerParams(0);
          return OUTLINED_FUNCTION_7_5();
        }
      }
    }
  }

  return result;
}

uint64_t sub_2575E3E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_164_1(a1);
  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_83_1(v4);
  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_330_0();
  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_246_0();
  if (!v5)
  {
    return 0;
  }

  type metadata accessor for Proto_NonMaximumSuppressionLayerParams(0);
  OUTLINED_FUNCTION_189_0();
  OUTLINED_FUNCTION_1_16();
  v9 = sub_2575FB760(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v9) & 1;
}

uint64_t sub_2575E3F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F760, type metadata accessor for Proto_NonMaximumSuppressionLayerParams, &unk_257755DD8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E3FC8(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D580, type metadata accessor for Proto_NonMaximumSuppressionLayerParams, &unk_257761F10);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E4090(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D580, type metadata accessor for Proto_NonMaximumSuppressionLayerParams, &unk_257761F10);

  return sub_257743424();
}

uint64_t sub_2575E4110()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9E50);
  __swift_project_value_buffer(v0, qword_27F8E9E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "alpha";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "beta";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575E42D8()
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

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_2577432E4();
    }
  }

  return result;
}

uint64_t sub_2575E4338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_164_1(a1);
  if (!v5)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_83_1(v4);
  if (!v5)
  {
    return 0;
  }

  v6(0, v7);
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_1_16();
  v10 = sub_2575FB760(v8, v9, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v10) & 1;
}

uint64_t sub_2575E4430(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F0B0, type metadata accessor for Proto_ClampedReLULayerParams, &unk_257755CE8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E44D0(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D568, type metadata accessor for Proto_ClampedReLULayerParams, &unk_2577633B0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E4598(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D568, type metadata accessor for Proto_ClampedReLULayerParams, &unk_2577633B0);

  return sub_257743424();
}

uint64_t sub_2575E4644()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9E68);
  __swift_project_value_buffer(v0, qword_27F8E9E68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axis";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "descending";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575E480C()
{
  OUTLINED_FUNCTION_18_4();
  while (1)
  {
    OUTLINED_FUNCTION_294();
    result = sub_257743234();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_148_1();
      sub_257743274();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_148_1();
      v0();
    }
  }

  return result;
}

uint64_t sub_2575E4884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_104_0();
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_267();
  if (*(v6 + 8) != *(v7 + 8))
  {
    return 0;
  }

  v5(0);
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_1_16();
  v11 = sub_2575FB760(v9, v10, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v11) & 1;
}

uint64_t sub_2575E4984(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F770, type metadata accessor for Proto_ArgSortLayerParams, &unk_257755BF8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E4A24(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D550, type metadata accessor for Proto_ArgSortLayerParams, &unk_257761E20);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E4AEC(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D550, type metadata accessor for Proto_ArgSortLayerParams, &unk_257761E20);

  return sub_257743424();
}

uint64_t sub_2575E4B98()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9E80);
  __swift_project_value_buffer(v0, qword_27F8E9E80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "size";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "axis";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575E4D60()
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

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743324();
    }
  }

  return result;
}

uint64_t sub_2575E4DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_104_0();
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_65_2();
  if (!v4)
  {
    return 0;
  }

  v5(0);
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_1_16();
  v8 = sub_2575FB760(v6, v7, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v8) & 1;
}

uint64_t sub_2575E4EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EF10, type metadata accessor for Proto_SliceBySizeLayerParams, &unk_257755B08);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E4F84(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D538, type metadata accessor for Proto_SliceBySizeLayerParams, &unk_257764490);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E504C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D538, type metadata accessor for Proto_SliceBySizeLayerParams, &unk_257764490);

  return sub_257743424();
}

uint64_t sub_2575E50F8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9E98);
  __swift_project_value_buffer(v0, qword_27F8E9E98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577503A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "layers";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "preprocessing";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "arrayInputShapeMapping";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "imageInputShapeMapping";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "updateParams";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 100;
  *v18 = "stringClassLabels";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 101;
  *v20 = "int64ClassLabels";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 200;
  *v22 = "labelProbabilityLayerName";
  *(v22 + 1) = 25;
  v22[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2575E5440()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    v1 = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_6_8();
        sub_2575E8334();
        break;
      case 2:
        OUTLINED_FUNCTION_6_8();
        sub_2575E839C();
        break;
      case 3:
      case 4:
      case 7:
      case 8:
      case 9:
        continue;
      case 5:
        OUTLINED_FUNCTION_6_8();
        sub_257453C04();
        break;
      case 6:
        OUTLINED_FUNCTION_6_8();
        sub_257453C54();
        break;
      case 10:
        v5 = OUTLINED_FUNCTION_6_8();
        sub_2575E5588(v5, v6, v7, v8);
        break;
      default:
        switch(v1)
        {
          case 100:
            v13 = OUTLINED_FUNCTION_6_10();
            sub_2575E563C(v13, v14, v15, v16);
            break;
          case 101:
            v9 = OUTLINED_FUNCTION_6_10();
            sub_2575E5B40(v9, v10, v11, v12);
            break;
          case 200:
            v3 = OUTLINED_FUNCTION_6_8();
            sub_2575E6044(v3, v4);
            break;
        }

        break;
    }
  }
}

uint64_t sub_2575E5588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_NeuralNetworkClassifier(0);
  type metadata accessor for Proto_NetworkUpdateParameters(0);
  sub_2575FB760(&qword_27F87D4C8, type metadata accessor for Proto_NetworkUpdateParameters, &unk_257755618);
  return sub_2577433D4();
}

uint64_t sub_2575E563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA28, &unk_2577700F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A878, &unk_257748700);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for Proto_NeuralNetworkClassifier(0) + 32);
  v26 = a1;
  sub_257487308(a1 + v25);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87CA28, &unk_2577700F0);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609BCC();
    }

    else
    {
      sub_2574695E4(v18, &qword_27F87A878, &unk_257748700);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_2575FB760(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);
  v19 = v30;
  sub_2577433D4();
  if (v19)
  {
    v20 = v18;
    return sub_2574695E4(v20, &qword_27F87A878, &unk_257748700);
  }

  sub_257487308(v18);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_2574695E4(v18, &qword_27F87A878, &unk_257748700);
    v20 = v16;
    return sub_2574695E4(v20, &qword_27F87A878, &unk_257748700);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v22 = v28;
  sub_2574695E4(v18, &qword_27F87A878, &unk_257748700);
  v24 = v25;
  v23 = v26;
  sub_2574695E4(v26 + v25, &qword_27F87CA28, &unk_2577700F0);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t sub_2575E5B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for Proto_Int64Vector(0);
  v6 = MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA28, &unk_2577700F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A880, &qword_25774AFD0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for Proto_NeuralNetworkClassifier(0) + 32);
  v26 = a1;
  sub_257487308(a1 + v25);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87CA28, &unk_2577700F0);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v18, &qword_27F87A880, &qword_25774AFD0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_281537E60, type metadata accessor for Proto_Int64Vector, &unk_257747CFC);
  v19 = v30;
  sub_2577433D4();
  if (v19)
  {
    v20 = v18;
    return sub_2574695E4(v20, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_257487308(v18);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_2574695E4(v18, &qword_27F87A880, &qword_25774AFD0);
    v20 = v16;
    return sub_2574695E4(v20, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v22 = v28;
  sub_2574695E4(v18, &qword_27F87A880, &qword_25774AFD0);
  v24 = v25;
  v23 = v26;
  sub_2574695E4(v26 + v25, &qword_27F87CA28, &unk_2577700F0);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

void sub_2575E60A8()
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_2_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA28, &unk_2577700F0);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_32_4();
  if (!*(*v0 + 16) || (type metadata accessor for Proto_NeuralNetworkLayer(0), OUTLINED_FUNCTION_205_0(), sub_2575FB760(v5, v6, &unk_257762528), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_27_4(), sub_257743564(), !v1))
  {
    if (!*(v2[1] + 16) || (type metadata accessor for Proto_NeuralNetworkPreprocessing(0), OUTLINED_FUNCTION_92_1(), sub_2575FB760(v7, v8, &unk_2577660B0), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_27_4(), sub_257743564(), !v1))
    {
      if (!v2[2] || (sub_257609C20(), OUTLINED_FUNCTION_27_4(), sub_2577434C4(), !v1))
      {
        if (!v2[4] || (sub_257609C74(), OUTLINED_FUNCTION_27_4(), sub_2577434C4(), !v1))
        {
          v9 = OUTLINED_FUNCTION_3_9();
          sub_2575E6300(v9, v10, v11, v12);
          if (!v1)
          {
            v13 = type metadata accessor for Proto_NeuralNetworkClassifier(0);
            OUTLINED_FUNCTION_375_0(*(v13 + 32));
            v14 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
            v15 = OUTLINED_FUNCTION_171_1();
            OUTLINED_FUNCTION_155(v15, v16, v14);
            if (!v17)
            {
              OUTLINED_FUNCTION_389_0();
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v18 = OUTLINED_FUNCTION_3_9();
                sub_2575E6700(v18, v19, v20, v21);
              }

              else
              {
                v22 = OUTLINED_FUNCTION_3_9();
                sub_2575E64E0(v22, v23, v24, v25);
              }

              OUTLINED_FUNCTION_59_1();
              sub_257609BCC();
            }

            OUTLINED_FUNCTION_1_6();
            if (v26)
            {
              OUTLINED_FUNCTION_3_10();
              sub_257743534();
            }

            OUTLINED_FUNCTION_7_5();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2575E6300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C788, &unk_257751EA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  updated = type metadata accessor for Proto_NetworkUpdateParameters(0);
  MEMORY[0x28223BE20](updated);
  v9 = type metadata accessor for Proto_NeuralNetworkClassifier(0);
  sub_257487308(a1 + *(v9 + 44));
  if (__swift_getEnumTagSinglePayload(v7, 1, updated) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87C788, &unk_257751EA0);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87D4C8, type metadata accessor for Proto_NetworkUpdateParameters, &unk_257755618);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_2575E64E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA28, &unk_2577700F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_StringVector(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for Proto_NeuralNetworkClassifier(0);
  sub_257487308(a1 + *(v9 + 32));
  v10 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87CA28, &unk_2577700F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575E6700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA28, &unk_2577700F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Int64Vector(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for Proto_NeuralNetworkClassifier(0);
  sub_257487308(a1 + *(v9 + 32));
  v10 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87CA28, &unk_2577700F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_281537E60, type metadata accessor for Proto_Int64Vector, &unk_257747CFC);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

void _s20MLModelSpecification23NeuralNetworkClassifierV2eeoiySbAC_ACtFZ_0()
{
  OUTLINED_FUNCTION_31();
  v8 = OUTLINED_FUNCTION_118_1();
  v9 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA28, &unk_2577700F0);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA98, &unk_257767458);
  OUTLINED_FUNCTION_41_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_75_0();
  updated = type metadata accessor for Proto_NetworkUpdateParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_227();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C788, &unk_257751EA0);
  OUTLINED_FUNCTION_13(v16);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_32_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA90, &qword_257767450);
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_262_0();
  sub_25747D3D0(*v1, *v0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_44;
  }

  sub_25747D424();
  if ((v20 & 1) == 0)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_224();
  if (v25)
  {
    v22 = v24;
  }

  if (v23 == 1)
  {
    if (v21)
    {
      if (v22 != 1)
      {
        goto LABEL_44;
      }
    }

    else if (v22)
    {
      goto LABEL_44;
    }
  }

  else if (v22 != v21)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_224();
  if (v30)
  {
    v27 = v29;
  }

  if (v28 == 1)
  {
    if (v26)
    {
      if (v27 != 1)
      {
        goto LABEL_44;
      }
    }

    else if (v27)
    {
      goto LABEL_44;
    }
  }

  else if (v27 != v26)
  {
    goto LABEL_44;
  }

  v58 = type metadata accessor for Proto_NeuralNetworkClassifier(0);
  v59 = *(v58 + 44);
  v31 = *(v4 + 48);
  sub_257487308(v1 + v59);
  sub_257487308(v0 + v59);
  OUTLINED_FUNCTION_42_0(v7);
  if (v33)
  {
    OUTLINED_FUNCTION_42_0(v7 + v31);
    if (v33)
    {
      sub_2574695E4(v7, &qword_27F87C788, &unk_257751EA0);
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  v32 = OUTLINED_FUNCTION_406();
  sub_257487308(v32);
  OUTLINED_FUNCTION_42_0(v7 + v31);
  if (v33)
  {
    sub_257609BCC();
LABEL_29:
    v34 = &qword_27F87FA90;
    v35 = &qword_257767450;
LABEL_30:
    v36 = v7;
LABEL_43:
    sub_2574695E4(v36, v34, v35);
    goto LABEL_44;
  }

  sub_257609B78();
  v37 = *(updated + 20);
  v38 = *(v2 + v37);
  v39 = *(v6 + v37);
  if (v38 != v39)
  {

    v60 = sub_2575F419C(v38, v39);

    if (!v60)
    {
      sub_257609BCC();
      sub_257609BCC();
      v34 = &qword_27F87C788;
      v35 = &unk_257751EA0;
      goto LABEL_30;
    }
  }

  v40 = sub_2577431B4();
  OUTLINED_FUNCTION_1_16();
  sub_2575FB760(v41, v42, MEMORY[0x277D216D0]);
  sub_257743644();
  OUTLINED_FUNCTION_220_0();
  sub_257609BCC();
  OUTLINED_FUNCTION_264();
  sub_257609BCC();
  sub_2574695E4(v7, &qword_27F87C788, &unk_257751EA0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_34:
  v43 = *(v5 + 48);
  OUTLINED_FUNCTION_325_0();
  sub_257487308(v44);
  OUTLINED_FUNCTION_325_0();
  sub_257487308(v45);
  OUTLINED_FUNCTION_155(v3, 1, v9);
  if (!v33)
  {
    sub_257487308(v3);
    OUTLINED_FUNCTION_155(v3 + v43, 1, v9);
    if (!v46)
    {
      sub_257609B78();
      OUTLINED_FUNCTION_367();
      sub_257533468();
      v49 = v48;
      sub_257609BCC();
      OUTLINED_FUNCTION_415();
      sub_257609BCC();
      sub_2574695E4(v3, &qword_27F87CA28, &unk_2577700F0);
      if ((v49 & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_47;
    }

    OUTLINED_FUNCTION_59_1();
    sub_257609BCC();
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_155(v3 + v43, 1, v9);
  if (!v33)
  {
LABEL_42:
    v34 = &qword_27F87FA98;
    v35 = &unk_257767458;
    v36 = v3;
    goto LABEL_43;
  }

  sub_2574695E4(v3, &qword_27F87CA28, &unk_2577700F0);
LABEL_47:
  v50 = *(v58 + 36);
  v51 = *(v1 + v50);
  v52 = *(v1 + v50 + 8);
  v53 = (v0 + v50);
  v54 = v51 == *v53 && v52 == v53[1];
  if (v54 || (sub_257743994() & 1) != 0)
  {
    sub_2577431B4();
    OUTLINED_FUNCTION_1_16();
    v57 = sub_2575FB760(v55, v56, MEMORY[0x277D216D0]);
    v47 = OUTLINED_FUNCTION_19_3(v57);
    goto LABEL_45;
  }

LABEL_44:
  v47 = 0;
LABEL_45:
  OUTLINED_FUNCTION_65_0(v47);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2575E6F50()
{
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_77_0();

  return v1(v0);
}

uint64_t sub_2575E6FB4()
{
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_311_0();

  return v1(v0);
}

uint64_t sub_2575E704C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EF70, type metadata accessor for Proto_NeuralNetworkClassifier, &unk_257755A18);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E70EC(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87BAF8, type metadata accessor for Proto_NeuralNetworkClassifier, &unk_257763FE0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E71B4(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87BAF8, type metadata accessor for Proto_NeuralNetworkClassifier, &unk_257763FE0);

  return sub_257743424();
}

uint64_t sub_2575E7234()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9EB0);
  __swift_project_value_buffer(v0, qword_27F8E9EB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "oneHotVectorSize";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "axis";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "onValue";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "offValue";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575E7474()
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
        OUTLINED_FUNCTION_53();
        sub_2577433B4();
        break;
      case 2:
        OUTLINED_FUNCTION_89_2();
        sub_257743324();
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_10_7();
        sub_2577432E4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2575E7510(uint64_t a1)
{
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_8_6(), result = sub_257743554(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_12_11(), result = sub_257743504(), !v1))
    {
      OUTLINED_FUNCTION_379_0();
      if (!v4 || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v1))
      {
        if (!*(v2 + 20) || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v1))
        {
          type metadata accessor for Proto_OneHotLayerParams(0);
          return OUTLINED_FUNCTION_7_5();
        }
      }
    }
  }

  return result;
}

uint64_t sub_2575E75C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_104_0();
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_65_2();
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_251_0();
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_329_0();
  if (!v4)
  {
    return 0;
  }

  type metadata accessor for Proto_OneHotLayerParams(0);
  OUTLINED_FUNCTION_189_0();
  OUTLINED_FUNCTION_1_16();
  v7 = sub_2575FB760(v5, v6, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v7) & 1;
}

uint64_t sub_2575E76A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F768, type metadata accessor for Proto_OneHotLayerParams, &unk_257755928);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E7740(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D510, type metadata accessor for Proto_OneHotLayerParams, &unk_257761E98);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E7808(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D510, type metadata accessor for Proto_OneHotLayerParams, &unk_257761E98);

  return sub_257743424();
}

uint64_t sub_2575E7888()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9EC8);
  __swift_project_value_buffer(v0, qword_27F8E9EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axis";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "excludeFinalSum";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "reverse";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575E7A90()
{
  OUTLINED_FUNCTION_18_4();
  while (1)
  {
    OUTLINED_FUNCTION_294();
    result = sub_257743234();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_148_1();
      sub_257743274();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_148_1();
      v0();
    }
  }

  return result;
}

uint64_t sub_2575E7B18(uint64_t a1)
{
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_8_6(), result = sub_257743504(), !v1))
  {
    OUTLINED_FUNCTION_349_0();
    if (!v4 || (OUTLINED_FUNCTION_12_11(), result = sub_2577434B4(), !v1))
    {
      if (*(v2 + 9) != 1 || (OUTLINED_FUNCTION_12_8(), result = sub_2577434B4(), !v1))
      {
        type metadata accessor for Proto_CumSumLayerParams(0);
        return OUTLINED_FUNCTION_7_5();
      }
    }
  }

  return result;
}

uint64_t sub_2575E7BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_104_0();
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_267();
  if (*(v7 + 8) != *(v8 + 8) || *(v5 + 9) != *(v4 + 9))
  {
    return 0;
  }

  type metadata accessor for Proto_CumSumLayerParams(0);
  OUTLINED_FUNCTION_327_0();
  OUTLINED_FUNCTION_1_16();
  v12 = sub_2575FB760(v10, v11, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v12) & 1;
}

uint64_t sub_2575E7C94()
{
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_77_0();

  return v1(v0);
}

uint64_t sub_2575E7CF8()
{
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_311_0();

  return v1(v0);
}

uint64_t sub_2575E7DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EE70, type metadata accessor for Proto_CumSumLayerParams, &unk_257755838);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E7E44(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D4F8, type metadata accessor for Proto_CumSumLayerParams, &unk_257764C10);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E7F0C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D4F8, type metadata accessor for Proto_CumSumLayerParams, &unk_257764C10);

  return sub_257743424();
}

uint64_t sub_2575E7F8C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9EE0);
  __swift_project_value_buffer(v0, qword_27F8E9EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "layers";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "preprocessing";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "arrayInputShapeMapping";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "imageInputShapeMapping";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "updateParams";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2575E820C()
{
  OUTLINED_FUNCTION_102_0();
  v2 = v1;
  v4 = v3;
  while (1)
  {
    v5 = sub_257743234();
    if (v0 || (v6 & 1) != 0)
    {
      break;
    }

    switch(v5)
    {
      case 1:
        OUTLINED_FUNCTION_113_0();
        sub_2575E8334();
        break;
      case 2:
        OUTLINED_FUNCTION_113_0();
        sub_2575E839C();
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_113_0();
        v4(v7);
        break;
      case 6:
        v8 = OUTLINED_FUNCTION_113_0();
        v2(v8);
        break;
      case 10:
        OUTLINED_FUNCTION_113_0();
        sub_2575E8414();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_103_0();
}

void sub_2575E8334()
{
  OUTLINED_FUNCTION_165_0();
  v2 = v1;
  OUTLINED_FUNCTION_243_0();
  v3 = OUTLINED_FUNCTION_396_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_131_0();
  v7 = sub_2575FB760(v5, v6, v2);
  OUTLINED_FUNCTION_162_0(v0, v8, v7);
  OUTLINED_FUNCTION_166_0();
}

uint64_t sub_2575E839C()
{
  OUTLINED_FUNCTION_147_0();
  type metadata accessor for Proto_NeuralNetworkPreprocessing(0);
  OUTLINED_FUNCTION_92_1();
  sub_2575FB760(v0, v1, &unk_2577660B0);
  OUTLINED_FUNCTION_12_10();
  return sub_2577433C4();
}

void sub_2575E8414()
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_147_0();
  v0(0);
  type metadata accessor for Proto_NetworkUpdateParameters(0);
  OUTLINED_FUNCTION_202();
  sub_2575FB760(v1, v2, &unk_257755618);
  OUTLINED_FUNCTION_12_10();
  sub_2577433D4();
  OUTLINED_FUNCTION_187_0();
}

void sub_2575E849C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v5 + 16) || (type metadata accessor for Proto_NeuralNetworkLayer(0), OUTLINED_FUNCTION_205_0(), sub_2575FB760(v9, v10, &unk_257762528), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_27_4(), sub_257743564(), !v6))
  {
    if (!*(v7[1] + 16) || (type metadata accessor for Proto_NeuralNetworkPreprocessing(0), OUTLINED_FUNCTION_92_1(), sub_2575FB760(v11, v12, &unk_2577660B0), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_27_4(), sub_257743564(), !v6))
    {
      if (!v7[2] || (OUTLINED_FUNCTION_184_1(), sub_257609C20(), OUTLINED_FUNCTION_27_4(), sub_2577434C4(), !v6))
      {
        if (!v7[4] || (OUTLINED_FUNCTION_184_1(), sub_257609C74(), OUTLINED_FUNCTION_27_4(), sub_2577434C4(), !v6))
        {
          OUTLINED_FUNCTION_3_9();
          sub_2575E863C();
          if (!v6)
          {
            a5(0);
            OUTLINED_FUNCTION_7_5();
          }
        }
      }
    }
  }
}

void sub_2575E863C()
{
  OUTLINED_FUNCTION_165_0();
  OUTLINED_FUNCTION_303_0(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_277();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_32_4();
  updated = type metadata accessor for Proto_NetworkUpdateParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v13 = OUTLINED_FUNCTION_14();
  v14 = v2(v13);
  OUTLINED_FUNCTION_399_0(*(v14 + 36));
  v15 = OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_155(v15, v16, updated);
  if (v17)
  {
    sub_2574695E4(v1, &qword_27F87C788, &unk_257751EA0);
  }

  else
  {
    OUTLINED_FUNCTION_367();
    sub_257609B78();
    OUTLINED_FUNCTION_202();
    v20 = sub_2575FB760(v18, v19, &unk_257755618);
    OUTLINED_FUNCTION_403_0(v0, 10, v21, v20);
    OUTLINED_FUNCTION_66_0();
    sub_257609BCC();
  }

  OUTLINED_FUNCTION_166_0();
}

void sub_2575E87B0()
{
  OUTLINED_FUNCTION_31();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_118_1();
  updated = type metadata accessor for Proto_NetworkUpdateParameters(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C788, &unk_257751EA0);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_74_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA90, &qword_257767450);
  OUTLINED_FUNCTION_41_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_32_3();
  sub_25747D3D0(*v1, *v0);
  if ((v14 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_25747D424();
  if ((v15 & 1) == 0)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_224();
  if (v20)
  {
    v17 = v19;
  }

  if (v18 == 1)
  {
    if (v16)
    {
      if (v17 != 1)
      {
        goto LABEL_31;
      }
    }

    else if (v17)
    {
      goto LABEL_31;
    }
  }

  else if (v17 != v16)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_224();
  if (v25)
  {
    v22 = v24;
  }

  if (v23 == 1)
  {
    if (v21)
    {
      if (v22 != 1)
      {
        goto LABEL_31;
      }
    }

    else if (v22)
    {
      goto LABEL_31;
    }
  }

  else if (v22 != v21)
  {
    goto LABEL_31;
  }

  v7(0);
  v26 = *(v5 + 48);
  OUTLINED_FUNCTION_66();
  sub_257487308(v27);
  OUTLINED_FUNCTION_129_1();
  OUTLINED_FUNCTION_42_0(v2);
  if (v29)
  {
    OUTLINED_FUNCTION_42_0(v2 + v26);
    if (v29)
    {
      sub_2574695E4(v2, &qword_27F87C788, &unk_257751EA0);
LABEL_36:
      sub_2577431B4();
      OUTLINED_FUNCTION_1_16();
      v41 = sub_2575FB760(v39, v40, MEMORY[0x277D216D0]);
      v32 = OUTLINED_FUNCTION_19_3(v41);
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v28 = OUTLINED_FUNCTION_264();
  sub_257487308(v28);
  OUTLINED_FUNCTION_42_0(v2 + v26);
  if (v29)
  {
    sub_257609BCC();
LABEL_29:
    v30 = &qword_27F87FA90;
    v31 = &qword_257767450;
LABEL_30:
    sub_2574695E4(v2, v30, v31);
    goto LABEL_31;
  }

  sub_257609B78();
  if (*(v4 + *(updated + 20)) != *(v3 + *(updated + 20)))
  {

    v33 = OUTLINED_FUNCTION_287_0();
    v35 = sub_2575F419C(v33, v34);

    if (!v35)
    {
      sub_257609BCC();
      OUTLINED_FUNCTION_412_0();
      v30 = &qword_27F87C788;
      v31 = &unk_257751EA0;
      goto LABEL_30;
    }
  }

  v36 = sub_2577431B4();
  OUTLINED_FUNCTION_1_16();
  sub_2575FB760(v37, v38, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_294();
  sub_257743644();
  OUTLINED_FUNCTION_220_0();
  sub_257609BCC();
  sub_257609BCC();
  sub_2574695E4(v2, &qword_27F87C788, &unk_257751EA0);
  if (v36)
  {
    goto LABEL_36;
  }

LABEL_31:
  v32 = 0;
LABEL_32:
  OUTLINED_FUNCTION_65_0(v32);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2575E8BAC()
{
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_311_0();

  return v1(v0);
}

uint64_t sub_2575E8C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F148, type metadata accessor for Proto_NeuralNetworkRegressor, &unk_257755748);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E8D38(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87BAE0, type metadata accessor for Proto_NeuralNetworkRegressor, &unk_257762B40);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E8E00(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87BAE0, type metadata accessor for Proto_NeuralNetworkRegressor, &unk_257762B40);

  return sub_257743424();
}

uint64_t sub_2575E8EAC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9EF8);
  __swift_project_value_buffer(v0, qword_27F8E9EF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "lossLayers";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "optimizer";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "epochs";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 10;
  *v14 = "shuffle";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 20;
  *v16 = "seed";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575E9164(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_89_1();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_2575E91B4()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__optimizer;
  v2 = type metadata accessor for Proto_Optimizer(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__epochs;
  v4 = type metadata accessor for Proto_Int64Parameter(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__shuffle;
  v6 = type metadata accessor for Proto_BoolParameter(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__seed, 1, 1, v4);
  return v0;
}

uint64_t sub_2575E9274(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F928, &qword_257767330);
  MEMORY[0x28223BE20](v4 - 8);
  v20[1] = v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F938, &qword_257767338);
  MEMORY[0x28223BE20](v7 - 8);
  *(v1 + 16) = MEMORY[0x277D84F90];
  v8 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__optimizer;
  v9 = type metadata accessor for Proto_Optimizer(0);
  __swift_storeEnumTagSinglePayload(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__epochs;
  v11 = type metadata accessor for Proto_Int64Parameter(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__shuffle;
  v13 = type metadata accessor for Proto_BoolParameter(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v20[0] = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__seed;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__seed, 1, 1, v11);
  swift_beginAccess();
  v14 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v14;
  v15 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__optimizer;
  swift_beginAccess();
  sub_257487308(a1 + v15);
  swift_beginAccess();

  sub_25751BB28();
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__epochs;
  swift_beginAccess();
  sub_257487308(a1 + v16);
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__shuffle;
  swift_beginAccess();
  sub_257487308(a1 + v17);
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__seed;
  swift_beginAccess();
  sub_257487308(a1 + v18);

  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  return v2;
}

uint64_t sub_2575E964C()
{

  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__optimizer, &qword_27F87F938, &qword_257767338);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__epochs, &qword_27F87BD30, &unk_2577504D0);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__shuffle, &qword_27F87F928, &qword_257767330);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__seed, &qword_27F87BD30, &unk_2577504D0);
  return v0;
}

uint64_t sub_2575E9714(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_2575E9794(uint64_t a1)
{
  sub_25759B3F4(319, &qword_27F87C2A8, type metadata accessor for Proto_Optimizer, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_25759B3F4(319, &qword_281537CA0, type metadata accessor for Proto_Int64Parameter, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_25759B3F4(319, &qword_27F87C2B0, type metadata accessor for Proto_BoolParameter, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void __swift_store_extra_inhabitant_index_494Tm()
{
  OUTLINED_FUNCTION_4_7();
  if (v0)
  {
    OUTLINED_FUNCTION_155_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_255_0();
    v2 = OUTLINED_FUNCTION_48_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_2575E9BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_270_0();
  result = v7(v6);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return OUTLINED_FUNCTION_97_0();
    }
  }

  return result;
}

uint64_t sub_2575E9C88(uint64_t a1)
{
  v1 = sub_2577431B4();
  if (v2 <= 0x3F)
  {
    sub_25759B3F4(319, &qword_27F87C348, type metadata accessor for Proto_DoubleParameter, MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_25759B3F4(319, &qword_281537CA0, type metadata accessor for Proto_Int64Parameter, MEMORY[0x277D83D88]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t __swift_get_extra_inhabitant_index_529Tm()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  OUTLINED_FUNCTION_18_3();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_72_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C330, &qword_2577513E8);
    OUTLINED_FUNCTION_18_3();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_117_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
      OUTLINED_FUNCTION_96_0();
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_530Tm()
{
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  OUTLINED_FUNCTION_18_3();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C330, &qword_2577513E8);
    OUTLINED_FUNCTION_18_3();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_122_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
      OUTLINED_FUNCTION_255_0();
    }
  }

  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_2575E9F88(uint64_t a1)
{
  v1 = sub_2577431B4();
  if (v2 <= 0x3F)
  {
    sub_25759B3F4(319, &qword_27F87C348, type metadata accessor for Proto_DoubleParameter, MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_25759B3F4(319, &qword_281537CA0, type metadata accessor for Proto_Int64Parameter, MEMORY[0x277D83D88]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_2575EA13C(uint64_t a1)
{
  result = sub_2577431B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_806Tm()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 16));
  }

  OUTLINED_FUNCTION_77_1();
  v3 = OUTLINED_FUNCTION_61_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_807Tm()
{
  OUTLINED_FUNCTION_4_7();
  if (v0)
  {
    OUTLINED_FUNCTION_304_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_274_0();
    v2 = OUTLINED_FUNCTION_48_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_2575EAB24(uint64_t a1)
{
  OUTLINED_FUNCTION_40_4(a1, &qword_27F87A348, MEMORY[0x277D84D38]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_779Tm()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 16));
  }

  OUTLINED_FUNCTION_77_1();
  v3 = OUTLINED_FUNCTION_84_2();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_780Tm()
{
  OUTLINED_FUNCTION_4_7();
  if (v0)
  {
    OUTLINED_FUNCTION_304_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_256_0();
    v2 = OUTLINED_FUNCTION_48_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_2575EADCC(uint64_t a1)
{
  OUTLINED_FUNCTION_40_4(a1, &qword_27F87A348, MEMORY[0x277D84D38]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

void sub_2575EB008(uint64_t a1)
{
  sub_25759B3F4(319, &qword_27F87C5E0, type metadata accessor for Proto_WeightParams, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2575EB0E4(319);
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

void sub_2575EB0E4(uint64_t a1)
{
  if (!qword_27F87C5E8)
  {
    type metadata accessor for Proto_CustomLayerParams.CustomLayerParamValue(255);
    v1 = sub_2577435E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F87C5E8);
    }
  }
}

void sub_2575EB1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_270_0();
  sub_2575ED254(v5, v6, v7, v8);
  if (v9 <= 0x3F)
  {
    OUTLINED_FUNCTION_302_0();
    sub_2577431B4();
    if (v10 <= 0x3F)
    {
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

uint64_t sub_2575EB244(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_2575EB284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

void sub_2575EB5D0()
{
  OUTLINED_FUNCTION_345_0();
  OUTLINED_FUNCTION_40_4(v0, v1, v2);
  if (v3 <= 0x3F)
  {
    OUTLINED_FUNCTION_302_0();
    sub_2577431B4();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_315_0();
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

void sub_2575EB878(uint64_t a1)
{
  sub_2575ED254(319, &qword_27F87A348, MEMORY[0x277D84D38], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_25759B3F4(319, &qword_27F87C700, type metadata accessor for Proto_PoolingLayerParams.OneOf_PoolingPaddingType, MEMORY[0x277D83D88]);
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

void sub_2575EC394(uint64_t a1)
{
  sub_25759B3F4(319, &qword_27F87C908, type metadata accessor for Proto_PaddingLayerParams.OneOf_PaddingType, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      sub_25759B3F4(319, &qword_27F87C910, type metadata accessor for Proto_BorderAmounts, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2575EC510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v8 = OUTLINED_FUNCTION_270_0();
  result = v9(v8);
  if (v11 <= 0x3F)
  {
    result = a5(319);
    if (v12 <= 0x3F)
    {
      v13 = OUTLINED_FUNCTION_302_0();
      result = a6(v13);
      if (v14 <= 0x3F)
      {
        OUTLINED_FUNCTION_315_0();
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return OUTLINED_FUNCTION_97_0();
      }
    }
  }

  return result;
}

void sub_2575EC76C(uint64_t a1)
{
  sub_2575ED254(319, &qword_27F87A348, MEMORY[0x277D84D38], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2575ECB6C(uint64_t a1)
{
  sub_25759B3F4(319, &qword_27F87C790, type metadata accessor for Proto_NeuralNetworkLayer, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_25759B3F4(319, &qword_27F87C798, type metadata accessor for Proto_NeuralNetworkPreprocessing, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_25759B3F4(319, &qword_2815376D0, type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2577431B4();
        if (v4 <= 0x3F)
        {
          sub_25759B3F4(319, &qword_2815376E8, type metadata accessor for Proto_NetworkUpdateParameters, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2575ECDAC(uint64_t a1)
{
  sub_2575ED254(319, &qword_27F87A348, MEMORY[0x277D84D38], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2575ED254(319, &qword_27F87A658, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
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

void sub_2575ECF10(uint64_t a1)
{
  sub_25759B3F4(319, &qword_27F87CA60, type metadata accessor for Proto_ActivationParams, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      sub_25759B3F4(319, &qword_27F87CA68, type metadata accessor for Proto_LSTMParams, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_25759B3F4(319, &qword_27F87CA70, type metadata accessor for Proto_LSTMWeightParams, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2575ED154(uint64_t a1)
{
  sub_2575ED254(319, &qword_27F87B160, MEMORY[0x277D839B0], MEMORY[0x277D83940]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2575ED254(319, &qword_27F87A660, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = sub_2577431B4();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_2575ED254(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2575ED2EC(uint64_t a1)
{
  sub_2575ED254(319, &qword_27F87A660, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2575ED254(319, &qword_27F87B160, MEMORY[0x277D839B0], MEMORY[0x277D83940]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = sub_2577431B4();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_2575ED690(uint64_t a1)
{
  OUTLINED_FUNCTION_40_4(a1, &qword_27F87A660, MEMORY[0x277D84A28]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_315_0();
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_902Tm()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  v0 = OUTLINED_FUNCTION_173_1();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t __swift_store_extra_inhabitant_index_903Tm()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  v0 = OUTLINED_FUNCTION_115_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2575ED8B4()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_78_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_97_0();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_985Tm()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*v0);
  }

  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_96_0();
  v4 = OUTLINED_FUNCTION_13_2(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_986Tm()
{
  OUTLINED_FUNCTION_4_7();
  if (v0)
  {
    OUTLINED_FUNCTION_200_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_255_0();
    v2 = OUTLINED_FUNCTION_48_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_2575EDA7C(uint64_t a1)
{
  sub_2575ED254(319, &qword_27F87A658, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_893Tm()
{
  OUTLINED_FUNCTION_264_0();
  if (v0)
  {
    OUTLINED_FUNCTION_238_0();
    v3 = (v1 + v2) & 0x7FFFFFFF;
    if (v4)
    {
      return (v3 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_96_0();
    v7 = OUTLINED_FUNCTION_13_2(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void __swift_store_extra_inhabitant_index_894Tm()
{
  OUTLINED_FUNCTION_107_0();
  if (v2)
  {
    *(v1 + 8) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_255_0();
    v4 = OUTLINED_FUNCTION_48_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t __swift_get_extra_inhabitant_index_797Tm()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  v0 = OUTLINED_FUNCTION_173_1();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t __swift_store_extra_inhabitant_index_798Tm()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  v0 = OUTLINED_FUNCTION_115_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2575EDE68()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_78_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_97_0();
  }

  return result;
}

void sub_2575EDF88(uint64_t a1)
{
  OUTLINED_FUNCTION_40_4(a1, &qword_27F87A660, MEMORY[0x277D84A28]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1828Tm()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*v0);
  }

  OUTLINED_FUNCTION_77_1();
  v3 = OUTLINED_FUNCTION_84_2();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_1829Tm()
{
  OUTLINED_FUNCTION_4_7();
  if (v0)
  {
    OUTLINED_FUNCTION_200_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_256_0();
    v2 = OUTLINED_FUNCTION_48_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t __swift_get_extra_inhabitant_index_511Tm()
{
  OUTLINED_FUNCTION_267();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_18_3();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_72_0();
  }

  else
  {
    sub_2577431B4();
    v4 = OUTLINED_FUNCTION_24_5();
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_2575EE424(uint64_t a1)
{
  result = type metadata accessor for Proto_ActivationLinear(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Proto_ActivationReLU(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Proto_ActivationLeakyReLU(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Proto_ActivationThresholdedReLU(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Proto_ActivationPReLU(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Proto_ActivationTanh(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Proto_ActivationScaledTanh(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for Proto_ActivationSigmoid(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for Proto_ActivationSigmoidHard(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for Proto_ActivationELU(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for Proto_ActivationSoftsign(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for Proto_ActivationSoftplus(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for Proto_ActivationParametricSoftplus(319);
                          if (v14 <= 0x3F)
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

  return result;
}

void sub_2575EE5BC(uint64_t a1)
{
  sub_25759B3F4(319, &qword_27F87CA60, type metadata accessor for Proto_ActivationParams, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_25759B3F4(319, &qword_27F87CCB0, type metadata accessor for Proto_LSTMWeightParams, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2577431B4();
      if (v3 <= 0x3F)
      {
        sub_25759B3F4(319, &qword_27F87CA68, type metadata accessor for Proto_LSTMParams, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2575EE738(uint64_t a1)
{
  result = sub_2577431B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2575EEA20()
{
  OUTLINED_FUNCTION_382_0();
  OUTLINED_FUNCTION_270_0();
  sub_2577431B4();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_52_2();
    OUTLINED_FUNCTION_272_0();
    sub_25759B3F4(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

uint64_t sub_2575EEAC4(uint64_t a1)
{
  result = type metadata accessor for Proto_ConvolutionLayerParams(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Proto_PoolingLayerParams(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Proto_ActivationParams(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Proto_InnerProductLayerParams(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Proto_EmbeddingLayerParams(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Proto_BatchnormLayerParams(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for Proto_L2NormalizeLayerParams(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for Proto_SoftmaxLayerParams(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for Proto_LRNLayerParams(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for Proto_CropLayerParams(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for Proto_PaddingLayerParams(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for Proto_UpsampleLayerParams(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for Proto_ResizeBilinearLayerParams(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for Proto_CropResizeLayerParams(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for Proto_UnaryFunctionLayerParams(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for Proto_AddLayerParams(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for Proto_MultiplyLayerParams(319);
                                    if (v19 <= 0x3F)
                                    {
                                      result = type metadata accessor for Proto_AverageLayerParams(319);
                                      if (v20 <= 0x3F)
                                      {
                                        result = type metadata accessor for Proto_ScaleLayerParams(319);
                                        if (v21 <= 0x3F)
                                        {
                                          result = type metadata accessor for Proto_BiasLayerParams(319);
                                          if (v22 <= 0x3F)
                                          {
                                            result = type metadata accessor for Proto_MaxLayerParams(319);
                                            if (v23 <= 0x3F)
                                            {
                                              result = type metadata accessor for Proto_MinLayerParams(319);
                                              if (v24 <= 0x3F)
                                              {
                                                result = type metadata accessor for Proto_DotProductLayerParams(319);
                                                if (v25 <= 0x3F)
                                                {
                                                  result = type metadata accessor for Proto_ReduceLayerParams(319);
                                                  if (v26 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for Proto_LoadConstantLayerParams(319);
                                                    if (v27 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for Proto_ReshapeLayerParams(319);
                                                      if (v28 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for Proto_FlattenLayerParams(319);
                                                        if (v29 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for Proto_PermuteLayerParams(319);
                                                          if (v30 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for Proto_ConcatLayerParams(319);
                                                            if (v31 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for Proto_SplitLayerParams(319);
                                                              if (v32 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for Proto_SequenceRepeatLayerParams(319);
                                                                if (v33 <= 0x3F)
                                                                {
                                                                  result = type metadata accessor for Proto_ReorganizeDataLayerParams(319);
                                                                  if (v34 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for Proto_SliceLayerParams(319);
                                                                    if (v35 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for Proto_SimpleRecurrentLayerParams(319);
                                                                      if (v36 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for Proto_GRULayerParams(319);
                                                                        if (v37 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(319);
                                                                          if (v38 <= 0x3F)
                                                                          {
                                                                            result = type metadata accessor for Proto_BiDirectionalLSTMLayerParams(319);
                                                                            if (v39 <= 0x3F)
                                                                            {
                                                                              result = type metadata accessor for Proto_CustomLayerParams(319);
                                                                              if (v40 <= 0x3F)
                                                                              {
                                                                                result = type metadata accessor for Proto_CopyLayerParams(319);
                                                                                if (v41 <= 0x3F)
                                                                                {
                                                                                  result = type metadata accessor for Proto_BranchLayerParams(319);
                                                                                  if (v42 <= 0x3F)
                                                                                  {
                                                                                    result = type metadata accessor for Proto_LoopLayerParams(319);
                                                                                    if (v43 <= 0x3F)
                                                                                    {
                                                                                      result = type metadata accessor for Proto_LoopBreakLayerParams(319);
                                                                                      if (v44 <= 0x3F)
                                                                                      {
                                                                                        result = type metadata accessor for Proto_LoopContinueLayerParams(319);
                                                                                        if (v45 <= 0x3F)
                                                                                        {
                                                                                          result = type metadata accessor for Proto_RangeStaticLayerParams(319);
                                                                                          if (v46 <= 0x3F)
                                                                                          {
                                                                                            result = type metadata accessor for Proto_RangeDynamicLayerParams(319);
                                                                                            if (v47 <= 0x3F)
                                                                                            {
                                                                                              result = type metadata accessor for Proto_ClipLayerParams(319);
                                                                                              if (v48 <= 0x3F)
                                                                                              {
                                                                                                result = type metadata accessor for Proto_CeilLayerParams(319);
                                                                                                if (v49 <= 0x3F)
                                                                                                {
                                                                                                  result = type metadata accessor for Proto_FloorLayerParams(319);
                                                                                                  if (v50 <= 0x3F)
                                                                                                  {
                                                                                                    result = type metadata accessor for Proto_SignLayerParams(319);
                                                                                                    if (v51 <= 0x3F)
                                                                                                    {
                                                                                                      result = type metadata accessor for Proto_RoundLayerParams(319);
                                                                                                      if (v52 <= 0x3F)
                                                                                                      {
                                                                                                        result = type metadata accessor for Proto_Exp2LayerParams(319);
                                                                                                        if (v53 <= 0x3F)
                                                                                                        {
                                                                                                          result = type metadata accessor for Proto_SinLayerParams(319);
                                                                                                          if (v54 <= 0x3F)
                                                                                                          {
                                                                                                            result = type metadata accessor for Proto_CosLayerParams(319);
                                                                                                            if (v55 <= 0x3F)
                                                                                                            {
                                                                                                              result = type metadata accessor for Proto_TanLayerParams(319);
                                                                                                              if (v56 <= 0x3F)
                                                                                                              {
                                                                                                                result = type metadata accessor for Proto_AsinLayerParams(319);
                                                                                                                if (v57 <= 0x3F)
                                                                                                                {
                                                                                                                  result = type metadata accessor for Proto_AcosLayerParams(319);
                                                                                                                  if (v58 <= 0x3F)
                                                                                                                  {
                                                                                                                    result = type metadata accessor for Proto_AtanLayerParams(319);
                                                                                                                    if (v59 <= 0x3F)
                                                                                                                    {
                                                                                                                      result = type metadata accessor for Proto_SinhLayerParams(319);
                                                                                                                      if (v60 <= 0x3F)
                                                                                                                      {
                                                                                                                        result = type metadata accessor for Proto_CoshLayerParams(319);
                                                                                                                        if (v61 <= 0x3F)
                                                                                                                        {
                                                                                                                          result = type metadata accessor for Proto_TanhLayerParams(319);
                                                                                                                          if (v62 <= 0x3F)
                                                                                                                          {
                                                                                                                            result = type metadata accessor for Proto_AsinhLayerParams(319);
                                                                                                                            if (v63 <= 0x3F)
                                                                                                                            {
                                                                                                                              result = type metadata accessor for Proto_AcoshLayerParams(319);
                                                                                                                              if (v64 <= 0x3F)
                                                                                                                              {
                                                                                                                                result = type metadata accessor for Proto_AtanhLayerParams(319);
                                                                                                                                if (v65 <= 0x3F)
                                                                                                                                {
                                                                                                                                  result = type metadata accessor for Proto_ErfLayerParams(319);
                                                                                                                                  if (v66 <= 0x3F)
                                                                                                                                  {
                                                                                                                                    result = type metadata accessor for Proto_GeluLayerParams(319);
                                                                                                                                    if (v67 <= 0x3F)
                                                                                                                                    {
                                                                                                                                      result = type metadata accessor for Proto_EqualLayerParams(319);
                                                                                                                                      if (v68 <= 0x3F)
                                                                                                                                      {
                                                                                                                                        result = type metadata accessor for Proto_NotEqualLayerParams(319);
                                                                                                                                        if (v69 <= 0x3F)
                                                                                                                                        {
                                                                                                                                          result = type metadata accessor for Proto_LessThanLayerParams(319);
                                                                                                                                          if (v70 <= 0x3F)
                                                                                                                                          {
                                                                                                                                            result = type metadata accessor for Proto_LessEqualLayerParams(319);
                                                                                                                                            if (v71 <= 0x3F)
                                                                                                                                            {
                                                                                                                                              result = type metadata accessor for Proto_GreaterThanLayerParams(319);
                                                                                                                                              if (v72 <= 0x3F)
                                                                                                                                              {
                                                                                                                                                result = type metadata accessor for Proto_GreaterEqualLayerParams(319);
                                                                                                                                                if (v73 <= 0x3F)
                                                                                                                                                {
                                                                                                                                                  result = type metadata accessor for Proto_LogicalOrLayerParams(319);
                                                                                                                                                  if (v74 <= 0x3F)
                                                                                                                                                  {
                                                                                                                                                    result = type metadata accessor for Proto_LogicalXorLayerParams(319);
                                                                                                                                                    if (v75 <= 0x3F)
                                                                                                                                                    {
                                                                                                                                                      result = type metadata accessor for Proto_LogicalNotLayerParams(319);
                                                                                                                                                      if (v76 <= 0x3F)
                                                                                                                                                      {
                                                                                                                                                        result = type metadata accessor for Proto_LogicalAndLayerParams(319);
                                                                                                                                                        if (v77 <= 0x3F)
                                                                                                                                                        {
                                                                                                                                                          result = type metadata accessor for Proto_ModBroadcastableLayerParams(319);
                                                                                                                                                          if (v78 <= 0x3F)
                                                                                                                                                          {
                                                                                                                                                            result = type metadata accessor for Proto_MinBroadcastableLayerParams(319);
                                                                                                                                                            if (v79 <= 0x3F)
                                                                                                                                                            {
                                                                                                                                                              result = type metadata accessor for Proto_MaxBroadcastableLayerParams(319);
                                                                                                                                                              if (v80 <= 0x3F)
                                                                                                                                                              {
                                                                                                                                                                result = type metadata accessor for Proto_AddBroadcastableLayerParams(319);
                                                                                                                                                                if (v81 <= 0x3F)
                                                                                                                                                                {
                                                                                                                                                                  result = type metadata accessor for Proto_PowBroadcastableLayerParams(319);
                                                                                                                                                                  if (v82 <= 0x3F)
                                                                                                                                                                  {
                                                                                                                                                                    result = type metadata accessor for Proto_DivideBroadcastableLayerParams(319);
                                                                                                                                                                    if (v83 <= 0x3F)
                                                                                                                                                                    {
                                                                                                                                                                      result = type metadata accessor for Proto_FloorDivBroadcastableLayerParams(319);
                                                                                                                                                                      if (v84 <= 0x3F)
                                                                                                                                                                      {
                                                                                                                                                                        result = type metadata accessor for Proto_MultiplyBroadcastableLayerParams(319);
                                                                                                                                                                        if (v85 <= 0x3F)
                                                                                                                                                                        {
                                                                                                                                                                          result = type metadata accessor for Proto_SubtractBroadcastableLayerParams(319);
                                                                                                                                                                          if (v86 <= 0x3F)
                                                                                                                                                                          {
                                                                                                                                                                            result = type metadata accessor for Proto_TileLayerParams(319);
                                                                                                                                                                            if (v87 <= 0x3F)
                                                                                                                                                                            {
                                                                                                                                                                              result = type metadata accessor for Proto_StackLayerParams(319);
                                                                                                                                                                              if (v88 <= 0x3F)
                                                                                                                                                                              {
                                                                                                                                                                                result = type metadata accessor for Proto_GatherLayerParams(319);
                                                                                                                                                                                if (v89 <= 0x3F)
                                                                                                                                                                                {
                                                                                                                                                                                  result = type metadata accessor for Proto_ScatterLayerParams(319);
                                                                                                                                                                                  if (v90 <= 0x3F)
                                                                                                                                                                                  {
                                                                                                                                                                                    result = type metadata accessor for Proto_GatherNDLayerParams(319);
                                                                                                                                                                                    if (v91 <= 0x3F)
                                                                                                                                                                                    {
                                                                                                                                                                                      result = type metadata accessor for Proto_ScatterNDLayerParams(319);
                                                                                                                                                                                      if (v92 <= 0x3F)
                                                                                                                                                                                      {
                                                                                                                                                                                        result = type metadata accessor for Proto_SoftmaxNDLayerParams(319);
                                                                                                                                                                                        if (v93 <= 0x3F)
                                                                                                                                                                                        {
                                                                                                                                                                                          result = type metadata accessor for Proto_GatherAlongAxisLayerParams(319);
                                                                                                                                                                                          if (v94 <= 0x3F)
                                                                                                                                                                                          {
                                                                                                                                                                                            result = type metadata accessor for Proto_ScatterAlongAxisLayerParams(319);
                                                                                                                                                                                            if (v95 <= 0x3F)
                                                                                                                                                                                            {
                                                                                                                                                                                              result = type metadata accessor for Proto_ReverseLayerParams(319);
                                                                                                                                                                                              if (v96 <= 0x3F)
                                                                                                                                                                                              {
                                                                                                                                                                                                result = type metadata accessor for Proto_ReverseSeqLayerParams(319);
                                                                                                                                                                                                if (v97 <= 0x3F)
                                                                                                                                                                                                {
                                                                                                                                                                                                  result = type metadata accessor for Proto_SplitNDLayerParams(319);
                                                                                                                                                                                                  if (v98 <= 0x3F)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    result = type metadata accessor for Proto_ConcatNDLayerParams(319);
                                                                                                                                                                                                    if (v99 <= 0x3F)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      result = type metadata accessor for Proto_TransposeLayerParams(319);
                                                                                                                                                                                                      if (v100 <= 0x3F)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        result = type metadata accessor for Proto_SliceStaticLayerParams(319);
                                                                                                                                                                                                        if (v101 <= 0x3F)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          result = type metadata accessor for Proto_SliceDynamicLayerParams(319);
                                                                                                                                                                                                          if (v102 <= 0x3F)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            result = type metadata accessor for Proto_SlidingWindowsLayerParams(319);
                                                                                                                                                                                                            if (v103 <= 0x3F)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              result = type metadata accessor for Proto_TopKLayerParams(319);
                                                                                                                                                                                                              if (v104 <= 0x3F)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                result = type metadata accessor for Proto_ArgMinLayerParams(319);
                                                                                                                                                                                                                if (v105 <= 0x3F)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  result = type metadata accessor for Proto_ArgMaxLayerParams(319);
                                                                                                                                                                                                                  if (v106 <= 0x3F)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    result = type metadata accessor for Proto_EmbeddingNDLayerParams(319);
                                                                                                                                                                                                                    if (v107 <= 0x3F)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      result = type metadata accessor for Proto_BatchedMatMulLayerParams(319);
                                                                                                                                                                                                                      if (v108 <= 0x3F)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        result = type metadata accessor for Proto_GetShapeLayerParams(319);
                                                                                                                                                                                                                        if (v109 <= 0x3F)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          result = type metadata accessor for Proto_LoadConstantNDLayerParams(319);
                                                                                                                                                                                                                          if (v110 <= 0x3F)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            result = type metadata accessor for Proto_FillLikeLayerParams(319);
                                                                                                                                                                                                                            if (v111 <= 0x3F)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              result = type metadata accessor for Proto_FillStaticLayerParams(319);
                                                                                                                                                                                                                              if (v112 <= 0x3F)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                result = type metadata accessor for Proto_FillDynamicLayerParams(319);
                                                                                                                                                                                                                                if (v113 <= 0x3F)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  result = type metadata accessor for Proto_BroadcastToLikeLayerParams(319);
                                                                                                                                                                                                                                  if (v114 <= 0x3F)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    result = type metadata accessor for Proto_BroadcastToStaticLayerParams(319);
                                                                                                                                                                                                                                    if (v115 <= 0x3F)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      result = type metadata accessor for Proto_BroadcastToDynamicLayerParams(319);
                                                                                                                                                                                                                                      if (v116 <= 0x3F)
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        result = type metadata accessor for Proto_SqueezeLayerParams(319);
                                                                                                                                                                                                                                        if (v117 <= 0x3F)
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          result = type metadata accessor for Proto_ExpandDimsLayerParams(319);
                                                                                                                                                                                                                                          if (v118 <= 0x3F)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            result = type metadata accessor for Proto_FlattenTo2DLayerParams(319);
                                                                                                                                                                                                                                            if (v119 <= 0x3F)
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              result = type metadata accessor for Proto_ReshapeLikeLayerParams(319);
                                                                                                                                                                                                                                              if (v120 <= 0x3F)
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                result = type metadata accessor for Proto_ReshapeStaticLayerParams(319);
                                                                                                                                                                                                                                                if (v121 <= 0x3F)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  result = type metadata accessor for Proto_ReshapeDynamicLayerParams(319);
                                                                                                                                                                                                                                                  if (v122 <= 0x3F)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    result = type metadata accessor for Proto_RankPreservingReshapeLayerParams(319);
                                                                                                                                                                                                                                                    if (v123 <= 0x3F)
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      result = type metadata accessor for Proto_ConstantPaddingLayerParams(319);
                                                                                                                                                                                                                                                      if (v124 <= 0x3F)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        result = type metadata accessor for Proto_RandomNormalLikeLayerParams(319);
                                                                                                                                                                                                                                                        if (v125 <= 0x3F)
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          result = type metadata accessor for Proto_RandomNormalStaticLayerParams(319);
                                                                                                                                                                                                                                                          if (v126 <= 0x3F)
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            result = type metadata accessor for Proto_RandomNormalDynamicLayerParams(319);
                                                                                                                                                                                                                                                            if (v127 <= 0x3F)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              result = type metadata accessor for Proto_RandomUniformLikeLayerParams(319);
                                                                                                                                                                                                                                                              if (v128 <= 0x3F)
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                result = type metadata accessor for Proto_RandomUniformStaticLayerParams(319);
                                                                                                                                                                                                                                                                if (v129 <= 0x3F)
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  result = type metadata accessor for Proto_RandomUniformDynamicLayerParams(319);
                                                                                                                                                                                                                                                                  if (v130 <= 0x3F)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    result = type metadata accessor for Proto_RandomBernoulliLikeLayerParams(319);
                                                                                                                                                                                                                                                                    if (v131 <= 0x3F)
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      result = type metadata accessor for Proto_RandomBernoulliStaticLayerParams(319);
                                                                                                                                                                                                                                                                      if (v132 <= 0x3F)
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        result = type metadata accessor for Proto_RandomBernoulliDynamicLayerParams(319);
                                                                                                                                                                                                                                                                        if (v133 <= 0x3F)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                          result = type metadata accessor for Proto_CategoricalDistributionLayerParams(319);
                                                                                                                                                                                                                                                                          if (v134 <= 0x3F)
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = type metadata accessor for Proto_ReduceL1LayerParams(319);
                                                                                                                                                                                                                                                                            if (v135 <= 0x3F)
                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                              result = type metadata accessor for Proto_ReduceL2LayerParams(319);
                                                                                                                                                                                                                                                                              if (v136 <= 0x3F)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                result = type metadata accessor for Proto_ReduceMaxLayerParams(319);
                                                                                                                                                                                                                                                                                if (v137 <= 0x3F)
                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                  result = type metadata accessor for Proto_ReduceMinLayerParams(319);
                                                                                                                                                                                                                                                                                  if (v138 <= 0x3F)
                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                    result = type metadata accessor for Proto_ReduceSumLayerParams(319);
                                                                                                                                                                                                                                                                                    if (v139 <= 0x3F)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                      result = type metadata accessor for Proto_ReduceProdLayerParams(319);
                                                                                                                                                                                                                                                                                      if (v140 <= 0x3F)
                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                        result = type metadata accessor for Proto_ReduceMeanLayerParams(319);
                                                                                                                                                                                                                                                                                        if (v141 <= 0x3F)
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          result = type metadata accessor for Proto_ReduceLogSumLayerParams(319);
                                                                                                                                                                                                                                                                                          if (v142 <= 0x3F)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                            result = type metadata accessor for Proto_ReduceSumSquareLayerParams(319);
                                                                                                                                                                                                                                                                                            if (v143 <= 0x3F)
                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                              result = type metadata accessor for Proto_ReduceLogSumExpLayerParams(319);
                                                                                                                                                                                                                                                                                              if (v144 <= 0x3F)
                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                result = type metadata accessor for Proto_WhereNonZeroLayerParams(319);
                                                                                                                                                                                                                                                                                                if (v145 <= 0x3F)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                  result = type metadata accessor for Proto_MatrixBandPartLayerParams(319);
                                                                                                                                                                                                                                                                                                  if (v146 <= 0x3F)
                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                    result = type metadata accessor for Proto_LowerTriangularLayerParams(319);
                                                                                                                                                                                                                                                                                                    if (v147 <= 0x3F)
                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                      result = type metadata accessor for Proto_UpperTriangularLayerParams(319);
                                                                                                                                                                                                                                                                                                      if (v148 <= 0x3F)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                        result = type metadata accessor for Proto_WhereBroadcastableLayerParams(319);
                                                                                                                                                                                                                                                                                                        if (v149 <= 0x3F)
                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                          result = type metadata accessor for Proto_LayerNormalizationLayerParams(319);
                                                                                                                                                                                                                                                                                                          if (v150 <= 0x3F)
                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                            result = type metadata accessor for Proto_NonMaximumSuppressionLayerParams(319);
                                                                                                                                                                                                                                                                                                            if (v151 <= 0x3F)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                              result = type metadata accessor for Proto_OneHotLayerParams(319);
                                                                                                                                                                                                                                                                                                              if (v152 <= 0x3F)
                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                result = type metadata accessor for Proto_CumSumLayerParams(319);
                                                                                                                                                                                                                                                                                                                if (v153 <= 0x3F)
                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for Proto_ClampedReLULayerParams(319);
                                                                                                                                                                                                                                                                                                                  if (v154 <= 0x3F)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for Proto_ArgSortLayerParams(319);
                                                                                                                                                                                                                                                                                                                    if (v155 <= 0x3F)
                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for Proto_Pooling3DLayerParams(319);
                                                                                                                                                                                                                                                                                                                      if (v156 <= 0x3F)
                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for Proto_GlobalPooling3DLayerParams(319);
                                                                                                                                                                                                                                                                                                                        if (v157 <= 0x3F)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for Proto_SliceBySizeLayerParams(319);
                                                                                                                                                                                                                                                                                                                          if (v158 <= 0x3F)
                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for Proto_Convolution3DLayerParams(319);
                                                                                                                                                                                                                                                                                                                            if (v159 <= 0x3F)
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
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2575EFFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_270_0();
  result = sub_2577431B4();
  if (v4 <= 0x3F)
  {
    OUTLINED_FUNCTION_78_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_97_0();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_493Tm()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 8));
  }

  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_96_0();
  v4 = OUTLINED_FUNCTION_13_2(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2575F02B0(uint64_t a1)
{
  sub_2575ED254(319, &qword_27F87A348, MEMORY[0x277D84D38], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      sub_25759B3F4(319, &qword_27F87CF78, type metadata accessor for Proto_SamplingMode, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_25759B3F4(319, &qword_27F87CF80, type metadata accessor for Proto_BoxCoordinatesMode, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_851Tm()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  v0 = OUTLINED_FUNCTION_173_1();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t __swift_store_extra_inhabitant_index_852Tm()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  v0 = OUTLINED_FUNCTION_115_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t __swift_get_extra_inhabitant_index_743Tm()
{
  OUTLINED_FUNCTION_52_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_7(*v1);
  }

  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_18_3();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_117_0();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_222();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_96_0();
  }

  v8 = OUTLINED_FUNCTION_13_2(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_744Tm()
{
  OUTLINED_FUNCTION_4_7();
  if (v1)
  {
    OUTLINED_FUNCTION_200_0();
  }

  else
  {
    OUTLINED_FUNCTION_392_0();
    sub_2577431B4();
    OUTLINED_FUNCTION_18_3();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_122_0();
    }

    else
    {
      v4 = OUTLINED_FUNCTION_222();
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      OUTLINED_FUNCTION_255_0();
    }

    v6 = OUTLINED_FUNCTION_48_1(v3);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_2575F06E0()
{
  OUTLINED_FUNCTION_382_0();
  OUTLINED_FUNCTION_40_4(v0, &qword_27F87A348, MEMORY[0x277D84D38]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_52_2();
      OUTLINED_FUNCTION_272_0();
      sub_25759B3F4(v3, v4, v5, v6);
      if (v7 <= 0x3F)
      {
        OUTLINED_FUNCTION_315_0();
        OUTLINED_FUNCTION_78_0();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_97_0();
      }
    }
  }
}

void sub_2575F0820(uint64_t a1)
{
  sub_2575ED254(319, &qword_27F87A658, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      sub_25759B3F4(319, &qword_27F87CFE0, type metadata accessor for Proto_QuantizationParams, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1489Tm()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  v0 = OUTLINED_FUNCTION_173_1();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t __swift_store_extra_inhabitant_index_1490Tm()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  v0 = OUTLINED_FUNCTION_115_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2575F0AA0()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_78_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_97_0();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1()
{
  OUTLINED_FUNCTION_52_1();
  if (v4)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 8));
  }

  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_18_3();
  if (*(v7 + 84) == v6)
  {
    OUTLINED_FUNCTION_117_0();
  }

  else
  {
    sub_2577431B4();
    OUTLINED_FUNCTION_96_0();
  }

  v9 = OUTLINED_FUNCTION_13_2(v8);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void __swift_store_extra_inhabitant_indexTm_1()
{
  OUTLINED_FUNCTION_4_7();
  if (v1)
  {
    OUTLINED_FUNCTION_155_0();
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
    OUTLINED_FUNCTION_18_3();
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_122_0();
    }

    else
    {
      sub_2577431B4();
      OUTLINED_FUNCTION_255_0();
    }

    v6 = OUTLINED_FUNCTION_48_1(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_2575F0D48()
{
  OUTLINED_FUNCTION_345_0();
  v0 = OUTLINED_FUNCTION_52_2();
  sub_25759B3F4(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    OUTLINED_FUNCTION_302_0();
    sub_2577431B4();
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_315_0();
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1711Tm()
{
  OUTLINED_FUNCTION_264_0();
  if (v0)
  {
    OUTLINED_FUNCTION_238_0();
    v3 = (v1 + v2) & 0x7FFFFFFF;
    if (v4)
    {
      return (v3 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_117_0();
    v7 = OUTLINED_FUNCTION_13_2(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void __swift_store_extra_inhabitant_index_1712Tm()
{
  OUTLINED_FUNCTION_107_0();
  if (v2)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_122_0();
    v4 = OUTLINED_FUNCTION_48_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_2575F0EEC()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_78_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_97_0();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1078Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_376();
  sub_2577431B4();
  OUTLINED_FUNCTION_18_3();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_7_7(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_2575F102C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_270_0();
  result = sub_2577431B4();
  if (v6 <= 0x3F)
  {
    v7 = OUTLINED_FUNCTION_302_0();
    result = a4(v7);
    if (v8 <= 0x3F)
    {
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_97_0();
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1174Tm()
{
  OUTLINED_FUNCTION_52_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_7(*v1);
  }

  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_18_3();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_271_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C788, &unk_257751EA0);
    OUTLINED_FUNCTION_290_0();
  }

  v6 = OUTLINED_FUNCTION_13_2(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void __swift_store_extra_inhabitant_index_1175Tm()
{
  OUTLINED_FUNCTION_4_7();
  if (v1)
  {
    OUTLINED_FUNCTION_200_0();
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    sub_2577431B4();
    OUTLINED_FUNCTION_18_3();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_274_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C788, &unk_257751EA0);
      OUTLINED_FUNCTION_295_0();
    }

    v4 = OUTLINED_FUNCTION_48_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_2575F1220()
{
  sub_25759B3F4(319, &qword_27F87C790, type metadata accessor for Proto_NeuralNetworkLayer, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_25759B3F4(319, &qword_27F87C798, type metadata accessor for Proto_NeuralNetworkPreprocessing, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2577431B4();
      if (v2 <= 0x3F)
      {
        sub_25759B3F4(319, &qword_2815376E8, type metadata accessor for Proto_NetworkUpdateParameters, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          OUTLINED_FUNCTION_78_0();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_97_0();
        }
      }
    }
  }
}

void sub_2575F1398(uint64_t a1)
{
  sub_2577431B4();
  if (v1 <= 0x3F)
  {
    sub_25759B3F4(319, &qword_27F87CD48, type metadata accessor for Proto_NeuralNetwork, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_770Tm()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  v0 = OUTLINED_FUNCTION_173_1();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t __swift_store_extra_inhabitant_index_771Tm()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  v0 = OUTLINED_FUNCTION_115_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2575F154C()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_315_0();
    OUTLINED_FUNCTION_78_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_97_0();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1300Tm()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  OUTLINED_FUNCTION_18_3();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_72_0();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_222();
    __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
    v2 = OUTLINED_FUNCTION_24_5();
  }

  return __swift_getEnumTagSinglePayload(v2, v0, v3);
}

uint64_t __swift_store_extra_inhabitant_index_1301Tm()
{
  OUTLINED_FUNCTION_392_0();
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  OUTLINED_FUNCTION_18_3();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_222();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
    OUTLINED_FUNCTION_24_5();
  }

  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void sub_2575F1728()
{
  OUTLINED_FUNCTION_382_0();
  OUTLINED_FUNCTION_270_0();
  sub_2577431B4();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_52_2();
    OUTLINED_FUNCTION_272_0();
    sub_25759B3F4(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

void __swift_store_extra_inhabitant_index_977Tm()
{
  OUTLINED_FUNCTION_4_7();
  if (v0)
  {
    OUTLINED_FUNCTION_200_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_122_0();
    v2 = OUTLINED_FUNCTION_48_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_2575F1864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_270_0();
  sub_25759B3F4(v5, v6, v7, v8);
  if (v9 <= 0x3F)
  {
    OUTLINED_FUNCTION_302_0();
    sub_2577431B4();
    if (v10 <= 0x3F)
    {
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

unint64_t sub_2575F18E4()
{
  result = qword_27F87D0B8;
  if (!qword_27F87D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D0B8);
  }

  return result;
}

unint64_t sub_2575F196C()
{
  result = qword_27F87D0D0;
  if (!qword_27F87D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D0D0);
  }

  return result;
}

unint64_t sub_2575F19C4()
{
  result = qword_27F87D0D8;
  if (!qword_27F87D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D0D8);
  }

  return result;
}

unint64_t sub_2575F1A1C()
{
  result = qword_27F87D0E0;
  if (!qword_27F87D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D0E0);
  }

  return result;
}

unint64_t sub_2575F1AA4()
{
  result = qword_27F87D0F8;
  if (!qword_27F87D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D0F8);
  }

  return result;
}

unint64_t sub_2575F1AFC()
{
  result = qword_27F87D100;
  if (!qword_27F87D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D100);
  }

  return result;
}

unint64_t sub_2575F1B54()
{
  result = qword_27F87D108;
  if (!qword_27F87D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D108);
  }

  return result;
}

unint64_t sub_2575F1BDC()
{
  result = qword_27F87D120;
  if (!qword_27F87D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D120);
  }

  return result;
}

unint64_t sub_2575F1C34()
{
  result = qword_27F87D128;
  if (!qword_27F87D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D128);
  }

  return result;
}

unint64_t sub_2575F1C8C()
{
  result = qword_27F87D130;
  if (!qword_27F87D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D130);
  }

  return result;
}

unint64_t sub_2575F1D14()
{
  result = qword_27F87D148;
  if (!qword_27F87D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D148);
  }

  return result;
}

unint64_t sub_2575F1D6C()
{
  result = qword_27F87D150;
  if (!qword_27F87D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D150);
  }

  return result;
}

unint64_t sub_2575F1DC4()
{
  result = qword_27F87D158;
  if (!qword_27F87D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D158);
  }

  return result;
}

unint64_t sub_2575F1E4C()
{
  result = qword_27F87D170;
  if (!qword_27F87D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D170);
  }

  return result;
}

unint64_t sub_2575F1EA4()
{
  result = qword_27F87D178;
  if (!qword_27F87D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D178);
  }

  return result;
}

unint64_t sub_2575F1EFC()
{
  result = qword_27F87D180;
  if (!qword_27F87D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D180);
  }

  return result;
}

unint64_t sub_2575F1F84()
{
  result = qword_27F87D198;
  if (!qword_27F87D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D198);
  }

  return result;
}

unint64_t sub_2575F1FDC()
{
  result = qword_27F87D1A0;
  if (!qword_27F87D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D1A0);
  }

  return result;
}

unint64_t sub_2575F2034()
{
  result = qword_27F87D1A8;
  if (!qword_27F87D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D1A8);
  }

  return result;
}

unint64_t sub_2575F20BC()
{
  result = qword_27F87D1C0;
  if (!qword_27F87D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D1C0);
  }

  return result;
}

unint64_t sub_2575F2114()
{
  result = qword_27F87D1C8;
  if (!qword_27F87D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D1C8);
  }

  return result;
}

unint64_t sub_2575F216C()
{
  result = qword_27F87D1D0;
  if (!qword_27F87D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D1D0);
  }

  return result;
}

unint64_t sub_2575F21F4()
{
  result = qword_27F87D1E8;
  if (!qword_27F87D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D1E8);
  }

  return result;
}

unint64_t sub_2575F224C()
{
  result = qword_27F87D1F0;
  if (!qword_27F87D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D1F0);
  }

  return result;
}

unint64_t sub_2575F22A4()
{
  result = qword_27F87D1F8;
  if (!qword_27F87D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D1F8);
  }

  return result;
}

unint64_t sub_2575F232C()
{
  result = qword_27F87D210;
  if (!qword_27F87D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D210);
  }

  return result;
}

unint64_t sub_2575F2384()
{
  result = qword_27F87D218;
  if (!qword_27F87D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D218);
  }

  return result;
}

unint64_t sub_2575F23DC()
{
  result = qword_27F87D220;
  if (!qword_27F87D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D220);
  }

  return result;
}

unint64_t sub_2575F2464()
{
  result = qword_27F87D238;
  if (!qword_27F87D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D238);
  }

  return result;
}

unint64_t sub_2575F24BC()
{
  result = qword_27F87D240;
  if (!qword_27F87D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D240);
  }

  return result;
}

unint64_t sub_2575F2514()
{
  result = qword_27F87D248;
  if (!qword_27F87D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D248);
  }

  return result;
}

unint64_t sub_2575F259C()
{
  result = qword_27F87D260;
  if (!qword_27F87D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D260);
  }

  return result;
}

unint64_t sub_2575F25F4()
{
  result = qword_27F87D268;
  if (!qword_27F87D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D268);
  }

  return result;
}

unint64_t sub_2575F264C()
{
  result = qword_27F87D270;
  if (!qword_27F87D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D270);
  }

  return result;
}

unint64_t sub_2575F26D4()
{
  result = qword_27F87D288;
  if (!qword_27F87D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D288);
  }

  return result;
}

unint64_t sub_2575F272C()
{
  result = qword_27F87D290;
  if (!qword_27F87D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D290);
  }

  return result;
}

unint64_t sub_2575F2784()
{
  result = qword_27F87D298;
  if (!qword_27F87D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D298);
  }

  return result;
}

unint64_t sub_2575F280C()
{
  result = qword_27F87D2B0;
  if (!qword_27F87D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D2B0);
  }

  return result;
}

unint64_t sub_2575F2864()
{
  result = qword_27F87D2B8;
  if (!qword_27F87D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D2B8);
  }

  return result;
}

unint64_t sub_2575F28BC()
{
  result = qword_27F87D2C0;
  if (!qword_27F87D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D2C0);
  }

  return result;
}

unint64_t sub_2575F2944()
{
  result = qword_27F87D2D8;
  if (!qword_27F87D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D2D8);
  }

  return result;
}

unint64_t sub_2575F299C()
{
  result = qword_27F87D2E0;
  if (!qword_27F87D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D2E0);
  }

  return result;
}

unint64_t sub_2575F29F4()
{
  result = qword_27F87D2E8;
  if (!qword_27F87D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D2E8);
  }

  return result;
}

unint64_t sub_2575F2A7C()
{
  result = qword_27F87D300;
  if (!qword_27F87D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D300);
  }

  return result;
}

unint64_t sub_2575F2AD4()
{
  result = qword_27F87D308;
  if (!qword_27F87D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D308);
  }

  return result;
}

unint64_t sub_2575F2B2C()
{
  result = qword_27F87D310;
  if (!qword_27F87D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D310);
  }

  return result;
}

unint64_t sub_2575F2BB4()
{
  result = qword_27F87D328;
  if (!qword_27F87D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D328);
  }

  return result;
}

unint64_t sub_2575F2C0C()
{
  result = qword_27F87D330;
  if (!qword_27F87D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D330);
  }

  return result;
}

unint64_t sub_2575F2C64()
{
  result = qword_27F87D338;
  if (!qword_27F87D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D338);
  }

  return result;
}

unint64_t sub_2575F2CEC()
{
  result = qword_27F87D350;
  if (!qword_27F87D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D350);
  }

  return result;
}

unint64_t sub_2575F2D44()
{
  result = qword_27F87D358;
  if (!qword_27F87D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D358);
  }

  return result;
}

unint64_t sub_2575F2D9C()
{
  result = qword_27F87D360;
  if (!qword_27F87D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D360);
  }

  return result;
}

unint64_t sub_2575F2E24()
{
  result = qword_27F87D378;
  if (!qword_27F87D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D378);
  }

  return result;
}

unint64_t sub_2575F2E7C()
{
  result = qword_27F87D380;
  if (!qword_27F87D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D380);
  }

  return result;
}

unint64_t sub_2575F2ED4()
{
  result = qword_27F87D388;
  if (!qword_27F87D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D388);
  }

  return result;
}

unint64_t sub_2575F2F5C()
{
  result = qword_27F87D3A0;
  if (!qword_27F87D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D3A0);
  }

  return result;
}

unint64_t sub_2575F2FB4()
{
  result = qword_27F87D3A8;
  if (!qword_27F87D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D3A8);
  }

  return result;
}

unint64_t sub_2575F300C()
{
  result = qword_27F87D3B0;
  if (!qword_27F87D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D3B0);
  }

  return result;
}

unint64_t sub_2575F3094()
{
  result = qword_27F87D3C8;
  if (!qword_27F87D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D3C8);
  }

  return result;
}

unint64_t sub_2575F30EC()
{
  result = qword_27F87D3D0;
  if (!qword_27F87D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D3D0);
  }

  return result;
}

unint64_t sub_2575F3144()
{
  result = qword_27F87D3D8;
  if (!qword_27F87D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D3D8);
  }

  return result;
}

unint64_t sub_2575F31CC()
{
  result = qword_27F87D3F0;
  if (!qword_27F87D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D3F0);
  }

  return result;
}

unint64_t sub_2575F3224()
{
  result = qword_27F87D3F8;
  if (!qword_27F87D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D3F8);
  }

  return result;
}

void sub_2575F3278()
{
  OUTLINED_FUNCTION_165_0();
  v2 = v1;
  v9 = v3;
  v5 = v4;
  v7 = *(v6(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5(0);
    OUTLINED_FUNCTION_89_1();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_71_0();
    *(v0 + v7) = v9(v8);
  }

  OUTLINED_FUNCTION_313_0();
  OUTLINED_FUNCTION_291_0();
  v2();
  OUTLINED_FUNCTION_166_0();
}

uint64_t sub_2575F3324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_257743234();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_2575F3428(a2, a1, a3, a4);
        break;
      case 2:
        sub_2575F34F4(a2, a1, a3, a4);
        break;
      case 3:
        sub_2575F35D0(a2, a1, a3, a4);
        break;
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        continue;
      case 10:
        sub_2575F36AC(a2, a1, a3, a4);
        break;
      default:
        if (result == 20)
        {
          sub_2575F3788(a2, a1, a3, a4);
        }

        break;
    }
  }
}

uint64_t sub_2575F3428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_LossLayer(0);
  sub_2575FB760(&qword_27F87D4A8, type metadata accessor for Proto_LossLayer, &unk_2577554B0);
  sub_2577433C4();
  return swift_endAccess();
}

uint64_t sub_2575F34F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_Optimizer(0);
  sub_2575FB760(&qword_27F87D448, type metadata accessor for Proto_Optimizer, &unk_257755078);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575F35D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_Int64Parameter(0);
  sub_2575FB760(&qword_27F87BE80, type metadata accessor for Proto_Int64Parameter, &unk_2577686C0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575F36AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_BoolParameter(0);
  sub_2575FB760(&qword_27F87F930, type metadata accessor for Proto_BoolParameter, &unk_257768288);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575F3788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_Int64Parameter(0);
  sub_2575FB760(&qword_27F87BE80, type metadata accessor for Proto_Int64Parameter, &unk_2577686C0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575F3864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(*(a1 + 16) + 16) || (type metadata accessor for Proto_LossLayer(0), sub_2575FB760(&qword_27F87D4A8, type metadata accessor for Proto_LossLayer, &unk_2577554B0), , sub_257743564(), result = , !v4))
  {
    result = sub_2575F39CC(a1, a2, a3, a4);
    if (!v4)
    {
      sub_2575F3BC0(a1, a2, a3, a4);
      sub_2575F3DB4(a1, a2, a3, a4);
      return sub_2575F3FA8(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_2575F39CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F938, &qword_257767338);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_Optimizer(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__optimizer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87F938, &qword_257767338);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87D448, type metadata accessor for Proto_Optimizer, &unk_257755078);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_2575F3BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_Int64Parameter(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__epochs;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87BD30, &unk_2577504D0);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87BE80, type metadata accessor for Proto_Int64Parameter, &unk_2577686C0);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_2575F3DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F928, &qword_257767330);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_BoolParameter(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__shuffle;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87F928, &qword_257767330);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87F930, type metadata accessor for Proto_BoolParameter, &unk_257768288);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_2575F3FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_Int64Parameter(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__seed;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87BD30, &unk_2577504D0);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87BE80, type metadata accessor for Proto_Int64Parameter, &unk_2577686C0);
  sub_257743574();
  return sub_257609BCC();
}

BOOL sub_2575F419C(uint64_t a1, uint64_t a2)
{
  v81 = type metadata accessor for Proto_BoolParameter(0);
  MEMORY[0x28223BE20](v81);
  v75 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F940, &unk_257767340);
  MEMORY[0x28223BE20](v80);
  v82 = &v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F928, &qword_257767330);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v77 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v72 - v9;
  v88 = type metadata accessor for Proto_Int64Parameter(0);
  MEMORY[0x28223BE20](v88);
  v78 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BED8, &qword_2577510C8);
  v11 = MEMORY[0x28223BE20](v87);
  v76 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v86 = &v72 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v74 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v79 = &v72 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v83 = &v72 - v20;
  MEMORY[0x28223BE20](v19);
  v85 = &v72 - v21;
  v22 = type metadata accessor for Proto_Optimizer(0);
  MEMORY[0x28223BE20](v22);
  v84 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F948, &qword_257767350);
  MEMORY[0x28223BE20](v24);
  v26 = &v72 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F938, &qword_257767338);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v72 - v29;
  swift_beginAccess();
  swift_beginAccess();

  sub_257482CE4();
  v32 = v31;

  if ((v32 & 1) == 0)
  {
    goto LABEL_27;
  }

  v90 = a2;
  v33 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__optimizer;
  swift_beginAccess();
  v73 = a1;
  sub_257487308(a1 + v33);
  v34 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__optimizer;
  swift_beginAccess();
  v35 = *(v24 + 48);
  sub_257487308(v30);
  sub_257487308(v90 + v34);
  if (__swift_getEnumTagSinglePayload(v26, 1, v22) == 1)
  {
    sub_2574695E4(v30, &qword_27F87F938, &qword_257767338);
    if (__swift_getEnumTagSinglePayload(&v26[v35], 1, v22) == 1)
    {
      sub_2574695E4(v26, &qword_27F87F938, &qword_257767338);
      v36 = v73;
      goto LABEL_10;
    }

LABEL_8:
    sub_2574695E4(v26, &qword_27F87F948, &qword_257767350);
    goto LABEL_27;
  }

  sub_257487308(v26);
  if (__swift_getEnumTagSinglePayload(&v26[v35], 1, v22) == 1)
  {
    sub_2574695E4(v30, &qword_27F87F938, &qword_257767338);
    sub_257609BCC();
    goto LABEL_8;
  }

  sub_257609B78();
  sub_2575F86BC();
  v38 = v37;
  sub_257609BCC();
  sub_2574695E4(v30, &qword_27F87F938, &qword_257767338);
  sub_257609BCC();
  sub_2574695E4(v26, &qword_27F87F938, &qword_257767338);
  v36 = v73;
  if ((v38 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_10:
  v39 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__epochs;
  swift_beginAccess();
  v40 = v85;
  sub_257487308(v36 + v39);
  v41 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__epochs;
  swift_beginAccess();
  v42 = v87;
  v43 = *(v87 + 48);
  v44 = v86;
  sub_257487308(v40);
  sub_257487308(v90 + v41);
  v45 = v88;
  if (__swift_getEnumTagSinglePayload(v44, 1, v88) == 1)
  {
    sub_2574695E4(v40, &qword_27F87BD30, &unk_2577504D0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44 + v43, 1, v45);
    v47 = v89;
    if (EnumTagSinglePayload == 1)
    {
      sub_2574695E4(v44, &qword_27F87BD30, &unk_2577504D0);
      goto LABEL_17;
    }

LABEL_15:
    v49 = &qword_27F87BED8;
    v50 = &qword_2577510C8;
    v51 = v44;
LABEL_26:
    sub_2574695E4(v51, v49, v50);
    goto LABEL_27;
  }

  sub_257487308(v44);
  v48 = __swift_getEnumTagSinglePayload(v44 + v43, 1, v45);
  v47 = v89;
  if (v48 == 1)
  {
    sub_2574695E4(v40, &qword_27F87BD30, &unk_2577504D0);
    sub_257609BCC();
    goto LABEL_15;
  }

  sub_257609B78();
  LODWORD(v84) = sub_257615594();
  sub_257609BCC();
  sub_2574695E4(v40, &qword_27F87BD30, &unk_2577504D0);
  sub_257609BCC();
  sub_2574695E4(v44, &qword_27F87BD30, &unk_2577504D0);
  if ((v84 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_17:
  v52 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__shuffle;
  swift_beginAccess();
  sub_257487308(v36 + v52);
  v53 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__shuffle;
  swift_beginAccess();
  v54 = *(v80 + 48);
  v55 = v82;
  sub_257487308(v47);
  v56 = v55;
  sub_257487308(v90 + v53);
  v57 = v81;
  if (__swift_getEnumTagSinglePayload(v55, 1, v81) != 1)
  {
    v64 = v55;
    v65 = v77;
    sub_257487308(v64);
    if (__swift_getEnumTagSinglePayload(v56 + v54, 1, v57) == 1)
    {
      sub_2574695E4(v47, &qword_27F87F928, &qword_257767330);
      sub_257609BCC();
      goto LABEL_25;
    }

    v67 = v75;
    sub_257609B78();
    v68 = v56;
    if (*v65 != *v67)
    {
      sub_257609BCC();
      sub_2574695E4(v89, &qword_27F87F928, &qword_257767330);
      sub_257609BCC();
      v51 = v56;
      v49 = &qword_27F87F928;
      v50 = &qword_257767330;
      goto LABEL_26;
    }

    sub_2577431B4();
    sub_2575FB760(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v69 = sub_257743644();
    sub_257609BCC();
    sub_2574695E4(v89, &qword_27F87F928, &qword_257767330);
    sub_257609BCC();
    v70 = v68;
    v59 = v79;
    sub_2574695E4(v70, &qword_27F87F928, &qword_257767330);
    if (v69)
    {
      goto LABEL_20;
    }

LABEL_27:

    return 0;
  }

  sub_2574695E4(v47, &qword_27F87F928, &qword_257767330);
  v58 = __swift_getEnumTagSinglePayload(v55 + v54, 1, v57);
  v59 = v79;
  if (v58 != 1)
  {
LABEL_25:
    v49 = &qword_27F87F940;
    v50 = &unk_257767340;
    v51 = v56;
    goto LABEL_26;
  }

  sub_2574695E4(v55, &qword_27F87F928, &qword_257767330);
LABEL_20:
  v60 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__seed;
  swift_beginAccess();
  sub_257487308(v36 + v60);
  v61 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__seed;
  swift_beginAccess();
  v62 = *(v42 + 48);
  v63 = v76;
  sub_257487308(v59);
  sub_257487308(v90 + v61);
  if (__swift_getEnumTagSinglePayload(v63, 1, v45) == 1)
  {

    sub_2574695E4(v59, &qword_27F87BD30, &unk_2577504D0);
    if (__swift_getEnumTagSinglePayload(v63 + v62, 1, v45) == 1)
    {
      sub_2574695E4(v63, &qword_27F87BD30, &unk_2577504D0);
      return 1;
    }

    goto LABEL_34;
  }

  sub_257487308(v63);
  if (__swift_getEnumTagSinglePayload(v63 + v62, 1, v45) == 1)
  {

    sub_2574695E4(v79, &qword_27F87BD30, &unk_2577504D0);
    sub_257609BCC();
LABEL_34:
    sub_2574695E4(v63, &qword_27F87BED8, &qword_2577510C8);
    return 0;
  }

  sub_257609B78();
  v71 = sub_257615594();

  sub_257609BCC();
  sub_2574695E4(v79, &qword_27F87BD30, &unk_2577504D0);
  sub_257609BCC();
  sub_2574695E4(v63, &qword_27F87BD30, &unk_2577504D0);
  return (v71 & 1) != 0;
}

uint64_t sub_2575F51D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F920, type metadata accessor for Proto_NetworkUpdateParameters, &unk_2577555E0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575F5274(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D4C8, type metadata accessor for Proto_NetworkUpdateParameters, &unk_257755618);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575F533C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D4C8, type metadata accessor for Proto_NetworkUpdateParameters, &unk_257755618);

  return sub_257743424();
}

uint64_t sub_2575F53FC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9F10);
  __swift_project_value_buffer(v0, qword_27F8E9F10);
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
  *(v5 + v2) = 10;
  *v10 = "categoricalCrossEntropyLossLayer";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 11;
  *v12 = "meanSquaredErrorLossLayer";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575F5608()
{
  OUTLINED_FUNCTION_100_1();
  while (1)
  {
    OUTLINED_FUNCTION_194();
    result = sub_257743234();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 11:
        OUTLINED_FUNCTION_353_0();
        v0();
        break;
      case 10:
        OUTLINED_FUNCTION_353_0();
        v2();
        break;
      case 1:
        OUTLINED_FUNCTION_144_0();
        sub_257743394();
        break;
    }
  }

  return result;
}

uint64_t sub_2575F56A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for Proto_CategoricalCrossEntropyLossLayer(0);
  v6 = MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C48, &qword_257744560);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Proto_LossLayer.OneOf_LossLayerType(0);
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F978, &qword_257767380);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for Proto_LossLayer(0) + 20);
  v26 = a1;
  sub_257487308(a1 + v25);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F879C48, &qword_257744560);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609BCC();
    }

    else
    {
      sub_2574695E4(v18, &qword_27F87F978, &qword_257767380);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_2575FB760(&qword_27F87D488, type metadata accessor for Proto_CategoricalCrossEntropyLossLayer, &unk_257755348);
  v19 = v30;
  sub_2577433D4();
  if (v19)
  {
    v20 = v18;
    return sub_2574695E4(v20, &qword_27F87F978, &qword_257767380);
  }

  sub_257487308(v18);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_2574695E4(v18, &qword_27F87F978, &qword_257767380);
    v20 = v16;
    return sub_2574695E4(v20, &qword_27F87F978, &qword_257767380);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v22 = v28;
  sub_2574695E4(v18, &qword_27F87F978, &qword_257767380);
  v24 = v25;
  v23 = v26;
  sub_2574695E4(v26 + v25, &qword_27F879C48, &qword_257744560);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t sub_2575F5BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for Proto_MeanSquaredErrorLossLayer(0);
  v6 = MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C48, &qword_257744560);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Proto_LossLayer.OneOf_LossLayerType(0);
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F980, &qword_257767388);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for Proto_LossLayer(0) + 20);
  v26 = a1;
  sub_257487308(a1 + v25);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F879C48, &qword_257744560);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v18, &qword_27F87F980, &qword_257767388);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D468, type metadata accessor for Proto_MeanSquaredErrorLossLayer, &unk_2577551E0);
  v19 = v30;
  sub_2577433D4();
  if (v19)
  {
    v20 = v18;
    return sub_2574695E4(v20, &qword_27F87F980, &qword_257767388);
  }

  sub_257487308(v18);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_2574695E4(v18, &qword_27F87F980, &qword_257767388);
    v20 = v16;
    return sub_2574695E4(v20, &qword_27F87F980, &qword_257767388);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v22 = v28;
  sub_2574695E4(v18, &qword_27F87F980, &qword_257767388);
  v24 = v25;
  v23 = v26;
  sub_2574695E4(v26 + v25, &qword_27F879C48, &qword_257744560);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

void sub_2575F60B0()
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_2_7();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C48, &qword_257744560);
  OUTLINED_FUNCTION_13(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_1_6();
  if (!v3 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), !v0))
  {
    v4 = type metadata accessor for Proto_LossLayer(0);
    OUTLINED_FUNCTION_375_0(*(v4 + 20));
    v5 = type metadata accessor for Proto_LossLayer.OneOf_LossLayerType(0);
    v6 = OUTLINED_FUNCTION_171_1();
    OUTLINED_FUNCTION_155(v6, v7, v5);
    if (v8)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_311();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = OUTLINED_FUNCTION_3_9();
      sub_2575F63E4(v9, v10, v11, v12);
    }

    else
    {
      v13 = OUTLINED_FUNCTION_3_9();
      sub_2575F61C4(v13, v14, v15, v16);
    }

    OUTLINED_FUNCTION_58_0();
    sub_257609BCC();
    if (!v0)
    {
LABEL_8:
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2575F61C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C48, &qword_257744560);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CategoricalCrossEntropyLossLayer(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for Proto_LossLayer(0);
  sub_257487308(a1 + *(v9 + 20));
  v10 = type metadata accessor for Proto_LossLayer.OneOf_LossLayerType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C48, &qword_257744560);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D488, type metadata accessor for Proto_CategoricalCrossEntropyLossLayer, &unk_257755348);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575F63E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C48, &qword_257744560);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_MeanSquaredErrorLossLayer(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for Proto_LossLayer(0);
  sub_257487308(a1 + *(v9 + 20));
  v10 = type metadata accessor for Proto_LossLayer.OneOf_LossLayerType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C48, &qword_257744560);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D468, type metadata accessor for Proto_MeanSquaredErrorLossLayer, &unk_2577551E0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

void sub_2575F6604()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LossLayer.OneOf_LossLayerType(v4);
  OUTLINED_FUNCTION_42_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C48, &qword_257744560);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C50, &qword_257744568);
  OUTLINED_FUNCTION_41_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_32_3();
  v9 = *v1 == *v0 && v1[1] == v0[1];
  if (!v9 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = type metadata accessor for Proto_LossLayer(0);
  OUTLINED_FUNCTION_335_0(v10);
  OUTLINED_FUNCTION_149_1();
  OUTLINED_FUNCTION_129_1();
  OUTLINED_FUNCTION_65(v2);
  if (v9)
  {
    OUTLINED_FUNCTION_65(v2 + v3);
    if (v9)
    {
      sub_2574695E4(v2, &qword_27F879C48, &qword_257744560);
LABEL_17:
      OUTLINED_FUNCTION_321_0();
      OUTLINED_FUNCTION_1_16();
      v18 = sub_2575FB760(v16, v17, MEMORY[0x277D216D0]);
      v13 = OUTLINED_FUNCTION_4_2(v18);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v11 = OUTLINED_FUNCTION_277();
  sub_257487308(v11);
  OUTLINED_FUNCTION_65(v2 + v3);
  if (v12)
  {
    OUTLINED_FUNCTION_58_0();
    sub_257609BCC();
LABEL_14:
    sub_2574695E4(v2, &qword_27F879C50, &qword_257744568);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_254_0();
  OUTLINED_FUNCTION_360();
  sub_257533840();
  v15 = v14;
  sub_257609BCC();
  OUTLINED_FUNCTION_357_0();
  sub_2574695E4(v2, &qword_27F879C48, &qword_257744560);
  if (v15)
  {
    goto LABEL_17;
  }

LABEL_15:
  v13 = 0;
LABEL_18:
  OUTLINED_FUNCTION_65_0(v13);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2575F68F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F970, type metadata accessor for Proto_LossLayer, &unk_257755478);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575F6994(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D4A8, type metadata accessor for Proto_LossLayer, &unk_2577554B0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575F6A5C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D4A8, type metadata accessor for Proto_LossLayer, &unk_2577554B0);

  return sub_257743424();
}

uint64_t sub_2575F6ADC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9F28);
  __swift_project_value_buffer(v0, qword_27F8E9F28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "input";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "target";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575F6D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F988, type metadata accessor for Proto_CategoricalCrossEntropyLossLayer, &unk_257755310);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575F6DB8(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D488, type metadata accessor for Proto_CategoricalCrossEntropyLossLayer, &unk_257755348);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575F6E80(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D488, type metadata accessor for Proto_CategoricalCrossEntropyLossLayer, &unk_257755348);

  return sub_257743424();
}

uint64_t sub_2575F6F2C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9F40);
  __swift_project_value_buffer(v0, qword_27F8E9F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "input";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "target";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575F70F4()
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

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743394();
    }
  }

  return result;
}

void sub_2575F7154()
{
  OUTLINED_FUNCTION_188_0();
  v2 = v1;
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_6();
  if (!v3 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), !v0))
  {
    OUTLINED_FUNCTION_1_6();
    if (!v4 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), !v0))
    {
      v2(0);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2575F71E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_380_0(v6);
  v9 = v9 && v7 == v8;
  if (!v9 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 16) == *(v3 + 16) && *(v4 + 24) == *(v3 + 24);
  if (!v10 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_1_16();
  v13 = sub_2575FB760(v11, v12, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v13) & 1;
}

uint64_t sub_2575F72D8()
{
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_311_0();

  return v1(v0);
}

uint64_t sub_2575F736C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F990, type metadata accessor for Proto_MeanSquaredErrorLossLayer, &unk_2577551A8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575F740C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D468, type metadata accessor for Proto_MeanSquaredErrorLossLayer, &unk_2577551E0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575F74D4(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D468, type metadata accessor for Proto_MeanSquaredErrorLossLayer, &unk_2577551E0);

  return sub_257743424();
}

uint64_t sub_2575F7580()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9F58);
  __swift_project_value_buffer(v0, qword_27F8E9F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 10;
  *v6 = "sgdOptimizer";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 11;
  *v10 = "adamOptimizer";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575F774C()
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

    if (result == 11)
    {
      v7 = OUTLINED_FUNCTION_6_10();
      sub_2575F7CA8(v7, v8, v9, v10);
    }

    else if (result == 10)
    {
      v3 = OUTLINED_FUNCTION_6_10();
      sub_2575F77B0(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_2575F77B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Proto_SGDOptimizer(0);
  v6 = MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C300, &qword_2577513B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Proto_Optimizer.OneOf_OptimizerType(0);
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F9A0, &qword_257767390);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_257487308(a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87C300, &qword_2577513B8);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609BCC();
    }

    else
    {
      sub_2574695E4(v18, &qword_27F87F9A0, &qword_257767390);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_2575FB760(&qword_27F87D428, type metadata accessor for Proto_SGDOptimizer, &unk_257754F10);
  v19 = v29;
  sub_2577433D4();
  if (v19)
  {
    v20 = v18;
    return sub_2574695E4(v20, &qword_27F87F9A0, &qword_257767390);
  }

  sub_257487308(v18);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_2574695E4(v18, &qword_27F87F9A0, &qword_257767390);
    v20 = v16;
    return sub_2574695E4(v20, &qword_27F87F9A0, &qword_257767390);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v22 = v27;
  sub_2574695E4(v18, &qword_27F87F9A0, &qword_257767390);
  v23 = v25;
  sub_2574695E4(v25, &qword_27F87C300, &qword_2577513B8);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_2575F7CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Proto_AdamOptimizer(0);
  v6 = MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C300, &qword_2577513B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Proto_Optimizer.OneOf_OptimizerType(0);
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F9A8, &qword_257767398);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_257487308(a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87C300, &qword_2577513B8);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v18, &qword_27F87F9A8, &qword_257767398);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D408, type metadata accessor for Proto_AdamOptimizer, &unk_257754DA8);
  v19 = v29;
  sub_2577433D4();
  if (v19)
  {
    v20 = v18;
    return sub_2574695E4(v20, &qword_27F87F9A8, &qword_257767398);
  }

  sub_257487308(v18);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_2574695E4(v18, &qword_27F87F9A8, &qword_257767398);
    v20 = v16;
    return sub_2574695E4(v20, &qword_27F87F9A8, &qword_257767398);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v22 = v27;
  sub_2574695E4(v18, &qword_27F87F9A8, &qword_257767398);
  v23 = v25;
  sub_2574695E4(v25, &qword_27F87C300, &qword_2577513B8);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void sub_2575F81A0()
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_5_8();
  v1 = OUTLINED_FUNCTION_311();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_313_0();
  OUTLINED_FUNCTION_66();
  sub_257487308(v5);
  v6 = type metadata accessor for Proto_Optimizer.OneOf_OptimizerType(0);
  OUTLINED_FUNCTION_67_1(v6);
  if (v7)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_201();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = OUTLINED_FUNCTION_5_10();
    sub_2575F84A8(v8, v9, v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_5_10();
    sub_2575F8294(v12, v13, v14, v15);
  }

  OUTLINED_FUNCTION_91_2();
  sub_257609BCC();
  if (!v0)
  {
LABEL_6:
    type metadata accessor for Proto_Optimizer(0);
    OUTLINED_FUNCTION_10_7();
    sub_257743194();
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2575F8294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C300, &qword_2577513B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_SGDOptimizer(0);
  MEMORY[0x28223BE20](v8);
  sub_257487308(a1);
  v9 = type metadata accessor for Proto_Optimizer.OneOf_OptimizerType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87C300, &qword_2577513B8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D428, type metadata accessor for Proto_SGDOptimizer, &unk_257754F10);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575F84A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C300, &qword_2577513B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_AdamOptimizer(0);
  MEMORY[0x28223BE20](v8);
  sub_257487308(a1);
  v9 = type metadata accessor for Proto_Optimizer.OneOf_OptimizerType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87C300, &qword_2577513B8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D408, type metadata accessor for Proto_AdamOptimizer, &unk_257754DA8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

void sub_2575F86BC()
{
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_Optimizer.OneOf_OptimizerType(v2);
  OUTLINED_FUNCTION_42_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_6();
  v4 = OUTLINED_FUNCTION_201();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_75_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F950, &qword_257767358);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_32_3();
  v11 = *(v10 + 56);
  v12 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_344_0(v12);
  OUTLINED_FUNCTION_344_0(v0);
  OUTLINED_FUNCTION_65(v1);
  if (v14)
  {
    OUTLINED_FUNCTION_65(v1 + v11);
    if (v14)
    {
      sub_2574695E4(v1, &qword_27F87C300, &qword_2577513B8);
LABEL_12:
      type metadata accessor for Proto_Optimizer(0);
      OUTLINED_FUNCTION_95_0();
      sub_2577431B4();
      OUTLINED_FUNCTION_1_16();
      v20 = sub_2575FB760(v18, v19, MEMORY[0x277D216D0]);
      v15 = OUTLINED_FUNCTION_4_2(v20);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v13 = OUTLINED_FUNCTION_277();
  sub_257487308(v13);
  OUTLINED_FUNCTION_65(v1 + v11);
  if (v14)
  {
    OUTLINED_FUNCTION_91_2();
    sub_257609BCC();
LABEL_9:
    sub_2574695E4(v1, &qword_27F87F950, &qword_257767358);
    goto LABEL_10;
  }

  sub_257609B78();
  OUTLINED_FUNCTION_360();
  sub_257533DA8();
  v17 = v16;
  sub_257609BCC();
  OUTLINED_FUNCTION_144_0();
  sub_257609BCC();
  sub_2574695E4(v1, &qword_27F87C300, &qword_2577513B8);
  if (v17)
  {
    goto LABEL_12;
  }

LABEL_10:
  v15 = 0;
LABEL_13:
  OUTLINED_FUNCTION_65_0(v15);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2575F8944()
{
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_311_0();

  return v1(v0);
}

uint64_t sub_2575F89DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F998, type metadata accessor for Proto_Optimizer, &unk_257755040);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575F8A7C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D448, type metadata accessor for Proto_Optimizer, &unk_257755078);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575F8B44(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D448, type metadata accessor for Proto_Optimizer, &unk_257755078);

  return sub_257743424();
}

uint64_t sub_2575F8BC4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9F70);
  __swift_project_value_buffer(v0, qword_27F8E9F70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "learningRate";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "miniBatchSize";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "momentum";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2575F8DCC()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    v1 = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_6_8();
        sub_2575F8FC4();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_6_8();
        sub_2575F8F10(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_2575F8E5C(v3, v4, v5, v6);
        break;
    }
  }
}

uint64_t sub_2575F8E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_SGDOptimizer(0);
  type metadata accessor for Proto_DoubleParameter(0);
  sub_2575FB760(&qword_27F87F9B8, type metadata accessor for Proto_DoubleParameter, &unk_257768558);
  return sub_2577433D4();
}

uint64_t sub_2575F8F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_SGDOptimizer(0);
  type metadata accessor for Proto_Int64Parameter(0);
  sub_2575FB760(&qword_27F87BE80, type metadata accessor for Proto_Int64Parameter, &unk_2577686C0);
  return sub_2577433D4();
}

void sub_2575F8FC4()
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_147_0();
  v0(0);
  type metadata accessor for Proto_DoubleParameter(0);
  OUTLINED_FUNCTION_217_0();
  sub_2575FB760(v1, v2, &unk_257768558);
  OUTLINED_FUNCTION_12_10();
  sub_2577433D4();
  OUTLINED_FUNCTION_187_0();
}

void sub_2575F904C()
{
  OUTLINED_FUNCTION_111_0();
  v1 = OUTLINED_FUNCTION_4_5();
  sub_2575F90B8(v1, v2, v3, v4);
  if (!v0)
  {
    v5 = OUTLINED_FUNCTION_4_5();
    sub_2575F9298(v5, v6, v7, v8);
    OUTLINED_FUNCTION_4_5();
    sub_2575F9478();
    OUTLINED_FUNCTION_222();
    sub_257743194();
  }
}

uint64_t sub_2575F90B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C330, &qword_2577513E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_DoubleParameter(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for Proto_SGDOptimizer(0);
  sub_257487308(a1 + *(v9 + 20));
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87C330, &qword_2577513E8);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87F9B8, type metadata accessor for Proto_DoubleParameter, &unk_257768558);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_2575F9298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_Int64Parameter(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for Proto_SGDOptimizer(0);
  sub_257487308(a1 + *(v9 + 24));
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87BD30, &unk_2577504D0);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87BE80, type metadata accessor for Proto_Int64Parameter, &unk_2577686C0);
  sub_257743574();
  return sub_257609BCC();
}

void sub_2575F9478()
{
  OUTLINED_FUNCTION_165_0();
  OUTLINED_FUNCTION_303_0(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_277();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_32_4();
  v11 = type metadata accessor for Proto_DoubleParameter(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v13 = OUTLINED_FUNCTION_14();
  v14 = v2(v13);
  OUTLINED_FUNCTION_399_0(*(v14 + 28));
  v15 = OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_155(v15, v16, v11);
  if (v17)
  {
    sub_2574695E4(v1, &qword_27F87C330, &qword_2577513E8);
  }

  else
  {
    OUTLINED_FUNCTION_367();
    sub_257609B78();
    OUTLINED_FUNCTION_217_0();
    v20 = sub_2575FB760(v18, v19, &unk_257768558);
    OUTLINED_FUNCTION_403_0(v0, 3, v21, v20);
    OUTLINED_FUNCTION_18_7();
    sub_257609BCC();
  }

  OUTLINED_FUNCTION_166_0();
}